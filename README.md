# 🛒 Olist E-Commerce Business Analytics Project

## 📌 Project Overview

This project analyzes the Brazilian Olist E-Commerce Marketplace using SQL, Python, and Power BI to uncover insights related to customer behavior, sales performance, logistics efficiency, payment patterns, seller performance, and customer satisfaction.

The project follows a complete analytics workflow:

Raw Data → SQL Analysis → Python EDA → Business Insights → Power BI Dashboard → Strategic Recommendations

The objective was to transform raw transactional data into actionable business insights that can support strategic decision-making and improve marketplace performance.

The objective was to transform raw transactional data into actionable business insights that can support strategic decision-making and improve marketplace performance.

---

## 🎯 Business Problem

E-commerce marketplaces generate large volumes of transactional data every day. However, business growth depends on understanding:

* Who are the most valuable customers?
* Which product categories drive revenue?
* How efficient is the delivery process?
* Which sellers contribute the most to marketplace performance?
* What factors influence customer satisfaction?
* How do payment behaviors impact sales?

This project answers these questions through end-to-end exploratory and business analytics.

---

## 📊 Dataset Overview

The analysis uses the Olist Brazilian E-Commerce Dataset containing multiple interconnected business tables.

| Dataset     | Records |
| ----------- | ------: |
| Customers   |  99,441 |
| Orders      |  99,441 |
| Order Items | 112,650 |
| Payments    | 103,886 |
| Products    |  32,951 |
| Sellers     |   3,095 |
| Reviews     | 99,224+ |

---


## 🛠 Data Preparation & Cleaning

The following preprocessing steps were performed:

* Missing value analysis
* Duplicate validation
* Datetime conversion
* Data quality assessment
* Relationship validation across datasets
* Business metric engineering

### Engineered Features

* Delivery Days
* Delivery Delay (Early vs Late Delivery)
* Approval Hours
* Repeat Customer Metrics
* Freight Cost Analysis
* Revenue Analysis Metrics

---

# 🗄 SQL Business Analytics

To complement Python-based analysis, SQL was used to explore relationships across multiple datasets and answer business-critical questions.

### Business Questions Solved

#### Customer Analytics
- Who are the most valuable repeat customers?
- Which states generate the highest customer demand?
- What is the repeat customer rate?

#### Sales Analytics
- Which product categories generate the highest revenue?
- Which products have the highest sales volume?
- What are the monthly sales trends?

#### Seller Analytics
- Which sellers contribute the most revenue?
- Which sellers process the highest order volume?
- How does seller location affect marketplace performance?

#### Logistics Analytics
- What percentage of orders are delivered late?
- Which categories experience the longest delivery times?
- How does delivery performance affect customer satisfaction?

#### Payment Analytics
- Which payment methods generate the most revenue?
- How frequently do customers use installment payments?
- What is the distribution of transaction values?

### SQL Concepts Applied

- Joins
- Aggregations
- GROUP BY Analysis
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- KPI Calculations
- Business-Oriented Query Development

# 📈 Key Business Insights

## 👥 Customer Behavior Insights

### Customer Retention Opportunity

* The marketplace contains **99,441 customer records** but only **96,096 unique customers**.
* This indicates that the majority of customers made only a single purchase.

**Business Insight:**
Customer retention remains a significant growth opportunity. Even a small increase in repeat purchase rates could generate substantial additional revenue.

### High-Value Repeat Customers

* The most loyal customer placed **17 separate orders**.

**Business Insight:**
A small segment of highly engaged customers contributes disproportionate lifetime value and should be targeted through retention programs.

### Customer Concentration

Top customer states:

| State | Customers |
| ----- | --------: |
| SP    |    41,746 |
| RJ    |    12,852 |
| MG    |    11,635 |

**Business Insight:**
Customer demand is heavily concentrated in a few regions, creating opportunities for localized marketing and logistics optimization.

---

## 🚚 Logistics & Delivery Insights

### Delivery Performance

* Average delivery time: **12.1 days**
* Median delivery time: **10 days**
* Maximum delivery time: **209 days**

**Business Insight:**
While delivery performance is generally acceptable, extreme outliers indicate operational bottlenecks that negatively impact customer experience.

### Delivery Variability

The large gap between average and maximum delivery times highlights inconsistent fulfillment performance across orders.

**Business Recommendation:**
Investigate long-tail delayed orders and improve monitoring for logistics exceptions.

---

## 💳 Payment Behavior Insights

### Transaction Value Distribution

* Average payment value: **154.10**
* Median payment value: **100.00**
* Maximum payment value: **13,664.08**

**Business Insight:**
The marketplace exhibits a highly right-skewed revenue distribution where a small number of high-value orders significantly influence total revenue.

### Installment Adoption

* Most purchases were completed using **1 installment**
* Installment plans extended up to **24 installments**

**Business Insight:**
Flexible financing plays a critical role in customer purchasing decisions and enables larger transactions.

---

## 📦 Product Insights

### Product Catalog Scale

* Total products analyzed: **32,951**

### Product Demand Concentration

* The highest-selling product appeared in **527 order items**

**Business Insight:**
A relatively small number of products generate a disproportionately large share of marketplace activity.

### Revenue vs Sales Volume

Revenue-driving categories were not always the highest-volume categories.

**Business Insight:**
Business decisions should consider both sales volume and profitability rather than volume alone.

---

## 🚛 Freight & Shipping Insights

### Freight Cost Analysis

* Average freight cost: **19.99**
* Maximum freight cost: **409.68**

**Business Insight:**
Some products incur shipping costs that represent a substantial share of total order value.

### Logistics Cost Risk

High freight costs can reduce customer conversion rates and erode profitability.

**Business Recommendation:**
Review shipping strategies for high-freight categories and optimize warehouse distribution.

---

## 🏪 Seller Performance Insights

### Seller Concentration

Top sellers processed:

* More than **2,000 order items**
* Several sellers exceeded **1,500 order items**

**Business Insight:**
Marketplace activity is highly concentrated among a relatively small number of sellers.

### Supply-Side Risk

Heavy dependence on a limited group of sellers increases operational risk.

**Business Recommendation:**
Expand and diversify the seller ecosystem to reduce concentration risk.

---

## ⭐ Customer Satisfaction Insights

### Review Performance

Review analysis revealed a strong relationship between delivery performance and customer satisfaction.

**Business Insight:**
Customers are significantly more likely to provide negative feedback when deliveries are delayed.

### Operational Impact

Improving logistics performance may generate larger improvements in customer satisfaction than product-level changes alone.

---

# 📌 Strategic Recommendations

### 1. Improve Customer Retention

Launch loyalty programs and targeted campaigns to increase repeat purchase rates.

### 2. Reduce Delivery Delays

Identify operational bottlenecks responsible for extreme delivery outliers.

### 3. Optimize Freight Costs

Focus on categories with unusually high shipping expenses.

### 4. Diversify Seller Network

Reduce dependence on a small number of high-volume sellers.

### 5. Leverage Installment Payments

Continue promoting installment options to support higher-value transactions.

### 6. Improve Customer Satisfaction

Prioritize logistics improvements to reduce delays and improve review scores.

---

# 🛠 Tools & Technologies

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Jupyter Notebook
* GitHub
* Power BI

---

# 🎯 Project Outcome

This project demonstrates an end-to-end Data Analytics workflow involving:

* Data Cleaning
* Exploratory Data Analysis
* Business Intelligence
* Customer Analytics
* Product Analytics
* Seller Analytics
* Payment Analytics
* Logistics Analytics
* Business Recommendation Generation

The insights generated can support data-driven decision-making aimed at improving customer experience, operational efficiency, and marketplace growth.
