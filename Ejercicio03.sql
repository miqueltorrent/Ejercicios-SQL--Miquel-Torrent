'''Ejercicio 3
Nivel de dificultad: Difícil'''

'''Ejercicios 3
1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "precio" (numérico).'''

1

CREATE TABLE productos (
id serial primary key, 
nombre text, 
precio int
)


'''2. Inserta al menos cinco registros en la tabla "Productos".'''

INSERT INTO public.productos(nombre, precio)
VALUES ('abrigo', 150);

INSERT INTO public.productos(nombre, precio)
VALUES ('pantalon', 79);

INSERT INTO public.productos(nombre, precio)
VALUES ('nauticas', 59)

delete from public.productos
where id= 3


'''3. Actualiza el precio de un producto en la tabla "Productos".'''

UPdatE public.productos
set precio = 69
WHERE nombre = 'nauticas'


'''4. Elimina un producto de la tabla "Productos".'''


delete from public.productos
where nombre = 'nauticas'


'''5. Realiza una consulta que muestre los nombres de los usuarios junto con los
nombres de los productos que han comprado (utiliza un INNER JOIN con la
tabla "Productos").'''
