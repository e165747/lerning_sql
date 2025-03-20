START TRANSACTION;
INSERT INTO `transaction` (txn_date, account_id, txn_type_cd, amount)
VALUES (now(), 123, 'D', 50);
INSERT INTO `transaction` (txn_date, account_id, txn_type_cd, amount)
VALUES (now(), 789, 'C', 50);
UPDATE `account`
SET avail_balance = avail_balance - 50,
  last_activity_date = now()
WHERE account_id = 123;
UPDATE `account`
SET avail_balance = avail_balance + 50,
  last_activity_date = now()
WHERE account_id = 789;
COMMIT;