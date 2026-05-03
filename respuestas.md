1. Creación de tablas
Explica con comentarios:
    • Qué es una clave primaria y por qué se usa en id
    es la llave principal para identificar, se usa el id ya que este no se repite como debe ser en la lave primaria no nula y unica.

    • Qué significa NOT NULL
    significa que ese campo no puede estar vacio debe llevar informacion

    • Qué relación existe entre empleados y departamentos
    La relacion son las llaves foranes que seria sus llaves principales, la llve principal de departamentos (id) pasa a empleados como FOREIGN KEY con (departamento_id)


    • Comenta la diferencia entre DELETE y TRUNCATE.

    La diferencia es que el delete elimina especificamente lo que se le indica y el truncate elimina todo el contenido de la tabla.

2. Modificar tablas existentes

    • Intenta modificar una clave primaria y documenta qué ocurre

    Al quere cambiar el id por otro que ya existe generar error de duplicidad
    ERROR:  duplicate key value violates unique constraint "empleados_pkey"
    Key (id)=(1) already exists. 

    SQL state: 23505
    Detail: Key (id)=(1) already exists.


    si se hace cambio por un id que no exista aun si deja realizar el cambio, pero solo en esa si esa relacionado a otra tabla en la otra no cambia este.
