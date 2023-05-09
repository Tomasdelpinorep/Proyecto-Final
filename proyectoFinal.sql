DROP TABLE IF EXISTS usuarios CASCADE;
DROP TABLE IF EXISTS intercambio CASCADE;
DROP TABLE IF EXISTS oferta CASCADE;
DROP TABLE IF EXISTS categoria CASCADE;
DROP TABLE IF EXISTS coches CASCADE;
DROP TABLE IF EXISTS motos CASCADE;
DROP TABLE IF EXISTS moda_y_accesorios CASCADE;
DROP TABLE IF EXISTS inmobiliaria CASCADE;
DROP TABLE IF EXISTS tv_audio_y_foto CASCADE;
DROP TABLE IF EXISTS moviles_y_telefonia CASCADE;
DROP TABLE IF EXISTS deporte_y_ocio CASCADE;
DROP TABLE IF EXISTS bicicletas CASCADE;
DROP TABLE IF EXISTS consolas_y_videojuegos CASCADE;
DROP TABLE IF EXISTS electrodomesticos CASCADE;
DROP TABLE IF EXISTS cine_libros_y_musica CASCADE;
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
  ('Coches', 'Categoría para artículos relacionados con coches.'),
  ('Motos', 'Categoría para artículos relacionados con motos.'),
  ('Moda', 'Categoría para artículos relacionados con moda.'),
  ('Inmobiliaria', 'Categoría para artículos relacionados con bienes inmuebles.'),
  ('Audio e imagen', 'Categoría para artículos relacionados con equipos de sonido y video.'),
  ('Videojuegos', 'Categoría para artículos relacionados con videojuegos.'),
  ('Informática', 'Categoría para artículos relacionados con tecnología e informática.'),
  ('Bicicletas', 'Categoría para artículos relacionados con bicicletas.'),
  ('Deporte', 'Categoría para artículos relacionados con deporte.'),
  ('Servicios', 'Categoría para servicios ofrecidos.');



CREATE TABLE oferta(
	remitente INT,
	offerId SERIAL UNIQUE,
	valor_estimado NUMERIC(10,2) NOT NULL,
	categoria SMALLINT NOT NULL,
	nombre_producto VARCHAR(150) NOT NULL,
	descripcion TEXT,
	estado VARCHAR(30),
	remitente_busca_cat SMALLINT NOT NULL,
	remitente_busca TEXT,
	
	--ATRIBUTOS ESPECIFICOS COCHES
	km INT DEFAULT NULL,
	consumo NUMERIC(10,2) DEFAULT NULL,
	numPuertas SMALLINT DEFAULT NULL,
	
	--ATRIBUTOS ESPECIFICOS MOTOS
	cilindrada VARCHAR(30) DEFAULT NULL,
	
	--ATRIBUTOS ESPECIFICOS MODA
	talla VARCHAR(4) DEFAULT NULL,
	
	--ATRIBUTOS ESPECIFICOS INMOBILIARIA
	m2 NUMERIC(10,2) DEFAULT NULL,
	numHabitaciones SMALLINT DEFAULT NULL,
	numBanos SMALLINT DEFAULT NULL,
	direccion TEXT DEFAULT NULL,
	
	--ATRIBUTOS ESPECIFICOS ORDENADORES, INFORMATICA Y ELECTRONICA (ORDENADORES)
	almacenamiento NUMERIC(10,2) DEFAULT NULL,
	
	--ATRIBUTOS ESPECIFICOS BICICLETAS
	numMarchas SMALLINT DEFAULT NULL,
	tipoBici VARCHAR(40) DEFAULT NULL,
	
	--ATRIBUTOS ESPECÍFICO SERVICIOS
	duracion SMALLINT DEFAULT NULL,
	titulacion TEXT DEFAULT NULL,
	
	CONSTRAINT pk_oferta PRIMARY KEY (remitente,offerId)
);

ALTER TABLE oferta
	ADD CONSTRAINT fk_oferta_categoria FOREIGN KEY (categoria) REFERENCES categoria(idCategoria) ON DELETE SET NULL,
	ADD CONSTRAINT fk_oferta_remitente FOREIGN KEY (remitente) REFERENCES usuarios(id) ON DELETE CASCADE;

--INSERTAR OFERTAS DE COCHES
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca, km, consumo, numpuertas)
VALUES
(RANDOM() * 156 + 1, 15000.50, 1, 'Ford Mustang', 'Coche deportivo con acabados de lujo', 'Buen estado', 1, 'Chevrolet Camaro', 15000, 9.5, 2),
(RANDOM() * 156 + 1, 12000.00, 1, 'Volkswagen Golf', 'Coche compacto y eficiente', 'Decente', 1, 'Ford Focus', 85000, 5.8, 4),
(RANDOM() * 156 + 1, 5000.00, 1, 'Renault Clio', 'Coche económico y fácil de conducir', 'Necesita reparación', 1, 'Ford Fiesta', 120000, 6.2, 3),
(RANDOM() * 156 + 1, 8000.00, 1, 'Honda Civic', 'Coche fiable y eficiente', 'Buen estado', 1, 'Toyota Corolla', 95000, 7.1, 4),
(RANDOM() * 156 + 1, 20000.00, 1, 'BMW Serie 3', 'Coche de alta gama con acabados premium', 'Decente', 1, 'Audi A4', 40000, 8.9, 4),
(RANDOM() * 156 + 1, 15000.00, 1, 'Toyota Corolla', 'Coche híbrido con bajo consumo', 'Necesita reparación', 1, 'Honda Civic', 70000, 4.2, 4),
(RANDOM() * 156 + 1, 10000.00, 1, 'Nissan Micra', 'Coche pequeño y ágil para la ciudad', 'Buen estado', 1, 'Renault Clio', 65000, 6.8, 5),
(RANDOM() * 156 + 1, 25000.00, 1, 'Audi A4', 'Coche elegante y potente', 'Decente', 1, 'BMW Serie 3', 55000, 7.6, 4),
(RANDOM() * 156 + 1, 18000.00, 1, 'Peugeot 308', 'Coche cómodo y con buena estabilidad', 'Necesita reparación', 1, 'Renault Megane', 30000, 6.3, 5),
(RANDOM() * 156 + 1, 30000.00, 1, 'Mercedes-Benz Clase A', 'Coche de alta gama con tecnología avanzada', 'Buen estado', 1, 'Audi A3', 20000, 9.1, 5),
(RANDOM() * 156 + 1, 12000.00, 1, 'Seat León', 'Coche deportivo y confortable', 'Decente', 1, 'Volkswagen Golf', 80000, 6.8, 3);


--INSERTAR OFERTAS DE MOTOS
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca, km, consumo, cilindrada)
VALUES 
(FLOOR(RANDOM()*156)+1, 3000.00, 2, 'Honda CBR', 'Moto deportiva de alta gama', 'Buen estado', 2, 'Yamaha R1', 20000, 6.8, 1000),
(FLOOR(RANDOM()*156)+1, 1500.00, 2, 'Suzuki GN125', 'Moto económica y fácil de conducir', 'Decente', 2, 'Yamaha YBR125', 25000, 2.8, 125),
(FLOOR(RANDOM()*156)+1, 2500.00, 2, 'Kawasaki ER-6F', 'Moto deportiva y cómoda para largas distancias', 'Buen estado', 2, 'Suzuki SV650', 15000, 4.5, 650),
(FLOOR(RANDOM()*156)+1, 1000.00, 2, 'Yamaha YB100', 'Moto clásica y fiable', 'Necesitado de reparacion', 2, 'Suzuki AX100', 30000, 1.8, 100),
(FLOOR(RANDOM()*156)+1, 5000.00, 2, 'Harley-Davidson Softail', 'Moto de alta gama con acabados premium', 'Buen estado', 2, 'Indian Scout', 8000, 11.5, 1600),
(FLOOR(RANDOM()*156)+1, 2000.00, 2, 'BMW F650GS', 'Moto de aventura para viajes off-road', 'Decente', 2, 'Honda XR650L', 12000, 3.5, 650),
(FLOOR(RANDOM()*156)+1, 3500.00, 2, 'Ducati Monster', 'Moto deportiva con diseño agresivo', 'Buen estado', 2, 'Triumph Street Triple', 5000, 7.5, 800),
(FLOOR(RANDOM()*156)+1, 1200.00, 2, 'Kymco Agility City', 'Moto pequeña y ágil para la ciudad', 'Decente', 2, 'Honda PCX', 15000, 2.8, 125),
(FLOOR(RANDOM()*156)+1, 3000.00, 2, 'Honda CBR', 'Moto deportiva de alta gama', 'Buen estado', 2, 'Yamaha R1', 20000, 6.8, 1000),
(FLOOR(RANDOM()*156)+1, 1500.00, 2, 'Suzuki GN125', 'Moto económica y fácil de conducir', 'Decente', 2, 'Yamaha YBR125', 25000, 2.8, 125),
(FLOOR(RANDOM()*156)+1, 2500.00, 2, 'Kawasaki ER-6F', 'Moto deportiva y cómoda para largas distancias', 'Buen estado', 2, 'Suzuki SV650', 15000, 4.5, 650),
(FLOOR(RANDOM()*156)+1, 1000.00, 2, 'Yamaha YB100', 'Moto clásica y fiable', 'Necesitado de reparacion', 2, 'Suzuki AX100', 30000, 1.8, 100),
(FLOOR(RANDOM()*156)+1, 5000.00, 2, 'Harley-Davidson Softail', 'Moto de alta gama con acabados premium', 'Buen estado', 2, 'Indian Scout', 8000, 11.5, 1600),
(FLOOR(RANDOM()*156)+1, 2000.00, 2, 'BMW F650GS', 'Moto de aventura para viajes off-road', 'Decente', 2, 'Honda XR650L', 12000, 3.5, 650),
(FLOOR(RANDOM()*156)+1, 3500.00, 2, 'Ducati Monster', 'Moto deportiva con diseño agresivo', 'Buen estado', 2, 'Triumph Street Triple', 5000, 7.5, 800),
(FLOOR(RANDOM()*156)+1, 1200.00, 2, 'Kymco Agility City', 'Moto pequeña y ágil para la ciudad', 'Decente', 2, 'Honda PCX', 15000, 2.8, 125);

--INSERTAR OFERTAS DE MODA
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca, talla)
VALUES
(RANDOM() * 156 + 1, 50.00, 3, 'Camiseta de algodón', 'Camiseta cómoda y ligera', 'Buen estado', 3, 'Pantalón vaquero', 'S'),
(RANDOM() * 156 + 1, 120.00, 3, 'Vestido de fiesta', 'Elegante vestido para ocasiones especiales', 'Buen estado', 3, 'Tacones de plataforma', 'M'),
(RANDOM() * 156 + 1, 25.00, 3, 'Jersey de lana', 'Jersey cálido para el invierno', 'Decente', 4, 'Botas de montaña', 'XL'),
(RANDOM() * 156 + 1, 70.00, 3, 'Chaqueta de cuero', 'Chaqueta de piel para lucir estilo', 'Buen estado', 4, 'Mesa de centro', 'L'),
(RANDOM() * 156 + 1, 100.00, 3, 'Zapatos de tacón', 'Zapatos elegantes para cualquier evento', 'Buen estado', 5, 'Televisor LED', 'S'),
(RANDOM() * 156 + 1, 150.00, 3, 'Traje de baño', 'Bañador de alta calidad para la playa o la piscina', 'Buen estado', 5, 'Altavoces Bluetooth', 'M'),
(RANDOM() * 156 + 1, 20.00, 3, 'Bufanda de lana', 'Bufanda suave y cálida', 'Necesitado de reparación', 6, 'Videojuego para consola', 'S'),
(RANDOM() * 156 + 1, 60.00, 3, 'Vestido de verano', 'Vestido ligero y fresco', 'Decente', 6, 'Consola de videojuegos', 'M'),
(RANDOM() * 156 + 1, 40.00, 3, 'Polo de marca', 'Polo elegante para cualquier ocasión', 'Buen estado', 7, 'Ordenador portátil', 'L'),
(RANDOM() * 156 + 1, 80.00, 3, 'Pantalón de cuero', 'Pantalón de piel para vestir con estilo', 'Decente', 7, 'Tablet', 'M'),
(RANDOM() * 156 + 1, 90.00, 3, 'Maillot de ciclismo', 'Ropa de ciclista de alta calidad', 'Buen estado', 8, 'Bicicleta de montaña', 'XL'),
(RANDOM() * 156 + 1, 35.00, 3, 'Camiseta de deporte', 'Camiseta transpirable para hacer deporte', 'Decente', 8, 'Zapatillas de running', 'S'),
(RANDOM() * 156 + 1, 120.00, 3, 'Chándal de marca', 'Conjunto deportivo cómodo y elegante', 'Buen estado', 9, 'Mancuernas de 5 kg', 'L'),
(RANDOM() * 156 + 1, 25.00, 3, 'Calcetines deportivos', 'Calcetines transpirables para hacer deporte', 'Decente', 9, 'Balón de fútbol', 'M'),
(RANDOM() * 156 + 1, 50.00, 3, 'Paquete de clases de yoga', 'Clases de yoga para mejorar la salud', 'Buen estado', 10, 'Clases de meditación', 'M');

-- INSERTAR OFERTAS DE INMOBILIARIA
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca, m2, numHabitaciones, numBanos, direccion)
VALUES
(34, 200000.00, 4, 'Apartamento en el centro', 'Piso amplio y luminoso en el centro de la ciudad', 'Activa', 4, 'Casa en el campo', 120, 3, 2, 'Calle Mayor 12'),
(52, 500000.00, 4, 'Casa de lujo con piscina', 'Casa con amplio jardín y piscina privada', 'Activa', 4, 'Piso en la playa', 300, 4, 3, 'Calle del Sol 24'),
(67, 150000.00, 4, 'Piso moderno en el barrio residencial', 'Piso de nueva construcción en el barrio residencial', 'Activa', 4, 'Casa en la montaña', 80, 2, 1, 'Calle de la Luna 6'),
(72, 350000.00, 4, 'Ático con terraza', 'Ático con amplia terraza con vistas al mar', 'Activa', 4, 'Casa en el campo', 200, 3, 2, 'Calle de las Flores 8'),
(88, 80000.00, 4, 'Piso a reformar en el centro', 'Piso con muchas posibilidades para reformar en el centro', 'Activa', 4, 'Casa con piscina', 90, 2, 1, 'Calle de la Paz 22'),
(103, 450000.00, 4, 'Casa adosada en urbanización', 'Casa adosada en urbanización con piscina comunitaria', 'Activa', 4, 'Piso con vistas al mar', 150, 4, 2, 'Calle del Mar 15'),
(120, 200000.00, 4, 'Piso reformado en el casco antiguo', 'Piso reformado en edificio histórico en el casco antiguo', 'Activa', 4, 'Casa en la playa', 100, 2, 1, 'Calle de los Olivos 10'),
(135, 280000.00, 4, 'Casa con jardín en la montaña', 'Casa con amplio jardín y vistas a la montaña', 'Activa', 4, 'Piso en el centro', 150, 3, 2, 'Calle del Monte 3'),
(148, 120000.00, 4, 'Piso para reformar en el barrio histórico', 'Piso para reformar en el barrio histórico con encanto', 'Activa', 4, 'Casa con jardín en la ciudad', 80, 2, 1, 'Calle del Castillo 2'),
(156, 60000.00, 4, 'Piso económico en la periferia', 'Piso económico en la periferia de la ciudad', 'Activa', 4, 'Casa en el campo', 70, 2, 1, 'Calle de la Sierra 12');

-- INSERTAR OFERTAS DE AUDIO E IMAGEN
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES
	(RANDOM() * 156 + 1, 150.00, 5, 'Cámara digital Sony', 'Cámara digital Sony en perfectas condiciones', 'nuevo', 5, 'Televisor de 32 pulgadas Samsung'),

	(RANDOM() * 156 + 1, 90.00, 5, 'Altavoces Bose', 'Altavoces Bose en excelente estado', 'usado', 5, 'Proyector HD Epson'),

	(RANDOM() * 156 + 1, 200.00, 5, 'Cámara réflex Canon EOS', 'Cámara réflex Canon EOS en perfecto estado', 'usado', 5, 'Home cinema LG'),

	(RANDOM() * 156 + 1, 80.00, 5, 'Auriculares inalámbricos JBL', 'Auriculares inalámbricos JBL en buen estado', 'usado', 5, 'TV Box Xiaomi'),

	(RANDOM() * 156 + 1, 120.00, 5, 'Cámara de fotos Fujifilm', 'Cámara de fotos Fujifilm en buen estado', 'usado', 5, 'Barra de sonido LG'),
	(RANDOM() * 156 + 1, 70.00, 5, 'Altavoz Bluetooth JBL', 'Altavoz Bluetooth JBL en buen estado', 'usado', 5, 'TV LG de 42 pulgadas'),
    (RANDOM() * 156 + 1, 130.00, 5, 'Cámara GoPro Hero 7', 'Cámara GoPro Hero 7 en excelente estado', 'como nuevo', 5, 'Barra de sonido Samsung'),
    (RANDOM() * 156 + 1, 90.00, 5, 'Auriculares inalámbricos Sony', 'Auriculares inalámbricos Sony en buen estado', 'usado', 5, 'Proyector HD Optoma'),
    (RANDOM() * 156 + 1, 180.00, 5, 'Televisor LED LG de 55 pulgadas', 'Televisor LED LG de 55 pulgadas en buen estado', 'usado', 5, 'Home cinema Sony'),
    (RANDOM() * 156 + 1, 220.00, 5, 'Cámara réflex Nikon D5300', 'Cámara réflex Nikon D5300 en excelente estado', 'como nuevo', 5, 'Proyector 4K Epson'),
    (RANDOM() * 156 + 1, 110.00, 5, 'Altavoces inalámbricos Sonos', 'Altavoces inalámbricos Sonos en buen estado', 'usado', 5, 'TV LG de 48 pulgadas');
	


-- INSERTAR OFERTAS DE VIDEOJUEGOS
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES (34, 250.50, 6, 'FIFA 22 para Xbox One', 'Nuevo y precintado', 'Nuevo', 4, 'Mesa de centro'),
(101, 55.00, 6, 'Resident Evil Village para PS5', 'En buen estado', 'Usado', 5, 'Altavoz portátil'),
(67, 120.00, 6, 'Mario Kart 8 Deluxe para Nintendo Switch', 'Como nuevo', 'Usado', 6, 'Mando Pro de Nintendo Switch'),
(23, 15.99, 6, 'Assassins Creed para PC', 'Código de descarga', 'Nuevo', 7, 'Teclado para gaming'),
(126, 79.99, 6, 'The Legend of Zelda: Breath of the Wild para Nintendo Switch', 'Edición especial', 'Nuevo', 8, 'Bicicleta de montaña'),
(11, 50.00, 6, 'Overwatch para PS4', 'Caja original y disco en perfecto estado', 'Usado', 9, 'Raqueta de tenis'),
(89, 20.00, 6, 'Halo: The Master Chief Collection para Xbox One', 'En buen estado', 'Usado', 10, 'Servicio de limpieza de hogar'),
(45, 29.99, 6, 'Call of Duty: Black Ops Cold War para PC', 'Código de descarga', 'Nuevo', 3, 'Camiseta deportiva');

-- INSERTAR OFERTAS DE INFORMÁTICA
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES
	(RANDOM() * 156 + 1, 400.00, 7, 'Macbook Air', 'Macbook Air en excelente estado', 'usado', 7, 'iPad Pro'),
	(RANDOM() * 156 + 1, 150.00, 7, 'Monitor LG 24"', 'Monitor LG 24" en perfecto estado', 'nuevo', 7, 'Webcam Logitech'),
	(RANDOM() * 156 + 1, 200.00, 7, 'Impresora HP', 'Impresora HP en perfecto estado', 'usado', 7, 'Router Wifi'),
	(RANDOM() * 156 + 1, 80.00, 7, 'Teclado y mouse inalámbricos', 'Teclado y mouse inalámbricos en buen estado', 'usado', 7, 'Disco duro externo'),
	(RANDOM() * 156 + 1, 120.00, 7, 'Altavoces para PC', 'Altavoces para PC en buen estado', 'usado', 7, 'Ratón para gaming'),
	(RANDOM() * 156 + 1, 300.00, 7, 'MacBook Pro 2019', 'MacBook Pro en excelentes condiciones', 'usado', 10, 'Clases particulares de programación'),
    (RANDOM() * 156 + 1, 150.00, 7, 'Monitor LG 24"', 'Monitor LG en perfecto estado', 'nuevo', 10, 'Asesoramiento en marketing digital'),
    (RANDOM() * 156 + 1, 200.00, 7, 'Tablet Samsung Galaxy Tab S6 Lite', 'Tablet Samsung en buenas condiciones', 'usado', 10, 'Desarrollo de página web'),
    (RANDOM() * 156 + 1, 120.00, 7, 'Impresora HP DeskJet 3720', 'Impresora HP en buen estado', 'usado', 10, 'Servicio de edición de video'),
    (RANDOM() * 156 + 1, 250.00, 7, 'Portátil Acer Aspire 5', 'Portátil Acer en excelente estado', 'usado', 10, 'Mantenimiento de sistemas informáticos'),
    (RANDOM() * 156 + 1, 180.00, 7, 'Ratón inalámbrico Logitech', 'Ratón Logitech en perfectas condiciones', 'nuevo', 10, 'Asesoramiento en estrategia de negocio');

-- INSERTAR OFERTAS DE BICICLETAS
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca, tipobici, nummarchas)
VALUES
	(RANDOM() * 156 + 1, 250.00, 8, 'Bicicleta de montaña Scott', 'Bicicleta de montaña Scott en buen estado', 'usado', 8, 'Bicicleta de carretera Pinarello', 'Montaña', 21),

	(RANDOM() * 156 + 1, 300.00, 8, 'Bicicleta de carretera Trek', 'Bicicleta de carretera Trek en excelentes condiciones', 'usado', 8, 'Bicicleta plegable Dahon', 'Carretera', 18),

	(RANDOM() * 156 + 1, 150.00, 8, 'Bicicleta urbana Orbea', 'Bicicleta urbana Orbea en buen estado', 'usado', 8, 'Bicicleta de montaña Giant', 'Urbana', 7),

	(RANDOM() * 156 + 1, 200.00, 8, 'Bicicleta de carretera Bianchi', 'Bicicleta de carretera Bianchi en excelentes condiciones', 'usado', 8, 'Bicicleta de montaña Specialized', 'Carretera', 21),

	(RANDOM() * 156 + 1, 180.00, 8, 'Bicicleta de montaña Cannondale', 'Bicicleta de montaña Cannondale en buen estado', 'usado', 8, 'Bicicleta plegable Brompton', 'Montaña', 18),
	(RANDOM() * 156 + 1, 200.00, 8, 'Bicicleta de carretera BH', 'Bicicleta de carretera BH en buen estado', 'usado', 8, 'Bicicleta de montaña Scott', 'carretera', 18),
	(RANDOM() * 156 + 1, 300.00, 8, 'Bicicleta de montaña Orbea', 'Bicicleta de montaña Orbea en perfecto estado', 'nuevo', 8, 'Bicicleta de paseo vintage', 'montaña', 21),
	(RANDOM() * 156 + 1, 150.00, 8, 'Bicicleta de paseo Cruiser', 'Bicicleta de paseo Cruiser en buenas condiciones', 'usado', 8, 'Bicicleta BMX', 'paseo', 6),
	(RANDOM() * 156 + 1, 180.00, 8, 'Bicicleta de carretera Mérida', 'Bicicleta de carretera Mérida en buen estado', 'usado', 8, 'Bicicleta de montaña Trek', 'carretera', 24),
	(RANDOM() * 156 + 1, 250.00, 8, 'Bicicleta de montaña Giant', 'Bicicleta de montaña Giant en excelente estado', 'usado', 8, 'Bicicleta plegable Brompton', 'montaña', 18);

-- INSERTAR OFERTAS DE DEPORTE
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca)
VALUES
(RANDOM() * 156 + 1, 100.00, 9, 'Raqueta de tenis', 'Raqueta de tenis en buen estado', 'usado', 9, 'Mochila para trekking'),
(RANDOM() * 156 + 1, 50.00, 9, 'Balón de fútbol', 'Balón de fútbol en buen estado', 'usado', 9, 'Botas de fútbol'),
(RANDOM() * 156 + 1, 80.00, 9, 'Tabla de skate', 'Tabla de skate con poco uso', 'usado', 9, 'Patines en línea'),
(RANDOM() * 156 + 1, 150.00, 9, 'Tabla de surf', 'Tabla de surf en buen estado', 'usado', 9, 'Traje de neopreno'),
(RANDOM() * 156 + 1, 120.00, 9, 'Bicicleta estática', 'Bicicleta estática en buen estado', 'usado', 9, 'Reloj deportivo'),
(RANDOM() * 156 + 1, 50.00, 9, 'Pelota de fútbol', 'Pelota de fútbol en buen estado', 'usado', 9, 'Zapatillas de running Nike'),
(RANDOM() * 156 + 1, 80.00, 9, 'Raqueta de tenis', 'Raqueta de tenis en buen estado', 'usado', 9, 'Balón de baloncesto'),
(RANDOM() * 156 + 1, 120.00, 9, 'Tabla de snowboard', 'Tabla de snowboard en buen estado', 'usado', 9, 'Patines en línea'),
(RANDOM() * 156 + 1, 70.00, 9, 'Bicicleta estática', 'Bicicleta estática en buen estado', 'usado', 9, 'Pesas de musculación'),
(RANDOM() * 156 + 1, 100.00, 9, 'Tabla de surf', 'Tabla de surf en buen estado', 'usado', 9, 'Guantes de boxeo');
	
	
--INSERTAR OFERTAS DE SERVICIOS
INSERT INTO oferta (remitente, valor_estimado, categoria, nombre_producto, descripcion, estado, remitente_busca_cat, remitente_busca, duracion)
VALUES
	(RANDOM() * 156 + 1, 50.00, 10, 'Masaje relajante', 'Masaje de cuerpo completo para relajar los músculos y reducir el estrés', 'usado', 10, 'Clase de yoga', 60),
	(RANDOM() * 156 + 1, 80.00, 10, 'Limpieza de casa', 'Servicio de limpieza profunda de casa, incluye baños, cocina y habitaciones', 'nuevo', 10, 'Corte de cabello', 30),
	(RANDOM() * 156 + 1, 150.00, 10, 'Entrenamiento personal', 'Entrenamiento personalizado para lograr tus objetivos de fitness', 'usado', 10, 'Clase de baile', 120),
	(RANDOM() * 156 + 1, 200.00, 10, 'Servicio de catering', 'Servicio de catering para eventos, incluye aperitivos, plato principal y postre', 'nuevo', 10, 'Servicio de barman', 240),
	(RANDOM() * 156 + 1, 100.00, 10, 'Clases de idiomas', 'Clases de idiomas personalizadas para mejorar tu fluidez en el idioma', 'usado', 10, 'Sesión de fotos', 180),
	(RANDOM() * 156 + 1, 70.00, 10, 'Limpieza de alfombras', 'Servicio de limpieza profesional de alfombras', 'usado', 10, 'Corte de pelo masculino', 60),
	(RANDOM() * 156 + 1, 120.00, 10, 'Clases de yoga', '5 clases de yoga para principiantes', 'nuevo', 10, 'Masaje de 60 minutos', 240),
	(RANDOM() * 156 + 1, 250.00, 10, 'Servicio de catering', 'Servicio de catering para eventos y celebraciones', 'nuevo', 10, 'Sesión de coaching personal', 120),
	(RANDOM() * 156 + 1, 90.00, 10, 'Clases de música', 'Clases particulares de guitarra para principiantes', 'usado', 10, 'Sesión de fisioterapia', 30),
	(RANDOM() * 156 + 1, 200.00, 10, 'Entrenamiento personalizado', 'Entrenamiento personalizado de 5 sesiones', 'usado', 10, 'Asesoramiento legal', 180);







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

