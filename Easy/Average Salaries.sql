with cte as
(
select department,avg(salary) as av
from employee
group by department
)

select e.department,e.first_name,e.salary,cte.av
from employee as e,cte
where cte.department=e.department;