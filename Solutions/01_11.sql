# Add transaction as follows:
# Employee: Kendra Morales
# Customer: Hashim Colerick
# Product: Mineral Water - Orange - 32oz - case
# Order type: Retail
# Quantity: 15, no discount
# Date: 5/4/2023

ALTER TABLE orders
CHANGE COLUMN OrderNum
OrderNum INT NOT NULL AUTO_INCREMENT;

SELECT EmpID FROM employee 
WHERE EmployeeName = 'Kendra Morales' INTO @empid;
SELECT CustomerID FROM customer 
WHERE CustName = 'Hashim Colerick' INTO @customerid;
SELECT ProdNumber FROM product 
WHERE ProdName = 'Mineral Water - Orange - 32oz - case' INTO @prodnumber;

SELECT @empid, @customerid, @prodnumber;

INSERT INTO orders VALUES (DEFAULT, '5/24/2023', @empid, @customerid,
@prodnumber, 'Retail', 22, 0);

SELECT * FROM orders WHERE OrderDate LIKE '%2023';
