create database Revision;
use Revision;

create table students(
studentID int primary key,
FirstName varchar(256),
LastName varchar(255),
admissionsDate date
);

alter table students add courseID varchar (256) ;
select * from students;
alter table students drop column coursecode;

select FirstName from students where FirstName like "e%";

insert into students (studentID,FirstName,LastName,courseID)
values (01,"Atieno","Mary","C02"),
(02,"Ann","Nikita","A03"),
(03,"Judith","Linda","B09");