-- Provide a query that shows total sales made by each sales agent.

select 
    e.EmployeeId,
    e.FirstName,
    e.LastName,
    count(*)
from Employee e
join Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on c.CustomerId = i.CustomerId
group by e.EmployeeId;