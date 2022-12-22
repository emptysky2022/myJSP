create database TestDB;
use TestDB;

create table member(
name varchar(30),
userid varchar(30),
pwd varchar(20),
email varchar(30),
phone char(13),
admin boolean);

insert into member values("ㅁㄴㅇㄹ", "asdf", "1234", "asdf.asdf.com", "010-1234-5678", false);

select * from member;