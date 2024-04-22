CREATE DATABASE  IF NOT EXISTS `proyecto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `proyecto`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `informatico`
--

DROP TABLE IF EXISTS `informatico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informatico` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Horas/Previstas` int(11) DEFAULT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `Es/Responsable` tinyint(1) DEFAULT NULL,
  `Costo/pesos` decimal(10,2) DEFAULT NULL,
  `Docente_idDocente` int(11) NOT NULL,
  `producto_Codigo` int(11) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `fk_Informatico_Docente1_idx` (`Docente_idDocente`),
  KEY `fk_informatico_producto1_idx` (`producto_Codigo`),
  CONSTRAINT `fk_Informatico_Docente1` FOREIGN KEY (`Docente_idDocente`) REFERENCES `docente` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informatico_producto1` FOREIGN KEY (`producto_Codigo`) REFERENCES `producto` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informatico`
--

LOCK TABLES `informatico` WRITE;
/*!40000 ALTER TABLE `informatico` DISABLE KEYS */;
INSERT INTO `informatico` VALUES (301,20,'programador',1,50000.00,101,4),(302,15,'analista',0,15000.00,102,1),(303,25,'programador',1,50000.00,109,6),(304,10,'analista',0,15000.00,105,5);
/*!40000 ALTER TABLE `informatico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-21 16:20:38
