select cond, avg(price) as cond_avg
from vehicles
group by 1
order by 2 desc;

select model, avg(odometer) as avg_reading
from vehicles
group by 1
order by 2 desc
limit 3;

with ManuCounts as (
	select transmission, manufacturer, count(*) as count_listings,
		rank() over(partition by transmission order by count(*) desc) as rank_count
	from vehicles
    where transmission is not null and manufacturer is not null
    group by transmission, manufacturer
)
select transmission, manufacturer, count_listings
from ManuCounts
where rank_count = 1;

with StateCar as (
	select state, model, max(price) as max_price,
		rank() over(partition by state order by max(price) desc) as rank_price
	from vehicles
    group by state, model
)
select state, model, max_price
from StateCar
where rank_price = 1;

with StateCarMax as (
	select state, max(price) as max_price
    from vehicles
    group by state
)
select v.state, v.model, v.price
from vehicles v
join StateCarMax sm 
	on v.state = sm.state
    and v.price = sm.max_price;


select a.model, a.yr
from vehicles a,
	vehicles b
where a.state = b.state and
	a.price != b.price
group by 1,2;

select a.model, a.yr, a.price as price_1, b.price as price_2
from vehicles a
join vehicles b
on a.model = b.model
and a.yr = b.yr
and a.state = b.state
and a.price <> b.price
and a.id <> b.id;

SELECT v.*
FROM vehicles v
JOIN (
    SELECT manufacturer, MAX(price) AS max_price
    FROM vehicles
    GROUP BY manufacturer
) max_prices
ON v.manufacturer = max_prices.manufacturer AND v.price = max_prices.max_price;

