

-- Q1: who is the senior most employee based on job title? --

select * from employee
order by levels desc
limit 1

-- Q2: which countries have the most Invoices? --
select * from invoice

select count(*) as c , billing_country
from invoice
group by billing_country
order by c desc

-- Q3: What are top 3 values of total invoice --

select * from invoice

select total from invoice
order by total desc
limit 3

-- Q4: Which city has best customers? we would like to throw a promotional music fetival 
   -- in the city we made the most money.write a query that returns one city that has
   -- the highest sum of invoice totals. return both the city name & sum of all invoice totals.

select * from invoice

select sum(total) as invoice_total ,billing_city
from invoice
group by billing_city
order by invoice_total desc

-- Q5: Who is the best customer?The customer who has spent the most money
   -- will be declared the best customer.write a query that returns the money 
   -- who has spent the most money.

select * from customer

SELECT customer.customer_id, first_name, last_name, SUM(total) AS total_spending
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total_spending DESC
LIMIT 1;


                        -- Module 2 --

                                                                                 

