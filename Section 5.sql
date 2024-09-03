--SECTION 5
--JOIN Challenge Tasks

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