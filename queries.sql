select * from Place_Order;
select c.name as Customer, m.name as Manufacturer from Customer c, Manufacturer m, Place_order po where c.CustomerID=po.CustomerID and m.Trade_License=po.ManufacturerID;


select * from Demand;
select * from Demand_Of;
select c.name as Customer, p.name as Product from Customer c, Orders o, Product p where c.CustomerID=o.CustomerID and o.ProductID= p.productID;

select * from Produce;
select p.name as Product, pl.name as ProductionLine from Product p, ProductionLine pl, Produce pc where pc.ProductID=p.ProductID and pc.ProductionLineID=pl.ProductionLineID;

select * from Has_Dept;
select m.name as Manufacturer, d.name as Department from Manufacturer m, Department d, Has_Dept hd where hd.ManufacturerID = m.Trade_License and hd.DepartmentID=d.DepartmentID;
 
select * from Has_PL;
select m.name as Manufacturer, pl.name as ProductionLine from Manufacturer m, ProductionLine pl, Has_PL hpl where hpl.ManufacturerID = m.Trade_License and hpl.ProductionLineID=pl.ProductionLineID;

select * from Works_On;
select e.name as Employee, d.name as Department from Employee e, Department d, Works_On w where w.EmployeeID = e.employeeID and w.DepartmentID=d.DepartmentID;

