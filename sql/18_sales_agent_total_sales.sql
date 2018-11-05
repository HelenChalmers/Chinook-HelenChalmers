--Provide a query that shows total sales made by each sales agent.
SELECT Count(i.InvoiceId) NumOfSales,
			e.FirstName || ' ' || e.LastName AS 'Sales Agent Name'

FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY "Sales Agent Name"
; 

