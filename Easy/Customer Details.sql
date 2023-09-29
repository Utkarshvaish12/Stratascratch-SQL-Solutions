select c.first_name,c.last_name,c.city,o.order_details
from customers as c
left join orders as o on o.cust_id=c.id
order by c.first_name,o.order_details;