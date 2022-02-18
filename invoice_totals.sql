-- Provide a query that shows the 
-- Invoice Total, Customer name, Country and Sale Agent name 
-- for all invoices and customers.

select 
    i.CustomerId, 
    i.Total,
    c.FirstName,
    c.LastName,
    c.Country,
    e.FirstName EmployeeFirstName,
    e.LastName EmployeeLastName
from Invoice i
join Customer c on c.CustomerId = i.CustomerId
join Employee e on e.EmployeeId = c.SupportRepId
group by c.CustomerId;