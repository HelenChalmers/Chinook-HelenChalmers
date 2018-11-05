--Provide a query that includes the purchased track name with each invoice line item.

Select t.Name,
		il.InvoiceLineId
From InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
;