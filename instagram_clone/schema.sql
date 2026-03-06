-- 1. Create a table for users with the following columns:
create table users(
id int not null primary key auto_increment unique,
username varchar(255) not null unique,
created_at timestamp default current_timestamp
);

-- 2. Create a table for photos with the following columns:

create table photos(
id int not null primary key auto_increment unique,
image_url varchar(255) not null,
user_id int not null,
created_at timestamp default current_timestamp,
foreign key (user_id) references users(id)
)

-- 3. Create a table for comments with the following columns:
create table comments(
id int not null primary key auto_increment unique,
comment_text varchar(255) not null,
user_id int not null,
photo_id int not null,
created_at timestamp default current_timestamp,
foreign key (user_id) references users(id),
foreign key (photo_id) references photos(id)
);

-- 4. create a table for likes with the following columns:
create table likes(
id int not null primary key auto_increment unique,
user_id int not null,
photo_id int not null,
created_at timestamp default current_timestamp,
foreign key (user_id) references users(id),
foreign key (photo_id) references photos(id)
primary key (user_id, photo_id)
);

insert into likes(user_id, photo_id) values (1, 1);
insert into likes(user_id, photo_id) values (1, 2);


 select * from comments;
 select * from photos;
  select * from users;