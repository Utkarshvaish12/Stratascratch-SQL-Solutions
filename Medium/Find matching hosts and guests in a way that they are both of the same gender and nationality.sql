select distinct(host_id),guest_id 
from airbnb_hosts as h
join airbnb_guests as g on h.nationality=g.nationality and h.gender=g.gender;