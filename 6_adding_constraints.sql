-- ------------------- Adding constrant in table columns using:--------
alter table users add constraint unique_email unique (email);

-- -------------------Adding check constrant in column using:--------
alter table users add constraint chk_dob check (date_of_birth > '1920-01-01');


select * from users;