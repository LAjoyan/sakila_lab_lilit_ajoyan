# Film Revenue by Category

This page shows total revenue for each film category in the Sakila database.  
Use the chart and table below to explore which categories generate the most revenue.

<Details title='How to edit this page'>
  This page is located at `/pages/revenue.md`.  
  You can edit this markdown file and save it to see changes live in your browser.
</Details>

---

## Revenue Table

```sql Revenue
FROM sakila.category;

```

<BarChart
    data={Revenue}
    title="Total Revenue by Film Category"
    x=category_name
    y=total_revenue
    
/>

---

## Insights

- Categories with the highest revenue appear at the top of the chart.
- This helps identify which film genres are the most profitable.
- Categories with lower revenue may indicate niche audiences or lower rental frequency.
- Use these insights to guide decisions on inventory, promotions, or marketing strategies.
