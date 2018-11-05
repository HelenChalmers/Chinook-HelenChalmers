--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total,
			c.FirstName || ' ' ||  c.LastName  AS "Customer Full Name",
			c.Country,
			e.FirstName || ' ' ||  e.LastName  AS "Emp Full Name"
From Invoice i
Join Customer c on i.CustomerId = c.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent';
