-- Provide a query that includes 
-- the purchased track name with each invoice line item.

select 
i.InvoiceLineId,
i.TrackId,
t.name TrackName
from InvoiceLine i 
join Track t 
    on i.TrackId = t.TrackId
order by InvoiceLineId;