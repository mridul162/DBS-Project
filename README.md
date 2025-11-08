# README.md

## Project Overview

This is a Database Management System (DBMS) project implementing a manufacturing and order management system. The project models the relationships between customers, manufacturers, products, orders, employees, departments, and production lines.

## Database Platforms

The project supports two database platforms with platform-specific schema files:

- **MySQL/MariaDB**: `schema.sql` (primary schema file)
- **Oracle**: `CSE_Project_Oracle.txt` (Oracle-specific syntax with data inserts included)

Key differences:
- Oracle uses `NUMBER` for Trade_License; MySQL uses `VARCHAR(20)`
- Oracle uses `CLOB` for Details field; MySQL uses `TEXT`
- Oracle computed columns use `GENERATED ALWAYS AS ... VIRTUAL`; MySQL uses `AS ... STORED`
- Oracle uses `TO_DATE()` function; MySQL uses direct date strings

## Database Setup

### Using MySQL/MariaDB

```powershell
# Connect to MySQL
mysql -u username -p

# Run schema creation
mysql -u username -p database_name < schema.sql

# Insert main table data
mysql -u username -p database_name < mainTable_entries.sql

# Insert relational table data
mysql -u username -p database_name < relationalTable_entries.sql
```

### Using Oracle

```powershell
# Connect to Oracle SQL*Plus
sqlplus username/password@database

# Run complete Oracle script (includes schema + data)
@CSE_Project_Oracle.txt
```

The Oracle file sets display formatting (`set linesize 200; set pagesize 200;`) and includes demo queries at the end.

## Database Architecture

### Core Tables (Main Entities)

1. **Customer** - Customer information with address (Street, City, Division)
2. **Manufacturer** - Manufacturing companies identified by Trade_License
3. **PhoneBook_Manu** - Multi-valued phone numbers for manufacturers
4. **Product** - Products with Price and MFG (manufacturing date)
5. **Orders** - Customer orders with computed Amount field (Quantity * Price)
6. **Department** - Departments with ManagerID reference
7. **Employee** - Employees linked to departments
8. **ProductionLine** - Production lines with capacity, linked to products

### Relational/Junction Tables (Relationships)

These tables implement many-to-many relationships:

- **Place_Order** - Links Orders, Customers, and Manufacturers
- **Demand** - Links Customers to Orders
- **Demand_Of** - Links Orders to Products
- **Produce** - Links ProductionLines to Products
- **Has_Dept** - Links Manufacturers to Departments
- **Has_PL** - Links Manufacturers to ProductionLines
- **Works_On** - Links Employees to Departments

### Important Schema Notes

- **Computed Column**: Orders.Amount is auto-calculated as `Quantity * Price`
- **Circular Dependency**: Department has ManagerID (references Employee), but Employee references DepartmentID. When inserting data, ensure Department is created first with a valid ManagerID
- **Drop Order**: When recreating schema, drop tables in reverse dependency order (junction tables first, then main tables)

## Modifying the Schema

When making changes to the database schema:

1. **Always update both platform-specific files** (`schema.sql` and `CSE_Project_Oracle.txt`)
2. **Drop order matters** - Junction tables must be dropped before their referenced tables
3. **Test on both platforms** if possible, or clearly document platform-specific changes
4. **Maintain computed column logic** - Ensure Amount calculation remains consistent

## Common Queries

The Oracle file includes useful demo queries for testing relationships:

```sql
-- View Customer-Manufacturer relationships
SELECT c.name as Customer, m.name as Manufacturer 
FROM Customer c, Manufacturer m, Place_order po 
WHERE c.CustomerID=po.CustomerID AND m.Trade_License=po.ManufacturerID;

-- View Customer-Product relationships
SELECT c.name as Customer, p.name as Product 
FROM Customer c, Orders o, Product p 
WHERE c.CustomerID=o.CustomerID AND o.ProductID=p.productID;

-- View Product-ProductionLine relationships
SELECT p.name as Product, pl.name as ProductionLine 
FROM Product p, ProductionLine pl, Produce pc 
WHERE pc.ProductID=p.ProductID AND pc.ProductionLineID=pl.ProductionLineID;

-- View Manufacturer-Department relationships
SELECT m.name as Manufacturer, d.name as Department 
FROM Manufacturer m, Department d, Has_Dept hd 
WHERE hd.ManufacturerID=m.Trade_License AND hd.DepartmentID=d.DepartmentID;

-- View Employee-Department relationships
SELECT e.name as Employee, d.name as Department 
FROM Employee e, Department d, Works_On w 
WHERE w.EmployeeID=e.employeeID AND w.DepartmentID=d.DepartmentID;
```

## File Structure

- `schema.sql` - MySQL schema definition (tables only)
- `mainTable_entries.sql` - Sample data for main entity tables (MySQL format)
- `relationalTable_entries.sql` - Sample data for junction tables (MySQL format)
- `CSE_Project_Oracle.txt` - Complete Oracle script (schema + data + queries)
- `1909024_DBSProject_Presentation.pptx` - Project presentation materials

## Database Name

The MySQL schema references database name `furqan`. Modify line 2 of `schema.sql` to use your database name.
