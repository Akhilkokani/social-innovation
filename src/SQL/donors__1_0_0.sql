-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2019 at 02:32 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donors`
--

-- --------------------------------------------------------

--
-- Table structure for table `donor_requests`
--

CREATE TABLE `donor_requests` (
  `slno` bigint(20) NOT NULL,
  `donor_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `donor_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `donor_contact_number` int(11) NOT NULL,
  `donor_interested_requirement_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'Requirement ID in which the donor is interested.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='To hold requests made by donors';

-- --------------------------------------------------------

--
-- Table structure for table `ngos`
--

CREATE TABLE `ngos` (
  `slno` bigint(20) NOT NULL,
  `ngo_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `ngo_name` varchar(2040) COLLATE utf8_bin NOT NULL,
  `ngo_address` varchar(2040) COLLATE utf8_bin NOT NULL,
  `ngo_email` varchar(1080) COLLATE utf8_bin NOT NULL,
  `ngo_contact_number` int(15) NOT NULL,
  `ngo_description` text COLLATE utf8_bin NOT NULL,
  `ngo_govt_id` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='To Hold NGO''s Records.';

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE `requirements` (
  `slno` bigint(20) NOT NULL,
  `requirement_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `requirement_generator_ngo_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'ID of NGO who has generated the requirement.',
  `requirement_name` varchar(500) COLLATE utf8_bin NOT NULL,
  `requirement_quantity` int(5) DEFAULT NULL COMMENT 'Quantity of how much requirement specified is required.',
  `requirement_unit_measurement_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'Derives how the quantity specified should be measured.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='To hold requirement records.';

-- --------------------------------------------------------

--
-- Table structure for table `unit_measurement`
--

CREATE TABLE `unit_measurement` (
  `slno` bigint(20) NOT NULL,
  `unit_measurement_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `unit_name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='To hold different types of unit measurements.';

--
-- Dumping data for table `unit_measurement`
--

INSERT INTO `unit_measurement` (`slno`, `unit_measurement_id`, `unit_name`) VALUES
(1, 'unit_001', 'KG'),
(2, 'unit_002', 'Litres');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `slno` bigint(20) NOT NULL,
  `user_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='To hold user''s records.';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor_requests`
--
ALTER TABLE `donor_requests`
  ADD PRIMARY KEY (`slno`),
  ADD UNIQUE KEY `donor_id` (`donor_id`);

--
-- Indexes for table `ngos`
--
ALTER TABLE `ngos`
  ADD PRIMARY KEY (`slno`),
  ADD UNIQUE KEY `ngo_govt_id` (`ngo_govt_id`),
  ADD UNIQUE KEY `ngo_contact_number` (`ngo_contact_number`),
  ADD UNIQUE KEY `ngo_email` (`ngo_email`) USING HASH;

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `unit_measurement`
--
ALTER TABLE `unit_measurement`
  ADD PRIMARY KEY (`slno`),
  ADD UNIQUE KEY `unit_measurement_id` (`unit_measurement_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`slno`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor_requests`
--
ALTER TABLE `donor_requests`
  MODIFY `slno` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
