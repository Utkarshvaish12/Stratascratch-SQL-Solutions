select h.nationality,count(distinct u.unit_id) as apartment_count
from airbnb_hosts as h
join airbnb_units as u on h.host_id=u.host_id
where h.age<30 and  u.unit_type='Apartment'
group by h.nationality
order by apartment_count desc;