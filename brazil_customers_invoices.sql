-- Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

select 
i.CustomerId, 
i.InvoiceId, 
i.InvoiceDate,
i.BillingCountry,
c.FirstName,
c.LastName

from Invoice i

inner join Customer c 
    on i.CustomerId = c.CustomerId;