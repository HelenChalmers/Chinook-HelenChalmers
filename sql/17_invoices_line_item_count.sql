--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT  i.InvoiceId, 
			count(il.InvoiceId) NumOfLIneItems
			
FROM InvoiceLine il
JOIN Invoice i ON i.INvoiceId = Il.InvoiceId
Group by i.InvoiceId
;