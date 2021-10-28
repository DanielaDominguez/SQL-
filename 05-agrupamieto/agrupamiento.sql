/*Count*/
/* contar cuandas peliculas son para evitar estar contando una por una */
SELECT COUNT(film_id) FROM film WHERE rental_duration = 3;

/* renombrar como quiere que sea nombrado la ejecución */
SELECT COUNT(film_id) AS "Total" FROM film WHERE rental_duration = 3;

SELECT rental_duration, (film_id) AS "Total" FROM film WHERE rental_duration = 7;

/*GROUP*/
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration;
/*Group ordenado por rental_id de foma descendiente*/
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY rental_id DESC;

/*Group ordenado por rental_id de ascendiente*/
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY Total ASC;

/*Promedio*/
/* nos va a funcionar para tipo numerico */
SELECT AVG(replacement_cost) AS "Costo Promedio" FROM film;

/*esto tenemos invertido en peliculas*/
SELECT SUM(replacement_cost) AS "Cost total de inventario" FROM film;

/*Maximo*/
/*el asterisco es para que seleccione todos*/
SELECT *, MAX(replacement_cost) FROM film;