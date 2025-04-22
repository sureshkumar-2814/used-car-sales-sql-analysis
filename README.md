# used-car-sales-sql-analysis
Analysis of a Kaggle Dataset to understand used car sales.

# Used Car Sales Analysis (SQL-Based Case Study)

This project presents a comprehensive SQL-based data analysis on a Kaggle dataset containing used car listings across the US. The goal was to uncover pricing trends, regional sales patterns, and key metrics that influence resale value.

> A showcase of data wrangling, cleaning, and exploration using pure SQL — ideal for data analyst roles.

---

## Dataset
- **Source:** [Kaggle - Vehicles Dataset](https://www.kaggle.com/datasets/austinreese/craigslist-carstrucks-data)
- **Records:** ~400,000+
- **Fields:** `id`, `manufacturer`, `model`, `price`, `year`, `condition`, `odometer`, `fuel`, `state`, `transmission`, etc.

---

## Tech Stack
- **MySQL 8.3**
- Native SQL queries (no ORM or additional scripting)
- CSV import via `LOAD DATA INFILE`

---

## Key Business Questions & SQL Insights

| Analysis Area | 💡 Description |
|------------------|----------------|
| **Total Cars Sold** | Count of unique listings using `DISTINCT id`. |
| **Average Price by Model** | Analyzed high-value vehicles using `GROUP BY` and ordering by price. |
| **Regional Analysis** | Top-selling manufacturers in each state. |
| **Odometer vs Price** | Filtered affordable cars under ₹10,000 and evaluated average mileage. |
| **Vehicle Conditions** | Investigated price trends across different condition tags. |
| **Fuel Type Distribution** | Grouped fuel types used across states. |
| **Title Cleanliness** | Found % of listings with a 'clean' title. |
| **Missing Data Checks** | Detected null values in `condition`, `odometer`. |
| **Pricing Inconsistencies** | Joined the same model/year in a state with different prices. |
| **Max-Priced Models by State** | Used `RANK()` and `JOIN` to find premium cars by region. |
| **Manufacturer-Transmission Dominance** | Used CTEs and window functions to find top manufacturers per transmission type. |

---

## Learnings & Takeaways

- Practiced data profiling using SQL only — no scripting involved.
- Used advanced SQL features: `CTE`, `JOIN`, `RANK()`, and `subqueries`.
- Built strong intuition for data quality issues in real-world datasets.
- Reinforced analytical thinking with business-relevant insights.

---

## Future Improvements

- Create dashboards using Power BI / Tableau.
- Connect MySQL to Python for deeper statistical modeling.
- Build API endpoints to serve insights dynamically.

---