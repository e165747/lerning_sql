SELECT a1.address addr1,
  a2.address AS addr2,
  a1.city_id
FROM address a1
  INNER JOIN address a2 ON a1.city_id = a2.city_id
WHERE a1.city_id = a2.city_id
  AND a1.address_id <> a2.address_id;