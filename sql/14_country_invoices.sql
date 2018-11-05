--Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT COUNT(i.BillingCountry) NumofInvoices,
			i.BillingCountry
From Invoice i
Group By i.BillingCountry
;