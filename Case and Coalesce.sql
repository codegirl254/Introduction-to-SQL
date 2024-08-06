use companydb;
-- simple case
select 
employeeID,
firstname,
lastname,
departmentID,
case DepartmentID 
when 101 then "HR"
when 102 then "IT"
when 103 then "Finance"
else "other"
end as DepartmentName 
from employees;


-- Search case
select 
employeeID,
firstname,
lastname,
salary,
case 
when salary <50000 then "Low"
when salary between 50000 and 70000 then "Medium"
else "High"
end as salary_level 
from employees;

-- Conditional Aggregation
select
departmentID,
	sum(case
	when departmentID = 101 then salary
	else 0
	end) as spent_101,
	sum(case
	when departmentID = 102 then salary
	else 0
	end) as spent_102
from employees
group by departmentid;