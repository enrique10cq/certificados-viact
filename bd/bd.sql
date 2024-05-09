create database db_certificados;
use db_certificados;

CREATE TABLE permiso (
  id int auto_increment primary key NOT NULL,
  rol varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usuario (
  id int auto_increment primary key NOT NULL,
  nombre varchar(50) NOT NULL,
  correo varchar(50) NOT NULL,
  telefono varchar(50) NOT NULL,
  clave varchar(50) NOT NULL,
  fecha timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  rol int(11) NOT NULL,
  imagen varchar(250) NOT NULL,
  FOREIGN KEY (rol) REFERENCES permiso(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE tbl_empleados (
  id int(11) NOT NULL AUTO_INCREMENT primary key,
  nombre varchar(100) NOT NULL,
  edad int(11) DEFAULT NULL,
  cedula varchar(20) DEFAULT NULL,
  sexo varchar(10) DEFAULT NULL,
  telefono varchar(20) DEFAULT NULL,
  cargo varchar(100) DEFAULT NULL,
  avatar varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO tbl_empleados (nombre, edad, cedula, sexo, telefono, cargo, avatar) VALUES
	('Any somosa',23,'412421','Femenino','432432432','Asistente','a26b9df685.png'),
	('Urian',31,'323232','Masculino','432432432','Asistente','f752ce2c9b.png'),
	('Abelado P',39,'331232','Masculino','23213213','Desarrollador','b70032d832.png'),
	('Camilo',30,'444433','Masculino','333434','Contador','daea327347.jpg'),
	('Fabio',49,'434343','Masculino','4444443','Secretario','dd12c93c0a.png'),
	('Brenda Cataleya',18,'111212','Masculino','5565656','Desarrollador Web','6a712f30fc.png');

INSERT INTO permiso (id, rol) VALUES
(1, 'Administrador'),
(2, 'Lector');

INSERT INTO usuario (nombre, correo, telefono, clave, fecha, rol, imagen) VALUES
('Emanuel', 'admin@gmail.com', '9911165670', '12345', '2022-07-31 19:33:14', 1, 'user1.png'),
('Maria', 'lector@gmail.com', '9914165670', '12345', '2022-07-31 23:05:40', 2, 'bg.jpg');

select * from usuario;
select * from tbl_empleados;