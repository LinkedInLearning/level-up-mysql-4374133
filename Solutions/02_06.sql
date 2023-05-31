# Create stored procedure to find the employee who generated the most revenue given a month and a year
# Create the basic query
SELECT employee.EmployeeName,
SUM(orders.Quantity) AS Quantity
FROM employee
JOIN orders USING (EmpID)
JOIN product USING (ProdNumber)
WHERE (MONTHNAME(orders.OrderDate) = 'August') AND (YEAR(orders.OrderDate) = 2021)
GROUP BY employee.EmployeeName
ORDER BY Quantity DESC;


# Convert to stored procedure
DELIMITER //
CREATE PROCEDURE best_employee (IN MonthToCheck VARCHAR(9), IN YearToCheck INT, OUT BestEmployee TEXT)
BEGIN
		SELECT BestEmployeeList.BestEmployee INTO BestEmployee
		FROM (
			SELECT employee.EmployeeName AS BestEmployee,
			SUM(orders.Quantity) AS Quantity
			FROM employee
			JOIN orders USING (EmpID)
			JOIN product USING (ProdNumber)
			WHERE (MONTHNAME(orders.OrderDate) = MonthToCheck) AND (YEAR(orders.OrderDate) = YearToCheck)
			GROUP BY employee.EmployeeName
			ORDER BY Quantity DESC) AS BestEmployeeList
            LIMIT 1;
	END //
DELIMITER ;

# Call the procedure
CALL best_employee('August', 2021, @empName);
SELECT @empname;

# Challenge: solve the edge case of two employees selling the same amount
