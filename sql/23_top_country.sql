--Which country's customers spent the most?

SELECT i.BillingCountry Country,
			SUM(i.Total) Total
FROM Invoice i
GROUP BY Country
ORDER BY Total desc
LIMIT 1
;