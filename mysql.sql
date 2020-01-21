-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: instalura
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `instalura`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `instalura` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `instalura`;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(255) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKixspmid2pb85o8ypsd20jakxg` (`usuario_id`),
  CONSTRAINT `FKixspmid2pb85o8ypsd20jakxg` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,'comentario',1),(2,'novo comentario',1),(3,'comentei de novo',1),(4,'aqui tambÃ©m',1),(5,'mais um comentario',1);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bytes` longblob,
  `comentario` varchar(255) NOT NULL,
  `instante` tinyblob,
  `removed_instant` tinyblob,
  `url` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkeyss3i39o47lj7jctjqpwai2` (`usuario_id`),
  CONSTRAINT `FKkeyss3i39o47lj7jctjqpwai2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
INSERT INTO `foto` VALUES (1,NULL,'Wow que legal!',_binary '¬\í\0sr\0\rjava.time.Ser•]„º\"H²\0\0xpw\0\0\ã	6\0[€x',NULL,'https://www.fatosdesconhecidos.com.br/wp-content/uploads/2018/02/thomas-edison-1.jpg',1),(2,NULL,'Isso Ã© bom demais!',_binary '¬\í\0sr\0\rjava.time.Ser•]„º\"H²\0\0xpw\0\0\ã	6\0[€x',NULL,'https://www.investors.com/wp-content/uploads/2016/03/LSpic_Franklin_031816_pd.jpg',1),(3,NULL,'Wow que legal!',_binary '¬\í\0sr\0\rjava.time.Ser•]„º\"H²\0\0xpw\0\0\ã	6@o@x',NULL,'https://www.fatosdesconhecidos.com.br/wp-content/uploads/2018/02/thomas-edison-1.jpg',2),(4,NULL,'Isso Ã© bom demais!',_binary '¬\í\0sr\0\rjava.time.Ser•]„º\"H²\0\0xpw\0\0\ã	6@o@x',NULL,'https://www.investors.com/wp-content/uploads/2016/03/LSpic_Franklin_031816_pd.jpg',2),(5,NULL,'Wow que legal!',_binary '¬\í\0sr\0\rjava.time.Ser•]„º\"H²\0\0xpw\0\0\ã	6}x@x',NULL,'https://www.fatosdesconhecidos.com.br/wp-content/uploads/2018/02/thomas-edison-1.jpg',3),(6,NULL,'Isso Ã© bom demais!',_binary '¬\í\0sr\0\rjava.time.Ser•]„º\"H²\0\0xpw\0\0\ã	6}x@x',NULL,'https://www.investors.com/wp-content/uploads/2016/03/LSpic_Franklin_031816_pd.jpg',3);
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto_comentarios`
--

DROP TABLE IF EXISTS `foto_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto_comentarios` (
  `foto_id` int(11) NOT NULL,
  `comentarios_id` int(11) NOT NULL,
  UNIQUE KEY `UK_q7n6ell78v39kt5e3ft1jjica` (`comentarios_id`),
  KEY `FK63njju1kpwp9v7rddj9tphtnr` (`foto_id`),
  CONSTRAINT `FK63njju1kpwp9v7rddj9tphtnr` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`),
  CONSTRAINT `FKhspe52sycfvr8i1pvfy2s2der` FOREIGN KEY (`comentarios_id`) REFERENCES `comentario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto_comentarios`
--

LOCK TABLES `foto_comentarios` WRITE;
/*!40000 ALTER TABLE `foto_comentarios` DISABLE KEYS */;
INSERT INTO `foto_comentarios` VALUES (2,2),(3,1),(3,5),(5,3),(6,4);
/*!40000 ALTER TABLE `foto_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto_likers`
--

DROP TABLE IF EXISTS `foto_likers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto_likers` (
  `foto_id` int(11) NOT NULL,
  `likers_id` int(11) NOT NULL,
  PRIMARY KEY (`foto_id`,`likers_id`),
  KEY `FK7krtysepu5keme216xktlx8pw` (`likers_id`),
  CONSTRAINT `FK7krtysepu5keme216xktlx8pw` FOREIGN KEY (`likers_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKewc8182awq2sfy510p4pdvkt1` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto_likers`
--

LOCK TABLES `foto_likers` WRITE;
/*!40000 ALTER TABLE `foto_likers` DISABLE KEYS */;
INSERT INTO `foto_likers` VALUES (3,1),(5,1);
/*!40000 ALTER TABLE `foto_likers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `url_foto_perfil` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'alots','123456','https://s3.amazonaws.com/loa-production-23ffs35gui41a/writers/images/000/000/187/big/lincoln_abraham_WD.jpg?1458837750'),(2,'rafael','123456','https://olhardigital.com.br/uploads/acervo_imagens/2015/02/r16x9/20150219125722_1200_675.jpg'),(3,'vitor','123456','https://biomania.com.br/images/materias/2264/3798585923594400768.jpg');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_amigos`
--

DROP TABLE IF EXISTS `usuario_amigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_amigos` (
  `usuario_id` int(11) NOT NULL,
  `amigos_id` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id`,`amigos_id`),
  KEY `FK78dfuay1npvomfdwyjk49iu8h` (`amigos_id`),
  CONSTRAINT `FK78dfuay1npvomfdwyjk49iu8h` FOREIGN KEY (`amigos_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKp8dunt6mjj9t1ncb1f15v3yv9` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_amigos`
--

LOCK TABLES `usuario_amigos` WRITE;
/*!40000 ALTER TABLE `usuario_amigos` DISABLE KEYS */;
INSERT INTO `usuario_amigos` VALUES (3,1),(1,2),(1,3),(2,3);
/*!40000 ALTER TABLE `usuario_amigos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-09 17:21:45
