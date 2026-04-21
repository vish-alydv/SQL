create table random (
ID serial Primary key,
name varchar(100) not null,
email text unique,
created_at date default now(),
age int check(age >=18)
);

insert into random (name,age)
values ('Vishal',18);

insert into random (name,age)
values ('Vish',20);
select * from random