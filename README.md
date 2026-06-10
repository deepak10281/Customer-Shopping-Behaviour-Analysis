# Retail Customer Behaviour Analysis

> End-to-end retail analytics across 5,000+ customer transactions | Revenue insights, segmentation & interactive dashboard | Python · SQL · Power BI

![Customer_behaviour_analysis_Dashboard](https://github.com/user-attachments/assets/72449352-902b-443f-acf9-03b463785fb2)


---

## Business objective

A retail company needed to understand customer purchasing behaviour to increase revenue, improve retention, and optimise marketing campaigns across product categories and customer segments.

**Key business questions answered:**
- Which categories and products drive the most revenue?
- Do discounts actually increase purchase value?
- Who are the most valuable customer segments?
- Which age groups and seasons generate the highest revenue?
- Do subscribers spend more than non-subscribers?

---

## Dashboard preview

![Customer Behaviour Dashboard - Overview](./dashboard-overview.png)

![Customer Behaviour Dashboard - Details](./dashboard-details.png)

---

## Key insights

| Finding | Metric | Business impact |
|---|---|---|
| Electronics dominate revenue | $486K — highest category | Priority marketing & inventory focus |
| Discounts increase spend | $219 avg (discount) vs $182 (no discount) | Discount strategy is ROI-positive |
| Subscribers spend far more | ~63% more than non-subscribers | Scale subscription programme |
| Age 51+ drives highest revenue | Top revenue age group | Target high-value demographic |
| Loyal customers drive repeat sales | 3,085 of 5,000 customers | Retention over acquisition |
| Spring = peak revenue season | Highest seasonal revenue | Align campaigns to spring |

---

## Revenue breakdown

| Category | Revenue |
|---|---|
| Electronics | $486K |
| Accessories | $194K |
| Clothing | $183K |
| Footwear | $111K |
| Outerwear | $18K |

| Gender | Revenue |
|---|---|
| Male | $391K |
| Female | $352K |
| Other | $251K |

---

## Customer segmentation

| Segment | Count |
|---|---|
| Loyal customers | 3,085 |
| Returning customers | 1,354 |
| New customers | 561 |

---

## Dataset

| Attribute | Detail |
|---|---|
| Domain | Retail / E-commerce |
| Records | 5,000+ customers |
| Features | 18 (numerical + categorical) |
| Key fields | Purchase amount, category, age, gender, season, discount, subscription, payment method |

---

## Tech stack

| Tool | Purpose |
|---|---|
| Python (Pandas, NumPy) | Data cleaning & preprocessing |
| Matplotlib / Seaborn | EDA visualisation |
| SQL (MySQL) | Business query analysis |
| Power BI | Interactive dashboard |
| Jupyter Notebook | Analysis workflow |

---

## Data cleaning highlights

- Missing size values imputed by category logic (Electronics/Accessories → "Not Applicable", Footwear → "Free Size", Clothing → mode)
- Review ratings filled using product-level mean imputation
- Missing purchase amounts replaced with column mean
- Column names standardised (lowercase, underscores)
- Duplicate records removed
- Cleaned dataset exported to SQL-friendly schema

---

## SQL business analysis — questions solved

- Which category generates the highest revenue?
- Which products are bestsellers by volume and value?
- Who are loyal vs returning vs new customers?
- Which age group contributes the most revenue?
- Do discounts increase average purchase value?
- Do subscribed customers spend more?
- Which shipping type correlates with higher spend?
- What are the seasonal revenue trends?

---

## Project workflow

```
Raw data (customer_shopping_behavior.csv)
  → Python: data cleaning & EDA
  → Cleaned data (cleaned_customer_data.csv)
  → SQL: business analysis (BUSINESS_INSIGHTS.sql)
  → Power BI: interactive dashboard
  → Business insights & recommendations
```

---

## How to run

```bash
git clone https://github.com/deepak10281/Customer-Shopping-Behaviour-Analysis.git
pip install pandas numpy matplotlib seaborn sqlalchemy pymysql
jupyter notebook Customer_Behaviour_Analysis.ipynb
```

Import `cleaned_customer_data.csv` into MySQL and run `BUSINESS_INSIGHTS.sql`.  
Open `Customer_behaviour_analysis.pbix` in Power BI Desktop.

---

## Files in this repo

| File | Description |
|---|---|
| `Customer_Behaviour_Analysis.ipynb` | Python EDA & data cleaning notebook |
| `BUSINESS_INSIGHTS.sql` | SQL business analysis queries |
| `Customer_behaviour_analysis.pbix` | Power BI dashboard file |
| `customer_shopping_behavior.csv` | Raw dataset |
| `cleaned_customer_data.csv` | Cleaned dataset |
| `dashboard-overview.png` | Dashboard screenshot — overview page |
| `dashboard-details.png` | Dashboard screenshot — details page |
| `Report.pdf` | Full project report |

---

## Author

**Deepak Malviya**  
[LinkedIn](https://www.linkedin.com/in/deepak102825/) · [Email](mailto:deepakmalviya7604@gmail.com) · [GitHub](https://github.com/deepak10281)
