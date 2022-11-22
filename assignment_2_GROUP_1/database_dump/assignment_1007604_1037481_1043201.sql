-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 01:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ontime`
--
CREATE DATABASE IF NOT EXISTS `ontime` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ontime`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passcode` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `first_name`, `last_name`, `email`, `passcode`) VALUES
(4, 'user', 'one', 'user@one.com', '$2y$10$fMgiCzcPfUCo.9uY3mYWNeXhUfvfVN7U0c2O0wa1BuXNVtEC6sKhO'),
(5, 'user', 'two', 'user@two.com', '$2y$10$TBDbdAqcHot0uXFnEBNr2uJxuh1bHRTmUt4awNp5YkfCTBnsa93lm'),
(6, 'user', 'three', 'user@three.com', '$2y$10$BTqQYcp2wCEJkxsFe./Ug.M6aNKFsaZAjHmPYefnR6B.vPi5//vu.'),
(7, 'user', 'four', 'user@four.com', '$2y$10$A75rj9FC3AM.M9zdIjwfLOqiskrppICXNCmkG4CQA.zpVVZJaTtc6'),
(8, 'user', 'five', 'user@five.com', '$2y$10$Ta0bTBuwZonyTPILFrUrWe6iMCJoY1b7OSI7XgIBZGInLvGD.kRta');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
CREATE TABLE IF NOT EXISTS `meetings` (
  `meeting_id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_user_email` varchar(50) NOT NULL,
  `meeting_name` varchar(30) NOT NULL,
  `meeting_description` varchar(30) NOT NULL,
  `meeting_time` time NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_vis` varchar(20) NOT NULL,
  `meeting_url` varchar(50) NOT NULL,
  PRIMARY KEY (`meeting_id`),
  KEY `meeting_user_email` (`meeting_user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`meeting_id`, `meeting_user_email`, `meeting_name`, `meeting_description`, `meeting_time`, `meeting_date`, `meeting_vis`, `meeting_url`) VALUES
(18, 'user@one.com', 'one one', 'one one', '08:33:00', '2022-10-06', 'PRIVATE', 'https://www.example.net/'),
(19, 'user@one.com', 'two', 'two', '19:35:00', '2022-11-30', 'PUBLIC', 'https://www.example.net/'),
(20, 'user@one.com', 'three', 'three', '19:34:00', '2022-11-16', 'PUBLIC', 'https://www.example.net/'),
(21, 'user@one.com', 'four', 'four', '19:36:00', '2022-11-30', 'PUBLIC', 'https://www.example.net/'),
(24, 'user@one.com', 'zoom', 'zoom meeting', '19:48:00', '2022-12-06', 'PUBLIC', 'https://support.zoom.us'),
(25, 'user@two.com', 'one', 'one', '19:55:00', '2022-11-01', 'PUBLIC', 'https://www.w3schools.com/html/'),
(26, 'user@two.com', 'two', 'two', '20:02:00', '2022-11-03', 'PUBLIC', 'https://www.google.com/'),
(27, 'user@two.com', 'three', 'three', '20:03:00', '2022-11-09', 'PUBLIC', 'https://www.google.com/'),
(28, 'user@two.com', 'four', 'four', '20:04:00', '2022-11-03', 'PRIVATE', 'https://www.google.com/'),
(29, 'user@three.com', 'one', 'one', '20:06:00', '2022-11-18', 'PRIVATE', 'https://www.google.com/tehee'),
(30, 'user@three.com', 'two', 'two', '20:07:00', '2022-11-03', 'PRIVATE', 'https://www.google.com/'),
(31, 'user@three.com', 'three', 'three', '08:05:00', '2022-11-03', 'PUBLIC', 'https://www.google.com/'),
(32, 'user@three.com', 'four', 'four', '08:05:00', '2022-11-18', 'PUBLIC', 'https://www.google.com/'),
(33, 'user@four.com', 'one', 'one', '20:07:00', '2022-11-02', 'PUBLIC', 'https://www.google.com/'),
(34, 'user@four.com', 'two', 'two', '20:08:00', '2022-11-12', 'PRIVATE', 'https://www.google.com/'),
(35, 'user@four.com', 'three', 'three', '20:09:00', '2022-11-10', 'PUBLIC', 'https://twitter.com/home'),
(36, 'user@four.com', 'four', 'four', '08:09:00', '2022-11-09', 'PUBLIC', 'https://twitter.com/home'),
(37, 'user@five.com', 'one', 'one', '20:12:00', '2022-11-04', 'PUBLIC', 'https://www.example.com/'),
(38, 'user@five.com', 'three', 'three', '20:13:00', '2022-11-04', 'PRIVATE', 'https://www.example.net/'),
(39, 'user@five.com', 'two', 'two', '20:13:00', '2022-11-11', 'PRIVATE', 'https://www.example.net/'),
(40, 'user@five.com', 'four', 'four', '08:11:00', '2022-11-03', 'PRIVATE', 'https://www.example.net/'),
(41, 'user@one.com', 'six', 'six', '20:17:00', '2022-11-03', 'PRIVATE', 'https://www.example.net/');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`meeting_user_email`) REFERENCES `account` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
