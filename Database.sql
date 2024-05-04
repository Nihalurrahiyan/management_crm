-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 05:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `no_dues`
--
CREATE DATABASE IF NOT EXISTS `no_dues` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `no_dues`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_no` int(8) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Name` varchar(255) DEFAULT NULL,
  `reg_no` int(11) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `ap_medicare` tinyint(1) DEFAULT NULL,
  `ap_library` tinyint(1) DEFAULT NULL,
  `ap_ams` tinyint(1) DEFAULT NULL,
  `ap_sports` tinyint(1) DEFAULT NULL,
  `ap_IT` tinyint(1) DEFAULT NULL,
  `ap_hostel` tinyint(1) DEFAULT NULL,
  `ap_mess` tinyint(1) DEFAULT NULL,
  `ap_finance` tinyint(1) DEFAULT NULL,
  `ap_academics` tinyint(1) DEFAULT NULL,
  `ap_dept` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`reg_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_no` int(8) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
