select YEAR(inspection_date) as year,
sum(case
when violation_id is null then 0 else 1
end)
as n_inspections
from sf_restaurant_health_violations
where business_name='Roxanne Cafe'
group by year
order by year asc;