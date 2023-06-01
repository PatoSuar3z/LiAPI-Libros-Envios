-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2023 a las 05:45:52
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
-- Base de datos: `db_libreria`
--
CREATE DATABASE IF NOT EXISTS `db_libreria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_libreria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envio` varchar(40) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(60) NOT NULL,
  `valor` int(11) NOT NULL,
  `destino` varchar(120) NOT NULL,
  `id_usuario` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envio`, `fecha`, `estado`, `valor`, `destino`, `id_usuario`) VALUES
('1TESTENVIO1', '2023-05-12', 'Entregado', 1234, 'La Granja', '110User'),
('2TESTENVIO2', '2023-05-12', 'Entregado', 1234, 'La Granja', '110User'),
('3TESTENVIO3', '2023-05-12', 'Entregado', 1234, 'La Florida', '110User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `titulo` varchar(150) NOT NULL,
  `autor` varchar(150) NOT NULL,
  `editorial` varchar(150) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `paginas` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `genero` varchar(150) NOT NULL,
  `idioma` varchar(150) NOT NULL,
  `foto` varchar(1000) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`titulo`, `autor`, `editorial`, `isbn`, `paginas`, `precio`, `fecha`, `genero`, `idioma`, `foto`, `id`) VALUES
('El Señor de los Anillos', 'J.R.R. Tolkien', 'Minotauro', '9780544003415', 1216, 45200, '2015-01-01', 'Fantasia', 'Español', 'https://imag.lecturalia.com/img/libro/el-senor-de-los-anillos-37.jpg', 4),
('El Hobbit', 'J.R.R. Tolkien', 'Minotauro', '9780547928227', 328, 15690, '2015-01-01', 'Fantasia', 'Español', 'https://imag.lecturalia.com/img/libro/el-hobbit-26.jpg', 5),
('El Principito', 'Antoine de Saint-Exupéry', 'Minotauro', '9780156012195', 120, 8200, '2015-01-01', 'Fantasia', 'Español', 'https://imag.lecturalia.com/img/libro/el-principito-1535.jpg', 6),
('El Alquimista', 'Paulo Coelho', 'Rayo', '9780062511409', 208, 8510, '2015-01-01', 'Novela', 'Español', 'https://imag.lecturalia.com/img/libro/el-alquimista-9.jpg', 7),
('El Poder', 'Rhonda Byrne', 'Minotauro', '9781451620962', 240, 15690, '2015-01-01', 'Novela', 'Español', 'https://imag.lecturalia.com/img/libro/el-poder-52768.jpg', 8),
('El Arte de la Guerra', 'Sun Tzu', 'Gredos', '9788424935759', 240, 6830, '2015-01-01', 'Estrategia militar', 'Español', 'https://imag.lecturalia.com/img/libro/el-arte-de-la-guerra-6987.jpg', 9),
('El Quijote', 'Cervantes', 'Alianza', '9786074531411', 1088, 15990, '2015-01-01', 'Novela', 'Español', 'https://imag.lecturalia.com/img/libro/don-quijote-de-la-mancha-8154.jpg', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
