use inmobiliaria_BBDD;

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
(1, 1, 2, 3, 190000, 'inmueble1', 120, 2, 'obra nueva', 'primera', 1, 1, '2021-03-14', 0,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras. La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(2, 1, 2, 2, 130000, 'inmueble2', 100, 2, 'a reformar', 'tercera', 0, 1, '2020-05-20', 0,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(3, 2, 1, 3, 135000, 'inmueble3', 102, 1, 'obra nueva', 'primera', 1, 1, '2022-03-11', 1,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(4, 4, 1, 4, 180000, 'inmueble4', 130, 2, 'obra nueva', 'segunda', 1, 1, '2022-04-01', 1,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(5, 3, 3, 3, 183000, 'inmueble5', 128, 2, 'obra nueva', 'cuarto', 0, 1, '2022-02-14', 1,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(6, 5, 4, 4, 167000, 'inmueble6', 144, 2, 'obra nueva', 'primera', 1, 1, '2022-02-21', 1,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(7, 6, 2, 3, 290000, 'inmueble1', 220, 2, 'obra nueva', 'primera', 1, 1, '2021-03-14', 0,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(8, 5, 2, 2, 180000, 'inmueble2', 180, 2, 'a reformar', 'tercera', 0, 1, '2020-05-20', 0,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(9, 2, 1, 3, 190000, 'inmueble3', 122, 1, 'obra nueva', 'primera', 1, 1, '2022-03-11', 1,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(10, 4, 1, 4, 130000, 'inmueble4', 140, 2, 'buen estado', 'segunda', 1, 1, '2022-04-01', 1,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(11, 3, 3, 3, 103000, 'inmueble5', 128, 2, 'a reformar', 'cuarto', 0, 1, '2022-02-14', 0,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!'),
(12, 6, 4, 4, 137000, 'inmueble6', 144, 2, 'obra nueva', 'primera', 1, 1, '2022-02-21', 1,'Bienvenidos a un estupendo ático con espectaculares vistas sobre el mar, situado en la exclusiva zona de Playa de los Alemanes en Zahara de los Atunes.La propiedad está diseñada en 3 plantas. La planta inferior tiene un garaje de 50 m² con espacio para 2 coches y trastero. Desde aquí podemos acceder a la planta superior donde se encuentra la propiedad a través de ascensor o escaleras.La planta superior consta de 3 dormitorios, 3 baños, oficina, gran salón y grandes ventanales desde los pisos hasta los techos, y una cocina abierta. La terraza es de 150 m² y tiene un jacuzzi.¡Contácta con nosotros para una visita!');
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

-- Insertamos favoritos para el usuario cc
INSERT INTO FAVORITOS VALUES
(1,1,"LauraSAlba"),
(2,4,"LauraSAlba"),
(3,5,"LauraSAlba");