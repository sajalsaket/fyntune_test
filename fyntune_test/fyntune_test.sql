-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 02:42 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fyntune_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE IF NOT EXISTS `feeds` (
`feed_id` int(2) NOT NULL,
  `user_id` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL,
  `feed` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`feed_id`, `user_id`, `category`, `feed`, `created_at`) VALUES
(1, '1', 'Category1', 'test feed 1', '2021-05-08 20:14:56'),
(2, '1', 'Category2', 'test feed 2', '2021-05-08 20:15:26'),
(3, '1', 'Category1', 'test feed 3', '2021-05-08 20:15:44'),
(4, '1', 'Category2', 'test feed 4\r\n', '2021-05-08 20:16:03'),
(5, '1', 'Category2', 'test feed 5\r\ntest feed \r\ntest feed \r\ntest feed \r\ntest feed 5\r\ntest feed 5', '2021-05-08 20:16:32'),
(6, '1', 'Category1', 'test feed 6\r\ntest feed 6\r\ntest feed 6\r\ntest feed 6test feed 6test feed 6\r\ntest feed 6\r\ntest feed 6\r\ntest feed 6\r\n\r\n', '2021-05-08 20:17:00'),
(7, '1', 'Category3', 'test feed 7', '2021-05-08 20:17:14'),
(8, '1', 'Category2', 'test feed 8\ntest feed 8 t', '2021-05-08 20:17:28'),
(9, '1', 'Category1', 'test feed 9', '2021-05-08 20:17:37'),
(10, '1', 'Category3', 'test feed 10', '2021-05-08 20:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`) VALUES
(1, 'sajal@gmail.com', 'Sajal Saket', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'test@gmail.com', 'test name', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
 ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
MODIFY `feed_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
