-- How many Invoices were there in 2009 and 2011?

select count(*)
from Invoice
where InvoiceDate like '2009%' or '2011%';