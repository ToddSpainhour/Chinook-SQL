
--Please provide SQL queries for each of the questions below.




-- 1. Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

SELECT CustomerId, FirstName, LastName, Country
FROM Customer
WHERE Country != 'USA'




-- 2. Provide a query only showing the Customers from Brazil.

SELECT *
FROM Customer
WHERE Country = 'Brazil'




-- 3. Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Invoice
INNER JOIN Customer
ON Customer.CustomerId = Invoice.CustomerId
WHERE BillingCountry = 'Brazil'




-- 4. Provide a query showing only the Employees who are Sales Agents

SELECT * 
FROM Employee
WHERE Title = 'Sales Support Agent'




-- 5. Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT DISTINCT BillingCountry
FROM Invoice




-- 6. Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT Employee.EmployeeId, Employee.FirstName, Employee.LastName,
		'' as ' ',
		Invoice.*
FROM Invoice
JOIN Customer
ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Employee.EmployeeId




-- 7. Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.




-- 8. How many Invoices were there in 2009 and 2011?

SELECT COUNT(*)
FROM Invoice
WHERE Invoice.InvoiceDate BETWEEN '2009' AND '2011/12/31'




-- 9. What are the respective total sales for each of those years?  

-- WIP --
SELECT *
FROM Invoice
WHERE Invoice.InvoiceDate BETWEEN '1/1/2009' AND '12/31/2011'
