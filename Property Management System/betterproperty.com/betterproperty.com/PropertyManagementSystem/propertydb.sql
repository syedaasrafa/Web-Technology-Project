-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 08:32 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `propertydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountbalance`
--

CREATE TABLE `accountbalance` (
  `sellerid` varchar(100) NOT NULL,
  `currentbalance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accountbalance`
--

INSERT INTO `accountbalance` (`sellerid`, `currentbalance`) VALUES
('satu@gmail.com', '69994');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `propertyname` varchar(100) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `powner` varchar(100) NOT NULL,
  `plocation` varchar(100) NOT NULL,
  `pprice` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pquantity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`propertyname`, `pid`, `powner`, `plocation`, `pprice`, `email`, `pquantity`) VALUES
('Flat', '101', 'Satu', 'Dhanmondi', '500000', 'satu@gmail.com', '4'),
('Land', '102', 'Syeda', 'Uttara', '600000', 'syeda@gmail.com', '1'),
('Land', '110', 'Islam', 'Banani', '400000', 'islam@gmail.com', '4'),
('Flat', '124', 'Satu', 'Dhanmondi', '500000', 'satu@gmail.com', '2'),
('Flat', '130', 'Satu', 'Uttara', '500000', 'satu@gmail.com', '2'),
('Flat', '140', 'Sarifa', 'Mirpur', '300000', 'sarifa@gmail.com', '2');

-- --------------------------------------------------------

--
-- Table structure for table `propertyhistory`
--

CREATE TABLE `propertyhistory` (
  `propertyname` varchar(100) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `pprice` varchar(100) NOT NULL,
  `pquantity` varchar(100) NOT NULL,
  `sellerid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `sellername` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `streetaddress` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `tradelicense` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`sellername`, `email`, `gender`, `phone`, `streetaddress`, `area`, `city`, `zipcode`, `tradelicense`) VALUES
('Abtahi', 'a@gmail.com', 'Male', '0123456987', 'Uttara', 'ghat', 'Dhaka', '1225', '123658'),
('Abrar', 'abrar@gmail.com', 'Male', '0123456789', 'Dhanmondi', 'Mirpur', 'Dhaka', '1209', '7896325'),
('Fabiha', 'fabiha@gmail.com', 'Female', '0147859625', 'Mirpur', 'Dhaka', 'Dhaka', '1209', '0125968'),
('Hasan', 'hasan@gmail.com', 'Male', '01425963257', 'Dhanmondi', 'Shamoli', 'Dhaka', '1209', '01245869'),
('Islam', 'islam@gmail.com', 'Female', '01788896325', 'Banani', 'Banani', 'Dhaka', '1201', '1230698'),
('Sarifa', 'sarifa@gmail.com', 'Female', '01724175451', 'Mirpur', 'Dhaka', 'Dhaka', '1209', '0123569'),
('Satu', 'satu@gmail.com', 'Female', '01743458715', 'Dhanmondi', 'BijoySoroni', 'Dhaka', '1209', '3214789'),
('Syeda', 'syeda@gmail.com', 'Female', '01971563257', 'Uttara', 'Nikunja', 'Dhaka', '1225', '7896201');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('a@gmail.com', '896'),
('abrar@gmail.com', '456'),
('fabiha@gmail.com', '123'),
('hasan@gmail.com', '123'),
('islam@gmail.com', '55555555'),
('sarifa@gmail.com', '12345'),
('satu@gmail.com', '12345'),
('syeda@gmail.com', '22222222');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawhistory`
--

CREATE TABLE `withdrawhistory` (
  `sellerid` varchar(100) NOT NULL,
  `currentbalance` varchar(100) NOT NULL,
  `afterwithdrawbal` varchar(100) NOT NULL,
  `withdrawtime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdrawhistory`
--

INSERT INTO `withdrawhistory` (`sellerid`, `currentbalance`, `afterwithdrawbal`, `withdrawtime`) VALUES
('satu@gmail.com', '1000000', '999800', '2021-04-10 12:15:02pm'),
('satu@gmail.com', '999800', '339838', '2021-04-10 12:15:47pm'),
('satu@gmail.com', '339838', '39838', '2021-04-10 12:50:15pm'),
('satu@gmail.com', '239838', '139838', '2021-04-16 08:00:18pm'),
('satu@gmail.com', '139838', '80873', '2021-04-16 08:02:45pm'),
('satu@gmail.com', '80873', '70873', '2021-04-16 08:06:06pm'),
('satu@gmail.com', '70873', '70073', '2021-04-16 08:07:19pm'),
('satu@gmail.com', '70073', '70000', '2021-04-16 08:09:45pm'),
('satu@gmail.com', '70000', '69999', '2021-04-16 08:28:05pm'),
('satu@gmail.com', '69999', '69998', '2021-04-16 09:16:42pm'),
('satu@gmail.com', '69998', '69997', '2021-04-17 03:41:07pm'),
('satu@gmail.com', '69997', '69996', '2021-04-17 10:20:52pm'),
('satu@gmail.com', '69996', '69995', '2021-04-24 08:40:16am'),
('satu@gmail.com', '69995', '69994', '2021-04-24 03:14:04pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
