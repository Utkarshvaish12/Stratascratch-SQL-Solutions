with u_sf_bonus as (
select worker_ref_id,sum(bonus) as bonus
from sf_bonus 
group by worker_ref_id
)

select employee_title,sex,avg(salary+bonus) as avg_compensation
from sf_employee as e
join u_sf_bonus as b on e.id=b.worker_ref_id and bonus is not null
group by employee_title,sex;