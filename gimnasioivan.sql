-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-06-2022 a las 20:58:54
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gimnasioivan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` int(250) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, '111El Gobierno va invertir $ 100 millones en estos proyectos: uno por uno, cuáles son y qué hacen.', 'Son 16 proyectos que recibirán un total de $ 100 millones. A qué se dedica cada uno y por qué fueron elegidos.', '\"Modelos avanzados de volumetría de cerebro mediante algoritmos de Deep Learning\". Aenti SRL; Instituto de Ciencias de la Computación, ICC, UBA-CONICET.\r\n\r\n\"Herramientas bioinformáticas para el desarrollo del Cannabis medicinal\". Canndico SRL; Fund. Instituto Leloir.\r\n\r\n\r\n\"Let\'s see... Let\'s talk: Plataforma de\r\nRealidad Mixta de apoyo a la inclusión social para el autismo\". Centro de Día la Casabella SRL; Núcleo de Inteligencia Comportamental Empresarial. Fac. de Cs. Exactas, UNCPBA.\r\n\r\n\"Desarrollo de software de análisis cuantitativo de 18F-FDG PET para el soporte diagnóstico de la enfermedad de Alzheimer en una cohorte de pacientes latinoamericanos\". Centro para la Investigación de Enfermedades Neuroinmunológicas SRL (CIEN); Instituto de Neurociencias Fleni-CONICET (INEU).\r\n\r\n\"Inteligencia Artificial para predicción de riesgo cardiovascular. Estrategia innovadora para detección temprana y monitoreo de riesgo cardiovascular\". Eirahealthcare Argentina SAS; Instituto de Investigación en Ciencias de la Salud (INICSA), UNC-CONICET.\r\n\r\n\"Análisis y clasificación de errores, preguntas y respuestas en espacios virtuales de formación profesional sobre desarrollo de software\". IKUMI. SRL; FAMAF-UNC / CONICET.\r\n\r\n\"Desarrollo de metodologías de verificación para componentes de software de sistemas relevantes para la seguridad\". INVAP SE; UNRN Sede Andina / Instituto de Ciencias de la Computación (ICC) UBA-CONICET.\r\n\r\n\"Sistemas de comunicación alternativa y aumentativa para personas con diversas patologías de comunicación y movilidad\". Neufitech SRL; Instituto de Ciencias Humanas, Sociales y Ambientales (INCIHUSA) y CONICET.\r\n\r\n\"Sistema inteligente de medición de nivel y control de velocidad de bombeo para pozos petrolíferos\". RF Industrial SAS; Instituto de Investigaciones en Señales, Sistemas e Inteligencia Computacional (sinc), FICH, UNL - CONICET.\r\n\r\n\"Simulador de entrenamiento práctico y remoto en el manejo integral de la vía aérea para personal de salud, basado en realidad virtual\". Servicios Médicos El Castaño SRL; Fac. de Ingeniería, UNSJ.\r\n\r\n\"Plataforma de soporte integral a la planificación, programación de producción, visualización de avance de OTs y KPIs para empresa de envases soplados, con material reciclado\". Starplastic SA; Instituto de Investigación y Desarrollo en Ingeniería de Procesos y Química Aplicada (IPQA) UNC/CONICET; Centro de Investigación y Estudios de Matemática de Córdoba (CIEM) FAMAF-UNC/CONICET.\r\n\r\n\"Diseño e implementación de una plataforma robótica autónoma para eliminar microorganismos de cultivos de frutillas utilizando luz ultravioleta\". Teembu SAS; Instituto de Investigaciones en Señales, Sistemas e Inteligencia Computacional (sinc) FICH, UNL - CONICET.\r\n\r\n\"Reconocimiento automático de patrones urbanos para simulaciones sociales masivas a fin de evaluación de implementación de políticas públicas\". Urbanair SRL; Instituto de Física La Plata, UNLP/CONICET; Inibioma - CCT Patagonia Norte, CONICET.\r\n\r\n\"Plataforma de Telemonitoreo - Monitoreo remoto de pacientes crónicos\". Virtual Sense S.A. Instituto Superior de Ingeniería de Software de Tandil, ISISTAN; Instituto Argentino de Matemáticas Alberto Calderón (IAM)\r\n\r\n\"Integrar Energía, para potenciar la generación distribuida y renovable\". Y-TEC; Facultad de Matemática, Astronomía, Física y Computación (FaMAF), Universidad Nacional de Córdoba.\r\n\r\n\"Analytical PIGs - modelo computacional de anomalías y defectos en tuberías de gas\". Y-TEC; Instituto de Ciencias e Ingeniería de la Computación (ICIC) UNS-CONICET.', NULL),
(2, '222Marcha en el centro porteño. [Fotos y videos] Paro y movilización: así fue la marcha de los trabajadores del neumático', 'La Izquierda Diario estuvo en la marcha de los trabajadores del neumático que vienen en una dura lucha por aumento salarial y para que las horas de los fines de semana se paguen al 200 %. Este jueves pararon en las tres plantas y marcharon al centro porteño.', 'Con paro activo y movilización, el conflicto del neumático volvió a ocupar la escena este jueves. Ocurrió luego del fracaso de una nueva audiencia con las patronales, que había tenido lugar el día anterior. Las grandes empresas del sector se mantienen intransigentes ante el reclamo obrero: aumento del salario real y horas al 200% para quienes trabajen los fines de semana.\r\n\r\nLa respuesta de los trabajadores se vio claramente en las calles. A partir de las 10 h comenzó un paro de 12 horas en todas las plantas de la Provincia de Buenos Aires. Posteriormente los trabajadores abandonaron las plantas y marcharon hacia el centro de la Ciudad de Buenos Aires. Allí concentraron y marcharon hacia una de las sedes del Ministerio de Trabajo de la nación.', NULL),
(7, '111El Gobierno va invertir $ 100 millones en estos proyectos: uno por uno, cuáles son y qué hacen.', 'Son 16 proyectos que recibirán un total de $ 100 millones. A qué se dedica cada uno y por qué fueron elegidos.', '\"Modelos avanzados de volumetría de cerebro mediante algoritmos de Deep Learning\". Aenti SRL; Instituto de Ciencias de la Computación, ICC, UBA-CONICET.\r\n\r\n\"Herramientas bioinformáticas para el desarrollo del Cannabis medicinal\". Canndico SRL; Fund. Instituto Leloir.\r\n\r\n\r\n\"Let\'s see... Let\'s talk: Plataforma de\r\nRealidad Mixta de apoyo a la inclusión social para el autismo\". Centro de Día la Casabella SRL; Núcleo de Inteligencia Comportamental Empresarial. Fac. de Cs. Exactas, UNCPBA.\r\n\r\n\"Desarrollo de software de análisis cuantitativo de 18F-FDG PET para el soporte diagnóstico de la enfermedad de Alzheimer en una cohorte de pacientes latinoamericanos\". Centro para la Investigación de Enfermedades Neuroinmunológicas SRL (CIEN); Instituto de Neurociencias Fleni-CONICET (INEU).\r\n\r\n\"Inteligencia Artificial para predicción de riesgo cardiovascular. Estrategia innovadora para detección temprana y monitoreo de riesgo cardiovascular\". Eirahealthcare Argentina SAS; Instituto de Investigación en Ciencias de la Salud (INICSA), UNC-CONICET.\r\n\r\n\"Análisis y clasificación de errores, preguntas y respuestas en espacios virtuales de formación profesional sobre desarrollo de software\". IKUMI. SRL; FAMAF-UNC / CONICET.\r\n\r\n\"Desarrollo de metodologías de verificación para componentes de software de sistemas relevantes para la seguridad\". INVAP SE; UNRN Sede Andina / Instituto de Ciencias de la Computación (ICC) UBA-CONICET.\r\n\r\n\"Sistemas de comunicación alternativa y aumentativa para personas con diversas patologías de comunicación y movilidad\". Neufitech SRL; Instituto de Ciencias Humanas, Sociales y Ambientales (INCIHUSA) y CONICET.\r\n\r\n\"Sistema inteligente de medición de nivel y control de velocidad de bombeo para pozos petrolíferos\". RF Industrial SAS; Instituto de Investigaciones en Señales, Sistemas e Inteligencia Computacional (sinc), FICH, UNL - CONICET.\r\n\r\n\"Simulador de entrenamiento práctico y remoto en el manejo integral de la vía aérea para personal de salud, basado en realidad virtual\". Servicios Médicos El Castaño SRL; Fac. de Ingeniería, UNSJ.\r\n\r\n\"Plataforma de soporte integral a la planificación, programación de producción, visualización de avance de OTs y KPIs para empresa de envases soplados, con material reciclado\". Starplastic SA; Instituto de Investigación y Desarrollo en Ingeniería de Procesos y Química Aplicada (IPQA) UNC/CONICET; Centro de Investigación y Estudios de Matemática de Córdoba (CIEM) FAMAF-UNC/CONICET.\r\n\r\n\"Diseño e implementación de una plataforma robótica autónoma para eliminar microorganismos de cultivos de frutillas utilizando luz ultravioleta\". Teembu SAS; Instituto de Investigaciones en Señales, Sistemas e Inteligencia Computacional (sinc) FICH, UNL - CONICET.\r\n\r\n\"Reconocimiento automático de patrones urbanos para simulaciones sociales masivas a fin de evaluación de implementación de políticas públicas\". Urbanair SRL; Instituto de Física La Plata, UNLP/CONICET; Inibioma - CCT Patagonia Norte, CONICET.\r\n\r\n\"Plataforma de Telemonitoreo - Monitoreo remoto de pacientes crónicos\". Virtual Sense S.A. Instituto Superior de Ingeniería de Software de Tandil, ISISTAN; Instituto Argentino de Matemáticas Alberto Calderón (IAM)\r\n\r\n\"Integrar Energía, para potenciar la generación distribuida y renovable\". Y-TEC; Facultad de Matemática, Astronomía, Física y Computación (FaMAF), Universidad Nacional de Córdoba.\r\n\r\n\"Analytical PIGs - modelo computacional de anomalías y defectos en tuberías de gas\". Y-TEC; Instituto de Ciencias e Ingeniería de la Computación (ICIC) UNS-CONICET.', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'ivan', '789bd126d7c998dcef4713c039d2fa3a'),
(2, 'fernanda', '789bd126d7c998dcef4713c039d2fa3a');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
