(SELECT employee.EmployeeName AS Employee,
COUNT(orders.orderDate) AS NumOrders
FROM employee
JOIN orders USING (EmpID)
GROUP BY Employee
ORDER BY NumOrders DESC
LIMIT 3)
UNION
(SELECT employee.EmployeeName AS Employee,
COUNT(orders.orderDate) AS NumOrders
FROM employee
JOIN orders USING (EmpID)
GROUP BY Employee
ORDER BY NumOrders ASC
LIMIT 3);