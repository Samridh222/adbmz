create sequence hosp_id
    start with 1001
    increment by 1
    nocycle;
create table hospital(
    pat_id number primary key,
    pat_name varchar(30),
    pat_issue varchar(100),
    pat_contact number,
    pat_address varchar(100)
);

select*from hospital;
insert into hospital values(hosp_id.nextval,'Jatin','Migrane',9876543210,'Uttarakhnad');
insert into hospital values(hosp_id.nextval,'John','Fracture',9876543211,'West-Bengal');
insert into hospital values(hosp_id.nextval,'Alex','Fever',9876543212,'Uttar Pradesh');
insert into hospital values(hosp_id.nextval,'Sam','Diabetes',9876543213,'Jharkhand');
insert into hospital values(hosp_id.nextval,'Ram','Infection',9876543214,'Kerala');
insert into hospital values(hosp_id.nextval,'Sham','Heart-Attack',9876543215,'Bengalore');
insert into hospital values(hosp_id.nextval,'Sahil','Dengue',9876543216,'Delhi');
insert into hospital values(hosp_id.nextval,'Tanush','Cancer',9876543217,'Mumbai');
insert into hospital values(hosp_id.nextval,'Chirag','Asthama',9876543218,'Pune');
insert into hospital values(hosp_id.nextval,'Mohit','Covid',9876543219,'Patna');

create view hosp_view as select pat_id,pat_name,pat_issue from hospital;
create synonym patients for hospital;

select * from patients;

select * from hosp_view;

create table employee(name varchar(20),
                    emp_id number primary key,
                    emp_desig varchar2(20),
                    emp_dept  varchar2(20),
                    emp_sal number(8,2) );