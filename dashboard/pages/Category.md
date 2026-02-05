# Film Categories Overview

```sql Film
FROM sakila.category_film;

```

### Analyzing films by categories

## Select a category

<Dropdown data={Film} name='category_name' value='category_name'
title='Select a category' >
</Dropdown>


<!-- -- ```sql Film_Categories
-- SELECT
--     title
-- FROM sakila.category_film
-- WHERE category_name =  '${inputs.category_name}'
-- ORDER BY title;
-- ```
 -->
---
```sql Film_Categories
SELECT title
FROM sakila.category_film
WHERE TRIM(LOWER(category_name)) = TRIM(LOWER('${inputs.category_name.value}'
))
ORDER BY title;
```

## Insights

- The dropdown lets users instantly list all films in a chosen category.
- Useful for analyzing which genres have the most or fewest films.
- Helps compare film availability across categories (e.g., Action vs. Family).
- Can support further analysis like revenue per category or popularity trends.