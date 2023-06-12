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
