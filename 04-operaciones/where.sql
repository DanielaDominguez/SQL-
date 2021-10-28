/* Seleccionar por id */
SELECT * FROM actor WHERE actor_id = 135;

/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/
/*
OPERADORES LOGICOS:
O       OR
Y       AND
NO      NOT
*/
/*
COMODINES:
Cualquier cantidad de caracteres: %
Un caracter desconocido: _
*/



/* Seleccionar por id mayor a un numero */
SELECT * FROM actor WHERE actor_id > 63;

/* Seleccionar campos */
SELECT last_name, first_name, actor_id FROM actor WHERE actor_id > 63;

/* Seleccionar elementos con id pares */
SELECT * FROM actor WHERE actor_id % 2 = 0;

/* ------------operadores logicos--------------------- */
/* operador AND */
SELECT * FROM actor WHERE first_name = 'CHRIS' AND actor_id > 50;

/*Comodines*/
SELECT * FROM  actor WHERE first_name LIKE "%u%";

SELECT * FROM  actor WHERE first_name LIKE "%an%" OR last_name LIKE "e%";