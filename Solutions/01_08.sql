# We assume all CustomerIDs (all IDs of any type, really) are unique
INSERT INTO customer SELECT DISTINCT CustomerID, CustName, CustState, CustomerType FROM transactions;

INSERT INTO employee SELECT DISTINCT EmpID, EmployeeName, SalesRegion FROM transactions;

UPDATE transactions SET Price = replace(Price, '$', '');
INSERT INTO product SELECT DISTINCT ProdNumber, ProdName, Price, ProductActive FROM transactions;

UPDATE transactions SET Discount = replace(Discount, '%', '');
UPDATE transactions SET Discount = Discount / 100;
INSERT INTO orders SELECT DISTINCT OrderNum, OrderDate, EmpID, CustomerID, ProdNumber, OrderType, Quantity, Discount FROM transactions;