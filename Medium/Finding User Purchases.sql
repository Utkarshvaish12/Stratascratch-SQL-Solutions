select distinct a1.user_id
from amazon_transactions as a1 join amazon_transactions as a2
on 
    a1.user_id = a2.user_id 
    and 
    a1.id <> a2.id
    and
    a1.created_at >= a2.created_at
where datediff(a1.created_at, a2.created_at) <= 7
order by 1 asc;