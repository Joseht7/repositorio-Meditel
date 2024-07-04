CREATE DATABASE bd_meditel;

USE bd_meditel;
CREATE TABLE especialidad (
    id_especialidad INT AUTO_INCREMENT PRIMARY KEY,
    nomb_especialidad VARCHAR(100) NOT NULL
);

CREATE TABLE medicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(20) NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    edad INT,
    email VARCHAR(100),
    telefono VARCHAR(20),
    id_especialidad INT,
    FOREIGN KEY (id_especialidad) REFERENCES especialidad(id_especialidad)
);
INSERT INTO especialidad (nomb_especialidad)
VALUES ('Pediatría'),
       ('Cardiología'),
       ('Oftalmología'),
       ('Odontología'),
       ('Gastroenterología'),
       ('Nutrición'),
       ('Medicina General'),
       ('Dermatología');

SELECT * FROM especialidad;
select * FROM medicos;

INSERT INTO medicos (dni, nombres, apellidos, edad, email, telefono, id_especialidad)
VALUES 	('53476128K', 'Francisco', 'Pérez', 35, 'francisco@example.com', '954876321',1),
		('36297458L', 'Ricardo', 'Lopez', 29, 'ricardo.l@example.com', '943876521',7),
        ('84376521M', 'Gabriela', 'Juarez', 48, 'gabriela.j@example.com', '988376521',2),
		('58421376N', 'Maritza', 'Lopez', 32, 'maritza.l@example.com', '913284765',3),
		('83524671O', 'Fabrizio', 'Durán', 37, 'fabrizio.d@example.com', '934826571',4);

CREATE TABLE disponibilidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dia date,
    hora TIME,
    id_medico INT,
    FOREIGN KEY (id) REFERENCES medicos(id)
);

CREATE TABLE paciente (
	dni_paciente VARCHAR(8) NOT NULL PRIMARY KEY,
    nom_paciente VARCHAR(50) NOT NULL,
    ap_paciente VARCHAR(50) NOT NULL,
    cel_paciente INT(9) NOT NULL,
    email_paciente VARCHAR(30) NOT NULL
);

select * from usuario;

CREATE TABLE usuario (
	id_usuario INT(3) AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    tipo_doc VARCHAR(50) NOT NULL,
    num_doc INT(8) NOT NULL,
    celular INT(9) NOT NULL,
    fecha_nac DATE NOT NULL,
    Departamento VARCHAR(50) NOT NULL,
    Provincia VARCHAR(50) NOT NULL,
    Distrito VARCHAR(50) NOT NULL,
    Domicilio VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    contrasena VARCHAR(50) NOT NULL
);