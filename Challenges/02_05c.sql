ALTER TABLE orders
ADD COLUMN `OrderDateReal` DATETIME AFTER `OrderDate`;

UPDATE orders SET OrderDateReal = STR_TO_DATE(OrderDate, '%m/%d/%Y');

ALTER TABLE orders
DROP COLUMN OrderDate,
CHANGE COLUMN OrderDateReal OrderDate DATETIME NOT NULL;

SELECT customer.CustState,
(COUNT(orders.OrderNum) / (SELECT Count(*) AS TotalOrders FROM orders WHERE MONTHNAME(orders.OrderDate) = 'December')) * 100 AS PercentageOfTotalOrders
FROM customer
JOIN orders USING (CustomerID)
WHERE MONTHNAME(orders.OrderDate) = 'December'
GROUP BY CustState
ORDER BY PercentageOfTotalOrders DESC
LIMIT 5;