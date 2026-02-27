create table emp(
id int not null primary key auto_increment,
first_name varchar(100) not null ,
middle_name varchar(100) not null ,
last_name varchar(100) ,
age int not null ,
current_status varchar(100) not null default 'employed'
);

