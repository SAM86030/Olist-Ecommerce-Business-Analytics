

CREATE DATABASE olist_project;

use olist_project

-- importing all 6 dataset 
select * from  dbo.product_category

select * from dbo.olist_order_items

select * from dbo.olist_order_payments

select * from dbo.olist_order_reviews

select * from dbo.olist_orders_dataset

select * from dbo.olist_sellers_dataset



-- analysis on product categoty
select TOP 5  * from  dbo.product_category;

select distinct column2 as product_category  from dbo.product_category;

select count(*) as total_product_category from dbo.product_category;

select sum(case when column2 is null then 1 else 0 end) as null_count from dbo.product_category;

-- analysic on order items 
select TOP 10  * from dbo.olist_order_items

select sum(case when price  is null then 1 else 0 end) as price_null ,
       sum(case when freight_value is null then 1 else 0 end ) as freight_nulls from dbo.olist_order_items;

select count(distinct order_id) as unique_orders from dbo.olist_order_items;

-- primary key cheak
select count(*) as total_rows , count(distinct order_id) as unique_orders from dbo.olist_order_items;

select count(*) as total_rows , count(distinct  concat(order_id ,'-', order_item_id)) 
as unique_order_id from dbo.olist_order_items;


-- analysis on order_payment 

select TOP 10  * from  dbo.order_payments

select count(*) AS total_rows , count(Distinct order_id ) as unique_orders from dbo.order_payments 

select count(*) as total_rows , count(Distinct  concat(order_id, '-' ,payment_sequential)) 
as unique_payment_records from dbo.order_payments 

SELECT TOP 20  order_id, payment_sequential, payment_type, payment_installments,payment_value
FROM dbo.order_payments
ORDER BY order_id, payment_sequential;

-- analysis on order reviws 

select  top 10 * from dbo.olist_order_reviews

SELECT COUNT(*) AS total_rows FROM dbo.olist_order_reviews

select  count(distinct review_id) AS unique_reviews, count(distinct order_id) AS unique_orders from dbo.olist_order_reviews;

SELECT order_id, COUNT(*) AS review_count FROM dbo.olist_order_reviews
GROUP BY order_id
HAVING COUNT(*) > 1
ORDER BY review_count DESC;

-- analysis of olist  order dataset 

SELECT TOP 10 * FROM  dbo.olist_orders_dataset 

SELECT COUNT(*) AS total_rows,
COUNT(DISTINCT order_id) AS unique_orders
FROM dbo.olist_orders_dataset

SELECT order_status, COUNT(*) AS order_count FROM dbo.olist_orders_dataset
GROUP BY order_status
ORDER BY order_count DESC;

SELECT
    SUM(CASE WHEN order_purchase_timestamp IS NULL THEN 1 ELSE 0 END) AS null_purchase,
    SUM(CASE WHEN order_delivered_customer_date IS NULL THEN 1 ELSE 0 END) AS null_delivered,
    SUM(CASE WHEN order_estimated_delivery_date IS NULL THEN 1 ELSE 0 END) AS null_estimated
FROM  dbo.olist_orders_dataset;

SELECT AVG(DATEDIFF(DAY,order_purchase_timestamp, order_delivered_customer_date) * 1.0) 
AS avg_delivery_days FROM dbo.olist_orders_dataset
WHERE order_delivered_customer_date IS NOT NULL;

SELECT COUNT(*) AS late_orders FROM dbo.olist_orders_dataset
WHERE order_delivered_customer_date > order_estimated_delivery_date;

--- analysis of seller dataset

SELECT TOP 10 * FROM dbo.olist_sellers_dataset;

SELECT COUNT(*) AS total_rows, COUNT(DISTINCT seller_id) AS unique_sellers FROM dbo.olist_sellers_dataset;


SELECT
    SUM(CASE WHEN seller_id IS NULL THEN 1 ELSE 0 END) AS null_seller_id,
    SUM(CASE WHEN seller_city IS NULL THEN 1 ELSE 0 END) AS null_city,
    SUM(CASE WHEN seller_state IS NULL THEN 1 ELSE 0 END) AS null_state
FROM dbo.olist_sellers_dataset;

SELECT seller_state, COUNT(*) AS seller_count FROM dbo.olist_sellers_dataset
GROUP BY seller_state
ORDER BY seller_count DESC;

-- cheaking unmached seller 
SELECT DISTINCT oi.seller_id FROM dbo.olist_order_items oi LEFT JOIN dbo.olist_sellers_dataset  s ON oi.seller_id = s.seller_id
WHERE s.seller_id IS NULL;

