-- Insert Customers
INSERT INTO customers (customer_id, name, email, city, signup_date) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 'New York', '2023-01-15'),
(2, 'Bob Smith', 'bob.smith@example.com', 'San Francisco', '2023-02-20'),
(3, 'Charlie Brown', 'charlie.brown@example.com', 'London', '2023-03-10'),
(4, 'Diana Prince', 'diana.prince@example.com', 'Paris', '2023-04-05'),
(5, 'Evan Wright', 'evan.wright@example.com', 'Berlin', '2023-05-12');

-- Insert Products
INSERT INTO products (product_id, product_name, category, price, stock) VALUES
(101, 'MacBook Pro 16', 'Electronics', 2499.00, 50),
(102, 'Wireless Mouse', 'Electronics', 49.99, 200),
(103, 'Ergonomic Chair', 'Furniture', 199.50, 150),
(104, 'Mechanical Keyboard', 'Electronics', 120.00, 75),
(105, 'Standing Desk', 'Furniture', 350.00, 40);

-- Insert Orders
INSERT INTO orders (order_id, customer_id, order_date, status, total_amount) VALUES
(1001, 1, '2023-06-01', 'COMPLETED', 2548.99),
(1002, 2, '2023-06-02', 'COMPLETED', 199.50),
(1003, 3, '2023-06-10', 'PENDING', 470.00),
(1004, 1, '2023-06-15', 'COMPLETED', 120.00),
(1005, 4, '2023-06-20', 'CANCELLED', 2499.00);

-- Insert Order Items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(5001, 1001, 101, 1, 2499.00),
(5002, 1001, 102, 1, 49.99),
(5003, 1002, 103, 1, 199.50),
(5004, 1003, 104, 1, 120.00),
(5005, 1003, 105, 1, 350.00),
(5006, 1004, 104, 1, 120.00),
(5007, 1005, 101, 1, 2499.00);

-- Insert Payments
INSERT INTO payments (payment_id, order_id, payment_date, amount, payment_status) VALUES
(9001, 1001, '2023-06-01', 2548.99, 'SUCCESS'),
(9002, 1002, '2023-06-03', 199.50, 'SUCCESS'),
(9003, 1003, NULL, 0.00, 'PENDING'),
(9004, 1004, '2023-06-16', 120.00, 'SUCCESS'),
(9005, 1005, '2023-06-21', 0.00, 'FAILED');
