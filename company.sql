CREATE DATABASE XYZ;
use XYZ;
CREATE TABLE employee(
id INT ,
name char(50),
salary INT NOT NULL,
primary key(id,name)

);

INSERT INTO employee(id,name,salary) VALUES (1,"adam",25000),(2,"bob",30000),(3,"casey",40000);
select id,name,salary from employee;
INSERT INTO employee(id,name,salary) VALUES (1,"adi",25000),(2,"bobby",30000),(3,"cassai",40000);


create table city(
id INT UNIQUE,
age INT,
city varchar(50),
constraint ck check (age>=18 AND city="PUNE")
);

INSERT INTO city VALUES(2,18,"PUNE");
create table newTab(
age INT CHECK(age<18)
);
INSERT INTO newTab VALUES (17);