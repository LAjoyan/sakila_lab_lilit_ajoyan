# Film Revenue by Category

This page shows total revenue for each film category in the Sakila database.  
Use the chart and table below to explore which categories generate the most revenue.

---

## Revenue Table

```sql Revenue
FROM sakila.revenue;

```

<BarChart
    data={Revenue}
    title="Total Revenue by Film Category"
    x=category_name
    y=total_revenue
    
/>
---

## Monthly Revenue Trend

```sql Month
SELECT 
date_trunc('month', payment_date) AS pay_date,
SUM(amount) AS total_revenue
FROM sakila.month_revenue
GROUP BY pay_date
ORDER BY pay_date;
```

<BarChart
    data={Month}
    title="Total Revenue by month"
    x=pay_date
    y=total_revenue
    
/>

## Insights

## Category Revenue
- Categories with the highest revenue stand out clearly in the bar chart.
- High-revenue categories indicate genres with strong customer demand.
- Lower-revenue categories may represent niche genres or less frequently rented films.
- These insights help guide decisions on stock allocation, marketing, and promotional focus.

## Monthly Revenue Trend
- The month-by-month chart reveals how revenue changes over time.
- Peaks in the chart may represent seasonal demand or promotional periods.
- Months with unusually low revenue may indicate system gaps, limited data coverage, or lower rental activity.
- This trend view helps identify seasonality, growth, and anomalies in customer spending behavior.