select a.post_date, sum(a.spam)/count(a.spam)*100 as spam_share
from 
(select *,
case when post_keywords like '%spam%' then 1 
else 0 end as spam
from facebook_posts) as a 
join facebook_post_views b on a.post_id=b.post_id 
group by a.post_date;