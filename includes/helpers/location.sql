-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2018 at 04:01 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `address`, `date`) VALUES
(1, 'Sydney, NSW', '2018-01-08 14:02:38'),
(2, 'cairo', '2018-01-08 14:02:48'),
(3, 'mansoura', '2018-01-08 14:08:52'),
(4, 'Sydney, NSW', '2018-01-08 14:11:58'),
(5, 'wails', '2018-01-08 14:12:48'),
(6, 'tanta', '2018-01-08 14:24:49'),
(7, 'tanta egypt', '2018-01-08 14:25:21'),
(8, 'Sydney, NSW', '2018-01-08 14:44:38'),
(9, 'london', '2018-01-08 14:46:58'),
(10, 'london', '2018-01-08 14:47:29'),
(11, 'birlin', '2018-01-08 14:47:49'),
(12, 'fayid', '2018-01-08 15:52:03'),
(13, 'Sydney, NSW', '2018-01-08 16:03:37'),
(14, 'Sydney, NSW', '2018-01-08 16:18:12'),
(15, 'tahrer', '2018-01-08 16:26:52'),
(16, 'Sydney, NSW', '2018-01-08 16:33:56'),
(17, 'Sydney, NSW', '2018-01-08 16:35:25'),
(18, 'Sydney, NSW', '2018-01-08 16:43:54'),
(19, 'sharm', '2018-01-08 16:58:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
