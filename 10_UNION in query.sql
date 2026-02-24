CREATE TABLE admin_users (
id INT PRIMARY KEY,
 name VARCHAR(100),
 email VARCHAR(100),
 gender ENUM('Male', 'Female', 'Other'),
 date_of_birth DATE,
 salary INT
);

INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

select * from users;
select * from admin_users;

select name , email from users
UNION              <--    its not allow duplicate entry
select name , email from admin_users

select name , email from users
UNION ALL		    <---   its allow duplicate entry
select name , email from admin_users


select name , email , 'USER' AS role from users
UNION 					 
select name , email , 'ADMIN' AS role from admin_users




