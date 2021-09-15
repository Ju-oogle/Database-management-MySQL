DROP DATABASE IF EXISTS superheroes;
CREATE DATABASE superheroes CHARACTER SET utf8mb4;
USE superheroes;

CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personajes (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
  );

INSERT INTO creador (id_creador, nombre)
VALUES (1, 'Marvel');
INSERT INTO creador (id_creador, nombre)
VALUES (2, 'DC Comics');

select * FROM creador;

INSERT INTO personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador)
VALUES (10, 'Barry Allen', 'Flash', 160, '10 mil', 120, 158, 1946, 'cientifico forense', 2); 
INSERT INTO personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador)
VALUES (11, 'Bruce Wayne', 'Batman', 170, '500', 32, 47, 1939, 'hombre de negocios', 2);
INSERT INTO personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador)
VALUES (12, 'Clarck Kent', 'Superman', 165, 'infinita', 120, 182, 1948, 'reportero', 2);

UPDATE personajes
set aparicion = 1938 
WHERE id_personaje = 12;

select * FROM personajes;

DELETE from personajes
WHERE id_personaje = 10;

DROP database superheroes;