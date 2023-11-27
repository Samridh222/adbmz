--select * from students;
--create user c##lakshit IDENTIFIED BY root;
--GRANT CREATE SESSION TO c##lakshit;
--grant insert,update on students to c##lakshit;

LOCK TABLE students IN EXCLUSIVE MODE;
-- lock table students write;
update students set student_name='Lakshit Bisht' where student_uid='20BCS6588';
-- select * from students;
-- unlock tables;
-- revoke insert,update on students from 'lakshit';
-- commit;
