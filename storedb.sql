-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 03:52 AM
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
-- Database: `storedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(10) NOT NULL,
  `CustomerName` varchar(25) DEFAULT NULL,
  `ContactName` varchar(25) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `PostalCode` int(10) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Gender`) VALUES
(101, 'Safayet', 'Dipu', 'road 11, block-C, 390/A', 'Dhaka', 1203, 'Bangladesh', 'Male'),
(102, 'Rafat', 'Riasat', 'road 12, block-D, 330/D', 'Dhaka', 1203, 'Bangladesh', 'Male'),
(103, 'Israt', 'Mitu', 'Jakarta Street', 'Jakarta', 3007, 'Indonesia', 'Female'),
(104, 'Sania Khan', 'Shawon', '527/A, Cumilla', 'Cumilla', 1305, 'Bangladesh', 'Female'),
(105, 'Dihan', 'Depro', '102/F,Road-4A', 'Sylhet', 4006, 'Bangladesh', 'Male'),
(106, 'Taarak Mehta', 'Jethalal', 'Powder Gali,Gokuldham Society', 'Mumbai', 1007, 'India', 'Male'),
(107, 'Disha', 'Dhar', 'Powder Gali,Gokuldham Society', 'Mumbai', 1007, 'India', 'Female'),
(108, 'Suzuki', 'Nakamura', ' 513,Meiji Shinto', 'Tokyo', 1367, 'Japan', 'Female'),
(109, 'Sadia', 'Afrin', '123/B, Uttara', 'Dhaka', 1224, 'Bangladesh', 'Female'),
(110, 'Dipak', 'Devnath', '1108/F,Jugantar gali,Motijheel', 'Dhaka', 1278, 'Bangladesh', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `JobID` int(15) NOT NULL,
  `JobTitle` varchar(30) DEFAULT NULL,
  `MinSalary` int(100) DEFAULT NULL,
  `MaxSalary` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`JobID`, `JobTitle`, `MinSalary`, `MaxSalary`) VALUES
(3001, 'Teacher', 16500, 150000),
(3002, 'Doctor', 28500, 500000),
(3003, 'Businessman', 50000, 5000000),
(3004, 'Banker', 30500, 200000),
(3005, 'software Engineer', 15000, 300000),
(3006, 'Administrative Officer', 35500, 120000),
(3007, 'Custom Officer', 35500, 130000);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderdetailID` int(5) NOT NULL,
  `OrderID` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`OrderdetailID`, `OrderID`, `ProductID`, `Quantity`) VALUES
(1, 10308, 1, 12),
(2, 10308, 3, 100),
(3, 10309, 3, 20),
(4, 10308, 2, 3),
(5, 10311, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(5) NOT NULL,
  `CustomerID` int(10) NOT NULL,
  `OrderDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `OrderDate`) VALUES
(10308, 101, '2024-03-12'),
(10309, 101, '2024-03-12'),
(10310, 102, '2024-03-10'),
(10311, 104, '2024-03-07'),
(10312, 102, '2024-03-01'),
(10313, 103, '2024-02-08'),
(10314, 106, '2023-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `PersonID` int(15) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Age` int(5) DEFAULT NULL,
  `Salary` int(100) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `JobID` int(100) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`PersonID`, `FirstName`, `LastName`, `Age`, `Salary`, `HireDate`, `JobID`, `Location`) VALUES
(1001, 'Rafat', 'Haa Meem', 25, 80000, '2022-06-15', 3005, 'Uttara'),
(1002, 'Arnob', 'Dey', 25, 50000, '2023-03-20', 3001, 'Bailey Road'),
(1003, 'Omar', 'Faruk', 25, 45500, '2023-09-26', 3001, 'Bashundhara'),
(1004, 'Mahmudul', 'Hasan', 26, 40000, '2020-04-06', 3001, 'Bailey Road'),
(1005, 'Sunjaree', 'Zulfiker', 25, 60000, '2024-02-01', 3005, 'Uttara'),
(1006, 'Alamgir ', 'Sharkar', 52, 3000000, '2018-06-01', 3003, 'Baridhara'),
(1007, 'Imon', 'Sharkar', 26, 1000000, '2018-06-01', 3003, 'Baridhara'),
(1008, 'Faisal', 'Ahamed', 42, 45000, '2016-07-23', 3006, 'Mirpur'),
(1009, 'Rohit', 'Roy', 42, 45500, '2017-07-25', 3006, 'Badda'),
(1010, 'Susanta', 'pal', 38, 55500, '2019-09-13', 3007, 'Motijheel'),
(1011, 'Rashed', 'Rifat', 38, 52500, '2019-09-13', 3007, 'Mohammadpur'),
(1012, 'Rehana', 'Rimi', 28, 40500, '2017-04-05', 3002, 'Mohakhali');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(5) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `SupplierID` int(10) DEFAULT NULL,
  `CategoryID` int(10) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Price` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(1, 'Rice', 1, 2, '500 Kg', 20000),
(2, 'Apple', 3, 1, '100 boxes', 25000),
(3, 'Soft Drinks', 1, 3, '1000 bottles', 15500),
(4, 'Egg', 5, 2, '200 dozens', 12000),
(5, 'Onion', 4, 3, '500 kg', 10000),
(6, 'Sugar', 2, 3, '200 kg', 12500),
(7, 'Chicken', 3, 2, '150 pics', 14000),
(8, 'Tomatoes', 2, 1, '700 kg', 16000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`JobID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderdetailID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`PersonID`),
  ADD KEY `JobID` (`JobID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `JobID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3008;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `OrderdetailID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10315;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `PersonID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`JobID`) REFERENCES `jobs` (`JobID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
