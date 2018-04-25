-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2018 at 05:50 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eredarhr_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `arhiva`
--

CREATE TABLE IF NOT EXISTS `arhiva` (
  `datum` timestamp NOT NULL,
  `naziv` varchar(150) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `putanja` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  PRIMARY KEY (`datum`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE IF NOT EXISTS `grad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) COLLATE cp1250_bin DEFAULT NULL,
  `zupanija` varchar(255) COLLATE cp1250_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin AUTO_INCREMENT=129 ;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`id`, `naziv`, `zupanija`) VALUES
(1, 'Bakar', 'PRIMORSKO-GORANSKA'),
(2, 'Beli Manastir', 'OSJEČKO-BARANJSKA'),
(3, 'Belišće', 'OSJEČKO-BARANJSKA'),
(4, 'Benkovac', 'ZADARSKA'),
(5, 'Biograd na Moru', 'ZADARSKA'),
(6, 'Bjelovar', 'BJELOVARSKO-BILOGORSKA'),
(7, 'Buje', 'ISTARSKA'),
(8, 'Buzet', 'ISTARSKA'),
(9, 'Cres', 'PRIMORSKO-GORANSKA'),
(10, 'Crikvenica', 'PRIMORSKO-GORANSKA'),
(11, 'Čabar', 'PRIMORSKO-GORANSKA'),
(12, 'Čakovec', 'MEĐIMURSKA'),
(13, 'Čazma', 'BJELOVARSKO-BILOGORSKA'),
(14, 'Daruvar', 'BJELOVARSKO-BILOGORSKA'),
(15, 'Delnice', 'PRIMORSKO-GORANSKA'),
(16, 'Donja Stubica', 'KRAPINSKO-ZAGORSKA'),
(17, 'Donji Miholjac', 'OSJEČKO-BARANJSKA'),
(18, 'Drniš', 'ŠIBENSKO-KNINSKA'),
(19, 'Dubrovnik', 'DUBROVAČKO-NERETVANSKA'),
(20, 'Duga Resa', 'KARLOVAČKA'),
(21, 'Dugo Selo', 'ZAGREBAČKA'),
(22, 'Đakovo', 'OSJEČKO-BARANJSKA'),
(23, 'Đurđevac', 'KOPRIVNIČKO-KRIŽEVAČKA'),
(24, 'Garešnica', 'BJELOVARSKO-BILOGORSKA'),
(25, 'Glina', 'SISAČKO-MOSLAVAČKA'),
(26, 'Gospić', 'LIČKO-SENJSKA'),
(27, 'Grubišno Polje', 'BJELOVARSKO-BILOGORSKA'),
(28, 'Hrvatska Kostajnica', 'SISAČKO-MOSLAVAČKA'),
(29, 'Hvar', 'SPLITSKO-DALMATINSKA'),
(30, 'Ilok', 'VUKOVARSKO-SRIJEMSKA'),
(31, 'Imotski', 'SPLITSKO-DALMATINSKA'),
(32, 'Ivanec', 'VARAŽDINSKA'),
(33, 'Ivanić-Grad', 'ZAGREBAČKA'),
(34, 'Jastrebarsko', 'ZAGREBAČKA'),
(35, 'Karlovac', 'KARLOVAČKA'),
(36, 'Kastav', 'PRIMORSKO-GORANSKA'),
(37, 'Kaštela', 'SPLITSKO-DALMATINSKA'),
(38, 'Klanjec', 'KRAPINSKO-ZAGORSKA'),
(39, 'Knin', 'ŠIBENSKO-KNINSKA'),
(40, 'Komiža', 'SPLITSKO-DALMATINSKA'),
(41, 'Koprivnica', 'KOPRIVNIČKO-KRIŽEVAČKA'),
(42, 'Korčula', 'DUBROVAČKO-NERETVANSKA'),
(43, 'Kraljevica', ' PRIMORSKO-GORANSKA'),
(44, 'Krapina', 'KRAPINSKO-ZAGORSKA'),
(45, 'Križevci', 'KOPRIVNIČKO-KRIŽEVAČKA'),
(46, 'Krk', 'PRIMORSKO-GORANSKA'),
(47, 'Kutina', 'SISAČKO-MOSLAVAČKA'),
(48, 'Kutjevo', 'POŽEŠKO-SLAVONSKA'),
(49, 'Labin', 'ISTARSKA'),
(50, 'Lepoglava', 'VARAŽDINSKA'),
(51, 'Lipik', 'POŽEŠKO-SLAVONSKA'),
(52, 'Ludbreg', 'VARAŽDINSKA'),
(53, 'Makarska', 'SPLITSKO-DALMATINSKA'),
(54, 'Mali Lošinj', 'PRIMORSKO-GORANSKA'),
(55, 'Metković', 'DUBROVAČKO-NERETVANSKA'),
(56, 'Mursko Središće', 'MEĐIMURSKA'),
(57, 'Našice', 'OSJEČKO-BARANJSKA'),
(58, 'Nin', 'ZADARSKA'),
(59, 'Nova Gradiška', 'BRODSKO-POSAVSKA'),
(60, 'Novalja', 'LIČKO-SENJSKA'),
(61, 'Novi Marof', 'VARAŽDINSKA'),
(62, 'Novi Vinodolski', 'PRIMORSKO-GORANSKA'),
(63, 'Novigrad-Cittanova', 'ISTARSKA'),
(64, 'Novska', 'SISAČKO-MOSLAVAČKA'),
(65, 'Obrovac', 'ZADARSKA'),
(66, 'Ogulin', 'KARLOVAČKA'),
(67, 'Omiš', 'SPLITSKO-DALMATINSKA'),
(68, 'Opatija', 'PRIMORSKO-GORANSKA'),
(69, 'Opuzen', ' DUBROVAČKO-NERETVANSKA'),
(70, 'Orahovica', 'VIROVITIČKO-PODRAVSKA'),
(71, 'Oroslavje', 'KRAPINSKO-ZAGORSKA'),
(72, 'Osijek', 'OSJEČKO-BARANJSKA'),
(73, 'Otočac', 'LIČKO-SENJSKA'),
(74, 'Otok', 'VUKOVARSKO-SRIJEMSKA'),
(75, 'Ozalj', 'KARLOVAČKA'),
(76, 'Pag', 'ZADARSKA'),
(77, 'Pakrac', 'POŽEŠKO-SLAVONSKA'),
(78, 'Pazin', 'ISTARSKA'),
(79, 'Petrinja', 'SISAČKO-MOSLAVAČKA'),
(80, 'Pleternica', 'POŽEŠKO-SLAVONSKA'),
(81, 'Ploče', 'DUBROVAČKO-NERETVANSKA'),
(82, 'Popovača', 'SISAČKO-MOSLAVAČKA'),
(83, 'Poreč-Parenzo', 'ISTARSKA'),
(84, 'Požega', 'POŽEŠKO-SLAVONSKA'),
(85, 'Pregrada', 'KRAPINSKO-ZAGORSKA'),
(86, 'Prelog', 'MEĐIMURSKA'),
(87, 'Pula-Pola', 'ISTARSKA'),
(88, 'Rab', 'PRIMORSKO-GORANSKA'),
(89, 'Rijeka', 'PRIMORSKO-GORANSKA'),
(90, 'Rovinj-Rovigno', 'ISTARSKA'),
(91, 'Samobor', 'ZAGREBAČKA'),
(92, 'Senj', 'LIČKO-SENJSKA'),
(93, 'Sinj', 'SPLITSKO-DALMATINSKA'),
(94, 'Sisak', 'SISAČKO-MOSLAVAČKA'),
(95, 'Skradin', 'ŠIBENSKO-KNINSKA'),
(96, 'Slatina', 'VIROVITIČKO-PODRAVSKA'),
(97, 'Slavonski Brod', 'BRODSKO-POSAVSKA'),
(98, 'Slunj', 'KARLOVAČKA'),
(99, 'Solin', 'SPLITSKO-DALMATINSKA'),
(100, 'Split', 'SPLITSKO-DALMATINSKA'),
(101, 'Stari Grad', 'SPLITSKO-DALMATINSKA'),
(102, 'Supetar', 'SPLITSKO-DALMATINSKA'),
(103, 'Sveta Nedelja', 'ZAGREBAČKA'),
(104, 'Sveti Ivan Zelina', 'ZAGREBAČKA'),
(105, 'Šibenik', 'ŠIBENSKO-KNINSKA'),
(106, 'Trilj', 'SPLITSKO-DALMATINSKA'),
(107, 'Trogir', 'SPLITSKO-DALMATINSKA'),
(108, 'Umag-Umago', 'ISTARSKA'),
(109, 'Valpovo', 'OSJEČKO-BARANJSKA'),
(110, 'Varaždin', 'VARAŽDINSKA'),
(111, 'Varaždinske Toplice', 'VARAŽDINSKA'),
(112, 'Velika Gorica', 'ZAGREBAČKA'),
(113, 'Vinkovci', 'VUKOVARSKO-SRIJEMSKA'),
(114, 'Virovitica', 'VIROVITIČKO-PODRAVSKA'),
(115, 'Vis', 'SPLITSKO-DALMATINSKA'),
(116, 'Vodice', 'ŠIBENSKO-KNINSKA'),
(117, 'Vodnjan-Dignano', 'ISTARSKA'),
(118, 'Vrbovec', 'ZAGREBAČKA'),
(119, 'Vrbovsko', 'PRIMORSKO-GORANSKA'),
(120, 'Vrgorac', 'SPLITSKO-DALMATINSKA'),
(121, 'Vrlika', 'SPLITSKO-DALMATINSKA'),
(122, 'Vukovar', 'VUKOVARSKO-SRIJEMSKA'),
(123, 'Zabok', 'KRAPINSKO-ZAGORSKA'),
(124, 'Zadar', 'ZADARSKA'),
(125, 'Zagreb', 'GRAD ZAGREB'),
(126, 'Zaprešić', 'ZAGREBAČKA'),
(127, 'Zlatar', 'KRAPINSKO-ZAGORSKA'),
(128, 'Županja', 'VUKOVARSKO-SRIJEMSKA');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE IF NOT EXISTS `korisnici` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vrsta_korisnika` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ime` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_mjesto_grad` int(11) NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `aktivacijski_kljuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aktivan` int(11) NOT NULL,
  `email_send` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `licenca` timestamp NOT NULL COMMENT 'licenca pristupa administratora',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=239 ;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `vrsta_korisnika`, `ime`, `prezime`, `email`, `password`, `id_mjesto_grad`, `opis`, `aktivacijski_kljuc`, `aktivan`, `email_send`, `created_at`, `updated_at`, `licenca`) VALUES
(231, '0', 'Super', 'Administrator', 'sa@eredar.hr', '12345', 0, 'Super administrator', '11', 1, 1, '2018-03-03 13:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, '1', 'Administrator', 'Čakovec', 'cakovec@eredar.hr', '12345', 12, 'Administrator grada Čakoca', '11', 1, 1, '2018-03-03 10:00:00', '0000-00-00 00:00:00', '2018-03-17 19:38:55'),
(233, '1', 'Administrator', 'Varaždin', 'varazdin@eredar.hr', '12345', 110, 'Administrator grada Varaždina', '11', 1, 1, '2018-03-03 10:00:00', '0000-00-00 00:00:00', '2018-03-17 19:39:08'),
(234, '1', 'Administrator_Z_1', 'Zagreb_1', 'zagreb@eredar.hr_1', '12345', 125, 'Administrator grada Zagreba_111', '11', 0, 0, '2018-03-03 07:00:00', '2018-03-28 20:23:51', '2018-03-28 22:00:00'),
(235, '2', 'Korisnik 1', 'Čakovec', 'korisnik1@eredar.hr', '12345', 3, 'Korisnik u gradu Čakovcu', '11', 0, 1, '2018-03-03 17:25:00', '2018-03-28 21:19:40', '2000-12-31 23:00:00'),
(236, '2', 'Korisnik 2', 'Varaždin', 'korisnik2@eredar.hr', '12345', 110, 'Korisnuk grada Varaždina', '11', 1, 1, '2018-03-02 23:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, '2', 'Korisnik 3', 'Zagreb', 'korisnik3@eredar.hr', '12345', 125, 'Korisnik grada Zagreba', '11', 1, 1, '2018-03-02 23:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prijava`
--

CREATE TABLE IF NOT EXISTS `prijava` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adresa` varchar(255) COLLATE cp1250_bin DEFAULT NULL,
  `id_grad` bigint(20) DEFAULT NULL,
  `id_korisnik` bigint(20) DEFAULT NULL,
  `id_status_prijava` int(11) DEFAULT NULL,
  `id_vrsta_prijava` int(11) DEFAULT NULL,
  `id_zaposlenika` int(11) DEFAULT NULL,
  `latitude` varchar(255) COLLATE cp1250_bin DEFAULT NULL,
  `longitude` varchar(255) COLLATE cp1250_bin DEFAULT NULL,
  `slika` varchar(60) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `slika_sirina` int(11) DEFAULT NULL,
  `slika_visina` int(11) DEFAULT NULL,
  `napomena` varchar(255) COLLATE cp1250_bin DEFAULT NULL,
  `naslov` varchar(255) COLLATE cp1250_bin DEFAULT NULL,
  `opis` varchar(255) COLLATE cp1250_bin DEFAULT NULL,
  `proslijedena` datetime DEFAULT NULL,
  `vidljivost` int(11) DEFAULT NULL,
  `vrsta_naziv` varchar(255) COLLATE cp1250_bin DEFAULT NULL,
  `zaprimljena` datetime DEFAULT NULL,
  `zavrsena` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin AUTO_INCREMENT=17 ;

--
-- Dumping data for table `prijava`
--

INSERT INTO `prijava` (`id`, `adresa`, `id_grad`, `id_korisnik`, `id_status_prijava`, `id_vrsta_prijava`, `id_zaposlenika`, `latitude`, `longitude`, `slika`, `slika_sirina`, `slika_visina`, `napomena`, `naslov`, `opis`, `proslijedena`, `vidljivost`, `vrsta_naziv`, `zaprimljena`, `zavrsena`) VALUES
(12, 'V. Nazora 30, Čakovec', 12, 235, 1, 15, 5, '46.385706', '16.429', 'Slika_1.jpg', 1500, 2500, 'Poštovani,\r\nVaša prijava je zaprimljena.\r\n\r\nEredar tim', 'Odvodni šaht - začepljen', 'Prijavljujem začepljenje odvodnog šahta.', '2018-03-04 03:24:09', 1, 'Odvodnja', '2018-03-04 00:00:00', '2018-03-04 00:00:00'),
(13, 'Savska 20, Zagreb', 125, 237, 2, 20, 4, '45.803279', '15.964881', 'Slika_2.jpg', 2500, 1500, 'Hvala,\r\nuklonili smo nepravilnosti.\r\nGradska uprava.', 'Kolnik i oborinske vode', 'Ispred naše zgrade uvijek poslije kiše nastaje velika lokva zbog loše gradske ceste.', '2018-03-07 00:00:00', 1, 'naziv', '2018-03-07 00:00:00', '2018-03-07 00:00:00'),
(14, 'Ilica 120, Zagreb', 125, 237, 0, 16, 5, '45.812763', '15.961264', 'Slika_3.jpg', 2500, 1500, 'Hvala,\r\nzaprimili smo vašu prijavu koja će biti prosliješena gradskoj upravi.\r\n\r\nEredar tim', 'Smeće na prometnici', 'Na nlokalnoj cesti nalazi se smeće koje treba ukloniti.', '2018-03-11 00:00:00', 1, 'naziv', '2018-03-13 00:00:00', '2018-03-15 00:00:00'),
(15, 'Optujska 28, Varaždin', 110, 237, 0, 16, 5, '46.313800', '16.329406', 'Slika_4.jpg', 1500, 2500, 'Pošovani,\r\nobavijestit ćemo vašu komunalnu službu da riješi problem.\r\nHvala na upozorenju.\r\nGradska uprava', 'Koš pun smeća', 'Molim Gradsku upravu da prazni koševe po gradu.\r\nNezadovoljni građanin.', '2018-03-10 00:00:00', 1, NULL, '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
(16, 'Trg Kralja Tomislava, Varaždin', 110, 236, 0, 12, 5, '46.308199', '16.33786', 'Slika_5.jpg', 2500, 1500, 'Poštovani/a,\nzaprilimi smo vašu prijavu. Prijava će biti proslijeđena gradskoj upravi.\nEredar tim\n12345', 'Ambrozija u našem gradu', 'Poštovani,\r\nmolim vas da uklonite ambroziju.\r\nHvala,\r\nZabrinuti građanin.', '2018-03-11 00:00:00', 0, NULL, '2018-03-12 00:00:00', '2018-03-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vrste_prijava`
--

CREATE TABLE IF NOT EXISTS `vrste_prijava` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `vrste_prijava`
--

INSERT INTO `vrste_prijava` (`id`, `naziv`) VALUES
(9, 'Remećenje mira'),
(10, 'Oštećenje građevine'),
(11, 'Javna rasvjeta'),
(12, 'Zelene površine'),
(13, 'Nerazvrstane prometnice'),
(14, 'Drveća'),
(15, 'Slivnici'),
(16, 'Nečistoća'),
(17, 'Ostalo'),
(18, 'Prijava parkiranja'),
(19, 'Zeleni otok (kontejneri)'),
(20, 'Gradski promet');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
