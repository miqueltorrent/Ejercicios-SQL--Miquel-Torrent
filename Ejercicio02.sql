'''Ejercicio 2'''
'''Nivel de dificultad: Fácil'''

''' 1. Crea una base de datos llamada "MiBaseDeDatos".''' 
CREATE DATABASE MiBaseDeDatos

''' 2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "edad" (entero).''' 
CREATE TABLE IF NOT EXISTS Usuarios (
  id SERIAL primary key, 
  name varchar, 
  edad int
)

'''3. Inserta dos registros en la tabla "Usuarios".'''
INSERT INTO public.usuarios (name, edad)
VALUES ( 'miquelin', 24);
INSERT INTO public.usuarios (id, name, edad)
values ( 'marmol', 25);
INSERT INTO public.usuarios (id, name, edad)
values ( 'ramon', 26)

'''4. Actualiza la edad de un usuario en la tabla "Usuarios".'''

UPDATE public.usuarios
set edad = 27
where name = 'ramon'

''' 5. Elimina un usuario de la tabla "Usuarios".''' 

Delete from public.usuarios
where id = 2

''' Nivel de dificultad: Moderado ''' 

''' 1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto). ''' 

CREATE TABLE IF NOT EXISTS TABLE Ciudades (
  id SERIAL primary key, 
  name varchar, 
  pais varchar
)

''' 2. Inserta al menos tres registros en la tabla "Ciudades".''' 

INSERT INTO public.Ciudades (name, pais)
VALUES ('londres', 'UK');
INSERT INTO public.Ciudades (id, name, pais)
values ('paris', 'FRANCE');
INSERT INTO public.Ciudades (id, name, pais)
values ('barcelona', 'ESPAÑA')

''' 3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"
de la tabla "Ciudades".''' 

ALTER TABLE usuarios
ADD COLUMN key_id INT;

ALTER TABLE
ADD CONSTRAINT FK_KEY_ID INT
FOREIGN KEY (key_id) REFERENCES ciudades(id) 



''' 4. Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN). ''' 



SELECT 
    Usuarios.nombre AS usuario,
    Ciudades.nombre AS ciudad,
    Ciudades.pais AS pais
FROM Usuarios
LEFT JOIN Ciudades ON Usuarios.ciudad_id = Ciudades.id; 


''' 5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN).''' 

SELECT 
    Usuarios.nombre AS usuario,
    Ciudades.nombre AS ciudad,
    Ciudades.pais AS pais
FROM Usuarios
INNER JOIN Ciudades ON Usuarios.ciudad_id = Ciudades.id;
