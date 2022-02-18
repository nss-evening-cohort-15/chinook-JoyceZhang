
-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

select
il.InvoiceLineId,
t.TrackId,
t.name TrackName,
t.AlbumId,
al.ArtistId,
ar.Name ArtistName
from Track t 
join Album al on t.AlbumId = al.AlbumId
join Artist ar on al.ArtistId = ar.ArtistId
join InvoiceLine il on t.TrackId = il.TrackId
order by InvoiceLineId;