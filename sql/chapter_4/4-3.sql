SELECT payment_id,
  customer_id,
  amount,
  date(payment_date)
FROM payment
WHERE amount IN (1.98, 7.98, 9.98);