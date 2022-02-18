-- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
select CustomerId, FirstName, LastName, Country from Customer
where Country != 'USA';
