-- favorite_foodテーブルでperson_idに対して外部キー制約を持つため,
-- 一度外部キー制約をONにしないと制約が変更できない
-- 実運用では推奨されないようなので注意
SET FOREIGN_KEY_CHECKS = 0;
ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;
SET FOREIGN_KEY_CHECKS = 1;