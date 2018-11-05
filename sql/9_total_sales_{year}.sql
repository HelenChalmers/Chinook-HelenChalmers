--What are the respective total sales for each of those years?

select Sum(i.Total) InvoiceTotal,
       strftime('%Y',i.InvoiceDate) as InvoiceYear
from Invoice i
where InvoiceYear = '2011'
or InvoiceYear = '2009'
group by InvoiceYear
;