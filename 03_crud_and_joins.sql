- SELECT * FROM customers WHERE city = 'New York';

UPDATE customers
SET
    email = 'alice.new.email@example.com'
WHERE
    customer_id = 1;

DELETE FROM orders WHERE order_id = 1005;

SELECT c.name, o.order_id, o.order_date, o.total_amount
FROM customers c
    INNER JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.name, c.email, o.order_id
FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE
    o.order_id IS NULL;

SELECT c.name AS customer_name, o.order_date, p.product_name, oi.quantity, oi.unit_price, p.category
FROM
    customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON p.product_id = oi.product_id
WHERE
    o.status = 'COMPLETED';