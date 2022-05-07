
-- Insertamos ciudades en la BBDD
INSERT INTO CIUDADES VALUES 
(1, 'Málaga'),
(2, 'Sevilla'),
(3, 'Córdoba'),
(4, 'Cádiz'),
(5, 'Granada'),
(6, 'Jerez de la frontera');

-- Insertamos tipos de inmuebles en la BBDD
INSERT INTO TIPOS VALUES
(1, 'Piso'),
(2, 'Chalet'),
(3, 'Local Comercial'),
(4, 'Oficina');

-- Insertamos inmuebles en la BBDD
INSERT INTO INMUEBLES VALUES
(1, 1, 1, 3, 190000, 'inmueble1', 120, 2, 'obra nueva', 'primera', 1, 1, '2021-03-14', 0),
(2, 1, 1, 2, 130000, 'inmueble2', 100, 2, 'a reformar', 'tercera', 0, 1, '2020-05-20', 0),
(3, 2, 1, 3, 135000, 'inmueble3', 102, 1, 'obra nueva', 'primera', 1, 1, '2022-03-11', 1),
(4, 4, 1, 4, 180000, 'inmueble4', 130, 2, 'obra nueva', 'segunda', 1, 1, '2022-04-01', 1),
(5, 3, 1, 3, 183000, 'inmueble5', 128, 2, 'obra nueva', 'cuarto', 0, 1, '2022-02-14', 1),
(6, 6, 1, 4, 167000, 'inmueble6', 144, 2, 'obra nueva', 'primera', 1, 1, '2022-02-21', 1);

-- Insertamos perfiles en la BBDD
INSERT INTO PERFILES VALUES
(1, 'ROL_USER'),
(2, 'ROL_ADMON');

-- Insertamos usuarios en la BBDD
INSERT INTO USUARIOS VALUES
('MiguelALozano', '{noop}1234', 1, 'miguelalozano@gmail.com', 'Miguel Ángel', 'Lozano', 'c/La Rioja, 3, 4ºA', '2020-01-01'),
('RaúlRSanz', '{noop}1234', 1, 'raulrruiz@gmail.com', 'Raúl', 'Ruiz', 'c/Marte, 12, 1ºD', '2020-01-01'),
('LauraSAlba', '{noop}1234', 1, 'laurasalba@hotmail.com', 'Laura', 'Sanz', 'c/Vitruvio, 20, 2ºC', '2021-07-21');

-- Insertamos usuarios_perfiles en la BBDD
INSERT INTO USUARIO_PERFILES VALUES
('MiguelALozano', 2),
('RaúlRSanz', 2),
('LauraSAlba', 1);

-- Insertamos favoritos en un usuario
INSERT INTO FAVORITOS VALUES
(1,1,"LauraSAlba"),
(2,4,"LauraSAlba"),
(3,5,"LauraSAlba");