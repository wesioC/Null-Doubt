-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: null_doubt
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendamento` (
  `Lugar` char(50) DEFAULT NULL,
  `Horario` char(50) DEFAULT NULL,
  `fk_Discente` decimal(16,0) DEFAULT NULL,
  `fk_Docente` decimal(16,0) DEFAULT NULL,
  `fk_cod_Disciplina` decimal(16,0) DEFAULT NULL,
  `fk_Monitor` decimal(16,0) DEFAULT NULL,
  KEY `FK_Agendamento_3` (`fk_cod_Disciplina`),
  KEY `FK_Agendamento_4` (`fk_Monitor`),
  KEY `FK_Agendamento_1` (`fk_Discente`),
  KEY `FK_Agendamento_2` (`fk_Docente`),
  CONSTRAINT `FK_Agendamento_1` FOREIGN KEY (`fk_Discente`) REFERENCES `discente` (`Matricula`),
  CONSTRAINT `FK_Agendamento_2` FOREIGN KEY (`fk_Docente`) REFERENCES `docente` (`Matricula`),
  CONSTRAINT `FK_Agendamento_3` FOREIGN KEY (`fk_cod_Disciplina`) REFERENCES `disciplina` (`cod_Disciplina`),
  CONSTRAINT `FK_Agendamento_4` FOREIGN KEY (`fk_Monitor`) REFERENCES `monitor` (`fk_Discente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamento`
--

LOCK TABLES `agendamento` WRITE;
/*!40000 ALTER TABLE `agendamento` DISABLE KEYS */;
INSERT INTO `agendamento` VALUES ('Laboratório 6','13/06/2022 - 15:00',2020102201940326,11111,101010,2020102201940067),('Laboratório 4','15/07/2022 - 17:30',2020102201940202,33333,303030,2020102201940083),('Biblioteca','25/09/2022 - 14:00',2020102201940083,22222,202020,NULL);
/*!40000 ALTER TABLE `agendamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 17:33:46
