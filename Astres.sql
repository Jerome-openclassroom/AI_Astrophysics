-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: astres
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `amas`
--

DROP TABLE IF EXISTS `amas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_amas` varchar(20) DEFAULT NULL,
  `type_amas` varchar(20) DEFAULT NULL,
  `distance_années_lumière` int unsigned DEFAULT NULL,
  `age_millions_années` float unsigned DEFAULT NULL,
  `constellation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `constellation_id` (`constellation_id`),
  CONSTRAINT `amas_ibfk_1` FOREIGN KEY (`constellation_id`) REFERENCES `constellations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amas`
--

LOCK TABLES `amas` WRITE;
/*!40000 ALTER TABLE `amas` DISABLE KEYS */;
INSERT INTO `amas` VALUES (1,'Messier 18','ouvert',4230,33,23),(2,'Messier 25','ouvert',2000,67.6,23),(3,'Messier 21','ouvert',3930,6.6,23),(4,'Messier 44','ouvert',610,700,22),(5,'Messier 67','ouvert',2770,4.1,22),(6,'Messier 45','ouvert',444,115,19),(7,'Hyades','ouvert',151,625,19),(8,'Messier 35','ouvert',3870,175,15),(9,'Messier 36','ouvert',4340,25.1,13),(10,'Messier 37','ouvert',4511,448.5,13),(11,'Messier 38','ouvert',3480,250,13),(12,'NGC 884','ouvert',7600,12.5,8),(13,'NGC 869','ouvert',7600,13,8),(14,'Messier 52','ouvert',4600,158.5,3),(15,'Messier 103','ouvert',10000,25,3),(16,'Messier 41','ouvert',2300,190,14),(17,'Collinder 69','ouvert',1300,5,5),(18,'Messier 11','ouvert',6120,316,30),(19,'Messier 13','globulaire',22200,13000,27),(20,'Messier 92','globulaire',26700,11000,27),(21,'Messier 4','globulaire',7200,12200,11),(22,'Messier 23','ouvert',2050,220,23),(23,'Collinder 39','ouvert',561,50,8),(24,'Messier 34','ouvert',1630,177,3),(25,'NGC 1348','ouvert',5940,129,8),(26,'Messier 3','globulaire',33900,11390,25),(27,'Melotte 111','ouvert',280,450,31),(28,'Messier 39','ouvert',825,265,12),(29,'IC 4665','ouvert',1400,40,34),(30,'Messier 10','globulaire',14300,11390,34),(31,'NGC 457','ouvert',7920,21,3),(32,'Messier 15','globulaire',33000,12000,16),(33,'NGC 2360','ouvert',6150,561,14);
/*!40000 ALTER TABLE `amas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `automne`
--

DROP TABLE IF EXISTS `automne`;
/*!50001 DROP VIEW IF EXISTS `automne`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `automne` AS SELECT 
 1 AS `nom_etoile`,
 1 AS `constellation`,
 1 AS `constellation_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `constellations`
--

DROP TABLE IF EXISTS `constellations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constellations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `constellation` varchar(100) DEFAULT NULL,
  `saison` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constellations`
--

LOCK TABLES `constellations` WRITE;
/*!40000 ALTER TABLE `constellations` DISABLE KEYS */;
INSERT INTO `constellations` VALUES (1,'grande ourse','toute l\'année'),(2,'petite ourse','toute l\'année'),(3,'cassiopée','toute l\'année'),(4,'céphée','toute l\'année'),(5,'orion','hiver'),(6,'bouvier','printemps'),(7,'aigle','été'),(8,'persée','automne'),(9,'vierge','printemps'),(10,'lyre','été'),(11,'scorpion','été'),(12,'cygne','été'),(13,'cocher','hiver'),(14,'grand chien','hiver'),(15,'gémeaux','hiver'),(16,'grand carré de Pégase','automne'),(17,'couronne boréale','printemps'),(18,'bélier','hiver'),(19,'taureau','hiver'),(20,'lièvre','hiver'),(21,'lion','printemps'),(22,'cancer','printemps'),(23,'sagittaire','été'),(24,'triangle','automne'),(25,'chiens de chasse','printemps'),(26,'flèche','été'),(27,'Hercule','printemps'),(28,'dauphin','automne'),(29,'andromède','automne'),(30,'ecu de Sobieski','été'),(31,'chevelure de Bérénice','printemps'),(32,'dragon','été'),(33,'petit chien','hiver'),(34,'ophiuchus','été');
/*!40000 ALTER TABLE `constellations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etoiles`
--

DROP TABLE IF EXISTS `etoiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etoiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_etoile` varchar(50) DEFAULT NULL,
  `distance_années_lumière` int unsigned DEFAULT NULL,
  `magnitude_visu_app` float DEFAULT NULL,
  `etoile_variable` tinyint(1) NOT NULL DEFAULT '0',
  `etoile_binaire_multiple` tinyint(1) NOT NULL DEFAULT '1',
  `temperature` int unsigned DEFAULT NULL,
  `constellation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `constellation_id` (`constellation_id`),
  CONSTRAINT `etoiles_ibfk_1` FOREIGN KEY (`constellation_id`) REFERENCES `constellations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etoiles`
--

LOCK TABLES `etoiles` WRITE;
/*!40000 ALTER TABLE `etoiles` DISABLE KEYS */;
INSERT INTO `etoiles` VALUES (1,'Dubhé',105,1.79,0,1,NULL,1),(2,'Mérak',80,2.37,0,0,9800,1),(3,'Phekda',90,2.41,0,1,NULL,1),(4,'Megrez',65,3.3,0,0,9480,1),(5,'Alioth',70,1.79,0,0,9400,1),(6,'Mizar',88,2.04,0,1,NULL,1),(7,'Alkaid',270,1.85,0,0,16823,1),(8,'Polaris',433,1.98,1,0,7000,2),(9,'Kochab',130,2.08,0,0,4126,2),(10,'Pherkad',480,3,0,0,8600,2),(11,'Segin',410,3.37,0,0,15174,3),(12,'Ksora',99,2.66,0,1,NULL,3),(13,'Cih',700,2.47,1,1,25000,3),(14,'Schedar',228,2.24,0,0,4530,3),(15,'Caph',55,2.28,1,0,6700,3),(16,'Alderamin',49,2.5,0,0,7600,4),(17,'Alfirk',682,3.215,1,1,NULL,4),(18,'Alrai',46,3.21,0,1,NULL,4),(19,'Betelgeuse',643,0.65,1,1,NULL,5),(20,'Bellatrix',250,1.6,0,0,21500,5),(21,'Saiph',650,2.09,0,0,26000,5),(22,'Rigel',863,0.115,1,1,10000,5),(23,'Alnitak',1260,2,0,1,NULL,5),(24,'Alnilam',1975,1.69,1,0,25000,5),(25,'Mintaka',1200,2.23,0,1,NULL,5),(26,'Arcturus',37,-0.3,0,0,4286,6),(27,'Altair',17,0.76,1,0,9602,7),(28,'Mirfak',592,1.81,0,0,6350,8),(29,'Spica',250,1.005,0,1,NULL,9),(30,'Vega',25,0.03,0,1,NULL,10),(31,'Antares',550,1.06,1,1,3570,11),(32,'Deneb',2620,1.25,1,0,8700,12),(33,'Sadir',1800,2.23,0,0,6150,12),(34,'Albireo',415,3.05,0,1,NULL,12),(35,'Capella',42,0.08,0,1,NULL,13),(36,'Sirius',9,-1.46,0,1,9900,14),(37,'Mirzam',500,1.98,0,1,NULL,14),(38,'Castor',49,1.58,0,1,NULL,15),(39,'Pollux',34,1.14,0,1,NULL,15),(40,'Sirrah',97,2.07,0,1,NULL,16),(41,'Scheat',199,2.44,1,1,NULL,16),(42,'Markab',133,2.48,0,1,NULL,16),(43,'Algenib',335,2.83,1,1,NULL,16),(44,'Gemma',75,2.21,1,1,NULL,17),(45,'Hamal',66,2.01,0,1,NULL,18),(46,'Shératan',60,2.64,0,1,NULL,18),(47,'Mesarthim',204,3.88,0,1,NULL,18),(48,'Aldebaran',65,0.87,0,1,3910,19),(49,'Arneb',2218,2.58,0,0,7350,20),(50,'Nihal',160,2.81,0,1,NULL,20),(51,'Regulus',79,1.4,0,1,NULL,21),(52,'Denebola',36,2.14,1,0,8500,21),(53,'Acubens',164,4.25,0,1,NULL,22),(54,'Tegmeni',83,4.67,0,1,NULL,22),(55,'Alrami',182,3.97,0,1,NULL,23),(56,'Metallah',64,3.42,0,1,NULL,24),(57,'Cor caroli',110,2.9,0,1,NULL,25),(58,'Algol',93,2.9,1,1,NULL,8),(59,'Sham',620,4.37,0,1,NULL,26),(60,'Alshain',45,3.71,1,1,NULL,7),(61,'Beta Delphini',97,3.6,0,1,NULL,28),(62,'Alpha Delphini',241,3.77,0,1,NULL,28),(63,'Mu Cephei',5200,4.31,1,0,3700,4),(64,'Procyon',11,0.37,0,1,6550,33),(65,'Gomeisa',160,2.88,1,0,11772,33),(66,'Etamin',154,2.4,0,1,3930,32),(67,'Rasalhague',47,2.08,0,1,NULL,34),(68,'Izar',210,2.39,0,1,NULL,6),(69,'Mufrid',37,2.68,0,1,6100,6),(70,'Nekkar',225,3.5,0,0,4932,6),(71,'Porrima',38,2.74,0,1,NULL,9),(72,'Vindemiatrix',110,2.85,0,1,5038,9),(73,'Enif',670,2.38,1,0,4460,16),(74,'Acrab',530,2.5,0,1,NULL,11),(75,'Dschubba',400,2.29,0,1,28000,11),(76,'Almach',350,2.27,0,1,NULL,29),(77,'Mirach',197,2.05,0,0,3842,29);
/*!40000 ALTER TABLE `etoiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxies`
--

DROP TABLE IF EXISTS `galaxies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galaxies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_galaxie` varchar(20) DEFAULT NULL,
  `type_galaxie` varchar(20) DEFAULT NULL,
  `distance_millions_AL` float DEFAULT NULL,
  `constellation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `constellation_id` (`constellation_id`),
  CONSTRAINT `galaxies_ibfk_1` FOREIGN KEY (`constellation_id`) REFERENCES `constellations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galaxies`
--

LOCK TABLES `galaxies` WRITE;
/*!40000 ALTER TABLE `galaxies` DISABLE KEYS */;
INSERT INTO `galaxies` VALUES (1,'Messier 31','spirale',2.55,29),(2,'Messier 32','elliptique',2.65,29),(3,'Messier 110','elliptique',2.69,29),(4,'Messier 81','spirale',12,1),(5,'Messier 82','irrégulière',12,1),(6,'Messier 33','spirale',2.76,24),(7,'Messier 51','spirale',27.4,25),(8,'Messier 104','spirale',28,9);
/*!40000 ALTER TABLE `galaxies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `hiver`
--

DROP TABLE IF EXISTS `hiver`;
/*!50001 DROP VIEW IF EXISTS `hiver`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hiver` AS SELECT 
 1 AS `nom_etoile`,
 1 AS `constellation`,
 1 AS `constellation_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nebuleuses`
--

DROP TABLE IF EXISTS `nebuleuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nebuleuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_nebuleuse` varchar(20) DEFAULT NULL,
  `type_nebuleuse` varchar(20) DEFAULT NULL,
  `distance_années_lumière` int unsigned DEFAULT NULL,
  `taille_objet_années_lumière` float unsigned DEFAULT NULL,
  `constellation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `constellation_id` (`constellation_id`),
  CONSTRAINT `nebuleuses_ibfk_1` FOREIGN KEY (`constellation_id`) REFERENCES `constellations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nebuleuses`
--

LOCK TABLES `nebuleuses` WRITE;
/*!40000 ALTER TABLE `nebuleuses` DISABLE KEYS */;
INSERT INTO `nebuleuses` VALUES (1,'Messier 42','diffuse',1344,24,5),(2,'Messier 78','diffuse',1350,5,5),(3,'Messier 57','planétaire',2300,1.3,10),(4,'Messier 1','planétaire',6300,10,19),(5,'Messier 17','diffuse',5500,11,23),(6,'Messier 20','diffuse',5220,21,23),(7,'Messier 8','diffuse',4100,55,23),(8,'Messier 97','planétaire',2380,2.35,1),(9,'Messier 27','planétaire',861,1.44,10);
/*!40000 ALTER TABLE `nebuleuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `printemps`
--

DROP TABLE IF EXISTS `printemps`;
/*!50001 DROP VIEW IF EXISTS `printemps`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `printemps` AS SELECT 
 1 AS `nom_etoile`,
 1 AS `constellation`,
 1 AS `constellation_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `été`
--

DROP TABLE IF EXISTS `été`;
/*!50001 DROP VIEW IF EXISTS `été`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `été` AS SELECT 
 1 AS `nom_etoile`,
 1 AS `constellation`,
 1 AS `constellation_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `automne`
--

/*!50001 DROP VIEW IF EXISTS `automne`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `automne` AS select `etoiles`.`nom_etoile` AS `nom_etoile`,`constellations`.`constellation` AS `constellation`,`etoiles`.`constellation_id` AS `constellation_id` from (`etoiles` join `constellations` on((`etoiles`.`constellation_id` = `constellations`.`id`))) where (`constellations`.`saison` like 'automne') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hiver`
--

/*!50001 DROP VIEW IF EXISTS `hiver`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hiver` AS select `etoiles`.`nom_etoile` AS `nom_etoile`,`constellations`.`constellation` AS `constellation`,`etoiles`.`constellation_id` AS `constellation_id` from (`etoiles` join `constellations` on((`etoiles`.`constellation_id` = `constellations`.`id`))) where (`constellations`.`saison` like 'hiver') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `printemps`
--

/*!50001 DROP VIEW IF EXISTS `printemps`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `printemps` AS select `etoiles`.`nom_etoile` AS `nom_etoile`,`constellations`.`constellation` AS `constellation`,`etoiles`.`constellation_id` AS `constellation_id` from (`etoiles` join `constellations` on((`etoiles`.`constellation_id` = `constellations`.`id`))) where (`constellations`.`saison` like 'printemps') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `été`
--

/*!50001 DROP VIEW IF EXISTS `été`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `été` AS select `etoiles`.`nom_etoile` AS `nom_etoile`,`constellations`.`constellation` AS `constellation`,`etoiles`.`constellation_id` AS `constellation_id` from (`etoiles` join `constellations` on((`etoiles`.`constellation_id` = `constellations`.`id`))) where (`constellations`.`saison` like 'été') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21 14:40:21
