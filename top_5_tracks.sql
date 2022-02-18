-- Provide a query that shows the top 5 most purchased tracks over all.

select 
    t.Name,
    sum(il.Quantity)
from Track t 
join InvoiceLine il on t.TrackId = il.TrackId
group by t.TrackId
order by sum(il.Quantity) desc
limit 5;