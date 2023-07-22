-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2023 a las 14:01:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `xmas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `Codigo` int(11) NOT NULL,
  `Contraseña` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`Codigo`, `Contraseña`) VALUES
(72355023, 'ejemplo1'),
(12345678, 'prueba'),
(72355033, 'aea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `SKU` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Cantidad` text NOT NULL,
  `Categoria` varchar(11) NOT NULL,
  `Precio` double NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`SKU`, `Nombre`, `Cantidad`, `Categoria`, `Precio`) VALUES
(100000, 'Inca kola', '15', 'Bebidas', 2.9),
(100003, 'Galleta \"Chips Ahoy\"', '23', 'Abarrotes', 1.8),
(100001, 'Coca Cola', '20', 'Bebidas', 2.9),
(100002, 'Galleta Vainilla', '23', 'Abarrotes', 1.5),
(100004, 'Pan bimbo', '45', 'Abarrotes', 10),
(100005, 'Leche gloria', '30', 'Lacteos', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
