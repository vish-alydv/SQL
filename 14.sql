create table students_1 (
 student_id Serial Primary Key,
 name Varchar(100) Not Null
);


create table marks(
mark_id Serial Primary Key,
student_id int,
subject Varchar(50),
marks int,
foreign Key (student_id) References students_1(student_id)
);

INSERT INTO students_1 (name) 
VALUES 
('Akarsh Vyas'), 
('Simran Mehta'), 
('Rohan Gupta');


INSERT INTO marks (student_id, subject, marks)
VALUES
(1, 'English', 85),
(1, 'Math', 89),
(1, 'Science', 92),

(2, 'English', 80),
(2, 'Math', 75),
(2, 'Science', 78),

(3, 'English', 72),
(3, 'Math', 70),
(3, 'Science', 74);

select * from marks



select * from students_1 s join marks m on s.student_id = m.student_id 
select s.name,m.subject,m.marks from students_1 s join marks m on s.student_id = m.student_id 
select s.name,m.subject,m.marks from students_1 s join marks m on 
s.student_id = m.student_id where name='Simran Mehta';


INSERT INTO students_1 (name) 
VALUES 
('Yadav Vishal');
select * from students_1 s Left join marks m on s.student_id = m.student_id ;
select s.name,m.subject,m.marks from students_1 s Left join marks m on s.student_id = m.student_id ;
