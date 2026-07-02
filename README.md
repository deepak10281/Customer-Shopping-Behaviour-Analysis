# 🛍️ Customer Behaviour Analysis

An end-to-end **Data Analytics** project that explores customer purchasing behavior using **Python, SQL, and Power BI**. This project analyzes customer transactions to uncover purchasing patterns, customer segments, revenue drivers, and actionable business insights that help improve customer retention, marketing effectiveness, and business performance. The project demonstrates the complete analytics workflow, from data cleaning and exploratory analysis to SQL-based business insights and interactive dashboard development. :contentReference[oaicite:0]{index=0}

---

## 📖 Table of Contents

- Project Overview
- Business Problem
- Business Objectives
- Dataset
- Tools & Technologies
- Project Workflow
- Data Cleaning
- Exploratory Data Analysis (EDA)
- SQL Business Analysis
- Power BI Dashboard
- Key Insights
- Business Recommendations
- Project Structure
- Skills Demonstrated
- Future Improvements
- Author

---

# 📌 Project Overview

Retail businesses generate massive amounts of transactional data every day. Understanding customer purchasing behavior is essential for increasing revenue, improving customer retention, optimizing promotions, and identifying high-value customer segments.

This project analyzes customer shopping behavior using a structured retail dataset containing customer demographics, purchase history, product information, subscription status, shipping preferences, discounts, payment methods, and review ratings. The project combines **Python for data cleaning and EDA, SQL for business analysis, and Power BI for interactive visualization** to deliver meaningful business insights. :contentReference[oaicite:1]{index=1}

---

# 🎯 Business Problem

A retail company wants to answer key business questions such as:

- Which product categories generate the highest revenue?
- Do discounts increase purchase value?
- Which customer segment contributes the highest revenue?
- Which age group spends the most?
- Do subscribed customers spend more than non-subscribers?
- Which products receive the highest customer ratings?
- Which shipping methods generate the highest revenue?
- Which products are most frequently purchased?
- How can customer retention be improved?

These questions align with the project's business objectives and customer retention focus. :contentReference[oaicite:2]{index=2}

---

# 🎯 Business Objectives

The primary objectives of this project are:

- Analyze customer purchasing behavior.
- Identify high-value customers.
- Understand product demand.
- Measure the effectiveness of discounts.
- Perform customer segmentation.
- Compare subscriber and non-subscriber spending.
- Identify seasonal purchasing trends.
- Analyze payment behavior.
- Build an interactive Power BI dashboard for business decision-making.

---

# 📊 Dataset Information

### Dataset Type

Retail / E-commerce Customer Transactions

### Dataset Level

Customer Transaction Level

### Data Nature

Structured (Tabular)

### Features

- Customer ID
- Age
- Gender
- Item Purchased
- Category
- Purchase Amount
- Location
- Size
- Color
- Season
- Review Rating
- Subscription Status
- Shipping Type
- Discount Applied
- Previous Purchases
- Payment Method
- Frequency of Purchases

The dataset combines numerical and categorical features suitable for customer behavior analysis. :contentReference[oaicite:3]{index=3}

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python | Data Cleaning & EDA |
| Pandas | Data Manipulation |
| NumPy | Numerical Analysis |
| Matplotlib | Data Visualization |
| Seaborn | Statistical Visualization |
| SQL (MySQL) | Business Analysis |
| Power BI | Interactive Dashboard |
| Git & GitHub | Version Control |

---

# 🔄 Project Workflow

```
Raw Dataset
      │
      ▼
Data Cleaning (Python)
      │
      ▼
Exploratory Data Analysis
      │
      ▼
Export Clean Data
      │
      ▼
SQL Business Analysis
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights & Recommendations
```

---

# 🧹 Data Cleaning

The dataset was cleaned using Python before analysis.

### Cleaning Steps

- Removed duplicate records
- Standardized column names
- Corrected inconsistent category values
- Handled missing values
- Imputed missing ratings using product-level averages
- Filled missing clothing sizes using the mode
- Assigned zero previous purchases for new customers
- Exported cleaned data for SQL and Power BI

These preprocessing steps ensured data consistency across the analytics workflow. :contentReference[oaicite:4]{index=4}

---

# 📈 Exploratory Data Analysis (EDA)

The Exploratory Data Analysis focused on identifying customer behavior patterns and trends.

### Analysis Performed

- Purchase Amount Distribution
- Revenue by Category
- Revenue by Gender
- Seasonal Sales Analysis
- Customer Age Distribution
- Review Rating Distribution
- Payment Method Analysis
- Shipping Analysis
- Subscription Analysis
- Customer Segmentation
- Previous Purchase Analysis

---

# 🗄️ SQL Business Analysis

Business questions were solved using SQL queries involving:

- Aggregate Functions
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Subqueries
- Ranking Functions
- Group By & Order By

### SQL Business Questions

- Highest Revenue by Category
- Discount Impact on Purchase Value
- Revenue by Gender
- High Spending Discount Customers
- Top Rated Products
- Lowest Rated Products
- Shipping Type Performance
- Subscription Revenue Analysis
- Product Discount Usage
- Customer Segmentation
- Top Products by Category
- Repeat Buyers Analysis
- Revenue by Age Group

The SQL script contains 12 analytical business queries covering revenue, customer behavior, segmentation, ratings, shipping, subscriptions, and demographics. :contentReference[oaicite:5]{index=5}

---

# 📊 Power BI Dashboard

The interactive dashboard provides a complete overview of business performance.

### KPI Cards

- Total Customers
- Total Revenue
- Average Spend
- Average Review Rating
- Unique Products

### Dashboard Visualizations

- Revenue by Category
- Revenue by Gender
- Revenue by Season
- Revenue by Age Group
- Revenue by Payment Method
- Shipping Performance
- Customer Location Analysis
- Product Ratings
- Top Revenue Products
- Top Revenue Locations

The dashboard supports interactive filtering by category, gender, discount status, and subscription status for deeper business analysis. :contentReference[oaicite:6]{index=6}

---

# 📌 Key Business Insights

### Revenue Analysis

- Electronics generated the highest revenue (~₹486K).
- Accessories and Clothing followed as the next highest-performing categories.

### Discount Analysis

- Customers using discounts spent more on average than customers without discounts.
- Strategic discount campaigns improved average order value.

### Customer Segmentation

- Loyal customers represented the largest customer segment.
- Returning customers contributed significantly to repeat purchases.
- New customers formed the smallest customer segment.

### Subscription Analysis

- Subscribers spent approximately 63% more than non-subscribers.
- Subscription programs significantly improved customer lifetime value.

### Demographic Analysis

- Customers aged 51+ generated the highest revenue.
- Male customers contributed the highest revenue, followed by Female and Other.

### Payment Analysis

- Debit Card was the most frequently used payment method.
- Cash and Credit Card followed closely.

### Seasonal Analysis

- Spring generated the highest revenue.
- Fall recorded the lowest seasonal revenue.

These insights summarize the SQL analysis and Power BI dashboard findings. :contentReference[oaicite:7]{index=7}

---

# 💼 Business Recommendations

- Increase inventory investment in Electronics.
- Expand subscription-based loyalty programs.
- Personalize discount campaigns instead of offering blanket discounts.
- Focus marketing campaigns on high-value customer segments.
- Improve retention strategies for new customers.
- Promote top-rated products through recommendation systems.
- Optimize shipping strategies for better customer satisfaction.
- Target the 51+ customer segment with premium offerings.

---

# 📁 Project Structure

```
Customer-Behaviour-Analysis/
│
├── Data/
│   ├── customer_shopping_behavior.csv
│   ├── cleaned_customer_data.csv
│
├── Python/
│   ├── Customer_Behaviour_Analysis.ipynb
│
├── SQL/
│   ├── BUSINESS_INSIGHTS.sql
│
├── Dashboard/
│   ├── Customer_behaviour_analysis.pbix
│
├── Documentation/
│   ├── Problem Statement.pdf
│   ├── Overview.pdf
│   ├── Customer_behaviour_analysis_Dashboard.pdf
│
├── Images/
│
└── README.md
```

---

# 🚀 Skills Demonstrated

- Data Cleaning
- Data Wrangling
- Exploratory Data Analysis
- SQL Query Writing
- Common Table Expressions (CTEs)
- Window Functions
- Business Intelligence
- Dashboard Development
- Data Visualization
- Customer Segmentation
- Revenue Analysis
- Business Problem Solving
- Data Storytelling

---

# 🔮 Future Improvements

- Build customer lifetime value (CLV) prediction models.
- Develop recommendation systems.
- Perform customer churn prediction using Machine Learning.
- Create forecasting dashboards.
- Deploy dashboards to Power BI Service.
- Automate ETL pipelines.

---

# 👨‍💻 Author

**Deepak Malviya**

**Aspiring Data Analyst | SQL | Python | Power BI | Excel | Business Intelligence**

Passionate about transforming raw data into actionable business insights through analytics, visualization, and storytelling. I enjoy solving real-world business problems using Python, SQL, and Power BI.

### 📬 Connect with Me

- 📧 Email: DeepakMalviya7604@gmail.com
- 📱 Phone: +91-7989230916
- 💼 LinkedIn: https://www.linkedin.com/in/deepak102825/
- 🐙 GitHub: https://github.com/deepak10281

---

## ⭐ Support

If you found this project useful, please consider giving it a **⭐ Star** on GitHub. It motivates me to build and share more real-world Data Analytics projects.

---

**Thank you for visiting this repository! Happy Learning! 🚀**
