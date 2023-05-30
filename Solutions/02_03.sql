# Cancel the three least popular water bottles

UPDATE product
JOIN (SELECT SUM(orders.Quantity) AS TotalSold, product.ProdName, product.ProdNumber AS ProdNumber
FROM orders
JOIN product ON product.ProdNumber = orders.ProdNumber
GROUP BY product.ProdName, ProdNumber
HAVING product.ProdName LIKE '%water bottle%'
ORDER BY TotalSold ASC
LIMIT 3) AS wb 
ON product.ProdNumber = wb.ProdNumber
SET product.ProductActive = 'No';


# Verification
SELECT SUM(orders.Quantity) AS TotalSold, product.ProdName AS ProductName, product.ProductActive AS ProductActive
FROM orders
JOIN product ON product.ProdNumber = orders.ProdNumber
GROUP BY product.ProdName, ProductActive
HAVING ProductName LIKE '%water bottle%'
ORDER BY TotalSold ASC;