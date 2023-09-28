select e.location, avg(s.popularity) as avg_popularity
from facebook_hack_survey as s
join facebook_employees as e on e.id=s.employee_id
group by e.location;