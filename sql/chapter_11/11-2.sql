SELECT SUM(
    CASE
      WHEN rating = 'PG' THEN 1
      ELSE 0
    END
  ) PG,
  SUM(
    CASE
      WHEN rating = 'G' THEN 1
      ELSE 0
    END
  ) G,
  SUM(
    CASE
      WHEN rating = 'NC-17' THEN 1
      ELSE 0
    END
  ) NC_17,
  SUM(
    CASE
      WHEN rating = 'PG-13' THEN 1
      ELSE 0
    END
  ) PG_13,
  SUM(
    CASE
      WHEN rating = 'R' THEN 1
      ELSE 0
    END
  ) R
FROM film;
-- GROUP BY rating;