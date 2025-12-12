SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    SUM(p.amount) AS total_spend
FROM
    staging.customer c
    LEFT JOIN staging.payment p ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id,
    customer_name
ORDER BY
    total_spend DESC,
    customer_name ASC
LIMIT
    8;