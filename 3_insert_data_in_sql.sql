-- --------insert first data using -------------:
insert into sql_users values(
true , 1 , 'jitesh@jitesh.com' , 'Jitesh Kumar'
);

-- -----------insert multiple data at same time -----------
insert into sql_users (id , is_active , email , name) values
(3,true,'sandeep@sandeep.com','sandeep'),
(4,false,'gulshan@gulshan.com','gulshan');
(5,false,'udmi@udmi.com','Udmi'),

select * from sql_users;







 

