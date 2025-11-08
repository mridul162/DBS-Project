INSERT INTO Place_Order (OrderID, CustomerID, ManufacturerID, OrderDate)
VALUES (1, 1, 1, '2023-11-10');

INSERT INTO Place_Order (OrderID, CustomerID, ManufacturerID, OrderDate)
VALUES (2, 2, 2, '2023-11-12');

INSERT INTO Place_Order (OrderID, CustomerID, ManufacturerID, OrderDate)
VALUES (3, 3, 3, '2023-11-15');


INSERT INTO Demand (CustomerID, OrderID)
VALUES (1, 1);

INSERT INTO Demand (CustomerID, OrderID)
VALUES (2, 2);

INSERT INTO Demand (CustomerID, OrderID)
VALUES (3, 3);

INSERT INTO Demand (CustomerID, OrderID)
VALUES (4, 4);

INSERT INTO Demand (CustomerID, OrderID)
VALUES (5, 5);


INSERT INTO Demand_Of (OrderID, ProductID)
VALUES (1, 1);

INSERT INTO Demand_Of (OrderID, ProductID)
VALUES (2, 2);

INSERT INTO Demand_Of (OrderID, ProductID)
VALUES (3, 3);

INSERT INTO Demand_Of (OrderID, ProductID)
VALUES (4, 4);

INSERT INTO Demand_Of (OrderID, ProductID)
VALUES (5, 5);


INSERT INTO Produce (ProductionLineID, ProductID)
VALUES (1, 1);

INSERT INTO Produce (ProductionLineID, ProductID)
VALUES (2, 2);

INSERT INTO Produce (ProductionLineID, ProductID)
VALUES (3, 3);

INSERT INTO Produce (ProductionLineID, ProductID)
VALUES (4, 4);

INSERT INTO Produce (ProductionLineID, ProductID)
VALUES (5, 5);


-- Insert demo data into Has_Dept table
INSERT INTO Has_Dept (ManufacturerID, DepartmentID) 
VALUES (1, 1);

INSERT INTO Has_Dept (ManufacturerID, DepartmentID) 
VALUES (2, 2);

INSERT INTO Has_Dept (ManufacturerID, DepartmentID) 
VALUES (3, 3);

INSERT INTO Has_Dept (ManufacturerID, DepartmentID) 
VALUES (4, 4);

INSERT INTO Has_Dept (ManufacturerID, DepartmentID) 
VALUES (5, 5);


-- Insert demo data into Has_PL table
INSERT INTO Has_PL (ManufacturerID, ProductionLineID) 
VALUES (1, 1);

INSERT INTO Has_PL (ManufacturerID, ProductionLineID) 
VALUES (2, 2);

INSERT INTO Has_PL (ManufacturerID, ProductionLineID) 
VALUES (3, 3);

INSERT INTO Has_PL (ManufacturerID, ProductionLineID) 
VALUES (4, 4);

INSERT INTO Has_PL (ManufacturerID, ProductionLineID) 
VALUES (5, 5);


-- Insert demo data into Works_On table
INSERT INTO Works_On (EmployeeID, DepartmentID) 
VALUES (101, 1);

INSERT INTO Works_On (EmployeeID, DepartmentID) 
VALUES (102, 2);

INSERT INTO Works_On (EmployeeID, DepartmentID) 
VALUES (103, 3);

INSERT INTO Works_On (EmployeeID, DepartmentID) 
VALUES (104, 4);

INSERT INTO Works_On (EmployeeID, DepartmentID) 
VALUES (105, 5);
