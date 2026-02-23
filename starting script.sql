CREATE DATABASE firstdatabase;
USE firstdatabase;
CREATE TABLE new_data(
id INT auto_increment primary key,
name varchar(100) NOT null,
email varchar(100) not null,
<<<<<<< HEAD
gender enum('Male' , 'Female' , 'Other' ) 
);
=======
gender enum('Male' , 'Female' , 'Other' )

)
>>>>>>> 3dec7ca80d19442dc38bc81696dee99bb4a0b65f
select * from new_data;