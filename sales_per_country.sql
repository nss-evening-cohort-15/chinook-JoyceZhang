-- Provide a query that shows the total sales per country.

select
    i.BillingCountry,
    sum(i.total) Total
from Invoice i   
group by i.BillingCountry
order by Total DESC;
