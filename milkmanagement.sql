-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2018 at 11:54 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milkmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventorytable`
--

CREATE TABLE `inventorytable` (
  `Id` int(11) NOT NULL,
  `MilkType` varchar(30) NOT NULL,
  `Qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventorytable`
--

INSERT INTO `inventorytable` (`Id`, `MilkType`, `Qty`) VALUES
(1, 'Buffalo', 11);

-- --------------------------------------------------------

--
-- Table structure for table `purchasetable`
--

CREATE TABLE `purchasetable` (
  `Id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `StaffId` int(11) NOT NULL,
  `SellerName` varchar(30) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `MilkType` varchar(15) NOT NULL,
  `QTY` int(11) NOT NULL,
  `Rate` double NOT NULL,
  `TotalAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasetable`
--

INSERT INTO `purchasetable` (`Id`, `Date`, `StaffId`, `SellerName`, `Contact`, `Address`, `MilkType`, `QTY`, `Rate`, `TotalAmount`) VALUES
(1, '2018-09-06', 123, 'mark', '12332112332', 'xyz xy z xyz', 'Buffalo', 23, 32, 736);

-- --------------------------------------------------------

--
-- Table structure for table `salestable`
--

CREATE TABLE `salestable` (
  `Id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `StaffId` int(11) NOT NULL,
  `DealerName` varchar(30) NOT NULL,
  `MilkType` varchar(15) NOT NULL,
  `QTY` int(11) NOT NULL,
  `Rate` double NOT NULL,
  `TotalAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salestable`
--

INSERT INTO `salestable` (`Id`, `Date`, `StaffId`, `DealerName`, `MilkType`, `QTY`, `Rate`, `TotalAmount`) VALUES
(1, '2018-09-06', 123, 'smith', 'Buffalo', 12, 24, 288);

-- --------------------------------------------------------

--
-- Table structure for table `sellertable`
--

CREATE TABLE `sellertable` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `CONTACT` varchar(15) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellertable`
--

INSERT INTO `sellertable` (`Id`, `Name`, `CONTACT`, `Address`) VALUES
(1, 'mark', '12332112332', 'xyz xy z xyz');

-- --------------------------------------------------------

--
-- Table structure for table `stafftable`
--

CREATE TABLE `stafftable` (
  `Id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `CONTACT` varchar(15) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stafftable`
--

INSERT INTO `stafftable` (`Id`, `Date`, `Name`, `Gender`, `CONTACT`, `Address`) VALUES
(1, '2018-09-06', 'john', 'M', '12312312332', 'xyz xyz xyz ');

-- --------------------------------------------------------

--
-- Table structure for table `transactiontable`
--

CREATE TABLE `transactiontable` (
  `Id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `EName` varchar(30) NOT NULL,
  `Amount` double NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactiontable`
--

INSERT INTO `transactiontable` (`Id`, `Date`, `EName`, `Amount`, `Type`, `Description`) VALUES
(1, '2018-09-06', '123', 736, 'Credit', '1'),
(2, '2018-09-06', '123', 288, 'Debit', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventorytable`
--
ALTER TABLE `inventorytable`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `purchasetable`
--
ALTER TABLE `purchasetable`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `salestable`
--
ALTER TABLE `salestable`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sellertable`
--
ALTER TABLE `sellertable`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `stafftable`
--
ALTER TABLE `stafftable`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `transactiontable`
--
ALTER TABLE `transactiontable`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventorytable`
--
ALTER TABLE `inventorytable`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchasetable`
--
ALTER TABLE `purchasetable`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salestable`
--
ALTER TABLE `salestable`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sellertable`
--
ALTER TABLE `sellertable`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stafftable`
--
ALTER TABLE `stafftable`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactiontable`
--
ALTER TABLE `transactiontable`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
