create database shoppingCart;
use shoppingCart;
create table users (id int primary key auto_increment, name varchar(100) not null, email varchar(100) 
unique not null, age int , created_at timestamp default current_timestamp);
insert into users (name, email, age) values ("Rohan", "rohan@gmail.com", 20),("Sohan", "sohan@gmail.com"
, 22),("Ram", "ram@gmail.com", 18), ("Rahul", "rahul@gmail.com", 24),("Anjali", "anjali@gmail.com"
, 20);
select * from users;
update users set age= 21 where id = 5;
select * from users;
update users set age=25, name = "Rahul Sharma" where email = "rahul@gmail.com";
select * from users;
delete from users where id = 3;
select * from users;
insert into users (name, email, age) values ("Mohan", "mohan@gmail.com", null);
select * from users where age is null;
select * from users where age=null;
select * from users where age is not null;
insert into users (name, email) values("Ashish", "ashish@gmail.com");
select * from users where age is null;
select * from users where age = null;
insert into users (name, email, age) values("Anchal", "anchal@gmail.com",24),("Sonu",
"sonu@gmail.com", 27);
select * from users;
update users set age = 20;
delete from users;

create table product(id int primary key auto_increment,
name varchar(150) not null, description varchar(500)
 ,price decimal(10,2) not null, stock int default 0, created_at timestamp default
 current_timestamp);
 insert into product (name, description, price, stock) values
 ('Laptop', 'HP 15 inch laptop', 55000.00, 10),('Mouse', 'Wireless mouse', 800.00, 50),(
 'Keyboard', 'Mechanical keyboard', 2500.00, 30);
 select * from product;
 select * from product where name like '%lap%';
 select * from product where description like '%wire%';
 select * from product where price between 500 and 5000;
 select * from product where price > 10000;
 select * from product where stock < 10;
 select * from product order by price asc;
 select * from product order by price desc;
 select * from product order by price desc limit 1 offset 1;
 select * from product where price > 1000 and stock >10;
 select * from product where price > 1000 and stock < 10;
 select * from product where (price > 50000 or stock >10) and name != 'Mouse';
 insert into product (name,description, price, stock) values
 ('Mouse', "wired mouse", 400, 100);
 select name from product;
 select distinct name from product;
 select count(*) from product;
 delete from product where id = 5;
 select sum(price) as total from product;
 select avg(price) as average from product;
 select min(price) from product;
 select max(price) from product;
 