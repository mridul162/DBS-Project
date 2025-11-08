-- Inserting demo values into the Customer table
INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (1, 'Mohammad Rahman', '01711223344', '3 Main Road', 'Dhaka', 'Dhaka');

INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (2, 'Fatima Begum', '01987654321', '25 Park Street', 'Chittagong', 'Chittagong');

INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (3, 'Ahmed Ali', '01899887766', '8 North Avenue', 'Sylhet', 'Sylhet');

INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (4, 'Aisha Khan', '01511223344', '12 West Road', 'Rajshahi', 'Rajshahi');

INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (5, 'Yusuf Ahmed', '01699887766', '17 South Street', 'Khulna', 'Khulna');

INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (6, 'Zainab Hasan', '01711223399', '21 East Avenue', 'Dhaka', 'Dhaka');

INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (7, 'Omar Siddique', '01987659876', '7 West Street', 'Chittagong', 'Chittagong');

INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (8, 'Sofia Akhtar', '01899887700', '14 North Road', 'Sylhet', 'Sylhet');

INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (9, 'Ibrahim Khan', '01511223388', '32 South Avenue', 'Rajshahi', 'Rajshahi');

INSERT INTO Customer (CustomerID, Name, Phone, Street, City, Division)
VALUES (10, 'Ayesha Ali', '01699887755', '5 Park Avenue', 'Khulna', 'Khulna');


-- Inserting demo values into the Manufacturer table
INSERT INTO Manufacturer (Trade_License, Name, Address, Details)
VALUES (1, 'ABC Manufacturing', '123 Factory St, Dhaka', 'Manufactures various items.');

INSERT INTO Manufacturer (Trade_License, Name, Address, Details)
VALUES (2, 'XYZ Industries', '456 Industrial Ave, Chittagong', 'Specializes in technology products.');

INSERT INTO Manufacturer (Trade_License, Name, Address, Details)
VALUES (3, 'Smith Manufacturing', '789 Production Rd, Sylhet', 'Family-owned business with quality products.');

INSERT INTO Manufacturer (Trade_License, Name, Address, Details)
VALUES (4, 'NewCo', '101 New Way, Rajshahi', 'Innovative products for modern needs.');

INSERT INTO Manufacturer (Trade_License, Name, Address, Details)
VALUES (5, 'MegaCorp', '555 Mega Blvd, Khulna', 'Global leader in various industries.');


-- Inserting demo values into the PhoneBook_Manu table
INSERT INTO PhoneBook_Manu (Trade_License, Phone)
VALUES (1, '01711112222');

INSERT INTO PhoneBook_Manu (Trade_License, Phone)
VALUES (2, '01944445555');

INSERT INTO PhoneBook_Manu (Trade_License, Phone)
VALUES (2, '01945454545');

INSERT INTO PhoneBook_Manu (Trade_License, Phone)
VALUES (1, '01712121212');

INSERT INTO PhoneBook_Manu (Trade_License, Phone)
VALUES (3, '01877778888');

INSERT INTO PhoneBook_Manu (Trade_License, Phone)
VALUES (4, '01533334444');

INSERT INTO PhoneBook_Manu (Trade_License, Phone)
VALUES (5, '01699990000');


-- Inserting demo values into the Product table
INSERT INTO Product (ProductID, Name, Price, MFG)
VALUES (1, 'Laptop', 85000.00, '2023-11-01');

INSERT INTO Product (ProductID, Name, Price, MFG)
VALUES (2, 'Smartphone', 23999.00, '2023-10-15');

INSERT INTO Product (ProductID, Name, Price, MFG)
VALUES (3, 'Headphones', 2900.00,'2023-09-20');

INSERT INTO Product (ProductID, Name, Price, MFG)
VALUES (4, 'Smartwatch', 3999.00,'2023-11-05');

INSERT INTO Product (ProductID, Name, Price, MFG)
VALUES (5, 'Tablet', 29999.00, '2023-10-30');


-- Inserting demo values into the Orders table
-- Insert into Orders table (MySQL version)
INSERT INTO Orders (OrderID, OrderDate, CustomerID, ProductID, Quantity, Price)
VALUES (1, '2023-11-10', 1, 2, 2, (SELECT Price FROM Product WHERE ProductID = 2));

INSERT INTO Orders (OrderID, OrderDate, CustomerID, ProductID, Quantity, Price)
VALUES (2, '2023-11-12', 2, 1, 1, (SELECT Price FROM Product WHERE ProductID = 1));

INSERT INTO Orders (OrderID, OrderDate, CustomerID, ProductID, Quantity, Price)
VALUES (3, '2023-11-15', 3, 3, 3, (SELECT Price FROM Product WHERE ProductID = 3));

INSERT INTO Orders (OrderID, OrderDate, CustomerID, ProductID, Quantity, Price)
VALUES (4, '2023-11-18', 4, 5, 1, (SELECT Price FROM Product WHERE ProductID = 5));

INSERT INTO Orders (OrderID, OrderDate, CustomerID, ProductID, Quantity, Price)
VALUES (5, '2023-11-20', 5, 4, 2, (SELECT Price FROM Product WHERE ProductID = 4));


-- Inserting demo values into the Department table
INSERT INTO Department (DepartmentID, Name, ManagerID)
VALUES (1, 'Sales', 101);

INSERT INTO Department (DepartmentID, Name, ManagerID)
VALUES (2, 'Marketing', 102);

INSERT INTO Department (DepartmentID, Name, ManagerID)
VALUES (3, 'Human Resources', 103);

INSERT INTO Department (DepartmentID, Name, ManagerID)
VALUES (4, 'Finance', 104);

INSERT INTO Department (DepartmentID, Name, ManagerID)
VALUES (5, 'Operations', 105);


-- Inserting demo values into the Employee table
INSERT INTO Employee (EmployeeID, Name, Phone, Salary, DepartmentID)
VALUES (101, 'Tahmid Rahman', '017-1234-5678', 50000.00, 1);

INSERT INTO Employee (EmployeeID, Name, Phone, Salary, DepartmentID)
VALUES (102, 'Ayesha Islam', '019-8765-4321', 55000.00, 2);

INSERT INTO Employee (EmployeeID, Name, Phone, Salary, DepartmentID)
VALUES (103, 'Imran Khan', '018-2222-3333', 60000.00, 3);

INSERT INTO Employee (EmployeeID, Name, Phone, Salary, DepartmentID)
VALUES (104, 'Nadia Akhtar', '016-3456-7890', 52000.00, 4);

INSERT INTO Employee (EmployeeID, Name, Phone, Salary, DepartmentID)
VALUES (105, 'Rahat Hasan', '015-6789-0123', 48000.00, 5);


-- Inserting demo values into the ProductionLine table
INSERT INTO ProductionLine (ProductionLineID, Name, Capacity, ProductID)
VALUES (1, 'Line A', 100, 1);

INSERT INTO ProductionLine (ProductionLineID, Name, Capacity, ProductID)
VALUES (2, 'Line B', 150, 2);

INSERT INTO ProductionLine (ProductionLineID, Name, Capacity, ProductID)
VALUES (3, 'Line C', 120, 3);

INSERT INTO ProductionLine (ProductionLineID, Name, Capacity, ProductID)
VALUES (4, 'Line D', 200, 4);

INSERT INTO ProductionLine (ProductionLineID, Name, Capacity, ProductID)
VALUES (5, 'Line E', 180, 5);

INSERT INTO ProductionLine (ProductionLineID, Name, Capacity, ProductID)
VALUES (6, 'Line F', 180, 5);

INSERT INTO ProductionLine (ProductionLineID, Name, Capacity, ProductID)
VALUES (7, 'Line G', 200, 4);