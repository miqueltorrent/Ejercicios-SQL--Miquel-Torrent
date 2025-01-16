'''Ejercicio 1
1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria),
nombre (texto) y email (texto).'''
CREATE TABLE IF NOT EXISTS Clientes (
id int primary key,
name varchar, 
email varchar
) 


'''2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y
email="juan@example.com".'''

INSERT INTO public."Clientes" (name,email)
values ('Juan', 'juan@example.com')


''' 3. Actualizar el email del cliente con id=1 a "juan@gmail.com".'''

UPDATE public."Clientes"
set email = 'juan@gmail.com'
where id=1

'''4. Eliminar el cliente con id=1 de la tabla "Clientes".'''
DELETE FROM public."Clientes"
where id=1

'''5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria),
cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto
(texto) y cantidad (entero). '''

CREATE TABLE IF NOT EXISTS PEDIDOS (
  id int primary key, 
  producto VARCHAR, 
  cantidad int,
  cliente_id int,
  CONSTRAINT FK_cliente_id FOREIGN KEY (cliente_id) REFERENCES "Clientes"(id)
	)

'''6. Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1,
producto="Camiseta" y cantidad=2. '''

INSERT INTO pedidos (id,cliente_id, producto, cantidad)
Values (1,1, 'Camiseta', 2)

'''7. Actualizar la cantidad del pedido con id=1 a 3. '''

UPDATE public.pedidos
set cantidad = 3
where id = 1

''' 8. Eliminar el pedido con id=1 de la tabla "Pedidos". '''

DELETE FROM public.pedidos
Where id = 1

'''9. Crear una tabla llamada "Productos" con las columnas: id (entero, clave
primaria), nombre (texto) y precio (decimal). '''

CREATE TABLE IF NOT EXISTS Productos(
id int primary key, 
nombre varchar, 
precio DECIMAL
)

''' 10. Insertar varios productos en la tabla "Productos" con diferentes valores.'''
INSERT INTO public.productos(id,nombre,precio)
VALUES (1,'Miko', 3.50)

INSERT INTO public.productos(id,nombre,precio)
VALUES (2,'Tano', 8)

INSERT INTO public.productos(id,nombre,precio)
VALUES (3,'Rulo', 7.6)

'''11. Consultar todos los clientes de la tabla "Clientes". '''
SELECT * FROM public."Clientes"

''' 12. Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los
clientes correspondientes.'''

SELECT * FROM public.pedidos
LEFT JOIN public."Clientes"
ON public.pedidos.id = public."Clientes".id

''' 13. Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50.'''
  SELECT * FROM public.productos 
  WHERE precio > = 50

''' 14. Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o
igual a 5. '''
SELECT * FROM public.pedidos
WHERE cantidad >= 5

''' 15. Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra
"A". '''

SELECT * FROM public."Clientes"
WHERE name LIKE 'A%'

''' 16. Realizar una consulta que muestre el nombre del cliente y el total de pedidos
realizados por cada cliente. '''

SELECT name, cantidad FROM public."Clientes"
LEFT JOIN public.pedidos
On public.pedidos.id = public."Clientes"id


''' 17. Realizar una consulta que muestre el nombre del producto y la cantidad total de
pedidos de ese producto.''' 

SELECT cantidad, producto FROM public.pedidos
LEFT JOIN public. "Clientes"
ON public.pedidos.id = public."Clientes".id


''' 18. Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha.'''

ALTER TABLE pedidos
ADD column fecha date 

'''19. Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla
"Productos" en la columna "producto". '''

CONSTRAINT key_producto FOREIGN KEY (producto) REFERENCES pedidos (producto)

''' 20. Realizar una consulta que muestre los nombres de los clientes, los nombres de
los productos y las cantidades de los pedidos donde coincida la clave externa'''

