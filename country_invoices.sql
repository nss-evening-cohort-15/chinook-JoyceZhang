-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

select i.BillingCountry, count(*)
from Invoice i 
group by i.BillingCountry;