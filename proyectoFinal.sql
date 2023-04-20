DROP TABLE IF EXISTS usuarios CASCADE;
DROP TABLE IF EXISTS intercambio CASCADE;
DROP TABLE IF EXISTS oferta CASCADE;
DROP TABLE IF EXISTS categoria CASCADE;
DROP TABLE IF EXISTS coches CASCADE;
DROP TABLE IF EXISTS motos CASCADE;
DROP TABLE IF EXISTS motor_y_accesorios CASCADE;
DROP TABLE IF EXISTS moda_y_accesorios CASCADE;
DROP TABLE IF EXISTS inmobiliaria CASCADE;
DROP TABLE IF EXISTS tv_audio_y_foto CASCADE;
DROP TABLE IF EXISTS moviles_y_telefonia CASCADE;
DROP TABLE IF EXISTS deporte_y_ocio CASCADE;
DROP TABLE IF EXISTS bicicletas CASCADE;
DROP TABLE IF EXISTS consolas_y_videojuegos CASCADE;
DROP TABLE IF EXISTS hogar_y_jardin CASCADE;
DROP TABLE IF EXISTS electrodomesticos CASCADE;
DROP TABLE IF EXISTS cine_libros_y_musica CASCADE;
DROP TABLE IF EXISTS niños_y_bebes CASCADE;
DROP TABLE IF EXISTS coleccionismo CASCADE;
DROP TABLE IF EXISTS construccion_y_reformas CASCADE;
DROP TABLE IF EXISTS industria_y_agricultura CASCADE;
DROP TABLE IF EXISTS servivios CASCADE;

CREATE TABLE usuarios (
    id SERIAL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    fecha_alta DATE NOT NULL,
    isAdmin BOOLEAN NOT NULL,
	
	CONSTRAINT pk_usuario PRIMARY KEY (id)
);

INSERT INTO usuarios (username, password, nombre, apellidos, email, fecha_alta, isAdmin)
VALUES
('ana.garcia', '98^s#skd2#4', 'Ana', 'García Rodríguez', 'ana.garcia@gmail.com', '2022-01-01', true),
('pablo.lopez', '23%h*lfksDf', 'Pablo', 'López González', 'pablo.lopez@gmail.com', '2022-01-02', true),
('laura.sanchez', '8&fK3LsaLd$', 'Laura', 'Sánchez Torres', 'laura.sanchez@gmail.com', '2022-01-03', true),
('daniel.martinez', 't3#K!sLp2j$', 'Daniel', 'Martínez Fernández', 'daniel.martinez@gmail.com', '2022-01-04', true),
('carmen.fernandez', 'sLd1$#fKs8&', 'Carmen', 'Fernández García', 'carmen.fernandez@gmail.com', '2022-01-05', true),
('alberto.rodriguez', '7fKd3#sK9^f', 'Alberto', 'Rodríguez Alonso', 'alberto.rodriguez@gmail.com', '2022-01-06', true),
('sofia.perez', '6#sLdFk3$1%', 'Sofía', 'Pérez Sánchez', 'sofia.perez@gmail.com', '2022-01-07', true),
('david.gonzalez', '2!ks%3LfKd$', 'David', 'González López', 'david.gonzalez@gmail.com', '2022-01-08', true),
('maria.ruiz', '4&Lfks#d8$1', 'María', 'Ruiz García', 'maria.ruiz@gmail.com', '2022-01-09', true),
('juan.gomez', 'k3#fLs!d9^j', 'Juan', 'Gómez Martínez', 'juan.gomez@gmail.com', '2022-01-10', true),
('javier.fernandez', 'sLd1$#fKs8&', 'Javier', 'Fernández López', 'javier.fernandez@gmail.com', '2022-01-11', true),
('ana.gonzalez', '4^dKsL#9%f1', 'Ana', 'González García', 'ana.gonzalez@gmail.com', '2022-01-12', false),
('carlos.martin', '7fKd3#sK9^f', 'Carlos', 'Martín Sánchez', 'carlos.martin@gmail.com', '2022-01-13', false),
('lucia.santos', '6#sLdFk3$1%', 'Lucía', 'Santos Ruiz', 'lucia.santos@gmail.com', '2022-01-14', false),
('maria94', 'aBcDeFgHiJkL', 'María', 'García García', 'maria94@gmail.com', '2022-12-01', false),
('juan_perez', 'kMnOpQrStUvW', 'Juan', 'Pérez Sánchez', 'juan_perez@hotmail.com', '2022-12-02', false),
('ana26', 'xYzAbCdEfGhI', 'Ana', 'Fernández Gutiérrez', 'ana26@yahoo.es', '2022-12-03', false),
('luis_gomez', 'nMoPqRsTuVwX', 'Luis', 'Gómez Rodríguez', 'luis_gomez@gmail.com', '2022-12-04', false),
('laura82', 'jKlMnOpQrStU', 'Laura', 'Martínez Sánchez', 'laura82@hotmail.com', '2022-12-05', false),
('carlos96', 'vWxYzAbCdEfG', 'Carlos', 'Romero Fernández', 'carlos96@yahoo.es', '2022-12-06', false),
('lucia73', 'hIjKlMnOpQrS', 'Lucía', 'González Álvarez', 'lucia73@gmail.com', '2022-12-07', false),
('alberto81', 'tUvWxYzAbCdE', 'Alberto', 'Jiménez Sánchez', 'alberto81@hotmail.com', '2022-12-08', false),
('sara88', 'fGhIjKlMnOpQ', 'Sara', 'Pérez Gutiérrez', 'sara88@yahoo.es', '2022-12-09', false),
('david79', 'rStUvWxYzAbCd', 'David', 'Ruiz Fernández', 'david79@gmail.com', '2022-12-10', false),
('carlosrodriguez', 'hNl%gG$Pp0K9', 'Carlos', 'Rodríguez García', 'carlosrodriguez@gmail.com', '2022-01-01', false),
('lauramartinez', 'c@K5!d#Gj8&', 'Laura', 'Martínez Pérez', 'lauramartinez@hotmail.com', '2022-01-01', false),
('davidlopez', 'm7Lx$B9*Qz#', 'David', 'López Torres', 'davidlopez@yahoo.es', '2022-01-01', false),
('paulagonzalez', 't#Z6%aF8jK2@', 'Paula', 'González Sánchez', 'paulagonzalez@outlook.com', '2022-01-01', false),
('josesanchez', 's9Vx$R1#pN7@', 'José', 'Sánchez Jiménez', 'josesanchez@gmail.com', '2022-01-01', false),
('anamartinez', 'y4Tf#G6$dC1%', 'Ana', 'Martínez Gómez', 'anamartinez@yahoo.es', '2022-01-01', false),
('mariaperez', 'd9Xh#J6$pN4%', 'María', 'Pérez García', 'mariaperez@hotmail.com', '2022-01-01', false),
('juanrodriguez', 'l2Qw$B5%jN9@', 'Juan', 'Rodríguez González', 'juanrodriguez@gmail.com', '2022-01-01', false),
('carolinamartin', 'hN6@zX1!fK5%', 'Carolina', 'Martín Torres', 'carolinamartin@yahoo.es', '2022-01-01', false),
('sergiogarcia', 'k4Bw$V3%dS6@', 'Sergio', 'García Fernández', 'sergiogarcia@outlook.com', '2022-01-01', true),
('paolagonzalez', 'a9Wf!H5$rT7#', 'Paola', 'González López', 'paolagonzalez@gmail.com', '2022-01-01', false),
('jorgelopez', 'p8Kd@T2$mB1#', 'Jorge', 'López Rodríguez', 'jorgelopez@yahoo.es', '2022-01-01', false),
('rosamartinez', 'n3Xg!K4$fV5%', 'Rosa', 'Martínez Sánchez', 'rosamartinez@hotmail.com', '2022-01-01', false),
('albertosanchez', 'f5Gj!L9$zP7%', 'Alberto', 'Sánchez Pérez', 'albertosanchez@outlook.com', '2022-01-01', false),
('esteban.garcia', 'pLj0M#45!@5h', 'Esteban', 'García Gómez', 'esteban.garcia@gmail.com', '2022-09-01', false),
('maria.perez', 'tNq4S$93!%6j', 'María', 'Pérez García', 'maria.perez@yahoo.com', '2022-09-02', false),
('jose.gonzalez', 'sHw9B^62!@7g', 'José', 'González Gutiérrez', 'jose.gonzalez@hotmail.com', '2022-09-03', false),
('laura.sanchez', 'aGp3T@29!#4q', 'Laura', 'Sánchez Ortiz', 'laura.sanchez@outlook.com', '2022-09-04', false),
('daniel.fernandez', 'fDn7K!84^9u', 'Daniel', 'Fernández Martínez', 'daniel.fernandez@live.com', '2022-09-05', false),
('carmen.ruiz', 'rLg2Q#15!$8t', 'Carmen', 'Ruiz Sánchez', 'carmen.ruiz@gmail.com', '2022-09-06', false),
('pablo.lopez', 'tHf5M!28^7y', 'Pablo', 'López Rodríguez', 'pablo.lopez@hotmail.com', '2022-09-07', false),
('ana.martin', 'hSj7F#19!%4p', 'Ana', 'Martín García', 'ana.martin@outlook.com', '2022-09-08', false),
('raul.diaz', 'yNt2L!64#9s', 'Raúl', 'Díaz Fernández', 'raul.diaz@yahoo.com', '2022-09-09', false),
('lucia.gutierrez', 'dRq1X#27!%6f', 'Lucía', 'Gutiérrez Jiménez', 'lucia.gutierrez@gmail.com', '2022-09-10', false),
('miguel.fernandez', 'qGh3P!94^2d', 'Miguel', 'Fernández Pérez', 'miguel.fernandez@hotmail.com', '2022-09-11', false),
('sofia.lopez', 'pSb8W!17^5k', 'Sofía', 'López Gómez', 'sofia.lopez@outlook.com', '2022-09-12', false),
('carlos.perez', 'tDx9F!65^3q', 'Carlos', 'Pérez Sánchez', 'carlos.perez@yahoo.com', '2022-09-13', false),
('marina.santos', 'wZf4N!76#2h', 'Marina', 'Santos Rodríguez', 'marina.santos@gmail.com', '2022-09-14', false),
('marta19', 'bgrkbslizab', 'Marta', 'Fernández Sánchez', 'marta19@gmail.com', '2022-07-03', false),
('carlosgarcia', 'pvuxcjqrfmeh', 'Carlos', 'García Pérez', 'carlosgarcia@hotmail.com', '2022-06-24', false),
('javierperez', 'qanqyzwfhilx', 'Javier', 'Pérez Rodríguez', 'javierperez@outlook.es', '2022-05-31', false),
('lauragonzalez', 'kxtaypfrjlcd', 'Laura', 'González Martín', 'lauragonzalez@yahoo.com', '2022-04-19', false),
('danielruiz', 'vfwepjznqohx', 'Daniel', 'Ruiz Sánchez', 'danielruiz@gmail.com', '2022-03-12', false),
('monicagomez', 'rwxplknstbcy', 'Mónica', 'Gómez López', 'monicagomez@hotmail.com', '2022-02-23', false),
('sergiofernandez', 'zlydpkrmjnxi', 'Sergio', 'Fernández Jiménez', 'sergiofernandez@yahoo.com', '2022-01-17', false),
('pablocastro', 'mdqivjskbgna', 'Pablo', 'Castro García', 'pablocastro@gmail.com', '2021-12-22', false),
('luisaortega', 'bcklpnjgzqmo', 'Luisa', 'Ortega Hernández', 'luisaortega@hotmail.com', '2021-11-30', false),
('patriciamoreno', 'efgwxqrdknyu', 'Patricia', 'Moreno Jiménez', 'patriciamoreno@outlook.es', '2021-10-05', false),
('pedrosanchez', 'srmzwygcuokn', 'Pedro', 'Sánchez González', 'pedrosanchez@yahoo.com', '2021-09-19', false),
('andresrodriguez', 'dgcitkpyhbuq', 'Andrés', 'Rodríguez Fernández', 'andresrodriguez@gmail.com', '2021-08-28', false),
('cristinamartin', 'nozqktrfjibp', 'Cristina', 'Martín Sánchez', 'cristinamartin@hotmail.com', '2021-07-15', false),
('albertomarin', 'mgvsxtlujerf', 'Alberto', 'Marín Jiménez', 'albertomarin@yahoo.com', '2021-06-26', false),
('luciajimenez', 'wqpcezrofjia', 'Lucía', 'Jiménez Pérez', 'luciajimenez@gmail.com', '2021-05-13', false),
('jorgesantos', 'dysnizacjxqt', 'Jorge', 'Santos González', 'jorgesantos@outlook.es', '2021-04-27', false),
('marta19', 'bgrkbslizab', 'Marta', 'Fernández Sánchez', 'marta19@gmail.com', '2022-07-03', false),
('carlosgarcia', 'pvuxcjqrfmeh', 'Carlos', 'García Pérez', 'carlosgarcia@hotmail.com', '2022-06-24', false),
('javierperez', 'qanqyzwfhilx', 'Javier', 'Pérez Rodríguez', 'javierperez@outlook.es', '2022-05-31', false),
('lauragonzalez', 'kxtaypfrjlcd', 'Laura', 'González Martín', 'lauragonzalez@yahoo.com', '2022-04-19', false),
('danielruiz', 'vfwepjznqohx', 'Daniel', 'Ruiz Sánchez', 'danielruiz@gmail.com', '2022-03-12', false),
('monicagomez', 'rwxplknstbcy', 'Mónica', 'Gómez López', 'monicagomez@hotmail.com', '2022-02-23', false),
('sergiofernandez', 'zlydpkrmjnxi', 'Sergio', 'Fernández Jiménez', 'sergiofernandez@yahoo.com', '2022-01-17', false),
('pablocastro', 'mdqivjskbgna', 'Pablo', 'Castro García', 'pablocastro@gmail.com', '2021-12-22', false),
('luisaortega', 'bcklpnjgzqmo', 'Luisa', 'Ortega Hernández', 'luisaortega@hotmail.com', '2021-11-30', false),
('patriciamoreno', 'efgwxqrdknyu', 'Patricia', 'Moreno Jiménez', 'patriciamoreno@outlook.es', '2021-10-05', false),
('pedrosanchez', 'srmzwygcuokn', 'Pedro', 'Sánchez González', 'pedrosanchez@yahoo.com', '2021-09-19', false),
('andresrodriguez', 'dgcitkpyhbuq', 'Andrés', 'Rodríguez Fernández', 'andresrodriguez@gmail.com', '2021-08-28', false),
('cristinamartin', 'nozqktrfjibp', 'Cristina', 'Martín Sánchez', 'cristinamartin@hotmail.com', '2021-07-15', false),
('albertomarin', 'mgvsxtlujerf', 'Alberto', 'Marín Jiménez', 'albertomarin@yahoo.com', '2021-06-26', false),
('luciajimenez', 'wqpcezrofjia', 'Lucía', 'Jiménez Pérez', 'luciajimenez@gmail.com', '2021-05-13', false),
('jorgesantos', 'dysnizacjxqt', 'Jorge', 'Santos González', 'jorgesantos@outlook.es', '2021-04-27', false),
('juanlopez', 'Q#8n9J6u!dPz', 'Juan', 'López Pérez', 'juan.lopez@gmail.com', '2022-01-01', false),
('mariaortega', 'W@6x4K7p#hLq', 'María', 'Ortega Ruiz', 'maria.ortega@hotmail.com', '2022-01-02', false),
('pedrogonzalez', 'E!3y5T9r$kBx', 'Pedro', 'González García', 'pedro.gonzalez@yahoo.es', '2022-01-03', false),
('lauramartin', 'R$2c7H8w@fLq', 'Laura', 'Martín Sánchez', 'laura.martin@gmail.com', '2022-01-04', false),
('davidperez', 'T%1u9J5f@hNz', 'David', 'Pérez Rodríguez', 'david.perez@hotmail.com', '2022-01-05', false),
('martafernandez', 'Y^4b7G3q#mKx', 'Marta', 'Fernández González', 'marta.fernandez@yahoo.es', '2022-01-06', false),
('albertoramos', 'U&6y2H4t$gNq', 'Alberto', 'Ramos Ruiz', 'alberto.ramos@gmail.com', '2022-01-07', false),
('rociosanchez', 'I@9z6K8w#fLq', 'Rocío', 'Sánchez Fernández', 'rocio.sanchez@hotmail.com', '2022-01-08', false),
('sergiomartinez', 'O!5x4P9q$hLc', 'Sergio', 'Martínez García', 'sergio.martinez@yahoo.es', '2022-01-09', false),
('cristinacastro', 'P#2w8J4z@kNx', 'Cristina', 'Castro Gómez', 'cristina.castro@gmail.com', '2022-01-10', false),
('pablogomez', 'A$9t6G5k#hLz', 'Pablo', 'Gómez Rodríguez', 'pablo.gomez@hotmail.com', '2022-01-11', false),
('luciamartin', 'S^3b7K6y$mHx', 'Lucía', 'Martín López', 'lucia.martin@yahoo.es', '2022-01-12', false),
('javierrodriguez', 'D!8u6T9r#zNq', 'Javier', 'Rodríguez Sánchez', 'javier.rodriguez@gmail.com', '2022-01-13', false),
('anafernandez', 'F@4t7P5y#gLx', 'Ana', 'Fernández Martínez', 'ana.fernandez@hotmail.com', '2022-01-14', false),
('juanlujan', 'E0CjeAVa4dfL', 'Juan', 'Luján García', 'juanlujan@telefonica.net', '2022-07-23', false),
('sandraortiz', 'E56JiPqo8mnK', 'Sandra', 'Ortiz Sánchez', 'sandraortiz@gmail.com', '2021-05-02', false),
('pabloalonso', 'F67LtGwx2bhM', 'Pablo', 'Alonso González', 'pabloalonso@hotmail.com', '2022-02-18', false),
('luciaperez', 'G34KrHtj1vyN', 'Lucía', 'Pérez Ruiz', 'luciaperez@outlook.es', '2021-06-15', false),
('sergiogil', 'H45EuBmk0zaO', 'Sergio', 'Gil Castro', 'sergiogil@telefonica.net', '2022-08-29', false),
('mariadelgado', 'I90DnVgf3cxP', 'María', 'Delgado García', 'mariadelgado@gmail.com', '2021-12-30', false),
('javierfernandez', 'J09AwQyb2zeR', 'Javier', 'Fernández Sánchez', 'javierfernandez@outlook.es', '2022-06-10', false),
('laurasanchez', 'K56FsZvt1dnS', 'Laura', 'Sánchez Martínez', 'laurasanchez@hotmail.com', '2021-09-14', false),
('danielrodriguez', 'L23MxXhc9juT', 'Daniel', 'Rodríguez Pérez', 'danielrodriguez@gmail.com', '2022-05-11', false),
('irenemartin', 'M89NyZps4ikU', 'Irene', 'Martín Ruiz', 'irenemartin@hotmail.com', '2021-08-07', false),
('pedrogarcia', 'N67LrHfg2bhV', 'Pedro', 'García Pérez', 'pedrogarcia@outlook.es', '2022-03-21', false),
('mariacastillo', 'O45EsBmn1zaW', 'María', 'Castillo Sánchez', 'mariacastillo@gmail.com', '2021-10-25', false),
('luisrodriguez', 'P23DfVgh8xcY', 'Luis', 'Rodríguez López', 'luisrodriguez@telefonica.net', '2022-09-17', false),
('anaperez', 'Q90BhJkt7vnZ', 'Ana', 'Pérez Rodríguez', 'anaperez@hotmail.com', '2021-07-09', false),
('franciscovargas', 'R89UjMwe2bhX', 'Francisco', 'Vargas Moreno', 'franciscovargas@gmail.com', '2022-04-04', false),
('jguerrero', 'XejM2QcxgEaY', 'Javier', 'Guerrero Santos', 'javierguerrero@gmail.com', '2023-03-30', false),
('mrodriguez', 'RcL4jKdSvN3q', 'Marta', 'Rodríguez Sánchez', 'martarodriguez@hotmail.com', '2023-03-30', false),
('aalonso', 'QeW8kTsYvF6u', 'Alejandro', 'Alonso Pérez', 'alejandroalonso@yahoo.es', '2023-03-30', false),
('lramirez', 'ZcN2dHfVxL9s', 'Lucía', 'Ramírez Gómez', 'luciaramirez@outlook.com', '2023-03-30', false),
('fcalvo', 'WbJ7zEaU1iKt', 'Francisco', 'Calvo Hernández', 'franciscalvo@gmail.com', '2023-03-30', false),
('pgarcia', 'TmF8qZbVpC3j', 'Paula', 'García Fernández', 'paulagarcia@hotmail.com', '2023-03-30', false),
('cruiz', 'LzN5vYcHxJ6t', 'Carlos', 'Ruiz Gutiérrez', 'carlosruiz@yahoo.es', '2023-03-30', false),
('eortega', 'PdA1uKmVxZ9c', 'Elena', 'Ortega Martínez', 'elenaortega@outlook.com', '2023-03-30', false),
('pfernandez', 'NfC5hVzLxT4m', 'Pedro', 'Fernández López', 'pedrofernandez@gmail.com', '2023-03-30', false),
('snavarro', 'DqM3tZbVxN9c', 'Sofía', 'Navarro Torres', 'sofianavarro@yahoo.es', '2023-03-30', false),
('jvelasco', 'XfR8gCbJvN4s', 'Juan', 'Velasco García', 'juanvasco@hotmail.com', '2023-03-30', false),
('mcastro', 'KwQ2dZrU1fL5g', 'María', 'Castro Moreno', 'mariacastro@gmail.com', '2023-03-30', false),
('rperez', 'AeC5fBnM3gH2q', 'Ricardo', 'Pérez Muñoz', 'ricardoperez@outlook.com', '2023-03-30', false),
('nrodriguez', 'GxJ2kVzFbP9c', 'Natalia', 'Rodríguez Ortiz', 'nataliarodriguez@yahoo.es', '2023-03-30', false),
('amparo.arroyo', 'R}c%>8+CwZgK', 'Amparo', 'Arroyo Martínez', 'amparo.arroyo@gmail.com', '2022-09-23', false),
('carmen.martin', 'fB@x!9?J#7Gp', 'Carmen', 'Martín Moreno', 'carmen.martin@yahoo.es', '2022-10-01', false),
('juan.rodriguez', 'z5rZUfe=WV!E', 'Juan', 'Rodríguez García', 'juan.rodriguez@hotmail.com', '2022-10-12', false),
('laura.molina', '9xL?#JG7H=cF', 'Laura', 'Molina Ruiz', 'laura.molina@gmail.com', '2022-10-18', false),
('daniel.castro', 'S!8*Rv#mD3qN', 'Daniel', 'Castro Fernández', 'daniel.castro@hotmail.com', '2022-10-21', false),
('jrodri', 'oGJ*o8a$nAfK', 'Jorge', 'Rodríguez Martínez', 'jrodriguez@gmail.com', '2022-02-01', false),
('gperez', 'qSj6#kPn^dQm', 'Guillermo', 'Pérez López', 'gperez@outlook.com', '2022-02-01', false),
('bgonza', 'cN2&vB1s%wDl', 'Beatriz', 'González Ramírez', 'bgonzalez@yahoo.com', '2022-02-02', false),
('mramos', 'sT8!pF7x#zHc', 'Miguel', 'Ramos Sánchez', 'mramos@gmail.com', '2022-02-02', false),
('lmoren', 'gD5$pM6f#tNw', 'Lucía', 'Moreno Fernández', 'lmoreno@hotmail.com', '2022-02-03', false),
('mlopez', 'dQ3*sF1r!xWt', 'María', 'López Torres', 'mlopez@yahoo.com', '2022-02-03', false),
('jperez', 'zK9#hX6j$qPm', 'José', 'Pérez González', 'jperez@outlook.com', '2022-02-04', false),
('sarias', 'bT1$nY5w#jHg', 'Sara', 'Arias Fernández', 'sarias@gmail.com', '2022-02-04', false),
('jlopez', 'cB6&mW8p#xTn', 'Juan', 'López García', 'jlopez@hotmail.com', '2022-02-05', false),
('lcasti', 'tR7@qN3k#mZf', 'Laura', 'Castillo Jiménez', 'lcastillo@yahoo.com', '2022-02-05', false),
('mfern', 'rF5%pJ1h#tMl', 'Manuel', 'Fernández Martín', 'mfernandez@gmail.com', '2022-02-06', false),
('alvare', 'gD2$sL9x#qNc', 'Ana', 'Álvarez Sánchez', 'aalvarez@hotmail.com', '2022-02-06', false),
('jcasti', 'fB4#pT6g$hWm', 'Javier', 'Castillo García', 'jcastillo@yahoo.com', '2022-02-07', false),
('pmore', 'dS8%jF2k#zNc', 'Patricia', 'Moreno Gómez', 'pmoreno@gmail.com', '2022-02-07', false),
('jgomez', 'hR9!pN5t#mJk', 'José', 'Gómez Pérez', 'jgomez@hotmail.com', '2022-02-08', false),
('isabel.ramirez', 'Mx2yFg9dN#hP', 'Isabel', 'Ramírez Sánchez', 'isabel.ramirez@gmail.com', '2022-11-03', false),
('javier.navarro', 'wR4K?8zA=FbL', 'Javier', 'Navarro López', 'javier.navarro@hotmail.com', '2022-11-09', false),
('pilar.garcia', 'kW=5R*Jh#pG!', 'Pilar', 'García Torres', 'pilar.garcia@gmail.com', '2022-11-15', false),
('roberto.ortega', 'tS9XjM!b?FvH', 'Roberto', 'Ortega Vega', 'roberto.ortega@yahoo.es', '2022-11-23', false),
('sergio.santos', 'B=5wM#fRvD8G', 'Sergio', 'Santos Serrano', 'sergio.santos@hotmail.com', '2022-11-30', false),
('alberto.morales', 'H!6vJ8W=qZ#', 'Alberto', 'Morales Gutiérrez', 'alberto.morales@gmail.com', '2022-12-07', false),
('david.gil', 'zA6Y8U?X!RcF', 'David', 'Gil Hernández', 'david.gil@yahoo.es', '2022-12-14', false),
('ana.cabrera', '7D2Kf?Gz4#Lj', 'Ana', 'Cabrera Castro', 'ana.cabrera@hotmail.com', '2022-12-23', false),
('maria.iglesias', 'vC!5J8N9#2Hq', 'María', 'Iglesias Sánchez', 'maria.iglesias@gmail.com', '2023-01-01', false);

CREATE TABLE categoria(
	idCategoria SERIAL,
	nombre VARCHAR(30) NOT NULL,
	descripcion TEXT,
	
	CONSTRAINT pk_categoria PRIMARY KEY (idCategoria)
);


INSERT INTO categoria (nombre, descripcion)
VALUES 
    ('Coches', 'Categoría para productos relacionados con automóviles, desde coches de alta gama hasta coches usados y piezas de repuesto.'),
    ('Motos', 'Categoría para productos relacionados con motocicletas, desde motos deportivas hasta motos de cross y accesorios para motos.'),
    ('Moda y Accesorios', 'Categoría para productos relacionados con la moda y los accesorios, desde ropa de alta costura hasta joyas y accesorios de moda.'),
    ('Inmobiliaria', 'Categoría para productos relacionados con el mercado inmobiliario, desde apartamentos y casas hasta terrenos y propiedades comerciales.'),
    ('TV, Audio y Foto', 'Categoría para productos relacionados con televisores, sistemas de audio y fotografía, desde televisores de alta definición hasta cámaras y accesorios de fotografía.'),
    ('Informática y Electrónica', 'Categoría para productos relacionados con la informática y la electrónica, desde ordenadores y componentes hasta accesorios y dispositivos electrónicos.'),
    ('Bicicletas', 'Categoría para productos relacionados con las bicicletas, desde bicicletas de carretera hasta bicicletas de montaña y accesorios para bicicletas.'),
    ('Consolas y Videojuegos', 'Categoría para productos relacionados con consolas y videojuegos, desde consolas de juegos hasta juegos y accesorios para videojuegos.'),
    ('Cine, Libros y Música', 'Categoría para productos relacionados con el entretenimiento, desde películas y libros hasta música y accesorios para entretenimiento.'),
	('Servicios', 'Categoría para servicios relacionados con diversas áreas, desde servicios de limpieza hasta servicios de diseño y programación de software.');
	


CREATE TABLE oferta(
	remitente INT,
	offerId SERIAL UNIQUE,
	valor_estimado NUMERIC(10,2) NOT NULL,
	categoria SMALLINT NOT NULL,
	nombre_producto VARCHAR(50) NOT NULL,
	descripcion TEXT,
	estado VARCHAR(30),
	remitente_busca_cat SMALLINT NOT NULL,
	remitente_busca TEXT,
	
	CONSTRAINT pk_oferta PRIMARY KEY (remitente,offerId)
);

ALTER TABLE oferta
	ADD CONSTRAINT fk_oferta_categoria FOREIGN KEY (categoria) REFERENCES categoria(idCategoria) ON DELETE SET NULL,
	ADD CONSTRAINT fk_oferta_remitente FOREIGN KEY (remitente) REFERENCES usuarios(id) ON DELETE CASCADE;

INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) 
VALUES (83, 500, 3, 'Bolso de piel', 'Bolso de piel de alta calidad, color negro', 'nuevo', 3, 'Zapatos de tacón de marca');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) 
VALUES (46, 1200, 7, 'Bicicleta de montaña', 'Bicicleta de montaña con cuadro de aluminio, frenos de disco', 'usado', 8, 'Consola de videojuegos PS5');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) 
VALUES (97, 1500, 6, 'Portátil HP', 'Portátil HP con pantalla táctil, 16 GB de RAM y 1TB de almacenamiento', 'nuevo', 6, 'Smartphone de alta gama');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) 
VALUES (123, 8000, 1, 'Coche deportivo', 'Coche deportivo de alta gama, 300 CV de potencia', 'usado', 9, 'Servicio de reformas de interiores');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) 
VALUES (24, 200, 10, 'Servicio de limpieza', 'Servicio de limpieza de oficinas, experiencia demostrable', 'nuevo', 10, 'Servicio de catering para eventos'),
(45, 500.00, 6, 'Portátil HP', 'Portátil HP en perfecto estado, pantalla de 15 pulgadas, 8 GB de RAM, disco duro de 1 TB.', 'usado', 6, 'Macbook Pro'),
(88, 2500.00, 1, 'Ford Mustang', 'Coche en excelente estado, del año 2015, con 35,000 millas.', 'usado', 1, 'Camaro'),
(112, 700.00, 5, 'Televisor Samsung', 'Televisor Samsung de 50 pulgadas en perfectas condiciones, con mando a distancia.', 'usado', 5, 'Televisor LG'),
(23, 350.00, 3, 'Zapatos deportivos Nike', 'Zapatos deportivos Nike talla 9, en excelente estado.', 'usado', 3, 'Zapatos deportivos Adidas'),
(78, 120.00, 7, 'Bicicleta de montaña', 'Bicicleta de montaña en perfecto estado, con cambios Shimano y frenos de disco.', 'usado', 7, 'Bicicleta de carretera'),
(99, 1500.00, 4, 'Apartamento en el centro de la ciudad', 'Apartamento en el centro de la ciudad de 70 metros cuadrados, 2 habitaciones y 1 baño.', 'usado', 4, 'Piso en la playa'),
(67, 450.00, 8, 'PlayStation 5', 'Consola PlayStation 5 con un controlador y un juego.', 'nuevo', 8, 'Xbox Series X'),
(55, 90.00, 10, 'Limpieza de alfombras', 'Servicio de limpieza de alfombras de alta calidad.', 'nuevo', 10, 'Limpieza de muebles'),
(27, 750.00, 6, 'iPhone 12', 'iPhone 12 en excelente estado, con 128 GB de almacenamiento.', 'usado', 6, 'Samsung Galaxy S21'),
(123, 50.00, 2, 'Casco de moto', 'Casco de moto marca Bell talla M, en excelente estado.', 'usado', 2, 'Guantes de moto'),
(17, 300.00, 9, 'Guitarra eléctrica', 'Guitarra eléctrica marca Fender, en excelente estado.', 'usado', 9, 'Amplificador de guitarra'),
(89, 400.00, 4, 'Casa de campo con piscina', 'Casa de campo con piscina y jardín, ubicada a las afueras de la ciudad.', 'usado', 4, 'Piso en la ciudad'),
(132, 100.00, 5, 'Cámara Nikon', 'Cámara Nikon en excelente estado, con lente de 18-55mm.', 'usado', 5, 'Cámara Canon');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (78, 500.00, 4, 'Casa en el centro', 'Bonita casa en el centro de la ciudad, con amplios espacios y excelente ubicación', 'Usado', 4, 'Departamento en la playa');

INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (110, 100.00, 8, 'Playstation 4', 'Consola Playstation 4 en perfecto estado, incluye dos mandos y varios juegos', 'Como nuevo', 8, 'Consola Xbox One');

INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (47, 150.00, 5, 'Televisor LG', 'Televisor LG en excelente estado, pantalla de 32 pulgadas, con control remoto', 'Usado', 5, 'Sistema de sonido Bose');

INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (89, 300.00, 6, 'Laptop Asus', 'Laptop Asus en excelente estado, procesador i5, 8GB de RAM, 1TB de disco duro', 'Como nuevo', 6, 'Tablet Samsung Galaxy');

INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (12, 80.00, 7, 'Bicicleta MTB', 'Bicicleta todo terreno en buen estado, rodado 26, con cambios Shimano', 'Usado', 7, 'Bicicleta de ruta');

INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (135, 50.00, 10, 'Limpieza de hogar', 'Servicio de limpieza de hogar completo, incluye limpieza de ventanas, baños, cocina y habitaciones', 'Nuevo', 10, 'Servicio de pintura');

INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (28, 200.00, 4, 'Casa en la montaña', 'Hermosa casa en la montaña, con vista panorámica y amplios espacios', 'Como nuevo', 4, 'Apartamento en la ciudad');

INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (73, 120.00, 9, 'CD de música', 'Colección de 50 CD de música variada, en excelente estado', 'Usado', 9, 'DVD de películas');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) VALUES (93, 500, 5, 'Televisor LG 55 pulgadas', 'Televisor LG en excelente estado, con imagen nítida y sonido envolvente.', 'Usado', 5, 'Home Cinema Sony 5.1');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) VALUES (43, 250, 10, 'Limpieza de hogar', 'Ofrezco servicios de limpieza de hogar de forma profesional. Uso productos de calidad y garantizo un resultado impecable.', 'Nuevo', 10, 'Servicios de pintura y decoración');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) VALUES (120, 450, 6, 'MacBook Pro 2021', 'Vendo mi MacBook Pro 2021 con procesador Intel Core i5 y 8GB de RAM. Está en perfecto estado y se entrega con su caja original.', 'Usado', 6, 'Portátil gaming de gama alta');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) VALUES (71, 80, 3, 'Vestido negro de fiesta', 'Vendo mi vestido negro de fiesta, talla M. Solo lo he usado una vez y está como nuevo.', 'Usado', 3, 'Zapatos de tacón negros, talla 38');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca) VALUES (62, 350, 1, 'Volkswagen Golf VII', 'Vendo mi Volkswagen Golf VII en perfectas condiciones, con todos los mantenimientos al día. Color gris metalizado y con 150.000 km.', 'Usado', 1, 'Audi A3');
INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (74, DEFAULT, 750.00, 9, 'Vinilos de música clásica', 'Colección completa de vinilos de música clásica en perfecto estado', 'Disponible', 9, 'CDs y vinilos');
INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (112, DEFAULT, 2800.00, 5, 'Televisor Sony Bravia 65"', 'Televisor LED 4K en perfecto estado con sonido envolvente', 'Nuevo', 5, 'Equipo de sonido');
INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (29, DEFAULT, 300.00, 8, 'Nintendo Switch', 'Consola Nintendo Switch con funda protectora y dos juegos incluidos', 'Como nuevo', 8, 'Juegos de PS4');
INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (87, DEFAULT, 500.00, 3, 'Bolso Gucci', 'Bolso de cuero de la marca Gucci en perfecto estado', 'Usado', 3, 'Bolsos de Michael Kors');
INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (55, DEFAULT, 1500.00, 1, 'Audi A4', 'Coche Audi A4 en excelente estado con tapicería de cuero', 'Como nuevo', 1, 'Coche BMW');
INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (102, DEFAULT, 80.00, 6, 'Ratón inalámbrico', 'Ratón para ordenador inalámbrico en buen estado', 'Usado', 6, 'Teclado para ordenador');
INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (45, DEFAULT, 250.00, 10, 'Limpieza de casa', 'Servicio de limpieza de casa por hora', 'Disponible', 10, 'Servicio de jardinería');
INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (92, DEFAULT, 450.00, 4, 'Piso en el centro', 'Piso en el centro de la ciudad de 80 metros cuadrados', 'Como nuevo', 4, 'Casa en la playa');
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (45, 400, 1, 'Volkswagen Golf GTI', 'Vendo mi Golf GTI en excelente estado, modelo 2018 con 50.000 km recorridos, color rojo, tapicería en cuero, cámara de reversa, techo panorámico, llantas nuevas, precio negociable.', 'usado', 1, 'busco coche de menor valor en buen estado'),
(72, 1200, 2, 'Yamaha R1', 'Vendo mi moto Yamaha R1 en excelentes condiciones, modelo 2020 con 10.000 km recorridos, color azul y blanco, escape Akrapovic, llantas nuevas, papeles al día, precio negociable.', 'usado', 2, 'busco moto deportiva de menor valor'),
(94, 800, 3, 'Zapatos de cuero', 'Vendo zapatos de cuero para caballero, marca Timberland, talla 42, color café oscuro, en excelentes condiciones, poco uso.', 'usado', 3, 'busco zapatos deportivos de marca reconocida'),
(26, 2000, 4, 'Casa en zona residencial', 'Vendo casa de dos pisos en zona residencial, 300 metros cuadrados de construcción, 4 habitaciones, 3 baños, terraza con vista panorámica, garaje para dos carros, seguridad las 24 horas.', 'nuevo', 4, 'busco apartamento de menor valor en zona céntrica'),
(63, 150, 5, 'Cámara Canon EOS', 'Vendo cámara Canon EOS 1200D con lente 18-55 mm, en excelentes condiciones, poco uso, con cargador y memoria de 8 GB.', 'usado', 5, 'busco cámara de video profesional'),
(108, 400, 6, 'Laptop Dell Inspiron', 'Vendo laptop Dell Inspiron 15, 8 GB de RAM, 500 GB de disco duro, procesador Intel Core i5, en excelentes condiciones, poco uso.', 'usado', 6, 'busco laptop de menor valor con procesador i3'),
(31, 300, 7, 'Bicicleta de montaña', 'Vendo bicicleta de montaña marca Scott, modelo Aspect 950, en excelentes condiciones, poco uso, color negro, frenos de disco, llantas nuevas, talla M.', 'usado', 7, 'busco bicicleta de ruta de menor valor'),
(115, 250, 8, 'PlayStation 4', 'Vendo consola PlayStation 4 con dos controles, en excelentes condiciones, poco uso, con juegos incluidos.', 'usado', 8, 'busco Nintendo Switch en buen estado'),
(79, 20, 9, 'CD de música pop', 'Vendo CD original de música pop, de la artista Taylor Swift, en excelentes condiciones, como nuevo.', 'usado', 9, 'busco DVD de películas infantiles');
INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (107, DEFAULT, 250.00, 8, 'Playstation 5', 'Consola de videojuegos nueva, en su caja original', 'Nuevo', 8, 'Nintendo Switch Lite');

INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (55, DEFAULT, 3000.00, 1, 'Mercedes Benz Clase C', 'Coche en buen estado, con 100,000 km recorridos', 'Usado', 1, 'Audi A4');

INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (73, DEFAULT, 150.00, 4, 'Apartamento en el centro', 'Apartamento de 2 habitaciones y 1 baño en excelente ubicación', 'Usado', 4, 'Casa en las afueras');

INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (42, DEFAULT, 1000.00, 9, 'Servicio de limpieza', 'Ofrezco servicio de limpieza por hora', 'Nuevo', 9, 'Servicio de jardinería');

INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (89, DEFAULT, 450.00, 7, 'Bicicleta de montaña', 'Bicicleta de montaña en buen estado, con frenos hidráulicos', 'Usado', 7, 'Bicicleta de carretera');

INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (124, DEFAULT, 200.00, 3, 'Zapatos de tacón', 'Zapatos de tacón nuevos, talla 38', 'Nuevo', 3, 'Bolso de mano');

INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (33, DEFAULT, 800.00, 5, 'Televisor LG', 'Televisor LG de 55 pulgadas, en buen estado', 'Usado', 5, 'Altavoces para TV');

INSERT INTO oferta (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (76, DEFAULT, 50.00, 10, 'Servicio de peluquería', 'Corte de cabello y peinado en mi salón de belleza', 'Nuevo', 10, 'Masajes relajantes');



CREATE TABLE coches(
	categoryId SMALLINT,
	km NUMERIC (10,2),
	consumo NUMERIC (4,2),
	num_puertas SMALLINT,
	
	CONSTRAINT pk_coches PRIMARY KEY (remitente, offerId)
)
INHERITS (oferta);

ALTER TABLE coches
	ADD CONSTRAINT fk_coches_remitente_offerid FOREIGN KEY(remitente,offerId) REFERENCES oferta(remitente,offerId);

INSERT INTO coches (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 1;

UPDATE coches
SET km = 150000, consumo = 10, num_puertas=5 WHERE offerid=4;

CREATE TABLE motos(
	km NUMERIC (10,2),
	consumo NUMERIC (4,2),
	cilindrada VARCHAR(20),
	
	CONSTRAINT pk_motos PRIMARY KEY (remitente, offerId)
)INHERITS (oferta);

ALTER TABLE motos
	ADD CONSTRAINT fk_motos_remitente_offerid FOREIGN KEY(remitente,offerId) REFERENCES oferta(remitente,offerId);

INSERT INTO motos (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 2;

CREATE TABLE moda_y_accesorios(
	categoryId SMALLINT,
	talla VARCHAR(4),
	
	CONSTRAINT pk_moda_y_accesorios PRIMARY KEY (remitente, offerId)
)INHERITS (oferta);

ALTER TABLE moda_y_accesorios
	ADD CONSTRAINT fk_moda_y_accesorios_remitente_offerid FOREIGN KEY(remitente,offerId) REFERENCES oferta(remitente,offerId);

INSERT INTO moda_y_accesorios (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 3;

CREATE TABLE inmobiliaria(
	categoryId SMALLINT,
	m2 NUMERIC (6,2),
	numBaños SMALLINT,
	numHabitaciones SMALLINT,
	direccion VARCHAR(70),
	
	CONSTRAINT pk_inmobiliaria PRIMARY KEY (offerId,remitente)
)INHERITS (oferta);

ALTER TABLE inmobiliaria
	ADD CONSTRAINT fk_inmobiliaria_remitente_offerid FOREIGN KEY (remitente,offerId) REFERENCES oferta(remitente,offerId) ON DELETE CASCADE;

INSERT INTO inmobiliaria (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 4;

CREATE TABLE tv_audio_y_foto(
	CONSTRAINT pk_tv_audio_y_foto PRIMARY KEY (remitente, offerId)
)INHERITS (oferta);

ALTER TABLE tv_audio_y_foto
	ADD CONSTRAINT fk_tv_audio_y_foto_remitente_offerid FOREIGN KEY (remitente,offerId) REFERENCES oferta(remitente,offerId) ON DELETE CASCADE;

INSERT INTO tv_audio_y_foto (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 5;


CREATE TABLE informatica_y_electronica(
	almacenamiento NUMERIC(10,2),
	CONSTRAINT pk_informatica_y_electronica PRIMARY KEY (remitente, offerId)
)INHERITS (oferta);

INSERT INTO informatica_y_electronica (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 6;

ALTER TABLE informatica_y_electronica
	ADD CONSTRAINT fk_informatica_y_electronica FOREIGN KEY (remitente,offerId) REFERENCES oferta(remitente,offerId) ON DELETE CASCADE;

CREATE TABLE bicicletas(
	categoryId SMALLINT,
	
		CONSTRAINT pk_bicicletas PRIMARY KEY (remitente, offerId)
)INHERITS (oferta);

ALTER TABLE bicicletas
	ADD CONSTRAINT fk_bicicletas_remitente_offerid FOREIGN KEY (remitente,offerId) REFERENCES oferta(remitente,offerId) ON DELETE CASCADE;

INSERT INTO bicicletas (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 7;

CREATE TABLE consolas_y_videojuegos(
	categoryId SMALLINT,
	
	CONSTRAINT pk_consolas_y_videojuegos PRIMARY KEY (remitente, offerId)
)INHERITS (oferta);

ALTER TABLE consolas_y_videojuegos
	ADD CONSTRAINT fk_consolas_y_videojuegos_remitente_offerid FOREIGN KEY (remitente,offerId) REFERENCES oferta(remitente,offerId) ON DELETE CASCADE;

INSERT INTO consolas_y_videojuegos (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 8;

CREATE TABLE cine_libros_y_musica(
	CONSTRAINT pk_cine_libros_y_musica PRIMARY KEY (remitente, offerId)
)INHERITS (oferta);

ALTER TABLE cine_libros_y_musica
	ADD CONSTRAINT fk_cine_libros_y_musica_remitente_offerid FOREIGN KEY (remitente,offerId) REFERENCES oferta(remitente,offerId) ON DELETE CASCADE;

INSERT INTO cine_libros_y_musica (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 9;

CREATE TABLE servicios(
	reviews NUMERIC (2,1),
	TIEMPO SMALLINT,
	
	CONSTRAINT pk_servicios PRIMARY KEY (remitente, offerId)
)INHERITS (oferta);

ALTER TABLE servicios
	ADD CONSTRAINT fk_servicios_remitente_offerid FOREIGN KEY (remitente,offerId) REFERENCES oferta(remitente,offerId) ON DELETE CASCADE;

INSERT INTO servicios (remitente, offerId, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
SELECT *
FROM oferta 
WHERE categoria = 10;

CREATE TABLE coeficiente(
	offerId1 INT,
	offerId2 INT,
	coeficiente SMALLINT,
	
	CONSTRAINT pk_coeficiente PRIMARY KEY(offerId1,offerId2)
);

ALTER TABLE coeficiente
	ADD CONSTRAINT fk_coeficiente_1 FOREIGN KEY (offerId1) REFERENCES oferta(offerId) ON DELETE CASCADE,
	ADD CONSTRAINT fk_coeficiente_2 FOREIGN KEY (offerId2) REFERENCES oferta(offerId) ON DELETE CASCADE;


CREATE TABLE intercambio(
	tradeID SERIAL,
	fecha_intercambio DATE,
	oferta_recipiente INT,
	oferta_REMITENTE INT,
	remitente INT,
	CONSTRAINT pk_intercambio PRIMARY KEY (tradeId)
);

ALTER TABLE intercambio
	ADD CONSTRAINT fk_intercambio_oferta_recipiente FOREIGN KEY (oferta_recipiente) REFERENCES oferta(offerId) ON DELETE CASCADE,
	ADD CONSTRAINT fk_intercambio_oferta_remitente FOREIGN KEY (oferta_remitente) REFERENCES oferta(offerId) ON DELETE CASCADE,
	ADD CONSTRAINT fk_intercambio_remitente FOREIGN KEY (remitente) REFERENCES usuarios(id) ON DELETE CASCADE;
	
INSERT INTO intercambio (oferta_remitente)
SELECT FLOOR(RANDOM() * 56) + 1 AS random_number
FROM information_schema.tables AS t1
CROSS JOIN information_schema.tables AS t2
LIMIT 100;

UPDATE intercambio(remitente, oferta_recipiente, fecha_intercambio)
UPDATE intercambio 
set fecha_intercambio = now() - (random() * interval '365 days'),
remitente = oferta.remitente
FROM oferta
WHERE intercambio.oferta_remitente = oferta.offerId;

UPDATE intercambio
set oferta_recipiente = oferta.offerId
FROM oferta
WHERE oferta.remitente_busca_cat = oferta.categoria;
