ALTER TABLE transactions RENAME COLUMN `Employee Name` TO `EmployeeName`;
ALTER TABLE transactions RENAME COLUMN `Sales Region` TO `SalesRegion`;
ALTER TABLE transactions RENAME COLUMN `Customer ID` TO `CustomerID`;
    
ALTER TABLE transactions 
	RENAME COLUMN `Employee Name` TO `EmployeeName`,
	RENAME COLUMN `Sales Region` TO `SalesRegion`,
	RENAME COLUMN `Customer ID` TO `CustomerID`;