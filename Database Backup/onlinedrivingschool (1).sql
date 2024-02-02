-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 05:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinedrivingschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attedance_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `attedance_date` datetime NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attedance_id`, `employee_id`, `attedance_date`, `status`) VALUES
(105, 3, '2020-06-16 00:00:00', 'Present'),
(106, 4, '2020-06-16 00:00:00', 'Absent'),
(107, 5, '2020-06-16 00:00:00', 'Absent'),
(108, 6, '2020-06-16 00:00:00', 'Present'),
(109, 8, '2020-06-16 00:00:00', 'Present'),
(110, 9, '2020-06-16 00:00:00', 'Present'),
(111, 10, '2020-06-16 00:00:00', 'Present'),
(112, 11, '2020-06-16 00:00:00', 'Present'),
(113, 12, '2020-06-16 00:00:00', 'Present'),
(114, 14, '2020-06-16 00:00:00', 'Present'),
(115, 15, '2020-06-16 00:00:00', 'Present'),
(116, 3, '2020-06-15 00:00:00', 'Present'),
(117, 4, '2020-06-15 00:00:00', 'Present'),
(118, 5, '2020-06-15 00:00:00', 'Absent'),
(119, 6, '2020-06-15 00:00:00', 'Absent'),
(120, 8, '2020-06-15 00:00:00', 'Present'),
(121, 9, '2020-06-15 00:00:00', 'Present'),
(122, 10, '2020-06-15 00:00:00', 'Present'),
(123, 11, '2020-06-15 00:00:00', 'Present'),
(124, 12, '2020-06-15 00:00:00', 'Present'),
(125, 14, '2020-06-15 00:00:00', 'Present'),
(126, 15, '2020-06-15 00:00:00', 'Present'),
(127, 3, '2020-06-01 00:00:00', 'Present'),
(128, 4, '2020-06-01 00:00:00', 'Present'),
(129, 5, '2020-06-01 00:00:00', 'Present'),
(130, 6, '2020-06-01 00:00:00', 'Present'),
(131, 8, '2020-06-01 00:00:00', 'Present'),
(132, 9, '2020-06-01 00:00:00', 'Absent'),
(133, 10, '2020-06-01 00:00:00', 'Absent'),
(134, 11, '2020-06-01 00:00:00', 'Present'),
(135, 12, '2020-06-01 00:00:00', 'Present'),
(136, 14, '2020-06-01 00:00:00', 'Present'),
(137, 15, '2020-06-01 00:00:00', 'Present'),
(138, 3, '2020-06-02 00:00:00', 'Present'),
(139, 4, '2020-06-02 00:00:00', 'Present'),
(140, 5, '2020-06-02 00:00:00', 'Present'),
(141, 6, '2020-06-02 00:00:00', 'Present'),
(142, 8, '2020-06-02 00:00:00', 'Absent'),
(143, 9, '2020-06-02 00:00:00', 'Present'),
(144, 10, '2020-06-02 00:00:00', 'Present'),
(145, 11, '2020-06-02 00:00:00', 'Present'),
(146, 12, '2020-06-02 00:00:00', 'Present'),
(147, 14, '2020-06-02 00:00:00', 'Absent'),
(148, 15, '2020-06-02 00:00:00', 'Present'),
(149, 3, '2020-06-03 00:00:00', 'Present'),
(150, 4, '2020-06-03 00:00:00', 'Present'),
(151, 5, '2020-06-03 00:00:00', 'Present'),
(152, 6, '2020-06-03 00:00:00', 'Present'),
(153, 8, '2020-06-03 00:00:00', 'Present'),
(154, 9, '2020-06-03 00:00:00', 'Present'),
(155, 10, '2020-06-03 00:00:00', 'Present'),
(156, 11, '2020-06-03 00:00:00', 'Present'),
(157, 12, '2020-06-03 00:00:00', 'Present'),
(158, 14, '2020-06-03 00:00:00', 'Absent'),
(159, 15, '2020-06-03 00:00:00', 'Absent'),
(160, 3, '2020-06-04 00:00:00', 'Present'),
(161, 4, '2020-06-04 00:00:00', 'Present'),
(162, 5, '2020-06-04 00:00:00', 'Present'),
(163, 6, '2020-06-04 00:00:00', 'Present'),
(164, 8, '2020-06-04 00:00:00', 'Present'),
(165, 9, '2020-06-04 00:00:00', 'Absent'),
(166, 10, '2020-06-04 00:00:00', 'Absent'),
(167, 11, '2020-06-04 00:00:00', 'Present'),
(168, 12, '2020-06-04 00:00:00', 'Present'),
(169, 14, '2020-06-04 00:00:00', 'Present'),
(170, 15, '2020-06-04 00:00:00', 'Present'),
(182, 3, '2020-06-05 00:00:00', 'Present'),
(183, 4, '2020-06-05 00:00:00', 'Present'),
(184, 5, '2020-06-05 00:00:00', 'Present'),
(185, 6, '2020-06-05 00:00:00', 'Present'),
(186, 8, '2020-06-05 00:00:00', 'Present'),
(187, 9, '2020-06-05 00:00:00', 'Present'),
(188, 10, '2020-06-05 00:00:00', 'Absent'),
(189, 11, '2020-06-05 00:00:00', 'Present'),
(190, 12, '2020-06-05 00:00:00', 'Present'),
(191, 14, '2020-06-05 00:00:00', 'Absent'),
(192, 15, '2020-06-05 00:00:00', 'Present'),
(193, 3, '2020-06-17 00:00:00', 'Present'),
(194, 4, '2020-06-17 00:00:00', 'Absent'),
(195, 5, '2020-06-17 00:00:00', 'Absent'),
(196, 6, '2020-06-17 00:00:00', 'Present'),
(197, 8, '2020-06-17 00:00:00', 'Present'),
(198, 9, '2020-06-17 00:00:00', 'Present'),
(199, 10, '2020-06-17 00:00:00', 'Present'),
(200, 11, '2020-06-17 00:00:00', 'Present'),
(201, 12, '2020-06-17 00:00:00', 'Present'),
(202, 14, '2020-06-17 00:00:00', 'Present'),
(203, 15, '2020-06-17 00:00:00', 'Present'),
(204, 16, '2020-06-17 00:00:00', 'Present'),
(217, 3, '2020-06-10 00:00:00', 'Present'),
(218, 4, '2020-06-10 00:00:00', 'Present'),
(219, 5, '2020-06-10 00:00:00', 'Present'),
(220, 6, '2020-06-10 00:00:00', 'Present'),
(221, 8, '2020-06-10 00:00:00', 'Present'),
(222, 9, '2020-06-10 00:00:00', 'Present'),
(223, 10, '2020-06-10 00:00:00', 'Present'),
(224, 11, '2020-06-10 00:00:00', 'Present'),
(225, 12, '2020-06-10 00:00:00', 'Present'),
(226, 14, '2020-06-10 00:00:00', 'Present'),
(227, 15, '2020-06-10 00:00:00', 'Absent'),
(228, 16, '2020-06-10 00:00:00', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(10) NOT NULL,
  `branch_name` varchar(30) NOT NULL,
  `branch_address` text NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `contact_no`, `status`) VALUES
(1, 'Mangalore', 'This is mangalore', '7894561230', 'Active'),
(2, 'BC Road', 'BC Roadas', '08217727968', 'Active'),
(3, 'Udupi', 'Udupi branches', '7894561230', 'Active'),
(4, 'Kollur', '4th floor, Kollur', '8217727968', 'Active'),
(6, 'Puttur', '3rd floor,\r\ncity light', '7894561230', 'Active'),
(7, 'fsdf', 'sdf', '7894561230', 'Active'),
(8, 'Manipal', '#404, STM building,\r\nLK Road, \r\nManipal\r\n', '8897456363', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `customer_address` text NOT NULL,
  `cust_email` varchar(25) NOT NULL,
  `cust_mob` varchar(15) NOT NULL,
  `cust_password` varchar(25) NOT NULL,
  `profile_img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `gender`, `dob`, `customer_address`, `cust_email`, `cust_mob`, `cust_password`, `profile_img`, `status`) VALUES
(1, 'Raj', 'Male', '0000-00-00', '3rd gfloor', 'raja@gmail.com', '7894561230', '123456111', '18151photo-1497316730643-415fac54a2af.jpg', 'Active'),
(2, 'Aravinda MV', 'Male', '0000-00-00', '8th floor, city lights', 'veenu@akshi.in', '88217727968', '111111', '24223Koala.jpg', 'Active'),
(4, 'Aravinda MV', 'Male', '0000-00-00', '3rd floor, city light building', 'aravind123@technopulse.in', '08217727968', 'q1w2e3r4', '11460top.jpg', 'Active'),
(5, 'akash', 'Male', '0000-00-00', '6th floor, cility light', 'aksh@gmail.com', '7894561230', '7894561230', '27954fineart_cover.jpg', 'Active'),
(6, 'Rajj kiran', 'Male', '0000-00-00', '3rd floor', 'rajfkiran@gmail.com', '7894561230', '123456789', '21200redmi note7.jpeg', 'Active'),
(7, 'Preetham', 'Male', '0000-00-00', '3rd floor', 'preetham@gmail.com', '794561230', 'q1w2e3r4', '27754IMG-20200104-WA0007 (1).jpg', 'Active'),
(8, 'yuvran', 'Male', '0000-00-00', '3rd floor, city light building', 'run@gmail.com', '7894561230', '123456789', '15887IMG-20200104-WA0007.jpg', 'Active'),
(11, 'Bharath', 'Male', '0000-00-00', '3rd floor. city light building', 'bharath@gmail.com', '789456130', '123456789', '13569hotel.jpg', 'Active'),
(12, 'Mahesh raj', 'Male', '0000-00-00', '3rd floor, city lgith', 'maheshraj@gmail.com', '7894561230', '12345679', '4451Koala.jpg', 'Active'),
(13, 'Meena', 'Female', '2004-03-20', 'Meena', 'meena466@gmail.com', '7894561230', '123456789', '21697Tulips.jpg', 'Active'),
(16, 'Dushayn', 'Male', '1995-06-04', 'Dushayn', 'dushayn123@gmail.com', '9874563210', '7894561230', '77173528181t2A6uhm4L._SX466_.jpg', 'Active'),
(18, 'bjush kumar', 'Male', '2003-06-16', '3rd floor, city light building', 'bush@gmail.com', '9874563211', '123456789', '660318032download.jpg', 'Active'),
(19, 'Ansika kumar', 'Male', '2006-12-30', '3rd floor,\r\nCity light', 'ankira@gmail.com', '7894561230', 'a1s2d3f4/', '2523928771650065715503105.jpeg', 'Active'),
(20, 'Anand kumar', 'Male', '2000-06-17', '3rd floor,\r\ncity light', 'anandkumar22@gamil.com', '7894561230', '123456789', '184161029images.jpg', 'Active'),
(39, 'Aravinda M V', 'Male', '1994-05-23', '3rd floor, city light', 'mvaravinda@gmail.com', '7894561230', '1234567890', '1474430835images.jpg', 'Active'),
(41, 'Raj kiran', 'Female', '1998-07-29', 'asdf', 'aravinda@technopulse.in', '3424234', 'q1w2e3r4', '72784858WhatsApp Image 2020-08-21 at 11.47.13 AM (1).jpeg', 'Active'),
(45, 'Anand Kumar', 'Male', '1996-08-04', '3rd floor, city light building, Opp. Khazana jewellers', 'anandkumar1222@gmail.in', '87879654112', 'q1w2e3r4', '2079304676anand.jpg', 'Active'),
(46, 'Raksha kumar', 'Male', '1993-09-01', '3rd floor,\r\ncentral garden', 'rakshakumar@gmail.com', '7894561230', 'Q1w2e3r4/', '9753881147.jpg', 'Active'),
(47, 'Rojar', 'Male', '2007-09-02', 'Bangalore', 'rojar@gmail.com', '9876543210', 'rojarrojarrojar', '335411715Shahrukh_1438434688.jpg', 'Active'),
(48, 'kundra kumar', 'Male', '2007-08-29', 'Raji house', 'kundrakumar@gmail.com', '7894561230', 'Q1w2e3r4/', '430397974c0a15425-965c-4e6c-a9a3-c2ed62d5efa2.sized-1000x1000.jpg', 'Active'),
(49, 'jenel', 'Male', '2007-08-30', '3rd floor,\r\nBangalore', 'jenel@gmail.com', '9874561230', 'Q1w2e3r4/', '571231121Chris-Pratt.jpg', 'Active'),
(50, 'Pushkar singh', 'Male', '1994-09-17', '3rd floor,\r\nCity light building,\r\nIndia', 'pushkarsingh@gmail.com', '9874563210', 'pushkarsingh', '1250464430Bright Yellow Blue Gradient for Magic Travel Agency Logo or Badge.png', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer_attendance`
--

CREATE TABLE `customer_attendance` (
  `customer_attendance_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `timeslot_id` int(10) NOT NULL,
  `scheduled_date` date NOT NULL,
  `total_km` double NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_attendance`
--

INSERT INTO `customer_attendance` (`customer_attendance_id`, `customer_id`, `employee_id`, `class_id`, `timeslot_id`, `scheduled_date`, `total_km`, `note`, `status`) VALUES
(5, 19, 12, 20, 16, '2020-06-17', 23, 'gdfg', 'Present'),
(6, 19, 12, 20, 16, '2020-06-16', 20, 'tes', 'Present'),
(7, 20, 16, 28, 21, '2020-06-16', 10, 'Basic staring training provided', 'Present'),
(8, 5, 4, 16, 5, '2020-06-17', 1, 'as', 'Present'),
(11, 20, 16, 28, 21, '2020-06-17', 11, 'for training', 'Present'),
(12, 19, 11, 27, 11, '2020-06-17', 3.2, 'cv', 'Present'),
(13, 20, 16, 28, 21, '2020-06-17', 2, 'fgh', 'Present'),
(14, 20, 16, 28, 21, '2020-06-17', 2.2, 'fgh', 'Present'),
(15, 39, 16, 33, 22, '2020-06-25', 10, 'z', 'Present'),
(16, 39, 16, 33, 22, '2020-06-25', 4, 's', 'Present'),
(17, 39, 16, 33, 22, '2020-06-25', 1, '1', 'Present'),
(18, 39, 16, 33, 22, '2020-06-25', 1, 'a', 'Present'),
(19, 39, 16, 33, 22, '2020-06-25', 1, 'a', 'Present'),
(20, 39, 16, 33, 22, '2020-06-25', 1, 'a', 'Present'),
(21, 39, 16, 33, 22, '2020-06-25', 1, 'a', 'Present'),
(22, 39, 16, 33, 22, '2020-06-25', 12, 'd', 'Present'),
(23, 39, 16, 33, 22, '2020-08-26', 76, 'fd', 'Present'),
(24, 45, 12, 46, 16, '2020-08-26', 10, 'Basic training provided', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `driving_class`
--

CREATE TABLE `driving_class` (
  `class_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `vehicle_type` varchar(25) NOT NULL,
  `package_id` int(10) NOT NULL,
  `package_cost` float(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `timeslot_id` int(10) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driving_class`
--

INSERT INTO `driving_class` (`class_id`, `customer_id`, `branch_id`, `employee_id`, `vehicle_type`, `package_id`, `package_cost`, `start_date`, `end_date`, `timeslot_id`, `note`, `status`) VALUES
(33, 39, 2, 16, 'Four Wheeler', 26, 6000.00, '2020-06-26', '2020-07-16', 22, 'Test', 'Active'),
(34, 0, 0, 0, '', 0, 0.00, '0000-00-00', '0000-00-00', 0, '', ''),
(35, 0, 0, 0, '', 0, 0.00, '0000-00-00', '0000-00-00', 0, '', ''),
(36, 0, 0, 0, '', 0, 0.00, '0000-00-00', '0000-00-00', 0, '', ''),
(37, 0, 0, 0, '', 0, 0.00, '0000-00-00', '0000-00-00', 0, '', ''),
(38, 0, 0, 0, '', 0, 0.00, '0000-00-00', '0000-00-00', 0, '', ''),
(39, 13, 2, 16, 'sf', 23, 23.00, '2020-08-12', '0000-00-00', 12, 'a', 'Active'),
(40, 41, 1, 0, 'Two Wheeler', 13, 5000.00, '2020-08-27', '2020-09-06', 0, '', 'Pending'),
(43, 41, 6, 14, 'Two Wheeler', 19, 2500.00, '2020-08-27', '2020-09-05', 19, 'ds', 'Active'),
(44, 41, 6, 14, 'Two Wheeler', 19, 2500.00, '2020-08-27', '2020-09-05', 20, 'sdf', 'Active'),
(45, 41, 6, 14, 'Two Wheeler', 19, 2500.00, '2020-09-06', '2020-09-15', 19, 'sdf', 'Active'),
(46, 45, 6, 12, 'Two Wheeler', 19, 2500.00, '2020-08-27', '2020-09-05', 16, 'Requesting to pick up from our home', 'Active'),
(47, 46, 2, 16, 'Four Wheeler', 26, 6000.00, '2022-09-03', '2022-09-23', 21, 'test', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `driving_license`
--

CREATE TABLE `driving_license` (
  `dl_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `reg_date` date NOT NULL,
  `package_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `vehicle_type` varchar(25) NOT NULL,
  `package_cost` double(10,2) NOT NULL,
  `photo_proof` varchar(100) NOT NULL,
  `id_proof` varchar(100) NOT NULL,
  `address_proof` varchar(100) NOT NULL,
  `license_type` varchar(25) NOT NULL,
  `license_file` text NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driving_license`
--

INSERT INTO `driving_license` (`dl_id`, `customer_id`, `reg_date`, `package_id`, `branch_id`, `vehicle_type`, `package_cost`, `photo_proof`, `id_proof`, `address_proof`, `license_type`, `license_file`, `note`, `status`) VALUES
(11, 39, '2020-07-05', 25, 2, 'Four Wheeler', 2500.00, '1319557964Chrysanthemum.jpg', '1309034624Desert.jpg', '1325333978Jellyfish.jpg', 'DL', '488392046car.jpg', 'App', 'Active'),
(12, 39, '2020-07-02', 25, 2, 'Four Wheeler', 2500.00, '220032597Hydrangeas.jpg', '414623400Koala.jpg', '2126711087Penguins.jpg', 'DL', '1144903960honda.jpg', 'This is dl', 'Active'),
(13, 0, '0000-00-00', 0, 0, '', 0.00, '573704503', '748760424', '1702118658', '', '', '', ''),
(14, 0, '0000-00-00', 0, 0, '', 0.00, '1894545997', '1543044431', '1473280836', '', '', '', ''),
(15, 8, '2020-08-05', 15, 2, 'sdf', 500.00, '37773655WhatsApp Image 2020-08-21 at 11.47.13 AM (1).jpeg', '523987976WhatsApp Image 2020-08-21 at 11.47.13 AM.jpeg', '437694418WhatsApp Image 2020-08-22 at 12.05.31 AM.jpeg', '', '', 'test', 'Active'),
(16, 41, '2020-09-02', 25, 2, 'Four Wheeler', 2500.00, '747576913', '1758394848', '1548580368', '', '', '', 'Pending'),
(17, 41, '2020-09-02', 25, 2, 'Four Wheeler', 2500.00, '2138156834WhatsApp Image 2020-08-21 at 11.47.13 AM (1).jpeg', '692022580WhatsApp Image 2020-08-21 at 11.47.13 AM.jpeg', '1162180359WhatsApp Image 2020-08-22 at 12.05.31 AM.jpeg', '', '', 'sdf', 'Active'),
(18, 45, '2020-09-05', 21, 6, 'Two Wheeler', 2000.00, '1644911308anand.jpg', '1659156441id.jpeg', '1516400783proof.jpeg', '', '', 'Convenient in the Morning', 'Active'),
(19, 45, '2020-09-10', 21, 6, 'Two Wheeler', 2000.00, '1762056802pedestrian.jpg', '1826982579onewayicon.png', '1079518440opposite side vehicle.jpg', 'DL', '192580492onewya.jpg', 'a', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `employee_name` varchar(25) NOT NULL,
  `employee_type` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `login_id` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `profile` text NOT NULL,
  `address` text NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `certificate` varchar(100) NOT NULL,
  `profile_img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `branch_id`, `employee_name`, `employee_type`, `gender`, `login_id`, `password`, `email_id`, `profile`, `address`, `contact_no`, `certificate`, `profile_img`, `status`) VALUES
(2, 0, 'Raj', 'Admin', 'Male', 'admin', 'adminadminadmin', 'ram@gmail.com', 'Hello ramaa', '3rd floor, city light building', '7489456213', '21976cok.png', '3377pickle.jpg', 'Active'),
(3, 3, 'Shikar', 'Employee', 'Male', 'peterk', '123456789', 'aravinda@technopulse.in', 'hello how are you', '3rd floor, city light building', '9736073178', '14537289Table structure .docx', '14128Idli_-With_-Idli_-Rava-1020x680.jpg', 'Active'),
(4, 1, 'Raj', 'Employee', 'Male', 'raj', 'raj111', 'raj@gmail.com', 'This rajs profile', '3rd floor, city light', '7894561230', '7386', '519314487make-up-services-at-home-250x250.jpg', 'Active'),
(5, 1, 'peter king', 'Employee', 'Male', 'peterking11', 'peterking123', 'peterking@technopulse.in', 'peterking from mangalore', '4th floor, city light building, Mangalore', '7894561301', '16690', '398191481images.jpg', 'Active'),
(6, 3, 'Kiran', 'Employee', 'Male', 'kiran', 'q1w2e3r4', 'kiran@gmail.com', 'hello how are you', '3rd floor, city light building', '9740073178', '4072', '1698193316anitha.jpg', 'Active'),
(8, 3, 'Jaya', 'Employee', 'Female', 'kiran', 'q1w2e3r4', 'kiran@gmail.com', 'hello how are you', '3rd floor, city light building', '9740073178', '4072', '9729', 'Active'),
(9, 1, 'Radha', 'Employee', 'Female', 'peterking', 'peterking123', 'peterking@technopulse.in', 'peterking from mangalore', '4th floor, city light building, Mangalore', '7894561301', '16690', '7834704940.jpg', 'Active'),
(10, 6, 'Shekar kumar', 'Employee', 'Male', 'shekar', 'q1w2e3r4', 'shekarkumar@gmail.com', 'This is puttur profile', '3rd floor,\r\nmangal branch', '7894561230', '19246176839643 - PHP MySQL Hostel Management System.txt', '519314487make-up-services-at-home-250x250.jpg', 'Active'),
(11, 6, 'Ananth krishna', 'Employee', 'Male', 'ananthkrishna', '123456789', 'ananthkrishna@gmail.com', 'This is ananth krishna having 4 years of experience', '3rd flor, city light', '7894561230', '2110997077screenshot-localhost-2020.06.06-01_12_55.png', '412151669chicken biriyani.jpg', 'Active'),
(12, 6, 'Manthesh kumar', 'Employee', 'Male', 'manthshkumar', 'q1w2e3r4', 'manthesh@gmail.com', 'This is new profile', '5th floor,\r\nCity light', '7894561230', '398191481images.jpg', '7834704940.jpg', 'Active'),
(13, 1, 'angar', 'Admin', 'Male', 'angar', 'angarangar', 'angar@gamil.com', '', '', '7894561230', '806578935', '1040835664images.jpg', 'Active'),
(14, 6, 'Anitha', 'Employee', 'Female', 'anitha', '123456789', 'anita@gmail.com', 'This is anithas profile working for last 5-6 years.', '5th floor', '7894561230', '115880785aa.docx', '1698193316anitha.jpg', 'Active'),
(15, 6, 'Swathi', 'Employee', 'Female', 'swathi', '123456789', 'swathi@gmail.ocm', '', '3rd floor, city light', '7894561230', '405671750Ramyamca.docx', '1482394139images.png', 'Active'),
(16, 2, 'Raj kiran', 'Employee', 'Male', 'rajkiran123', '12345689', 'rajkiran123@gmail.com', 'This profile for employee', '3rd floor, city light building, Opp. Khazana jewellers', '7894561630', '743181024Desert.jpg', '997450428Koala.jpg', 'Active'),
(17, 1, 'Vinitha', 'Admin', 'Male', 'angar', 'q1w2e3r4', 'vinitha@gmail.com', 'sdf', '3rd floor, city light building, Opp. Khazana jewellers', '7894561230', '517250217WhatsApp Image 2020-08-21 at 11.47.13 AM (1).jpeg', '1434844345WhatsApp Image 2020-08-21 at 11.47.13 AM.jpeg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `examinationid` bigint(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `attend_date` datetime NOT NULL,
  `qstn_id` bigint(20) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `correctanswer` varchar(50) NOT NULL,
  `selectedanswer` varchar(50) NOT NULL,
  `marksperquestion` double NOT NULL,
  `negativemarks` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`examinationid`, `customer_id`, `attend_date`, `qstn_id`, `vehicle_type`, `correctanswer`, `selectedanswer`, `marksperquestion`, `negativemarks`) VALUES
(1, 49, '2022-09-03 01:41:48', 52, 'Code 8', 'Option 2', 'Option 1', 1, 1),
(2, 49, '2022-09-03 01:41:48', 40, 'Code 8', 'Option 1', 'Option 2', 1, 1),
(3, 49, '2022-09-03 01:41:48', 43, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(4, 49, '2022-09-03 01:41:48', 49, 'Code 8', 'Option 3', '', 1, 1),
(5, 49, '2022-09-03 01:41:48', 53, 'Code 8', 'Option 3', '', 1, 1),
(6, 49, '2022-09-03 01:41:48', 76, 'Code 8', 'Option 2', '', 1, 1),
(7, 49, '2022-09-03 01:41:48', 18, 'Code 8', 'Option 3', '', 1, 1),
(8, 49, '2022-09-03 01:41:48', 100, 'Code 8', 'Option 2', '', 1, 1),
(9, 49, '2022-09-03 01:41:48', 55, 'Code 8', 'Option 3', '', 1, 1),
(10, 49, '2022-09-03 01:41:48', 73, 'Code 8', 'Option 3', '', 1, 1),
(11, 49, '2022-09-03 01:41:48', 79, 'Code 8', 'Option 3', '', 1, 1),
(12, 49, '2022-09-03 01:41:48', 91, 'Code 8', 'Option 3', '', 1, 1),
(13, 49, '2022-09-03 01:41:48', 10, 'Code 8', 'Option 2', '', 1, 1),
(14, 49, '2022-09-03 01:41:48', 82, 'Code 8', 'Option 2', '', 1, 1),
(15, 49, '2022-09-03 01:41:48', 67, 'Code 8', 'Option 3', '', 1, 1),
(16, 49, '2022-09-03 01:41:48', 39, 'Code 8', 'Option 2', '', 1, 1),
(17, 49, '2022-09-03 01:41:48', 71, 'Code 8', 'Option 3', '', 1, 1),
(18, 49, '2022-09-03 01:41:48', 85, 'Code 8', 'Option 3', '', 1, 1),
(19, 49, '2022-09-03 01:41:48', 61, 'Code 8', 'Option 3', '', 1, 1),
(20, 49, '2022-09-03 01:41:48', 88, 'Code 8', 'Option 2', '', 1, 1),
(21, 49, '2022-09-03 01:41:48', 14, 'Code 8', 'Option 1', '', 1, 1),
(22, 49, '2022-09-03 01:41:48', 4, 'Code 8', 'Option 3', '', 1, 1),
(23, 49, '2022-09-03 01:41:48', 95, 'Code 8', 'Option 3', '', 1, 1),
(24, 49, '2022-09-03 01:41:48', 46, 'Code 8', 'Option 2', '', 1, 1),
(25, 49, '2022-09-03 01:41:48', 83, 'Code 8', 'Option 3', '', 1, 1),
(26, 49, '2022-09-03 01:55:10', 106, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(27, 49, '2022-09-03 01:55:10', 71, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(28, 49, '2022-09-03 01:55:10', 41, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(29, 49, '2022-09-03 01:55:10', 61, 'Code 8', 'Option 3', 'Option 2', 1, 1),
(30, 49, '2022-09-03 01:55:10', 73, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(31, 49, '2022-09-03 01:55:10', 39, 'Code 8', 'Option 2', 'Option 4', 1, 1),
(32, 49, '2022-09-03 01:55:10', 101, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(33, 49, '2022-09-03 01:55:10', 22, 'Code 8', 'Option 2', 'Option 1', 1, 1),
(34, 49, '2022-09-03 01:55:10', 65, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(35, 49, '2022-09-03 01:55:10', 6, 'Code 8', 'Option 3', 'Option 4', 1, 1),
(36, 49, '2022-09-03 01:55:10', 4, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(37, 49, '2022-09-03 01:55:10', 97, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(38, 49, '2022-09-03 01:55:10', 95, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(39, 49, '2022-09-03 01:55:10', 10, 'Code 8', 'Option 2', 'Option 4', 1, 1),
(40, 49, '2022-09-03 01:55:10', 76, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(41, 49, '2022-09-03 01:55:10', 34, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(42, 49, '2022-09-03 01:55:10', 40, 'Code 8', 'Option 1', 'Option 3', 1, 1),
(43, 49, '2022-09-03 01:55:10', 64, 'Code 8', 'Option 2', 'Option 4', 1, 1),
(44, 49, '2022-09-03 01:55:10', 46, 'Code 8', 'Option 2', 'Option 3', 1, 1),
(45, 49, '2022-09-03 01:55:10', 100, 'Code 8', 'Option 2', 'Option 3', 1, 1),
(46, 49, '2022-09-03 01:55:10', 59, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(47, 49, '2022-09-03 01:55:10', 36, 'Code 8', 'Option 1', 'Option 1', 1, 1),
(48, 49, '2022-09-03 01:55:10', 85, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(49, 49, '2022-09-03 01:55:10', 83, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(50, 49, '2022-09-03 01:55:10', 103, 'Code 8', 'Option 3', 'Option 4', 1, 1),
(51, 49, '2022-09-03 02:02:48', 65, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(52, 49, '2022-09-03 02:02:48', 89, 'Code 8', 'Option 3', 'Option 2', 1, 1),
(53, 49, '2022-09-03 02:02:48', 16, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(54, 49, '2022-09-03 02:02:48', 34, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(55, 49, '2022-09-03 02:02:48', 4, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(56, 49, '2022-09-03 02:02:48', 73, 'Code 8', 'Option 3', 'Option 2', 1, 1),
(57, 49, '2022-09-03 02:02:48', 46, 'Code 8', 'Option 2', 'Option 3', 1, 1),
(58, 49, '2022-09-03 02:02:48', 12, 'Code 8', 'Option 3', 'Option 2', 1, 1),
(59, 49, '2022-09-03 02:02:48', 64, 'Code 8', 'Option 2', 'Option 1', 1, 1),
(60, 49, '2022-09-03 02:02:48', 40, 'Code 8', 'Option 1', 'Option 2', 1, 1),
(61, 49, '2022-09-03 02:02:48', 106, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(62, 49, '2022-09-03 02:02:48', 49, 'Code 8', 'Option 3', 'Option 2', 1, 1),
(63, 49, '2022-09-03 02:02:48', 61, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(64, 49, '2022-09-03 02:02:48', 85, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(65, 49, '2022-09-03 02:02:48', 22, 'Code 8', 'Option 2', 'Option 1', 1, 1),
(66, 49, '2022-09-03 02:02:48', 6, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(67, 49, '2022-09-03 02:02:48', 91, 'Code 8', 'Option 3', 'Option 1', 1, 1),
(68, 49, '2022-09-03 02:02:48', 100, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(69, 49, '2022-09-03 02:02:48', 53, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(70, 49, '2022-09-03 02:02:48', 33, 'Code 8', 'Option 1', 'Option 1', 1, 1),
(71, 49, '2022-09-03 02:02:48', 14, 'Code 8', 'Option 1', 'Option 2', 1, 1),
(72, 49, '2022-09-03 02:02:48', 47, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(73, 49, '2022-09-03 02:02:48', 88, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(74, 49, '2022-09-03 02:02:48', 55, 'Code 8', 'Option 3', 'Option 2', 1, 1),
(75, 49, '2022-09-03 02:02:48', 20, 'Code 8', 'Option 2', 'Option 3', 1, 1),
(76, 49, '2022-09-03 03:03:20', 101, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(77, 49, '2022-09-03 03:03:20', 59, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(78, 49, '2022-09-03 03:03:20', 97, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(79, 49, '2022-09-03 03:03:20', 64, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(80, 49, '2022-09-03 03:03:20', 24, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(81, 49, '2022-09-03 03:03:20', 106, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(82, 49, '2022-09-03 03:03:20', 52, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(83, 49, '2022-09-03 03:03:20', 77, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(84, 49, '2022-09-03 03:03:20', 83, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(85, 49, '2022-09-03 03:03:20', 91, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(86, 49, '2022-09-03 03:03:20', 58, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(87, 49, '2022-09-03 03:03:20', 36, 'Code 8', 'Option 1', 'Option 2', 1, 1),
(88, 49, '2022-09-03 03:03:20', 22, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(89, 49, '2022-09-03 03:03:20', 88, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(90, 49, '2022-09-03 03:03:20', 94, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(91, 49, '2022-09-03 03:03:20', 46, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(92, 49, '2022-09-03 03:03:20', 76, 'Code 8', 'Option 2', 'Option 2', 1, 1),
(93, 49, '2022-09-03 03:03:20', 49, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(94, 49, '2022-09-03 03:03:20', 14, 'Code 8', 'Option 1', 'Option 2', 1, 1),
(95, 49, '2022-09-03 03:03:20', 55, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(96, 49, '2022-09-03 03:03:20', 71, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(97, 49, '2022-09-03 03:03:20', 12, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(98, 49, '2022-09-03 03:03:20', 61, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(99, 49, '2022-09-03 03:03:20', 18, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(100, 49, '2022-09-03 03:03:20', 4, 'Code 8', 'Option 3', 'Option 3', 1, 1),
(101, 49, '2022-09-03 03:12:33', 63, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(102, 49, '2022-09-03 03:12:33', 25, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(103, 49, '2022-09-03 03:12:33', 50, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(104, 49, '2022-09-03 03:12:33', 13, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(105, 49, '2022-09-03 03:12:33', 48, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(106, 49, '2022-09-03 03:12:33', 75, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(107, 49, '2022-09-03 03:12:33', 93, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(108, 49, '2022-09-03 03:12:33', 19, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(109, 49, '2022-09-03 03:12:33', 68, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(110, 49, '2022-09-03 03:12:33', 66, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(111, 49, '2022-09-03 03:12:33', 87, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(112, 49, '2022-09-03 03:12:33', 98, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(113, 49, '2022-09-03 03:12:33', 99, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(114, 49, '2022-09-03 03:12:33', 105, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(115, 49, '2022-09-03 03:12:33', 35, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(116, 49, '2022-09-03 03:12:33', 42, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(117, 49, '2022-09-03 03:12:33', 60, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(118, 49, '2022-09-03 03:12:33', 30, 'Code 10', 'Option 2', 'Option 3', 1, 1),
(119, 49, '2022-09-03 03:12:33', 96, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(120, 49, '2022-09-03 03:12:33', 72, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(121, 49, '2022-09-03 03:12:33', 5, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(122, 49, '2022-09-03 03:12:33', 69, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(123, 49, '2022-09-03 03:12:33', 21, 'Code 10', 'Option 2', 'Option 2', 1, 1),
(124, 49, '2022-09-03 03:12:33', 15, 'Code 10', 'Option 1', 'Option 1', 1, 1),
(125, 49, '2022-09-03 03:12:33', 56, 'Code 10', 'Option 1', 'Option 1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `learners_license`
--

CREATE TABLE `learners_license` (
  `learnerlicense_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `reg_date` date NOT NULL,
  `package_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `vehicle_type` varchar(25) NOT NULL,
  `package_cost` double(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learners_license`
--

INSERT INTO `learners_license` (`learnerlicense_id`, `customer_id`, `reg_date`, `package_id`, `branch_id`, `vehicle_type`, `package_cost`, `note`, `status`) VALUES
(1, 46, '0000-00-00', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(2, 46, '0000-00-00', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(3, 46, '0000-00-00', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(4, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(5, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(6, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(7, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(8, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(9, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(10, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(11, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(12, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(13, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(14, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(15, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(16, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(17, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(18, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(19, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(20, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(21, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(22, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(23, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(24, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(25, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(26, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(27, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(28, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(29, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(30, 46, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(31, 46, '2022-09-02', 32, 1, 'Code 10', 10000.00, '', 'Active'),
(32, 46, '2022-09-02', 32, 1, 'Code 10', 10000.00, '', 'Active'),
(33, 47, '2022-09-02', 32, 1, 'Code 10', 10000.00, '', 'Active'),
(34, 48, '2022-09-02', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(35, 49, '2022-09-03', 31, 1, 'Code 8', 5000.00, '', 'Active'),
(36, 49, '2022-09-03', 32, 1, 'Code 10', 10000.00, '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `mail_setting`
--

CREATE TABLE `mail_setting` (
  `settingid` int(10) NOT NULL,
  `settingtype` varchar(25) NOT NULL,
  `settingdetails` text NOT NULL,
  `email_template` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail_setting`
--

INSERT INTO `mail_setting` (`settingid`, `settingtype`, `settingdetails`, `email_template`, `status`) VALUES
(28, 'SMTP', 'a:5:{s:10:\"mailsender\";s:14:\"Driving School\";s:10:\"smtpserver\";s:22:\"mail.projectmailer.xyz\";s:8:\"smtpport\";s:3:\"587\";s:7:\"loginid\";s:37:\"onlinedrivingschool@projectmailer.xyz\";s:8:\"password\";s:12:\"]_G34oP=wL2N\";}', 'a:7:{s:11:\"companyname\";s:14:\"Driving School\";s:9:\"contactno\";s:10:\"9243309735\";s:14:\"companyaddress\";s:64:\"Abby Complex, 1st Floor, Kulshekar, Mangalore, Karnataka 575005.\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `package_title` varchar(250) NOT NULL,
  `package_cost` float(10,2) NOT NULL,
  `package_type` varchar(50) NOT NULL,
  `total_km` double(10,2) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `branch_id`, `vehicle_type`, `package_title`, `package_cost`, `package_type`, `total_km`, `no_of_days`, `note`, `status`) VALUES
(13, 1, 'Code 8', 'Scooty - Two wheeler', 5000.00, 'Driving Class', 100.00, 11, 'For two wheeler', 'Active'),
(15, 1, 'Code 10', 'Maruti Alto - Four Wheele', 10000.00, 'Driving Class', 150.00, 15, 'Maruti Alto - Four Wheeler Package for one week', 'Active'),
(16, 1, 'Two Wheeler', 'Two wheeler with gear', 2500.00, 'Driving License', 0.00, 0, 'Two wheeler with gear package', 'Active'),
(17, 1, 'Four Wheeler', 'Four wheeler driving lice', 5000.00, 'Driving License', 0.00, 0, 'Four wheeler driving license package with agent service', 'Active'),
(19, 6, 'Two Wheeler', 'Honda Two wheeler class', 2500.00, 'Driving Class', 80.00, 10, 'This is for two wheeler', 'Active'),
(20, 6, 'Four Wheeler', 'Four wheeler driving clas', 5000.00, 'Driving Class', 150.00, 20, 'Four wheeler training', 'Active'),
(21, 6, 'Two Wheeler', 'Two wheeler driving licen', 2000.00, 'Driving License', 0.00, 0, 'Two wheeler driving licence guiding agency', 'Active'),
(22, 6, 'Four Wheeler', 'Four wheeler Driving lice', 2500.00, 'Driving License', 0.00, 0, 'Four wheeler Driving license agency', 'Active'),
(23, 6, 'Both', 'Two wheeler & Four wheele', 4000.00, 'Driving License', 0.00, 0, 'Two wheeler & Four wheeler Driving License driving agent service', 'Active'),
(24, 2, 'Four Wheeler', 'Four wheeler Training', 4000.00, 'Driving Class', 100.00, 11, 'Driving school training for four wheeler', 'Active'),
(25, 2, 'Four Wheeler', 'Four wheeler License', 2500.00, 'Driving License', 0.00, 0, 'Applicable only for four wheeler license', 'Active'),
(26, 2, 'Four Wheeler', 'Four Wheeler Training class', 6000.00, 'Driving Class', 125.00, 21, 'Four Wheeler Training class for tutorial', 'Active'),
(27, 2, 'Two Wheeler', 'Four wheeler Training', 5000.00, 'Driving Class', 11.00, 3, 'd', 'Active'),
(28, 3, 'Four Wheeler', 'sdfsdf', 34.00, 'Driving License', 0.00, 0, 'sdf', 'Active'),
(29, 1, 'Code 8', 'Two Wheeler Package', 5000.00, 'Driving Class', 125.00, 30, 'For two wheeler', 'Active'),
(30, 2, 'Both', 'Four Wheeler and Two Wheeler', 5500.00, 'Driving License', 0.00, 0, 'Four Wheeler and Two Wheeler agency service', 'Active'),
(31, 1, 'Code 8', 'Code 8 License', 5000.00, 'Learners License', 0.00, 0, 'Code 8 License Record', 'Active'),
(32, 1, 'Code 10', 'Code 10 License', 10000.00, 'Learners License', 0.00, 0, 'Code 10 License Record', 'Active'),
(33, 2, 'Code 8', 'Learners License BC Title', 3500.00, 'Learners License', 0.00, 0, 'Learners License BC Title Record', 'Active'),
(34, 2, 'Code 10', 'Learners License BC Code 10Title', 6000.00, 'Learners License', 0.00, 0, 'Learners License BC description', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `dl_id` int(10) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `llr_id` bigint(20) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `paid_amt` float(10,2) DEFAULT NULL,
  `payment_detail` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `dl_id`, `class_id`, `llr_id`, `payment_date`, `paid_amt`, `payment_detail`, `status`) VALUES
(53, 11, 0, 0, '2020-06-25', 2500.00, 'a:4:{i:0;s:17:\"$_POST[card_type]\";i:1;s:19:\"$_POST[card_holder]\";i:2;s:19:\"$_POST[card_number]\";i:3;s:18:\"$_POST[cvv_number]\";}', 'Active'),
(54, 12, 0, 0, '2020-06-25', 2500.00, 'a:4:{i:0;s:17:\"$_POST[card_type]\";i:1;s:19:\"$_POST[card_holder]\";i:2;s:19:\"$_POST[card_number]\";i:3;s:18:\"$_POST[cvv_number]\";}', 'Active'),
(55, 0, 33, 0, '2020-06-25', 3000.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:11:\"Master Card\";i:2;s:9:\"Raj kiran\";i:3;s:16:\"1234567890123456\";i:4;s:3:\"158\";}', 'Active'),
(56, 0, 33, 0, '2020-06-25', 100.00, 'a:3:{i:0;s:15:\"Offline Payment\";i:1;s:1:\"s\";i:2;s:12:\"Cash Payment\";}', 'Active'),
(57, 0, 33, 0, '2020-06-25', 100.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:11:\"Master Card\";i:2;s:3:\"Ram\";i:3;s:16:\"1234567890123456\";i:4;s:3:\"155\";}', 'Active'),
(58, 0, 41, 0, '2020-08-26', 0.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}', 'Active'),
(59, 0, 42, 0, '2020-08-26', 0.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}', 'Active'),
(60, 0, 43, 0, '2020-08-26', 0.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}', 'Active'),
(61, 0, 43, 0, '2020-08-26', 0.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}', 'Active'),
(62, 0, 43, 0, '2020-08-26', 0.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}', 'Active'),
(63, 0, 43, 0, '2020-08-26', 0.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}', 'Active'),
(64, 0, 44, 0, '2020-08-26', 0.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}', 'Active'),
(65, 0, 45, 0, '2020-08-26', 218.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:4:\"VISA\";i:2;s:4:\"Raah\";i:3;s:16:\"1234567890123456\";i:4;s:3:\"158\";}', 'Active'),
(66, 17, 0, 0, '2020-08-26', 2500.00, 'a:4:{i:0;s:17:\"$_POST[card_type]\";i:1;s:19:\"$_POST[card_holder]\";i:2;s:19:\"$_POST[card_number]\";i:3;s:18:\"$_POST[cvv_number]\";}', 'Active'),
(67, 17, 0, 0, '2020-08-26', 2500.00, 'a:4:{i:0;s:17:\"$_POST[card_type]\";i:1;s:19:\"$_POST[card_holder]\";i:2;s:19:\"$_POST[card_number]\";i:3;s:18:\"$_POST[cvv_number]\";}', 'Active'),
(68, 17, 0, 0, '2020-08-26', 2500.00, 'a:4:{i:0;s:17:\"$_POST[card_type]\";i:1;s:19:\"$_POST[card_holder]\";i:2;s:19:\"$_POST[card_number]\";i:3;s:18:\"$_POST[cvv_number]\";}', 'Active'),
(69, 0, 46, 0, '2020-08-26', 1000.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:4:\"VISA\";i:2;s:9:\"Raj kiran\";i:3;s:16:\"8685456712064135\";i:4;s:3:\"563\";}', 'Active'),
(70, 18, 0, 0, '2020-08-26', 2000.00, 'a:4:{i:0;s:17:\"$_POST[card_type]\";i:1;s:19:\"$_POST[card_holder]\";i:2;s:19:\"$_POST[card_number]\";i:3;s:18:\"$_POST[cvv_number]\";}', 'Active'),
(71, 0, 46, 0, '2020-08-26', 0.00, 'a:3:{i:0;s:15:\"Offline Payment\";i:1;s:0:\"\";i:2;s:0:\"\";}', 'Active'),
(72, 0, 46, 0, '2020-08-26', 32.00, 'a:3:{i:0;s:15:\"Offline Payment\";i:1;s:2:\"sd\";i:2;s:12:\"Cash Payment\";}', 'Active'),
(73, 19, 0, 0, '2020-09-03', 2000.00, 'a:4:{i:0;s:17:\"$_POST[card_type]\";i:1;s:19:\"$_POST[card_holder]\";i:2;s:19:\"$_POST[card_number]\";i:3;s:18:\"$_POST[cvv_number]\";}', 'Active'),
(74, 0, 0, 6, '0000-00-00', 5000.00, '', 'Active'),
(75, 0, 0, 7, '0000-00-00', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(76, 0, 0, 8, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(77, 0, 0, 9, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(78, 0, 0, 10, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(79, 0, 0, 11, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(80, 0, 0, 12, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(81, 0, 0, 13, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(82, 0, 0, 14, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(83, 0, 0, 15, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(84, 0, 0, 16, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(85, 0, 0, 17, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(86, 0, 0, 18, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(87, 0, 0, 19, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(88, 0, 0, 20, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(89, 0, 0, 21, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(90, 0, 0, 22, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(91, 0, 0, 23, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(92, 0, 0, 24, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(93, 0, 0, 25, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(94, 0, 0, 26, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(95, 0, 0, 27, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(96, 0, 0, 28, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(97, 0, 0, 29, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(98, 0, 0, 30, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"REja\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(99, 0, 0, 31, '2022-09-02', 10000.00, '{\"totpay_amt\":\"10000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(100, 0, 0, 32, '2022-09-02', 10000.00, '{\"totpay_amt\":\"10000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(101, 0, 0, 33, '2022-09-02', 10000.00, '{\"totpay_amt\":\"10000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(102, 0, 0, 34, '2022-09-02', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(103, 0, 0, 35, '2022-09-03', 5000.00, '{\"totpay_amt\":\"5000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"2134567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active'),
(104, 0, 0, 36, '2022-09-03', 10000.00, '{\"totpay_amt\":\"10000\",\"card_type\":\"VISA\",\"card_holder\":\"Raj\",\"card_number\":\"1234567890123456\",\"cvv_number\":\"158\",\"expiry_date\":\"2023-01\",\"submit\":\"Make Payment\"}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qstn_id` int(10) NOT NULL,
  `vehicle_type` varchar(25) DEFAULT NULL,
  `qstn` varchar(100) NOT NULL,
  `opt1` varchar(100) NOT NULL,
  `opt2` varchar(100) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `dsptn` text NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qstn_id`, `vehicle_type`, `qstn`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `img`, `dsptn`, `status`) VALUES
(4, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(5, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(6, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(7, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(9, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(10, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(11, 'Code 10', 'In case a road does not have a footpath, pedestrians will have to', 'Walk on the right side of the road', 'Walk on the left side of the road', 'Walk on any side of the road', 'Walk on the everywhere side of the road', 'Option 1', '1191445549Untitled.png', '', 'Active'),
(12, 'Code 8', 'Free passage should be provided to the following vehicles', 'Express buses', 'Police vehicles', 'Fire service vehicles and ambulance', 'Express train', 'Option 3', '1540578184zerotraffic.jpeg', '', 'Active'),
(13, 'Code 10', 'Vehicles that come from the opposite side should be allowed to proceed through the', 'Left side', 'Right side', 'All side', 'Any convenient side', 'Option 2', '1257642656opposite side vehicle.jpg', '', 'Active'),
(14, 'Code 8', 'Driver of a vehicle can overtake when', 'The driver of the vehicle ahead gives the signal to overtake', 'Road is wide enough', 'Driving down a hill', 'The vehicle should be locked', 'Option 1', '357074784overtake.png', '', 'Active'),
(15, 'Code 10', 'How to drive in Indian system', 'Drive Left side', 'Drive right side', 'Drive any side', 'None of these', 'Option 1', '2039342630car.jpg', '', 'Active'),
(16, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(17, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '103789741j51-340921.jpg', '', 'Active'),
(18, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1972964703maxresdefault.jpg', '', 'Active'),
(19, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '996355669onewayicon.png', '', 'Active'),
(20, 'Code 8', 'You can overtake a vehicle that is in the front', 'Through the left side of the vehicle ahead', 'Through the left side of the vehicle ahead', 'If the road is wide enough', 'Wait until the it passes', 'Option 2', '703717569overtake.png', '', 'Active'),
(21, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '1072729443Why-IND-is-written-on-vehicle-number-plates.jpg', '', 'Active'),
(22, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '204138047661ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(23, 'Code 10', 'In case a road does not have a footpath, pedestrians will have to', 'Walk on the right side of the road', 'Walk on the left side of the road', 'Walk on any side of the road', 'Walk on the everywhere side of the road', 'Option 1', '527652216pedestrian.jpg', '', 'Active'),
(24, 'Code 8', 'Free passage should be provided to the following vehicles', 'Express buses', 'Police vehicles', 'Fire service vehicles and ambulance', 'Express train', 'Option 3', '2020472818zerotraffic.jpeg', '', 'Active'),
(25, 'Code 10', 'Vehicles that come from the opposite side should be allowed to proceed through the', 'Left side', 'Right side', 'All side', 'Any convenient side', 'Option 2', '913199104opposite side vehicle.jpg', '', 'Active'),
(26, 'Code 8', 'Driver of a vehicle can overtake when', 'The driver of the vehicle ahead gives the signal to overtake', 'Road is wide enough', 'Driving down a hill', 'The vehicle should be locked', 'Option 1', '164832864overtake.png', '', 'Active'),
(27, 'Code 10', 'How to drive in Indian system', 'Drive Left side', 'Drive right side', 'Drive any side', 'None of these', 'Option 1', '2039342630car.jpg', '', 'Active'),
(28, 'Code 10', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '813841025maxresdefault.jpg', '', 'Active'),
(29, 'Code 8', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '342637176Untitled.png', '', 'Active'),
(30, 'Code 10', 'You can overtake a vehicle that is in the front', 'Through the left side of the vehicle ahead', 'Through the left side of the vehicle ahead', 'If the road is wide enough', 'Wait until the it passes', 'Option 2', '1478253248overtake.png', '', 'Active'),
(31, 'Code 8', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '797928238Why-IND-is-written-on-vehicle-number-plates.jpg', '', 'Active'),
(32, 'Code 10', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '47224890461ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(33, 'Code 8', 'In case a road does not have a footpath, pedestrians will have to', 'Walk on the right side of the road', 'Walk on the left side of the road', 'Walk on any side of the road', 'Walk on the everywhere side of the road', 'Option 1', '67517823pedestrian.jpg', '', 'Active'),
(34, 'Code 8', 'Free passage should be provided to the following vehicles', 'Express buses', 'Police vehicles', 'Fire service vehicles and ambulance', 'Express train', 'Option 3', '286281437zerotraffic.jpeg', '', 'Active'),
(35, 'Code 10', 'Vehicles that come from the opposite side should be allowed to proceed through the', 'Left side', 'Right side', 'All side', 'Any convenient side', 'Option 2', '533627151opposite side vehicle.jpg', '', 'Active'),
(36, 'Code 8', 'Driver of a vehicle can overtake when', 'The driver of the vehicle ahead gives the signal to overtake', 'Road is wide enough', 'Driving down a hill', 'The vehicle should be locked', 'Option 1', '1001704875overtake.png', '', 'Active'),
(37, 'Code 10', 'How to drive in Indian system', 'Drive Left side', 'Drive right side', 'Drive any side', 'None of these', 'Option 1', '2039342630car.jpg', '', 'Active'),
(39, 'Code 8', 'The following sign represents.. ', 'No entry', 'One way', 'Speed limit ends', 'Others', 'Option 2', '1702417169oneway.png', '', 'Active'),
(40, 'Code 8', 'Which of these cities is NOT on the coast?', 'Durban', 'Cape Town', 'JohanesBerg', 'Others', 'Option 1', '1168673107142022152_3659391320848309_6255434634938879340_n.jpg', '', 'Active'),
(41, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(42, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(43, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(44, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(45, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(46, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(47, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(48, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(49, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(50, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(51, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(52, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(53, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(54, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(55, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(56, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(57, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(58, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(59, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(60, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(61, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(62, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(63, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(64, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(65, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(66, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(67, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(68, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(69, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(70, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(71, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(72, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(73, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(74, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(75, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(76, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(77, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(78, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(79, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(80, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(81, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(82, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(83, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(84, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(85, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(86, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(87, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(88, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(89, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(90, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(91, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(92, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(93, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(94, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(95, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(96, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(97, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(98, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(99, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(100, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(101, 'Code 8', 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(102, 'Code 10', 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(103, 'Code 8', 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(104, 'Code 10', 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(105, 'Code 10', 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(106, 'Code 8', 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `sal_id` int(10) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `sal_date` date NOT NULL,
  `basic_sal` float(10,2) NOT NULL,
  `deduction` float(10,2) NOT NULL,
  `bonus` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`sal_id`, `emp_id`, `sal_date`, `basic_sal`, `deduction`, `bonus`, `status`) VALUES
(7, 3, '2020-06-17', 25500.00, 6000.00, 1000.00, 'Active'),
(8, 15, '2020-06-17', 25000.00, 5000.00, 1500.00, 'Active'),
(9, 5, '2020-06-17', 25000.00, 2500.00, 110.00, 'Active'),
(10, 16, '2020-06-17', 25000.00, 1000.00, 500.00, 'Active'),
(12, 4, '2020-08-18', 25000.00, 23.00, 0.00, 'Active'),
(13, 8, '2020-08-01', 5000.00, 500.00, 1000.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `timeslot_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`timeslot_id`, `employee_id`, `start_time`, `end_time`, `status`) VALUES
(2, 3, '14:00:00', '15:00:00', 'Active'),
(3, 6, '01:00:00', '02:00:00', 'Active'),
(4, 3, '01:00:00', '02:00:00', 'Active'),
(5, 4, '14:00:00', '15:00:00', 'Active'),
(6, 5, '15:00:00', '16:00:00', 'Active'),
(7, 6, '12:00:00', '13:00:00', 'Active'),
(8, 5, '16:00:00', '17:00:00', 'Active'),
(9, 5, '07:00:00', '08:00:00', 'Active'),
(10, 10, '10:00:00', '11:00:00', 'Active'),
(11, 11, '14:00:00', '15:00:00', 'Active'),
(12, 10, '17:00:00', '18:00:00', 'Active'),
(13, 11, '07:00:00', '08:00:00', 'Active'),
(16, 12, '06:00:00', '07:00:00', 'Active'),
(17, 12, '07:00:00', '08:00:00', 'Active'),
(18, 12, '08:00:00', '09:00:00', 'Active'),
(19, 14, '10:00:00', '11:00:00', 'Active'),
(20, 14, '11:00:00', '12:00:00', 'Active'),
(21, 16, '06:00:00', '07:00:00', 'Active'),
(22, 16, '07:00:00', '08:00:00', 'Active'),
(23, 16, '09:00:00', '10:00:00', 'Active'),
(24, 0, '00:00:00', '00:00:00', ''),
(25, 12, '01:00:00', '01:00:00', 'Active'),
(26, 14, '09:00:00', '10:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `training_material`
--

CREATE TABLE `training_material` (
  `training_material_id` int(11) NOT NULL,
  `vehicle_type` varchar(25) DEFAULT NULL,
  `trainng_material_title` varchar(255) DEFAULT NULL,
  `traning_material_banner` varchar(255) NOT NULL,
  `training_material_description` text DEFAULT NULL,
  `training_material_file` varchar(255) DEFAULT NULL,
  `training_material_status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training_material`
--

INSERT INTO `training_material` (`training_material_id`, `vehicle_type`, `trainng_material_title`, `traning_material_banner`, `training_material_description`, `training_material_file`, `training_material_status`) VALUES
(1, 'Code 8', 'This is Training Material', '', '<p>This is training material description</p>', '1831021967517LznLEhnL._SX450_.jpg', 'Active'),
(2, 'Code 10', 'New test training material', '', '<p><strong>New and Popular &nbsp;de en es fi fr it nl pl pt&nbsp;</strong></p><p><a href=\"https://www.jetpunk.com/quizzes/how-many-countries-can-you-name?lx=sb\">Countries of the World Quiz</a></p><p><a href=\"https://www.jetpunk.com/quizzes/how-many-states-can-you-name?lx=sb\">US States Quiz</a></p><p><a href=\"https://www.jetpunk.com/quizzes/map-quiz-europe?lx=sb\">Europe Map Quiz</a></p><p><a href=\"https://www.jetpunk.com/quizzes/name-nba-basketball-teams?lx=sb\">NBA Basketball Teams Quiz</a></p><p><a href=\"https://www.jetpunk.com/quizzes/map-quiz-us-states?lx=sb\">United States Map Quiz</a></p><p><a href=\"https://www.jetpunk.com/quizzes/50-states-one-minute-quiz?lx=sb\">Fifty US States in One Minute</a></p><p><a href=\"https://www.jetpunk.com/user-quizzes/139806/world-map-without-20-random-countries?lx=sb\">World Map Without 20 Random Countries</a></p><p><a href=\"https://www.jetpunk.com/user-quizzes/91108/states-by-borders-in-30-seconds?lx=sb\">US States by Borders in 30 Seconds</a></p><p><a href=\"https://www.jetpunk.com/quizzes/fresh-prince-lyrics-quiz?lx=sb\">Fresh Prince of Bel-Air Lyrics Quiz</a></p><p><a href=\"https://www.jetpunk.com/quizzes/map-quiz-middle-east?lx=sb\">Middle East Map Quiz</a></p><p><a href=\"https://www.jetpunk.com/quizzes/countries-in-world-war-2-quiz?lx=sb\">Countries in World War II</a></p><p><a href=\"https://www.jetpunk.com/quizzes/most-common-english-words-quiz?lx=sb\">100 Most Common English Words</a></p><p><a href=\"https://www.jetpunk.com/quizzes/island-countries-quiz?lx=sb\">Island Countries Quiz</a></p><p><a href=\"https://www.jetpunk.com/quizzes/countries-that-start-with-m?lx=sb\">Countries that Start with M</a></p><p><a href=\"https://www.jetpunk.com/quizzes/asia-map-quiz?lx=sb\">Asia Map Quiz</a></p>', '1363218621a40fdf79-4ab0-401c-bae1-d0711af6636f.jpg', 'Active'),
(3, 'Code 8', 'Flat 10% off at Pepperfry.com', '', '<figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><td>In case you require any further information, you may call our Customer Care or contact the Relationship Manager at<br>your nearest ICICI Bank branch.</td></tr></tbody></table></figure></td></tr><tr><td>&nbsp;</td></tr><tr><td>For any query or feedback, you may write to us at <a href=\"mailto:headprivilegebanking@icicibank.com\">headprivilegebanking@icicibank.com</a> from your registered e-mail ID.</td></tr><tr><td>&nbsp;</td></tr><tr><td>Go cardless! Withdraw cash from any ICICI Bank ATM by using iMobile Pay. For details, <a href=\"http://lnk.custmail.icicibank.com/jtrack?d=1&amp;id=K04AVQcLCAYBDkkIAFEKVVQPURpVXF0eV0ZKEVoHC14aCAdcUg1SAlZYHFpWWkQ=UFRSCARXU1RIWUFURwNHWwwHU3ACXlNRWBlVWlU=&amp;client=54938\">click here</a>. If you are yet to download iMobile, you can download at</td></tr></tbody></table></figure>', '182705577screenshot-phpgurukul.com-2021.07.17-05_01_23.png', 'Active'),
(4, 'Code 10', 'Polestar DEMO Started', '', '<p>Hi,</p><p>This just a quick reminder to let you know that I started a special demo of our Polestar Platform and Diamond Showcase!</p><p>There will not be any recordings or replays.</p><p>This is mainly for all our Silver and Gold members to get a first hand experience of my newly developed platform for Diamond members.</p><p>I will also be talking about a special 12-month no-interest EMI option for those who want an easy payment plan for this membership.</p><p>​Please enter session from your laptop for the best experience​</p><p>Cheers<br>Sidz</p>', '17547606343. System design Vehicle Workshop.docx', 'Active'),
(5, 'Code 8', 'How Can PHP Measure the Execution Time of a Web Script Since the HTTP', '2967134574a3c8c74375e8fbe5adf99db215ca0e2.jpg', '<h4><strong>ARavinda, the package </strong><a href=\"https://www.phpclasses.org/package/12576-PHP-Manipulate-and-validate-values-of-several-types.html\"><strong>PHP Utility Classes</strong></a><strong> was considered notable and a new tutorial was published about it to explain why.</strong></h4><p>The tutorial title is:<br><br><a href=\"https://www.phpclasses.org/blog/package/12576/post/1-How-Can-PHP-Measure-the-Execution-Time-of-a-Web-Script-Since-the-HTTP-Request-Start.html\"><strong>How Can PHP Measure the Execution Time of a Web Script Since the HTTP Request Start</strong></a></p><p>Here is a summary of the tutorial:<br><br>Measuring the time a PHP script takes to execute allows determining if a hand is too slow and if its performance needs to be optimized.<br><br>When PHP is used to serve Web pages, the execution time must be measured from when the Web server received the HTTP request.<br><br>This package provides a class that can calculate the current script\'s real execution time considering the HTTP request start time.</p><p>Visit the <a href=\"https://www.phpclasses.org/blog/package/12576/post/1-How-Can-PHP-Measure-the-Execution-Time-of-a-Web-Script-Since-the-HTTP-Request-Start.html\">tutorial page</a> to learn more about how to use this notable package.</p><p>If you have also written Notable packages, <a href=\"https://www.phpclasses.org/contribute.html\">contribute</a> them to the PHP Classes site to get your work more exposure.<br><br>If your notable package is innovative, you may also earn prizes and recognition in the <a href=\"https://www.phpclasses.org/winners/\">PHP Innovation Award</a>.</p><p>Now you can also win a Big el</p>', '12514889163. System design Vehicle Workshop.docx', 'Active'),
(6, 'Code 10', 'State of Ecommerce', '31345275c3fd9952bbd0235c4911da8d9fdac5e.webp', '<figure class=\"table\"><table><tbody><tr><td><h2><strong>Hi there,</strong></h2><p>The world of ecommerce is always evolving, and staying on top of emerging trends is crucial to keep your business growing.<br><br>In our new <strong>State of Ecommerce</strong> report, you’ll find key strategy-strengthening and data-backed insights about the future of the industry, such as:</p><ul><li>Between 2019 and 2022, ecommerce sites saw 79% more traffic</li><li>70% of ecommerce consumers used their phone to shop</li><li>China-based Shein saw a 170% traffic increase in the U.S. market</li><li>Direct traffic makes up 80% of all ecommerce traffic in the U.S.</li></ul><p>The report also reveals the <strong>top players, the most popular products,</strong> and <strong>winning ad strategies</strong> for various ecommerce markets around the world.<br><br><a href=\"https://engage.semrush.com/NTE5LUlJWS04NjkAAAGGiGFzkOr9sCQkMAAYTT5j-pfJ4ZxCNLeDSfRvtkFJkpfJbBrAChWVdaFXjz-wE9hQt3PuHjw=\"><strong>Download the report for free</strong>→</a><br><br>Best wishes,</p></td></tr></tbody></table></figure>', '147952639815-75-x11-81-beautiful-scenery-5d-diy-diamond-painting-kit-full-original-imaf66kewnc9s69t.jpeg', 'Active'),
(7, 'Code 8', 'Wordfence activity for August 29, 2022', '2125858748Take_in_the_Scenery.jpg', '<p>This email was sent from your website <a href=\"https://studentprojectguide.com/\">https://studentprojectguide.com</a> and is a summary of security related activity that Wordfence monitors for the period August 22, 2022 to August 29, 2022.</p><p>If you would like to sign-in to <a href=\"https://studentprojectguide.com/\">https://studentprojectguide.com</a> please <a href=\"https://studentprojectguide.com/wp-admin/\">click here</a> now. You can change the frequency of this email or turn it on and off by visiting your <a href=\"https://studentprojectguide.com/wp-admin/admin.php?page=Wordfence&amp;subpage=global_options#global-options-email-summary\">Wordfence options page</a>.</p><p>No longer an administrator for this site? <a href=\"https://studentprojectguide.com/?_wfsf=removeAlertEmail&amp;jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im12YXJhdmluZGFAZ21haWwuY29tIiwiX2V4cCI6MTY2MjM3MzgzM30.8qnZ55M1YkZqPCNFO3-uOy-m9fKzlb9_KZ72zTryDKE\">Click here</a> to stop receiving security alerts.</p>', '418435527Raj Furnitures.webp', 'Active'),
(9, 'Code 10', 'Got an old website? Time to refresh your SEO!', '751040249Vish Furniture.jpg', '<figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>Has your website been collecting some dust for quite some time now? Then it\'s time to<strong> give your old site a refresh and update your SEO </strong>at the same time! So, what should you check to get up to modern standards? Let\'s see <a href=\"https://mbyoastbv.lt.acemlnb.com/Prod/link-tracker?redirectUrl=aHR0cHMlM0ElMkYlMkZ5b2FzdC5jb20lMkZvbGQtd2Vic2l0ZS11cGRhdGUtYW5kLXJlZnJlc2gtc2VvJTJGJTIzdXRtX3NvdXJjZSUzRG5ld3NsZXR0ZXJfMjgwODIyJTI2dXRtX21lZGl1bSUzRGVtYWlsJTI2dXRtX2NhbXBhaWduJTNEd2Vic2l0ZS1tYWludGVuYW5jZSUyNnV0bV9jb250ZW50JTNEdGV4dGxpbmstMQ==&amp;sig=AZdksntE9fXdpJ6z1YpKkSqnfXeW4jAxt46qMMEsattQ&amp;iat=1661695150&amp;a=%7C%7C253283089%7C%7C&amp;account=mbyoastbv%2Eactivehosted%2Ecom&amp;email=EJbOmUoKMXS2LeUDHgJLyIvy7T5YEJ8ohjC9vauJg30%3D&amp;s=aff659e9771681411ccfb15930864b7c&amp;i=798A868A6A17324\">what you can do to get your website up and running</a> and right back in the SEO game. Brush the dust off those pages, refresh your content, and, if you’ve got them, plug in your Yoast plugins!</p><p>&nbsp;</p></td></tr></tbody></table></figure></td></tr></tbody></table></figure></td></tr><tr><td><figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>Looking for a way to stay on top of your SEO at all times? The easy <a href=\"https://mbyoastbv.lt.acemlnb.com/Prod/link-tracker?redirectUrl=aHR0cHMlM0ElMkYlMkZ5b2FzdC5jb20lMkZmZWF0dXJlcyUyRnNlby13b3Jrb3V0cyUyRiUyM3V0bV9zb3VyY2UlM0RuZXdzbGV0dGVyXzI4MDgyMiUyNnV0bV9tZWRpdW0lM0RlbWFpbCUyNnV0bV9jYW1wYWlnbiUzRHdlYnNpdGUtbWFpbnRlbmFuY2UlMjZ1dG1fY29udGVudCUzRHRleHRsaW5rLTI=&amp;sig=2CCr7TWW9pLEF9n52iFZmwzeRqDw27JSN1SthLKCQ6SV&amp;iat=1661695150&amp;a=%7C%7C253283089%7C%7C&amp;account=mbyoastbv%2Eactivehosted%2Ecom&amp;email=EJbOmUoKMXS2LeUDHgJLyIvy7T5YEJ8ohjC9vauJg30%3D&amp;s=aff659e9771681411ccfb15930864b7c&amp;i=798A868A6A17325\">SEO workouts</a> are the answer! The workouts are <strong>actionable SEO exercises focused on a particular task</strong>, like improving your internal linking structure or cleaning up outdated content. They\'ll get your website into shape in no time!</p></td></tr></tbody></table></figure></td></tr></tbody></table></figure></td></tr></tbody></table></figure>', '1808974445640px-Animated_Wallpaper_Windows_10_-_Wallpaper_Engine.gif', 'Active'),
(10, 'Code 8', '6 WordPress Admin Tips', '1963545470How to Find the Perfect GIF 10 Must-Try Websites-1.gif', '<figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><td>Hey&nbsp;,<br><br>I have been experimenting with YouTube and found a new way that has literally doubled my video views.<br><br>Now as you know, my goal is to always share everything I know with my friends and community, so I wanted to give you a quick heads up on this.&nbsp;<br><br>I have shared the exact details on what I\'m doing after the WPBeginner updates below.<br><br><strong>New WordPress Guides on WPBeginner:</strong><br><br>- Want to customize your WordPress admin dashboard? Here are <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=96154c95c9&amp;e=87af770548\">my 6 tips</a> that you can use to show or hide certain elements, restrict access, and more.<br><br>- Looking for an easy way to manage, track, and control file downloads in WordPress? <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=97f81429c9&amp;e=87af770548\">Here are 4 different methods</a> including the one that I use.<br><br>- Thinking about starting an Amazon affiliate store? My team created a <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=c5650133e4&amp;e=87af770548\">step-by-step guide</a> that you can use.<br><br>- Need to integrate WordPress with the Telegram app? Here\'s a <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=17c1b12e92&amp;e=87af770548\">quick tutorial</a> on how to do that.<br><br>- Ever wanted an automatic way to add tags in WordPress to save time? Here\'s an <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=4480fbdd0f&amp;e=87af770548\">easy plugin</a> that can do that for you.&nbsp;<br><br>- Do you want to curate content on your WordPress site? We shared <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=ab8376a994&amp;e=87af770548\">two different ways</a> that can help you boost engagement.<br><br>- Trying to add underline or justify text in WordPress? Here\'s a <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=2be4618267&amp;e=87af770548\">beginner\'s guide</a> on how to do that.<br><br>- We created two new video tutorials on how to <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=f6acde6c14&amp;e=87af770548\">easily add custom code in WordPress</a>, and how to <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=6f3f247b45&amp;e=87af770548\">remove numbers from WordPress URLs</a>.<br><br><strong>Tip: How to Double Your YouTube Views</strong><br><br>Ok so back to the YouTube tip I mentioned.<br><br>First, I want you to know that I\'m trying it out on a brand new channel, so I know it will work for everyone.<br><br>So here\'s what I\'m doing (<a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=6af0d9e35b&amp;e=87af770548\">see live example</a>):<br><br>First of course you want to publish the main video on YouTube.<br><br>But after that, you want to take bite-sized clips from that video and turn it into Shorts format with catchy titles.<br><br>And then you can slowly drip these shorts every 24 hours.<br><br>Here\'s my result for two videos:<br><br>1. Main video: 784 views -- Shorts: 2538 views (~3.2x increase)<br>2. Main video: 370 views -- Shorts: 4870 views (~13x increase)<br><br>It seems the algorithm is giving a huge bump to these Shorts videos and helping me get new subscribers.<br><br>Go ahead and give it a try and let me know how it works by replying to this email.<br><br>Have a great rest of your week :)<br><br>Cheers,<br><br>Syed Balkhi<br>Founder of WPBeginner</td></tr></tbody></table></figure></td></tr></tbody></table></figure></td></tr><tr><td><figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><td>You\'re receiving this email because you subscribed to the WPBeginner newsletter at <a href=\"https://wpbeginner.us1.list-manage.com/track/click?u=549b83cc29ff23c36e5796c38&amp;id=38f405208d&amp;e=87af770548\">wpbeginner.com</a><br><br>Want to get this information in real time? <a href=\"https://wpbeginner.us1.list-manage.com/profile?u=549b83cc29ff23c36e5796c38&amp;id=4c340fd3aa&amp;e=87af770548&amp;c=00c6c2d8bb\">Click here to move to our daily newsletter</a>.<br><br>If for any reason you do not want to receive our valuable tips, resources, and insider information about blogging and WordPress, then you can unsubscribe by clicking the link at the end of this email. No hard feelings!<br><br><strong>Transparency Notice:</strong> WPBeginner content is reader supported, which means if you click on some of the links in this email, we may earn a small referral fee. Please know that we only recommend products that we use ourselves and / or believe will add value to our readers.<br><br>Cheers!<br><br>Here\'s to you and an amazing 2022!</td></tr></tbody></table></figure></td></tr></tbody></table></figure></td></tr></tbody></table></figure>', '28668566', 'Active'),
(11, 'Code 8', 'We hope you enjoyed the final week of Content Month', '2051122914home-insurance-getty.jpg', '<figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><td><h2><strong>We hope you enjoyed the final week of Content Month!&nbsp;</strong></h2></td></tr></tbody></table></figure></td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><td>Thank you for joining us for&nbsp;Content Month! We\'ve covered so much&nbsp;throughout the month and&nbsp;<a href=\"https://ezoic.us8.list-manage.com/track/click?u=915a473045f5ceaad0d389dea&amp;id=171e5f12bc&amp;e=32aa6e67cf\"><strong>we\'d love your feedback</strong></a> to&nbsp;help us improve and better deliver content and resources in the future.</td></tr></tbody></table></figure></td></tr></tbody></table></figure>', '1058312564Raj Furnitures.webp', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `vehicle_type` varchar(25) NOT NULL,
  `vehicle_no` varchar(25) NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `vehicle_img` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `employee_id`, `branch_id`, `vehicle_type`, `vehicle_no`, `vehicle_name`, `vehicle_img`, `note`, `status`) VALUES
(1, 1, 1, 'tews', 'test23', 'test323', 'test', 'test rec', 'Inactive'),
(3, 1, 1, 'test', '', '', '28734Jellyfish.jpg', 'test', 'Active'),
(4, 2, 2, 'Four Wheeler', 'ka324234', 'audi', '6433Penguins.jpg', 'This is test four wheeler vehicle records.', 'Active'),
(7, 10, 6, 'Four Wheeler', 'KA45A4567', 'Maruti', '46553362SONATA-hero-option1-764A5360-edit.jpg', 'This is new taro', 'Active'),
(8, 12, 6, 'Two Wheeler', 'KA11tw8578', 'Auto Honda Activa', '1909818650honda.jpg', 'ETAuto Honda Activa: Top 10 selling two-wheelers in Feb 2020', 'Active'),
(9, 14, 6, 'Two Wheeler', 'KA82AA2930', 'Maxi', '59632151honda.jpg', 'This is for two wheeler training', 'Active'),
(10, 11, 6, 'Four Wheeler', 'KA82AA1230', 'Antion', '1915810488car.jpg', 'Four wheeler training', 'Active'),
(11, 15, 6, 'Four Wheeler', 'KA82AA3220', 'Vins', '1671940261car.jpg', 'This for four wheeler training', 'Active'),
(12, 16, 2, 'Four Wheeler', 'KA82AA1230', 'Audi', '1040074940car.jpg', 'This vehicle for training purpose', 'Active'),
(13, 3, 3, 'Two Wheeler', 'KA82AA1230', 'sdf', '1571437866WhatsApp Image 2020-08-21 at 11.47.13 AM (1).jpeg', 'sdf', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attedance_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_attendance`
--
ALTER TABLE `customer_attendance`
  ADD PRIMARY KEY (`customer_attendance_id`);

--
-- Indexes for table `driving_class`
--
ALTER TABLE `driving_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `driving_license`
--
ALTER TABLE `driving_license`
  ADD PRIMARY KEY (`dl_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`examinationid`);

--
-- Indexes for table `learners_license`
--
ALTER TABLE `learners_license`
  ADD PRIMARY KEY (`learnerlicense_id`);

--
-- Indexes for table `mail_setting`
--
ALTER TABLE `mail_setting`
  ADD PRIMARY KEY (`settingid`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qstn_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`sal_id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`timeslot_id`);

--
-- Indexes for table `training_material`
--
ALTER TABLE `training_material`
  ADD PRIMARY KEY (`training_material_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attedance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `customer_attendance`
--
ALTER TABLE `customer_attendance`
  MODIFY `customer_attendance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `driving_class`
--
ALTER TABLE `driving_class`
  MODIFY `class_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `driving_license`
--
ALTER TABLE `driving_license`
  MODIFY `dl_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `examination`
--
ALTER TABLE `examination`
  MODIFY `examinationid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `learners_license`
--
ALTER TABLE `learners_license`
  MODIFY `learnerlicense_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `mail_setting`
--
ALTER TABLE `mail_setting`
  MODIFY `settingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qstn_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `sal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `timeslot_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `training_material`
--
ALTER TABLE `training_material`
  MODIFY `training_material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
