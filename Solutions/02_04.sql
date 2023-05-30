# Find customers that spend more money than average

# Calculate sales totals
SELECT product.Price AS Price, 
orders.Quantity AS Quantity, 
orders.Discount AS Discount,
Round(((Price * Quantity) * (1 - Discount)),2) AS OrderTotal
FROM product
JOIN orders ON product.ProdNumber = orders.ProdNumber; 

# Find best-performing customers
SELECT CustomerName, SUM(OrderTotal) AS SumOrderTotal
FROM (SELECT customer.CustName AS CustomerName,
product.Price AS Price, 
orders.Quantity AS Quantity, 
orders.Discount AS Discount,
Round(((Price * Quantity) * (1 - Discount)),2) AS OrderTotal
FROM product
JOIN orders ON product.ProdNumber = orders.ProdNumber
JOIN customer ON customer.CustomerID = orders.CustomerID) AS sales
GROUP BY CustomerName
ORDER BY SumOrderTotal DESC;

