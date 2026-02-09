# Actors & Film Appearances

This page shows insights into actors in the Sakila database, including which movies each actor has appeared in.  
Users can explore the filmography of actors and see details about their roles.

```sql Actors
SELECT DISTINCT title
FROM sakila.actor;
```

## Analyzing actors

<Dropdown data={Actors} name=film value=title
title="Select a film" noDefault={true}>
</Dropdown>

```sql Actor
SELECT
    actor_name
FROM sakila.actor
WHERE title = '${inputs.film.value}'
GROUP BY actor_name
ORDER BY actor_name;
```
<DataTable data={Actor} />

## Insights

- Selecting a film displays all actors who appeared in that movie, allowing quick exploration of the cast.
- This simplifies understanding of which actors frequently collaborate by appearing together across multiple films.
- Some films feature large ensemble casts, while others include only a few actors.
- This page is useful for analyzing casting trends, identifying popular actors, and understanding actor distribution across films.
