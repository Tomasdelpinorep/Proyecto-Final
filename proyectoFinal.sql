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
    isAdmin BOOLEAN NOT NULL
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
    ('Motor y Accesorios', 'Categoría para productos relacionados con motores y sus accesorios, desde motores de barcos hasta motores de motocicletas y repuestos.'),
    ('Moda y Accesorios', 'Categoría para productos relacionados con la moda y los accesorios, desde ropa de alta costura hasta joyas y accesorios de moda.'),
    ('Inmobiliaria', 'Categoría para productos relacionados con el mercado inmobiliario, desde apartamentos y casas hasta terrenos y propiedades comerciales.'),
    ('TV, Audio y Foto', 'Categoría para productos relacionados con televisores, sistemas de audio y fotografía, desde televisores de alta definición hasta cámaras y accesorios de fotografía.'),
    ('Móviles y Telefonía', 'Categoría para productos relacionados con teléfonos móviles y telefonía, desde smartphones de última generación hasta accesorios para teléfonos móviles y servicios telefónicos.'),
    ('Informática y Electrónica', 'Categoría para productos relacionados con la informática y la electrónica, desde ordenadores y componentes hasta accesorios y dispositivos electrónicos.'),
    ('Deporte y Ocio', 'Categoría para productos relacionados con el deporte y el ocio, desde equipamiento deportivo hasta juegos y juguetes para el tiempo libre.'),
    ('Bicicletas', 'Categoría para productos relacionados con las bicicletas, desde bicicletas de carretera hasta bicicletas de montaña y accesorios para bicicletas.'),
    ('Consolas y Videojuegos', 'Categoría para productos relacionados con consolas y videojuegos, desde consolas de juegos hasta juegos y accesorios para videojuegos.'),
    ('Hogar y Jardín', 'Categoría para productos relacionados con el hogar y el jardín, desde muebles y decoración del hogar hasta herramientas y accesorios de jardinería.'),
    ('Electrodomésticos', 'Categoría para productos relacionados con electrodomésticos, desde lavadoras y refrigeradores hasta aspiradoras y pequeños electrodomésticos.'),
    ('Cine, Libros y Música', 'Categoría para productos relacionados con el entretenimiento, desde películas y libros hasta música y accesorios para entretenimiento.'),
    ('Niños y Bebés', 'Categoría para productos relacionados con niños y bebés, desde ropa y juguetes para niños hasta artículos de puericultura y accesorios para bebés.'),
    ('Coleccionismo', 'Categoría para productos relacionados con el coleccionismo, desde sellos y monedas hasta figuras de acción y artículos de colección.'),
	 ('Construcción y reformas', 'Categoría para productos relacionados con la construcción y las reformas, , desde materiales de construcción hasta herramientas y accesorios para reformas.'),
	('Industria y Agricultura', 'Categoría para productos relacionados con la industria y la agricultura, desde maquinaria y equipos industriales hasta suministros y herramientas agrícolas.'),
	('Servicios', 'Categoría para servicios relacionados con diversas áreas, desde servicios de limpieza hasta servicios de diseño y programación de software.');
	
CREATE TABLE intercambio(
	
)

CREATE TABLE oferta(
	remitente INT,
	offerId INT,
	valor_estimado NUMERIC(10,2) NOT NULL,
	categoria SMALLINT NOT NULL,
	nombre_producto VARCHAR(50) NOT NULL,
	descripcion TEXT,
	estado VARCHAR(30),
	remitente_busca_cat SMALLINT NOT NULL,
	remitente_busca TEXT,
	
	CONSTRAINT pk_oferta PRIMARY KEY (remitente,offerId)
);

CREATE TABLE coches(
	categoryId SMALLINT,
	km NUMERIC (10,2),
	consumo NUMERIC (4,2),
	num_puertas SMALLINT,
	
	CONSTRAINT pk_coches PRIMARY KEY (categoryId,remitente, offerId)
)
INHERITS (oferta);

INSERT INTO Coches (categoryId, remitente, offerId, valor_estimado, remitente_busca, nombre_producto, descripcion, estado, categoria, remitente_busca_cat, km, consumo, num_puertas) VALUES
(1,FLOOR(RANDOM() * 156) + 1, 100, 15000.00, 'busco coche deportivo', 'Porsche 911', 'Excelente estado, recién pintado, con mantenimiento al día.', 'Usado', 1, 1, 50000, 8.5, 2),
(1,FLOOR(RANDOM() * 156) + 1, 101, 7500.00, 'busco coche pequeño y económico', 'Renault Clio', 'Buen estado, bajo consumo, ideal para ciudad.', 'Usado', 1, 1, 120000, 5.2, 3),
(1,FLOOR(RANDOM() * 156) + 1, 102, 45000.00, 'busco coche familiar y espacioso', 'Ford Galaxy', 'Excelente estado, 7 plazas, con navegador y cámara de retroceso.', 'Usado', 1, 1, 80000, 7.9, 5),
(1,FLOOR(RANDOM() * 156) + 1, 103, 20000.00, 'busco coche para trabajo', 'Ford Transit', 'Excelente estado, con estanterías y espacio de carga amplio.', 'Usado', 1, 1, 120000, 9.2, 4),
(1,FLOOR(RANDOM() * 156) + 1, 104, 35000.00, 'busco coche para aventuras', 'Jeep Wrangler', 'Excelente estado, ideal para salir de ruta.', 'Usado', 1, 1, 60000, 12.0, 2),
(1,FLOOR(RANDOM() * 156) + 1, 105, 18000.00, 'busco coche para ciudad', 'Fiat 500', 'Excelente estado, bajo consumo, ideal para moverse por la ciudad.', 'Usado', 1, 1, 90000, 4.8, 3),
(1,FLOOR(RANDOM() * 156) + 1, 106, 50000.00, 'busco coche de lujo', 'Mercedes-Benz S-Class', 'Excelente estado, con asientos de cuero y todas las comodidades.', 'Usado', 1, 1, 45000, 10.5, 4),
(1,FLOOR(RANDOM() * 156) + 1, 107, 12000.00, 'busco coche pequeño y ágil', 'Toyota Yaris', 'Buen estado, bajo consumo, ideal para ciudad.', 'Usado', 1, 1, 100000, 5.0, 3),
(1,FLOOR(RANDOM() * 156) + 1, 108, 8000.00, 'busco coche económico', 'Nissan Micra', 'Buen estado, bajo consumo, ideal para ciudad.', 'Usado', 1, 1,150000, 4.5, 3);

CREATE TABLE motos(
	categoryId SMALLINT,
	km NUMERIC (10,2),
	consumo NUMERIC (4,2),
	cilindrada VARCHAR(20),
	
	CONSTRAINT pk_motos PRIMARY KEY (categoryId,remitente, offerId)
)INHERITS (oferta);

INSERT INTO Motos(categoryId, remitente, offerId, valor_estimado, remitente_busca, nombre_producto, descripcion, estado, categoria, remitente_busca_cat, km, consumo, cilindrada) 
VALUES (2, FLOOR(RANDOM() * 156) + 1, 109, 1500.00, 'Busco una moto deportiva', 'Yamaha R1', 'Moto deportiva Yamaha R1 en excelente estado', 'Usado', 2, 2, 30000, 5.6, 1000),
       (2, FLOOR(RANDOM() * 156) + 1, 110, 2000.00, 'Busco una moto para viajar', 'BMW R1200GS', 'Moto BMW R1200GS con accesorios para viajes', 'Usado', 2, 2, 40000, 4.2, 1200),
       (2, FLOOR(RANDOM() * 156) + 1, 111, 2500.00, 'Busco una moto para ciudad', 'Honda CBR250R', 'Moto Honda CBR250R en buen estado', 'Usado', 2, 2, 20000, 3.8, 250),
       (2, FLOOR(RANDOM() * 156) + 1, 112, 1800.00, 'Busco una moto para pasear', 'Suzuki SV650', 'Moto Suzuki SV650 con accesorios deportivos', 'Usado', 2, 2, 35000, 4.0, 650),
       (2, FLOOR(RANDOM() * 156) + 1, 113, 3200.00, 'Busco una moto para competir', 'Kawasaki Ninja ZX-6R', 'Moto Kawasaki Ninja ZX-6R en perfectas condiciones', 'Usado', 2, 2, 25000, 5.0, 600),
       (2, FLOOR(RANDOM() * 156) + 1, 114, 2800.00, 'Busco una moto para pasear', 'Harley Davidson Softail', 'Moto Harley Davidson Softail en excelente estado', 'Usado', 2, 2, 40000, 5.5, 1600),
       (2, FLOOR(RANDOM() * 156) + 1, 115, 2200.00, 'Busco una moto para la ciudad', 'KTM Duke 390', 'Moto KTM Duke 390 en buen estado', 'Usado', 2, 2, 15000, 3.5, 390),
       (2, FLOOR(RANDOM() * 156) + 1, 116, 1500.00, 'Busco una moto de segunda mano', 'Suzuki GSX-R600', 'Moto Suzuki GSX-R600 en perfecto estado', 'Usado', 2, 2, 28000, 4.5, 600),
       (2, FLOOR(RANDOM() * 156) + 1, 117, 1900.00, 'Busco una moto para la ciudad', 'Yamaha MT-03', 'Moto Yamaha MT-03 en excelente estado', 'Usado', 2, 2, 20000, 3.8, 300);

CREATE TABLE motor_y_accesorios(
	categoryId SMALLINT,
	
	CONSTRAINT pk_motor_y_accesorios PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

INSERT INTO motor_y_accesorios (categoryId, remitente, offerId, valor_estimado, remitente_busca, nombre_producto, descripcion, estado, categoria, remitente_busca_cat)
VALUES
(3, FLOOR(RANDOM() * 156) + 1, 118, 5000, 'Busco motor diesel', 'Motor diesel con modelo XYZ', 'Nuevo en su caja', 'Nuevo', 1, FLOOR(RANDOM() * 17) + 3),
(3, FLOOR(RANDOM() * 156) + 1, 119, 2500, 'Necesito accesorios para motor', 'Accesorios para motor de modelo ABC', 'Usados pero en buen estado', 'Usado', 2, FLOOR(RANDOM() * 17) + 3),
(3, FLOOR(RANDOM() * 156) + 1, 120, 10000, 'Busco motor eléctrico para bote', 'Motor eléctrico modelo LMN', 'Nuevo, en su caja', 'Nuevo', 3, FLOOR(RANDOM() * 17) + 3),
(3, FLOOR(RANDOM() * 156) + 1, 121, 7500, 'Vendo motor de gasolina', 'Motor de gasolina de modelo DEF', 'Usado en buen estado', 'Usado', 4, FLOOR(RANDOM() * 17) + 3),
(3, FLOOR(RANDOM() * 156) + 1, 122, 3000, 'Busco repuestos para motor', 'Repuestos para motor modelo XYZ', 'Usados pero en buen estado', 'Usado', 5, FLOOR(RANDOM() * 17) + 3),
(3, FLOOR(RANDOM() * 156) + 1, 123, 15000, 'Vendo motor fuera de borda', 'Motor fuera de borda modelo GHI', 'Usado pero en buen estado', 'Usado', 6, FLOOR(RANDOM() * 17) + 3),
(3, FLOOR(RANDOM() * 156) + 1, 124, 8000, 'Busco motor para bote', 'Motor para bote modelo JKL', 'Nuevo, en su caja', 'Nuevo', 7, FLOOR(RANDOM() * 17) + 3),
(3, FLOOR(RANDOM() * 156) + 1, 125, 12000, 'Vendo motor eléctrico de alto rendimiento', 'Motor eléctrico de alto rendimiento modelo MNO', 'Usado pero en excelentes condiciones', 'Usado', 8, FLOOR(RANDOM() * 17) + 3);

CREATE TABLE moda_y_accesorios(
	categoryId SMALLINT,
	talla VARCHAR(4),
	
	CONSTRAINT pk_moda_y_accesorios PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

INSERT INTO moda_y_accesorios (categoryId, remitente, offerId, valor_estimado, remitente_busca, nombre_producto, descripcion, estado, categoria, talla)
VALUES 
    (4, floor(random()*156+1), 126, 50.00, 'Zapatos deportivos', 'Zapatillas Nike', 'Zapatillas Nike Air Max 90 para hombre', 'Nuevo', floor(random()*17+3), 'XL'),
    (4, floor(random()*156+1), 127, 25.00, 'Bolso', 'Bolso de cuero', 'Bolso de cuero marrón para hombre', 'Usado', floor(random()*17+3), 'L'),
    (4, floor(random()*156+1), 128, 30.00, 'Zapatillas de running', 'Zapatillas Adidas', 'Zapatillas de running Adidas UltraBoost para hombre', 'Nuevo', floor(random()*17+3), 'M'),
    (4, floor(random()*156+1), 129, 15.00, 'Cinturón', 'Cinturón de cuero', 'Cinturón de cuero negro para mujer', 'Usado', floor(random()*17+3), 'S'),
    (4, floor(random()*156+1), 130, 75.00, 'Reloj inteligente', 'Apple Watch', 'Reloj inteligente Apple Watch Series 6', 'Nuevo', floor(random()*17+3), 'XL'),
    (4, floor(random()*156+1), 131, 40.00, 'Gafas de sol', 'Gafas Oakley', 'Gafas de sol Oakley Frogskins para hombre', 'Nuevo', floor(random()*17+3), 'M'),
    (4, floor(random()*156+1), 132, 55.00, 'Camisa', 'Camisa de vestir', 'Camisa de vestir blanca para hombre', 'Nuevo', floor(random()*17+3), 'S'),
    (4, floor(random()*156+1), 133, 10.00, 'Calcetines', 'Calcetines deportivos', 'Calcetines deportivos para hombre', 'Nuevo', floor(random()*17+3), 'L'),
    (4, floor(random()*156+1), 134, 120.00, 'Chaqueta', 'Chaqueta de cuero', 'Chaqueta de cuero negra para mujer', 'Nuevo', floor(random()*17+3), 'XL'),
    (4, floor(random()*156+1), 135, 50.00, 'Sombrero', 'Sombrero de lana', 'Sombrero de lana gris para hombre', 'Usado', floor(random()*17+3), 'M'),
    (4, floor(random()*156+1), 136, 35.00, 'Pulsera', 'Pulsera de plata', 'Pulsera de plata para mujer', 'Nuevo', floor(random()*17+3), 'S');

CREATE TABLE inmobiliaria(
	categoryId SMALLINT,
	
	CONSTRAINT pk_inmobiliaria PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE tv_audio_y_foto(
	categoryId SMALLINT,
	
	CONSTRAINT pk_tv_audio_y_foto PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE moviles_y_telefonia(
	categoryId SMALLINT,
	
	CONSTRAINT pk_moviles_y_telefonia PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE deporte_y_ocio(
	categoryId SMALLINT,
	
	CONSTRAINT pk_deporte_y_ocio PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE bicicletas(
	categoryId SMALLINT,
	
		CONSTRAINT pk_bicicletas PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE consolas_y_videojuegos(
	categoryId SMALLINT,
	
	CONSTRAINT pk_consolas_y_videojuegos PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE hogar_y_jardin(
	categoryId SMALLINT,
	
	CONSTRAINT pk_hogar_y_jardin PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE electrodomesticos(
	categoryId SMALLINT,
	
	CONSTRAINT pk_electrodomesticos PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE cine_libros_y_musica(
	categoryId SMALLINT,
	
	CONSTRAINT pk_cine_libros_y_musica PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE ninos_y_bebes(
	categoryId SMALLINT,
	
	CONSTRAINT pk_ninos_y_bebes PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE coleccionismo(
	categoryId SMALLINT,
	
	CONSTRAINT pk_coleccionismo PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE construccion_y_reformas(
	categoryId SMALLINT,
	
	CONSTRAINT pk_construccion_y_reformas PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE industria_y_agricultura(
	categoryId SMALLINT,
	
	CONSTRAINT pk_industria_y_agricultura PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);

CREATE TABLE servivios(
	categoryId SMALLINT,
	reviews NUMERIC (2,1),
	TIEMPO SMALLINT,
	
	CONSTRAINT pk_servicios PRIMARY KEY (categoryId, remitente, offerId)
)INHERITS (oferta);