select sum(case when c.address is not null then 1 else 0 end)/
count(case when c.address is not null then 1 else 0 end)*100 as  percent_shipable
from orders as o
join customers as c on o.cust_id=c.id;