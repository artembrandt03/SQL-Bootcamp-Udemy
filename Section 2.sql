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