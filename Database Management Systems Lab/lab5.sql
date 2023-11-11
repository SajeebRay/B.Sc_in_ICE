use master

create table depart(
           dept_name varchar(20),
		   bulding varchar(20),
		   budget numeric(8,2),
		   primary key(dept_name)
);
insert into depart values('ICE','Watson','90000')
insert into depart values('CSE','Science','85000')
insert into depart values('EEE','Engineering','80000')
insert into depart values('CE','Engineering','68000')
insert into depart values('EECE','Science','55000')
insert into depart values('Arct','Painter','95000')
select * from depart
create table instruct(
               ID varchar(20),
			   name varchar(15) not null,
			   dept_name varchar(15),
			   salary numeric(8,2),
			   primary key(ID));
insert into instruct(ID,name,dept_name,salary) values('1012','Rajib','ICE','1000')
insert into instruct values('3245','Sajeeb','CSE','1001')
insert into instruct values('3865','raiyan','BANGLA','1002')
insert into instruct values('4755','RIYA','ENGLISH','1003')
insert into instruct values('6789','MAHI','PHYSICS','10004')
select * from instruct
select * from depart
---cartesian product
select ID,name,bulding,salary from instruct,depart where depart.dept_name = instruct.dept_name;
----join product
select ID,name,budget from instruct join depart on depart.dept_name = instruct.dept_name;
---left outer join
select * from instruct left outer join depart on depart.dept_name=instruct.dept_name;
---right outer join
select * from instruct right outer join depart on depart.dept_name=instruct.dept_name;
---full outer join
select * from instruct full outer join depart on depart.dept_name=instruct.dept_name;