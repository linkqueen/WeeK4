--W4D1 Homework--
-- 1.How many actors are there with the last name ‘Wahlberg’? 

SELECT last_name, COUNT(actor_id)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name
ORDER BY COUNT(actor_id);

-- 2 actors have last name 'Wahlberg'

--2.How many payments were made between $3.99 and $5.99? 
SELECT DISTINCT amount, COUNT(payment_id)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99
GROUP BY  amount
ORDER BY COUNT(payment_id);
-- 5,602 payments


--3.What film does the store have 
--the most of? (search in inventory) 

SELECT DISTINCT film_id, COUNT(inventory_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(inventory_id);
-- there are 8 counts of inventory for several films

--4.How many customers have the last name ‘William’? 
SELECT last_name, COUNT(customer_id)
FROM customer
GROUP BY last_name
HAVING last_name = 'William'
ORDER BY COUNT(customer_id);
-- 0 customers have the last name 'William'

--5.What store employee (get the id) sold the most rentals? 
SELECT staff_id , COUNT(rental_id)
FROM rental 
GROUP BY staff_id
ORDER BY COUNT(rental_id);
-- staff_id: 1

--6.How many different district names are there? 
SELECT  DISTINCT COUNT(district)
FROM address
ORDER BY COUNT(district);
-- 603 different district names

-- 7.What film has the most actors in it? (use film_actor table and get film_id) 
SELECT film_id, COUNT(actor_id)
FROM film_actor
WHERE actor_id >= 1
GROUP BY film_id
ORDER BY COUNT(actor_id);
-- film_id: 508


--8.From store_id 1,how many customers have a last name ending with ‘es’? (use customer table) 
SELECT DISTINCT store_id, COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id
ORDER BY COUNT(last_name);
-- store_id 1 has 13 customers with last name ending 'es'



-- 9.How many payment amounts (4.99, 5.99, etc.)
-- had a number of rentals above 250 
--for customers with ids between 380 and 430? 
--(use group by and having > 250) 

SELECT amount, COUNT(rental_id)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(rental_id) > 250 
ORDER BY COUNT(rental_id);
-- 3 payment amounts had over 250 in number of rentals for that price

-- 10.Within the film table, --
--how many rating categories are there? 
--And what rating has the most movies total?

SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating
ORDER BY COUNT(film_id);
--5 rating categories
--PG-13 has the most movies total




