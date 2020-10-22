-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2020 a las 00:10:49
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `general`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `cedula` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`nombre`, `apellido`, `email`, `direccion`, `telefono`, `cedula`) VALUES
('Marco', 'Perez', 'askda@aklsd.com', 'laskjdkl', '199121', 912912);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrop`
--

CREATE TABLE `registrop` (
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `email` text NOT NULL,
  `direccion` text NOT NULL,
  `cedula` int(10) NOT NULL,
  `telefono` int(10) NOT NULL,
  `empresa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registrop`
--

INSERT INTO `registrop` (`nombre`, `apellido`, `email`, `direccion`, `cedula`, `telefono`, `empresa`) VALUES
('asdlkjas', 'lkjasdklj', 'laskjd@kasdl.com', 'askldaskl', 912889, 12892189, 'lkasdlkj');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `registrop`
--
ALTER TABLE `registrop`
  ADD PRIMARY KEY (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
