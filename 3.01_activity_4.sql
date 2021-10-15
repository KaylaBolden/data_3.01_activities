-- 1.Make a list of all the clients together with region and district, ordered by region and district.
select a3 as region
,a2 as district
,client_id 
from bank.client c
join bank.district d
on c.district_id=d.a1
order by a3,a2;
-- 2.Count how many clients do we have per region and district.
select a3 as region
,a2 as district
,count(client_id)
from bank.client c
join bank.district d
on c.district_id=d.a1
group by a3,a2
order by a3,a2;
-- 2.1 How many clients do we have per 10000 inhabitants?
select a3 as region
,a2 as district
,count(client_id)
,a4/10000 as 'inhabitants in 10000'
,count(client_id)/(a4/10000) as 'clients per 10000s'
from bank.client c
join bank.district d
on c.district_id=d.a1
group by a3,a2,a4
order by a3,a2;