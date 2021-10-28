/* Subconsultas */
/* Filtrar peliculas que sean de una categoria */
/*nos permite agregar diferentes valores*/
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 5); 

SELECT * FROM film WHERE film_id = 1 OR film_id = 2 OR film_id = 3;
SELECT * FROM film WHERE film_id IN (100,7,33);
SELECT film_id FROM film_category WHERE category_id = 5;

/* Between*/
SELECT * FROM film WHERE film_id BETWEEN 100 AND 128;

/*Filtrar peliculas por actores*/
SELECT title, film_id FROM film WHERE film_id IN(SELECT film_id FROM film_actor WHERE actor_id=1);