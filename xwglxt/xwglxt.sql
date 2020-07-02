create database xwglxt
go

use xwglxt
go
--用户信息表
create table yhxx
(
yhzh nvarchar(20) not null primary key, --用户账号
yhxm nvarchar(20) not null,--用户姓名
yhmm nvarchar(50) not null, --用户密码
yhlb nvarchar(50) default '普通用户' not null --用户类别
)
go



insert into yhxx(yhzh,yhxm,yhmm,yhlb) values('admin','admin','admin','管理员')
go

create table xwxx
(
id int identity(1,1) not null primary key,--主键
bt nvarchar(100) not null,--标题
fl nvarchar(100) not null,--分类
nr text not null, --新闻内容
zz nvarchar(20) not null --作者
)
go