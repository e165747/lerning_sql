CREATE VIEW country_payments AS
SELECT c.country,
  (
    SELECT SUM(p.amount)
    FROM city ct
      INNER JOIN `address` a ON ct.city_id = a.city_id
      INNER JOIN customer cu ON a.address_id = cu.address_id
      INNER JOIN payment p ON cu.customer_id = p.customer_id
    WHERE ct.country_id = c.country_id
  ) tot_payments
FROM country c;