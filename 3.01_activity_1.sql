-- Keep working on the bank database.

-- 1.Get the number of clients by district, returning district name.
select A2 as district
,count(*)
from bank.client c
left join bank.district d
on c.district_id=d.A1
group by a2;
-- 2.Are there districts with no clients? Move all clients from Strakonice to a new district with district_id = 100. Check again. Hint: In case you have some doubts, you can check here how to use the update statement.
select A2 as district
,count(*) as clientCount
from bank.district d
left join bank.client c
on d.A1=c.district_id
group by a2
having clientCount is null or clientCount =0;
select * from bank.district
where a1 =100;
select *
from bank.client c
left join bank.district d
on c.district_id=d.A1
where a2='Strakonice';

UPDATE bank.client
SET district_id=100
WHERE district_id=20;

select *
from bank.client c
left join bank.district d
on c.district_id=d.A1
where a2='Strakonice';

-- 3.How would you spot clients with wrong or missing district_id?
select * from bank.client
where district_id is null or district_id in ('',' ');
-- 4.Return clients to Strakonice.
UPDATE bank.client
SET district_id=20
WHERE district_id=100;

select *
from bank.client c
left join bank.district d
on c.district_id=d.A1
where a2='Strakonice';

