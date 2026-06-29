# 💳 Credit Card Customer Churn Analysis

An end-to-end **Data Analytics Project** that analyzes customer churn behavior for **Harbor Trust Bank** using **Python, SQL, Excel, and Power BI**. The project identifies the key factors driving customer attrition and provides actionable business recommendations to improve customer retention.

---

## 📌 Project Overview

Customer churn is one of the biggest challenges for banks, as losing customers directly impacts revenue from annual fees, transaction fees, interest income, and cross-selling opportunities.

This project analyzes customer demographics, banking relationships, and transaction behavior to answer:

- Why are customers leaving?
- Which customer segments are at the highest risk?
- What business actions can reduce churn?

---

## 🎯 Business Problem

Harbor Trust Bank has observed a significant decline in the number of active credit card customers.

The objective is to analyze historical customer data to:

- Identify customers likely to churn
- Discover the major factors contributing to churn
- Segment high-risk customers
- Provide data-driven recommendations to improve customer retention

---

## 📂 Dataset

**Source:** Kaggle – Credit Card Customers Dataset

**Records:** 10,127 Customers

**Features:** 21 Customer Attributes

### Key Features

- Customer Demographics
- Income Category
- Education Level
- Card Category
- Credit Limit
- Transaction Count
- Transaction Amount
- Months Inactive
- Customer Relationship Count
- Credit Utilization
- Attrition Status

---

## 🛠 Tech Stack

| Tool | Purpose |
|------|---------|
| Python | Data Cleaning & EDA |
| Pandas | Data Manipulation |
| NumPy | Numerical Operations |
| Matplotlib | Data Visualization |
| Seaborn | Exploratory Data Analysis |
| MySQL | Business Analysis using SQL |
| Excel | Initial Data Understanding |
| Power BI | Interactive Dashboard |
| Git & GitHub | Version Control & Portfolio |

---

## 📁 Project Structure

```
Credit-Card-Customer-Churn-Analysis/

│
├── Dataset/
│   ├── BankChurners.csv
│   └── BankChurners_Clean.csv
│
├── Python/
│   ├── Data_Cleaning.ipynb
│   ├── EDA.ipynb
│   └── Analysis.ipynb
│
├── SQL/
│   └── Credit_Card_Churn_SQL.sql
│
├── Dashboard/
│   ├── Credit_Card_Churn.pbix
│   └── Dashboard_Screenshots/
│
├── Reports/
│   ├── Business_Problem.pdf
│   ├── Insights.pdf
│   └── Recommendations.pdf
│
├── README.md
│
└── requirements.txt
```

---

# 🔄 Project Workflow

```
Business Understanding
          ↓
Data Collection
          ↓
Data Cleaning (Python)
          ↓
Exploratory Data Analysis
          ↓
Business Analysis (SQL)
          ↓
Power BI Dashboard
          ↓
Insights
          ↓
Business Recommendations
```

---

# 🧹 Data Cleaning

Performed using **Python (Pandas)**

- Checked dataset dimensions
- Verified data types
- Checked missing values
- Removed duplicate records
- Created binary Churn column
- Removed unnecessary identifier column
- Exported cleaned dataset for SQL and Power BI

---

# 📊 Exploratory Data Analysis

Performed detailed EDA to identify customer behavior patterns.

### Customer Analysis

- Churn Distribution
- Gender vs Churn
- Income Category vs Churn
- Card Category vs Churn
- Education Level vs Churn
- Marital Status vs Churn

### Behavioral Analysis

- Months Inactive vs Churn
- Customer Contacts vs Churn
- Transaction Count
- Transaction Amount
- Credit Utilization
- Credit Limit Distribution

### Correlation Analysis

- Correlation Heatmap
- Feature Relationships

---

# 🗄 SQL Analysis

Business queries were written using MySQL to analyze:

- Overall Churn Rate
- Customer Segmentation
- Gender Analysis
- Income Analysis
- Card Category Analysis
- Relationship Count
- Transaction Behavior
- High-Risk Customers
- Executive KPIs

---

# 📈 Power BI Dashboard

The dashboard consists of **3 interactive pages**.

## 📄 Page 1 – Executive Summary

KPIs

- Total Customers
- Existing Customers
- Churned Customers
- Churn Rate
- Average Credit Limit
- Average Transaction Amount

Visuals

- Customer Status
- Gender Analysis
- Income Analysis
- Card Category Analysis

---

## 📄 Page 2 – Customer Behavior Analysis

Visuals

- Inactive Months vs Churn
- Contacts vs Churn
- Transaction Count
- Transaction Amount
- Credit Limit Distribution
- Credit Limit vs Transaction Amount

---

## 📄 Page 3 – High-Risk Customer Analysis

Visuals

- High Risk KPI
- High Risk Segmentation
- High Risk Customers by Income
- Relationship Count Analysis
- Customer Details Table

---

# 📌 Key Insights

- Overall churn rate is approximately **16%**.
- Customers inactive for **3 or more months** have the highest churn risk.
- Low transaction count strongly indicates customer attrition.
- Customers with fewer banking products are more likely to churn.
- Frequent customer support interactions are associated with higher churn.
- Premium card holders also experience notable churn.

---

# 💡 Business Recommendations

- Implement an early warning system for inactive customers.
- Launch personalized retention campaigns for high-risk customers.
- Increase engagement through reward programs and cashback offers.
- Cross-sell additional banking products to improve customer loyalty.
- Improve customer service quality for customers with repeated support interactions.
- Enhance premium card benefits to retain high-value customers.

---

# 📷 Dashboard Preview

### Executive Summary

> *(Insert Screenshot Here)*

### Customer Behavior Analysis

> *(Insert Screenshot Here)*

### High Risk Customer Analysis

> *(Insert Screenshot Here)*

---

# 🚀 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- SQL Query Writing
- Business Analytics
- Data Visualization
- Dashboard Development
- KPI Design
- Customer Segmentation
- Business Insights
- Storytelling with Data

---

# 📈 Business Impact

This project enables the bank to:

- Identify customers likely to churn
- Understand the primary drivers of customer attrition
- Prioritize high-risk customer segments
- Develop targeted retention strategies
- Support data-driven business decisions

---

# 📬 Contact

**Name:** Your Name

**LinkedIn:** https://linkedin.com/in/your-profile

**Email:** your.email@example.com

---

⭐ If you found this project useful, consider giving it a **Star** on GitHub!
