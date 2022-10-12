-- Week 5 - Monday Questions
-- 1. How many actors are there with the last name ‘Wahlberg’?

2

SELECT COUNT(*)
FROM actor
WHERE last_name = 'Wahlberg';



-- 2. How many payments were made between $3.99 and $5.99?

3273

SELECT amount, COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;



-- 3. What film does the store have the most of? (search in inventory)


SELECT inventory_id, film_id COUNT(film_id) 
FROM inventory
GROUP BY film_id
ORDER BY inventory_id  DESC;


-- 4. How many customers have the last name ‘William’?

0

SELECT COUNT(*)
FROM customer
WHERE last_name = 'William';



-- 5. What store employee (get the id) sold the most rentals?

2

SELECT rental_id, rental_date,inventory_id, staff_id
FROM rental
ORDER BY staff_id DESC;




-- 6. How many different district names are there?

603

SELECT  COUNT(district)
FROM address;


-- 7. What film has the most actors in it? (use film_actor table and get film_id)

508  16

SELECT film_id,COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id)DESC;





-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT last_name
FROM store_id 1
WHERE last_name like (%es);



-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)

SELECT  amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount >= 250;



-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?

PG-13 223

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY rating;