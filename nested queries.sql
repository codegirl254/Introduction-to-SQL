use companydb;

alter table employees
add salary int;

-- disable safe update mode for the current session
set SQL_SAFE_UPDATES = 0;

-- random values for salary column
update employees
set salary = round(rand() * (80000 - 40000) + 40000 ,2);

-- Re-enable safe update mode for the current session
set SQL_SAFE_UPDATES = 1;

select *,
(select count(*)
from employees
where employees.DepartmentID = Departments.DepartmentID) As EmployeeCount
from departments;

select * 
from Employees
where Salary = (select MAX(SALARY)
from employees As e 
where e.departmentID = employees.DepartmentID);

-- subquery
select departmentID , AverageSalary
from (select departmentID ,AVG(Salary) As AverageSalary 
from employees
group by departmentID) As AvgSalaries
where AverageSalary > 50000;