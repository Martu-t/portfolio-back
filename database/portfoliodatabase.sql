-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: porfolio
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educacion` (
  `ideducacion` int NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(45) NOT NULL,
  `nombre_instituto` varchar(45) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `url_foto_edu` varchar(450) DEFAULT NULL,
  `persona_idpersona` int NOT NULL,
  PRIMARY KEY (`ideducacion`),
  KEY `fk_Educacion_persona1_idx` (`persona_idpersona`),
  CONSTRAINT `fk_Educacion_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
INSERT INTO `educacion` VALUES (1,'Lic. en Comercio Internacional','UADE','2009-03-01','2015-07-01','www.url.com/foto',1),(437,'Desarrollo Full Stack','Argentina Programa','2021-11-01','2022-05-30','',1);
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia_laboral`
--

DROP TABLE IF EXISTS `experiencia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia_laboral` (
  `idexperiencia_laboral` int NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(45) NOT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `es_trabajo_actual` varchar(45) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `descripcion_experiencia` varchar(5000) DEFAULT NULL,
  `experiencia_url` varchar(80) DEFAULT NULL,
  `persona_idpersona` int NOT NULL,
  `tipo_empleo_idtipo_empleo` int NOT NULL,
  `tipo_empleo` varchar(255) DEFAULT NULL,
  `idtipo_empleo` bigint DEFAULT NULL,
  PRIMARY KEY (`idexperiencia_laboral`),
  KEY `fk_experiencia_laboral_persona_idx` (`persona_idpersona`),
  KEY `fk_experiencia_laboral_tipo_empleo1_idx` (`tipo_empleo_idtipo_empleo`),
  CONSTRAINT `fk_experiencia_laboral_persona` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`),
  CONSTRAINT `fk_experiencia_laboral_tipo_empleo1` FOREIGN KEY (`tipo_empleo_idtipo_empleo`) REFERENCES `tipo_empleo` (`idtipo_empleo`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_laboral`
--

LOCK TABLES `experiencia_laboral` WRITE;
/*!40000 ALTER TABLE `experiencia_laboral` DISABLE KEYS */;
INSERT INTO `experiencia_laboral` VALUES (349,'Mclarens (New Zealand)','Coordinadora de Proyectos',NULL,'2021-06-26','2022-06-01','Manejo de proyectos desde principio a fin, coordinación con todas las partes involucradas para concretar las tareas a tiempo.\n',NULL,1,1,NULL,NULL),(384,'Acexplore','Agente de ventas',NULL,'2017-10-21','2018-07-25','Actualización diaria de redes sociales. Asesoramiento personalizado sobre programas de intercambio.\n',NULL,1,1,NULL,NULL),(451,'Internet Media Services (IMS)','Analista financiera',NULL,'2014-09-02','2016-07-01','Preparación de cierres contables para posterior consolidado.\nConciliación de cuentas. Seguimiento y facturación de diferentes unidades de negocio (Twitter, Spotify, LinkedIn, Waze), para distintos países.',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `experiencia_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (500);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` bigint NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idpersona` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `residencia` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `sobre_mi` varchar(4500) DEFAULT NULL,
  `url_foto` varchar(500) DEFAULT NULL,
  `url_banner` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Martha Alejandra','Tarantino','Christchurch, Nueva Zelanda','1991-03-24','54911000000','ma.tarantino@hotmaill.com','Licenciada en Comercio Internacional, con experiencia en puestos de Administración, Finanzas y Coordinación de proyectos.\nActualmente estoy incorporando conocimientos sobre desarrollo web para migrar a un puesto como programadora.','https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80','https://images.unsplash.com/photo-1484417894907-623942c8ee29?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80'),(2,'Manuel','Sadoski','Buenos Aires','1985-10-23','12345678','manu@inti.com','Matemático, físico e informatico argentino','www.fotomanuel.com/foto',NULL),(3,'Lionel','Messi','Buenos Aires, argentina','1988-06-14','22','lio_kapo@algo.com','Capitan de equipo con alta trayectoria','https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80','https://images.unsplash.com/photo-1605622713668-fc5d98d5becc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1lc3NpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `idproyecto` int NOT NULL AUTO_INCREMENT,
  `proyecto_nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(5100) DEFAULT NULL,
  `url_proyecto` varchar(250) DEFAULT NULL,
  `persona_idpersona` int NOT NULL,
  PRIMARY KEY (`idproyecto`),
  KEY `fk_proyecto_persona1_idx` (`persona_idpersona`),
  CONSTRAINT `fk_proyecto_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Portfolio','Proyecto final para el curso de Argentina Programa.\nFrontend: Angular y Bootstrap | \nBackend: Java con Springboot e Hibernate','proyecto.com',1),(2,'Calculadora Matematica','Calculadora simple hecha en Angular con elementos de Bootstrap','calcu.com.ar',1),(452,'Página informativa','Desafío de Freecodecamp para una página de documentación, usando HTML y CSS','https://codepen.io/martu-alejandra-tarantino/pen/abyYKKK',1);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `idskill` int NOT NULL,
  `skill_nombre` varchar(45) NOT NULL,
  `skill_porcentaje` int NOT NULL,
  `persona_idpersona` int NOT NULL,
  PRIMARY KEY (`idskill`),
  KEY `fk_hard_skills_persona1_idx` (`persona_idpersona`),
  CONSTRAINT `fk_hard_skills_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (453,'HTML',100,1),(454,'CSS',90,1),(455,'javascript',70,1),(457,'Angular',60,1),(460,'JAVA',60,1),(461,'MySQL',55,1),(462,'Inglés',95,1),(463,'Portugués',85,1),(464,'Excel',90,1);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnologias`
--

DROP TABLE IF EXISTS `tecnologias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnologias` (
  `idtecnologias` int NOT NULL AUTO_INCREMENT,
  `tecnologiascol` varchar(20) NOT NULL,
  `proyecto_idproyecto` int NOT NULL,
  PRIMARY KEY (`idtecnologias`),
  KEY `fk_tecnologias_proyecto1_idx` (`proyecto_idproyecto`),
  CONSTRAINT `fk_tecnologias_proyecto1` FOREIGN KEY (`proyecto_idproyecto`) REFERENCES `proyecto` (`idproyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnologias`
--

LOCK TABLES `tecnologias` WRITE;
/*!40000 ALTER TABLE `tecnologias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecnologias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_empleo`
--

DROP TABLE IF EXISTS `tipo_empleo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_empleo` (
  `idtipo_empleo` int NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_empleo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_empleo`
--

LOCK TABLES `tipo_empleo` WRITE;
/*!40000 ALTER TABLE `tipo_empleo` DISABLE KEYS */;
INSERT INTO `tipo_empleo` VALUES (1,'Full Time'),(2,'Part time'),(3,'Freelance'),(4,'Pasantia'),(5,'Temporal');
/*!40000 ALTER TABLE `tipo_empleo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-22 12:23:26
