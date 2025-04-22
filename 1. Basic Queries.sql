select count(distinct id) as car_sold
from vehicles;

select manufacturer, model, (price) as avg_price
from vehicles
group by 1, 2
order by 3 desc;


select state, manufacturer, count(*) as listed_sales
from vehicles
where manufacturer is not null
group by manufacturer, state
order by state, listed_sales desc;

select state, count(*) as state_listings
from vehicles
where 1 is not null
group by 1
order by 2 desc;

select state, fuel, count(*) as fuel_count
from vehicles
where 2 is not null
group by 1, 2
order by 1, 2 desc;


