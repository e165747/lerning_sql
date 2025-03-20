ALTER TABLE rental
ADD CONSTRAINT fk_customer_id FOREIGN_KEY (customer_id) REFERENCES customer (customer_id) ON DELETE RESTRICT;