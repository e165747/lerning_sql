SELECT count(*),
  customer_id,
  SUM(amount)
FROM payment
GROUP BY customer_id;