insert into user(username,passwd,grade,birth,sex,email,phone,registertime) values
('马化腾','admin','1','1974-08-08','女','10000@qq.com','','20150808'),
('root','admin','1','1974-08-08','女','10000@qq.com','','20150808');$


insert into user(username,passwd,grade,birth,sex,email,phone,registertime) values
('李彦宏','admin','1','1974-08-08','男','10000@qq.com','','20150808');$

select userid,username,passwd,grade,birth,sex,email,phone,registertime from user;$

update user set userpasswd='jjfly' where username='马化腾';$

select userid,username,registertime,visittime from user;$

