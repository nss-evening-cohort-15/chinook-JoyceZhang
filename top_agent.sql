-- Which sales agent made the most in sales over all?

select 
    e.FirstName,
    e.LastName,
    c.SupportRepId,
    sum(i.Total) Total
from Employee e 
join Customer c on e.EmployeeId = c.SupportRepId
join Invoice i on i.CustomerId = c.CustomerId
group by e.EmployeeId
order by Total DESC
limit 1;