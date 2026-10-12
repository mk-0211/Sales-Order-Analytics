-- 1. Revenue by Category
SELECT p.category, SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM
    products p
    JOIN order_items oi ON p.product_id = oi.product_id
    JOIN orders o ON o.order_id = oi.order_id
WHERE
    o.status = 'COMPLETED'
GROUP BY
    p.category
HAVING
    SUM(oi.quantity * oi.unit_price) > 500;

-- 2. Average Order Value
SELECT AVG(total_amount) AS aov
FROM orders
WHERE
    status = 'COMPLETED';

-- 3. Customer Ranking using Window Functions
SELECT
    customer_id,
    SUM(total_amount) AS revenue,
    RANK() OVER (
        ORDER BY SUM(total_amount) DESC
    ) AS revenue_rank
FROM orders
WHERE
    status = 'COMPLETED'
GROUP BY
    customer_id;

-- 4. Month-over-Month Growth
WITH
    MonthlyRevenue AS (
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
            2
    )
SELECT
    year,
    month,
    revenue,
    LAG(revenue) OVER (
        ORDER BY year, month
    ) AS prev_month_revenue,
    (
        revenue - LAG(revenue) OVER (
            ORDER BY year, month
        )
    ) / NULLIF(
        LAG(revenue) OVER (
            ORDER BY year, month
        ),
        0
    ) * 100 AS mom_growth_pct
FROM MonthlyRevenue;

-- 5. Subqueries & CASE Expressions: Customer Segmentation
SELECT
    name,
    total_spent,
    CASE
        WHEN total_spent > 1000 THEN 'VIP'
        WHEN total_spent > 500 THEN 'Regular'
        ELSE 'Newbie'
    END AS tier
FROM (
        SELECT c.name, SUM(o.total_amount) AS total_spent
        FROM customers c
            JOIN orders o ON c.customer_id = o.customer_id
        WHERE
            o.status = 'COMPLETED'
        GROUP BY
            c.name
    ) AS spending_subquery;