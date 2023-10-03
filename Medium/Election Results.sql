select candidate 
from
(select candidate,round(1/(count(candidate) over(partition by voter)),3) as score
from voting_results) as a
group by candidate
order by sum(score) desc
limit 1;