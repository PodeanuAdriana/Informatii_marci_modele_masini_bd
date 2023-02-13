-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: feb. 12, 2023 la 07:32 PM
-- Versiune server: 5.7.36
-- Versiune PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `bd`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cardim`
--

DROP TABLE IF EXISTS `cardim`;
CREATE TABLE IF NOT EXISTS `cardim` (
  `id_dim` int(11) NOT NULL,
  `nume_caroserie` varchar(255) NOT NULL,
  `id_car` int(11) NOT NULL,
  `an_platforma` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dim`,`nume_caroserie`),
  KEY `id_c` (`id_car`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `cardim`
--

INSERT INTO `cardim` (`id_dim`, `nume_caroserie`, `id_car`, `an_platforma`) VALUES
(1, 'berlina', 1, 2005),
(2, 'sedan', 2, 2007),
(3, 'sedan', 3, 2005),
(4, 'berlina', 4, 2010),
(5, 'break', 5, 2011),
(6, 'break', 6, 2007),
(7, 'break', 7, 2005),
(8, 'break', 8, 2007),
(9, 'spider', 9, 2005),
(10, 'spider', 10, 2009),
(11, 'spider', 11, 2011),
(12, 'spider', 12, 2010);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `culori`
--

DROP TABLE IF EXISTS `culori`;
CREATE TABLE IF NOT EXISTS `culori` (
  `cod_culoare` int(11) NOT NULL AUTO_INCREMENT,
  `grad_culoare` varchar(50) NOT NULL,
  `nume_culoare` varchar(50) NOT NULL,
  `opacitateid` int(11) NOT NULL,
  `metalizareid` int(11) NOT NULL,
  PRIMARY KEY (`cod_culoare`),
  KEY `opacitateid` (`opacitateid`),
  KEY `metalizareid` (`metalizareid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `culori`
--

INSERT INTO `culori` (`cod_culoare`, `grad_culoare`, `nume_culoare`, `opacitateid`, `metalizareid`) VALUES
(1, 'inchis', 'rosu', 7, 7),
(2, 'deschis', 'rosu', 15, 7),
(3, 'inchis', 'verde', 17, 17),
(4, 'deschis', 'albastru', 15, 3),
(5, 'deschis', 'verde', 2, 3),
(6, 'inchis', 'albastru', 3, 2),
(7, 'deschis', 'portocaliu', 1, 1),
(8, 'inchis', 'galben', 2, 2),
(11, 'deschis', 'roz', 7, 12),
(12, 'inchis', 'roz', 19, 20),
(13, 'deschis', 'gri', 4, 5),
(14, 'inchis', 'gri', 9, 9),
(15, 'deschis', 'gri', 6, 7),
(16, 'inchis', 'gri', 3, 16),
(17, 'inchis', 'rosu', 6, 6),
(18, 'deschis', 'rosu', 5, 4),
(19, 'inchis', 'negru', 14, 13),
(20, 'deschis', 'negru', 20, 11);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `dimensiuni`
--

DROP TABLE IF EXISTS `dimensiuni`;
CREATE TABLE IF NOT EXISTS `dimensiuni` (
  `id_dimensiuni` int(11) NOT NULL AUTO_INCREMENT,
  `lungime` float NOT NULL,
  `latime` float NOT NULL,
  `greutate` float NOT NULL,
  `inaltime` float NOT NULL,
  `volum_portbagaj` float NOT NULL,
  PRIMARY KEY (`id_dimensiuni`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `dimensiuni`
--

INSERT INTO `dimensiuni` (`id_dimensiuni`, `lungime`, `latime`, `greutate`, `inaltime`, `volum_portbagaj`) VALUES
(1, 3.5, 2.5, 300, 2.5, 1.5),
(2, 2.5, 2.5, 300, 2.5, 1.5),
(3, 3.5, 2.5, 250, 2.5, 1.5),
(4, 2.5, 2.5, 250, 2.5, 1.5),
(5, 2.5, 1.5, 350, 3, 1.5),
(6, 2.5, 1.5, 350, 2.5, 1.5),
(7, 2.5, 1.5, 350, 3, 2.5),
(8, 2.5, 1.5, 350, 2.5, 2),
(9, 3, 2.5, 250, 1.5, 1),
(10, 3, 2.5, 250, 1.5, 1.5),
(11, 3, 2.5, 250, 1, 1),
(12, 3, 2.5, 250, 1, 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `dotari`
--

DROP TABLE IF EXISTS `dotari`;
CREATE TABLE IF NOT EXISTS `dotari` (
  `id_dotari` int(11) NOT NULL AUTO_INCREMENT,
  `senzori` varchar(50) NOT NULL,
  `abs` tinyint(1) NOT NULL,
  `gps` tinyint(1) NOT NULL,
  `cutie_viteze` varchar(50) NOT NULL,
  `aer_conditionat` tinyint(1) NOT NULL,
  `tapiterie` varchar(50) NOT NULL,
  `nr_usi` int(11) NOT NULL,
  PRIMARY KEY (`id_dotari`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `dotari`
--

INSERT INTO `dotari` (`id_dotari`, `senzori`, `abs`, `gps`, `cutie_viteze`, `aer_conditionat`, `tapiterie`, `nr_usi`) VALUES
(1, 'parcare', 1, 1, 'manuala', 1, 'rosie', 5),
(2, 'parcare', 1, 1, 'automata', 1, 'rosie', 5),
(3, 'parcare', 1, 0, 'manuala', 1, 'panza', 5),
(4, 'parcare', 1, 1, 'automata', 1, 'panza', 5),
(5, 'nu', 1, 0, 'manuala', 1, 'panza', 5),
(6, 'nu', 1, 1, 'automata', 1, 'piele', 5),
(7, 'nu', 0, 0, 'manuala', 1, 'panza', 5),
(8, 'nu', 1, 0, 'automata', 1, 'piele', 5),
(9, 'climatizare', 1, 1, 'manuala', 1, 'piele', 2),
(10, 'climatizare', 1, 0, 'automata', 1, 'piele', 5),
(11, 'climatizare', 1, 1, 'automata', 1, 'panza', 5),
(12, 'climatizare', 1, 0, 'manuala', 1, 'panza', 5);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `marci`
--

DROP TABLE IF EXISTS `marci`;
CREATE TABLE IF NOT EXISTS `marci` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `nume_marca` varchar(50) NOT NULL,
  `an_incepere` int(11) NOT NULL,
  `nr_vanzari` float NOT NULL,
  `capital` float NOT NULL,
  `cod_cul` int(11) NOT NULL,
  `cod_sediu` int(11) NOT NULL,
  PRIMARY KEY (`id_marca`),
  KEY `cod_cul` (`cod_cul`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `marci`
--

INSERT INTO `marci` (`id_marca`, `nume_marca`, `an_incepere`, `nr_vanzari`, `capital`, `cod_cul`, `cod_sediu`) VALUES
(1, 'audi', 1985, 33.61, 3.17, 14, 13),
(2, 'bmw', 1917, 7.2, 57.55, 19, 9),
(3, 'audi', 1985, 33.61, 3.17, 17, 14),
(4, 'bmw', 1917, 7.2, 57.55, 5, 10),
(5, 'audi', 1985, 33.61, 3.17, 15, 15),
(6, 'bmw', 1917, 7.2, 57.55, 18, 11),
(7, 'audi', 1985, 33.61, 3.17, 11, 16),
(8, 'bmw', 1917, 7.2, 57.55, 2, 12),
(9, 'dacia', 1966, 18.29, 298, 1, 5),
(10, 'dacia', 1966, 18.29, 298, 3, 6),
(11, 'dacia', 1966, 18.29, 298, 4, 7),
(12, 'dacia', 1966, 18.29, 298, 6, 8),
(13, 'ford', 1903, 6.6, 120.9, 7, 1),
(14, 'ford', 1903, 6.6, 120.9, 8, 2),
(15, 'ford', 1903, 6.6, 120.9, 12, 3),
(16, 'ford', 1903, 6.6, 120.9, 13, 4),
(17, 'mercedes-benz', 1926, 13.26, 155.23, 19, 17),
(18, 'mercedes-benz', 1926, 13.26, 155.23, 15, 18),
(19, 'mercedes-benz', 1926, 13.26, 155.23, 16, 17),
(20, 'mercedes-benz', 1926, 13.26, 155.23, 7, 18);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `metalizate`
--

DROP TABLE IF EXISTS `metalizate`;
CREATE TABLE IF NOT EXISTS `metalizate` (
  `id_metalizare` int(11) NOT NULL AUTO_INCREMENT,
  `grad_metalizare` float NOT NULL,
  PRIMARY KEY (`id_metalizare`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `metalizate`
--

INSERT INTO `metalizate` (`id_metalizare`, `grad_metalizare`) VALUES
(1, 16.12),
(2, 11.15),
(3, 20.31),
(4, 18.19),
(5, 19.16),
(6, 18.45),
(7, 96.3),
(8, 18.47),
(9, 41.52),
(10, 15.15),
(11, 27.24),
(12, 31.23),
(13, 56.31),
(14, 72.34),
(15, 18.45),
(16, 77.38),
(17, 93.18),
(18, 18.96),
(19, 9.32),
(20, 27.23);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `modcar`
--

DROP TABLE IF EXISTS `modcar`;
CREATE TABLE IF NOT EXISTS `modcar` (
  `nume_caroserie` varchar(255) NOT NULL,
  `id_m` int(11) NOT NULL,
  `id_car` int(11) NOT NULL,
  PRIMARY KEY (`nume_caroserie`,`id_m`),
  KEY `id_m` (`id_m`),
  KEY `id_car` (`id_car`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `modcar`
--

INSERT INTO `modcar` (`nume_caroserie`, `id_m`, `id_car`) VALUES
('berlina', 1, 1),
('sedan', 2, 2),
('sedan', 3, 3),
('berlina', 4, 4),
('break', 5, 5),
('break', 6, 6),
('break', 7, 7),
('break', 8, 8),
('spider', 9, 9),
('spider', 10, 10),
('spider', 11, 11),
('spider', 12, 12),
('roadster', 13, 13),
('roadster', 14, 14),
('roadster', 15, 15),
('roadster', 16, 16);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `moddot`
--

DROP TABLE IF EXISTS `moddot`;
CREATE TABLE IF NOT EXISTS `moddot` (
  `id_model_dotari` int(11) NOT NULL AUTO_INCREMENT,
  `id_mo` int(11) NOT NULL,
  `id_dot` int(11) NOT NULL,
  PRIMARY KEY (`id_model_dotari`),
  KEY `id_mo` (`id_mo`),
  KEY `id_dot` (`id_dot`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `moddot`
--

INSERT INTO `moddot` (`id_model_dotari`, `id_mo`, `id_dot`) VALUES
(1, 1, 10),
(2, 2, 9),
(3, 16, 11),
(4, 18, 12),
(5, 13, 2),
(6, 19, 5),
(7, 3, 8),
(8, 4, 6),
(9, 17, 9),
(10, 9, 4);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `modele`
--

DROP TABLE IF EXISTS `modele`;
CREATE TABLE IF NOT EXISTS `modele` (
  `id_model` int(11) NOT NULL AUTO_INCREMENT,
  `nume_model` varchar(50) NOT NULL,
  `an_fabricatie` int(11) NOT NULL,
  `an_incet_prod` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  PRIMARY KEY (`id_model`),
  KEY `id_mar` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `modele`
--

INSERT INTO `modele` (`id_model`, `nume_model`, `an_fabricatie`, `an_incet_prod`, `id_marca`) VALUES
(1, 'A4', 2019, 0, 1),
(2, 'A5', 2019, 0, 3),
(3, 'e-tron', 2020, 0, 1),
(4, 'e-tron', 2020, 0, 3),
(5, 'Seria3', 2011, 2015, 4),
(6, 'seria 3', 2011, 2015, 6),
(7, 'X6', 2014, 2018, 2),
(8, 'X6', 2014, 2018, 8),
(9, 'Logan II', 2018, 2020, 12),
(10, 'Solenza', 2003, 2005, 10),
(11, 'Dokker', 2019, 2021, 11),
(12, 'Duster', 2018, 2018, 9),
(13, 'ClasaB', 2019, 2022, 17),
(14, 'Edge', 2007, 2011, 13),
(15, 'Granada', 1977, 1981, 14),
(16, 'Bronco', 2022, 0, 15),
(17, 'Fiesta', 2011, 2012, 16),
(18, 'Citan', 2021, 0, 17),
(19, 'ClasaE', 2017, 2020, 18),
(20, 'EQE', 2022, 0, 18);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `modmotor`
--

DROP TABLE IF EXISTS `modmotor`;
CREATE TABLE IF NOT EXISTS `modmotor` (
  `id_mod_mot` int(11) NOT NULL AUTO_INCREMENT,
  `id_mod` int(11) NOT NULL,
  `serie_mot` int(11) NOT NULL,
  PRIMARY KEY (`id_mod_mot`),
  KEY `id_mod` (`id_mod`),
  KEY `serie_mot` (`serie_mot`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `modmotor`
--

INSERT INTO `modmotor` (`id_mod_mot`, `id_mod`, `serie_mot`) VALUES
(1, 1, 1234567881),
(2, 2, 1234567882),
(3, 3, 1234567883),
(4, 4, 1234567887),
(5, 5, 1234567892),
(6, 6, 1234567895),
(7, 7, 1234567899),
(8, 8, 1234567884),
(9, 9, 1234567885),
(10, 10, 1234567886),
(11, 11, 1234567891),
(12, 12, 1234567893),
(13, 13, 1234567894),
(14, 14, 1234567896),
(15, 15, 1234567897),
(16, 16, 1234567898);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `motoare`
--

DROP TABLE IF EXISTS `motoare`;
CREATE TABLE IF NOT EXISTS `motoare` (
  `serie_sasiu` int(11) NOT NULL,
  `tip_motor` varchar(50) NOT NULL,
  `putere` float NOT NULL,
  `nr_cilindrii` int(11) NOT NULL,
  `capacit_cilindrica` float NOT NULL,
  `distributie` varchar(50) NOT NULL,
  `capacitate_baie_ulei` float NOT NULL,
  PRIMARY KEY (`serie_sasiu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `motoare`
--

INSERT INTO `motoare` (`serie_sasiu`, `tip_motor`, `putere`, `nr_cilindrii`, `capacit_cilindrica`, `distributie`, `capacitate_baie_ulei`) VALUES
(1234567881, 'benzina', 1.2, 3, 3, 'pe lant', 2.4),
(1234567882, 'benzina', 1.2, 4, 3.6, 'pe lant', 3.1),
(1234567883, 'benzina', 1.1, 3, 4, 'pe curea', 2),
(1234567884, 'diesel', 4.4, 4, 4.5, 'pe curea', 3.5),
(1234567885, 'diesel', 3.4, 4, 4.2, 'pe curea', 2.5),
(1234567886, 'diesel', 4.5, 4, 3.6, 'pe lant', 4.5),
(1234567887, 'benzina', 3.2, 3, 2.7, 'pe lant', 2.5),
(1234567891, 'diesel', 3.4, 6, 4, 'pe lant', 5.2),
(1234567892, 'benzina', 1.2, 3, 3.2, 'pe curea', 3.2),
(1234567893, 'diesel', 4.6, 6, 6, 'pe lant', 4.6),
(1234567894, 'diesel', 5.2, 6, 6.3, 'pe lant', 4.3),
(1234567895, 'benzina', 1.2, 5, 5.2, 'pe curea', 5.2),
(1234567896, 'diesel', 4.2, 5, 3.2, 'pe lant', 3.2),
(1234567897, 'diesel', 6.3, 7, 6.3, 'pe lant', 5),
(1234567898, 'diesel', 3.6, 5, 4.6, 'pe lant', 3.2),
(1234567899, 'benzina', 1.4, 3, 3.2, 'pe curea', 3.1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `opace`
--

DROP TABLE IF EXISTS `opace`;
CREATE TABLE IF NOT EXISTS `opace` (
  `id_opacit` int(11) NOT NULL AUTO_INCREMENT,
  `grad_opacitate` float NOT NULL,
  `grad_luciu` float NOT NULL,
  PRIMARY KEY (`id_opacit`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `opace`
--

INSERT INTO `opace` (`id_opacit`, `grad_opacitate`, `grad_luciu`) VALUES
(1, 16.12, 11.15),
(2, 17.14, 11.15),
(3, 20.31, 18.19),
(4, 19.16, 18.45),
(5, 20.42, 18.2),
(6, 19.16, 18.45),
(7, 56.31, 56.31),
(8, 96.3, 41.52),
(9, 72.34, 15.41),
(10, 15.15, 27.24),
(11, 31.32, 64.52),
(12, 19.16, 18.45),
(13, 13.42, 65.71),
(14, 20.15, 18.19),
(15, 93.18, 72.13),
(16, 16.19, 16.19),
(17, 18.93, 13.72),
(18, 19.81, 16.19),
(19, 15.15, 42.84),
(20, 20.22, 22.11);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `sedii`
--

DROP TABLE IF EXISTS `sedii`;
CREATE TABLE IF NOT EXISTS `sedii` (
  `cod_sediu` int(11) NOT NULL AUTO_INCREMENT,
  `nr_contact` varchar(13) NOT NULL,
  `site` varchar(50) NOT NULL,
  `localitate` varchar(50) NOT NULL,
  `id_marc` int(11) NOT NULL,
  PRIMARY KEY (`cod_sediu`),
  KEY `id_marc` (`id_marc`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `sedii`
--

INSERT INTO `sedii` (`cod_sediu`, `nr_contact`, `site`, `localitate`, `id_marc`) VALUES
(1, '0725564321', 'https://www.ford.ro/autoturisme', 'Michigan', 13),
(2, '07222563445', 'https://www.ford.ro/autoturisme', 'Michigan', 14),
(3, '0725564321', 'https://www.ford.ro/autoturisme', 'Michigan', 15),
(4, '07222563445', 'https://www.ford.ro/autoturisme', 'Michigan', 16),
(5, '0725564255', 'https://www.dacia.ro/', 'Pitesti', 12),
(6, '0725564255', 'https://www.dacia.ro/', 'Pitesti', 10),
(7, '0725564255', 'https://www.dacia.ro/', 'Pitesti', 9),
(8, '0725564255', 'https://www.dacia.ro/', 'Pitesti', 11),
(9, '0733264587', 'https://www.bmw.ro/ro/index.html', 'Munchen', 2),
(10, '0733264587', 'https://www.bmw.ro/ro/index.html', 'Munchen', 4),
(11, '0733264587', 'https://www.bmw.ro/ro/index.html', 'Munchen', 6),
(12, '0733264587', 'https://www.bmw.ro/ro/index.html', 'Munchen', 8),
(13, '0735448963', 'https://www.audi.com/en.html', 'Ingolstadt', 1),
(14, '0735448963', 'https://www.audi.com/en.html', 'Ingolstadt', 3),
(15, '0735448963', 'https://www.audi.com/en.html', 'Ingolstadt', 5),
(16, '0735448963', 'https://www.audi.com/en.html', 'Ingolstadt', 7),
(17, '072356894', 'https://www.mercedes-benz.com/en/', 'Stuttgart', 17),
(18, '072356894', 'https://www.mercedes-benz.com/en/', 'Stuttgart', 18);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tipuri_caroserii`
--

DROP TABLE IF EXISTS `tipuri_caroserii`;
CREATE TABLE IF NOT EXISTS `tipuri_caroserii` (
  `id_car` int(11) NOT NULL AUTO_INCREMENT,
  `nume_caroserie` varchar(255) NOT NULL,
  `an_platforma` int(11) NOT NULL,
  PRIMARY KEY (`id_car`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `tipuri_caroserii`
--

INSERT INTO `tipuri_caroserii` (`id_car`, `nume_caroserie`, `an_platforma`) VALUES
(1, 'berlina', 2005),
(2, 'sedan', 2007),
(3, 'sedan', 2005),
(4, 'berlina', 2007),
(5, 'break', 2007),
(6, 'break', 2009),
(7, 'break', 2018),
(8, 'break', 2019),
(9, 'spider', 2017),
(10, 'spider', 2010),
(11, 'spider', 2020),
(12, 'spider', 2021),
(13, 'roadster', 2011),
(14, 'roadster', 2005),
(15, 'roadster', 2017),
(16, 'roadster', 2020);

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `cardim`
--
ALTER TABLE `cardim`
  ADD CONSTRAINT `cardim_ibfk_1` FOREIGN KEY (`id_dim`) REFERENCES `dimensiuni` (`id_dimensiuni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_c` FOREIGN KEY (`id_car`) REFERENCES `tipuri_caroserii` (`id_car`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `culori`
--
ALTER TABLE `culori`
  ADD CONSTRAINT `metalizareid` FOREIGN KEY (`metalizareid`) REFERENCES `metalizate` (`id_metalizare`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `opacitateid` FOREIGN KEY (`opacitateid`) REFERENCES `opace` (`id_opacit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `marci`
--
ALTER TABLE `marci`
  ADD CONSTRAINT `cod_cul` FOREIGN KEY (`cod_cul`) REFERENCES `culori` (`cod_culoare`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `modcar`
--
ALTER TABLE `modcar`
  ADD CONSTRAINT `id_car` FOREIGN KEY (`id_car`) REFERENCES `tipuri_caroserii` (`id_car`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modcar_ibfk_1` FOREIGN KEY (`id_m`) REFERENCES `modele` (`id_model`);

--
-- Constrângeri pentru tabele `moddot`
--
ALTER TABLE `moddot`
  ADD CONSTRAINT `id_dot` FOREIGN KEY (`id_dot`) REFERENCES `dotari` (`id_dotari`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_mo` FOREIGN KEY (`id_mo`) REFERENCES `modele` (`id_model`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `modele`
--
ALTER TABLE `modele`
  ADD CONSTRAINT `id_mar` FOREIGN KEY (`id_marca`) REFERENCES `marci` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `modmotor`
--
ALTER TABLE `modmotor`
  ADD CONSTRAINT `id_mod` FOREIGN KEY (`id_mod`) REFERENCES `modele` (`id_model`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `serie_mot` FOREIGN KEY (`serie_mot`) REFERENCES `motoare` (`serie_sasiu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `sedii`
--
ALTER TABLE `sedii`
  ADD CONSTRAINT `id_marc` FOREIGN KEY (`id_marc`) REFERENCES `marci` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
