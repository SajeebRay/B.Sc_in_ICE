use master
create database university1
create table  instructor(
            ID varchar(20),
			dept_name varchar(20),
			salary numeric(8,2),
			primary key(ID)
);
insert into instructor values('1212','ICE','60000')
insert into instructor values('1215','CE','77000')
insert into instructor values('1219','CSE','85000')
insert into instructor values('1214','EEE','65000')
select * from instructor

select count(ID) as count_ID from instructor
select max(salary) as max_salary from instructor
select min(salary) as min_salary from instructor
select avg(salary) as avg_salary from instructor