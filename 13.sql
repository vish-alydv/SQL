create table students (
 student_id Serial Primary Key,
 name Varchar(100) Not Null
);


insert into students (name)
Values
('Akarsh Vyas'),
('Simran Sharma'),
('Rohan Gupta');

select * from students;


create table student_profile(
student_id Int Primary Key,
address Text,
age int,
phone Varchar(15)
);

Insert into student_profile(student_id,address,age,phone)
Values
(1,'Kg India',23,56789),
(2,'Dlf India',20,56787),
(3,'Igi India',18,566543);


select * from student_profile;


Alter Table student_profile
Add Constraint fk_student_id
Foreign Key (student_id)
References students(student_id);



Select
s.student_id,
s.name,
sp.address,
sp.age,
sp.phone
From students s
Join student_profile sp
On  s.student_id = sp.student_id;