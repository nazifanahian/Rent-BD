-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2022 at 07:46 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `house_rental`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getbooking` ()  SELECT booking_date from booking$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `t_id` int(6) DEFAULT NULL,
  `h_id` int(6) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `price` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`t_id`, `h_id`, `booking_date`, `price`) VALUES
(1, 6, '2022-08-29', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `id` int(11) NOT NULL,
  `owner_id` int(3) DEFAULT NULL,
  `no_of_rooms` int(2) DEFAULT NULL,
  `rent` int(10) DEFAULT NULL,
  `pics` blob DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id`, `owner_id`, `no_of_rooms`, `rent`, `pics`, `city`, `address`, `description`) VALUES
(2, 2, 2, 3000, 0x686f6d65312e6a7067, 'Dhaka', 'Bashundhara R/A', 'Very big'),
(6, 2, 4, 4000, 0x68382e6a7067, 'Dhaka', '108,NORTH MANIKDI,DHAKA-CANTONMENT,DHAKA-1206', 'Very big');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `o_id` int(3) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `pwd` varchar(15) DEFAULT NULL,
  `mobile_no` int(12) DEFAULT NULL,
  `occupation` varchar(15) DEFAULT NULL,
  `no_of_houses` int(3) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`o_id`, `name`, `email`, `pwd`, `mobile_no`, `occupation`, `no_of_houses`, `city`, `address`) VALUES
(1, 'HM NAZIB E HUDA', 'nazibhuda41@gmail.co', 'nazifa', 1719273838, 'Student', 2, 'DHAKA', '108,NORTH MANIKDI,DHAKA-C'),
(2, 'Faria', 'faria@gmail.com', 'faria', 1726789043, 'Student', 3, 'Dhaka', 'Bashundhara R/A');

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `t_id` int(11) NOT NULL,
  `fname` varchar(10) DEFAULT NULL,
  `lname` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `pwd` varchar(15) DEFAULT NULL,
  `mobile_no` varchar(12) DEFAULT NULL,
  `occupation` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`t_id`, `fname`, `lname`, `email`, `pwd`, `mobile_no`, `occupation`) VALUES
(1, 'Alif', 'Hasan', 'alif@gmail.com', 'alif', '01728956709', 'Singer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `o_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
