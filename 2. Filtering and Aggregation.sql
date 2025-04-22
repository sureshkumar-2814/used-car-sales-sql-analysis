select yr, count(*) as listings_after_2015
from vehicles
group by 1;

select avg(odometer) as odo_avg
from vehicles
where price < 10000 and odometer is not null;

select state, avg(price) AS avg_price
from vehicles
group by state
having avg(price) < (select avg(price) from vehicles)
order by avg_price desc;

select count(*)
from vehicles
where cond is null;

select (count(*) * 100.0 / (select count(*) from vehicles)) as percentage_clean
from vehicles
where title_status = 'clean';



