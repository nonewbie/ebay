delimiter $ #// end with char '$'

drop database if exists shop;
create database shop DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci;
use shop;

create table user(
userid bigint not null auto_increment,
username varchar(16) not null,
passwd varchar(16) not null,
grade int,
birth varchar(8),
sex char(4),
email varchar(20),# not null
phone varchar(11),
registertime datetime default null,
visittime datetime,
primary key(userid)
)ENGINE=InnoDB DEFAULT CHARSET=gbk;
$
