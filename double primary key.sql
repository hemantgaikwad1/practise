CREATE DATABASE XY;
use XY;
CREATE TABLE employee(
id INT ,
name char(50),
salary INT NOT NULL,
primary key(id,name)

);

INSERT INTO employee(id,name,salary) VALUES (1,"adam",25000),(2,"bob",30000),(3,"casey",40000);
select id,name,salary from employee;
INSERT INTO employee(id,name,salary) VALUES (1,"adi",25000),(2,"bobby",30000),(3,"cassai",40000);


create table students(
rollno INT UNIQUE, 
name varchar(50),
marks INT NOT NULL 
);
INSERT INTO students (rollno,name,marks) VALUES (101,"anil",78) ,(102,"bhumika",93),(103,"chetan",85),(104,"dhruv",96),(105,"emanual",92),(106,"farah",82);

select name,marks from students
where marks>(select avg(marks) from students);

select rollno,name from students 
where rollno%2=0;

select name,rollno from students 
where rollno IN (select rollno from students where rollno%2=0);

alter table students
add column city varchar(50);

update students
set city="delhi";

update students
set city="mumbai"
where rollno IN (101,102,103);

select * from students;

select max(marks) 
from (select * from students
where city="DELHI") as pagal;

select max(marks)
from students
where city="mumbai";