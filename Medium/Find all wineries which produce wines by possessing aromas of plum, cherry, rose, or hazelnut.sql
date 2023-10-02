select distinct winery
from winemag_p1
where 
    description like '%plum %'
    OR description like '%plum,%'
    OR description like '%plum.%'
    OR description like '%cherry%'
    OR description like '% rose%'
    OR description like '%hazelnut%'
order by winery ASC;

/*
select winery
from winemag_p1
where lower(description) REGEXP '(plum|rose|cherry|hazelnut)([^a-z])';
*/