select department,count(*) 
from worker
where month(joining_date)>=4
group by department;