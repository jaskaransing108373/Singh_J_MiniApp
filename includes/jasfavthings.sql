-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2020 at 04:17 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasfavthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `myfavourites`
--

DROP TABLE IF EXISTS `myfavourites`;
CREATE TABLE IF NOT EXISTS `myfavourites` (
  `id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myfavourites`
--

INSERT INTO `myfavourites` (`id`, `name`, `description`, `image`) VALUES
(1, 'Biking', 'I like to ride bike on hills. I have been on my bike to long distances which also includes the highest motor pass of the world. I own a Royal Enfield Classic 500. ', 'bike.jpg'),
(2, 'Swimming', 'I also like to swim. I have been doing this since the childhood and also achieved many medals. Swimming makes me relax and also I like to swim to have fun.', 'swim.jpg'),
(3, 'Cars', 'My life is all about having the antique cars and bikes. One of my favourite car is Ford Mustang Shelby. Driving a car makes me feel awesome. ', 'mustang.jpg'),
(4, 'Dogs', 'To be honest. I\'m a dog person. I love to stay with my dog and spent some time with him by playing. the breed of my Laddu is rot. He is a sweet rotty.', 'dog.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
