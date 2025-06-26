CREATE DATABASE college;
use college;
DROP table student;
CREATE TABLE Student(
name varchar(50),
RollNo INT PRIMARY KEY,
Marks INT NOT NULL,
grade varchar(1),
city VARCHAR(20)
);
create table subjects(
sid int primary key,
name varchar(10),
student_id INT,
FOREIGN KEY (student_id) REFERENCES Student(RollNo)
);
INSERT INTO student (RollNo,name,Marks,grade,city) VALUES (101,"anil",78,"c","pune" ),(102,"bhumika",93,"a","mumbai"),(103,"chetan",85,"B","mumbai"),(104,"dhruv",96,"a","delhi"),(105,"emanual",12,"F","delhi"),(106,"farah",82,"b","delhi");
INSERT INTO student VALUES ("Hemant",23,"96","A","Pune");
SELECT * FROM student;
SHOW databases;
SHOW TABLES;
select * from student;
select RollNo,name from student;
select distinct Marks from student;
select * from student where marks=96;
select * from student where marks>80 AND city!="delhi";
select * from student where marks>80 AND city="mumbai";

select * from student where marks>80 OR city="delhi" OR city="mumbai" AND name!="Hemant";

select * from student where marks<90 OR city="delhi" AND city="mumbai" AND name!="dhruv";
select * from student where marks BETWEEN 80 AND 85;

select * from student where city IN ("pune","delhi");
select * from student where city NOT IN ("pune","delhi");

select RollNO from student LIMIT 3;
select RollNO from student  ORDER  BY RollNo ASC;
select RollNO,Marks from student  ORDER  BY Marks DESC;
select RollNO,Marks from student  ORDER  BY Marks DESC LIMIT 5;
select min(marks) from student;
select max(marks) from student;
select count(name) from student;
select sum(Marks) from student;
select avg(Marks) from student;

select city,count(name) from student GROUP BY city ;
select city,MAX(marks) from student GROUP BY city;
select  city,name,MAX(marks) from student GROUP BY city,name,marks;
select  city,name,avg(marks) from student GROUP BY city,name,marks;

select city, avg(marks) from student group by city ORDER BY avg(marks) ;
select grade,count(RollNo) from student group by grade;

select city,count(RollNo) from student where marks>90 group by city having MAX(marks)>90;

select city from student where grade="A" group by city having MAX(marks)>90 ORDER BY city;

set SQL_SAFE_UPDATES=0;

update student
set grade="A"
where marks<90;

update student
set grade="B"
where marks<80;
update student 
set marks=marks+3
where grade="B";
delete from student
where name="emanual";