use companydb;
select sum(Salary) As TotalSalary
from datemployees2;

select avg(Salary) As TotalSalary
from datemployees2;

select DepartmentID , MAX(HireDate) As LatestHireDate
from employees
group by DepartmentID;

