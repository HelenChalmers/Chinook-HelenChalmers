--Provide a query that shows the count of customers assigned to each sales agent.

SELECT COUNT(c.CustomerId) AS 'Total Customers',
			e.FirstName || ' ' || e.LastName SalesAgentName
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
Group BY SalesAgentName
;