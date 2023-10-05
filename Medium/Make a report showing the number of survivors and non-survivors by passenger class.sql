select survived,
count(case 
when pclass=1 then survived else null
end) as first_class,
count(case 
when pclass=2 then survived else null
end) as second_class,
count(case 
when pclass=3 then survived else null
end) as third_class
from titanic
group by survived;