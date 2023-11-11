use master
create database Sajeeb
use Sajeeb
create table instructor(
            ID varchar(20),
			name varchar(15) not null,
			dept_name varchar(15),
			salary numeric(8,2),
			primary key(ID)
		);

 insert into instructor(ID,name,dept_name,salary) values('10121','Rasel','ICE','86000')
 insert into instructor values('10122','MITU','CSE','80000')
 insert into instructor values('10123','Naima','EEE','70000')
 insert into instructor values('10124','Rani','EECE','90000')
 insert into instructor values('10125','Kumari','CE','95000')
 insert into instructor values('10126','Supriya','Arct','68000')

 select * from instructor
 
 create table insert_ins(
            ID varchar(20),
			name varchar(15) not null,
			dept_name varchar(15),
			salary numeric(8,2),
			primary key(ID)
		);
 create table delete_ins(
            ID varchar(20),
			name varchar(15) not null,
			dept_name varchar(15),
			salary numeric(8,2),
			primary key(ID)
		);
create trigger insert_data
on instructor
after insert 
as begin
insert into insert_ins select ID, name, dept_name, salary from inserted
end;

insert into instructor values('10150','Kaima','EEE','30000')
insert into instructor values('10160','Kani','EECE','10000')
insert into instructor values('10175','Bumari','CE','5000')
insert into instructor values('10182','Mapriya','Arct','32000')
select * from instructor
select * from insert_ins
select dept_name, salary as avg_salary 
from instructor order by salary desc
select * from instructor

create view  faculty as
select ID, name, dept_name from instructor;
select * from faculty

create index dep_inx on instructor(dept_name)
alter procedure process
as begin
select name from instructor where ID='10182'
end;
exec process

create table depart(
           dept_name varchar(20),
		   bulding varchar(20),
		   budget numeric(8,2),
		   primary key(dept_name)
);
insert into depart values('ICE','Watson','90000')
insert into depart values('physics','Science','85000')
insert into depart values('EEE','Engineering','80000')
insert into depart values('CE','Engineering','68000')
insert into depart values('EECE','Science','55000')
insert into depart values('math','Painter','95000')
select * from depart
select * from instructor

create view instra_dept as
select ID, name, d.dept_name, bulding, salary, budget
from depart as d, instructor as i
where d.dept_name = i.dept_name


select ID, name, depart.dept_name, bulding, salary, budget
from depart join instructor
on depart.dept_name = instructor.dept_name

select *
from depart left outer join instructor
on depart.dept_name = instructor.dept_name
select * 
from depart right outer join instructor 
on depart.dept_name = instructor.dept_name
select * 
from depart full outer join instructor 
on depart.dept_name = instructor.dept_name

select * from instra_dept
select dept_name, COUNT(*) 
from instra_dept group by dept_name
select COUNT(*) as total_column
from  instra_dept

select MAX(salary) as maxs, MIN(salary) as mins, AVG(salary) as avgs
from instra_dept 
select dept_name, MAX(salary) as maxs, MIN(salary) as mins, AVG(salary) as avgs
from instra_dept group by dept_name



select * from instructor
alter table instructor add course_id varchar(20)
select * from instructor
alter table instructor drop column course_id
select * from instructor

update instructor set name='kamar' where ID='10125' 
select * from instructor

