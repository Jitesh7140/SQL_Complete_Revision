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

-- 5. create a table for followers with the following columns:
CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);

-- 6. create a table for tags with the following columns:
CREATE TABLE tags (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
    tag_name VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

-- 7. create a table for photo_tags with the following columns:
CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
);

 select * from comments;
 select * from photos;
  select * from users;