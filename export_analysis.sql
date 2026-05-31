select column_name
from information_schema.columns
where table_name='export';
select count(*) as total_records
from export;
select sum(trade_value) as total_trade_value
from export;
select sum(net_weight) as total_net_weight
from export;
select year,
sum(trade_value)as total_trade_value
from export
group by year
order by year;
select commodity,
sum(trade_value) as total_trade_value
from export
group by commodity
order by total_trade_value desc;
select year,
commodity,
sum(trade_value) as total_trade_value
from export
group by year, commodity
order by year, commodity;
select partner,
sum(trade_value) as total_trade_value
from export
where commodity='Rice'
group by partner
order by total_trade_value desc
limit 11;
select partner,
sum(trade_value) as total_trade_value
from export
where commodity='Soyabean'
group by partner
order by total_trade_value desc
limit 11;

select commodity,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg
from export
group by commodity;

select partner,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg
from export
where commodity='Soyabean'
group by partner
order by value_per_kg desc 
limit 11;
select commodity,
partner,
sum(trade_value) as total_trade_value
from export
group by commodity, partner
order by commodity, total_trade_value desc;
select year,
commodity,
sum(trade_value) as total_trade_value
from export
group by year, commodity
order by year, commodity;
select year, commodity,
round(sum(trade_value),2) as total_trade_value
from export
group by year, commodity
order by  total_trade_value desc;
select commodity,
sum(trade_value) as total_trade_value
from export
group by commodity
having sum(trade_value)>100000000;
select commodity,
sum(trade_value) as total_trade_value
from export
group by commodity
having sum(trade_value)>100000000
order by total_trade_value;
select commodity, year,
round(avg(trade_value),2) as avg_trade_value
from export
group by commodity,year;
select commodity, year,
round(avg(trade_value),2) as avg_trade_value
from export
where commodity='Rice'
group by commodity,year
order by avg_trade_value desc;
select commodity, year,
round(avg(trade_value),2) as avg_trade_value
from export
where commodity='Soyabean'
group by commodity,year
order by avg_trade_value desc;
select year,commodity,
sum(trade_value) as total_trade_value,
case
when sum(trade_value)>1000000000 then 'high export'
else'low export'
end as category
from export
group by commodity,year
order by year desc;
select year,commodity,
sum(trade_value) as total_trade_value,
case
when sum(trade_value)>1000000000 then 'high export'
else'low export'
end as category
from export
where commodity='Rice'
group by commodity,year
order by year desc;
select year,commodity,
sum(trade_value) as total_trade_value,
case
when sum(trade_value)>1000000000 then 'high export'
else'low export'
end as category
from export
where commodity='Soyabean'
group by commodity,year
order by year desc;
select year,commodity,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg,
case
when round(sum(trade_value)/sum(net_weight),2)>0.5 then 'high demand'
else'less demand'
end as category
from export
where commodity='Soyabean'
group by commodity,year
order by value_per_kg desc;
select year,commodity,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg,
case
when round(sum(trade_value)/sum(net_weight),2)>0.5 then 'high demand'
else'less demand'
end as category
from export
where commodity='Rice'
group by commodity,year
order by value_per_kg desc;
select commodity,
count(*) as total_records
from export
group by commodity;
select partner,
round(sum(trade_value)*100.0/(select sum(trade_value)from export),
2) as market_share_pct
from export
group by partner
order by market_share_pct desc;
select commodity,
count(*) as total_records
from export
group by commodity;
select partner,commodity,
round(sum(trade_value)*100.0/(select sum(trade_value)from export),
2) as market_share_pct
from export
where commodity='Rice'
group by partner,commodity
order by market_share_pct desc;
select partner,commodity,
round(sum(trade_value)*100.0/(select sum(trade_value)from export),
2) as market_share_pct
from export
where commodity='Soyabean'
group by partner,commodity
order by market_share_pct desc;
select *
from export
where trade_value>
(select avg(trade_value)
from export);
select year,partner,commodity,
sum(trade_value) as total_trade_value
from export
group by year,partner,commodity
order by year,partner,commodity,total_trade_value desc;
select year,partner,commodity,
sum(trade_value) as total_trade_value
from export
where commodity='Rice'
group by year,partner,commodity
order by year,total_trade_value desc;
select year,partner,commodity,
sum(trade_value) as total_trade_value
from export
where commodity='Soyabean'
group by year,partner,commodity
order by year,total_trade_value desc;
select year,commodity,partner,
round(sum(trade_value)*100.0/(select sum(trade_value)from export),
2
) as contribution_pct
from export
group by year,commodity,partner
order by contribution_pct desc;
select year,commodity,partner,
round(sum(trade_value)*100.0/(select sum(trade_value)from export),
2
) as contribution_pct
from export
where commodity='Rice'
group by year,commodity,partner
order by contribution_pct desc;
select year,commodity,partner,
round(sum(trade_value)*100.0/(select sum(trade_value)from export),
2
) as contribution_pct
from export
where commodity='Soyabean'
group by year,commodity,partner
order by contribution_pct desc;
select partner, commodity,
sum(trade_value) as total_trade_value,
rank() over(order by sum(trade_value)desc) as partner_rnk
from export
group by commodity, partner;
select partner, commodity,
sum(trade_value) as total_trade_value,
rank() over(order by sum(trade_value)desc) as partner_rnk
from export
where commodity='Rice'
group by commodity, partner;
select partner, commodity,
sum(trade_value) as total_trade_value,
rank() over(order by sum(trade_value)desc) as partner_rnk
from export
where commodity='Soyabean'
group by commodity, partner;
select partner, commodity,
sum(net_weight) as total_net_weight,
rank() over(order by sum(net_weight)desc) as partner_rnk
from export
where commodity='Soyabean'
group by commodity, partner;
select partner, commodity,
sum(net_weight) as total_net_weight,
rank() over(order by sum(net_weight)desc) as partner_rnk
from export
where commodity='Rice'
group by commodity, partner;
select partner, commodity,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg,
rank() over(order by round (sum(trade_value)/sum(net_weight),2)desc)as partner_rnk
from export
where commodity='Rice'
group by commodity, partner;
select partner, commodity,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg,
rank() over(order by round (sum(trade_value)/sum(net_weight),2)desc)as partner_rnk
from export
where commodity='Soyabean'
group by commodity, partner;
select year, commodity,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg,
rank() over(order by round(sum(trade_value)/sum(net_weight),2) desc) as year_rank
from export
where commodity='Rice'
group by year, commodity
order by year_rank desc;
select year, commodity,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg,
rank() over(order by round(sum(trade_value)/sum(net_weight),2) desc) as year_rank
from export
where commodity='Soyabean'
group by year, commodity
order by year_rank desc;
with yearly_trade as (select year,partner,commodity,
sum(trade_value) as total_trade_value
from export
group by year,partner,commodity)
select *
from yearly_trade
order by year desc;
with partner_analysis as (select partner,year,commodity,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg
from export
group by partner,year,commodity)
select partner,year,commodity,
rank() over(order by value_per_kg desc) as partner_rank
from partner_analysis;
with partner_analysis as (select partner,year,commodity,
round(sum(trade_value)/sum(net_weight),2) as value_per_kg
from export
where commodity='Rice'
group by partner,year,commodity)
select partner,year,commodity,
rank() over(order by value_per_kg desc) as partner_rank
from partner_analysis;



