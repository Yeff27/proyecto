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
-- Table structure for table `docente/proyercto`
--

DROP TABLE IF EXISTS `docente/proyercto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente/proyercto` (
  `EsJefe` tinyint(1) DEFAULT NULL,
  `Horas/Dedicadas` int(11) DEFAULT NULL,
  `CostoPesos` decimal(10,2) DEFAULT NULL,
  `proyecto_Codigo` int(11) NOT NULL,
  `docente_Codigo` int(11) NOT NULL,
  KEY `fk_docente/proyercto_proyecto1_idx` (`proyecto_Codigo`),
  KEY `fk_docente/proyercto_docente1_idx` (`docente_Codigo`),
  CONSTRAINT `fk_docente/proyercto_docente1` FOREIGN KEY (`docente_Codigo`) REFERENCES `docente` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_docente/proyercto_proyecto1` FOREIGN KEY (`proyecto_Codigo`) REFERENCES `proyecto` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente/proyercto`
--

LOCK TABLES `docente/proyercto` WRITE;
/*!40000 ALTER TABLE `docente/proyercto` DISABLE KEYS */;
INSERT INTO `docente/proyercto` VALUES (0,20,20000.00,201,101),(1,230,50000.00,201,102),(0,180,20000.00,201,109),(1,230,60000.00,204,106),(0,80,30000.00,204,105),(0,60,20000.00,204,108),(1,230,160000.00,205,103),(0,80,30000.00,205,108),(0,60,80000.00,205,110);
/*!40000 ALTER TABLE `docente/proyercto` ENABLE KEYS */;
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
