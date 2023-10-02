select first_name,order_date,sum(total_order_cost) as total_cost
from customers as c
join orders as o on c.id=o.cust_id
where order_date between '2019-02-01' and '2019-05-01'
group by c.id,order_date
order by total_cost desc
limit 1;