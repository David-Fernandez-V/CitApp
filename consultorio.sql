-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 03:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consultorio`
--

-- --------------------------------------------------------

--
-- Table structure for table `admon`
--

CREATE TABLE `admon` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `baja` tinyint(4) NOT NULL,
  `login_dt` datetime NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `admon`
--

INSERT INTO `admon` (`id`, `nombre`, `correo`, `clave`, `status`, `baja`, `login_dt`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, 'admin', 'admin@consultorio.com', '411f36d65bf2c258e912617a9c8a29bef168963c1ee97788cde3b0e11818ef1574bc0e6fb4cc63227508c9a17fc0714990e4ce73a67b6585d996574c8898a97b', 0, 0, '2023-03-20 03:45:52', '2023-03-20 03:45:52', '2023-03-20 03:45:52', '2023-03-20 03:45:52'),
(2, 'Sebastian Sandoval', 'secretario@consultorio.com', '411f36d65bf2c258e912617a9c8a29bef168963c1ee97788cde3b0e11818ef1574bc0e6fb4cc63227508c9a17fc0714990e4ce73a67b6585d996574c8898a97b', 0, 0, '2023-11-27 18:43:10', '2023-11-27 18:43:10', '2023-11-27 18:43:10', '2023-11-27 18:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `citas`
--

CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `idPaciente` int(11) NOT NULL,
  `idDoctor` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `horario` time NOT NULL,
  `observacion` varchar(200) NOT NULL,
  `edoCita` int(11) NOT NULL,
  `baja` tinyint(4) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citas`
--

INSERT INTO `citas` (`id`, `idPaciente`, `idDoctor`, `fecha`, `horario`, `observacion`, `edoCita`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(8, 9, 4, '2023-11-27', '18:00:00', 'Paciente con infecci&oacute;n de garganta.', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-23 16:37:15'),
(11, 34, 10, '2023-11-27', '11:00:00', 'Paciente con infecci&oacute;n de garganta', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-23 21:03:19'),
(13, 10, 4, '2023-12-27', '13:00:00', 'Dolor de O&iacute;dos', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-24 01:32:45'),
(15, 27, 10, '2023-12-04', '10:40:00', 'Chequeo general', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-24 02:27:18'),
(16, 8, 2, '2023-12-11', '13:30:00', 'Revisi&oacute;n general', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-24 02:57:21'),
(17, 35, 1, '2023-12-04', '15:00:00', 'Es ciego y sordo', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-27 12:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `citas_historico`
--

CREATE TABLE `citas_historico` (
  `id` int(11) NOT NULL,
  `idPaciente` int(11) NOT NULL,
  `idDoctor` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `horario` time NOT NULL,
  `observacion` varchar(200) NOT NULL,
  `edoCita` int(11) NOT NULL,
  `baja` tinyint(4) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citas_historico`
--

INSERT INTO `citas_historico` (`id`, `idPaciente`, `idDoctor`, `fecha`, `horario`, `observacion`, `edoCita`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, 2, 1, '2023-04-17', '11:30:00', 'No tiene seguro', 2, 1, '2023-04-12 18:06:39', '2023-04-12 11:39:20', '2023-04-12 11:35:26'),
(2, 1, 2, '2023-04-24', '09:30:00', '', 2, 0, '0000-00-00 00:00:00', '2023-04-17 14:45:25', '2023-04-12 11:39:52'),
(3, 1, 2, '2023-04-24', '11:00:00', 'Paga en rocapiedras', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-17 14:45:04'),
(4, 14, 2, '2023-11-27', '12:30:00', '', 1, 1, '2023-11-23 16:35:54', '0000-00-00 00:00:00', '2023-11-23 14:19:25'),
(5, 1, 1, '2023-04-24', '15:00:00', 'Es un alcoholico', 3, 1, '2023-11-23 21:03:32', '0000-00-00 00:00:00', '2023-04-15 18:37:21'),
(6, 1, 1, '2023-05-01', '16:30:00', 'Es un cavern&iacute;cola', 3, 1, '2023-11-23 21:03:35', '0000-00-00 00:00:00', '2023-05-01 21:16:06'),
(7, 1, 1, '2023-11-27', '09:00:00', 'Tiene taquicardia', 3, 1, '2023-11-23 21:03:37', '0000-00-00 00:00:00', '2023-11-23 11:30:16'),
(8, 34, 1, '2023-11-27', '10:00:00', '', 1, 1, '2023-11-23 21:04:11', '0000-00-00 00:00:00', '2023-11-23 20:17:44'),
(9, 34, 10, '2023-11-27', '11:00:00', 'Paciente con infecci&oacute;n de garganta', 1, 1, '2023-11-23 21:03:44', '0000-00-00 00:00:00', '2023-11-23 21:02:52'),
(10, 7, 10, '2023-11-27', '11:00:00', '', 1, 1, '2023-11-24 00:58:20', '0000-00-00 00:00:00', '2023-11-24 00:58:07'),
(11, 24, 10, '2023-12-04', '10:00:00', 'Dolor de cabeza.', 3, 1, '2023-11-24 02:39:44', '0000-00-00 00:00:00', '2023-11-24 01:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `doctores`
--

CREATE TABLE `doctores` (
  `id` int(10) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `depto` varchar(200) DEFAULT NULL,
  `perfil` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `baja` tinyint(4) NOT NULL,
  `login_dt` datetime NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `doctores`
--

INSERT INTO `doctores` (`id`, `foto`, `nombre`, `apellidos`, `correo`, `direccion`, `telefono`, `depto`, `perfil`, `status`, `baja`, `login_dt`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, '', 'Gerardo', 'Mart&iacute;nez Rosales.', 'GMartinez@doctor.com', 'Avenida del Sol #39', '3328657478', '411f36d65bf2c258e912617a9c8a29bef168963c1ee97788cde3b0e11818ef1574bc0e6fb4cc63227508c9a17fc0714990e4ce73a67b6585d996574c8898a97b', 'Cardi&oacute;logo', 1, 0, '0000-00-00 00:00:00', '2023-03-20 15:26:54', '2023-11-23 19:36:32', '2023-03-20 14:56:29'),
(2, '', 'Jaime', 'Rodr&iacute;guez Vargas.', 'JRodriguez@doctor.com', 'Calle Primavera #54', '3379688761', '411f36d65bf2c258e912617a9c8a29bef168963c1ee97788cde3b0e11818ef1574bc0e6fb4cc63227508c9a17fc0714990e4ce73a67b6585d996574c8898a97b', 'Oftalm&oacute;logo', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-23 19:37:45', '2023-04-15 18:34:22'),
(3, '', 'Jorge', 'S&aacute;nchez L&oacute;pez', 'sanchez@doctor.com', 'Revoluci&oacute;n #1234', '3309129843', 'b68f220bf1313ab98d90379a978877c6356d4008b0f1a536b3ca27d421317ca5d1b9375cc6f788a16fbe671bb13dea00a6f2c670b24b6f2b7ea6425d0449f198', 'M&eacute;dico General', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-23 11:52:03'),
(4, '', 'Guillermo', 'Montoya Romo', 'montoya@doctor.com', 'Col&oacute;n# 345', '3325659874', '605c1067186e35bfce132fa2626f050693a64b509743c1e9eff5acf8573678caaacfa22df655a8c35cef68c6b8f01ba0b6a12840a35dbaed2e78d979e6a2fde1', 'M&eacute;dico general', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-26 22:47:35', '2023-11-23 16:29:04'),
(10, '', 'Juan', 'L&oacute;pez Garc&iacute;a', 'JLopez@doctor.com', 'Olmo #27', '3321549685', '411f36d65bf2c258e912617a9c8a29bef168963c1ee97788cde3b0e11818ef1574bc0e6fb4cc63227508c9a17fc0714990e4ce73a67b6585d996574c8898a97b', 'Cardi&oacute;logo', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-23 19:34:27'),
(11, '', 'Leonardo', 'Loza', 'leonardo.loza9063@alumnos.udg.mx', 'monta&ntilde;as rocosas #123', '3332221114', '605c1067186e35bfce132fa2626f050693a64b509743c1e9eff5acf8573678caaacfa22df655a8c35cef68c6b8f01ba0b6a12840a35dbaed2e78d979e6a2fde1', 'Muy guapo el muchacho', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-27 11:34:38'),
(12, '', 'Juan', 'Cabalo', 'correo@correo.com', 'Revolucion 23', '3322115544', '', 'Oftalmologo', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-27 12:12:15'),
(13, '', 'EDUARDO', 'LOZA', 'doctor01@consultorio.com', 'x', '12345124', '', 'especialista', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-27 19:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `idCita` int(11) NOT NULL,
  `tratamiento` text NOT NULL,
  `costo` decimal(12,2) NOT NULL,
  `baja` int(11) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historial`
--

INSERT INTO `historial` (`id`, `idCita`, `tratamiento`, `costo`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consequat sagittis metus, in egestas ex lobortis vitae. Proin dignissim quis enim a finibus. Suspendisse urna velit, consectetur in sodales in, consectetur quis tortor. Maecenas at bibendum felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non lobortis massa, lobortis vestibulum augue.', 800.00, 0, '0000-00-00 00:00:00', '2023-04-22 15:26:07', '2023-04-17 21:58:18'),
(2, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dolor odio, iaculis ac convallis sed, gravida pellentesque ipsum. Nunc hendrerit massa at aliquet ultrices. Vestibulum ut ligula sapien. Sed blandit, neque quis consectetur porta, tortor dui viverra augue, nec aliquet magna lorem non mi. Curabitur justo ante, sodales vitae dapibus vitae, porta vitae nibh. Nunc et pharetra urna. Nullam ut augue lorem.\r\n\r\nNunc lobortis quam aliquet augue consectetur, vel blandit velit eleifend. Vestibulum congue malesuada nulla in efficitur. Fusce enim urna, dictum quis ultricies sed, vulputate volutpat sapien. Aenean dictum, lacus nec pharetra viverra, dolor sapien euismod ex, in efficitur eros quam eget justo. Cras bibendum arcu non urna auctor, dictum pellentesque tortor elementum. Nulla ultricies consectetur eleifend. Nunc mollis, lectus eget blandit dictum, nunc massa vestibulum odio, sed efficitur sapien massa vitae eros. Suspendisse id mollis lectus. Sed vulputate tellus tortor, a convallis nisl gravida vitae. In lacinia quis ligula eget placerat. Donec gravida mollis nisl sed rhoncus. Praesent viverra pharetra leo, vitae cursus nulla mollis et.\r\n\r\nOrci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut vel malesuada ipsum. Curabitur egestas tempor nulla ut condimentum. Vivamus ac gravida massa. Nunc in dolor rutrum, interdum augue sit amet, maximus elit. Vivamus vel dapibus mauris. Curabitur dapibus nulla at ex finibus porta. Vivamus tempus erat at rhoncus ultrices. Vivamus nec elementum mauris. Suspendisse libero augue, elementum ultricies molestie blandit, sollicitudin eget turpis.', 600.00, 0, '0000-00-00 00:00:00', '2023-05-01 22:18:10', '2023-05-01 21:17:41'),
(3, 6, 'Paracetamol cada 8 horas', 800.00, 0, '0000-00-00 00:00:00', '2023-11-23 14:23:18', '2023-11-23 12:43:18'),
(4, 8, 'Ibuprofeno cada 24h', 0.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-23 16:46:57'),
(5, 11, 'Garganta irritada por infecci&oacute;n\r\nTratamiento: diclonina cada 4 horas y amoxicilina cada 12 horas.', 400.00, 0, '0000-00-00 00:00:00', '2023-11-27 19:49:32', '2023-11-24 01:27:51'),
(6, 13, 'Gotas &oacute;ticas cada 5 horas.', 200.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-24 01:49:19'),
(7, 14, 'Paracetamol cada 5 horas y tomar suero v&iacute;a oral.', 0.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-24 01:58:52'),
(8, 16, 'Cancer terminal :&#039;v', 0.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-27 09:00:36'),
(9, 15, 'Paracetamol cada 12 horas', 800.00, 0, '0000-00-00 00:00:00', '2023-11-27 12:21:36', '2023-11-27 12:21:20'),
(10, 17, 'Gripa', 800.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-27 19:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `idDoctor` int(11) NOT NULL,
  `diaSemana` tinyint(4) NOT NULL,
  `inicio` varchar(12) NOT NULL,
  `fin` varchar(12) NOT NULL,
  `duracion` int(11) NOT NULL,
  `baja` tinyint(4) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `horarios`
--

INSERT INTO `horarios` (`id`, `idDoctor`, `diaSemana`, `inicio`, `fin`, `duracion`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(5, 4, 0, '09:00', '17:00', 30, 0, '0000-00-00 00:00:00', '2023-11-27 19:50:16', '2023-04-12 11:33:07'),
(6, 1, 1, '09:00', '14:00', 30, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-12 11:34:03'),
(7, 2, 0, '09:00', '16:00', 30, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-15 18:35:16'),
(8, 2, 1, '11:00', '20:00', 20, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-15 18:36:01'),
(9, 4, 0, '09:30', '18:00', 20, 1, '2023-11-23 16:37:27', '0000-00-00 00:00:00', '2023-11-23 16:32:56'),
(10, 4, 2, '09:00', '17:00', 30, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-23 16:45:10'),
(11, 4, 0, '22:30', '09:30', 15, 1, '2023-11-23 20:36:48', '0000-00-00 00:00:00', '2023-11-23 20:36:06'),
(12, 10, 0, '09:30', '17:00', 20, 1, '2023-11-24 02:32:43', '0000-00-00 00:00:00', '2023-11-23 20:43:25'),
(13, 10, 1, '18:30', '07:00', 30, 1, '2023-11-23 20:53:00', '0000-00-00 00:00:00', '2023-11-23 20:52:01'),
(14, 10, 4, '11:00', '19:30', 30, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-24 02:54:55'),
(15, 1, 4, '09:00', '14:00', 30, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-27 12:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `llaves`
--

CREATE TABLE `llaves` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `indice` int(11) NOT NULL,
  `cadena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `llaves`
--

INSERT INTO `llaves` (`id`, `tipo`, `indice`, `cadena`) VALUES
(1, 'grupoSangre', 1, 'A+'),
(2, 'grupoSangre', 2, 'A-'),
(3, 'grupoSangre', 3, 'B+'),
(4, 'grupoSangre', 4, 'B-'),
(5, 'grupoSangre', 5, 'AB+'),
(6, 'grupoSangre', 6, 'AB-'),
(7, 'grupoSangre', 7, 'O+'),
(8, 'grupoSangre', 8, 'O-'),
(9, 'genero', 1, 'Masculino'),
(10, 'genero', 2, 'Femenino'),
(11, 'genero', 3, 'Otro'),
(12, 'edoCivil', 1, 'Soltero'),
(13, 'edoCivil', 2, 'Casado'),
(14, 'edoCivil', 3, 'Divorciado'),
(15, 'edoCivil', 4, 'Viudo'),
(16, 'edoCivil', 5, 'Unión libre'),
(17, 'diaSemana', 0, 'Lunes'),
(18, 'diaSemana', 1, 'Martes'),
(19, 'diaSemana', 2, 'Miércoles'),
(20, 'diaSemana', 3, 'Jueves'),
(21, 'diaSemana', 4, 'Viernes'),
(22, 'diaSemana', 5, 'Sábado'),
(23, 'diaSemana', 6, 'Domingo'),
(24, 'duracion', 1, '15'),
(25, 'duracion', 2, '20'),
(26, 'duracion', 3, '30'),
(27, 'duracion', 4, '45'),
(28, 'duracion', 5, '60'),
(29, 'edoCita', 1, 'Pendiente'),
(30, 'edoCita', 2, 'Confirmada'),
(31, 'edoCita', 3, 'Cita realizada'),
(32, 'edoCita', 4, 'Cancelada'),
(33, 'edoCita', 0, 'Libre'),
(34, 'archivo', 1, 'image/png'),
(35, 'archivo', 2, 'image/jpeg'),
(36, 'archivo', 3, 'image/gif');

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `fechaNacimiento` varchar(100) DEFAULT NULL,
  `edad` varchar(100) DEFAULT NULL,
  `grupoSanguineo` varchar(100) DEFAULT NULL,
  `dni` varchar(100) DEFAULT NULL,
  `edoCivil` varchar(100) DEFAULT NULL,
  `ocupacion` varchar(100) DEFAULT NULL,
  `peso` varchar(100) DEFAULT NULL,
  `estatura` varchar(100) NOT NULL,
  `cardiaco` varchar(10) NOT NULL,
  `diabetico` varchar(10) NOT NULL,
  `hemofilia` varchar(10) NOT NULL,
  `otros` varchar(100) NOT NULL,
  `numCalzado` varchar(100) NOT NULL,
  `horma` varchar(100) NOT NULL,
  `tacones` varchar(100) NOT NULL,
  `baja` tinyint(4) NOT NULL,
  `login_dt` datetime NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`id`, `foto`, `nombre`, `apellidos`, `correo`, `direccion`, `telefono`, `genero`, `fechaNacimiento`, `edad`, `grupoSanguineo`, `dni`, `edoCivil`, `ocupacion`, `peso`, `estatura`, `cardiaco`, `diabetico`, `hemofilia`, `otros`, `numCalzado`, `horma`, `tacones`, `baja`, `login_dt`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, '', 'Pedro', 'Zamora Carranza', 'zamora@correo.com', 'Montes #97', '556677886677', '1', '1966-02-10', '57', '5', '3242424', '2', 'Alba&ntilde;il', '80', '1.73', 'on', 'on', 'on', '', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-26 22:43:41', '2023-04-12 11:30:05'),
(2, '', 'Juan', 'P&eacute;rez', 'juanperez@hotmail.com', 'conocida', '5566778899', '1', '1980-10-10', '42', '6', '32424241111', '1', 'Vagabundo', '100', '1.73111', 'off', 'on', 'off', '', '', '', '', 1, '0000-00-00 00:00:00', '2023-04-12 18:06:50', '0000-00-00 00:00:00', '2023-04-12 11:37:34'),
(3, '', 'Adrian Jes&uacute;s', 'Escobar D&iacute;az', 'correo03@consultorio.com', 'conocida', '12345007', '1', '1999-01-01', '24', '3', '3242424', '2', 'Comercio', '80', '1.73', 'on', 'off', 'off', 'Alcoholico', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 23:06:25', '2023-04-22 19:42:25'),
(4, '', 'Adriana', 'Aguilar Tellez', 'correo04@consultorio.com', 'conocida', '5512953542', '2', '1988-12-02', '34', '6', '32424241111', '1', 'Ama de casa', '60', '1.60', 'off', 'off', 'off', '', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 19:45:30'),
(5, '', 'Alejandro', 'Aguilar Sanchez', 'correo05@consultorio.com', 'conocida', '5512953542', '1', '1997-12-03', '25', '7', '3242424', '3', 'Vagabundo', '100', '1.80', 'off', 'on', 'off', '', '10', '10', '', 1, '0000-00-00 00:00:00', '2023-11-23 16:38:35', '0000-00-00 00:00:00', '2023-04-22 19:48:13'),
(6, '', 'Al&iacute;cia', 'Aguilar Ramirez', 'correo06@consultorio.com', 'conocida', '12345007', '2', '1993-11-05', '29', '7', '32424241111', '5', 'Comercio', '50', '1.58', 'off', 'off', 'off', '', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 23:06:41', '2023-04-22 19:50:15'),
(7, '', 'Al&iacute;cia Mar&iacute;a', 'Aguilar Ram&iacute;rez', 'correo07@consultorio.com', 'conocida', '23456789', '2', '1999-09-06', '23', '7', '2356899', '1', 'Estudiante', '55', '1.62', 'on', 'off', 'off', '', '8', '10', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-23 16:02:02', '2023-04-22 19:55:33'),
(8, '', 'Ana Lilia', 'Aguilar Pedrero', 'correo08@consultorio.com', 'conocida', '323445689', '2', '1994-04-07', '29', '5', '44455666', '3', 'Finanzas', '70', '1.70', 'off', 'off', 'on', '', '8', '10', '5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 20:04:55'),
(9, '', 'Arturo', 'Aguilar Ochoa', 'correo09@consultorio.com', 'conocida', '45678987654', '3', '1995-08-08', '27', '8', '987654321', '2', '', '80', '1.70', 'off', 'on', 'off', '', '8', '9', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 20:08:38'),
(10, '', 'Benjamin', 'Aguilar Gomez Tagle', 'correo10@consultorio.com', 'conocida', '7654321234', '1', '1988-08-09', '34', '7', '2356899', '1', 'Vagabundo', '60', '1.70', 'on', 'off', 'off', '', '10', '10', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 20:11:05'),
(11, '', 'Blanca Araceli', 'Aguilar Galvan', 'correo11@consultorio.com', 'conocida', '4534234567', '2', '1991-02-10', '32', '7', '8989878787', '1', 'Ama de casa', '55', '1.60', 'off', 'off', 'off', '', '8', '10', '5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 20:14:59'),
(12, '', 'Carmen Julieta', 'Aguilar Flores', 'correo12@consultorio.com', 'conocida', '5456765432', '2', '1990-07-11', '32', '3', '569856985', '2', 'Ama de casa', '80', '', 'off', 'on', 'off', '', '10', '10', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 20:19:23'),
(13, '', 'Diana', 'Aguilar Flores', 'correo13@consultorio.com', 'conocida', '455544455678', '2', '1980-06-12', '42', '8', '3242424111123', '3', 'Comercio', '80', '1.60', 'off', 'off', 'off', '', '8', '10', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 20:22:52'),
(14, '', 'Edgar', 'Aguilar De Llano', 'correo14@consultorio.com', 'conocida', '987654321', '1', '1991-08-12', '31', '7', '99987787665', '3', 'Comercio', '100', '1.60', 'off', 'on', 'off', 'Alcoholico', '8', '9', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 20:43:44'),
(15, '', 'Edmundo Rafael', 'Aguilar Castro', 'correo15@consultorio.com', 'conocida', '55566677788899', '1', '1978-05-11', '44', '7', '444455554555', '1', 'Maneja un dinosaurio', '100', '1.60', 'off', 'off', 'off', 'Alcoholico', '8', '9', '', 1, '0000-00-00 00:00:00', '2023-11-24 02:48:04', '0000-00-00 00:00:00', '2023-04-22 20:52:28'),
(16, '', 'Elvira', 'Aguilar Casillas', 'correo16@consultorio.com', 'conocida', '445566334455', '2', '1979-05-10', '43', '8', '32424241111', '3', 'Vagabundo', '55', '1.70', 'off', 'off', 'off', '', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 20:54:26'),
(17, '', 'Erika', 'Aguayo Labastida', 'correo17@consultorio.com', 'conocida', '5555566667777', '2', '1984-04-09', '39', '4', '3344332223344', '2', 'Comercio', '60', '', 'on', 'off', 'on', '', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 20:57:38'),
(18, '', 'Fernanda', 'Aguario Albarran', 'correo18@consultorio.com', 'conocida', '5543334455', '2', '1974-08-04', '48', '7', '234234234234', '2', 'Comercio', '60', '1.60', 'off', 'off', 'off', 'Presi&oacute;n arterial alta', '8', '9', '5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 21:01:02'),
(19, '', 'Francisco Alejandro', 'Aguado Medina', 'correo19@consultorio.com', 'conocida', '444555666656', '1', '1998-04-07', '25', '7', '4354353453534534', '2', 'Vagabundo', '60', '1.60', 'on', 'off', 'off', 'Alcoholico', '8', '9', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 21:27:09'),
(20, '', 'Hector', 'Adams Huitr&oacute;n', 'correo20@consultorio.com', 'conocida', '34445443323455', '1', '1995-03-06', '28', '8', '32424241111', '3', 'Comercio', '100', '1.90', 'off', 'on', 'off', 'Alcoholico', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-23 12:18:39', '2023-04-22 21:29:06'),
(21, '', 'Ira&iacute;s', 'Adame G&oacute;mez', 'correo21@consultorio.com', 'conocida', '443344333445', '2', '1994-03-07', '29', '7', '32432423424234', '2', 'Ama de casa', '50', '1.70', 'off', 'off', 'off', '', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 23:05:54', '2023-04-22 21:31:18'),
(22, '', 'Josefina', 'Acosta Moctezuma', 'correo22@consultorio.com', 'conocida', '555566665443', '2', '1991-03-05', '32', '7', '32424241111234', '2', 'Ama de casa', '80', '1.60', 'on', 'off', 'off', '', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 21:46:34'),
(23, '', 'Juan Jesus', 'Acosta Gonzalez', 'correo23@consultorio.com', 'conocida', '43434343432323', '1', '1983-04-03', '40', '7', '3434343434343', '2', 'Comercio', '50', '1.80', 'on', 'off', 'off', '', '10', '10', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 22:17:49'),
(24, '', 'Julio Cesar', 'Acosta Garcia', 'correo24@consultorio.com', 'conocida', '4545454545', '1', '1989-02-04', '34', '7', '4445554444', '1', 'Vagabundo', '100', '', 'off', 'on', 'off', 'Alcoholico', '8', '9', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 22:20:36'),
(25, '', 'Laura Patricia', 'Acosta Garcia', 'correo25@consultorio.com', 'conocida', '3445567877', '2', '1979-05-02', '43', '7', '324242411114', '2', 'Ama de casa', '50', '1.60', 'off', 'off', 'on', 'Alcoholico', '10', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 22:24:03'),
(26, '', 'M&oacute;nica', 'Acosta Baeza', 'correo25@consultorio.com', 'conocida', '4532333233', '2', '1970-06-02', '52', '7', '335435434556', '2', 'Ama de casa', '100', '1.60', 'off', 'on', 'off', '', '8', '9', '5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 23:00:13', '2023-04-22 22:57:04'),
(27, '', 'Monica', 'Acosta Aguirre', 'correo27@consultorio.com', 'conocida', '565656565656', '2', '1988-05-03', '34', '4', '435353453534', '1', 'Comercio', '80', '1.80', 'off', 'off', 'off', '', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 22:59:55'),
(28, '', 'Pavel Alfonso', 'Aceves Pastor', 'correo28@consultorio.com', 'conocida', '44433223344', '1', '1977-08-06', '45', '7', '4353534534534534', '2', 'Polic&iacute;a', '80', '1.60', 'off', 'on', 'off', 'Alcoholico', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-22 23:09:40'),
(29, '', 'Roberto Carlos', 'Aceves Lopez de Nava', 'correo29@consultorio.com', 'conocida', '5512953542', '1', '1999-08-07', '23', '5', '324242411112', '1', 'Comercio', '50', '1.60', 'off', 'off', 'off', '', '8', '9', '5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-23 12:12:30'),
(30, '', 'Tania Gabriela', 'Aceves Alvarado', 'correo30@consultorio.com', 'conocida', '4444444444', '2', '1987-07-08', '35', '5', '5555555555', '3', 'Ama de casa', '60', '', 'on', 'off', 'off', 'Presi&oacute;n arterial alta', '8', '9', '5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-23 12:16:37'),
(31, '', 'Victoria Eugenia', 'Acevedo Hernandez', 'correo31@consultorio.com', 'conocida', '5512953542', '2', '1978-07-09', '44', '7', '345355323424232', '1', 'Comercio', '60', '1.80', 'off', 'off', 'off', '', '8', '9', '10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-23 13:00:43'),
(32, '', 'Virginia', 'Acevedo Hernandez', 'correo32@consultorio.com', 'conocida', '234234234242567', '2', '1988-11-10', '34', '7', '66554333455', '1', 'Maneja un dinosaurio', '50', '1.70', 'off', 'off', 'off', '', '8', '9', '5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-04-23 14:54:00'),
(33, '', 'C@de-nEspec!@l123$%&amp;', 'C@de-nEspec!@l123$%&amp;', 'C@s', 'C@de-nEspec!@l123$%&amp;', 'C@de-nEspec!@l123$%&amp;', '2', '2023-11-01', '0', '6', 'C@de-nEspec!@l123$%&amp;', '2', 'C@de-nEspec!@l123$%&amp;', 'C@de^nEspec!@l123%&', 'C@de^nEspec!@l123%&', 'on', 'off', 'off', 'C@de-nEspec!@l123$%&amp;', 'C@de-nEspec!@l123$%&amp;', 'C@de-nEspec!@l123$%&amp;', 'C@de-nEspec!@l123$%&amp;', 1, '0000-00-00 00:00:00', '2023-11-23 20:05:59', '0000-00-00 00:00:00', '2023-11-23 19:58:42'),
(34, '', 'Carlos', 'Fern&aacute;ndez P&eacute;rez', 'CFernandez@correo.com', 'Avenida del Mar #45', '3467890123', '1', '1998-04-23', '25', '1', 'JARF950521HSPXRS02', '1', 'Dise&ntilde;ador Gr&aacute;fico.', '72.5', '1.78', 'off', 'on', 'off', 'Asma', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-23 20:13:48'),
(35, '', 'Pedro', 'Nava', 'correo1@gmail.com', 'Juarez 23', '3366554422', '1', '1956-12-12', '66', '1', 'PESW561212HJCSSPA9', '1', 'Alba&ntilde;il', '89', '187', 'off', 'on', 'off', 'Sordo', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-27 12:15:09', '2023-11-27 12:14:34'),
(36, '', 'LEONARDO SEBASTIAN', 'LOZA', 'LEONARDO@consultorio.com', 'Sierra del norte', '1234123', '2', '2006-06-06', '17', '1', 'LOSL031235123', '4', 'Estudiatne', '50', '1.69', 'off', 'off', 'on', 'no', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-11-27 19:51:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admon`
--
ALTER TABLE `admon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citas_historico`
--
ALTER TABLE `citas_historico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `llaves`
--
ALTER TABLE `llaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admon`
--
ALTER TABLE `admon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `citas_historico`
--
ALTER TABLE `citas_historico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctores`
--
ALTER TABLE `doctores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `llaves`
--
ALTER TABLE `llaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
