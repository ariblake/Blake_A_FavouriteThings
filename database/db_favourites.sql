-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2019 at 12:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourites`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things`
--

DROP TABLE IF EXISTS `tbl_things`;
CREATE TABLE IF NOT EXISTS `tbl_things` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(30) NOT NULL,
  `Image` varchar(30) NOT NULL,
  `Description` text NOT NULL,
  `Category` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_things`
--

INSERT INTO `tbl_things` (`ID`, `Title`, `Image`, `Description`, `Category`) VALUES
(1, 'Dogs', 'dog.jpeg', 'My favourite animal is a dog. I love all kinds of dogs. In the future I\'d love to get a golden retriever or a corgi for a pet. ', 'Favourite Animal'),
(2, 'Video Games', 'games.jpeg', 'One of my favourite things to do in my spare time is play video games. My favourites are Nintendo games including  Mario, Zelda, and Animal Crossing. I also love The Sims. ', 'Favourite Hobby'),
(3, 'Pasta', 'pasta.jpeg', 'My favourite food is pasta. It has been for as long as I can remember and I\'m sure it will continue to be. I especially love Alfredo but any kind will do.', 'Favourite Food');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
