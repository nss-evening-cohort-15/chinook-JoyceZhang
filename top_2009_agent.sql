-- Which sales agent made the most in sales in 2009?

-- Hint: Use the MAX function on a subquery.

select joined.FirstName, joined.LastName, Max(Total) 
from 
(select
    e.EmployeeId,
    e.FirstName,
    e.LastName,
    sum(i.Total) Total
    
from Employee e 

join Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on i.CustomerId = c.CustomerId

where strftime('%Y', i.InvoiceDate) is '2009'
group by e.EmployeeId
order by sum(i.Total) Desc
) as joined;



