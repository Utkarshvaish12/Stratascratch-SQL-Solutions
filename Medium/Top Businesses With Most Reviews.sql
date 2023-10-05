select name,sum(review_count) as review_count
from yelp_business
group by name
order by review_count desc
limit 5;