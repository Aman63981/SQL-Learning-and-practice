create database join_practice;
use join_practice;
create table employee (emp_id int primary key, emp_name varchar(100),
dept_id int, salary decimal);
insert into employee(emp_id, emp_name, dept_id, salary) values
(1001, "Rahul Sharma", 10, 62000), (1002, "Priya Singh", 20, 48000),
(1003, "Amit Kumar", 10, 85000),  (1004, "Neha Verma", 30, 70000),
(1005, "Arjun Patel", 10, 65000);
select * from employee;

create table department (dept_id int primary key, dept_name varchar(100),
location varchar(100));
insert into department (dept_id, dept_name, location) values
(10, "IT", "Bengaluru"), (20, "HR", "Mumbai"), 
(30, "Finance", "Pune"), (40, "Sales", "Delhi");
select * from department;
use join_practice;
select employee.emp_name, department.dept_name from employee inner join department
on employee.dept_id=department.dept_id;

use join_practice;
select emp_name, dept_name from employee inner join department on 
employee.dept_id=department.dept_id;
select d.dept_id,e.emp_name, d.dept_name from employee as e inner join department as d
on e.dept_id = d.dept_id;
select e.emp_name, d.dept_name from employee e inner join department d
on e.dept_id = d.dept_id;
select e.emp_name,e.salary, d.dept_name from employee e inner join department d
on e.dept_id=d.dept_id where d.dept_name="IT";
select e.emp_name, e.salary, d.dept_name from employee as e inner join 
department as d on e.dept_id = d.dept_id where d.dept_name="IT" and e.salary>60000 
order by e.salary desc;
insert into employee(emp_id, emp_name, dept_id, salary) values 
(1006, "Mohan Singh", 50, 70000);
select * from employee;
select * from department;
select e.emp_name, dept_name from employee e inner join department d on
e.dept_id = d.dept_id;
select e.emp_name, d.dept_name from employee as e left join department as d
on e.dept_id = d.dept_id;
select e.emp_name, d.dept_name from employee as e left join department as d
on e.dept_id = d.dept_id;
select e.emp_name, d.dept_name from employee e left join department d on
e.dept_id = d.dept_id where d.dept_id is null;
select d.dept_name, count(e.emp_id) as emp_count from department d left join 
employee as e on d.dept_id=e.dept_id group by d.dept_name;
select d.dept_name, count(e.emp_id) as emp_count from department as d left
join employee as e on d.dept_id = e.dept_id group  by d.dept_id having 
emp_count>=3;
select d.dept_name, avg(e.salary) as avg_salary from employee as e left
join department as d on e.dept_id = d.dept_id group by d.dept_id;
select d.dept_name, avg(e.salary) as avg_salary from department as d 
left join employee as e on d.dept_id = e.dept_id group by d.dept_id;
select d.dept_name, avg(e.salary) as avg_salary from department as d
left join employee as e on d.dept_id= e.dept_id group by d.dept_id having avg_salary>70000;

select d.dept_id, e.emp_name from employee as e inner join department as d
on e.dept_id = d.dept_id where d.dep_name("IT", "Finance") and experience>=3
and salary>=60000;
select e.emp_name, d.dept_name from employee e , department d where e.dept_id = d.dept_id;

select e.emp_name, d.dept_name from employee e left join department d
on e.dept_id=d.dept_id;
select e.emp_name, d.dept_name, e.salary from employee e inner join department d
on e.dept_id=d.dept_id where d.dept_name= "IT";
select d.dept_name, count(e.emp_id) as total_emp from department as d left join
employee e on d.dept_id = e.dept_id group by d.dept_name;
select d.dept_name, count(e.emp_id) as total_emp from department as d left join 
employee as e on d.dept_id=e.dept_id group by d.dept_name having total_emp>=3;
select d.dept_name, avg(e.salary) as avg_salary from department d left join
employee e on d.dept_id=e.dept_id group by d.dept_name;
select d.dept_name, avg(e.salary) as avg_salary from department d left join
employee e on d.dept_id=e.dept_id group by d.dept_name having avg_salary>65000;
select e.emp_name, d.dept_name, d.dept_id from employee as e left join department as d 
on e.dept_id=d.dept_id where d.dept_id is null;
select d.dept_name, avg(e.salary) as avg_salary from department as d left join
employee as e on d.dept_id = e.dept_id group by d.dept_name order by avg_salary desc limit 1;