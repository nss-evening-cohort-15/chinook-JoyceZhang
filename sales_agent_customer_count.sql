--  Provide a query that shows the count of customers assigned to each sales agent.

select 
    e.EmployeeId,
    e.FirstName,
    e.LastName,
    sum(c.CustomerId) CustomerCount
from Employee e  
join Customer c on e.EmployeeId = c.SupportRepId
group by  e.EmployeeId
order by CustomerCount DESC;