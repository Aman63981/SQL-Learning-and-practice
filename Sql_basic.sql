create database ecommerce;
use ecommerce;
create table users(id int , name varchar(100), email varchar(100), age int );
insert into users(id, name, email, age) values(1, "Mohan", "mohan@gmail.com", 20),
(2, "Rahul", "rahul@gmail.com", 21), (3, "Priya", "priya@gmail.com", 22), (4, 
"Ravi", "ravi@gmail.com", 23), (5, "Neha", "neha@gmail.com", 20);
select *from users;
select name, email from users;
select * from users where age=20;
select * from users where age > 20;
select * from users where age < 22;
select * from users where age >=21;
select * from users where age != 20;
select * from users where age =20 and name ="Mohan";
select * from users where age = 20 or age=21;
select * from users where age = 20 or age = 21 or age = 22;
select * from users where age in (20, 21, 22);
select * from users where age between 20 and 22;
select * from users;
select * from users where name like 'P%';
select * from users where name like "R%";
select * from users where name like "%a";
select * from users where name like "%a%";
select * from users order by age asc;
select * from users order by age desc;
select * from users limit 2;
select * from users order by age desc limit 2;
select * from users order by (select age from users order by age desc limit 2) asc limit 1;
select * from users order by age desc limit 1 offset 1;
