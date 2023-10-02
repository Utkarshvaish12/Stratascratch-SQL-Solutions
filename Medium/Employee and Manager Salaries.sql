select first_name as employee_name,salary as employee_salary 
from employee
where salary>(
select e.salary from employee as e where e.id=manager_id );