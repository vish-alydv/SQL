Create table students(
student_id Serial Primary key,
name varchar(100),
age bigint
);

insert into students(name,age) values ('aman',22),('sun',101);

alter table students add column email varchar(50);
select * from students

alter table students drop column email ;
alter table students add column email varchar(50) Default 'not provided';


alter table students  Rename column name to full_name;


alter table students alter column age type smallint;
alter table students alter column age set Default 18;
alter table students alter column age drop Default ;




alter table students add constraint age_check check (age>= 0);
alter table students drop constraint age_check ;


alter table students rename to school_students;