--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT  count(il.InvoiceId) NumLineItemson37
FROM InvoiceLine il
where il.InvoiceId = 37
;