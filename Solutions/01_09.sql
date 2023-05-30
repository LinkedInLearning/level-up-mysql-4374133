CREATE VIEW sales_transactions AS
SELECT orders.OrderDate, employee.EmployeeName, customer.CustName, product.ProdName, product.Price, orders.Quantity FROM orders
JOIN product ON product.ProdNumber = orders.ProdNumber
JOIN customer ON customer.CustomerID = orders.CustomerID
JOIN employee ON employee.EmpID = orders.EmpID
ORDER BY orders.OrderDate DESC;