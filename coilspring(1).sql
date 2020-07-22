-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 11:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coilspring`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `ProductId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, 6, 'oscarjohnybravo1999@gmail.com', '2020-03-07', NULL, '', '2020-03-06 07:12:02', 2, 'u', '2020-03-09 21:48:31'),
(13, 6, 'oscarjohnybravo1999@gmail.com', '2020-03-11', NULL, '', '2020-03-09 20:05:04', 2, 'u', '2020-03-09 21:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(8, NULL, NULL, NULL, '2020-03-06 07:09:02', NULL, NULL),
(9, 'oscarjohnybravo1999@gmail.com', 'Cancellation', 'Hey, testing', '2020-03-09 20:05:34', 'Confirmed', '2020-03-09 20:06:04'),
(10, 'oscarjohnybravo1999@gmail.com', 'Booking Issues', 'jhj', '2020-03-09 22:28:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblspareparts`
--

CREATE TABLE `tblspareparts` (
  `ProductId` int(11) NOT NULL,
  `ProductName` varchar(200) DEFAULT NULL,
  `ProductType` varchar(150) DEFAULT NULL,
  `ProductLocation` varchar(100) DEFAULT NULL,
  `ProductPrice` int(11) DEFAULT NULL,
  `ProductFetures` varchar(255) DEFAULT NULL,
  `ProductDetails` mediumtext DEFAULT NULL,
  `ProductImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblspareparts`
--

INSERT INTO `tblspareparts` (`ProductId`, `ProductName`, `ProductType`, `ProductLocation`, `ProductPrice`, `ProductFetures`, `ProductDetails`, `ProductImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Tire Winch Wheel Carrier ', 'Tyre', NULL, 5000, NULL, 'Tire Winch Wheel Carrier Hoist fits Chevy Tahoe GMC Yukon Cadillac Escalade Cross ', 'prod1.jpg', '2017-05-13 14:23:44', '2020-03-05 18:10:12'),
(2, 'Road Ready Car Wheel ', 'Tyre', NULL, 7200, NULL, 'Road Ready Car Wheel for 2015-2019 Subaru Legacy Steel 17 Inch 5 Lug Full Size Spare 17\" Rim Fits R17 Tire', 'prod2.jpg', '2017-05-13 15:24:26', '2020-03-05 18:18:10'),
(3, 'ZM Auto Parts Spare Tire', 'Tyre', NULL, 5900, NULL, 'ZM Auto Parts Spare Tire Hoist Under Mount Winch Carrier for Ford F-150 F-250 Lincoln Blackwood Cross Dorman', 'prod3.jpg', '2017-05-13 16:00:58', '2020-03-05 18:20:00'),
(4, 'Ginsco 102pcs 6.3mm', 'General', NULL, 7000, NULL, 'Ginsco 102pcs 6.3mm 8mm 9mm 10mm Nylon Bumper Push Fasteners Rivet Clips Expansion Screws Replacement Kit', 'prod4.jpg', '2017-05-13 22:39:37', '2020-03-05 18:22:21'),
(5, 'Justech 20PCs Can-bus Error Free LED SMD Bulbs ', 'Lights', NULL, 2100, NULL, 'Justech 20PCs Can-bus Error Free LED SMD Bulbs Kit Set Spare Parts for Car Interior Dome Map Door Courtesy License Plate Lights ', 'prod5.jpg', '2017-05-13 22:42:10', '2020-03-05 18:24:48'),
(6, 'Eaz-Lift Spare Tire Carrier', 'General', NULL, 3800, NULL, 'Eaz-Lift Spare Tire Carrier - Mounts to Your Trailer to Create a Spare Tire Mount Location | Fits Trailer Tongues Up to 6\" Tall | Powder ', 'prod6.jpg', '2017-05-14 08:01:08', '2020-03-05 18:29:21'),
(7, 'Hosim RC Car Spare Parts 390 Motor', 'General', NULL, 3400, NULL, 'Hosim RC Car Spare Parts 390 Motor with Gear DJ01 for GPTOYS 911', 'prod7.jpg', '2020-03-05 17:29:40', '2020-03-05 18:31:17'),
(8, 'MINI Hatch 2.0 John Cooper Works (s/s) 3dr', 'Vehicle', '+254 710 363 193', 500000, NULL, 'Comfort Plus Pack, Navigation Plus Pack, Adaptive Suspension, MINI Head-Up Display, Harman Kardon', 'prod8.jpg', '2020-03-09 19:34:19', '2020-03-09 21:40:09'),
(9, 'Volkswagen Polo 1.0 TSI SE (s/s) 5dr', 'Vehicle', '+254 799 479 607', 450000, NULL, 'Presented in Pure White with Seyne Alloy Wheels and Parking Sensors Front & Rear. ', 'prod9.jpg', '2020-03-09 20:11:35', '2020-03-09 21:43:17'),
(10, 'Volkswagen T-Roc 1.0 TSI SE (s/s) 5dr', 'Vehicle', '+254 791 034 315', 900000, NULL, 'Presented in Deep Black Metallic and available for immediate delivery ', 'prod10.jpg', '2020-03-09 20:24:12', '2020-03-09 21:42:47'),
(11, 'Volkswagen T-Cross 1.0 TSI SE (s/s) 5dr', 'Vehicle', '+254 797 928 390', 700000, NULL, 'The highly anticipated All-New Volkswagen T-Cross is finally here at Crewe Volkswagen.', 'prod11.jpg', '2020-03-09 20:27:44', '2020-03-09 21:42:13'),
(12, 'Volkswagen VOLKSWAGEN T-Cross The New SE 1.0 TSI 95PS 5-speed Manual 5 Door', 'Vehicle', '+254 723 048 049', 1000000, NULL, 'Design pack \'Black\' with 17\" Manila alloy wheels', 'prod12.jpg', '2020-03-09 20:31:34', '2020-03-09 21:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(11, 'XYZ', '8888888888', 'abc@g.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:54:32', '2017-05-14 07:55:17'),
(12, 'Oscar John', '0790548855', 'oscarjohnybravo1999@gmail.com', '231973ff0b9376eb3f21aa324c558a79', '2020-03-06 07:09:02', NULL),
(13, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2020-03-09 20:05:34', NULL),
(14, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2020-03-09 22:28:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblspareparts`
--
ALTER TABLE `tblspareparts`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblspareparts`
--
ALTER TABLE `tblspareparts`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
