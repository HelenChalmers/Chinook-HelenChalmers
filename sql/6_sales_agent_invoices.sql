--Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

Select i.InvoiceId, 
		e.FirstName || ' ' ||  e.LastName  AS "Full Name",
		e.Title
From Invoice i
Join Customer c on i.CustomerId = c.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent';