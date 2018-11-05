--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT COUNT(pt.TrackId) NumofTracks,
						p.Name
FROM PlaylistTrack pt
JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
GROUP By pt.PlaylistId
;