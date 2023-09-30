select u.language,
count(distinct case 
when e.device in ('macbook pro','iphone 5s','ipad air') then e.user_id else NULL end) as n_apple_user,
count(distinct e.user_id) as n_total_users 
from playbook_events as e
join playbook_users as u on u.user_id=e.user_id
group by u.language
order by n_total_users desc;