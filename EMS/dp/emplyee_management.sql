-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2017 at 08:03 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emplyee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attid` int(10) NOT NULL,
  `logintime` datetime NOT NULL,
  `logout` datetime NOT NULL,
  `empid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attid`, `logintime`, `logout`, `empid`) VALUES
(50, '2016-03-08 09:20:03', '2016-03-08 17:20:26', 127),
(51, '2016-02-01 09:20:03', '2016-02-01 18:20:26', 127),
(52, '2016-02-02 09:20:03', '2016-02-02 18:20:26', 127),
(53, '2016-02-04 09:00:03', '2016-02-03 16:00:26', 127),
(54, '2016-02-05 09:00:03', '2016-02-05 13:00:26', 127),
(56, '2016-02-07 09:00:03', '2016-02-07 16:00:26', 127),
(57, '2016-03-08 11:20:03', '2016-03-08 15:20:26', 127),
(58, '2016-03-11 09:20:03', '2016-03-11 15:20:26', 127),
(59, '2016-03-01 09:00:03', '2016-05-05 02:42:03', 104),
(60, '2016-03-02 09:00:03', '2016-05-05 02:42:03', 104),
(61, '2016-03-04 09:00:03', '2016-05-05 02:42:03', 104),
(63, '2016-03-06 09:00:03', '2016-05-05 02:42:03', 104),
(65, '2013-03-02 10:09:53', '2016-05-05 05:55:52', 103),
(66, '2016-03-02 10:12:06', '2017-05-01 06:46:02', 101),
(70, '2016-03-02 10:09:53', '2016-05-05 05:55:52', 103),
(72, '2016-05-05 02:41:52', '2016-05-05 02:42:03', 104),
(73, '2016-05-05 02:48:26', '2016-05-05 05:55:52', 103),
(75, '2016-05-05 04:17:15', '2016-05-05 04:18:12', 129),
(76, '2016-05-05 05:09:52', '2016-05-05 05:11:44', 130),
(77, '2016-05-05 06:22:59', '2016-05-05 06:23:37', 131),
(78, '2016-05-05 06:35:12', '2016-05-05 06:36:29', 128),
(79, '2017-04-30 06:36:38', '2017-04-30 11:40:57', 100),
(80, '2017-05-01 12:27:12', '2017-05-01 06:46:02', 101),
(82, '2017-05-02 01:56:15', '0000-00-00 00:00:00', 100);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchid` int(10) NOT NULL,
  `branchname` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(20) NOT NULL,
  `contactno` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchid`, `branchname`, `address`, `city`, `state`, `country`, `contactno`) VALUES
(46, 'Chittagong', 'Chittagong', 'Chittagong', 'Chittagong', 'Bangladesh', '017589621451'),
(106, 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '017423578925'),
(110, 'Khulna', 'khulna tech', 'Khulna', 'Khulna', 'Bangladesh', '01811512131');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empid` int(10) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `branchid` int(11) NOT NULL,
  `joindate` date NOT NULL,
  `basicsalary` double(10,2) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(20) NOT NULL,
  `contactno` varchar(25) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `emptype` varchar(20) NOT NULL,
  `expirence` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empid`, `fname`, `lname`, `loginid`, `password`, `branchid`, `joindate`, `basicsalary`, `address`, `city`, `state`, `country`, `contactno`, `sex`, `dob`, `emptype`, `expirence`) VALUES
(100, 'admin', 'admin', 'admin', 'admin', 0, '2016-01-14', 0.00, '0', '0', '0', '0', '0', '0', '2016-01-14', 'Admin', 1),
(101, 'Rajib', 'Hasan', 'rajib', 'rajib', 46, '2016-01-14', 10000.00, 'Dhaka', 'Uttara', 'Dhaka', 'Bangladesh', '016481497515', 'm', '1990-01-14', 'Branch Manager', 5),
(103, 'Faisal', 'Mahmud', 'faisal', '123', 106, '2016-01-14', 5000.00, 'Nikunja', 'Dhaka', '', 'Bangladesh', '01751962546', 'm', '1991-01-14', 'Employees', 5),
(104, 'Hasib', 'Raju', 'raju', 'raju', 46, '2016-01-14', 7000.00, 'Uttara', 'Dhaka', '', 'Bangladesh', '017986214479', 'm', '1988-01-14', 'Employees', 5),
(127, 'Hasan', 'Mehedi', 'hasan', '123456', 106, '2016-01-01', 6000.00, 'Chittagong', 'Chittagong', 'Chittagong', 'Bangladesh', '01867654125', 'male', '1970-01-01', 'Branch Manager', 5),
(128, 'Sakian', 'Noor', 'sakian', 'sakian', 110, '1970-01-01', 30000.00, 'Gulshan', 'Dhaka', 'Dhaka', 'Bangladesh', '01675646576', 'male', '2016-05-01', 'Employees', 1),
(129, 'Shoaib', 'Hasan', 'shoaib', '123', 106, '1970-01-01', 20000.00, 'mohakhali', 'dhaka', 'Dhaka', 'Bangladesh', '01675420420', 'male', '1990-01-05', 'Employees', 2),
(130, 'Akand', 'Faisal mia', 'akand', 'akand', 46, '1970-01-01', 25000.00, 'Mirpur ', 'Dhaka', 'Dhaka', 'Bangladesh', '01711112233', 'male', '1989-12-26', 'Employees', 5),
(131, 'Mazharul Islam', 'Tusher', 'tusher', '123', 46, '1970-01-01', 15000.00, 'Shahjahanpur', 'Dhaka', 'Dhaka', 'Bangladesh', '01711223345', 'male', '1990-02-10', 'Employees', 3),
(132, 'Mushfiq', 'Rahim', 'mushfiq', 'mushfiq', 107, '2017-05-02', 25000.00, 'dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '01819000000', 'male', '1983-05-03', 'Employees', 0),
(133, 'Tasneem', 'Reza', 'tash', 'tash', 106, '2017-05-02', 25000.00, 'dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '0100000000', 'female', '1995-04-20', 'Employees', 5),
(134, 'Ahmed', 'Sabbir', 'sabbir', 'sabbir', 110, '2017-01-01', 10000.00, 'Khulna', 'Khulna', 'Khulna', 'Bangladesh', '01000000000', 'male', '1994-05-18', 'Employees', 0),
(135, 'Karim', 'Benzema', 'benz', 'benz', 110, '2017-05-02', 100000.00, 'spain', 'khulna', 'Khulna', 'Bangladesh', '01000000000', 'male', '1994-01-14', 'Branch Manager', 10);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salaryid` int(10) NOT NULL,
  `empid` int(10) NOT NULL,
  `branchid` int(10) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(15) NOT NULL,
  `basicsalary` float(15,2) NOT NULL,
  `bonussalary` double(10,2) NOT NULL,
  `pf` float(15,2) NOT NULL,
  `hra` float(15,2) NOT NULL,
  `lic` float(15,2) NOT NULL,
  `totalsalary` float(15,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salaryid`, `empid`, `branchid`, `month`, `year`, `basicsalary`, `bonussalary`, `pf`, `hra`, `lic`, `totalsalary`, `date`) VALUES
(58, 103, 42, 'Feb', 2016, 5000.00, 33.00, 600.00, 0.00, 500.00, 3933.00, '2016-02-16'),
(60, 127, 106, 'Mar', 2016, 6000.00, 700.00, 720.00, 0.00, 600.00, 5140.00, '2016-03-02'),
(61, 127, 106, 'Mar', 2016, 6000.00, 700.00, 720.00, 0.00, 600.00, 5140.00, '2016-03-02'),
(62, 101, 45, '01', 2016, 20000.00, 5000.00, 5000.00, 0.00, 0.00, 20000.00, '2016-05-04'),
(63, 104, 45, '01', 2016, 10000.00, 0.00, 1200.00, 0.00, 1000.00, 7800.00, '2016-05-04'),
(64, 128, 46, '01', 2016, 30000.00, 0.00, 3600.00, 1200.00, 3000.00, 22100.00, '2016-05-05'),
(65, 128, 46, '01', 2016, 30000.00, 0.00, 3600.00, 1200.00, 3000.00, 20200.00, '2016-05-05'),
(66, 103, 46, '01', 2016, 5000.00, 0.00, 600.00, 200.00, 500.00, 3500.00, '2016-05-05'),
(67, 129, 46, '01', 2016, 20000.00, 0.00, 2400.00, 800.00, 2000.00, 14700.00, '2016-05-05'),
(68, 129, 46, '01', 2016, 20000.00, 0.00, 2400.00, 800.00, 2000.00, 13800.00, '2016-05-05'),
(69, 128, 46, '01', 2016, 30000.00, 0.00, 3600.00, 1200.00, 3000.00, -6646.15, '2016-05-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attid`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empid`),
  ADD UNIQUE KEY `loginid` (`loginid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salaryid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salaryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
