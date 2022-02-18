-- Provide a query that shows the most purchased track of 2013.

select
    t.TrackId,
    t.Name,
    sum(il.Quantity),
    i.InvoiceDate 
from Track T  
JOIN InvoiceLine il on t.TrackId = il.TrackId
join Invoice i on i.InvoiceId = il.InvoiceId
where strftime("%Y", i.InvoiceDate) = "2013"
group by t.TrackId
order by sum(il.Quantity) desc;

