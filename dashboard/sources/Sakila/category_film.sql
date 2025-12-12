SELECT
    c.name AS category_name,
    f.title
FROM
    staging.category c
    LEFT JOIN staging.film_category fc ON c.category_id = fc.category_id
    LEFT JOIN staging.film f ON fc.film_id = f.film_id
ORDER BY
    category_name;