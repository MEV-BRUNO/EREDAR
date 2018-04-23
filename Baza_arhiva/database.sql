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
-- Table structure for table `arhiva`
--

DROP TABLE IF EXISTS `arhiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arhiva` (
  `id` int(11) DEFAULT NULL,
  `datum` datetime NOT NULL,
  `naziv` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arhiva`
--

LOCK TABLES `arhiva` WRITE;
/*!40000 ALTER TABLE `arhiva` DISABLE KEYS */;
/*!40000 ALTER TABLE `arhiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradovi`
--

DROP TABLE IF EXISTS `gradovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradovi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) DEFAULT NULL,
  `posta` varchar(255) DEFAULT NULL,
  `zupanija` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradovi`
--

LOCK TABLES `gradovi` WRITE;
/*!40000 ALTER TABLE `gradovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `gradovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korisnici`
--

DROP TABLE IF EXISTS `korisnici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `korisnici` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vrsta_korisnika` varchar(45) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_mjesto_grad` int(11) NOT NULL,
  `opis` text NOT NULL,
  `aktivacijski_kljuc` varchar(255) NOT NULL,
  `aktivan` int(11) NOT NULL,
  `email_send` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnici`
--

LOCK TABLES `korisnici` WRITE;
/*!40000 ALTER TABLE `korisnici` DISABLE KEYS */;
/*!40000 ALTER TABLE `korisnici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prijave`
--

DROP TABLE IF EXISTS `prijave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prijave` (
  `id` bigint(20) NOT NULL,
  `adresa` varchar(255) DEFAULT NULL,
  `id_grad` bigint(20) DEFAULT NULL,
  `id_korisnik` bigint(20) DEFAULT NULL,
  `id_status_prijava` int(11) DEFAULT NULL,
  `id_vrsta_prijava` int(11) DEFAULT NULL,
  `id_zaposlenika` int(11) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longtitude` varchar(255) DEFAULT NULL,
  `slika_sirina` int(11) DEFAULT NULL,
  `slika_visina` int(11) DEFAULT NULL,
  `napomena` varchar(255) DEFAULT NULL,
  `naslov` varchar(255) DEFAULT NULL,
  `opis` varchar(255) DEFAULT NULL,
  `procitano` int(11) DEFAULT NULL,
  `proslijedena` datetime DEFAULT NULL,
  `putanja` varchar(255) DEFAULT NULL,
  `vidljivost` int(11) DEFAULT NULL,
  `vrsta_naziv` varchar(255) DEFAULT NULL,
  `zaprimljena` datetime DEFAULT NULL,
  `zavrsena` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prijave`
--

LOCK TABLES `prijave` WRITE;
/*!40000 ALTER TABLE `prijave` DISABLE KEYS */;
/*!40000 ALTER TABLE `prijave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slika_prijava`
--

DROP TABLE IF EXISTS `slika_prijava`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slika_prijava` (
  `idSlika` bigint(10) unsigned NOT NULL,
  `idPrijava` bigint(11) DEFAULT NULL,
  `putanjaSlike` text,
  PRIMARY KEY (`idSlika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slika_prijava`
--

LOCK TABLES `slika_prijava` WRITE;
/*!40000 ALTER TABLE `slika_prijava` DISABLE KEYS */;
/*!40000 ALTER TABLE `slika_prijava` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrsta_prijave`
--

DROP TABLE IF EXISTS `vrsta_prijave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrsta_prijave` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) DEFAULT NULL,
  `aktivnost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrsta_prijave`
--

LOCK TABLES `vrsta_prijave` WRITE;
/*!40000 ALTER TABLE `vrsta_prijave` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrsta_prijave` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;