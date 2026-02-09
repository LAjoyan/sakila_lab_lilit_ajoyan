# Film Revenue by Category

This page shows total revenue for each film category in the Sakila database.  
Use the chart and table below to explore which categories generate the most revenue.

## Revenue Table

```sql Revenue
FROM sakila.revenue;

```

<BarChart
    data={Revenue}
    title='Total Revenue by Film Category'
    x=category_name
    y=total_revenue
    
/>

## Monthly Revenue Trend

```sql Month
SELECT 
date_trunc('month', payment_date) AS pay_date,
SUM(amount) AS total_revenue
FROM sakila.month_revenue
GROUP BY pay_date
ORDER BY pay_date;
```

<LineChart
    data={Month}
    title='Total Revenue by month'
    x='pay_date'
    y='total_revenue'
    
/>

## Insights

## Category Revenue
- A small number of categories generate a disproportionate share of revenue.
- High-revenue categories often reflect strong customer demand and repeat rentals.
- Lower-revenue categories may represent niche interest or lower inventory turnover.

## Monthly Revenue Trend
- Revenue fluctuates over time, suggesting seasonality or campaign effects.
- Peaks may reflect high-demand periods or increased availability of popular titles.
- Low months can indicate reduced activity, limited data coverage, or operational factors.

## Key Takeaways

- The highest-revenue categories should be prioritized for promotion and inventory planning.
- Monthly trends help identify peak demand periods and potential seasonality.
- Combining category + time trends supports smarter pricing and marketing decisions.