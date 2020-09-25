-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 11:21 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localdb`
--
CREATE DATABASE IF NOT EXISTS `localdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `localdb`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `id` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `r_from` varchar(20) DEFAULT NULL,
  `r_to` varchar(20) DEFAULT NULL,
  `coach` varchar(10) DEFAULT NULL,
  `seat` varchar(10) DEFAULT NULL,
  `train` varchar(20) DEFAULT NULL,
  `start_sn` varchar(20) DEFAULT NULL,
  `end_sn` varchar(20) DEFAULT NULL,
  `passenger_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `booking`
--

TRUNCATE TABLE `booking`;
-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `train` varchar(20) NOT NULL,
  `sequence_number` int(11) NOT NULL,
  `station` varchar(20) DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `schedule`
--

TRUNCATE TABLE `schedule`;
--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`train`, `sequence_number`, `station`, `time_in`, `time_out`) VALUES
('TA01', 0, 'A01', '01:00:00', '01:05:00'),
('TA01', 1, 'A02', '02:00:00', '02:05:00'),
('TA01', 2, 'A03', '03:30:00', '03:35:00'),
('TA01', 3, 'A04', '05:35:00', '05:40:00'),
('TA01', 4, 'A05', '07:20:00', '07:25:00'),
('TA01', 5, 'A04', '09:05:00', '09:10:00'),
('TA01', 6, 'A06', '10:05:00', '10:10:00'),
('TA01', 7, 'C01', '12:10:00', '12:15:00'),
('TA01', 8, 'C02', '13:25:00', '13:30:00'),
('TA01', 9, 'C01', '14:40:00', '14:45:00'),
('TA01', 10, 'A06', '16:45:00', '16:50:00'),
('TA01', 11, 'A04', '17:45:00', '17:50:00'),
('TA01', 12, 'A03', '19:50:00', '19:55:00'),
('TA01', 13, 'A02', '21:20:00', '21:25:00'),
('TA01', 14, 'A01', '22:20:00', '22:25:00'),
('TA05', 0, 'A05', '01:00:00', '01:05:00'),
('TA05', 1, 'A04', '02:45:00', '02:50:00'),
('TA05', 2, 'A03', '04:50:00', '04:55:00'),
('TA05', 3, 'A02', '06:20:00', '06:25:00'),
('TA05', 4, 'A01', '07:20:00', '07:25:00'),
('TA05', 5, 'A02', '08:20:00', '08:25:00'),
('TA05', 6, 'B01', '11:25:00', '11:30:00'),
('TA05', 7, 'B02', '13:30:00', '13:35:00'),
('TA05', 8, 'B01', '15:35:00', '15:40:00'),
('TA05', 9, 'A02', '18:40:00', '18:45:00'),
('TA05', 10, 'A03', '20:10:00', '20:15:00'),
('TA05', 11, 'A04', '22:15:00', '22:20:00'),
('TA05', 12, 'A05', '00:00:00', '00:05:00'),
('TB02', 0, 'B02', '01:00:00', '01:05:00'),
('TB02', 1, 'B01', '03:05:00', '03:10:00'),
('TB02', 2, 'B03', '04:05:00', '04:10:00'),
('TB02', 3, 'B01', '05:05:00', '05:10:00'),
('TB02', 4, 'A02', '08:10:00', '08:15:00'),
('TB02', 5, 'A03', '09:40:00', '09:45:00'),
('TB02', 6, 'A04', '11:45:00', '11:50:00'),
('TB02', 7, 'A05', '13:30:00', '13:35:00'),
('TB02', 8, 'A04', '15:15:00', '15:20:00'),
('TB02', 9, 'A03', '17:20:00', '17:25:00'),
('TB02', 10, 'A02', '18:50:00', '18:55:00'),
('TB02', 11, 'B01', '21:55:00', '22:00:00'),
('TB02', 12, 'B02', '00:00:00', '00:05:00'),
('TC02', 0, 'C02', '01:00:00', '01:05:00'),
('TC02', 1, 'C01', '02:15:00', '02:20:00'),
('TC02', 2, 'A06', '04:20:00', '04:25:00'),
('TC02', 3, 'A04', '05:20:00', '05:25:00'),
('TC02', 4, 'A03', '07:25:00', '07:30:00'),
('TC02', 5, 'A02', '08:55:00', '09:00:00'),
('TC02', 6, 'A01', '09:55:00', '10:00:00'),
('TC02', 7, 'A02', '10:55:00', '11:00:00'),
('TC02', 8, 'A03', '12:25:00', '12:30:00'),
('TC02', 9, 'A04', '14:30:00', '14:35:00'),
('TC02', 10, 'A05', '16:15:00', '16:20:00'),
('TC02', 11, 'A04', '18:00:00', '18:05:00'),
('TC02', 12, 'A06', '19:00:00', '19:05:00'),
('TC02', 13, 'C01', '21:05:00', '21:10:00'),
('TC02', 14, 'C02', '22:20:00', '22:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
CREATE TABLE `station` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `station`
--

TRUNCATE TABLE `station`;
--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `name`) VALUES
('A01', 'Rocky Hill'),
('A02', 'Little Paris'),
('A03', 'Fire Field'),
('A04', 'Corona Wood'),
('A05', 'Portro Court'),
('A06', 'Albert Yard'),
('B01', 'Red Town'),
('B02', 'Bahama Center'),
('B03', 'Mama\'s County'),
('C01', 'CEG Center'),
('C02', 'Canny Shore');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
CREATE TABLE `track` (
  `id` int(11) NOT NULL,
  `station_a` varchar(20) DEFAULT NULL,
  `station_b` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `track`
--

TRUNCATE TABLE `track`;
--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `station_a`, `station_b`) VALUES
(1, 'A01', 'A02'),
(2, 'A02', 'B01'),
(3, 'B01', 'B02'),
(4, 'A03', 'A01'),
(5, 'A03', 'A04'),
(6, 'A04', 'A05'),
(7, 'B01', 'B03'),
(8, 'A04', 'A06'),
(9, 'A06', 'C01'),
(10, 'C01', 'C02');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `train`
--

TRUNCATE TABLE `train`;
--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `name`) VALUES
('TA01', 'Choo Choo'),
('TA05', 'Weedy Breakfast'),
('TB02', 'Lifest Fin'),
('TC02', 'Apollo Tanks');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`train`,`sequence_number`),
  ADD KEY `station` (`station`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `station_a` (`station_a`),
  ADD KEY `station_b` (`station_b`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`station`) REFERENCES `station` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`train`) REFERENCES `train` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`station_a`) REFERENCES `station` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `track_ibfk_2` FOREIGN KEY (`station_b`) REFERENCES `station` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
