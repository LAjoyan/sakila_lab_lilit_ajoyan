# sakila_lab_lilit_ajoyan

This project involves performing data analysis on the Sakila database using 
Python, DuckDB, pandas, and Evidence. The lab covers data ingestion,
exploratory data analysis (EDA), and building interactive dashboards to present insights from movie rental data.

---


# Purpose and Goals

The purpose of this lab is to explore and analyze the Sakila database using Python, DuckDB, and pandas. The main objectives are:
- Convert the existing SQLite Sakila database into DuckDB for efficient querying.
- Explore and analyze movie rental data to understand customer behavior, film categories, rentals, and revenue.
- Run SQL queries through DuckDB and analyze results in pandas.
- Build interactive visualizations and a dashboard with Evidence to summarize key findings.


---

## Highlights 
- Convert SQLite Sakila database into DuckDB
- Register database tables in pandas
- Run SQL queries and analyze results
- Create refined tables for analysis (e.g., customer_rental_duration)
- Build visualizations (bar charts, pie charts) and saved charts as images
- Built interactive dashboards with Evidence:
  - **Home page:** Overview of Sakila database
  - **Revenue page:** Total revenue by category and monthly trends
  - **Customer page:** Top customers and rental behavior
  - **Category page:** Dropdowns to explore films by category
  - **Actors page:** Film cast exploration via dropdowns



---

## Description of the Lab
This project focuses on:
- Data loading and database conversion  
- Querying and analyzing movie rental data  
- Understanding customer behavior, film categories, rentals, revenue, etc.  
- Creating a dashboard summarizing key findings  

---

## Screenshots / Images

![Sakila_ERD](data/SQLite3-Sakila-Sample-Database-ERD.png)


---

## Technologies Used
- Python (pandas, duckdb)
- Jupyter Notebook
- SQLite & DuckDB
- Evidence.dev
- Node.js + npm

---

## How to Run
- Place the Sakila SQLite database in your project folder
- Initialize virtual environment : 
```bash
uv init
```
- Install dependencies:
```bash
uv add ipykernel "dlt[sql_database]" "dlt[parquet]" pandas matplotlib
```
 - "load_sakila_sqlite_duckdb.py": Python script to load Sakila SQLite database into DuckDB using DLT
- uv add "dlt[duckdb]"
- Load SQLite into DuckDB:
```bash
 uv run python load_sakila_sqlite_duckdb.py
 ```
- Open sakila_lab_analysis.ipynb in Jupyter Notebook, connect to DuckDB, and register tables for analysis.
- Perform EDA in Jupyter Notebook, including custom questions such as customer rental durations.
- Generate visualizations (bar charts, pie charts) .

---

## Project Structure

```
├── pages/                                   # Evidence markdown pages
│   ├── index.md                             # Home page
│   ├── revenue.md                           # Revenue dashboard
│   ├── customer.md                          # Customer dashboard
│   ├── category.md                           # Film categories dropdown
│   └── actor.md                             # Actors and film appearances
├── sources/Sakila/                          # SQL queries for dashboards
│   ├── revenue.sql
│   ├── month_revenue.sql
│   └── category_film.sql
├── .venv/                                   # Python virtual environment
├── data/                                    # Database files and images
│   ├── sqlite-sakila.db                      # Original SQLite Sakila database
│   ├── sakila.duckdb                         # DuckDB database (generated)
│   └── SQLite3-Sakila-Sample-Database-ERD.png # ERD image
├── load_sakila_sqlite_duckdb.py             # Python script to convert SQLite → DuckDB
├── sakila_lab_analysis.ipynb                # Jupyter Notebook for analysis
├── README.md                                # Project documentation
├── pyproject.toml                            # Project dependencies
├── uv.lock                                   # Evidence lock file
├── .gitignore                                # Files/folders to ignore in Git
└── .python-version                           # Python version used in the project

```

---

## Workflow Overview
- Initialize project and set up the virtual environment.
- Convert SQLite Sakila database into DuckDB.
- Install required Python dependencies.
- Load and register database tables in pandas.
- Explore the database using SQL queries and pandas for analysis.
- Generate visualizations and build an interactive dashboard with Evidence.

---


## Refined Schema

Refined tables are created from the staging schema to provide clean, analysis-ready data.  
These tables are used for visualizations and dashboards.

---

### Current Refined Tables
- `customer_rental_duration` — average rental duration and total rentals per customer
- `rating_total_days` — total rental days aggregated by film rating
- `top_customers_total_spend` — top 5 customers by total spend
- `category_revenue` — total revenue aggregated per film category 

---

## Running the Evidence Dashboard
To start the Evidence dashboard, run:

```bash
npm install
npm run sources
npm run dev 
```
For more detailed instructions on using Evidence, see [EVIDENCE_TEMPLATE_README.md](dashboard/EVIDENCE_TEMPLATE_README.md).



## Key Findings from the Dashboard
- Action, Sports, and Sci-Fi films generate the highest revenue.
- Top 10 customers contribute a significant portion of total revenue.
- Some film categories have a larger number of titles but lower revenue per film.
- Several actors appear frequently in high-revenue films.
- Seasonal revenue trends indicate peak rentals in summer months.


