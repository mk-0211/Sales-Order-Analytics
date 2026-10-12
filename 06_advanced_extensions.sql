CREATE OR REPLACE PROCEDURE checkout_order(p_order_id INT)
LANGUAGE plpgsql AS $$
DECLARE
    item RECORD;
BEGIN
    FOR item IN SELECT product_id, quantity FROM order_items WHERE order_id = p_order_id LOOP
        UPDATE products 
        SET stock = stock - item.quantity
        WHERE product_id = item.product_id;
    END LOOP;
    
    UPDATE orders SET status = 'COMPLETED' WHERE order_id = p_order_id;
END;
$$;

CREATE TABLE audit_orders (
    audit_id SERIAL PRIMARY KEY,
    order_id INT,
    old_status VARCHAR(30),
    new_status VARCHAR(30),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION log_order_status_change()
RETURNS TRIGGER AS $$
BEGIN
    IF OLD.status IS DISTINCT FROM NEW.status THEN
        INSERT INTO audit_orders (order_id, old_status, new_status)
        VALUES (NEW.order_id, OLD.status, NEW.status);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_audit_orders
AFTER UPDATE OF status ON orders
FOR EACH ROW EXECUTE FUNCTION log_order_status_change();

CREATE MATERIALIZED VIEW mv_customer_lifetime_value AS
SELECT customer_id, SUM(total_amount) AS clv
FROM orders
WHERE
    status = 'COMPLETED'
GROUP BY
    customer_id;

-- 4. Partitioning for large order tables

CREATE TABLE orders_partitioned (
    order_id INT,
    customer_id INT,
    order_date DATE,
    status VARCHAR(30),
    total_amount DECIMAL(12, 2)
)
PARTITION BY
    RANGE (order_date);

-- Create Partitions for Year 2023
CREATE TABLE orders_2023_h1 PARTITION OF orders_partitioned FOR
VALUES
FROM ('2023-01-01') TO ('2023-07-01');

CREATE TABLE orders_2023_h2 PARTITION OF orders_partitioned FOR
VALUES
FROM ('2023-07-01') TO ('2024-01-01');

ADD COLUMN valid_from DATE DEFAULT CURRENT_DATE,
ADD COLUMN valid_to DATE DEFAULT NULL,
ADD COLUMN is_current BOOLEAN DEFAULT TRUE;

CREATE OR REPLACE PROCEDURE update_product_price_scd(
    p_product_id INT, 
    p_new_price DECIMAL
)
LANGUAGE plpgsql AS $$
BEGIN
    UPDATE products 
    SET valid_to = CURRENT_DATE, is_current = FALSE 
    WHERE product_id = p_product_id AND is_current = TRUE;
    
    INSERT INTO products (product_id, product_name, category, price, stock, valid_from, is_current)
    SELECT p_product_id, product_name, category, p_new_price, stock, CURRENT_DATE, TRUE
    FROM products WHERE product_id = p_product_id LIMIT 1;
END;
$$;