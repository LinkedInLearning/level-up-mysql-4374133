# Find employees by number of orders
SELECT employee.EmployeeName AS Employee, COUNT(orders.orderDate) AS NumOrders
FROM employee
JOIN orders USING (EmpID)
GROUP BY Employee
ORDER by NumOrders DESC;

# Find best and worst employees
(SELECT employee.EmployeeName AS Employee, COUNT(orders.orderDate) AS NumOrders
FROM employee
JOIN orders USING (EmpID)
GROUP BY Employee
ORDER by NumOrders DESC
LIMIT 3)
UNION
(SELECT employee.EmployeeName AS Employee, COUNT(orders.orderDate) AS NumOrders
FROM employee
JOIN orders USING (EmpID)
GROUP BY Employee
ORDER by NumOrders ASC
LIMIT 3);