-- -------------------------Functions in SQL ------------------------------
-- ---------Count rows in users table-----
select count(*) from users;
select count(*) from users where gender="female";

-- ---------MIN / MAX in users table------
select MIN(salary) AS min_salary , MAX(salary) AS max_salary from users;
select MIN(date_of_birth) AS min_DOB , MAX(date_of_birth) AS max_DOB from users;

-- --------SUM in users table ------
select SUM(salary) AS sum_of_salary from users;

-- --------Avarage function in users table:-------
select AVG(salary) AS avrage_salaary from users;

-- -------GROUP , LOWER , Length function in tables -------
select gender , SUM(salary) AS avg_salary from users group by gender;
select id,gender,LOWER(name),LENGTH(name) AS len_name from users; 

-- -------CONCAT() and NOW() function in query --------
select id , gender , concat("Hello " , name, " JI") AS msg_name , now() as Crnt_time from users;
select id , gender , concat("Hello " , name, " JI") AS msg_name , year(now()) as Crnt_time from users;

-- -------IF() function in query-------
select name , gender ,IF(gender='female' ,'yes' , 'NO') AS is_female from users;

------------------------------------------------------------------------------------------------------
-- -----------autocommit set to 0 means false by this we cam rollback or undo ya run querys-----
------------------------------------------------------------------------------------------------------
set autocommit = 0;

delete from users where id=3;    <--- we delete this by i want to delete id=5 so i can use rollback fro undo they will move back in our last commit
rollback;
delete from users where id=5;    <---- now we delete the id=5 row and we commit after that
commit;   
select * from users;