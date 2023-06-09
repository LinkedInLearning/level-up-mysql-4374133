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