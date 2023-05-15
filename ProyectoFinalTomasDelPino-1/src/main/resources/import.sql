--Password:1234
INSERT INTO USUARIO(id,nombre,apellidos,email, fecha_alta,password,username,is_admin) VALUES (1,'Tomás','Del Pino','tdelpino@gmail.com','2023-05-10','{bcrypt}$2a$12$EHpWeNHpOIsuiuMfQLh45Od1Cqkh1jxBOScJSfGPlnr3hB/Rtq96a','tdelpino',false);

--Password:admin
INSERT INTO USUARIO(id,nombre,apellidos,email, fecha_alta,password,username,is_admin) VALUES (2,'Tomás','Del Pino','admin@barter.com','2023-05-10','{bcrypt}$2a$12$dwnYqWMUA7VigHT3xfCmR.WQNejNtdpEOFZswZzVQnCyUyTHt0A6m','admin',true);


INSERT INTO categoria (id,nombre, descripcion) VALUES(1,'Coches', 'Categoría para artículos relacionados con coches.')

INSERT INTO categoria (id,nombre, descripcion) VALUES(2,'Motos', 'Categoría para artículos relacionados con motos.')

INSERT INTO categoria (id,nombre, descripcion) VALUES(3,'Moda', 'Categoría para artículos relacionados con moda.')

INSERT INTO categoria (id,nombre, descripcion) VALUES(4,'Inmobiliaria', 'Categoría para artículos relacionados con bienes inmuebles.')

INSERT INTO categoria (id,nombre, descripcion) VALUES(5,'Audio e imagen', 'Categoría para artículos relacionados con equipos de sonido y video.')

INSERT INTO categoria (id,nombre, descripcion) VALUES(6,'Videojuegos', 'Categoría para artículos relacionados con videojuegos.')

INSERT INTO categoria (id,nombre, descripcion) VALUES(7,'Informática', 'Categoría para artículos relacionados con tecnología e informática.')

INSERT INTO categoria (id,nombre, descripcion) VALUES(8,'Bicicletas', 'Categoría para artículos relacionados con bicicletas.')

INSERT INTO categoria (id,nombre, descripcion) VALUES(9,'Deporte', 'Categoría para artículos relacionados con deporte.')

INSERT INTO categoria (id,nombre, descripcion) VALUES(10,'Servicios', 'Categoría para servicios ofrecidos.')

 

--INSERTAR OFERTAS DE COCHES

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 15000.50, 1, 'Ford Mustang', 'Coche deportivo con acabados de lujo', 'Buen estado', 1, 'Chevrolet Camaro', 15000, 9.5, 2);

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 15000.50, 1, 'Ford Mustang', 'Coche deportivo con acabados de lujo', 'Buen estado', 1, 'Chevrolet Camaro', 15000, 9.5, 2)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 12000.00, 1, 'Volkswagen Golf', 'Coche compacto y eficiente', 'Decente', 1, 'Ford Focus', 85000, 5.8, 4)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 5000.00, 1, 'Renault Clio', 'Coche económico y fácil de conducir', 'Necesita reparación', 1, 'Ford Fiesta', 120000, 6.2, 3)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 8000.00, 1, 'Honda Civic', 'Coche fiable y eficiente', 'Buen estado', 1, 'Toyota Corolla', 95000, 7.1, 4)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 20000.00, 1, 'BMW Serie 3', 'Coche de alta gama con acabados premium', 'Decente', 1, 'Audi A4', 40000, 8.9, 4)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 15000.00, 1, 'Toyota Corolla', 'Coche híbrido con bajo consumo', 'Necesita reparación', 1, 'Honda Civic', 70000, 4.2, 4)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 10000.00, 1, 'Nissan Micra', 'Coche pequeño y ágil para la ciudad', 'Buen estado', 1, 'Renault Clio', 65000, 6.8, 5)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 25000.00, 1, 'Audi A4', 'Coche elegante y potente', 'Decente', 1, 'BMW Serie 3', 55000, 7.6, 4)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 18000.00, 1, 'Peugeot 308', 'Coche cómodo y con buena estabilidad', 'Necesita reparación', 1, 'Renault Megane', 30000, 6.3, 5)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 30000.00, 1, 'Mercedes-Benz Clase A', 'Coche de alta gama con tecnología avanzada', 'Buen estado', 1, 'Audi A3', 20000, 9.1, 5)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, num_puertas) VALUES (1, 12000.00, 1, 'Seat León', 'Coche deportivo y confortable', 'Decente', 1, 'Volkswagen Golf', 80000, 6.8, 3);



--OFERTAS DE MOTOS

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 1500.00, 2, 'Suzuki GN125', 'Moto económica y fácil de conducir', 'Decente', 2, 'Yamaha YBR125', 25000, 2.8, 125)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 2500.00, 2, 'Kawasaki ER-6F', 'Moto deportiva y cómoda para largas distancias', 'Buen estado', 2, 'Suzuki SV650', 15000, 4.5, 650)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 1000.00, 2, 'Yamaha YB100', 'Moto clásica y fiable', 'Necesitado de reparacion', 2, 'Suzuki AX100', 30000, 1.8, 100)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 5000.00, 2, 'Harley-Davidson Softail', 'Moto de alta gama con acabados premium', 'Buen estado', 2, 'Indian Scout', 8000, 11.5, 1600)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 2000.00, 2, 'BMW F650GS', 'Moto de aventura para viajes off-road', 'Decente', 2, 'Honda XR650L', 12000, 3.5, 650)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 3500.00, 2, 'Ducati Monster', 'Moto deportiva con diseño agresivo', 'Buen estado', 2, 'Triumph Street Triple', 5000, 7.5, 800)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 1200.00, 2, 'Kymco Agility City', 'Moto pequeña y ágil para la ciudad', 'Decente', 2, 'Honda PCX', 15000, 2.8, 125)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 3000.00, 2, 'Honda CBR', 'Moto deportiva de alta gama', 'Buen estado', 2, 'Yamaha R1', 20000, 6.8, 1000)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 1500.00, 2, 'Suzuki GN125', 'Moto económica y fácil de conducir', 'Decente', 2, 'Yamaha YBR125', 25000, 2.8, 125)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 2500.00, 2, 'Kawasaki ER-6F', 'Moto deportiva y cómoda para largas distancias', 'Buen estado', 2, 'Suzuki SV650', 15000, 4.5, 650)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 1000.00, 2, 'Yamaha YB100', 'Moto clásica y fiable', 'Necesitado de reparacion', 2, 'Suzuki AX100', 30000, 1.8, 100)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 5000.00, 2, 'Harley-Davidson Softail', 'Moto de alta gama con acabados premium', 'Buen estado', 2, 'Indian Scout', 8000, 11.5, 1600)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 2000.00, 2, 'BMW F650GS', 'Moto de aventura para viajes off-road', 'Decente', 2, 'Honda XR650L', 12000, 3.5, 650)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 3500.00, 2, 'Ducati Monster', 'Moto deportiva con diseño agresivo', 'Buen estado', 2, 'Triumph Street Triple', 5000, 7.5, 800)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, km, consumo, cilindrada) VALUES (1, 1200.00, 2, 'Kymco Agility City', 'Moto pequeña y ágil para la ciudad', 'Decente', 2, 'Honda PCX', 15000, 2.8, 125)



--OFERTAS DE MODA

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 50.00, 3, 'Camiseta de algodón', 'Camiseta cómoda y ligera', 'Buen estado', 3, 'Pantalón vaquero', 'S')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 120.00, 3, 'Vestido de fiesta', 'Elegante vestido para ocasiones especiales', 'Buen estado', 3, 'Tacones de plataforma', 'M')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 25.00, 3, 'Jersey de lana', 'Jersey cálido para el invierno', 'Decente', 4, 'Botas de montaña', 'XL')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 70.00, 3, 'Chaqueta de cuero', 'Chaqueta de piel para lucir estilo', 'Buen estado', 4, 'Mesa de centro', 'L')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 100.00, 3, 'Zapatos de tacón', 'Zapatos elegantes para cualquier evento', 'Buen estado', 5, 'Televisor LED', 'S')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 150.00, 3, 'Traje de baño', 'Bañador de alta calidad para la playa o la piscina', 'Buen estado', 5, 'Altavoces Bluetooth', 'M')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 20.00, 3, 'Bufanda de lana', 'Bufanda suave y cálida', 'Necesitado de reparación', 6, 'Videojuego para consola', 'S')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 60.00, 3, 'Vestido de verano', 'Vestido ligero y fresco', 'Decente', 6, 'Consola de videojuegos', 'M')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 40.00, 3, 'Polo de marca', 'Polo elegante para cualquier ocasión', 'Buen estado', 7, 'Ordenador portátil', 'L')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 80.00, 3, 'Pantalón de cuero', 'Pantalón de piel para vestir con estilo', 'Decente', 7, 'Tablet', 'M')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 90.00, 3, 'Maillot de ciclismo', 'Ropa de ciclista de alta calidad', 'Buen estado', 8, 'Bicicleta de montaña', 'XL')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 35.00, 3, 'Camiseta de deporte', 'Camiseta transpirable para hacer deporte', 'Decente', 8, 'Zapatillas de running', 'S')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 120.00, 3, 'Chándal de marca', 'Conjunto deportivo cómodo y elegante', 'Buen estado', 9, 'Mancuernas de 5 kg', 'L')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 25.00, 3, 'Calcetines deportivos', 'Calcetines transpirables para hacer deporte', 'Decente', 9, 'Balón de fútbol', 'M')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, talla) VALUES (1, 50.00, 3, 'Paquete de clases de yoga', 'Clases de yoga para mejorar la salud', 'Buen estado', 10, 'Clases de meditación', 'M')



--OFERTAS DE INMOBILIARIA

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 200000.00, 4, 'Apartamento en el centro', 'Piso amplio y luminoso en el centro de la ciudad', 'Activa', 4, 'Casa en el campo', 120, 3, 2, 'Calle Mayor 12')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 500000.00, 4, 'Casa de lujo con piscina', 'Casa con amplio jardín y piscina privada', 'Activa', 4, 'Piso en la playa', 300, 4, 3, 'Calle del Sol 24')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 150000.00, 4, 'Piso moderno en el barrio residencial', 'Piso de nueva construcción en el barrio residencial', 'Activa', 4, 'Casa en la montaña', 80, 2, 1, 'Calle de la Luna 6')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 350000.00, 4, 'Ático con terraza', 'Ático con amplia terraza con vistas al mar', 'Activa', 4, 'Casa en el campo', 200, 3, 2, 'Calle de las Flores 8')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 80000.00, 4, 'Piso a reformar en el centro', 'Piso con muchas posibilidades para reformar en el centro', 'Activa', 4, 'Casa con piscina', 90, 2, 1, 'Calle de la Paz 22')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 450000.00, 4, 'Casa adosada en urbanización', 'Casa adosada en urbanización con piscina comunitaria', 'Activa', 4, 'Piso con vistas al mar', 150, 4, 2, 'Calle del Mar 15')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 200000.00, 4, 'Piso reformado en el casco antiguo', 'Piso reformado en edificio histórico en el casco antiguo', 'Activa', 4, 'Casa en la playa', 100, 2, 1, 'Calle de los Olivos 10')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 280000.00, 4, 'Casa con jardín en la montaña', 'Casa con amplio jardín y vistas a la montaña', 'Activa', 4, 'Piso en el centro', 150, 3, 2, 'Calle del Monte 3')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 120000.00, 4, 'Piso para reformar en el barrio histórico', 'Piso para reformar en el barrio histórico con encanto', 'Activa', 4, 'Casa con jardín en la ciudad', 80, 2, 1, 'Calle del Castillo 2')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, m2, num_habitaciones, num_banos, direccion) VALUES (1, 60000.00, 4, 'Piso económico en la periferia', 'Piso económico en la periferia de la ciudad', 'Activa', 4, 'Casa en el campo', 70, 2, 1, 'Calle de la Sierra 12')



--OFERTAS DE AUDIO E IMAGEN

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 150.00, 5, 'Cámara digital Sony', 'Cámara digital Sony en perfectas condiciones', 'nuevo', 5, 'Televisor de 32 pulgadas Samsung')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 90.00, 5, 'Altavoces Bose', 'Altavoces Bose en excelente estado', 'usado', 5, 'Proyector HD Epson')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 200.00, 5, 'Cámara réflex Canon EOS', 'Cámara réflex Canon EOS en perfecto estado', 'usado', 5, 'Home cinema LG')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 80.00, 5, 'Auriculares inalámbricos JBL', 'Auriculares inalámbricos JBL en buen estado', 'usado', 5, 'TV Box Xiaomi')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 120.00, 5, 'Cámara de fotos Fujifilm', 'Cámara de fotos Fujifilm en buen estado', 'usado', 5, 'Barra de sonido LG')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 70.00, 5, 'Altavoz Bluetooth JBL', 'Altavoz Bluetooth JBL en buen estado', 'usado', 5, 'TV LG de 42 pulgadas')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 130.00, 5, 'Cámara GoPro Hero 7', 'Cámara GoPro Hero 7 en excelente estado', 'como nuevo', 5, 'Barra de sonido Samsung')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 90.00, 5, 'Auriculares inalámbricos Sony', 'Auriculares inalámbricos Sony en buen estado', 'usado', 5, 'Proyector HD Optoma')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 180.00, 5, 'Televisor LED LG de 55 pulgadas', 'Televisor LED LG de 55 pulgadas en buen estado', 'usado', 5, 'Home cinema Sony')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 220.00, 5, 'Cámara réflex Nikon D5300', 'Cámara réflex Nikon D5300 en excelente estado', 'como nuevo', 5, 'Proyector 4K Epson')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 110.00, 5, 'Altavoces inalámbricos Sonos', 'Altavoces inalámbricos Sonos en buen estado', 'usado', 5, 'TV LG de 48 pulgadas')



--OFERTAS DE VIDEOJUEGOS

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 250.50, 6, 'FIFA 22 para Xbox One', 'Nuevo y precintado', 'Nuevo', 4, 'Mesa de centro')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 55.00, 6, 'Resident Evil Village para PS5', 'En buen estado', 'Usado', 5, 'Altavoz portátil')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 120.00, 6, 'Mario Kart 8 Deluxe para Nintendo Switch', 'Como nuevo', 'Usado', 6, 'Mando Pro de Nintendo Switch')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 15.99, 6, 'Assassins Creed para PC', 'Código de descarga', 'Nuevo', 7, 'Teclado para gaming')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 79.99, 6, 'The Legend of Zelda: Breath of the Wild para Nintendo Switch', 'Edición especial', 'Nuevo', 8, 'Bicicleta de montaña')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 50.00, 6, 'Overwatch para PS4', 'Caja original y disco en perfecto estado', 'Usado', 9, 'Raqueta de tenis')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 20.00, 6, 'Halo: The Master Chief Collection para Xbox One', 'En buen estado', 'Usado', 10, 'Servicio de limpieza de hogar')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 29.99, 6, 'Call of Duty: Black Ops Cold War para PC', 'Código de descarga', 'Nuevo', 3, 'Camiseta deportiva')



--OFERTAS DE INFORMÁTICA

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 400.00, 7, 'Macbook Air', 'Macbook Air en excelente estado', 'usado', 7, 'iPad Pro')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 150.00, 7, 'Monitor LG 24"', 'Monitor LG 24" en perfecto estado', 'nuevo', 7, 'Webcam Logitech')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 200.00, 7, 'Impresora HP', 'Impresora HP en perfecto estado', 'usado', 7, 'Router Wifi')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 80.00, 7, 'Teclado y mouse inalámbricos', 'Teclado y mouse inalámbricos en buen estado', 'usado', 7, 'Disco duro externo')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 120.00, 7, 'Altavoces para PC', 'Altavoces para PC en buen estado', 'usado', 7, 'Ratón para gaming')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 300.00, 7, 'MacBook Pro 2019', 'MacBook Pro en excelentes condiciones', 'usado', 10, 'Clases particulares de programación')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 150.00, 7, 'Monitor LG 24"', 'Monitor LG en perfecto estado', 'nuevo', 10, 'Asesoramiento en marketing digital')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 200.00, 7, 'Tablet Samsung Galaxy Tab S6 Lite', 'Tablet Samsung en buenas condiciones', 'usado', 10, 'Desarrollo de página web')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 120.00, 7, 'Impresora HP DeskJet 3720', 'Impresora HP en buen estado', 'usado', 10, 'Servicio de edición de video')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 250.00, 7, 'Portátil Acer Aspire 5', 'Portátil Acer en excelente estado', 'usado', 10, 'Mantenimiento de sistemas informáticos')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 180.00, 7, 'Ratón inalámbrico Logitech', 'Ratón Logitech en perfectas condiciones', 'nuevo', 10, 'Asesoramiento en estrategia de negocio')



--OFERTAS DE BICICLETAS

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 250.00, 8, 'Bicicleta de montaña Scott', 'Bicicleta de montaña Scott en buen estado', 'usado', 8, 'Bicicleta de carretera Pinarello', 'Montaña', 21)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 300.00, 8, 'Bicicleta de carretera Trek', 'Bicicleta de carretera Trek en excelentes condiciones', 'usado', 8, 'Bicicleta plegable Dahon', 'Carretera', 18)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 150.00, 8, 'Bicicleta urbana Orbea', 'Bicicleta urbana Orbea en buen estado', 'usado', 8, 'Bicicleta de montaña Giant', 'Urbana', 7)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 200.00, 8, 'Bicicleta de carretera Bianchi', 'Bicicleta de carretera Bianchi en excelentes condiciones', 'usado', 8, 'Bicicleta de montaña Specialized', 'Carretera', 21)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 180.00, 8, 'Bicicleta de montaña Cannondale', 'Bicicleta de montaña Cannondale en buen estado', 'usado', 8, 'Bicicleta plegable Brompton', 'Montaña', 18)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 200.00, 8, 'Bicicleta de carretera BH', 'Bicicleta de carretera BH en buen estado', 'usado', 8, 'Bicicleta de montaña Scott', 'carretera', 18)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 300.00, 8, 'Bicicleta de montaña Orbea', 'Bicicleta de montaña Orbea en perfecto estado', 'nuevo', 8, 'Bicicleta de paseo vintage', 'montaña', 21)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 150.00, 8, 'Bicicleta de paseo Cruiser', 'Bicicleta de paseo Cruiser en buenas condiciones', 'usado', 8, 'Bicicleta BMX', 'paseo', 6)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 180.00, 8, 'Bicicleta de carretera Mérida', 'Bicicleta de carretera Mérida en buen estado', 'usado', 8, 'Bicicleta de montaña Trek', 'carretera', 24)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca,tipo_bici,num_marchas) VALUES (1, 250.00, 8, 'Bicicleta de montaña Giant', 'Bicicleta de montaña Giant en excelente estado', 'usado', 8, 'Bicicleta plegable Brompton', 'montaña', 18)



--OFERTAS DE DEPORTE

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 100.00, 9, 'Raqueta de tenis', 'Raqueta de tenis en buen estado', 'usado', 9, 'Mochila para trekking')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 50.00, 9, 'Balón de fútbol', 'Balón de fútbol en buen estado', 'usado', 9, 'Botas de fútbol')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 80.00, 9, 'Tabla de skate', 'Tabla de skate con poco uso', 'usado', 9, 'Patines en línea')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 150.00, 9, 'Tabla de surf', 'Tabla de surf en buen estado', 'usado', 9, 'Traje de neopreno')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 120.00, 9, 'Bicicleta estática', 'Bicicleta estática en buen estado', 'usado', 9, 'Reloj deportivo')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 50.00, 9, 'Pelota de fútbol', 'Pelota de fútbol en buen estado', 'usado', 9, 'Zapatillas de running Nike')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 80.00, 9, 'Raqueta de tenis', 'Raqueta de tenis en buen estado', 'usado', 9, 'Balón de baloncesto')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 120.00, 9, 'Tabla de snowboard', 'Tabla de snowboard en buen estado', 'usado', 9, 'Patines en línea')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 70.00, 9, 'Bicicleta estática', 'Bicicleta estática en buen estado', 'usado', 9, 'Pesas de musculación')

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca) VALUES (1, 100.00, 9, 'Tabla de surf', 'Tabla de surf en buen estado', 'usado', 9, 'Guantes de boxeo')



--OFERTAS DE SERVICIOS

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 50.00, 10, 'Masaje relajante', 'Masaje de cuerpo completo para relajar los músculos y reducir el estrés', 'usado', 10, 'Clase de yoga', 'Certificado de Masajista Profesional' ,60)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 80.00, 10, 'Limpieza de casa', 'Servicio de limpieza profunda de casa, incluye baños, cocina y habitaciones', 'nuevo', 10, 'Corte de cabello', 'Barbero profesional desde los 16 años',30)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 150.00, 10, 'Entrenamiento personal', 'Entrenamiento personalizado para lograr tus objetivos de fitness', 'usado', 10, 'Clase de baile', 'Licenciada en Bellas Artes',120)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 200.00, 10, 'Servicio de catering', 'Servicio de catering para eventos, incluye aperitivos, plato principal y postre', 'nuevo', 10, 'Servicio de barman', 'CATERING HISPALENSE - FUNDADO EN 2013',240)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 100.00, 10, 'Clases de idiomas', 'Clases de idiomas personalizadas para mejorar tu fluidez en el idioma', 'usado', 10, 'Sesión de fotos', 'Licenciada en filología inglesa',180)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 70.00, 10, 'Limpieza de alfombras', 'Servicio de limpieza profesional de alfombras', 'usado', 10, 'Corte de pelo masculino', 'Barbero profesional en Salesianos San Pedro',60)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 120.00, 10, 'Clases de yoga', '5 clases de yoga para principiantes', 'nuevo', 10, 'Masaje de 60 minutos', 'Masasjista Certificada desde 2012',240)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 250.00, 10, 'Servicio de catering', 'Servicio de catering para eventos y celebraciones', 'nuevo', 10, 'Sesión de coaching personal', 'CATERING BRAULIO - El catering más travieso',120)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 90.00, 10, 'Clases de música', 'Clases particulares de guitarra para principiantes', 'usado', 10, 'Sesión de fisioterapia', 'Máster en fisioterapia deportiva',30)

INSERT INTO oferta (remitente_id, valor_estimado, cat_id, nombre, descripcion, estado, remitente_busca_cat_id, remitente_busca, titulacion, duracion) VALUES  (1, 200.00, 10, 'Entrenamiento personalizado', 'Entrenamiento personalizado de 5 sesiones', 'usado', 10, 'Asesoramiento legal', 'TAFAD',180)