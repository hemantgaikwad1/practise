create database dt;
use dt;
create table emp(
name varchar(50),
salary INT DEFAULT 25666
);

INSERT INTO emp (name) VALUES ("VIRENDRA");
select * from emp;