-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 04:17 PM
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
('TA01', 0, 'A01', '02:00:00', '02:05:00'),
('TA01', 1, 'A02', '02:50:00', '02:55:00'),
('TA01', 2, 'A03', '04:05:00', '04:10:00'),
('TA01', 3, 'A04', '05:45:00', '05:50:00'),
('TA01', 4, 'A05', '07:10:00', '07:15:00'),
('TA01', 5, 'A04', '08:35:00', '08:40:00'),
('TA01', 6, 'A06', '09:25:00', '09:30:00'),
('TA01', 7, 'C01', '11:05:00', '11:10:00'),
('TA01', 8, 'C02', '12:10:00', '12:15:00'),
('TA01', 9, 'C01', '13:15:00', '13:20:00'),
('TA01', 10, 'A06', '14:55:00', '15:00:00'),
('TA01', 11, 'A04', '15:45:00', '15:50:00'),
('TA01', 12, 'A03', '17:25:00', '17:30:00'),
('TA01', 13, 'A02', '18:40:00', '18:45:00'),
('TA01', 14, 'A01', '19:30:00', '19:35:00'),
('TA03', 0, 'A03', '02:00:00', '02:05:00'),
('TA03', 1, 'A02', '03:15:00', '03:20:00'),
('TA03', 2, 'A01', '04:05:00', '04:10:00'),
('TA03', 3, 'A02', '04:55:00', '05:00:00'),
('TA03', 4, 'A03', '06:10:00', '06:15:00'),
('TA03', 5, 'A04', '07:50:00', '07:55:00'),
('TA03', 6, 'A05', '09:15:00', '09:20:00'),
('TA03', 7, 'A04', '10:40:00', '10:45:00'),
('TA03', 8, 'A03', '12:20:00', '12:25:00'),
('TA03', 9, 'A02', '13:35:00', '13:40:00'),
('TA03', 10, 'B01', '16:05:00', '16:10:00'),
('TA03', 11, 'B02', '17:45:00', '17:50:00'),
('TA03', 12, 'B01', '19:25:00', '19:30:00'),
('TA03', 13, 'A02', '21:55:00', '22:00:00'),
('TA03', 14, 'A03', '23:10:00', '23:15:00'),
('TA05', 0, 'A05', '02:00:00', '02:05:00'),
('TA05', 1, 'A04', '03:25:00', '03:30:00'),
('TA05', 2, 'A03', '05:05:00', '05:10:00'),
('TA05', 3, 'A02', '06:20:00', '06:25:00'),
('TA05', 4, 'A01', '07:10:00', '07:15:00'),
('TA05', 5, 'A02', '08:00:00', '08:05:00'),
('TA05', 6, 'B01', '10:30:00', '10:35:00'),
('TA05', 7, 'B02', '12:10:00', '12:15:00'),
('TA05', 8, 'B01', '13:50:00', '13:55:00'),
('TA05', 9, 'A02', '16:20:00', '16:25:00'),
('TA05', 10, 'A03', '17:35:00', '17:40:00'),
('TA05', 11, 'A04', '19:15:00', '19:20:00'),
('TA05', 12, 'A05', '20:40:00', '20:45:00'),
('TA06', 0, 'C01', '02:00:00', '02:05:00'),
('TA06', 1, 'C02', '03:05:00', '03:10:00'),
('TA06', 2, 'C01', '04:10:00', '04:15:00'),
('TA06', 3, 'A06', '05:50:00', '05:55:00'),
('TA06', 4, 'A04', '06:40:00', '06:45:00'),
('TA06', 5, 'A03', '08:20:00', '08:25:00'),
('TA06', 6, 'A02', '09:35:00', '09:40:00'),
('TA06', 7, 'B01', '12:05:00', '12:10:00'),
('TA06', 8, 'B03', '12:55:00', '13:00:00'),
('TA06', 9, 'B01', '13:45:00', '13:50:00'),
('TA06', 10, 'A02', '16:15:00', '16:20:00'),
('TA06', 11, 'A03', '17:30:00', '17:35:00'),
('TA06', 12, 'A04', '19:10:00', '19:15:00'),
('TA06', 13, 'A06', '20:00:00', '20:05:00'),
('TB02', 0, 'B02', '02:00:00', '02:05:00'),
('TB02', 1, 'B01', '03:40:00', '03:45:00'),
('TB02', 2, 'B03', '04:30:00', '04:35:00'),
('TB02', 3, 'B01', '05:20:00', '05:25:00'),
('TB02', 4, 'A02', '07:50:00', '07:55:00'),
('TB02', 5, 'A03', '09:05:00', '09:10:00'),
('TB02', 6, 'A04', '10:45:00', '10:50:00'),
('TB02', 7, 'A05', '12:10:00', '12:15:00'),
('TB02', 8, 'A04', '13:35:00', '13:40:00'),
('TB02', 9, 'A03', '15:15:00', '15:20:00'),
('TB02', 10, 'A02', '16:30:00', '16:35:00'),
('TB02', 11, 'B01', '19:00:00', '19:05:00'),
('TB02', 12, 'B02', '20:40:00', '20:45:00'),
('TB03', 0, 'B03', '02:00:00', '02:05:00'),
('TB03', 1, 'B01', '02:50:00', '02:55:00'),
('TB03', 2, 'A02', '05:20:00', '05:25:00'),
('TB03', 3, 'A01', '06:10:00', '06:15:00'),
('TB03', 4, 'A03', '08:10:00', '08:15:00'),
('TB03', 5, 'A04', '09:50:00', '09:55:00'),
('TB03', 6, 'A06', '10:40:00', '10:45:00'),
('TB03', 7, 'C01', '12:20:00', '12:25:00'),
('TB03', 8, 'C02', '13:25:00', '13:30:00'),
('TB03', 9, 'C01', '14:30:00', '14:35:00'),
('TB03', 10, 'A06', '16:10:00', '16:15:00'),
('TB03', 11, 'A04', '17:00:00', '17:05:00'),
('TB03', 12, 'A03', '18:40:00', '18:45:00'),
('TB03', 13, 'A02', '19:55:00', '20:00:00'),
('TB03', 14, 'B01', '22:25:00', '22:30:00'),
('TB03', 15, 'B03', '23:15:00', '23:20:00'),
('TC02', 0, 'C02', '02:00:00', '02:05:00'),
('TC02', 1, 'C01', '03:05:00', '03:10:00'),
('TC02', 2, 'A06', '04:45:00', '04:50:00'),
('TC02', 3, 'A04', '05:35:00', '05:40:00'),
('TC02', 4, 'A03', '07:15:00', '07:20:00'),
('TC02', 5, 'A02', '08:30:00', '08:35:00'),
('TC02', 6, 'A01', '09:20:00', '09:25:00'),
('TC02', 7, 'A02', '10:10:00', '10:15:00'),
('TC02', 8, 'A03', '11:25:00', '11:30:00'),
('TC02', 9, 'A04', '13:05:00', '13:10:00'),
('TC02', 10, 'A05', '14:30:00', '14:35:00'),
('TC02', 11, 'A04', '15:55:00', '16:00:00'),
('TC02', 12, 'A06', '16:45:00', '16:50:00'),
('TC02', 13, 'C01', '18:25:00', '18:30:00'),
('TC02', 14, 'C02', '19:30:00', '19:35:00');

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
('TA03', 'Donkey Christmas'),
('TA05', 'Weedy Breakfast'),
('TA06', 'Pierna Peluda'),
('TB02', 'Lifest Fin'),
('TB03', 'Grande Valse'),
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
