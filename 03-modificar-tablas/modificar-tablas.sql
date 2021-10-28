/* Renombrarla */
ALTER TABLE dir RENAME TO direccion;

/* Cambiar el nombre de uan columna */
ALTER TABLE usuarios CHANGE direccion dir VARCHAR(50);

/* Agregar columnas */
ALTER TABLE usuarios ADD edad INT NOT NULL;

/* Borrar columna */
ALTER TABLE usuarios DROP edad;