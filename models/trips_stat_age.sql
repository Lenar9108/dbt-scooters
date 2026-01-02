with date_age_cte_count as (
    select
    extract('year' from (t.started_at)) - extract('year' from (u.birth_date)) as age
    ,date(t.started_at) as date
    ,count(*) as cnt
    from scooters_raw.trips as t
    join scooters_raw.users as u on t.id=u.id
    group by age, date
)
select 
age
,avg(cnt) as avg_trips
from date_age_cte_count
group by age
order by age desc