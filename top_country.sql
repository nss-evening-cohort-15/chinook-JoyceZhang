-- Which country's customers spent the most?

select 
    c.Country country,
    sum(i.Total) total
from Customer c 
join Invoice i on c.CustomerId = i.Customerid
group by country
order by total desc
limit 1;