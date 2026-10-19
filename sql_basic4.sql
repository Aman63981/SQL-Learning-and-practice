use ecommerce;
create table client(id int primary key auto_increment, name varchar(100) not null, email varchar(100) not null unique,
phone decimal, city varchar(100));
insert into client(name, email, phone, city) values('John Doe', 'john.doe@example.com', '1234567890', 'New York'),
('Jane Smith', 'jane.smith@example.com', NULL, 'Los Angeles'),
('Bob Johnson', 'bob.j@example.com', '5553210199', 'Chicago'),
('Alice Brown', 'alice.b@example.com', NULL, 'Houston'),
('Charlie Green', 'charlie.g@example.com', '4448760234', 'Phoenix'),
('Emily Davis', 'emily.d@example.com', '3339800456', 'Philadelphia'),
('Frank Miller', 'frank.m@example.com', NULL, 'San Antonio'),
('Grace Wilson', 'grace.w@example.com', '2222740789', 'San Diego'),
('Henry Jones', 'henry.j@example.com', NULL, 'Dallas'),
('Ivy Taylor', 'ivy.t@example.com', '1110890912', 'San Jose');
select * from client;
select * from client where phone is null;
set SQL_SAFE_UPDATES = 1;
select id, name from client where phone = null;
SELECT id, name from client where phone is not null;
select id, name, email from client where phone is null;
select * from client where city is not null;

create table material(id int primary key auto_increment, product varchar(100), price 
decimal, discount decimal);
insert into material (product, price, discount) values("Laptop", 50000, 5000),
("Mouse", 800, 100),("Keyboard", 2500, null);
select * from material;
select price-discount as cost from material;

select name, coalesce(phone, "Not Provided") as phone from client;
select *, coalesce(phone, "Not Avaiable") from client;
select id, name, email, coalesce(phone, "Not Available") as phone from client;
select product, price, coalesce(discount, 0) as discount from material;
select product, price, coalesce(discount, 0) as discount , price- coalesce(discount,0)
as final_price from material;
select id, name, coalesce(phone, email) as contact from client;
select * from client;
