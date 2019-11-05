-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2019 at 06:31 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indorecity1`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `invoice_date` varchar(20) DEFAULT NULL,
  `party_name` varchar(20) DEFAULT NULL,
  `gstin` varchar(20) NOT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `hsn_code` int(11) DEFAULT NULL,
  `taxable_value` float DEFAULT NULL,
  `cgst` float DEFAULT NULL,
  `sgst` float DEFAULT NULL,
  `igst` float DEFAULT NULL,
  `total_gst` float DEFAULT NULL,
  `invoice_value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`invoice_date`, `party_name`, `gstin`, `invoice_no`, `hsn_code`, `taxable_value`, `cgst`, `sgst`, `igst`, `total_gst`, `invoice_value`) VALUES
('12/08/19', 'ayush', '23anhsdk56', 502, 5208, 5240, 0, 0, 262, 262, 5502);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `eid` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`eid`, `name`, `sal`) VALUES
('ayush6240', 'ayush', 'ayuaksh'),
('chARU123', 'charu', 'chRU@123'),
('ram@gmail.com', 'ramesh', 'ayuaksh@123');

-- --------------------------------------------------------

--
-- Table structure for table `gstin`
--

CREATE TABLE `gstin` (
  `party_name` varchar(20) NOT NULL,
  `gstin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gstin`
--

INSERT INTO `gstin` (`party_name`, `gstin`) VALUES
('ramson', '23asdjh');

-- --------------------------------------------------------

--
-- Table structure for table `gstin1`
--

CREATE TABLE `gstin1` (
  `party_name` varchar(20) DEFAULT NULL,
  `gstin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gstin1`
--

INSERT INTO `gstin1` (`party_name`, `gstin`) VALUES
('ayush', '23anhsdk56');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `invoice_date` varchar(20) DEFAULT NULL,
  `party_name` varchar(20) DEFAULT NULL,
  `gstin` varchar(20) NOT NULL,
  `invoice_no` int(20) DEFAULT NULL,
  `taxable_value` float DEFAULT NULL,
  `cgst` float DEFAULT NULL,
  `sgst` float DEFAULT NULL,
  `total_gst` float DEFAULT NULL,
  `invoice_value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`invoice_date`, `party_name`, `gstin`, `invoice_no`, `taxable_value`, `cgst`, `sgst`, `total_gst`, `invoice_value`) VALUES
('2018/02/2019', 'ramson', '23asdjh', 102, 52205, 1305.12, 1305.12, 2610.25, 54815.2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`gstin`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `gstin`
--
ALTER TABLE `gstin`
  ADD PRIMARY KEY (`gstin`);

--
-- Indexes for table `gstin1`
--
ALTER TABLE `gstin1`
  ADD PRIMARY KEY (`gstin`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`gstin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
