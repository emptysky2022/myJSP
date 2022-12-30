drop table if exists employees;

create table employees(
id		varchar(10) not null primary key,
pass	varchar(10) not null,
name	varchar(24),
lev 	char(1) default 'A',
enter 	date,
gender	char(1) default '1',
phone	varchar(30)
);

insert into employees values("gildong", "asdf", "홍길동", "A", "2022-12-29", "1", "010-1234-5678");
delete from employees where gender="남";

select * from employees;

select * from employees where id="InfoKim";

update employees set id="special" where id="InfoKim";