# Find top 5 states by order percentage in December (of any year)
# First, convert orders.OrderDate to a date from text
ALTER TABLE orders
ADD COLUMN `OrderDateReal` DATETIME AFTER `OrderDate`;

# Convert text date to datetime
UPDATE orders SET OrderDateReal = STR_TO_DATE(OrderDate, '%m/%d/%Y');

# Cleanup
ALTER TABLE orders
DROP COLUMN OrderDate,
CHANGE COLUMN OrderDateReal OrderDate DATETIME NOT NULL;


# Find number of orders per state during December
SELECT customer.CustState,
COUNT(orders.OrderNum) AS NumOrders
FROM customer
JOIN orders USING (CustomerID)
WHERE MONTH(orders.OrderDate) = 12
GROUP BY CustState
ORDER BY NumOrders DESC;

# Calculate percentages and limit results
SELECT customer.CustState,
(COUNT(orders.OrderNum) / (SELECT Count(*) AS TotalOrders FROM orders WHERE MONTH(orders.OrderDate) = 12)) * 100 AS PercentageOfTotalOrders
FROM customer
JOIN orders USING (CustomerID)
WHERE MONTH(orders.OrderDate) = 12
GROUP BY CustState
ORDER BY PercentageOfTotalOrders DESC
LIMIT 5;