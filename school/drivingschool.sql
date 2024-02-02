-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 06:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `drivingschool`
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
(229, 3, '2022-04-25 00:00:00', 'Present'),
(230, 4, '2022-04-25 00:00:00', 'Present'),
(231, 5, '2022-04-25 00:00:00', 'Present'),
(232, 18, '2022-04-25 00:00:00', 'Absent'),
(233, 19, '2022-05-12 00:00:00', 'Present'),
(234, 21, '2022-05-12 00:00:00', 'Present'),
(235, 22, '2022-05-12 00:00:00', 'Present'),
(236, 23, '2022-05-12 00:00:00', 'Present');

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
(1, 'Joe\'s Branch', '40 Dr Xuba St\r\nDurban\r\n4001', '086 576 3955', 'Active'),
(3, 'Sbahle\'s Branch', '74 Hyacint Rd\r\nAvoca\r\nDurban\r\n4001', '071 569 4958', 'Active'),
(4, 'Sipho\'s Branch', 'Shannon Dr.Rox\r\nDurban\r\n4090', '076 595 5957', 'Active'),
(6, 'Lungani\'s Branch', '67 Cromton\r\nPinetown\r\nDurban\r\n3610', '067 494 9585', 'Active'),
(7, 'Musa\'s Branch', '65 Attrick Rd\r\nbluff\r\nDurban\r\n4052', '7894561230', 'Active'),
(8, 'Msane\'s Branch', '29 Prospect Rd\r\nUmbilo\r\nDurban\r\n4001\r\n', '8897456363', 'Active'),
(9, 'Lulama\'s Branch', '45 Halford Rd\r\nBerea\r\nDurban\r\n4001', '083 406 4957', 'Active');

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
(46, 'Sam', 'Male', '1997-07-07', '123', 'sam@gmail.com', '1234567890', '123456', '18128865631666058.jpg', 'Active'),
(47, 'Lee', 'Female', '1999-02-11', '123', 'lee@gmail.com', '1234567890', 'lee', '125153105folder.jpg', 'Active');

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
(23, 39, 16, 33, 22, '2020-08-26', 76, 'fd', 'Present'),
(24, 45, 12, 46, 16, '2020-08-26', 10, 'Basic training provided', 'Present'),
(25, 46, 21, 53, 32, '2022-05-12', 50, 'very good', 'Present');

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
(53, 46, 1, 21, 'Code 10', 15, 2500.00, '2022-05-13', '2022-06-11', 32, '123', 'Active');

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
(18, 1, 'admin', 'Admin', 'Male', 'admin', '@admin', 'admin@gmail.com', '123', '1234', '1234567890', '18712618211.jpg', '13365133042.jpg', 'Active'),
(19, 3, 'Tom', 'Employee', 'Male', 'tom', 'tom', 'tom@gmail.com', 'tom the guy', '1234', '085 857 8894', '1783529711__1_.jpg', '2190528131.webp', 'Active'),
(21, 1, 'Joe', 'Employee', 'Male', 'joe', 'joe', 'joe@gmail.com', 'A very good employee', '26 Dr Langalibalele Dube St\r\nDurban\r\n4001', '084 484 0585', '2079672182Joe.webp', '1647514859Joe.webp', 'Active'),
(22, 9, 'Lulama', 'Employee', 'Female', 'Lulama', '@Lulama', 'lulama@gmail.com', 'very good', '123', '074 465 7548', '120405506', '3967261990+(49).jpg', 'Active'),
(23, 9, 'Sya', 'Employee', 'Male', 'Sya', '@Sya', 'sya@gmail.com', 'very good', '123', '065 596 3434', '485195003', '1005045374_methode_sundaytimes_prod_web_bin_38ce8a22-59c7-11e8-9d43-4957c6efbcb7.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `examinationid` bigint(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `attend_date` datetime NOT NULL,
  `qstn_id` bigint(20) NOT NULL,
  `correctanswer` varchar(50) NOT NULL,
  `selectedanswer` varchar(50) NOT NULL,
  `marksperquestion` double NOT NULL,
  `negativemarks` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`examinationid`, `customer_id`, `attend_date`, `qstn_id`, `correctanswer`, `selectedanswer`, `marksperquestion`, `negativemarks`) VALUES
(376, 46, '2022-05-02 00:08:43', 8, 'Option 2', 'Option 3', 1, 1),
(377, 46, '2022-05-02 00:08:43', 20, 'Option 2', 'Option 3', 1, 1),
(378, 46, '2022-05-02 00:08:43', 39, 'Option 2', 'Option 2', 1, 1),
(379, 46, '2022-05-02 00:08:43', 37, 'Option 1', 'Option 3', 1, 1),
(380, 46, '2022-05-02 00:08:43', 36, 'Option 1', '', 1, 1),
(381, 46, '2022-05-02 00:08:43', 16, 'Option 3', '', 1, 1),
(382, 46, '2022-05-02 00:08:43', 17, 'Option 1', '', 1, 1),
(383, 46, '2022-05-02 00:08:43', 4, 'Option 3', '', 1, 1),
(384, 46, '2022-05-02 00:08:43', 12, 'Option 3', '', 1, 1),
(385, 46, '2022-05-02 00:08:43', 24, 'Option 3', '', 1, 1),
(386, 46, '2022-05-02 00:08:43', 31, 'Option 2', '', 1, 1),
(387, 46, '2022-05-02 00:08:43', 9, 'Option 2', '', 1, 1),
(388, 46, '2022-05-02 00:08:43', 30, 'Option 2', '', 1, 1),
(389, 46, '2022-05-02 00:08:43', 22, 'Option 2', '', 1, 1),
(390, 46, '2022-05-02 00:08:43', 6, 'Option 3', '', 1, 1),
(391, 46, '2022-05-02 00:08:43', 5, 'Option 1', '', 1, 1),
(392, 46, '2022-05-02 00:08:43', 18, 'Option 3', '', 1, 1),
(393, 46, '2022-05-02 00:08:43', 21, 'Option 2', '', 1, 1),
(394, 46, '2022-05-02 00:08:43', 25, 'Option 2', '', 1, 1),
(395, 46, '2022-05-02 00:08:43', 32, 'Option 2', '', 1, 1),
(396, 46, '2022-05-02 00:08:43', 29, 'Option 1', '', 1, 1),
(397, 46, '2022-05-02 00:08:43', 35, 'Option 2', '', 1, 1),
(398, 46, '2022-05-02 00:08:43', 11, 'Option 1', '', 1, 1),
(399, 46, '2022-05-02 00:08:43', 34, 'Option 3', '', 1, 1),
(400, 46, '2022-05-02 00:08:43', 23, 'Option 1', '', 1, 1),
(401, 46, '2022-05-02 01:15:08', 16, 'Option 3', 'Option 2', 1, 1),
(402, 46, '2022-05-02 01:15:08', 14, 'Option 1', '', 1, 1),
(403, 46, '2022-05-02 01:15:08', 21, 'Option 2', '', 1, 1),
(404, 46, '2022-05-02 01:15:08', 33, 'Option 1', '', 1, 1),
(405, 46, '2022-05-02 01:15:08', 37, 'Option 1', '', 1, 1),
(406, 46, '2022-05-02 01:15:08', 36, 'Option 1', '', 1, 1),
(407, 46, '2022-05-02 01:15:08', 35, 'Option 2', '', 1, 1),
(408, 46, '2022-05-02 01:15:08', 39, 'Option 2', '', 1, 1),
(409, 46, '2022-05-02 01:15:08', 13, 'Option 2', '', 1, 1),
(410, 46, '2022-05-02 01:15:08', 34, 'Option 3', '', 1, 1),
(411, 46, '2022-05-02 01:15:08', 28, 'Option 3', '', 1, 1),
(412, 46, '2022-05-02 01:15:08', 26, 'Option 1', '', 1, 1),
(413, 46, '2022-05-02 01:15:08', 32, 'Option 2', '', 1, 1),
(414, 46, '2022-05-02 01:15:08', 12, 'Option 3', '', 1, 1),
(415, 46, '2022-05-02 01:15:08', 19, 'Option 1', '', 1, 1),
(416, 46, '2022-05-02 01:15:08', 15, 'Option 1', '', 1, 1),
(417, 46, '2022-05-02 01:15:08', 23, 'Option 1', '', 1, 1),
(418, 46, '2022-05-02 01:15:08', 10, 'Option 2', '', 1, 1),
(419, 46, '2022-05-02 01:15:08', 4, 'Option 3', '', 1, 1),
(420, 46, '2022-05-02 01:15:08', 29, 'Option 1', '', 1, 1),
(421, 46, '2022-05-02 01:15:08', 31, 'Option 2', '', 1, 1),
(422, 46, '2022-05-02 01:15:08', 11, 'Option 1', '', 1, 1),
(423, 46, '2022-05-02 01:15:08', 27, 'Option 1', '', 1, 1),
(424, 46, '2022-05-02 01:15:08', 25, 'Option 2', '', 1, 1),
(425, 46, '2022-05-02 01:15:08', 7, 'Option 1', '', 1, 1),
(426, 0, '2022-05-03 12:47:51', 15, 'Option 1', 'Option 2', 1, 1),
(427, 0, '2022-05-03 12:47:51', 7, 'Option 1', '', 1, 1),
(428, 0, '2022-05-03 12:47:51', 34, 'Option 3', '', 1, 1),
(429, 0, '2022-05-03 12:47:51', 37, 'Option 1', '', 1, 1),
(430, 0, '2022-05-03 12:47:51', 13, 'Option 2', '', 1, 1),
(431, 0, '2022-05-03 12:47:51', 35, 'Option 2', '', 1, 1),
(432, 0, '2022-05-03 12:47:51', 5, 'Option 1', '', 1, 1),
(433, 0, '2022-05-03 12:47:51', 14, 'Option 1', '', 1, 1),
(434, 0, '2022-05-03 12:47:51', 16, 'Option 3', '', 1, 1),
(435, 0, '2022-05-03 12:47:51', 18, 'Option 3', '', 1, 1),
(436, 0, '2022-05-03 12:47:51', 19, 'Option 1', '', 1, 1),
(437, 0, '2022-05-03 12:47:51', 30, 'Option 2', '', 1, 1),
(438, 0, '2022-05-03 12:47:51', 9, 'Option 2', '', 1, 1),
(439, 0, '2022-05-03 12:47:51', 29, 'Option 1', '', 1, 1),
(440, 0, '2022-05-03 12:47:51', 22, 'Option 2', '', 1, 1),
(441, 0, '2022-05-03 12:47:51', 21, 'Option 2', '', 1, 1),
(442, 0, '2022-05-03 12:47:51', 17, 'Option 1', '', 1, 1),
(443, 0, '2022-05-03 12:47:51', 11, 'Option 1', '', 1, 1),
(444, 0, '2022-05-03 12:47:51', 27, 'Option 1', '', 1, 1),
(445, 0, '2022-05-03 12:47:51', 4, 'Option 3', '', 1, 1),
(446, 0, '2022-05-03 12:47:51', 12, 'Option 3', '', 1, 1),
(447, 0, '2022-05-03 12:47:51', 6, 'Option 3', '', 1, 1),
(448, 0, '2022-05-03 12:47:51', 28, 'Option 3', '', 1, 1),
(449, 0, '2022-05-03 12:47:51', 39, 'Option 2', '', 1, 1),
(450, 0, '2022-05-03 12:47:51', 26, 'Option 1', '', 1, 1);

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
(26, 'SMTP', 'a:5:{s:10:\"mailsender\";s:19:\"24X7 Driving School\";s:10:\"smtpserver\";s:15:\"mail.mi20.space\";s:8:\"smtpport\";s:2:\"26\";s:7:\"loginid\";s:28:\"24X7drivingschool@mi20.space\";s:8:\"password\";s:12:\"0epFarSWj5%D\";}', 'a:7:{s:11:\"companyname\";s:22:\"24X7 Driving School...\";s:9:\"contactno\";s:12:\"086 697 5965\";s:14:\"companyaddress\";s:40:\"121 Steve Biko Rd\r\nMusgrave\r\nBerea\r\n4001\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}', 'Active');

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
  `package_type` varchar(25) NOT NULL,
  `total_km` double(10,2) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `branch_id`, `vehicle_type`, `package_title`, `package_cost`, `package_type`, `total_km`, `no_of_days`, `note`, `status`) VALUES
(13, 1, 'Code 8', 'Code 8', 2000.00, 'Driving Class', 1500.00, 30, 'code 8 driving for 30 days', 'Active'),
(15, 1, 'Code 10', 'Code 10', 2500.00, 'Driving Class', 1500.00, 30, 'code 10 truck driving for 30 days', 'Active'),
(19, 3, 'Code 8', 'Code 8', 2000.00, 'Driving Class', 1500.00, 30, 'code 8 driving for 30 days', 'Active'),
(20, 3, 'Code 10', 'Code 10', 2500.00, 'Driving Class', 1500.00, 30, 'code 10 driving for 30 days', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `dl_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `payment_date` date NOT NULL,
  `paid_amt` float(10,2) NOT NULL,
  `payment_detail` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `dl_id`, `class_id`, `payment_date`, `paid_amt`, `payment_detail`, `status`) VALUES
(77, 0, 47, '2022-04-25', -5012.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:11:\"Master Card\";i:2;s:3:\"tom\";i:3;s:3:\"123\";i:4;s:3:\"123\";}', 'Active'),
(78, 0, 47, '2022-04-25', -5012.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:11:\"Master Card\";i:2;s:3:\"tom\";i:3;s:3:\"123\";i:4;s:3:\"123\";}', 'Active'),
(79, 0, 50, '2022-05-02', 1991.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:11:\"Master Card\";i:2;s:3:\"sam\";i:3;s:11:\"12345678907\";i:4;s:3:\"078\";}', 'Active'),
(80, 0, 51, '2022-05-03', 2487.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:11:\"Master Card\";i:2;s:3:\"123\";i:3;s:3:\"108\";i:4;s:3:\"114\";}', 'Active'),
(81, 0, 49, '2022-05-04', 2500.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:11:\"Master Card\";i:2;s:3:\"sam\";i:3;s:3:\"123\";i:4;s:3:\"111\";}', 'Active'),
(82, 0, 53, '2022-05-12', 2488.00, 'a:5:{i:0;s:14:\"Online Payment\";i:1;s:4:\"VISA\";i:2;s:3:\"sam\";i:3;s:3:\"107\";i:4;s:3:\"105\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qstn_id` int(10) NOT NULL,
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

INSERT INTO `questions` (`qstn_id`, `qstn`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `img`, `dsptn`, `status`) VALUES
(4, 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(5, 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '1235167426j51-340921.jpg', '', 'Active'),
(6, 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1207208192maxresdefault.jpg', '', 'Active'),
(7, 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '1908604356onewya.jpg', '', 'Active'),
(8, 'You can overtake a vehicle that is in the front', 'Through the left side of the vehicle ahead', 'Through the left side of the vehicle ahead', 'If the road is wide enough', 'Wait until the it passes', 'Option 2', '484063331overtake.png', '', 'Active'),
(9, 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '214199958Transport vehicles.jpg', '', 'Active'),
(10, 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '122763771061ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(11, 'In case a road does not have a footpath, pedestrians will have to', 'Walk on the right side of the road', 'Walk on the left side of the road', 'Walk on any side of the road', 'Walk on the everywhere side of the road', 'Option 1', '1191445549Untitled.png', '', 'Active'),
(12, 'Free passage should be provided to the following vehicles', 'Express buses', 'Police vehicles', 'Fire service vehicles and ambulance', 'Express train', 'Option 3', '1540578184zerotraffic.jpeg', '', 'Active'),
(13, 'Vehicles that come from the opposite side should be allowed to proceed through the', 'Left side', 'Right side', 'All side', 'Any convenient side', 'Option 2', '1257642656opposite side vehicle.jpg', '', 'Active'),
(14, 'Driver of a vehicle can overtake when', 'The driver of the vehicle ahead gives the signal to overtake', 'Road is wide enough', 'Driving down a hill', 'The vehicle should be locked', 'Option 1', '357074784overtake.png', '', 'Active'),
(15, 'How to drive in an South African road', 'Drive Left side', 'Drive right side', 'Drive any side', 'None of these', 'Option 1', '2039342630car.jpg', '', 'Active'),
(16, 'If you are near a pedestrian crossing and there are people waiting to cross the road, you should', 'Slow down, press horn and proceed', 'Press horn and proceed', 'Stop the vehicle, wait until pedestrians cross and then move forward', 'None', 'Option 3', '255273920MjkyOTE3OQ.jpeg', '', 'Active'),
(17, 'You are coming towards a narrow bridge and another vehicle is about to enter the bridge from the oth', 'Wait until the other vehicle crosses the bridge before proceeding', 'Switch on headlight and the cross the bridge', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Press horn and proceed', 'Option 1', '103789741j51-340921.jpg', '', 'Active'),
(18, 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '1972964703maxresdefault.jpg', '', 'Active'),
(19, 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '996355669onewayicon.png', '', 'Active'),
(20, 'You can overtake a vehicle that is in the front', 'Through the left side of the vehicle ahead', 'Through the left side of the vehicle ahead', 'If the road is wide enough', 'Wait until the it passes', 'Option 2', '703717569overtake.png', '', 'Active'),
(21, 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '1072729443Why-IND-is-written-on-vehicle-number-plates.jpg', '', 'Active'),
(22, 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '204138047661ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(23, 'In case a road does not have a footpath, pedestrians will have to', 'Walk on the right side of the road', 'Walk on the left side of the road', 'Walk on any side of the road', 'Walk on the everywhere side of the road', 'Option 1', '527652216pedestrian.jpg', '', 'Active'),
(24, 'Free passage should be provided to the following vehicles', 'Express buses', 'Police vehicles', 'Fire service vehicles and ambulance', 'Express train', 'Option 3', '2020472818zerotraffic.jpeg', '', 'Active'),
(25, 'Vehicles that come from the opposite side should be allowed to proceed through the', 'Left side', 'Right side', 'All side', 'Any convenient side', 'Option 2', '913199104opposite side vehicle.jpg', '', 'Active'),
(26, 'Driver of a vehicle can overtake when', 'The driver of the vehicle ahead gives the signal to overtake', 'Road is wide enough', 'Driving down a hill', 'The vehicle should be locked', 'Option 1', '164832864overtake.png', '', 'Active'),
(27, 'How to drive in South Africa', 'Drive Left side', 'Drive right side', 'Drive any side', 'None of these', 'Option 1', '2039342630car.jpg', '', 'Active'),
(28, 'In case you see a vehicle that has met with an accident with injured passengers inside, you should -', 'Stop your vehicle and report the matter to the nearest police station', 'Stop your vehicle and report the matter to the nearest police station', 'Take measures to secure medical attention to those injured and report the accident to the closest po', 'Increase speed of the vehicle and try to cross the bridge quickly', 'Option 3', '813841025maxresdefault.jpg', '', 'Active'),
(29, 'On a road that has been designated as one way', 'You should not drive in reverse gear', 'You should not overtake', 'You should not park', 'If the road is wide enough', 'Option 1', '342637176Untitled.png', '', 'Active'),
(30, 'You can overtake a vehicle that is in the front', 'Through the left side of the vehicle ahead', 'Through the left side of the vehicle ahead', 'If the road is wide enough', 'Wait until the it passes', 'Option 2', '1478253248overtake.png', '', 'Active'),
(31, 'Transport vehicles can be distinguished by', 'The colour of the vehicle', 'Number plate of the vehicle', 'Tyre size of the vehicle', 'Until a driving licence is availed', 'Option 2', '797928238Why-IND-is-written-on-vehicle-number-plates.jpg', '', 'Active'),
(32, 'A learner’s license is valid for a period of', '30 days', '6 months', '130 days', 'Until a driving licence is availed', 'Option 2', '47224890461ZUmdu8u6L._SL1024_.jpg', '', 'Active'),
(33, 'In case a road does not have a footpath, pedestrians will have to', 'Walk on the right side of the road', 'Walk on the left side of the road', 'Walk on any side of the road', 'Walk on the everywhere side of the road', 'Option 1', '67517823pedestrian.jpg', '', 'Active'),
(34, 'Free passage should be provided to the following vehicles', 'Express buses', 'Police vehicles', 'Fire service vehicles and ambulance', 'Express train', 'Option 3', '286281437zerotraffic.jpeg', '', 'Active'),
(35, 'Vehicles that come from the opposite side should be allowed to proceed through the', 'Left side', 'Right side', 'All side', 'Any convenient side', 'Option 2', '533627151opposite side vehicle.jpg', '', 'Active'),
(36, 'Driver of a vehicle can overtake when', 'The driver of the vehicle ahead gives the signal to overtake', 'Road is wide enough', 'Driving down a hill', 'The vehicle should be locked', 'Option 1', '1001704875overtake.png', '', 'Active'),
(37, 'How to drive in South Africa', 'Drive Left side', 'Drive right side', 'Drive any side', 'None of these', 'Option 1', '2039342630car.jpg', '', 'Active'),
(39, 'The following sign represents.. ', 'No entry', 'One way', 'Speed limit ends', 'Others', 'Option 2', '1702417169oneway.png', '', 'Active');

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
(30, 21, '08:00:00', '08:30:00', 'Active'),
(32, 21, '08:40:00', '09:10:00', 'Active'),
(33, 21, '09:20:00', '09:50:00', 'Active'),
(34, 21, '10:00:00', '10:30:00', 'Active'),
(35, 21, '10:40:00', '11:10:00', 'Active'),
(36, 21, '11:20:00', '11:50:00', 'Active'),
(37, 21, '12:00:00', '12:30:00', 'Active'),
(38, 21, '01:30:00', '02:00:00', 'Active'),
(39, 21, '02:10:00', '02:40:00', 'Active'),
(40, 21, '02:50:00', '03:20:00', 'Active');

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
(1, 21, 1, 'Code 10', 'ND 61774', 'TOYOTA TRUCK', '292267432maxresdefault.jpg', 'In good condition', 'Active'),
(3, 20, 1, 'Code 8', 'ND 65867', 'TOYOTA ETIOS', '696218817TOYOTA.jpg', 'In good condition ', 'Active');

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
  MODIFY `attedance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `customer_attendance`
--
ALTER TABLE `customer_attendance`
  MODIFY `customer_attendance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `driving_class`
--
ALTER TABLE `driving_class`
  MODIFY `class_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `driving_license`
--
ALTER TABLE `driving_license`
  MODIFY `dl_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `examination`
--
ALTER TABLE `examination`
  MODIFY `examinationid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `mail_setting`
--
ALTER TABLE `mail_setting`
  MODIFY `settingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qstn_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `sal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `timeslot_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;
