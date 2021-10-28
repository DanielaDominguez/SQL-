/*TABA A DEPARTAMENTOS Y TABLA B EMPLEADOS*/
/* INNER JOIN */
/* INTERSECCION ENTRE TABLAS A Y B*/
SELECT ID, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
JOIN empleados e ON d.Id = e.DepartamentoId;

/* LEFT JOIN */
/* TABLA A Y LA INTERSECCION CON LA TABLA B*/
SELECT ID, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
LEFT JOIN empleados e ON d.Id = e.DepartamentoId;

/* RIGHT JOIN */
SELECT ID, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
RIGHT JOIN empleados e ON d.Id = e.DepartamentoId;

/* FULL JOIN */
SELECT ID, empleados.Nombre, departamentos.Nombre AS "Nombre de departamento" FROM departamentos 
FULL OUTER JOIN empleados ON departamentos.Id = empleados.DepartamentoId;

/* NOMBRES DE DEPARTAMENTOS Y EL NÚMERO DE EMPLEADOS DE CADA DEPARTAMENTO */
SELECT Id, departamentos.Nombre, COUNT(departamentos.Nombre) AS "Total" FROM departamentos 
INNER JOIN empleados ON departamentos.Id = empleados.DepartamentoId 
GROUP BY departamentos.Nombre ORDER BY Total DESC;