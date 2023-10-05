select
a.entry_date,
count(a.account_id) as premium_paid_accounts,
count(b.account_id) as premium_paid_accounts_after_7
from premium_accounts_by_day a
left join premium_accounts_by_day b
on a.account_id = b.account_id
and datediff (b.entry_date, a.entry_date) = 7
and b.final_price > 0
where a.final_price > 0
group by a.entry_date
order by a.entry_date
limit 7