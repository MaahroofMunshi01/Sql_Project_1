# SQL Project - 1 : Data Digger

Create database rnw;
use rnw;

# Create table customers 

create table tbl_Customers(
cust_id INT primary key,
cust_name varchar(50),
cust_email varchar(50),
cust_address varchar(100));

# Insert atleast 5 records

insert into tbl_Customers (cust_id, cust_name, cust_email, cust_address)
Values (1, "Raj", "raj1@gmail.com", "Ahmedabad"),
(2, "Alice", "alice2@gmail.com", "Goa"),
(3, "Jay", "jay3@gmail.com", "Mumbai"),
(4, "Yash", "ys4@gmail.com", "Surat"),
(5, "Smith", "sm5@gmail.com", "Pune");

# Retrieve All customers details

Select * from tbl_Customers; 

# Update a customers address

update tbl_Customers set cust_address = "Valsad" where cust_address = "Surat";


# checking the update is done correctly 

select * from tbl_Customers; 

# Delete a customer using customer id

delete from tbl_Customers where cust_id = 5;

select * from tbl_Customers;

# Display all customers whose name is Alice

select * from tbl_Customers where cust_name = "Alice"; 


# Create table Customers 

Create table tbl_Orders (
order_id int Primary Key ,
cust_id int,
order_date date,
total_amount int,
foreign key (cust_id)
references tbl_Customers (cust_id)
);

INSERT INTO tbl_Orders
(order_id, cust_id, order_date, total_amount)
VALUES
(101, 1, '2026-09-28', 2500),
(102, 2, '2026-09-20', 1800),
(103, 3, '2026-09-10', 3200),
(104, 4, '2026-08-25', 1500),
(105, 3, '2026-08-10', 4500);

# retrieve all data made by a specific customer (cust_id = 3)
select * from tbl_Orders where cust_id = 3;

# update an order's total amount 
update tbl_Orders set total_amount = 2000 where order_id = 104;

select * from tbl_Orders; 

# delete an order using order_id
delete from tbl_Orders where order_id = 102;

# order placed in last 30 days 
select * from tbl_Orders where order_date >= curdate() - Interval 30 Day;

# retrieve highest , lowest and average amount 

select avg(total_amount) as avg_amount, max(total_amount) as highest_amount, min(total_amount) as min_amount from tbl_Orders;

# Products table 

CREATE TABLE tbl_Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(150),
    Price DECIMAL(10, 2),
    Stock INT
);

INSERT INTO tbl_Products (ProductName, Price, Stock) VALUES
('Wireless Mouse', 799.00, 50),
('Mechanical Keyboard', 2499.00, 30),
('USB-C Hub', 1299.00, 0),
('Laptop Stand', 899.00, 75),
('Webcam HD', 1899.00, 20);

# Retrieve all products sort by price in descending order

select * from tbl_Products order by Price DESC;

# Update price of specific product

update tbl_Products set Price = 999.00 where ProductName = "Laptop Stand";

# delete a products which are out of stock

delete from tbl_Products where Stock = 0;

# Retrieve products whose price is between 500 - 2000

select * from tbl_Products where Price between 500 And 2000;

# retrieve most expensive and cheapest product using max and min

select max(Price) as exp_Product , min(Price) as cheap_Product from tbl_Products;

# Order details table
create table tbl_orderdetails (
Order_det_id int primary key auto_increment,
order_id int,
ProductID int,
Quantity int,
sub_total int,
foreign key (order_id)
references tbl_Orders(order_id),
foreign key (ProductID)
references tbl_Products(ProductID));

INSERT INTO tbl_orderdetails (order_id, ProductID, Quantity, sub_total) VALUES
(101, 1, 1, 799.00),
(103, 2, 1, 2499.00),
(104, 1, 2, 1598.00),
(105, 4, 1, 600.00),
(103, 5, 1, 1899.00);

# retrieve all order details for a specific order (order_id = 103)

select * from tbl_orderdetails where order_id = 103;

# calculate total revenue generated from all orders using sum

select sum(sub_total) as total_revenue from tbl_orderdetails;

# retrieve top 3 most ordered products
select * from tbl_orderdetails order by Quantity desc lIMIT 3;

# count how many times a specific product has been sold 
select count(*) as times_sold from tbl_orderdetails group by ProductID;