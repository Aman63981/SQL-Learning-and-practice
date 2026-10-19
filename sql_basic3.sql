use ecommerce;
create table client(id int primary key auto_increment, name varchar(100) not null, email varchar(100) not null 
unique, city varchar(50) not null, age int , status varchar(50) not null);
insert into client (name, email, city, age, status) values("Rohan", "rohan@gmail.com",
"Jaunpur", 20, "Active"), ("Rahul", "rahul@gmail.com", "Lucknow", 22, "Active"),
("Priya", "priya@gmail.com", "Delhi", 21, "Active"), ("Ankit", "ankit@gmail.com",
"Mumbai", 24, "Inactive"), ("Neha", "neha@gmail.com", "Lucknow", 20, "Active"),
("Rohit", "rohit@gmail.com", "Kanpur", 25, "Active"), ("Sneha", "sneha@gmail.com",
"Delhi", 23, "Inactive"), ("Vivek", "vivek@gmail.com", "Prayagraj", 21, "Active"),
("Pooja", "pooja@gmail.com", "Varanasi", 22, "Active"), ("Arjun", "arjun@gmail.com",
"Lucknow", 26, "Active");
select * from client;
update client set city="Lucknow" where id = 1;
select * from client;
update client set city= "Delhi", age=21 where id=1;
select * from client;
set SQL_SAFE_UPDATES = 0;
update client set status = 'Suspended' where status = 'Inactive';
select * from client;
set SQL_SAFE_UPDATES = 1;
delete from client where id = 7;
select * from client;
SET SQL_SAFE_UPDATES = 0;
delete from client where status = "Suspended";
SELECT * FROM client;
SET SQL_SAFE_UPDATES = 1;
delete from client;
delete from client where city="Delhi";
truncate table client;
select * from client;
drop table client;
select * from client;

create table products (id int primary key auto_increment, name varchar(100) not null,
category varchar(50) not null, price decimal(10, 2), stock int , status varchar(100));
insert into products(name, category, price, stock, status) values("HP Laptop",
"Electronics", 55000, 15, "Available"), ("Dell Laptop", "Electronics", 62000, 8, 
"Available"), ("Wireless Mouse", "Accessories", 800, 50, "Available"), ("Mechanical 
Keyboard", "Accessories", 2500, 25, "Available"), ("Samsung Monitor", "Electronics",
18000, 12, "Available"), ("USB Cable", "Accessories", 300, 100, "Available"),(
"Office Chair", "Furniture", 7500, 6, "Available"), ("Study Table", "Furniture", 9000,
10, "Available"), ("Webcam", "Electronics", 3500, 4, "Available");
drop table products;
select *from products;
update products set stock = stock + 20 where id = 1;
select * from products;
update products set stock = stock- 3 where id =1;
select * from products;
update products set stock=stock-3 where id=1 and stock>=3;
SET SQL_SAFE_UPDATES = 0;
update products set price = price * 1.10 where category = "Electronics";
select * from products;
update products set price = price + (price*10)/100 where category="Electronics" and price >10000;
select * from products;

create table employee(id int primary key auto_increment, name varchar(120) not null,
department varchar(100) not null, salary decimal(10,2), status varchar(100));
insert into employee (name, department, salary, status) values ('Aarav Sharma', 'IT', 75000.00, 'Active'),
('Isha Patel', 'HR', 52000.00, 'Active'),
('Rohan Verma', 'Finance', 68000.00, 'Inactive'),
('Ananya Iyer', 'Marketing', 45000.00, 'Active'),
('Kabir Singh', 'IT', 82000.00, 'Active'),
('Meera Reddy', 'HR', 49000.00, 'Suspended'),
('Aditya Joshi', 'Finance', 71000.00, 'Active'),
('Sanya Malhotra', 'Marketing', 48000.00, 'Active'),
('Vikram Malhotra', 'IT', 90000.00, 'Inactive'),
('Kriti Desai', 'Operations', 55000.00, 'Active');
select * from employee;
update employee set salary = salary+ (salary*10)/100 where department= "IT";
select * from employee;
update employee set status = "Inactive" where salary<38000 and department="HR";
select * from employee;
delete from employee where status="Inactive";
