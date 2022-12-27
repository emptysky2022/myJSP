use TestDB;
drop table product;

create table product(
	code			int(5) PRIMARY KEY NOT NULL auto_increment,
	name			varchar(100),
	price			int(8),
	pictureurl		varchar(50),
	description		varchar(1000)
)

insert into product values(null, "맛있는 김밥", 3500, "url", "아침으로 간단히 먹을 수 있고 점심으로도 든든하고 저녁에 급히 식사해야 할 때 좋은 맛있고 알찬 김밥!");

select * from product

