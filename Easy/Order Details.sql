select o.order_date,o.order_details,o.total_order_cost,c.first_name
from customers as c
join orders as o on o.cust_id=c.id
where c.first_name in ('Jill','Eva')
order by o.cust_id asc;