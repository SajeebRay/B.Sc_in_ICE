use master
create database University
use University 
-- to see all the table names within the database
SELECT table_name
FROM information_schema.tables

drop table backup_ins; drop table backup_del; drop table instructor;

create table instructor ( 
	ID int, 
	name nvarchar(50), 
	dept_name nvarchar(50),
	salary int ); 
insert into instructor values(22222,'Einstein','Physics',95000) 
insert into instructor values(12121,'We','Finance',90000) 
insert into instructor values(32343,'El Said','History',60000) 
insert into instructor values(45565,'Katz','CSE',75000)  
select * from instructor 
--create another table for update value keeping 
create table backup_ins ( 
	ID int, 
	name nvarchar(50), 
	dept_name nvarchar(50),
	salary int ) ;
--create another table for deleted value keeping 
create table backup_del ( 
	ID int, 
	name nvarchar(50), 
	dept_name nvarchar(50),
	salary int );
--creating trrigger 
create trigger ins_trigger 
on instructor 
after insert 
as begin 
print'The tigger inserted successfully' 
end; 
--update trigger 
alter trigger ins_trigger 
on instructor 
after insert 
as begin 
insert into backup_ins select ID, name, dept_name, salary from inserted
end; 

insert into instructor values(45862,'Sajeeb','CSE',75000) 
insert into instructor values(58642,'Kumar','EEE',80000) 
insert into instructor values(89652,'Ray','ICE',80000)
select * from instructor 
select * from backup_ins 
--deleted tigger 
create trigger del_trigger 
on instructor 
after delete 
as begin 
insert into backup_del select ID, name, dept_name, salary from deleted; 
end; 

DELETE FROM instructor WHERE ID = 32343; 
select * from instructor 
select * from backup_del
