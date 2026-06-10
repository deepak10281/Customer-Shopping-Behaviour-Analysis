# Retail Customer Analytics — Power BI Dashboard

> End-to-end customer behaviour analysis across 5,000+ transactions | Python · SQL · Power BI

---

## Business objective

A retail company needed to understand customer purchasing patterns to increase revenue, improve retention, and optimise marketing campaigns.

**Key questions answered:**
- Which customer segments generate the most revenue?
- Do discounts actually increase purchase value?
- Which age groups and categories drive growth?

---

## Dashboard preview


![Dashboard](./customer-dashboard-main.png)

---

## Key insights

| Finding | Impact |
|---|---|
| Electronics generated $486K — highest of all categories | Priority investment area |
| Discounted purchases averaged $219 vs $182 without discount | Discount strategy is ROI-positive |
| Subscribers spend ~63% more than non-subscribers | Grow subscription programme |
| Customers aged 51+ contributed highest revenue share | Target high-value segment |
| 3,085 loyal customers drive majority of repeat purchases | Retention > acquisition |

---

## Tech stack

| Tool | Purpose |
|---|---|
| Python (Pandas, NumPy, Matplotlib, Seaborn) | Data cleaning & EDA |
| SQL (MySQL) | Business query analysis |
| Power BI | Interactive dashboard |
| Jupyter Notebook | Analysis workflow |

---

## Project workflow

```
Raw data → Python cleaning → EDA → SQL analysis → Power BI dashboard → Business insights
```

---

## Dataset

| Attribute | Detail |
|---|---|
| Domain | Retail / E-commerce |
| Records | 5,000+ customers |
| Features | 18 (numerical + categorical) |
| Key fields | Purchase amount, category, age, season, discount, subscription |

---

## How to run

```bash
git clone https://github.com/deepak10281/Customer-Shopping-Behaviour-Analysis.git
pip install pandas numpy matplotlib seaborn sqlalchemy pymysql
jupyter notebook
```

Import `cleaned_customer_data.csv` into MySQL and run `BUSINESS_INSIGHTS.sql`.  
Open `Customer_behaviour_analysis.pbix` in Power BI Desktop.

---

## Customer segmentation results

| Segment | Count |
|---|---|
| Loyal customers | 3,085 |
| Returning customers | 1,354 |
| New customers | 561 |

---

## Author

**Deepak Malviya**  
[LinkedIn](https://www.linkedin.com/in/deepak102825/) · [Email](mailto:deepakmalviya7604@gmail.com) · [GitHub](https://github.com/deepak10281)
