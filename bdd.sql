-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: exemple_p3_pdo
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(150) NOT NULL,
  `post_content` text NOT NULL,
  `post_created` datetime DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,' Pourquoi Victor Hugo n\'a jamais refusé la moindre caricature','\r\nEXPOSITION - Un grand visage barbu qui trône sur un tout petit corps, voilà l\'image de Victor Hugo sous les traits des caricaturistes de son époque.\r\n\r\nTantôt critiqué, tantôt acclamé, l\'écrivain du XIXe siècle a d\'abord été croqué en tant qu\'auteur puis en tant qu\'homme politique avant d\'être redessiné sous les trais d\'un grand homme de lettres.','2019-03-15 00:00:00'),(2,'L\'écrivain israélien Amos Oz meurt à 79 ans','CULTURE - Le célèbre écrivain israélien Amos Oz, ardent défenseur de la paix dont le roman autobiographique \"Une Histoire d\'amour et de ténèbres\" avait connu un succès mondial, s\'est éteint ce vendredi 28 décembre, à l\'âge de 79 ans, a annoncé sa fille.\r\n\r\nL\'écrivain est décédé à la suite d\'un cancer, a déclaré Fania Oz-Salzberger. \"Mon père chéri vient de mourir, après une détérioration rapide (de son état de santé), dans son sommeil et tranquillement, entouré de ceux qui l\'aiment\", a-t-elle écrit sur Twitter, remerciant \"ceux qui l\'ont aimé\".','2019-03-27 11:37:26'),(3,'Des publicités \"Le temps des cerises\" jugées sexistes retirées','SEXISME - \"Liberté, égalité, beau fessier\". Le slogan choisi par la marque de vêtements \"Le temps des cerises\" passe mal en Seine-Saint-Denis, où le maire PS des Lilas, Daniel Guiraud, est monté au créneau contre cette affiche jugée sexiste, rapporte Le Parisien.\r\n\r\nAuprès du quotidien, l\'élu socialiste n\'a pas caché sa colère: \"c\'est l\'image de la femme ramenée à son cul, c\'est choquant. Un stéréotype sexiste dans toute sa splendeur\". Ce faisant, il a demandé à l\'afficheur JCDecaux de retirer ces publicités, composées d\'un gros plan de fesses moulées par le jean de la marque marseillaise et barré du slogan mentionné plus haut.\r\n\r\n\"Dès lors que la publicité n\'est pas sexiste, homophobe, antisémite..., c\'est leur liberté de poser ces panneaux. Là, il y a une limite à leur liberté publicitaire\", a développé Daniel Guiraud à l\'attention de JCDecaux, enseigne qui a accepté de retirer ces affiches aux Lilas. \"À notre connaissance, aucune autre municipalité n\'a demandé le désaffichage de cette campagne \", a fait savoir l\'afficheur au Parisien.\r\n\r\n',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-06 19:14:55
