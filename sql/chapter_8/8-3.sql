SELECT count(*) payment_count,
  customer_id,
  SUM(amount) amount_sum
FROM payment
GROUP BY customer_id
HAVING payment_count >= 40;