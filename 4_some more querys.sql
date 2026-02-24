-- -----------WHERE use in SQL by this:----------------
-- select * from users where gender='female';
-- ------------or we also write this line like that:----------
-- select * from users where gender!='Male';

-- ------------less than / grater than in query---------
-- select name,email,salary from users where salary>70000;

-- ------------Between in query--------
-- select * from users where salary between 60000 and 80000;

-- -----------multiple selection in query ------
-- select * from users where gender in ('male' , 'female');

-- ----------- AND use in  query:-----------
-- select * from users where gender = 'female' AND salary > 60000;


-- ----------- OR use in  query:-----------
-- select * from users where gender = 'female' OR salary > 60000;

-- ----------ascending and descending order in result:---------
-- select * from users where gender = 'male' OR salary > 80000 order by date_of_birth ASC;
-- select * from users where gender = 'male' OR salary > 80000 order by date_of_birth DESC;

-- --------- LIMIT in query----------
-- select * from users where gender = 'male' OR salary > 40000 LIMIT 5;







