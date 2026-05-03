--1. Creación de tablas
CREATE TABLE departamentos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

cREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100),
    departamento_id INTEGER,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);

INSERT INTO departamentos (nombre) VALUES 
('Recursos Humanos'),
('Tecnología'),
('Ventas'),
('Finanzas'),
('Marketing');


INSERT INTO empleados (nombre, correo, departamento_id) VALUES 
('Juan Pérez', 'juan.perez@empresa.com', 1),
('Ana García', 'ana.garcia@empresa.com', 2),
('Carlos López', 'carlos.lopez@empresa.com', 3),
('María Rodríguez', 'maria.rodriguez@empresa.com', 4),
('Luis Martínez', 'luis.martinez@empresa.com', 5);

select * from empleados;
select * from departamentos;

--2. Modificar tablas existentes
--A empleados: un campo fecha_ingreso DATE

ALTER TABLE empleados
ADD COLUMN fecha_ingreso date;

--• A departamentos: un campo ubicacion VARCHAR(100)

ALTER TABLE departamentos
ADD COLUMN ubicacion VARCHAR(100);

--• Modifica el campo correo de empleados para que no permita nulos (SET NOT NULL)
ALTER TABLE empleados
alter column correo SET NOT NULL;

--• Intenta modificar una clave primaria y documenta qué ocurre
--si existe genera error , si no existe deja hacer el cambio
UPDATE empleados SET id = 7 WHERE id = 2;


--3. Eliminar y truncar tablas
--• Escribe una sentencia para eliminar la tabla empleados (teniendo en cuenta su relación con departamentos).

DROP TABLE empleados CASCADE;

--• Crea una tabla temporal de prueba, inserta un par de registros, y luego ejecuta un TRUNCATE sobre ella.

CREATE TABLE prueba (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100)
);

INSERT INTO prueba (nombre, apellido) VALUES
('Juan', 'Pérez'),
('María', 'Carcamo'),
('Andrés', 'Silva'),
('Lucía', 'Fernández'),
('Roberto', 'Muñoz');

SELECT * FROM PRUEBA;

-- Esto borra los datos 
TRUNCATE TABLE prueba;







