SELECT payment_id,
  customer_id,
  amount,
  date(payment_date)
FROM payment
WHERE customer_id <> 5
  AND (
    amount > 8
    OR date(payment_id) = '2005-08-23'
  );