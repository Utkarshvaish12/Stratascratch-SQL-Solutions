select product_id as ID, tr as Total_revenue
from(
select *,sum(cost_in_dollars*units_sold) as tr
from online_orders
where date between '01-01-2022' and '30-06-2022'
group by product_id) as s
order by tr desc
limit 5;