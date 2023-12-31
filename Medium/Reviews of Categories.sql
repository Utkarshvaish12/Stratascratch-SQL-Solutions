with recursive num (n) as (
    select 1
    union all
    select n+1 from num where n<12
)
select 
    substring_index(substring_index(categories,';',n),';',-1) as category,
    sum(review_count) as review_cnt
from 
    yelp_business
    inner join num on 
    n <= char_length(categories) - char_length(replace(categories,';','')) + 1
group by category