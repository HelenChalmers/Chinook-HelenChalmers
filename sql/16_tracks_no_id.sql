--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

Select al.Title AlbumTitle,
		t.Name TrackName,
		m.Name MediaTypeTable,
		g.Name GenreTypeTable
From Track t
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
Join Genre g ON g.GenreId = t.GenreId
JOIN Album al ON al.AlbumId = t.AlbumId
;