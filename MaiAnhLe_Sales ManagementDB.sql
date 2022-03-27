
Create database salesdb;
use salesdb;

CREATE TABLE Customers
(Customer_Id INTEGER PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Address VARCHAR(50),
State VARCHAR(50),
PostalCode VARCHAR(15),
Country VARCHAR(50),
Phone int,
Email VARCHAR(50));

insert into 
customers 
(customer_id, name, address, state, postalcode, country, phone, email)
values
('1', 'Mary', '14 Taylor St', 'St.Stephens Ward', 'CT2 7PP', 'UNITED KINGDOM', 01835703597, 'Marykiewicz@hotmail.com'),
('2', 'Evan', '5 Binney St', 'Abbey Ward', 'HP11 2AX', 'UNITED KINGDOM', 01937864715, 'evan.zigomalas@gmail.com'),
('3', 'France', '8 Moor Place', 'East Southbourne and Tuckton W', 'BH6 3BE', 'UNITED KINGDOM', 01347368222, 'france.andrade@hotmail.com'),
('4', 'Ulysses', '505 Exeter Rd', 'Hawerby cum Beesby', 'DN36 5RP', 'UNITED KINGDOM', 01912771311, 'ulysses@hotmail.com'),
('5', 'Tyisha', '5396 Forth Street', 'Greets Green and Lyng Ward', 'B70 9DT', 'UNITED KINGDOM', 01547429341, 'tyisha.veness@hotmail.com');

select * from customers;



CREATE TABLE Orders
(OrderId INTEGER PRIMARY KEY,
Customer_Id int NOT NULL,
EmployeeId int NOT NULL,
OrderDate date,
RequiredDate date,
ShippedDate date,
ShipVia VARCHAR(50),
Freight VARCHAR(50),
ShipName VARCHAR(50),
ShipAddress VARCHAR(50),
ShipState VARCHAR(50),
ShipPostalCode VARCHAR(50),
ShipCountry VARCHAR(50)
);

insert into 
orders 
(OrderId, Customer_Id, EmployeeId, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipState, ShipPostalCode, ShipCountry)
values
('1', '1', '1', '2022-03-20', '2022-03-20','2022-03-20','','','','','','',''),
('2', '1', '1', '2022-03-20', '2022-03-20','2022-03-20','','','','','','',''),
('3', '2', '2', '2022-03-20', '2022-03-20','2022-03-20','','','','','','',''),
('4', '2', '2', '2022-03-20', '2022-03-20','2022-03-20','','','','','','',''),
('5', '2', '2', '2022-03-20', '2022-03-20','2022-03-20','','','','','','','');

select * from orders;

update orders 
set freight = 'Ship Freight'
where customer_id = 2;




CREATE TABLE Shippers
(ShipperId INTEGER PRIMARY KEY,
Name VARCHAR(50),
Phone int
);

insert into 
Shippers 
(ShipperId, Name)
values
('1', '' ),
('2', ''),
('3', ''),
('4', ''),
('5', '');

update Shippers 
set name = 'Michael'
where shipperid = 5;

select * from Shippers;


CREATE TABLE Invoices
(InvoiceNo INTEGER PRIMARY KEY,
OrderId int,
Customer_Id int,
EmployeeId int,
OrderDate date,
InvoiceDate date,
ShipperId int,
Freight VARCHAR(50),
ShipName VARCHAR(50),
ShipAddress VARCHAR(50),
ShipState VARCHAR(50),
ShipPostalCode VARCHAR(50),
ShipCountry VARCHAR(50)
);

insert into 
Invoices 
(InvoiceNo, OrderId, Customer_Id, EmployeeId, OrderDate, InvoiceDate, ShipperId, Freight, ShipName, ShipAddress, ShipState, ShipPostalCode, ShipCountry)
values
('1', '1', '1', '1', '2022-03-20', '2022-03-21', '1', '', '', '', '', '', ''),
('2', '2', '1', '1', '2022-03-20', '2022-03-21', '1', '', '', '', '', '', ''),
('3', '3', '2', '2', '2022-03-20', '2022-03-21', '2', '', '', '', '', '', ''),
('4', '4', '2', '2', '2022-03-20', '2022-03-21', '2', '', '', '', '', '', ''),
('5', '5', '2', '2', '2022-03-20', '2022-03-21', '2', '', '', '', '', '', '');

update Invoices 
set freight = 'Ship Freight'
where customer_id = 2;

select * from Invoices;

CREATE TABLE Employees
(EmployeeId INTEGER PRIMARY KEY,
Name VARCHAR(50),
Phone int
);

insert into 
Employees 
(EmployeeId)
values
('1'),
('2'),
('3'),
('4'),
('5');

select * from Employees;


CREATE TABLE OrderDetails
(OrderId INTEGER PRIMARY KEY,
ProductID int not null,
UnitPrice decimal,
Qty int,
Discount int
);

insert into 
OrderDetails 
(OrderId, ProductID)
values
('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5');

select * from OrderDetails;


CREATE TABLE Products
(ProductId INTEGER PRIMARY KEY,
ProductName VARCHAR(50),
UnitsInStock int,
UnitsOnOnder int,
SupplierId int not null,
CategoryId int not null,
UnitPrice int
);

insert into 
Products 
(ProductId, SupplierId, CategoryId)
values
('1','1','1'),
('2','2','2'),
('3','3','3'),
('4','4','4'),
('5','5','5');

update Products 
set ProductName = 'California Sweatshirt'
where productid = 5;

select * from Products;


CREATE TABLE Categories
(CategoryId INTEGER PRIMARY KEY,
CategoryName VARCHAR(50),
Description VARCHAR(50)
);

insert into 
Categories 
(CategoryId)
values
('1'),
('2'),
('3'),
('4'),
('5');

select * from Categories;


CREATE TABLE Suppliers
(SupplierId INTEGER PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Address VARCHAR(50),
State VARCHAR(50),
PostalCode VARCHAR(15),
Country VARCHAR(50),
Phone int,
Email VARCHAR(50));

insert into 
Suppliers 
(SupplierId, Name)
values
('1', 'Supplier1'),
('2', 'Supplier2'),
('3', 'Supplier3'),
('4', 'Supplier4'),
('5', 'Supplier5');

select * from Suppliers;

update Employees 
set Name = 'Trang'
where employeeId = '3';

# tasks

#Find the customer id and name of each order where the order quantity is more than > 25, with subquery

SELECT Customer_Id, Name FROM Customers WHERE Customer_Id IN (
   SELECT Customer_ID FROM Orders WHERE OrderId IN (
       SELECT OrderID FROM OrderDetails WHERE Qty > 25));

select * from OrderDetails;
select * from customers;
select * from orders;


# create view and join tables and retrieve data from tables 
CREATE VIEW Customer_Orders AS
select customers.name, orders.orderid ,products.productid, products.ProductName, orderdetails.UnitPrice, orderdetails.qty, orderdetails.UnitPrice * orderdetails.qty as Amount from customers 
left outer join orders
on customers.Customer_Id = orders.Customer_Id
inner join orderdetails
on orders.OrderId = orderdetails.orderid
inner join products
on orderdetails.productid = products.productid;

select * from Customer_Orders;

# using view and group by & having clause to retrieve data
select t1.name, sum(t1.amount) as totalamount from (
select * from Customer_Orders
) t1 group by t1.name having t1.name = 'Evan';

# using view without group by and having.
select t1.name, t1.amount as totalamount from (
select * from Customer_Orders
) t1 where t1.name = 'Evan';


# Stored Procedure
-- Change Delimiter
DELIMITER //
-- Create Stored Procedure
CREATE PROCEDURE checkSupplierCategory( supplierID int, categoryID int)
BEGIN
	DECLARE Supplier_Category VARCHAR(200);
	select CONCAT(suppliers.name,' ',categories.categoryname) as Supplier_Category from products
    inner join categories
    on categoryID = categories.CategoryId
    inner join suppliers
    on supplierID = suppliers.SupplierId
    group by categories.categoryname, suppliers.name;
    
END//
-- Change Delimiter again
DELIMITER ;
-- Call Stored Procedure
CALL checkSupplierCategory(1,1);
CALL checkSupplierCategory(2,2);
CALL checkSupplierCategory(3,3);
-- drop procedure checkSupplierCategory


select * from customers;
select * from orders;
select * from invoices;
select * from orderdetails;
select * from shippers;
select * from products;
select * from categories;
select * from suppliers;
select * from employees;









