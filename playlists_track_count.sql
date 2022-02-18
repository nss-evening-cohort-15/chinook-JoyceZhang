-- Provide a query that shows the total number of tracks in each playlist.
--  The Playlist name should be include on the resulant table.

select 
    p.Name,
    sum(t.TrackId)
from Playlist p 
join PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
join Track t on t.TrackId = pt.TrackId
group by p.Name;