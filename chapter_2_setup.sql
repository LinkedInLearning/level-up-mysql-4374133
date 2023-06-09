ALTER TABLE transactions 
  RENAME COLUMN `Employee Name` TO EmployeeName,
  RENAME COLUMN `Sales Region` TO SalesRegion,
  RENAME COLUMN `Employee Job Title` TO EmployeeJobTitle,
  RENAME COLUMN `Customer ID` TO CustomerID;

UPDATE transactions, product_catalog
SET transactions.ProdName = product_catalog.ProdName
WHERE transactions.ProdNumber = product_catalog.ProdNumber;

UPDATE transactions SET OrderNum = concat('110', OrderNum)
WHERE OrderNum NOT LIKE '110%' AND OrderNum NOT LIKE '111%';

UPDATE transactions SET OrderNum = replace(OrderNum, '-', '');
UPDATE transactions SET OrderNum = replace(OrderNum, ']', '');
UPDATE transactions SET OrderNum = replace(OrderNum, '00', '')
WHERE LENGTH(OrderNum) > 7;

CREATE TABLE employee (
  EmpID INT NOT NULL,
  EmployeeName VARCHAR(100) NOT NULL,
  EmployeeJobTitle TEXT NOT NULL,
  SalesRegion VARCHAR(50) NOT NULL,
  PRIMARY KEY (EmpID));

CREATE TABLE customer (
  CustomerID INT NOT NULL,
  CustName VARCHAR(100) NOT NULL,
  CustState VARCHAR(45) NOT NULL,
  CustomerType VARCHAR(45) NOT NULL,
  PRIMARY KEY (CustomerID));

CREATE TABLE product (
  ProdNumber VARCHAR(6) NOT NULL,
  ProdName VARCHAR(100) NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  ProductActive VARCHAR(3) NOT NULL,
  PRIMARY KEY (ProdNumber));

CREATE TABLE orders (
  OrderNum INT NOT NULL,
  OrderDate TEXT NOT NULL,
  EmpID INT NOT NULL,
  CustomerID INT NOT NULL,
  ProdNumber VARCHAR(6) NOT NULL,
  OrderType VARCHAR(15) NOT NULL,
  Quantity INT NOT NULL,
  Discount DECIMAL(2,2) NOT NULL,
  PRIMARY KEY (OrderNum));

ALTER TABLE orders
ADD CONSTRAINT idx_orders_customerid_fk
  FOREIGN KEY (CustomerID)
  REFERENCES customer (CustomerID),
ADD CONSTRAINT idx_orders_empid_fk 
	FOREIGN KEY (EmpID) 
	REFERENCES employee (EmpID),
ADD CONSTRAINT idx_orders_prodnumber_fk 
	FOREIGN KEY (ProdNumber) 
	REFERENCES product (ProdNumber);

UPDATE transactions SET Price = replace(Price, '$', '');
UPDATE transactions SET Discount = replace(Discount, '%', '');
UPDATE transactions SET Discount = Discount / 100;

INSERT INTO customer 
SELECT DISTINCT CustomerID, CustName, CustState, CustomerType FROM transactions;

INSERT INTO employee 
SELECT DISTINCT EmpID, EmployeeName, EmployeeJobTitle, SalesRegion FROM transactions;

INSERT INTO product 
SELECT DISTINCT ProdNumber, ProdName, Price, ProductActive FROM transactions;

INSERT INTO orders 
SELECT DISTINCT OrderNum, OrderDate, EmpID, CustomerID, ProdNumber, OrderType, Quantity, Discount FROM transactions;

CREATE VIEW sales_transactions AS
SELECT orders.OrderDate, employee.EmployeeName, 
customer.CustName, product.ProdName, 
product.Price, orders.Quantity,
product.Price * orders.Quantity AS SalePrice FROM orders
JOIN product ON product.ProdNumber = orders.ProdNumber
JOIN customer USING (CustomerID)
JOIN employee USING (EmpID)
ORDER BY orders.OrderDate DESC;

ALTER TABLE orders
CHANGE COLUMN OrderNum
OrderNum INT NOT NULL AUTO_INCREMENT;

SELECT EmpID FROM employee 
WHERE EmployeeName = 'Kendra Morales' INTO @empid;
SELECT CustomerID FROM customer 
WHERE CustName = 'Hashim Colerick' INTO @customerid;
SELECT ProdNumber FROM product 
WHERE ProdName = 'Mineral Water - Orange - 32oz - case' INTO @prodnumber;

INSERT INTO orders VALUES (DEFAULT, '5/24/2023', @empid, @customerid,
@prodnumber, 'Retail', 22, 0);