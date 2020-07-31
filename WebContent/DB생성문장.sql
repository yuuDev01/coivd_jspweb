create table cmember(
   cid varchar(20) not null,
   cname varchar(20) not null,
   cpassword varchar(30) not null,
   primary key (cid)
   );

insert into cmember values('abc','김철수','1234');
create table cboard(
   mid int(11) not null auto_increment,
   cid varchar(20) not null,
   ctitle varchar(50) not null,
   cmsg varchar(200) not null,
   cdate date not null,
   primary key (mid)
   );

desc cboard