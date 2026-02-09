# Customer Rentals & Top Customers

This page shows insights into customer behavior in the Sakila database, including top-spending customers and their rental activity.


## Top 8 Customers


```sql Customers
FROM sakila.customer;

```

This chart highlights the customers who contribute most to total revenue.

##  A Barchart  

<BarChart
    data={Customers}
    title="Top 8 Customers by Total Spending"
    x=customer_name
    y=total_spend
    swapXY= true
/>


## Insights

- The bar chart highlights the customers who generate the highest revenue.
- High total spending usually correlates with frequent rentals.
- Customers with high spending but low rental count may rent expensive titles — valuable to target for premium offers.
- Customers with many rentals but low spending may be ideal for loyalty rewards.
- These insights support identifying key customer groups for marketing or retention strategies.