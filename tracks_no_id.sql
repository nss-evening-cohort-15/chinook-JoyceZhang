-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.

select 
    t.Name,
    a.Title AlbumTitle,
    mt.Name MediaTypeName,
    g.Name GenreName
from Track t
join Album a on t.AlbumId = a.AlbumId
join MediaType mt on t.MediaTypeId = mt.MediaTypeId
join Genre g on t.GenreId = g.GenreId
group by t.Name;