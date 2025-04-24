CREATE DATABASE ECOMMERCE

USE ECOMMERCE

CREATE TABLE orders (
  ID INT,
  Warehouse_block VARCHAR(1100),
  Mode_of_Shipment VARCHAR(1100),
  Customer_care_calls INT,
  Customer_rating INT,
  Cost_of_the_Product INT,
  Prior_purchases INT,
  Product_importance VARCHAR(1100),
  Gender VARCHAR(1100),
  Discount_offered INT,
  Weight_in_gms INT,
  Reached_on_Time_Y_N INT
);
SELECT * FROM ORDERS

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'ECOMMERCE';

DESCRIBE ORDERS;

SELECT ID, CUSTOMER_RATING, PRIOR_PURCHASES
FROM orders
WHERE CUSTOMER_RATING > 3
ORDER BY PRIOR_PURCHASES DESC;


SELECT o1.ID, o2.ID AS Matched_ID, o1.Product_importance
FROM orders o1
INNER JOIN orders o2
ON o1.Product_importance = o2.Product_importance
WHERE o1.ID < o2.ID
LIMIT 5;

SELECT ID, Cost_of_the_Product
FROM orders
WHERE Cost_of_the_Product > (
  SELECT AVG(Cost_of_the_Product) FROM orders
);

-- Total revenue per shipment mode
SELECT Mode_of_Shipment, SUM(Cost_of_the_Product) AS total_revenue
FROM orders
GROUP BY Mode_of_Shipment;

-- Average rating by gender
SELECT Gender, AVG(Customer_rating) AS avg_rating
FROM orders
GROUP BY Gender;

-- View of delayed shipments only
CREATE VIEW delayed_orders AS
SELECT ID, Mode_of_Shipment, Reached_on_Time_Y_N
FROM orders
WHERE Reached_on_Time_Y_N = 1;

-- Create index on product importance (often filtered/grouped)
CREATE INDEX idx_product_importance ON orders(Product_importance(10));

