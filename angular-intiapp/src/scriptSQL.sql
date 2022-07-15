
--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

DROP TABLE IF EXISTS `experiencia_laboral`;
CREATE TABLE IF NOT EXISTS `experiencia_laboral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `esTrabajoActual` varchar(45) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `persona_id` int(11) NOT NULL,
  `tipo_empleo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_trabajos_usuario` (`persona_id`),
  KEY `fk_trabajos_jornada_trabajo1` (`tipo_empleo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiencia_laboral`
--

INSERT INTO `experiencia_laboral` (`id`, `nombre`, `esTrabajoActual`, `fechaInicio`, `fechafin`, `descripcion`, `persona_id`, `tipo_empleo_id`) VALUES
(1, 'treinta y ocho semanas', '1', '2021-03-07', '2022-07-15', 'diseño wordpress', 3, 2),
(2, 'simbel', '1', NULL, NULL, 'frontend', 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `domicilio` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `sobre_mi` varchar(200) DEFAULT NULL,
  `url_foto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `provincia`, `email`, `nacimiento`, `domicilio`, `telefono`, `sobre_mi`, `url_foto`) VALUES
(3, 'Matias', 'Fontenla', 'Buenos Aires', 'matiasfontenla@gmail.com', '1994-07-28', 'vicente lopez', '15161116', 'soy frontend jr', 'www.foto.com/fotospersonapersonapersona'),
(4, 'Marcos', 'Caceres', 'La Pampa', 'marcoscaceres@gmail.com', '1990-05-20', 'La Pampa', '151612316', 'soy albañil', 'www.foto.com/fotos2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleo`
--

DROP TABLE IF EXISTS `tipo_empleo`;
CREATE TABLE IF NOT EXISTS `tipo_empleo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empleo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_empleo`
--

INSERT INTO `tipo_empleo` (`id`, `empleo`) VALUES
(1, 'Freelance-Emprendimiento'),
(2, 'Part Time'),
(3, 'Full Time'),
(4, 'Monotributista'),
(5, 'Informal');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD CONSTRAINT `fk_trabajos_jornada_trabajo1` FOREIGN KEY (`tipo_empleo_id`) REFERENCES `tipo_empleo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_trabajos_usuario` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;