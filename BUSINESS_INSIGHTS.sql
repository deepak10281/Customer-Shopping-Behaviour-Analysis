CREATE DATABASE IF NOT EXISTS customer_db;

USE customer_db;

SELECT * 
FROM customer_behaviour_analysis;

-- 1. Highest Revenue by Category

SELECT 
    category,
    ROUND(SUM(purchase_amount),2) AS highest_revenue
FROM customer_behaviour_analysis
GROUP BY category
ORDER BY highest_revenue DESC;

-- 2. Discounts Increasing Purchase Value

SELECT 
    discount_applied,
    ROUND(SUM(purchase_amount),2) AS total_revenue,
    ROUND(AVG(purchase_amount),2) AS avg_purchase
FROM customer_behaviour_analysis
GROUP BY discount_applied;

-- 3. Revenue by Gender

SELECT 
    gender,
    ROUND(SUM(purchase_amount),2) AS highest_revenue
FROM customer_behaviour_analysis
GROUP BY gender
ORDER BY highest_revenue DESC;

-- 4. High Spending Discount Customers

SELECT 
    customer_id,
    purchase_amount,
    discount_applied
FROM customer_behaviour_analysis
WHERE discount_applied='Yes'
AND purchase_amount > (
    SELECT AVG(purchase_amount)
    FROM customer_behaviour_analysis
)
LIMIT 10;

-- 5A. Top 5 Highest Rated Products

SELECT 
    item_purchased,
    ROUND(AVG(review_rating),2) AS avg_ratings
FROM customer_behaviour_analysis
GROUP BY item_purchased
ORDER BY avg_ratings DESC
LIMIT 5;

-- 5B. Bottom 5 Lowest Rated Products

SELECT 
    item_purchased,
    ROUND(AVG(review_rating),2) AS avg_ratings
FROM customer_behaviour_analysis
GROUP BY item_purchased
ORDER BY avg_ratings ASC
LIMIT 5;

-- 6. Shipping Type vs Revenue

SELECT 
    shipping_type,
    COUNT(DISTINCT customer_id) AS order_placed,
    ROUND(AVG(purchase_amount),2) AS avg_purchase,
    ROUND(SUM(purchase_amount),2) AS revenue
FROM customer_behaviour_analysis
GROUP BY shipping_type
ORDER BY revenue DESC;

-- 7. Subscribers vs Non-Subscribers

SELECT 
    subscription_status,
    COUNT(customer_id) AS users,
    ROUND(AVG(purchase_amount),2) AS avg_revenue,
    ROUND(SUM(purchase_amount),2) AS total_revenue
FROM customer_behaviour_analysis
GROUP BY subscription_status
ORDER BY total_revenue DESC;

-- 8. Top 5 Products with Highest Discount Usage %

SELECT 
    item_purchased,
    COUNT(item_purchased) AS total_sold,
    COUNT(CASE WHEN discount_applied='Yes' THEN 1 END) AS discount_sales,
    ROUND(
        COUNT(CASE WHEN discount_applied='Yes' THEN 1 END) * 100.0 / COUNT(*),
        2
    ) AS discount_percent
FROM customer_behaviour_analysis
GROUP BY item_purchased
ORDER BY discount_percent DESC
LIMIT 5;

-- 9. Customer Segmentation

SELECT 
    CASE 
        WHEN previous_purchases = 0 THEN 'New Customer'
        WHEN previous_purchases BETWEEN 1 AND 15 THEN 'Returning Customer'
        ELSE 'Loyal Customer'
    END AS customer_segment,
    
    COUNT(*) AS customer_count

FROM customer_behaviour_analysis

GROUP BY 
    CASE 
        WHEN previous_purchases = 0 THEN 'New Customer'
        WHEN previous_purchases BETWEEN 1 AND 15 THEN 'Returning Customer'
        ELSE 'Loyal Customer'
    END;
    
-- 10. Top 3 Products in Each Category

WITH CTE AS (
    SELECT 
        category,
        item_purchased,
        COUNT(item_purchased) AS most_purchased,

        RANK() OVER (
            PARTITION BY category
            ORDER BY COUNT(item_purchased) DESC
        ) AS RNK

    FROM customer_behaviour_analysis
    GROUP BY category, item_purchased
)

SELECT *
FROM CTE
WHERE RNK <= 3;

-- 11. Repeat Buyers vs Subscription

SELECT
    customer_type,
    subscription_status,
    customer_count,

    ROUND(
        customer_count * 100.0 /
        SUM(customer_count) OVER (PARTITION BY customer_type),
        2
    ) AS percents

FROM
(
    SELECT
        CASE 
            WHEN previous_purchases > 5 THEN 'Repeat Buyers'
            ELSE 'Normal Buyers'
        END AS customer_type,

        subscription_status,

        COUNT(*) AS customer_count

    FROM customer_behaviour_analysis

    GROUP BY
        CASE 
            WHEN previous_purchases > 5 THEN 'Repeat Buyers'
            ELSE 'Normal Buyers'
        END,
        subscription_status

) AS subquery;

-- 12. Revenue by Age Group

SELECT 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
    END AS age_group,

    ROUND(SUM(purchase_amount),2) AS total_revenue

FROM customer_behaviour_analysis

GROUP BY 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
    END

ORDER BY total_revenue DESC;