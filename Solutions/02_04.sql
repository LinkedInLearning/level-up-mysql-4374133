SELECT CustomerName, SUM(OrderTotal) AS SumOrderTotal
FROM
(SELECT customer.CustName AS CustomerName, 
product.Price AS Price, 
orders.Quantity AS Quantity, 
orders.Discount AS Discount,
(Price * Quantity) AS Subtotal,
Round(((Price * Quantity) * (1 - Discount)),2) AS OrderTotal
FROM product
JOIN orders USING (ProdNumber)
JOIN customer USING (CustomerID)) AS sales
GROUP BY CustomerName
ORDER BY SumOrderTotal DESC;