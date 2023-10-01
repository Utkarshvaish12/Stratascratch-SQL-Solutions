select id_guest,
DENSE_RANK() OVER (ORDER BY sum(n_messages) desc) AS ranks,sum(n_messages) as messages
from airbnb_contacts
group by id_guest;