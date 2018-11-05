--Which sales agent made the most in sales in 2009?
--Hint: Use the MAX function on a subquery.

Select e.FirstName || ' ' ||  e.LastName FullName,
		sum(i.Total) Profit
from Employee e 
JOIN Customer c ON e.EmployeeID = c.SupportRepId
JOIN Invoice i on i.CustomerId = c.CustomerId
WHERE  i.InvoiceDate like '%2009%'
group by FullName
order by Profit DESC
;

