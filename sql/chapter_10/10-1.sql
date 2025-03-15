-- 設問と実際のSakilaにあるテーブルでカラム定義が少し違うためnameは独自で作成
SELECT CONCAT(c.first_name, ' ', c.last_name) name,
  SUM(p.amount)
FROM customer c
  LEFT OUTER JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id;