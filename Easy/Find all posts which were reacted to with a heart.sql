select distinct f.* 
from facebook_posts as f
join facebook_reactions as r on f.post_id=r.post_id
where r.reaction='heart';