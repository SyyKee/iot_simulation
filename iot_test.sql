-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 23, 2023 at 05:16 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `iot`
--

DROP TABLE IF EXISTS `iot`;
CREATE TABLE IF NOT EXISTS `iot` (
  `temperature` varchar(11) NOT NULL,
  `carbon` varchar(11) NOT NULL,
  `vent` varchar(11) NOT NULL,
  `pression` varchar(11) NOT NULL,
  `index` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`index`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iot`
--

INSERT INTO `iot` (`temperature`, `carbon`, `vent`, `pression`, `index`) VALUES
('16', '40.7', '48', '1014', 1),
('11', '40.2', '38', '1014', 2),
('17', '38.5', '60', '1014', 3),
('11', '40.1', '52', '1015', 4),
('17', '39.3', '58', '1016', 5),
('15', '40.3', '67', '1017', 6),
('14', '39.8', '43', '1014', 7),
('16', '40.2', '67', '1017', 8),
('16', '38.8', '63', '1015', 9),
('15', '39.2', '40', '1017', 10),
('16', '38.3', '67', '1014', 11),
('9', '40.8', '53', '1014', 12),
('12', '38', '65', '1014', 13),
('16', '40.6', '50', '1015', 14),
('11', '39.4', '61', '1015', 15),
('11', '40.9', '68', '1016', 16),
('14', '38.7', '41', '1013', 17),
('11', '38.8', '62', '1016', 18),
('10', '38', '41', '1013', 19),
('10', '38', '69', '1014', 20),
('11', '40.2', '58', '1014', 21),
('15', '39.4', '63', '1017', 22),
('16', '38.3', '50', '1015', 23),
('10', '40.3', '45', '1015', 24),
('10', '40.8', '55', '1013', 25),
('10', '39.9', '68', '1016', 26),
('10', '40.1', '59', '1017', 27);

-- --------------------------------------------------------

--
-- Table structure for table `iot_archive`
--

DROP TABLE IF EXISTS `iot_archive`;
CREATE TABLE IF NOT EXISTS `iot_archive` (
  `temperature` int(11) NOT NULL,
  `carbon` int(11) NOT NULL,
  `vent` int(11) NOT NULL,
  `pression` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iot_p`
--

DROP TABLE IF EXISTS `iot_p`;
CREATE TABLE IF NOT EXISTS `iot_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temperature` int(11) NOT NULL,
  `carbon` int(11) NOT NULL,
  `vent` int(11) NOT NULL,
  `pression` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iot_p`
--

INSERT INTO `iot_p` (`id`, `temperature`, `carbon`, `vent`, `pression`) VALUES
(1, 17, 41, 45, 1014),
(2, 10, 41, 49, 1017),
(3, 11, 41, 40, 1013),
(4, 14, 41, 52, 1014),
(5, 11, 40, 64, 1017),
(6, 10, 38, 50, 1013),
(7, 17, 39, 52, 1015),
(8, 11, 40, 69, 1016),
(9, 17, 40, 59, 1015),
(10, 11, 40, 67, 1014),
(11, 10, 39, 40, 1016),
(12, 11, 41, 42, 1014),
(13, 15, 38, 49, 1014),
(14, 11, 40, 49, 1016),
(15, 11, 40, 54, 1014),
(16, 14, 40, 55, 1014),
(17, 16, 40, 58, 1016),
(18, 9, 39, 49, 1017),
(19, 11, 39, 40, 1016),
(20, 11, 39, 43, 1015),
(21, 14, 39, 47, 1013),
(22, 10, 40, 53, 1013),
(23, 12, 40, 39, 1017),
(24, 11, 40, 67, 1013),
(25, 12, 39, 66, 1017),
(26, 11, 40, 57, 1013),
(27, 12, 40, 54, 1014),
(28, 14, 41, 48, 1016),
(29, 9, 40, 50, 1015),
(30, 11, 40, 69, 1014),
(31, 15, 39, 40, 1016),
(32, 11, 39, 40, 1013),
(33, 11, 40, 56, 1015),
(34, 17, 39, 38, 1013),
(35, 14, 40, 45, 1013),
(36, 16, 39, 58, 1014),
(37, 11, 38, 47, 1015),
(38, 16, 41, 39, 1013),
(39, 11, 38, 52, 1015),
(40, 14, 38, 57, 1017),
(41, 11, 40, 64, 1017),
(42, 15, 38, 54, 1017),
(43, 11, 41, 60, 1017),
(44, 11, 39, 60, 1013),
(45, 15, 39, 44, 1013),
(46, 12, 40, 64, 1013),
(47, 15, 38, 56, 1013);

-- --------------------------------------------------------

--
-- Table structure for table `iot_table`
--

DROP TABLE IF EXISTS `iot_table`;
CREATE TABLE IF NOT EXISTS `iot_table` (
  `index1` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iot_table`
--

INSERT INTO `iot_table` (`index1`) VALUES
('9'),
('15'),
('16'),
('11'),
('16'),
('17'),
('15'),
('10'),
('9'),
('11'),
('11'),
('15'),
('15'),
('14'),
('16'),
('14'),
('11'),
('17'),
('11'),
('10'),
('12'),
('10'),
('17'),
('11');

-- --------------------------------------------------------

--
-- Table structure for table `iot_test`
--

DROP TABLE IF EXISTS `iot_test`;
CREATE TABLE IF NOT EXISTS `iot_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temperature` int(11) NOT NULL,
  `carbon` int(11) NOT NULL,
  `vent` int(11) NOT NULL,
  `pression` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
