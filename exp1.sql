-- create database adbms;
-- use adbms;

-- CREATE TABLE students (
--     student_name VARCHAR(30),
--     student_uid VARCHAR(9) PRIMARY KEY,
--     student_spec VARCHAR(20),
--     student_phone numeric,
--     student_email VARCHAR(50)
-- );
-- insert into students values('Lakshit','20BCS6588','AIML',9876543210,'lakshit@gmail.com'); 
-- INSERT INTO students VALUES ('John', '20BCS1234', 'CS', 1234567890, 'john@example.com');
-- INSERT INTO students VALUES ('Emily', '20BCS5678', 'IT', 9876543210, 'emily@example.com');
-- INSERT INTO students VALUES ('Michael', '20BCS9012', 'ECE', 5551234567, 'michael@example.com');
-- INSERT INTO students VALUES ('Sophia', '20BCS3456', 'EEE', 7890123456, 'sophia@example.com');
-- INSERT INTO students VALUES ('William', '20BCS7890', 'ME', 9012345678, 'william@example.com');
-- INSERT INTO students VALUES ('Olivia', '20BCS2345', 'CE', 2345678901, 'olivia@example.com');
-- INSERT INTO students VALUES ('James', '20BCS6789', 'BT', 6789012345, 'james@example.com');
-- INSERT INTO students VALUES ('Emma', '20BCS0123', 'CH', 8901234567, 'emma@example.com');
-- INSERT INTO students VALUES ('Alex', '20BCS4567', 'CSE', 1234509876, 'alex@example.com');
-- select * from students;

savepoint s1;
update students set student_name="20BCS6588" where student_uid="20BCS1234";
delete from students where student_uid="20BCS4567";
select * from students;
savepoint s2;
update students set student_name="1234567890" where student_uid="20BCS9012";
delete from students where student_uid="20BCS0123";
-- select * from students; 
rollback to s1;
commit;
-- select * from students;
