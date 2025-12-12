SELECT
    a.actor_id,
    a.first_name || ' ' || a.last_name AS actor_name,
    fa.film_id,
    f.title
FROM
    staging.actor a
    LEFT JOIN staging.film_actor fa ON a.actor_id = fa.actor_id
    LEFT JOIN staging.film f ON fa.film_id = f.film_id
ORDER BY
    a.actor_id;