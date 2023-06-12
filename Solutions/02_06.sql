SELECT ProdName,
LY.Quantity AS LastYearQuantity,
CY.Quantity AS CurYearQuantity
FROM
(SELECT product.ProdName AS ProdName,
SUM(orders.Quantity) as Quantity
FROM product
JOIN orders USING (ProdNumber)
WHERE orders.OrderDate BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY ProdName
ORDER BY Quantity DESC) AS LY
JOIN 
(SELECT product.ProdName AS ProdName,
SUM(orders.Quantity) as Quantity
FROM product
JOIN orders USING (ProdNumber)
WHERE orders.OrderDate BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY ProdName
ORDER BY Quantity DESC) AS CY
USING (ProdName)
WHERE LY.Quantity > CY.Quantity
ORDER BY LastYearQuantity DESC;