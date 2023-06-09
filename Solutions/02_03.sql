UPDATE product
RIGHT JOIN
(SELECT SUM(orders.Quantity) AS TotalSold, 
product.ProdName, product.ProdNumber AS ProdNumber
FROM orders
JOIN product ON product.ProdNumber = orders.ProdNumber
GROUP BY product.ProdName, ProdNumber
HAVING product.ProdName LIKE '%water bottle%'
ORDER BY TotalSold ASC
LIMIT 3) AS wb
ON product.ProdNumber = wb.ProdNumber
SET product.ProductActive = 'No';

#verify
SELECT SUM(orders.Quantity) AS TotalSold, 
product.ProdName, product.ProdNumber AS ProdNumber,
product.ProductActive
FROM orders
JOIN product ON product.ProdNumber = orders.ProdNumber
GROUP BY product.ProdName, ProdNumber
HAVING product.ProdName LIKE '%water bottle%'
ORDER BY TotalSold ASC;