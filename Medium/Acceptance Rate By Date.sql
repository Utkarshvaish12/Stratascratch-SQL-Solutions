select sent.date, 
(sum(case when got.action = 'accepted' then 1 else 0 end)
/sum(case when sent.action = 'sent' then 1 else 0 end)) as percentage_acceptance
from fb_friend_requests sent left join fb_friend_requests got
on sent.user_id_sender = got.user_id_sender and sent.user_id_receiver = got.user_id_receiver
and sent.date <= got.date and sent.action <> got.action
group by sent.date
having percentage_acceptance != 0
order by sent.date;