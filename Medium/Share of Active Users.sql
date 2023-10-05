select count(case when status='open' then 1 else null end)/count(*) as
active_users_share
from fb_active_users
where country='USA' ;