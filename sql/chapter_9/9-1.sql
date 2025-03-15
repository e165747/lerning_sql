SELECT title
FROM film
WHERE film.film_id IN (
    SELECT fc.film_id
    FROM film_category fc
      INNER JOIN category ON fc.category_id = category.category_id
    WHERE category.name = 'Action'
  );