-- 設問と実際のSakilaにあるテーブルでカラム定義が少し違うためnameは独自で作成
SELECT CONCAT(c.first_name, ' ', c.last_name) name,
  SUM(p.amount)
FROM payment p
  Right OUTER JOIN customer c ON p.customer_id = c.customer_id
GROUP BY name;