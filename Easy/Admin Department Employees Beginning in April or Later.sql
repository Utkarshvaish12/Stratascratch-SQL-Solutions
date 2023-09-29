select count(*) 
from worker
where month(joining_date)>=4 and department='Admin';