select department,first_name as employee_name,salary 
from employee
where (department,salary) in (
select e.department,max(e.salary) from employee as e
group by e.department);