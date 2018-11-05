-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

Select t.Name,
			ar.Name ArtistName,
		il.InvoiceLineId
From InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album a ON a.AlbumId  =t.AlbumId
JOIN Artist ar ON ar.ArtistId = a.ArtistId
;