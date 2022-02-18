-- Provide a query that shows the most purchased Media Type.

select 
    t.TrackId,
    mt.Name MediaType,
    sum(il.Quantity)
from Track t 
join MediaType mt on t.MediaTypeId = mt.MediaTypeId
join InvoiceLine il on il.TrackId = t.TrackId
group by t.TrackId
order by sum(il.Quantity) desc
;
