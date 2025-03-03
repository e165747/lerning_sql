SELECT first_name,
  last_name
FROM actor
WHERE last_name LIKE 'L%'
UNION ALL
SELECT first_name,
  last_name
FROM actor;