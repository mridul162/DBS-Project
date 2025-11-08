-- CREATE DATABASE furqan;
USE furqan;

drop table Demand_Of;
drop table Has_Dept; 
drop table Has_PL;
drop table Produce;
drop table Place_Order;
drop table Demand; 
drop table Works_On;

drop table ProductionLine;
drop table Employee;
drop table Department;
drop table Orders;

drop table Product;
drop table PhoneBook_Manu;
drop table Manufacturer;
drop table customer;

-- Create Customer table
CREATE TABLE Customer (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Street VARCHAR(50) NOT NULL,
  City VARCHAR(50) NOT NULL,
  Division VARCHAR(50) NOT NULL
);

-- Create Manufacturer table
CREATE TABLE Manufacturer (
  Trade_License VARCHAR(20) PRIMARY KEY,
  Name VARCHAR(50),
  Address VARCHAR(100),
  Details TEXT
);

-- Create PhoneBook_Manu table
CREATE TABLE PhoneBook_Manu (
  Trade_License VARCHAR(20),
  Phone VARCHAR(20) NOT NULL,
  CONSTRAINT fk_pb_manufacturer FOREIGN KEY (Trade_License)
    REFERENCES Manufacturer (Trade_License)
);

-- Create Product table
CREATE TABLE Product (
  ProductID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  MFG DATE NOT NULL
);

-- Create Orders table
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  OrderDate DATE NOT NULL,
  CustomerID INT NOT NULL,
  ProductID INT NOT NULL,
  Quantity INT NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  Amount DECIMAL(10,2) AS (Quantity * Price) STORED,
  CONSTRAINT fk_order_customer FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID),
  CONSTRAINT fk_order_product FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);

-- MySQL syntax for generated (computed) column
-- ALTER TABLE Orders
-- ADD Amount DECIMAL(10,2) AS (Quantity * Price) STORED;

-- Create Department table
CREATE TABLE Department (
  DepartmentID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  ManagerID INT NOT NULL
);

-- Create Employee table
CREATE TABLE Employee (
  EmployeeID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Phone VARCHAR(20),
  Salary DECIMAL(10,2) NOT NULL,
  DepartmentID INT NOT NULL,
  CONSTRAINT fk_employee_department FOREIGN KEY (DepartmentID)
    REFERENCES Department (DepartmentID)
);

-- Create ProductionLine table
CREATE TABLE ProductionLine (
  ProductionLineID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Capacity INT NOT NULL,
  ProductID INT NOT NULL,
  CONSTRAINT fk_line_product FOREIGN KEY (ProductID)
    REFERENCES Product (ProductID)
);

-- Relational Tables

CREATE TABLE Place_Order (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  ManufacturerID VARCHAR(20),
  OrderDate DATE,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(Trade_License)
);

CREATE TABLE Demand (
  CustomerID INT PRIMARY KEY,
  OrderID INT,
  CONSTRAINT fk_demand_customer FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID),
  CONSTRAINT fk_demand_order FOREIGN KEY (OrderID) REFERENCES Orders (OrderID)
);

CREATE TABLE Demand_Of (
  OrderID INT PRIMARY KEY,
  ProductID INT,
  CONSTRAINT fk_demand_of_order FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
  CONSTRAINT fk_demand_of_product FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);

CREATE TABLE Produce (
  ProductionLineID INT PRIMARY KEY,
  ProductID INT,
  CONSTRAINT fk_produce_line FOREIGN KEY (ProductionLineID) REFERENCES ProductionLine (ProductionLineID),
  CONSTRAINT fk_produce_product FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);

CREATE TABLE Has_Dept (
  DepartmentID INT PRIMARY KEY,
  ManufacturerID VARCHAR(20),
  FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer (Trade_License),
  FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
);

CREATE TABLE Has_PL (
  ProductionLineID INT PRIMARY KEY,
  ManufacturerID VARCHAR(20),
  FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer (Trade_License),
  FOREIGN KEY (ProductionLineID) REFERENCES ProductionLine (ProductionLineID)
);

CREATE TABLE Works_On (
  EmployeeID INT PRIMARY KEY,
  DepartmentID INT,
  CONSTRAINT fk_works_employee FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID),
  CONSTRAINT fk_works_department FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
);