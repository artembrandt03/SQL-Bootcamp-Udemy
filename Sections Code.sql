--ARTEM BRANDT
--SQL BOOTCAMP
--Practice Exercises from each section

--Section 1
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

--Section 2
--Q1
SELECT staff_id, COUNT(payment_id) FROM payment
GROUP BY staff_id;

--Q2
SELECT rating, ROUND(AVG(replacement_cost), 2) FROM film
GROUP BY rating;

--Q3
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

--Q4
SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

--Q5
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;

--Section 5
--Q1
SELECT customer.address_id, first_name || ' ' || last_name AS "Full Name", email, district
FROM customer INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';

--Q2
SELECT film.title
FROM actor INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';

--SECTION 6: ADVANCED SQL COMMANDS

--Q1
SELECT DISTINCT (TO_CHAR(payment_date, 'MONTH')) FROM Payment;

--Q2
SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;

--SECTION 10: CASE
--Q1
SELECT SUM(
       CASE rating
       WHEN 'R' THEN 1 ELSE 0
       END
       ) AS r,
       SUM(
       CASE rating
       WHEN 'PG' THEN 1 ELSE 0
       END
       ) AS pg,
       SUM(
       CASE rating
       WHEN 'PG-13' THEN 1 ELSE 0
       END
       ) AS pg13,
FROM film;