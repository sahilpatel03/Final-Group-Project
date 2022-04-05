-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2022 at 01:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineticketbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `transaction_id` int(11) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `total_cost` double NOT NULL,
  `transaction_mode` varchar(255) DEFAULT NULL,
  `transaction_status` varchar(255) DEFAULT NULL,
  `customer_customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`transaction_id`, `booking_date`, `total_cost`, `transaction_mode`, `transaction_status`, `customer_customer_id`) VALUES
(148, '2023-03-25', 0, 'offline', 'Completed', NULL),
(195, '2022-03-25', 0, 'offline', 'Completed', NULL),
(202, '2022-03-25', 0, 'offline', 'Completed', NULL),
(208, '2022-03-25', 0, 'offline', 'Completed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `address`, `customer_name`, `email`, `mobile_number`, `password`) VALUES
(17, NULL, 'Raj', NULL, NULL, 'raj');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(210);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `movie_date` date DEFAULT NULL,
  `movie_description` varchar(255) DEFAULT NULL,
  `movie_genre` varchar(255) DEFAULT NULL,
  `movie_hours` varchar(255) DEFAULT NULL,
  `movie_language` varchar(255) DEFAULT NULL,
  `movie_name` varchar(255) DEFAULT NULL,
  `movie_rating` varchar(255) DEFAULT NULL,
  `show_show_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_date`, `movie_description`, `movie_genre`, `movie_hours`, `movie_language`, `movie_name`, `movie_rating`, `show_show_id`) VALUES
(198, '2022-03-25', 'It is a fictional story about two Indian revolutionaries, Alluri Sitarama Raju (Charan) and Komaram Bheem (Rama Rao), and their fight against the British Raj', 'Action', '03', 'Hindi', 'RRR', '9', 201),
(204, '2021-11-17', 'Pushpa Raj is a coolie who works to smuggle red sandalwood, a rare wood that only grows in the Seshachalam Hills of the Chittoor district in Andhra Pradesh', 'Action', '03', 'Hindi', 'Pushpa', '8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `screen`
--

CREATE TABLE `screen` (
  `screen_id` int(11) NOT NULL,
  `columnss` int(11) DEFAULT NULL,
  `rowss` int(11) DEFAULT NULL,
  `screen_name` varchar(255) DEFAULT NULL,
  `theatre_theatre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screen`
--

INSERT INTO `screen` (`screen_id`, `columnss`, `rowss`, `screen_name`, `theatre_theatre_id`) VALUES
(200, 20, 20, 'Screen 1', 199),
(206, 20, 20, 'Screen 1', 205);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `seat_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ticket_ticket_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_id`, `price`, `seat_number`, `status`, `type`, `ticket_ticket_id`) VALUES
(123, 250, '1', 'AVAILABLE', 'Class A', NULL),
(124, 250, '2', 'AVAILABLE', 'Class A', NULL),
(125, 250, '3', 'AVAILABLE', 'Class A', NULL),
(126, 250, '4', 'AVAILABLE', 'Class A', NULL),
(127, 250, '5', 'AVAILABLE', 'Class A', NULL),
(128, 250, '6', 'AVAILABLE', 'Class A', NULL),
(129, 250, '6', 'AVAILABLE', 'Class A', NULL),
(130, 250, '7', 'AVAILABLE', 'Class A', NULL),
(131, 250, '8', 'AVAILABLE', 'Class A', NULL),
(132, 250, '9', 'AVAILABLE', 'Class A', NULL),
(133, 200, '10', 'AVAILABLE', 'Class B', NULL),
(134, 200, '11', 'AVAILABLE', 'Class B', NULL),
(135, 200, '12', 'AVAILABLE', 'Class B', NULL),
(136, 200, '13', 'AVAILABLE', 'Class B', NULL),
(137, 200, '14', 'AVAILABLE', 'Class B', NULL),
(138, 200, '15', 'AVAILABLE', 'Class B', NULL),
(185, 200, '16', 'AVAILABLE', 'Class C', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shhow`
--

CREATE TABLE `shhow` (
  `show_id` int(11) NOT NULL,
  `show_date` date DEFAULT NULL,
  `show_end_time` datetime(6) DEFAULT NULL,
  `show_name` varchar(255) DEFAULT NULL,
  `show_start_time` datetime(6) DEFAULT NULL,
  `booking_transaction_id` int(11) DEFAULT NULL,
  `screen_screen_id` int(11) DEFAULT NULL,
  `theatre_theatre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shhow`
--

INSERT INTO `shhow` (`show_id`, `show_date`, `show_end_time`, `show_name`, `show_start_time`, `booking_transaction_id`, `screen_screen_id`, `theatre_theatre_id`) VALUES
(201, '2022-03-25', '2022-03-25 12:00:00.000000', 'Morning', '2022-03-25 09:00:00.000000', 208, 200, 199),
(207, '2021-11-17', '2021-11-17 18:00:00.000000', 'Aftenoon', '2021-11-17 15:00:00.000000', NULL, 206, 205);

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `theatre_id` int(11) NOT NULL,
  `manager_contact` varchar(255) DEFAULT NULL,
  `manager_name` varchar(255) DEFAULT NULL,
  `theatre_city` varchar(255) DEFAULT NULL,
  `theatre_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`theatre_id`, `manager_contact`, `manager_name`, `theatre_city`, `theatre_name`) VALUES
(199, '9645332212', '', 'Pune', 'NMS'),
(205, '9845654421', '', 'Pune', 'NMS');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `no_of_seats` int(11) NOT NULL,
  `ticket_status` bit(1) NOT NULL,
  `booking_transaction_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `no_of_seats`, `ticket_status`, `booking_transaction_id`) VALUES
(196, 0, b'0', 195),
(203, 0, b'0', 202),
(209, 0, b'0', 208);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_seats`
--

CREATE TABLE `ticket_seats` (
  `ticket_ticket_id` int(11) NOT NULL,
  `seats_seat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_seats`
--

INSERT INTO `ticket_seats` (`ticket_ticket_id`, `seats_seat_id`) VALUES
(20, 9),
(22, 10),
(25, 11),
(27, 13),
(30, 12),
(36, 14),
(39, 15),
(49, 44),
(51, 46),
(54, 47),
(60, 55),
(62, 56),
(65, 57),
(68, 58),
(75, 69),
(83, 8),
(104, 73),
(113, 70),
(120, 115),
(122, 116),
(149, 123),
(196, 124),
(203, 125),
(209, 127);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `customer_customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `password`, `role`, `username`, `customer_customer_id`) VALUES
(1, 'pranav', 'admin', 'Pranav', NULL),
(16, 'pranav', 'ADMIN', 'Pranav', NULL),
(18, 'raj', 'customer', 'Raj', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `FKk8yuxqrlcd2c7yox8diiufyra` (`customer_customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `FK27w7t9opwdngwd8jn2uwk250` (`show_show_id`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`screen_id`),
  ADD KEY `FKscfiy5yupbso5u8fmptrlgy16` (`theatre_theatre_id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `FK6q5nv340mmtb1oyve3c60c3fq` (`ticket_ticket_id`);

--
-- Indexes for table `shhow`
--
ALTER TABLE `shhow`
  ADD PRIMARY KEY (`show_id`),
  ADD KEY `FKrw40g8fg7p833ahhqr8mjhe0i` (`booking_transaction_id`),
  ADD KEY `FKppamluxsyb2qf8540hirplwdi` (`screen_screen_id`),
  ADD KEY `FKludk372w5sr64846iuso6ljrp` (`theatre_theatre_id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`theatre_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `FK801lak2rfpt8688taynhljhrp` (`booking_transaction_id`);

--
-- Indexes for table `ticket_seats`
--
ALTER TABLE `ticket_seats`
  ADD UNIQUE KEY `UK_hmxhql9aio1it4x57gn58ng8h` (`seats_seat_id`),
  ADD KEY `FKgybs176e8erk2jlxn26lojuhs` (`ticket_ticket_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `FK2q989f4c89rv2b9xvtomfc0fs` (`customer_customer_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FKk8yuxqrlcd2c7yox8diiufyra` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `FK27w7t9opwdngwd8jn2uwk250` FOREIGN KEY (`show_show_id`) REFERENCES `shhow` (`show_id`);

--
-- Constraints for table `screen`
--
ALTER TABLE `screen`
  ADD CONSTRAINT `FKscfiy5yupbso5u8fmptrlgy16` FOREIGN KEY (`theatre_theatre_id`) REFERENCES `theatre` (`theatre_id`);

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `FK6q5nv340mmtb1oyve3c60c3fq` FOREIGN KEY (`ticket_ticket_id`) REFERENCES `ticket` (`ticket_id`);

--
-- Constraints for table `shhow`
--
ALTER TABLE `shhow`
  ADD CONSTRAINT `FKludk372w5sr64846iuso6ljrp` FOREIGN KEY (`theatre_theatre_id`) REFERENCES `theatre` (`theatre_id`),
  ADD CONSTRAINT `FKppamluxsyb2qf8540hirplwdi` FOREIGN KEY (`screen_screen_id`) REFERENCES `screen` (`screen_id`),
  ADD CONSTRAINT `FKrw40g8fg7p833ahhqr8mjhe0i` FOREIGN KEY (`booking_transaction_id`) REFERENCES `booking` (`transaction_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FK801lak2rfpt8688taynhljhrp` FOREIGN KEY (`booking_transaction_id`) REFERENCES `booking` (`transaction_id`);

--
-- Constraints for table `ticket_seats`
--
ALTER TABLE `ticket_seats`
  ADD CONSTRAINT `FKgybs176e8erk2jlxn26lojuhs` FOREIGN KEY (`ticket_ticket_id`) REFERENCES `ticket` (`ticket_id`),
  ADD CONSTRAINT `FKl40dchspag947octbnjg270xt` FOREIGN KEY (`seats_seat_id`) REFERENCES `seat` (`seat_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK2q989f4c89rv2b9xvtomfc0fs` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
