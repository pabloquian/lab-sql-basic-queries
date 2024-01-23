-- Challenge
-- Use the sakila database to do the following tasks:

-- 1. Display all available tables in the Sakila database.
USE sakila;
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table

SELECT title
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT name
FROM language;

-- 3.3 List of first names of all employees from the staff table

SELECT first_name
FROM staff;

-- 4. Retrieve unique release years.

SELECT DISTINCT release_year
FROM film;

-- 5. Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.

SELECT COUNT(*) AS total_stores
FROM store;

-- 5.2 Determine the number of employees that the company has.

SELECT COUNT(*) AS total_employees
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(DISTINCT inventory_id) AS films_available
FROM inventory;

SELECT COUNT(DISTINCT rental_id) AS films_rented
FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(DISTINCT last_name) AS number_last_names
FROM actor;

-- Retrieve the 10 longest films.

SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT *
FROM actor
WHERE first_name = "SCARLETT";

-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;


-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT special_features
FROM film;

SELECT COUNT(*) AS films_with_Behind_Scenes_count
FROM film
WHERE special_features LIKE "%Behind the Scenes%"