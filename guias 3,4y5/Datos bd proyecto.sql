use TiendaLacteos;

insert into Departamentos values
--	ID_Departamento, Departamento, Pais 
	('AH', 'Ahuachapán', 'El Salvador'),
	('CA', 'Cabañas', 'El Salvador'),
	('CH', 'Chalatenango', 'El Salvador'),
	('CU', 'Cuscatlán', 'El Salvador'),
	('LL', 'La Libertad', 'El Salvador'),
	('LP', 'La Paz', 'El Salvador'),
	('LU', 'La Unión', 'El Salvador'),
	('MO', 'Morazán', 'El Salvador'),
	('SA', 'Santa Ana', 'El Salvador'),
	('SM', 'San Miguel', 'El Salvador'),
	('SS', 'San Salvador', 'El Salvador'),
	('SV', 'San Vicente', 'El Salvador'),
	('SO', 'Sonsonate', 'El Salvador'),
	('US', 'Usulután', 'El Salvador');

insert into Municipios values
--	ID_Municipio, Municipio, ID_Departamento
	('AHN', 'Ahuachapán Norte', 'AH'),
	('AHC', 'Ahuachapán Centro', 'AH'),
	('AHS', 'Ahuachapán Sur', 'AH'),
	('CAE', 'Cabañas Este', 'CA'),
	('CAO', 'Cabañas Oeste', 'CA'),
	('CHN', 'Chalatenango Norte', 'CH'),
	('CHC', 'Chalatenango Centro', 'CH'),
	('CHS', 'Chalatenango Sur', 'CH'),
	('CUN', 'Cuscatlán Norte', 'CU'),
	('CUS', 'Cuscatlán Sur', 'CU'),
	('LLN', 'La Libertad Norte', 'LL'),
	('LLC', 'La Libertad Centro', 'LL'),
	('LLO', 'La Libertad Oeste', 'LL'),
	('LLE', 'La Libertad Este', 'LL'),
	('LLS', 'La Libertad Sur', 'LL'),
	('LLT', 'La Libertad Costa', 'LL'),
	('LPO', 'La Paz Oeste', 'LP'),
	('LPC', 'La Paz Centro', 'LP'),
	('LPE', 'La Paz Este', 'LP'),
	('LUN', 'La Unión Norte', 'LU'),
	('LUS', 'La Unión Sur', 'LU'),
	('MON', 'Morazán Norte', 'MO'),
	('MOS', 'Morazán Sur', 'MO'),
	('SAN', 'Santa Ana Norte', 'SA'),
	('SAC', 'Santa Ana Centro', 'SA'),
	('SAE', 'Santa Ana Este', 'SA'),
	('SAO', 'Santa Ana Oeste', 'SA'),
	('SMN', 'San Miguel Norte', 'SM'),
	('SMC', 'San Miguel Centro', 'SM'),
	('SMO', 'San Miguel Oeste', 'SM'),
	('SSN', 'San Salvador Norte', 'SS'),
	('SSO', 'San Salvador Oeste', 'SS'),
	('SSE', 'San Salvador Este', 'SS'),
	('SSC', 'San Salvador Centro', 'SS'),
	('SSS', 'San Salvador Sur', 'SS'),
	('SVN', 'San Vicente Norte', 'SV'),
	('SVS', 'San Vicente Sur', 'SV'),
	('SON', 'Sonsonate Norte', 'SO'),
	('SOC', 'Sonsonate Centro', 'SO'),
	('SOE', 'Sonsonate Este', 'SO'),
	('SOO', 'Sonsonate Oeste', 'SO'),
	('USN', 'Usulután Norte', 'US'),
	('USE', 'Usulután Este', 'US'),
	('USO', 'Usulután Oeste', 'US');

insert into Distritos values
-- ID_Distrito, Distrito, ID_Municipio
-- Ahuachapan
	('AHN01', 'Atiquizaya', 'AHN'),
	('AHN02', 'El Refugio', 'AHN'),
	('AHN03', 'San Lorenzo', 'AHN'),
	('AHN04', 'Turín', 'AHN'),
	('AHC01', 'Ahuachapán', 'AHC'),
	('AHC02', 'Apaneca', 'AHC'),
	('AHC03', 'Concepción de Ataco', 'AHC'),
	('AHC04', 'Tacuba', 'AHC'),
	('AHS01', 'Guaymango', 'AHS'),
	('AHS02', 'Jujutla', 'AHS'),
	('AHS03', 'San Francisco Menéndez', 'AHS'),
	('AHS04', 'San Pedro Puxtla', 'AHS'),
-- Cabañas
	('CAE01', 'Sensuntepeque', 'CAE'),
	('CAE02', 'Victoria', 'CAE'),
	('CAE03', 'Dolores', 'CAE'),
	('CAE04', 'Guacotecti', 'CAE'),
	('CAE05', 'San Isidro', 'CAE'),
	('CAO01', 'Ilobasco', 'CAO'),
	('CAO02', 'Tejutepeque', 'CAO'),
	('CAO03', 'Jutiapa', 'CAO'),
	('CAO04', 'Cinquera', 'CAO'),
-- Chalatenango
	('CHN01', 'La Palma', 'CHN'),
	('CHN02', 'Citalá', 'CHN'),
	('CHN03', 'San Ignacio', 'CHN'),
	('CHC01', 'Nueva Concepción', 'CHC'),
	('CHC02', 'Tejutla', 'CHC'),
	('CHC03', 'La Reina', 'CHC'),
	('CHC04', 'Agua Caliente', 'CHC'),
	('CHC05', 'Dulce Nombre de María', 'CHC'),
	('CHC06', 'El Paraíso', 'CHC'),
	('CHC07', 'San Fernando', 'CHC'),
	('CHC08', 'San Francisco Morazán', 'CHC'),
	('CHC09', 'San Rafael', 'CHC'),
	('CHC10', 'Santa Rita', 'CHC'),
	('CHS01', 'Chalatenango', 'CHS'),
	('CHS02', 'Arcatao', 'CHS'),
	('CHS03', 'Azacualpa', 'CHS'),
	('CHS04', 'Comalapa', 'CHS'),
	('CHS05', 'Concepción Quezaltepeque', 'CHS'),
	('CHS06', 'El Carrizal', 'CHS'),
	('CHS07', 'La Laguna', 'CHS'),
	('CHS08', 'Las Vueltas', 'CHS'),
	('CHS09', 'Nombre de Jesús', 'CHS'),
	('CHS10', 'Nueva Trinidad', 'CHS'),
	('CHS11', 'Ojos de Agua', 'CHS'),
	('CHS12', 'Potonico', 'CHS'),
	('CHS13', 'San Antonio de La Cruz', 'CHS'),
	('CHS14', 'San Antonio Los Ranchos', 'CHS'),
	('CHS15', 'San Francisco Lempa', 'CHS'),
	('CHS16', 'San Isidro Labrador', 'CHS'),
	('CHS17', 'San José Cancasque', 'CHS'),
	('CHS18', 'San Miguel de Mercedes', 'CHS'),
	('CHS19', 'San José Las Flores', 'CHS'),
	('CHS20', 'San Luis del Carmen', 'CHS'),
-- Cuscatlán
	('CUN01', 'Suchitoto', 'CUN'),
	('CUN02', 'San José Guayabal', 'CUN'),
	('CUN03', 'Oratorio de Concepción', 'CUN'),
	('CUN04', 'San Bartolomé Perulapía', 'CUN'),
	('CUN05', 'San Pedro Perulapán', 'CUN'),
	('CUS01', 'Cojutepeque', 'CUS'),
	('CUS02', 'San Rafael Cedros', 'CUS'),
	('CUS03', 'Candelaria', 'CUS'),
	('CUS04', 'Monte San Juan', 'CUS'),
	('CUS05', 'El Carmen', 'CUS'),
	('CUS06', 'San Cristobal', 'CUS'),
	('CUS07', 'Santa Cruz Michapa', 'CUS'),
	('CUS08', 'San Ramón', 'CUS'),
	('CUS09', 'El Rosario', 'CUS'),
	('CUS10', 'Santa Cruz Analquito', 'CUS'),
	('CUS11', 'Tenancingo', 'CUS'),
-- La Libertad
	('LLN01', 'Quezaltepeque', 'LLN'),
	('LLN02', 'San Matías', 'LLN'),
	('LLN03', 'San Pablo Tacachico', 'LLN'),
	('LLC01', 'San Juan Opico', 'LLC'),
	('LLC02', 'Ciudad Arce', 'LLC'),
	('LLO01', 'Colón', 'LLO'),
	('LLO02', 'Jayaque', 'LLO'),
	('LLO03', 'Sacacoyo', 'LLO'),
	('LLO04', 'Tepecoyo', 'LLO'),
	('LLO05', 'Talnique', 'LLO'),
	('LLE01', 'Antiguo Cuscatlán', 'LLE'),
	('LLE02', 'Huizúcar', 'LLE'),
	('LLE03', 'Nuevo Cuscatlán', 'LLE'),
	('LLE04', 'San José Villanueva', 'LLE'),
	('LLE05', 'Zaragoza', 'LLE'),
	('LLS01', 'Comasagua', 'LLS'),
	('LLS02', 'Santa Tecla', 'LLS'),
	('LLT01', 'Chiltiupán', 'LLT'),
	('LLT02', 'Jicalapa', 'LLT'),
	('LLT03', 'La Libertad', 'LLT'),
	('LLT04', 'Tamanique', 'LLT'),
	('LLT05', 'Teotepeque', 'LLT'),
-- La Paz
	('LPO01', 'Cuyultitan', 'LPO'),
	('LPO02', 'Olocuilta', 'LPO'),
	('LPO03', 'San Juan Talpa', 'LPO'),
	('LPO04', 'San Luis Talpa', 'LPO'),
	('LPO05', 'San Pedro Masahuat', 'LPO'),
	('LPO06', 'Tapalhuaca', 'LPO'),
	('LPO07', 'San Francisco Chinameca', 'LPO'),
	('LPC01', 'El Rosario', 'LPC'),
	('LPC02', 'Jerusalén', 'LPC'),
	('LPC03', 'Mercedes La Ceiba', 'LPC'),
	('LPC04', 'Paraíso de Osorio', 'LPC'),
	('LPC05', 'San Antonio Masahuat', 'LPC'),
	('LPC06', 'San Emigdio', 'LPC'),
	('LPC07', 'San Juan Tepezontes', 'LPC'),
	('LPC08', 'San Luís La Herradura', 'LPC'),
	('LPC09', 'San Miguel Tepezontes', 'LPC'),
	('LPC10', 'San Pedro Nonualco', 'LPC'),
	('LPC11', 'Santa María Ostuma', 'LPC'),
	('LPC12', 'Santiago Nonualco', 'LPC'),
	('LPE01', 'San Juan Nonualco', 'LPE'),
	('LPE02', 'San Rafael Obrajuelo', 'LPE'),
	('LPE03', 'Zacatecoluca', 'LPE'),
-- La Unión
	('LUN01', 'Anamorós', 'LUN'),
	('LUN02', 'Bolivar', 'LUN'),
	('LUN03', 'Concepción de Oriente', 'LUN'),
	('LUN04', 'El Sauce', 'LUN'),
	('LUN05', 'Lislique', 'LUN'),
	('LUN06', 'Nueva Esparta', 'LUN'),
	('LUN07', 'Pasaquina', 'LUN'),
	('LUN08', 'Polorós', 'LUN'),
	('LUN09', 'San José La Fuente', 'LUN'),
	('LUN10', 'Santa Rosa de Lima', 'LUN'),
	('LUS01', 'Conchagua', 'LUS'),
	('LUS02', 'El Carmen', 'LUS'),
	('LUS03', 'Intipucá', 'LUS'),
	('LUS04', 'La Unión', 'LUS'),
	('LUS05', 'Meanguera del Golfo', 'LUS'),
	('LUS06', 'San Alejo', 'LUS'),
	('LUS07', 'Yayantique', 'LUS'),
	('LUS08', 'Yucuaiquín', 'LUS'),
-- Morazán
	('MON01', 'Arambala', 'MON'),
	('MON02', 'Cacaopera', 'MON'),
	('MON03', 'Corinto', 'MON'),
	('MON04', 'El Rosario', 'MON'),
	('MON05', 'Joateca', 'MON'),
	('MON06', 'Jocoaitique', 'MON'),
	('MON07', 'Meanguera', 'MON'),
	('MON08', 'Perquín', 'MON'),
	('MON09', 'San Fernando', 'MON'),
	('MON10', 'San Isidro', 'MON'),
	('MON11', 'Torola', 'MON'),
	('MOS01', 'Chilanga', 'MOS'),
	('MOS02', 'Delicias de Concepción', 'MOS'),
	('MOS03', 'El Divisadero', 'MOS'),
	('MOS04', 'Gualococti', 'MOS'),
	('MOS05', 'Guatajiagua', 'MOS'),
	('MOS06', 'Jocoro', 'MOS'),
	('MOS07', 'Lolotiquillo', 'MOS'),
	('MOS08', 'Osicala', 'MOS'),
	('MOS09', 'San Carlos', 'MOS'),
	('MOS10', 'San Francisco Gotera', 'MOS'),
	('MOS11', 'San Simón', 'MOS'),
	('MOS12', 'Sensembra', 'MOS'),
	('MOS13', 'Sociedad', 'MOS'),
	('MOS14', 'Yamabal', 'MOS'),
	('MOS15', 'Yoloaiquín', 'MOS'),
-- Santa Ana
	('SAN01', 'Masahuat', 'SAN'),
	('SAN02', 'Metapán', 'SAN'),
	('SAN03', 'Santa Rosa Guachipilín', 'SAN'),
	('SAN04', 'Texistepeque', 'SAN'),
	('SAC01', 'Santa Ana', 'SAC'),
	('SAE01', 'Coatepeque', 'SAE'),
	('SAE02', 'El Congo', 'SAE'),
	('SAO01', 'Candelaria de la Frontera', 'SAO'),
	('SAO02', 'Chalchuapa', 'SAO'),
	('SAO03', 'El Porvenir', 'SAO'),
	('SAO04', 'San Antonio Pajonal', 'SAO'),
	('SAO05', 'San Sebastián Salitrillo', 'SAO'),
	('SAO06', 'Santiago de La Frontera', 'SAO'),
-- San Miguel
	('SMN01', 'Ciudad Barrios', 'SMN'),
	('SMN02', 'Sesori', 'SMN'),
	('SMN03', 'Nuevo Edén de San Juan', 'SMN'),
	('SMN04', 'San Gerardo', 'SMN'),
	('SMN05', 'San Luis de La Reina', 'SMN'),
	('SMN06', 'Carolina', 'SMN'),
	('SMN07', 'San Antonio del Mosco', 'SMN'),
	('SMN08', 'Chapeltique', 'SMN'),
	('SMC01', 'San Miguel', 'SMC'),
	('SMC02', 'Comacarán', 'SMC'),
	('SMC03', 'Uluazapa', 'SMC'),
	('SMC04', 'Moncagua', 'SMC'),
	('SMC05', 'Quelepa', 'SMC'),
	('SMC06', 'Chirilagua', 'SMC'),
	('SMO01', 'Chinameca', 'SMO'),
	('SMO02', 'Nueva Guadalupe', 'SMO'),
	('SMO03', 'Lolotique', 'SMO'),
	('SMO04', 'San Jorge', 'SMO'),
	('SMO05', 'San Rafael Oriente', 'SMO'),
	('SMO06', 'El Tránsito', 'SMO'),
-- San Salvador
	('SSN01', 'Aguilares', 'SSN'),
	('SSN02', 'El Paisnal', 'SSN'),
	('SSN03', 'Guazapa', 'SSN'),
	('SSO01', 'Apopa', 'SSO'),
	('SSO02', 'Nejapa', 'SSO'),
	('SSE01', 'Ilopango', 'SSE'),
	('SSE02', 'San Martín', 'SSE'),
	('SSE03', 'Soyapango', 'SSE'),
	('SSE04', 'Tonacatepeque', 'SSE'),
	('SSC01', 'Ayutuxtepeque', 'SSC'),
	('SSC02', 'Mejicanos', 'SSC'),
	('SSC03', 'San Salvador', 'SSC'),
	('SSC04', 'Cuscatancingo', 'SSC'),
	('SSC05', 'Ciudad Delgado', 'SSC'),
	('SSS01', 'Panchimalco', 'SSS'),
	('SSS02', 'Rosario de Mora', 'SSS'),
	('SSS03', 'San Marcos', 'SSS'),
	('SSS04', 'Santo Tomás', 'SSS'),
	('SSS05', 'Santiago Texacuangos', 'SSS'),
-- San Vicente
	('SVN01', 'Apastepeque', 'SVN'),
	('SVN02', 'Santa Clara', 'SVN'),
	('SVN03', 'San Ildefonso', 'SVN'),
	('SVN04', 'San Esteban Catarina', 'SVN'),
	('SVN05', 'San Sebastián', 'SVN'),
	('SVN06', 'San Lorenzo', 'SVN'),
	('SVN07', 'Santo Domingo', 'SVN'),
	('SVS01', 'San Vicente', 'SVS'),
	('SVS02', 'Guadalupe', 'SVS'),
	('SVS03', 'Verapaz', 'SVS'),
	('SVS04', 'Tepetitán', 'SVS'),
	('SVS05', 'Tecoluca', 'SVS'),
	('SVS06', 'San Cayetano Istepeque', 'SVS'),
-- Sonsonate
	('SON01', 'Juayúa', 'SON'),
	('SON02', 'Nahuizalco', 'SON'),
	('SON03', 'Salcoatitán', 'SON'),
	('SON04', 'Santa Catarina Masahuat', 'SON'),
	('SOC01', 'Sonsonate', 'SOC'),
	('SOC02', 'Sonzacate', 'SOC'),
	('SOC03', 'Nahulingo', 'SOC'),
	('SOC04', 'San Antonio del Monte', 'SOC'),
	('SOC05', 'Santo Domingo de Guzmán', 'SOC'),
	('SOE01', 'Izalco', 'SOE'),
	('SOE02', 'Armenia', 'SOE'),
	('SOE03', 'Caluco', 'SOE'),
	('SOE04', 'San Julián', 'SOE'),
	('SOE05', 'Cuisnahuat', 'SOE'),
	('SOE06', 'Santa Isabel Ishuatán', 'SOE'),
	('SOO01', 'Acajutla', 'SOO'),
-- Usulután
	('USN01', 'Santiago de María', 'USN'),
	('USN02', 'Alegría', 'USN'),
	('USN03', 'Berlín', 'USN'),
	('USN04', 'Mercedes Umaña', 'USN'),
	('USN05', 'Jucuapa', 'USN'),
	('USN06', 'El triunfo', 'USN'),
	('USN07', 'Estanzuelas', 'USN'),
	('USN08', 'San Buenaventura', 'USN'),
	('USN09', 'Nueva Granada', 'USN'),
	('USE01', 'Usulután', 'USE'),
	('USE02', 'Jucuarán', 'USE'),
	('USE03', 'San Dionisio', 'USE'),
	('USE04', 'Concepción Batres', 'USE'),
	('USE05', 'Santa María', 'USE'),
	('USE06', 'Ozatlán', 'USE'),
	('USE07', 'Tecapán', 'USE'),
	('USE08', 'Santa Elena', 'USE'),
	('USE09', 'California', 'USE'),
	('USE10', 'Ereguayquín', 'USE'),
	('USO01', 'Jiquilisco', 'USO'),
	('USO02', 'Puerto El Triunfo', 'USO'),
	('USO03', 'San Agustín', 'USO'),
	('USO04', 'San Francisco Javier', 'USO');

insert into Roles values
	('SysAdmin'),
	('Gerente'),
	('Bodeguero'),
	('Vendedor'),
	('Rutero');

insert into Opciones values
	('Gestionar Articulo'), --1
	('Gestionar AsignacionRolesOpciones'),--2
	('Gestionar Cargo'),--3
	('Gestionar CarritoCompras'),--4
	('Gestionar Categoria'),--5
	('Gestionar Clientes'), --6
	('Gestionar Departamentos'), --7
	('Gestionar DetalleIngreso'), --8
	('Gestionar DetalleVenta'), --9
	('Gestionar Direcciones'),--10
	('Gestionar Distritos'),--11
	('Gestionar Empleados'),--12
	('Gestionar Envios'),--13
	('Gestionar ExistenciaProducto'),--14
	('Gestionar Ingreso'),--15
	('Gestionar MetodoPago'),--16
	('Gestionar Municipios'),--17
	('Gestionar Opciones'),--18
	('Gestionar Proveeedores'),--19
	('Gestionar Reservas'),--20
	('Gestionar Roles'),--21
	('Gestionar Subcategoria'),--22
	('Gestionar Usuarios'),--23
	('Gestionar Venta');--24

insert into AsignacionRolesOpciones values
	-- Admin: Todos los permisos
	('1', '1'), ('1', '2'), ('1', '3'), ('1', '4'), 
	('1', '5'), ('1', '6'), ('1', '7'), ('1', '8'),
	('1', '9'), ('1', '10'), ('1', '11'), ('1', '12'),
	('1', '13'), ('1', '14'), ('1', '15'), ('1', '16'),
	('1', '17'), ('1', '18'), ('1', '19'), ('1', '20'), 
	('1', '21'), ('1', '22'), ('1', '23'), ('1', '24'), 
	-- Gerente
	('2', '1'), ('2', '3'), ('2', '4'),
	('2', '6'), ('2', '7'), ('2', '8'),
	('2', '9'), ('2', '10'), ('2', '11'),
	('2', '12'), ('2', '14'), ('2', '15'), 
	('2', '17'), ('2', '19'), ('2', '23'), ('2', '24'), 
	--Bodeguero
	('3', '1'), ('3', '5'), ('3', '8'),
	('3', '14'), ('3', '15'), ('3', '19'), ('3','22'),
	--Vendedor
	('4', '1'), ('4', '4'), ('4', '6'), ('4', '9'), 
	('4', '13'), ('4', '14'), ('4', '16'), ('4','20'), ('4','24'),
	--Rutero
	('4', '4'), ('4', '6'), ('4', '10'), ('4', '13');

insert into Usuarios values
	--Administrador
	('1', 'administrador_user', 'root'),
	-- Encargado
	('2', 'gerente_user', 'Sanchez1234'),
	-- Empleado
	('3', 'bodeguero_user', 'Valle1234'),
	-- Empleado
	('4', 'vendedor_user', 'Perez1234'),
	-- Empleado
	('5', 'rutero_user', '123456');

insert into Cargo values
	('SysAdmin'),
	('Gerente'),
	('Bodeguero'),
	('Vendedor'),
	('Rutero');
	
insert into Empleados values
-- DUI_Empleado, Nombres, Apellidos, Usuario, FechaNac, Telefono, Correo, Direccion, ID_Cargo
	('04523695-5', 'Ernesto Enrique', 'Calzadilla Galicia', '1', '1995-01-01', '6532-4526', 'ernesto@hotmail.com', 'Juayua', '1'),
	('04321098-7', 'Kevin Alexander', 'Medina Moran', '2', '1990-02-02', '7895-5698', 'kevin@gmail.com', 'Sonzacate', '2'),
	('06789012-1', 'Angel Alberto', 'Rodriguez Rodriguez', '3', '1985-04-04', '7965-2526', 'angel@yahoo.com', 'Sonsonate', '3'),
	('06586602-2', 'Juan Carlos', 'Rodas Gonzalez', '4', '1996-08-01', '7592-4116', 'juan@hotmail.com', 'San Antonio', '4'),
	('03228735-4', 'Diego Franciso', 'Sanchez Castro', '5', '1993-02-15', '6099-2688', 'diego@gmail.com', 'Izalco', '5');

INSERT INTO Proveedores (Nombre, Direccion, Telefono, Correo, Notas)
VALUES
    ('Lácteos del Valle', 'Calle San Salvador #123, San Salvador, El Salvador', '123-456-7890', 'lacteosvalle@email.com', 'Proveedor de lácteos'),
    ('Quesos Frescos S.A.', 'Avenida Cuscatlán #456, Santa Tecla, El Salvador', '987-654-3210', 'quesosfrescos@email.com', 'Proveedor de queso'),
    ('Leche Pura Ltda.', 'Residencial La Libertad, Calle Libertad #789, La Libertad, El Salvador', '456-789-1230', 'lechepura@email.com', 'Proveedor de leche'),
    ('Yogur Natural y Más', 'Barrio San Miguelito, Calle Flores #101, San Miguel, El Salvador', '333-444-5555', 'yogurnatural@email.com', 'Proveedor de yogur'),
    ('Mantequilla Dorada', 'Urbanización Santa Ana, Avenida Santa Ana #202, Santa Ana, El Salvador', '777-888-9999', 'mantequilladorada@email.com', 'Proveedor de mantequilla'),
    ('Productos Lácteos Deliciosos', 'Colonia San Vicente, Calle Vicente #303, San Vicente, El Salvador', '111-222-3333', 'deliciososlacteos@email.com', 'Proveedor de productos lácteos'),
    ('Distribuidora Lechera Express', 'Barrio La Unión, Avenida Unión #404, La Unión, El Salvador', '666-777-8888', 'lecheraexpress@email.com', 'Proveedor de leche y productos lácteos'),
    ('Quesería Arcoíris', 'Residencial Morazán, Calle Morazán #505, Morazán, El Salvador', '555-666-7777', 'queseriaarcoiris@email.com', 'Proveedor de quesos variados'),
    ('Yogurisimo S.A.', 'Colonia Chalatenango, Avenida Chalatenango #606, Chalatenango, El Salvador', '888-999-0000', 'yogurisimo@email.com', 'Proveedor de yogur y productos lácteos'),
    ('Lechera Feliz E.I.R.L.', 'Barrio Usulután, Calle Usulután #707, Usulután, El Salvador', '999-000-1111', 'lecherafeliz@email.com', 'Proveedor de leche y derivados');


INSERT INTO Categoria (Nombre, Descripcion, Estado)
VALUES
    ('Lácteos', 'Productos lácteos frescos', 1),
    ('Yogurt', 'Variedades de yogurt', 1),
    ('Queso', 'Diferentes tipos de queso', 1),
    ('Mantequilla', 'Productos de mantequilla', 1),
    ('Leche', 'Leches de diferentes tipos', 1),
    ('Leche Alternativa', 'Leches no lácteas', 1),
    ('Crema', 'Diferentes tipos de crema', 1),
    ('Helado', 'Variedades de helado', 1),
    ('Leche Condensada', 'Leche condensada', 1),
    ('Leche en Polvo', 'Leche en polvo', 1);

INSERT INTO Subcategoria (Subcategoria, ID_Categoria) 
VALUES
    ('Leche Entera', '1'),
    ('Yogurt Natural', '2'),
    ('Queso Cheddar', '3'),
    ('Mantequilla', '4'),
    ('Yogurt de Fresa', '2'),
    ('Leche Desnatada', '5'),
    ('Queso Gouda', '3'),
    ('Yogurt de Vainilla', '2'),
    ('Leche de Almendra', '6'),
    ('Queso Mozarella', '3');

INSERT INTO Articulo (ID_Categoria, ID_Subcategoria, Codigo, Precio_Venta, Fecha_Vencimiento, Descripcion, Imagen, Estado, ID_Proveedor)
VALUES
    ('1','1','LCT001', 3.99, '2023-12-31', 'Leche Entera 1 Litro', '',  1, '1'),
    ('2','2','LCT002', 2.49, '2023-12-31', 'Yogurt Natural 200g', '', 1, '4'),
    ('3','3','LCT003', 4.99, '2023-12-31', 'Queso Cheddar 250g', '',  1, '2'),
    ('4','4','LCT004', 2.99, '2023-12-31', 'Mantequilla 500g', '', 1, '5'),
    ('2','5','LCT005', 1.99, '2023-12-31', 'Yogurt de Fresa 200g', '', 1, '9'),
    ('5','6','LCT006', 3.49, '2023-12-31', 'Leche Desnatada 1 Litro', '', 1, '3'),
    ('3','7','LCT007', 5.99, '2023-12-31', 'Queso Gouda 250g', '', 1, '8'),
    ('2','8','LCT008', 4.29, '2023-12-31', 'Yogurt de Vainilla 200g', '',  1, '9'),
    ('6','9','LCT009', 4.99, '2023-12-31', 'Leche de Almendra 1 Litro', '',  1, '10'),
    ('3','10','LCT010', 3.79, '2023-12-31', 'Queso Mozarella 250g', '',  1, '8');

insert into MetodoPago values 
	('Efectivo'),
	('Tarjeta'),
	('Bitcoin'),
	('Transacciones banco a banco');

INSERT INTO Ingreso (ID_Empleado, Tipo_Comprobante, Serie_Comprobante, Num_Comprobante, Fecha, Total, Estado)
VALUES
    ( '3','Factura', 'FCT001', '001', '2023-05-10', 250.00, 'Completado'),
    ( '3','Factura', 'FCT002', '002', '2023-05-15', 175.50, 'Completado'),
    ( '3','Factura', 'FCT003', '003', '2023-05-20', 320.75, 'Completado'),
    ( '3','Factura', 'FCT004', '004', '2023-05-25', 150.25, 'Completado'),
    ( '3','Factura', 'FCT005', '005', '2023-05-30', 280.00, 'Completado'),
    ( '3','Factura', 'FCT006', '006', '2023-06-05', 210.30, 'Completado'),
    ( '3','Factura', 'FCT007', '007', '2023-06-10', 290.75, 'Completado'),
    ( '3','Factura', 'FCT008', '008', '2023-06-15', 185.50, 'Completado'),
    ( '3','Factura', 'FCT009', '009', '2023-06-20', 265.75, 'Completado'),
    ( '3','Factura', 'FCT010', '010', '2023-06-25', 190.25, 'Completado');

INSERT INTO DetalleIngreso (ID_Ingreso, ID_Categoria, Cantidad, Precio)
VALUES
    ('1','1', 100, 2.50),
    ('2','2',75, 2.34),
    ('3','3',120, 2.68),
    ('4','4',60, 2.51),
    ('5','5',90, 3.11),
    ('6','6',70, 3.00),
    ('7','7',95, 3.06),
    ('8','8',80, 2.32),
    ('9','9',110, 2.47),
    ('10','10',85, 2.21);

INSERT INTO ExistenciaProducto (ID_Articulo, Cantidad, FechaIngreso, Ubicacion, PrecioCompra, PrecioVenta, Estado)
VALUES
    ('1',100, '2023-05-10', 'Almacén A', 2.50, 3.00, 'Disponible'),
    ('2',75, '2023-05-15', 'Almacén B', 2.34, 2.90, 'Disponible'),
    ('3',120, '2023-05-20', 'Almacén A', 2.68, 3.10, 'Disponible'),
    ('4',60, '2023-05-25', 'Almacén C', 2.51, 3.05, 'Disponible'),
    ('5',90, '2023-05-30', 'Almacén B', 3.11, 3.50, 'Disponible'),
    ('6',70, '2023-06-05', 'Almacén A', 3.00, 3.30, 'Disponible'),
    ('7',95, '2023-06-10', 'Almacén C', 3.06, 3.40, 'Disponible'),
    ('8',80, '2023-06-15', 'Almacén B', 2.32, 2.80, 'Disponible'),
    ('9',110, '2023-06-20', 'Almacén A', 2.47, 3.20, 'Disponible'),
    ('10',85, '2023-06-25', 'Almacén C', 2.21, 3.15, 'Disponible');
