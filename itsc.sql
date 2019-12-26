-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2019 at 05:38 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(10) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `cmp_name` varchar(255) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `comment` text NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `user_id`, `cmp_name`, `mobile`, `phone`, `email`, `address`, `comment`, `last_modify`) VALUES
(1, 'itsc_user', 'itsc', 234567890, 23456789, 'aboss0545@gmail.com', '7 no chauraha bhopal', '', '2019-11-23 10:32:00'),
(6, 'itsc_user', 'iss', 8319371422, 1213243546, 'aboss0545@gmail.com', 'Village Hariyakheda ,tehsil piploda district ratlam M.P.', 'davdsdfad', '2019-11-23 10:39:44'),
(7, 'itsc_user', 'iss', 8319371422, 23456789, 'aboss0545@gmail.com', 'Village Hariyakheda ,tehsil piploda district ratlam M.P.', 'bghjg', '2019-11-23 10:40:49'),
(8, 'itsc_user', 'iss', 8319371422, 12345, 'aboss0545@gmail.com', 'Village Hariyakheda ,tehsil piploda district ratlam M.P.', 'bxfnb', '2019-11-23 10:42:57'),
(9, 'itsc_user', 'iss', 8319371422, 1234567, 'aboss0545@gmail.com', 'Village Hariyakheda ,tehsil piploda district ratlam M.P.', 'zfdxcn', '2019-11-23 10:46:53'),
(10, 'itsc_user', 'iss', 8319371422, 4567, 'aboss0545@gmail.com', 'Village Hariyakheda ,tehsil piploda district ratlam M.P.', 'gfjvhhhhhhbgbgh', '2019-11-23 10:48:26'),
(11, 'itsc_user', 'iss', 8319371422, 32125236, 'aboss0545@gmail.com', 'Village Hariyakheda ,tehsil piploda district ratlam M.P.', 'Czxfsg', '2019-11-23 10:49:12'),
(12, 'itsc_user', '9', 9, 9, '9', '9', '9', '2019-11-23 11:01:27'),
(13, 'itsc_user', '9', 9, 9, '9', '9', '9', '2019-11-23 11:09:12'),
(14, 'itsc_user', 'test', 23434, 23434, 'info@itscglobal.com', '23', '23', '2019-11-23 11:09:55'),
(15, 'itsc_user', 'dpj', 8319371422, 1, '312412', 'Village Hariyakheda ,tehsil piploda district ratlam M.P.', 'sxcsa', '2019-11-23 11:21:50'),
(16, 'itsc_user', 'itsc2', 0, 0, 'asdfghjl', 'bhopal', 'hi', '2019-11-23 11:25:20'),
(17, 'itsc_user', 'hello', 7832, 9899992, 'hello@123', 'bhopal', 'hi', '2019-11-23 11:29:38'),
(18, 'itsc_user', 'hello', 3245, 9999890, 'hello@123', 'bhopal', 'hi', '2019-11-23 11:31:07'),
(19, 'itsc_user', '9', 9, 9, '9', '9', '9', '2019-11-23 11:32:01'),
(20, 'itsc_user', '8', 8, 8, '8', '8', '8', '2019-11-23 11:33:02'),
(21, 'itsc_user', '8', 8, 8, '8', '8', '8', '2019-11-23 11:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `pwd`, `last_modify`) VALUES
('itsc_admin', 'hello123', '2019-11-23 07:14:38'),
('itsc_user', 'hello123', '2019-11-23 07:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_contact`
--

CREATE TABLE `user_contact` (
  `sno` int(10) NOT NULL,
  `calls` int(2) NOT NULL,
  `email` int(2) NOT NULL,
  `msg` int(2) NOT NULL,
  `response` int(2) NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_contact`
--

INSERT INTO `user_contact` (`sno`, `calls`, `email`, `msg`, `response`, `last_modify`) VALUES
(6, 1, 1, 1, 1, '2019-11-23 12:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_email`
--

CREATE TABLE `user_email` (
  `user_id` varchar(20) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_mob`
--

CREATE TABLE `user_mob` (
  `user_id` varchar(20) NOT NULL,
  `user_mob` bigint(15) NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_name`
--

CREATE TABLE `user_name` (
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `user_id` varchar(20) NOT NULL,
  `post` varchar(20) NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`user_id`, `post`, `last_modify`) VALUES
('itsc_admin', 'Admin', '2019-11-23 09:45:40'),
('itsc_user', 'Adder', '2019-11-23 09:45:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_contact`
--
ALTER TABLE `user_contact`
  ADD KEY `sno` (`sno`);

--
-- Indexes for table `user_email`
--
ALTER TABLE `user_email`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `user_mob`
--
ALTER TABLE `user_mob`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_name`
--
ALTER TABLE `user_name`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_contact`
--
ALTER TABLE `user_contact`
  ADD CONSTRAINT `user_contact_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `contact` (`sno`);

--
-- Constraints for table `user_email`
--
ALTER TABLE `user_email`
  ADD CONSTRAINT `user_email_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_mob`
--
ALTER TABLE `user_mob`
  ADD CONSTRAINT `user_mob_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_name`
--
ALTER TABLE `user_name`
  ADD CONSTRAINT `user_name_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
