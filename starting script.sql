CREATE DATABASE firstdatabase;
USE firstdatabase;
CREATE TABLE new_data(
id INT auto_increment primary key,
name varchar(100) NOT null,
email varchar(100) not null,
gender enum('Male' , 'Female' , 'Other' )

)
select * from new_data;