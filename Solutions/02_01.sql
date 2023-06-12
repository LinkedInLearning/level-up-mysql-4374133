SELECT SUM(orders.Quantity) AS TotalSold,
product.ProdName AS ProductName
FROM orders
JOIN product USING (ProdNumber)
GROUP BY product.ProdName
ORDER BY TotalSold ASC;