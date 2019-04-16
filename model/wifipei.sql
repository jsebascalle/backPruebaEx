-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.19 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para wifipei
CREATE DATABASE IF NOT EXISTS `wifipei` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `wifipei`;

-- Volcando estructura para tabla wifipei.wifis
CREATE TABLE IF NOT EXISTS `wifis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad_de_usuarios_permitidos` int(11) DEFAULT NULL,
  `convenio` int(11) DEFAULT NULL,
  `coordenadas_aps` varchar(250) DEFAULT NULL,
  `departamento` varchar(250) DEFAULT NULL,
  `direcci_n` varchar(250) DEFAULT NULL,
  `municipio` varchar(250) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `nombre_de_la_zona_wifi` varchar(250) DEFAULT NULL,
  `operador` int(11) varchar(250) DEFAULT NULL,
  `total_aps` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla wifipei.wifis: 3 rows
DELETE FROM `wifis`;
/*!40000 ALTER TABLE `wifis` DISABLE KEYS */;
INSERT INTO `wifis` (`id`, `capacidad_de_usuarios_permitidos`, `convenio`, `coordenadas_aps`, `departamento`, `direcci_n`, `municipio`, `no`, `nombre_de_la_zona_wifi`, `operador`, `total_aps`, `created_at`) VALUES
	(1, 1000, 513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-16'),
	(2, 1000, 513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-16'),
	(3, 1000, 513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-16');
/*!40000 ALTER TABLE `wifis` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
