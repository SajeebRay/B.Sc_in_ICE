use master
create database university
use university
-- For checking the existing tables within the database
SELECT table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE';

create table department(
			 dept_name varchar(20),
			 building varchar (15),
			 budget numeric(8,2),
			 primary key(dept_name)
);
--inserting
insert into department(dept_name, building, budget) values('BCE','Sajeeb',87000)
insert into department values('CSE','Engineering',90000)
insert into department values('EEE','JHON',95000)
insert into department values('EECE','Watson',80000)
insert into department values('BANGLA','BANGLA',68000)
insert into department values('ENGLISH','ENGLISH',55000)
select * from department
--deleting
delete from department where dept_name ='CSE'
select * from department
--update
update department set budget = budget*1.05 where budget < 90000
select * from department

 -- For Lab-07 triggering
 create table dept_backup(
			 dept_name varchar(20),
			 building varchar (15),
			 budget numeric(8,2),
			 primary key(dept_name)
);
select * from dept_backup

create trigger saj
before delete on department
for each row
begin
insert into dept_backup values(:old.dept_name, :old.building, :old.budget)
end;