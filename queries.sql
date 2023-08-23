USE sakila;

SELECT r.rental_date,p.amount as p_amount, i.film_id FROM rental r 
JOIN payment p
ON r.customer_id=p.customer_id
JOIN inventory i
ON r.inventory_id=i.inventory_id
WHERE month(r.rental_date)='05';

SELECT r.rental_id,i.inventory_id,i.film_id FROM rental r
JOIN inventory i 
ON r.inventory_id=i.inventory_id
GROUP BY i.film_id;


SELECT COUNT(DISTINCT film_id) FROM inventory;

