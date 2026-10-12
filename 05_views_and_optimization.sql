CREATE OR REPLACE VIEW v_monthly_sales AS
SELECT EXTRACT(
        YEAR
        FROM order_date
    ) AS year, EXTRACT(
        MONTH
        FROM order_date
    ) AS month, SUM(total_amount) AS revenue
FROM orders
WHERE
    status = 'COMPLETED'
GROUP BY
    1,
    2;

CREATE OR REPLACE VIEW v_top_products AS
SELECT p.product_name, SUM(oi.quantity) AS units_sold, SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
    JOIN products p ON p.product_id = oi.product_id
GROUP BY
    p.product_name
ORDER BY revenue DESC
LIMIT 10;

CREATE INDEX idx_orders_customer_id ON orders (customer_id);

CREATE INDEX idx_order_items_order_id ON order_items (order_id);

CREATE INDEX idx_order_items_product_id ON order_items (product_id);

CREATE INDEX idx_payments_order_id ON payments (order_id);

CREATE INDEX idx_orders_order_date ON orders (order_date);

CREATE INDEX idx_orders_status ON orders (status);