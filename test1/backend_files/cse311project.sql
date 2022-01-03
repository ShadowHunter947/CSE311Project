-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 08:17 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_service`
--

CREATE TABLE `appointment_service` (
  `AppointmentServiceId` int(10) UNSIGNED NOT NULL,
  `AppointmentTime` datetime DEFAULT NULL,
  `CustomerHouseNo` smallint(6) DEFAULT NULL,
  `CustomerStreetNo` varchar(45) DEFAULT NULL,
  `CustomerArea` varchar(50) DEFAULT NULL,
  `CustomerPostCode` char(4) DEFAULT NULL,
  `MotorTypeId` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_service`
--

CREATE TABLE `emergency_service` (
  `EmergencyServiceId` int(10) UNSIGNED NOT NULL,
  `ContactNumber` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `MembershipId` int(10) NOT NULL,
  `MembershipType` varchar(45) DEFAULT NULL,
  `MembershipDetails` mediumtext DEFAULT NULL,
  `DiscountOnService` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `motor_type`
--

CREATE TABLE `motor_type` (
  `MotorTypeId` int(10) NOT NULL,
  `MotorType` varchar(45) DEFAULT NULL,
  `MotorName` varchar(45) DEFAULT NULL,
  `Brand` varchar(45) DEFAULT NULL,
  `SelectedYear` year(4) DEFAULT NULL,
  `Model` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `online_service`
--

CREATE TABLE `online_service` (
  `OnlineServiceId` int(10) UNSIGNED NOT NULL,
  `ProviderFirstName` varchar(30) DEFAULT NULL,
  `ProviderLastName` varchar(25) DEFAULT NULL,
  `ServiceNumber` char(10) DEFAULT NULL,
  `ServiceEmail` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `PartsId` int(10) UNSIGNED NOT NULL,
  `PartsName` varchar(45) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PartsUsedId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ProductOrderId` int(11) NOT NULL,
  `PartsType` varchar(30) NOT NULL,
  `MotorTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `partstype`
--

CREATE TABLE `partstype` (
  `PartsTypeId` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `partsused`
--

CREATE TABLE `partsused` (
  `PartsUsedId` int(10) UNSIGNED NOT NULL,
  `Quantity` tinyint(4) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `AppointmentServiceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentId` int(10) UNSIGNED NOT NULL,
  `TotalBill` decimal(10,0) NOT NULL,
  `UserId` int(11) NOT NULL,
  `PaymentTypeId` int(11) NOT NULL,
  `ServiceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymenttype`
--

CREATE TABLE `paymenttype` (
  `PaymentTypeId` int(10) UNSIGNED NOT NULL,
  `PaymentType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productorder`
--

CREATE TABLE `productorder` (
  `ProductOrderId` int(11) UNSIGNED NOT NULL,
  `Quantity` smallint(6) NOT NULL,
  `Price` decimal(6,2) NOT NULL,
  `UserId` int(11) NOT NULL,
  `PaymentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `ServiceId` int(10) UNSIGNED NOT NULL,
  `ServiceName` varchar(45) NOT NULL,
  `ServiceCharge` decimal(6,2) NOT NULL,
  `User_UserID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `servicetype`
--

CREATE TABLE `servicetype` (
  `ServiceType` int(10) UNSIGNED NOT NULL,
  `OnlineServiceId` int(11) NOT NULL,
  `EmergencyServiceId` int(11) NOT NULL,
  `AppointmentServiceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `SignInId` int(10) UNSIGNED NOT NULL,
  `UserName` varchar(30) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `User_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(10) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `UserName` varchar(30) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `User_MembershipID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `FirstName`, `LastName`, `UserName`, `Password`, `User_MembershipID`) VALUES
(0, 'Jany', 'Jacobson', 'Ollie.Schroeder', '523af537946b79c4f8369ed39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_service`
--
ALTER TABLE `appointment_service`
  ADD PRIMARY KEY (`AppointmentServiceId`),
  ADD KEY `MotorTypeId` (`MotorTypeId`);

--
-- Indexes for table `emergency_service`
--
ALTER TABLE `emergency_service`
  ADD PRIMARY KEY (`EmergencyServiceId`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`MembershipId`);

--
-- Indexes for table `motor_type`
--
ALTER TABLE `motor_type`
  ADD PRIMARY KEY (`MotorTypeId`);

--
-- Indexes for table `online_service`
--
ALTER TABLE `online_service`
  ADD PRIMARY KEY (`OnlineServiceId`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`PartsId`),
  ADD UNIQUE KEY `MotorTypeId` (`MotorTypeId`),
  ADD UNIQUE KEY `PartsType` (`PartsType`),
  ADD UNIQUE KEY `ProductOrderId` (`ProductOrderId`),
  ADD UNIQUE KEY `UserId` (`UserId`),
  ADD UNIQUE KEY `PartsUsedId` (`PartsUsedId`);

--
-- Indexes for table `partstype`
--
ALTER TABLE `partstype`
  ADD PRIMARY KEY (`PartsTypeId`);

--
-- Indexes for table `partsused`
--
ALTER TABLE `partsused`
  ADD PRIMARY KEY (`PartsUsedId`),
  ADD UNIQUE KEY `AppointmentServiceId` (`AppointmentServiceId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentId`),
  ADD UNIQUE KEY `UserId` (`UserId`),
  ADD UNIQUE KEY `PaymentTypeId` (`PaymentTypeId`),
  ADD UNIQUE KEY `ServiceId` (`ServiceId`);

--
-- Indexes for table `paymenttype`
--
ALTER TABLE `paymenttype`
  ADD PRIMARY KEY (`PaymentTypeId`);

--
-- Indexes for table `productorder`
--
ALTER TABLE `productorder`
  ADD PRIMARY KEY (`ProductOrderId`),
  ADD UNIQUE KEY `PaymentId` (`PaymentId`),
  ADD UNIQUE KEY `UserId` (`UserId`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ServiceId`),
  ADD UNIQUE KEY `User_UserID` (`User_UserID`);

--
-- Indexes for table `servicetype`
--
ALTER TABLE `servicetype`
  ADD PRIMARY KEY (`ServiceType`),
  ADD UNIQUE KEY `AppointmentServiceId` (`AppointmentServiceId`),
  ADD UNIQUE KEY `EmergencyServiceId` (`EmergencyServiceId`),
  ADD UNIQUE KEY `OnlineServiceId` (`OnlineServiceId`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`SignInId`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`),
  ADD KEY `User_MembershipID` (`User_MembershipID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_service`
--
ALTER TABLE `appointment_service`
  MODIFY `AppointmentServiceId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergency_service`
--
ALTER TABLE `emergency_service`
  MODIFY `EmergencyServiceId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_service`
--
ALTER TABLE `online_service`
  MODIFY `OnlineServiceId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `PartsId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partsused`
--
ALTER TABLE `partsused`
  MODIFY `PartsUsedId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymenttype`
--
ALTER TABLE `paymenttype`
  MODIFY `PaymentTypeId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productorder`
--
ALTER TABLE `productorder`
  MODIFY `ProductOrderId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `SignInId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_service`
--
ALTER TABLE `appointment_service`
  ADD CONSTRAINT `appointment_service_ibfk_1` FOREIGN KEY (`MotorTypeId`) REFERENCES `motor_type` (`MotorTypeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `signin`
--
ALTER TABLE `signin`
  ADD CONSTRAINT `signin_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`User_MembershipID`) REFERENCES `membership` (`MembershipId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
