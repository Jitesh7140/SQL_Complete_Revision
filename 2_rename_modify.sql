-- Rename to a table use RENAME TABLE (table_name) to (Change_name)
rename table users to Sql_users;

-- Add new column in user table we use:
alter table sql_users add column is_active boolean default true;

--  delete/drop any column from table use:
alter table sql_users drop gender;

-- Modify any column type like:
alter table sql_users  modify email varchar(255);

-- modify the column position in table using:
alter table sql_users modify column email varchar(255) after id;

-- Change the column position any place to first use:
alter table sql_users modify column is_active boolean first;

 