select username
from
(select concat(uf.user_firstname,' ',uf.user_lastname) as username, 
dense_rank()over(order by count(distinct video_id) desc) tot_vid_rn
from user_flags uf 
join flag_review fr on uf.flag_id=fr.flag_id
where lower(reviewed_outcome) = 'approved'
group by username) a
where tot_vid_rn = 1;