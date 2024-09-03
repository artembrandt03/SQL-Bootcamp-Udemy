--Q1 (SELECT)
SELECT first_name, last_name, email FROM customer;

--Q2 (DISTINCT)
SELECT DISTINCT rating from film;

--Q3(SELECT WHERE)
SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

--Q4(SELECT WHERE)
SELECT description FROM film
WHERE title = 'Outlaw Hanky';

--Q5(SELECT WHERE)
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';

--Q6(ORDER BY & LIMIT)
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

--Q7(ORDER BY & LIMIT)
SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;

--Q8
SELECT COUNT(*) FROM film
WHERE length <= 50;

--GENERAL CHALLENGE 1

--Q1
SELECT COUNT(*) FROM payment
WHERE amount > 5.00;

--Q2
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

--Q3
SELECT COUNT(DISTINCT district) FROM address;

--Q4
SELECT DISTINCT district FROM address;

--Q5
SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 and 15;

--Q6
SELECT COUNT(title) FROM film
WHERE title LIKE '%Truman%';