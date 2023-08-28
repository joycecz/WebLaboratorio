-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2023 a las 21:45:34
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdpersona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID` int(100) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `CORREO` varchar(20) DEFAULT NULL,
  `TELEFONO` varchar(10) DEFAULT NULL,
  `foto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID`, `NOMBRE`, `CORREO`, `TELEFONO`, `foto`) VALUES
(1, 'Usuario 04', 'user04@gmail.com', '0967004616', 'usu04.jpg'),
(2, 'Usuario 01', 'user01@gmail.com', '02 2148064', 'usu01.jpg'),
(3, 'Usuario 02', 'user02@gmail.com', '02 2148065', 'usu02.jpg'),
(4, 'usuario03', 'user03@correo.com', '222221111', 'usu03.jpg'),
(8, 'Usuario 05', 'user05@gmail.com', '0967333316', ''),
(9, 'Usuario 06', 'user06@gmail.com', '0967332222', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
