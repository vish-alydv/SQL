create table students (
student_id int Primary Key,
student_name Varchar(100)
);


Insert Into students (student_id,student_name) Values
(1,'Akarsh'),
(2,'Simran'),
(3,'Rohan');


create Table courses(
course_id int Primary Key,
course_name Varchar(100)
);

insert into courses (course_id,course_name) Values
(101,'Python'),
(102,'Sql'),
(103,'Power  BI');



create table student_courses(
student_id Int,
course_id Int,
Primary Key(student_id,course_id),
Foreign Key (student_id) References students(student_id),
Foreign Key (course_id) References courses(course_id)
);



Insert Into student_courses (student_id,course_id) Values
(1,101),
(1,102),
(2,101),
(2,103),
(3,102);



select * from courses;



select 
s.student_name,
c.course_name
From 
student_courses sc
Join students s on sc.student_id = s.student_id
Join courses c on sc.course_id = c.course_id;





select 
c.course_name
From 
student_courses sc
Join students s on sc.student_id = s.student_id
Join courses c on sc.course_id = c.course_id
where 
s.student_name = 'Simran';
