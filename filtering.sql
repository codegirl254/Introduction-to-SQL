use companydb;
-- basic filtering
select * from datemployees2
where salary  >= 80000;

select DepartmentID , COUNT(*) As EmployeeCount
from employees
group by DepartmentID
having COUNT(*) >= 2;

select * from  datemployees2
where department = "HR" or  salary >=70000;

-- select employees who do not work in department 101
select * from datemployees2
where not department = "HR";

select * from employees
where departmenID in (101,102,103);

select * from employees
where salary between 60000 and 70000;

select * from datemployees2
where Name like "%e%" ;