create table users (
id int primary key not null unique auto_increment,
first_name varchar(255) not null ,
last_name varchar(255) not null
);

create table reviews (
id int primary key not null unique auto_increment,
rating float ,
series_id int , CONSTRAINT FK_seriesID FOREIGN KEY (series_id) REFERENCES series(id),
users_id int , CONSTRAINT FK_usersID FOREIGN KEY (users_id) REFERENCES users(id)
);

create table series (
id int primary key not null unique auto_increment,
title varchar(255) not null ,
released_year YEAR,
genre varchar(50)
);