select type,
sum(case
when processed=1 then 1 else 0
end)/count(*) as processed_rate
from facebook_complaints
group by type;