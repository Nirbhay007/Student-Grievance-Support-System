-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2020 at 02:18 AM
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
-- Database: `cms_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@123', '18-10-2016 04:18:16'),
(2, 'admin2', '987654', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Department Level', 'department level issues.', '2020-01-14 07:10:55', '2020-01-15 16:37:26'),
(2, 'Institute/College Level', 'Grievances related to constitution level.', '2020-01-14 16:27:55', '2020-01-15 16:48:37'),
(3, 'University Level', 'Related to university issue.', '2020-01-15 16:35:12', '2020-01-15 16:38:35'),
(4, 'Ministry Level', 'Problems enquired by higher committee.', '2020-01-15 16:39:31', '2020-01-15 14:39:44'),
(5, 'Miscellaneous', 'problems that could be related to issues not mentioned above.', '2020-01-15 17:43:41', '2020-01-15 17:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `reg_no`
--

CREATE TABLE `reg_no` (
  `id` int(20) NOT NULL,
  `reg_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_no`
--

INSERT INTO `reg_no` (`id`, `reg_no`) VALUES
(1, 'eg2020'),
(2, '19106107');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Uttar Pradesh', '', '2016-10-18 11:35:02', '0000-00-00 00:00:00'),
(4, 'Bihar', 'bihar', '2016-10-18 11:35:58', '2020-01-15 16:34:06'),
(5, 'Andhra Pradesh', 'AP', '2017-03-28 07:20:36', '2020-01-15 16:18:13'),
(6, 'Delhi', 'Delhi', '2017-06-11 10:54:12', '2019-06-24 07:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Admission', '2020-01-15 07:11:07', '2020-01-15 16:44:47'),
(2, 1, 'Finance', '2020-01-15 06:11:20', '2020-01-15 17:00:19'),
(3, 1, 'Examination', '2020-01-15 02:30:00', '2020-01-15 17:01:56'),
(4, 1, 'Lecture Timetable/Learning', '2020-01-15 16:46:52', '2020-01-15 17:02:03'),
(5, 1, 'Paper Reevaluation', '2020-01-15 16:47:40', '2020-01-15 17:02:11'),
(6, 2, 'Admission', '2020-01-15 17:07:15', '2020-01-15 17:16:21'),
(7, 2, 'Finance', '2020-01-15 17:18:13', '2020-01-15 17:19:58'),
(8, 2, 'Examination', '2020-01-15 17:28:58', '2020-01-15 17:41:44'),
(9, 3, 'Examination', '2020-01-15 17:28:58', '2020-01-15 17:41:47'),
(10, 2, 'Lecture Timetable/Learning', '2020-01-15 17:30:28', '2020-01-15 17:41:48'),
(11, 2, 'Paper Re-evaluation', '2020-01-15 17:32:25', '2020-01-15 17:41:50'),
(12, 3, 'Admission', '2020-01-15 17:33:02', '2020-01-15 17:41:52'),
(13, 3, 'Finance', '2020-01-15 17:34:12', '2020-01-15 17:41:54'),
(14, 3, 'Lecture Timetable/Learning', '2020-01-15 17:34:34', '2020-01-15 17:41:56'),
(15, 3, 'Paper Re-evaluation', '2020-01-15 17:34:51', '2020-01-15 17:41:58'),
(16, 4, 'Admission', '2020-01-15 17:35:16', '2020-01-15 17:42:00'),
(17, 4, 'Finance', '2020-01-15 17:37:00', '2020-01-15 17:42:03'),
(18, 4, 'Examination', '2020-01-15 17:37:37', '2020-01-15 17:42:06'),
(19, 4, 'Lecture Timetable/Learning', '2020-01-15 17:38:09', '2020-01-15 17:42:08'),
(20, 4, 'Paper Re-evaluation', '2020-01-15 17:38:25', '2020-01-15 17:42:10'),
(21, 5, 'Admission', '2020-01-15 17:38:44', '2020-01-15 17:42:12'),
(22, 5, 'Finance', '2020-01-15 17:38:53', '2020-01-15 17:42:14'),
(23, 5, 'Examination', '2020-01-15 17:39:01', '2020-01-15 17:42:16'),
(24, 5, 'Lecture Timetable/Learning', '2020-01-15 17:39:45', '2020-01-15 17:42:18'),
(25, 5, 'Paper Re-evaluation', '2020-01-15 17:40:22', '2020-01-15 17:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 1, 'E-wllaet', 'General Query', 'Punjab', 'test demo', 'test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo', '', '2017-03-30 16:52:40', 'closed', '2019-06-24 10:29:37'),
(2, 1, 1, 'Online SHopping', 'General Query', 'Punjab', 'testing', 'sample text for demo', '', '2017-03-30 17:05:56', 'in process', '2017-04-01 17:29:19'),
(3, 1, 1, 'Online SHopping', ' Complaint', 'Punjab', 'ferwekt lwentgwewt', 'wetwetwe', '', '2017-03-30 17:07:51', 'in process', '2017-05-02 15:57:43'),
(4, 1, 1, 'E-wllaet', 'General Query', 'Haryana', 'lkdlsfklsdf', 'fdsf,msd,f  f f', '', '2017-03-30 17:13:14', 'closed', '2019-06-24 10:29:37'),
(5, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 17:14:55', 'in process', '2019-06-24 10:29:37'),
(6, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 17:20:16', NULL, '2019-06-24 10:29:37'),
(7, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 17:20:56', NULL, '2019-06-24 10:29:37'),
(8, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 17:23:05', NULL, '2019-06-24 10:29:37'),
(9, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 17:25:09', 'in process', '2019-06-24 10:29:37'),
(10, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 17:27:24', NULL, '2019-06-24 10:29:37'),
(11, 1, 1, 'Online SHopping', 'General Query', 'Haryana', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2017-03-30 17:36:32', NULL, '2019-06-24 10:29:37'),
(12, 1, 1, 'Online SHopping', 'General Query', 'Haryana', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2017-03-30 17:37:09', NULL, '2019-06-24 10:29:37'),
(13, 1, 1, 'Online SHopping', 'General Query', 'Haryana', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2017-03-30 17:39:57', NULL, '2019-06-24 10:29:37'),
(14, 1, 1, 'Online SHopping', ' Complaint', 'Haryana', 'vcxvxcvxcv', 'cvcx', '', '2017-03-30 17:41:19', NULL, '2019-06-24 10:29:37'),
(15, 1, 1, 'E-wllaet', 'General Query', 'Punjab', 'dsfsd', 'fsdfsdf', '', '2017-03-30 17:42:38', NULL, '0000-00-00 00:00:00'),
(16, 1, 1, 'E-wllaet', 'General Query', 'Punjab', 'dsfsd', 'fsdfsdf', '', '2017-03-31 01:54:07', NULL, '0000-00-00 00:00:00'),
(17, 5, 1, 'E-wllaet', ' Complaint', 'fsdfs', 'regarding refund', 'test test', '', '2017-06-11 10:57:49', NULL, '0000-00-00 00:00:00'),
(18, 5, 1, 'Online SHopping', ' Complaint', 'Uttar Pradesh', 'yhytr', 'rtytry', '', '2017-06-11 11:08:47', NULL, '2019-06-24 10:29:37'),
(19, 6, 1, 'Online SHopping', ' Complaint', 'Uttar Pradesh', 'regarding refund', 'Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw', '', '2017-06-11 11:15:24', 'closed', '2019-06-24 10:29:37'),
(20, 1, 1, 'E-wllaet', 'General Query', 'fsdfs', 'sdgsdg', 'gdgsdgsd', '', '2018-05-24 18:26:23', NULL, '0000-00-00 00:00:00'),
(21, 1, 1, 'Online SHopping', 'General Query', 'Uttar Pradesh', 'csdf', 'fsdfs', '', '2018-05-24 18:26:55', NULL, '0000-00-00 00:00:00'),
(22, 1, 1, 'Online SHopping', 'General Query', 'Uttar Pradesh', 'csdf', 'fsdfs', '', '2018-05-24 18:27:02', NULL, '0000-00-00 00:00:00'),
(23, 1, 1, 'E-wllaet', ' Complaint', 'Delhi', 'This is sample text for testing.', 'This is sample text for testing.', '2a09969b-c3d5-467b-82b0-2cf5aeb903eb_200x200.png', '2019-06-24 10:31:19', 'closed', '2019-06-24 10:37:09'),
(24, 8, 1, 'Admission', 'General Query', 'Bihar', 'Time Table', 'lecture', '7ba194572c89c3b8784d8b27e46addd3.jpg', '2020-01-15 19:19:54', NULL, NULL),
(25, 8, 1, 'Admission', 'General Query', 'Uttar Pradesh', 'Time Table', 'lecture', '', '2020-01-15 19:56:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 17:04:36', '', 1),
(2, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 15:02:26', '', 1),
(3, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 14:58:00', '', 1),
(4, 0, 'dsad', 0x3a3a3100000000000000000000000000, '2020-01-15 17:39:07', '', 0),
(5, 0, 'dwerwer', 0x3a3a3100000000000000000000000000, '2020-01-15 17:41:22', '', 0),
(6, 0, 'ffert', 0x3a3a3100000000000000000000000000, '2020-01-15 17:41:29', '', 0),
(7, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2020-01-15 17:42:12', '', 0),
(8, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2020-01-15 17:47:51', '', 0),
(9, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2020-01-15 17:47:54', '', 0),
(10, 0, 'fsdfsdff', 0x3a3a3100000000000000000000000000, '2020-01-15 17:48:11', '', 0),
(11, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 17:49:25', '', 1),
(12, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 18:52:35', '02-04-2017 12:24:41 AM', 1),
(13, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 18:58:09', '02-04-2017 12:50:42 AM', 1),
(14, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 19:38:15', '02-04-2017 01:08:19 AM', 1),
(26, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-24 10:27:30', '24-06-2019 04:11:08 PM', 1),
(27, 2, 'matatashadrack45@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 13:04:59', '15-01-2020 06:40:54 PM', 1),
(28, 3, 'matatashadrack45@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 14:05:40', '', 1),
(29, 8, 'nirbhaysinghbest1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 16:23:11', '15-01-2020 09:53:33 PM', 1),
(30, 8, 'nirbhaysinghbest1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 16:30:53', '', 1),
(31, 8, 'nirbhaysinghbest1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 16:33:18', '', 1),
(32, 8, 'nirbhaysinghbest1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 16:50:19', '', 1),
(33, 8, 'nirbhaysinghbest1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 18:56:19', '', 1),
(34, 8, 'nirbhaysinghbest1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 19:02:55', '', 1),
(35, 8, 'nirbhaysinghbest1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 19:18:00', '16-01-2020 12:50:07 AM', 1),
(36, 8, 'nirbhaysinghbest1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 19:55:21', '16-01-2020 01:26:44 AM', 1),
(37, 8, 'nirbhaysinghbest1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-15 20:05:30', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT current_timestamp(),
  `reg_no` varchar(100) NOT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `reg_no`, `status`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 9999857860, 'Shakarpur', 'Uttar Pradesh', 'India', 110092, '6e8024ec26c292f258ec30f01e0392dc.png', '2017-03-28 11:44:52', '2019-06-24 10:39:44', 'EC/04/18', 1),
(3, 'Shadrack Matata', 'matatashadrack45@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1234, NULL, NULL, NULL, NULL, NULL, '2020-01-15 13:56:11', '2020-01-15 13:56:11', 'EC/04/18', 1),
(4, 'New user', 'newuser@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 12345, NULL, NULL, NULL, NULL, NULL, '2020-01-15 14:58:14', '2020-01-15 14:58:14', 'example1', 1),
(7, 'example 2', 'eg2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1234, NULL, NULL, NULL, NULL, NULL, '2020-01-15 15:25:49', '2020-01-15 15:25:49', 'eg2020', 1),
(8, 'nirbhay', 'nirbhaysinghbest1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 7004191931, NULL, NULL, NULL, NULL, NULL, '2020-01-15 16:22:47', '2020-01-15 16:22:47', '19106107', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_no`
--
ALTER TABLE `reg_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reg_no`
--
ALTER TABLE `reg_no`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

