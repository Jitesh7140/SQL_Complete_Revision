select * from users;
select * from addresses;

SELECT users.id,addresses.user_id, users.name , addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

SELECT users.id,addresses.user_id, users.name , addresses.city
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;

SELECT users.id,addresses.user_id, users.name , addresses.city
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;


