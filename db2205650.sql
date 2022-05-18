-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220501.46b7525c53
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2022 at 06:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db2205650`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `weather_description` varchar(255) DEFAULT NULL,
  `weather_temperature` float DEFAULT NULL,
  `weather_wind` float DEFAULT NULL,
  `weather_humidity` float DEFAULT NULL,
  `id` int(11) NOT NULL,
  `numeric_date` int(15) DEFAULT NULL,
  `timezone` int(12) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pressure` float DEFAULT NULL,
  `weather_when` datetime DEFAULT NULL,
  `weather_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`weather_description`, `weather_temperature`, `weather_wind`, `weather_humidity`, `id`, `numeric_date`, `timezone`, `city`, `pressure`, `weather_when`, `weather_name`) VALUES
('broken clouds', 13.02, 2.57, 86, 1, 1651485044, 3600, 'Liverpool', 1020, '2022-05-02 15:35:51', 'Clouds'),
('broken clouds', 13.02, 2.57, 86, 2, 1651485044, 3600, 'Liverpool', 1020, '2022-05-02 15:36:10', 'Clouds');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



