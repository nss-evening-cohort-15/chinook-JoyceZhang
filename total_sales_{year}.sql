-- What are the respective total sales for each of those years?

SELECT
	strftime('%Y', i.InvoiceDate) as year,
	count (*)
FROM
	Invoice i
where 
    year = '2009'
Or 
	year = '2011' 
GROUP BY year;
	