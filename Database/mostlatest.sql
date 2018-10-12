-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2018 at 09:35 PM
-- Server version: 8.0.12
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `sapid` int(11) NOT NULL,
  `year_of_passing` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`sapid`, `year_of_passing`) VALUES
(2004160051, '2018-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `name` varchar(30) NOT NULL,
  `incharge` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`name`, `incharge`, `description`, `number`) VALUES
('DJ LIT', 'Principal', 'Literary Society', 9998),
('Unicode', 'Sheku', 'Code ', 12309),
('working', 'wokrking', 'working', 123213);

-- --------------------------------------------------------

--
-- Table structure for table `current`
--

CREATE TABLE `current` (
  `sapid` int(11) NOT NULL,
  `fees` float NOT NULL,
  `division` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current`
--

INSERT INTO `current` (`sapid`, `fees`, `division`) VALUES
(1, 213, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `committee` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `location` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seminarhall`
--

CREATE TABLE `seminarhall` (
  `Location` varchar(50) NOT NULL,
  `opening_time` time(6) NOT NULL DEFAULT '00:00:00.000000',
  `closing_time` time(6) NOT NULL DEFAULT '00:00:00.000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seminarhall`
--

INSERT INTO `seminarhall` (`Location`, `opening_time`, `closing_time`) VALUES
('last', '12:12:00.000000', '12:53:00.000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
