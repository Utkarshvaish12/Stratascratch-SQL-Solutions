select t.worker_title as best_paid_title 
from worker as w
join title as t on t.worker_ref_id=w.worker_id
where w.salary=(select max(salary) from worker)
order by 1 asc;