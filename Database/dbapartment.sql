-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 03:56 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbapartment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbranch`
--

CREATE TABLE `tblbranch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `b_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `b_contact_no` int(15) NOT NULL,
  `b_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `b_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblbranch`
--

INSERT INTO `tblbranch` (`branch_id`, `branch_name`, `b_email`, `b_contact_no`, `b_address`, `b_status`, `created_date`) VALUES
(7, 'Mirpur DOHS', 'mirpur.dohs@gmail.com', 1717445566, 'House 733, Road 11, Avenue 4, Mirpur DOHS', 'enable', '2021-01-01 09:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblsuper_admin`
--

CREATE TABLE `tblsuper_admin` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `password` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_admin`
--

CREATE TABLE `tbl_add_admin` (
  `aid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_admin`
--

INSERT INTO `tbl_add_admin` (`aid`, `name`, `email`, `password`, `branch_id`, `added_date`) VALUES
(2, 'Protyusha Barua', 'prithvi2409@gmail.com', '654321', 7, '2020-06-22 10:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_bill`
--

CREATE TABLE `tbl_add_bill` (
  `bill_id` int(11) NOT NULL,
  `bill_type` varchar(200) NOT NULL,
  `bill_date` varchar(200) NOT NULL,
  `bill_month` int(11) NOT NULL,
  `bill_year` int(11) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `deposit_bank_name` varchar(200) NOT NULL,
  `bill_details` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_bill`
--

INSERT INTO `tbl_add_bill` (`bill_id`, `bill_type`, `bill_date`, `bill_month`, `bill_year`, `total_amount`, `deposit_bank_name`, `bill_details`, `branch_id`, `added_date`) VALUES
(2, '1', '01/01/2021', 1, 4, '2500.00', 'Sonali Bank', 'Done', 7, '2020-05-07 09:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_bill_type`
--

CREATE TABLE `tbl_add_bill_type` (
  `bt_id` int(11) NOT NULL,
  `bill_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_bill_type`
--

INSERT INTO `tbl_add_bill_type` (`bt_id`, `bill_type`, `added_date`) VALUES
(1, 'Gas', '2020-05-05 09:49:35'),
(3, 'Water', '2020-05-05 09:50:39'),
(4, 'Electricity', '2020-05-05 09:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_building_info`
--

CREATE TABLE `tbl_add_building_info` (
  `bldid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `building_image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_building_info`
--

INSERT INTO `tbl_add_building_info` (`bldid`, `name`, `address`, `building_image`, `branch_id`, `added_date`) VALUES
(8, 'Mona Tower', '3, New Eskaton Road, Mona Tower, Dhaka-1000', '', 7, '2020-05-07 09:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_complain`
--

CREATE TABLE `tbl_add_complain` (
  `complain_id` int(11) NOT NULL,
  `c_title` varchar(200) NOT NULL,
  `c_description` varchar(200) NOT NULL,
  `c_date` varchar(200) NOT NULL,
  `c_month` varchar(50) NOT NULL,
  `c_year` varchar(50) NOT NULL,
  `c_userid` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_complain`
--

INSERT INTO `tbl_add_complain` (`complain_id`, `c_title`, `c_description`, `c_date`, `c_month`, `c_year`, `c_userid`, `branch_id`, `added_date`) VALUES
(8, 'Water Problem', 'Dirty water problem', '07/05/2020', '5', '2016', 1, 7, '2020-05-07 09:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_employee`
--

CREATE TABLE `tbl_add_employee` (
  `eid` int(11) NOT NULL,
  `e_name` varchar(200) NOT NULL,
  `e_email` varchar(200) NOT NULL,
  `e_contact` varchar(200) NOT NULL,
  `e_pre_address` varchar(200) NOT NULL,
  `e_per_address` varchar(200) NOT NULL,
  `e_nid` varchar(200) NOT NULL,
  `e_designation` int(11) NOT NULL,
  `e_date` varchar(200) NOT NULL,
  `ending_date` varchar(200) NOT NULL,
  `e_status` int(1) NOT NULL DEFAULT 0,
  `e_password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_employee`
--

INSERT INTO `tbl_add_employee` (`eid`, `e_name`, `e_email`, `e_contact`, `e_pre_address`, `e_per_address`, `e_nid`, `e_designation`, `e_date`, `ending_date`, `e_status`, `e_password`, `image`, `branch_id`, `added_date`) VALUES
(6, 'Sonia Barua', 'sonia46@gmail.com', '01819113780', '', 'Mirpur DOHS', '12345678', 3, '01/01/2021', '', 0, '123456', '', 7, '2021-01-02 14:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_employee_salary_setup`
--

CREATE TABLE `tbl_add_employee_salary_setup` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `issue_date` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_employee_salary_setup`
--

INSERT INTO `tbl_add_employee_salary_setup` (`emp_id`, `emp_name`, `designation`, `month_id`, `xyear`, `amount`, `issue_date`, `branch_id`, `added_date`) VALUES
(11, '6', 'Manager', 1, '2021', '30000.00', '01/01/2021', 7, '2021-01-02 14:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_fair`
--

CREATE TABLE `tbl_add_fair` (
  `f_id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `unit_no` varchar(200) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `rent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `water_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `electric_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `gas_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `security_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `utility_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `other_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_rent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `issue_date` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_fair`
--

INSERT INTO `tbl_add_fair` (`f_id`, `type`, `floor_no`, `unit_no`, `rid`, `month_id`, `xyear`, `rent`, `water_bill`, `electric_bill`, `gas_bill`, `security_bill`, `utility_bill`, `other_bill`, `total_rent`, `issue_date`, `branch_id`, `added_date`) VALUES
(26, 'Rented', '4', '18', 10, 1, '2021', '10000.00', '200.00', '500.00', '100.00', '500.00', '4000.00', '0.00', '15300.00', '01/01/2021', 7, '2021-01-02 14:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_floor`
--

CREATE TABLE `tbl_add_floor` (
  `fid` int(11) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_floor`
--

INSERT INTO `tbl_add_floor` (`fid`, `floor_no`, `branch_id`, `added_date`) VALUES
(1, '1st Floor', 7, '2020-03-22 12:07:46'),
(3, '2nd Floor', 7, '2020-03-22 12:09:25'),
(4, '3rd Floor', 7, '2020-03-22 12:09:38'),
(5, '4th Floor', 7, '2020-03-22 12:09:53'),
(6, '5th Floor', 7, '2020-03-22 12:10:05'),
(8, '6th Floor', 7, '2020-05-02 11:27:51'),
(9, '7th Floor', 8, '2020-06-22 10:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_member_type`
--

CREATE TABLE `tbl_add_member_type` (
  `member_id` int(11) NOT NULL,
  `member_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_member_type`
--

INSERT INTO `tbl_add_member_type` (`member_id`, `member_type`, `added_date`) VALUES
(3, 'Manager', '2020-04-10 11:59:22'),
(4, 'Pion', '2020-04-10 11:59:29'),
(5, 'Security Gard', '2020-04-10 11:59:41'),
(6, 'Caretaker', '2020-04-10 12:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_month_setup`
--

CREATE TABLE `tbl_add_month_setup` (
  `m_id` int(11) NOT NULL,
  `month_name` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_month_setup`
--

INSERT INTO `tbl_add_month_setup` (`m_id`, `month_name`, `added_date`) VALUES
(1, 'January', '2020-04-11 12:16:15'),
(2, 'February', '2020-04-11 12:16:25'),
(3, 'March', '2020-04-11 12:16:30'),
(4, 'April', '2020-04-11 12:16:36'),
(5, 'May', '2020-04-11 12:16:41'),
(6, 'June', '2020-04-11 12:16:48'),
(7, 'July', '2020-04-11 12:16:05'),
(8, 'August', '2020-04-11 12:16:59'),
(9, 'September', '2020-04-11 12:17:06'),
(10, 'Octobor', '2020-04-11 12:17:14'),
(11, 'November', '2020-04-11 12:17:24'),
(12, 'December', '2020-04-11 12:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_owner`
--

CREATE TABLE `tbl_add_owner` (
  `ownid` int(11) NOT NULL,
  `o_name` varchar(200) NOT NULL,
  `o_email` varchar(200) NOT NULL,
  `o_contact` varchar(200) NOT NULL,
  `o_pre_address` varchar(500) NOT NULL,
  `o_per_address` varchar(500) NOT NULL,
  `o_nid` varchar(200) NOT NULL,
  `o_password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_owner`
--

INSERT INTO `tbl_add_owner` (`ownid`, `o_name`, `o_email`, `o_contact`, `o_pre_address`, `o_per_address`, `o_nid`, `o_password`, `image`, `branch_id`, `created_date`) VALUES
(8, 'Fabliha Zahin', 'fzahin.fz@gmail.com', '01902233696', 'Dhanmondi', 'Dhanmondi', '1234567', '123456', '', 7, '2021-01-02 14:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_owner_unit_relation`
--

CREATE TABLE `tbl_add_owner_unit_relation` (
  `owner_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_owner_unit_relation`
--

INSERT INTO `tbl_add_owner_unit_relation` (`owner_id`, `unit_id`) VALUES
(6, 14),
(6, 15),
(7, 17),
(7, 16),
(6, 14),
(6, 15),
(7, 17),
(7, 16),
(8, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_owner_utility`
--

CREATE TABLE `tbl_add_owner_utility` (
  `owner_utility_id` int(11) NOT NULL,
  `floor_no` int(11) NOT NULL,
  `unit_no` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `rent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `water_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `electric_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `gas_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `security_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `utility_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `other_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_rent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `issue_date` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_rent`
--

CREATE TABLE `tbl_add_rent` (
  `rid` int(11) NOT NULL,
  `r_name` varchar(200) NOT NULL,
  `r_email` varchar(200) NOT NULL,
  `r_contact` varchar(200) NOT NULL,
  `r_address` varchar(200) NOT NULL,
  `r_nid` varchar(200) NOT NULL,
  `r_floor_no` varchar(200) NOT NULL,
  `r_unit_no` varchar(200) NOT NULL,
  `r_advance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `r_rent_pm` decimal(15,2) NOT NULL DEFAULT 0.00,
  `r_date` varchar(200) NOT NULL,
  `r_gone_date` varchar(200) NOT NULL,
  `r_password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `r_status` int(1) NOT NULL DEFAULT 1,
  `r_month` int(11) NOT NULL,
  `r_year` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_rent`
--

INSERT INTO `tbl_add_rent` (`rid`, `r_name`, `r_email`, `r_contact`, `r_address`, `r_nid`, `r_floor_no`, `r_unit_no`, `r_advance`, `r_rent_pm`, `r_date`, `r_gone_date`, `r_password`, `image`, `r_status`, `r_month`, `r_year`, `branch_id`, `added_date`) VALUES
(10, 'Ricky', 'ricky@yahoo.com', '97605412', 'Melbourne, Australia', '9865321', '4', '18', '20000.00', '10000.00', '07/05/2016', '', '123456', '4F48CED3-86CC-D435-B42B-730D3BC36FC4.png', 1, 5, 8, 7, '2016-05-07 08:42:54'),
(11, 'Mishel Johnson', 'michel@gmail.com', '01717456321', 'Mirpur-1,Dhaka-1216', '1521807785324', '1', '14', '12000.00', '12000.00', '09/05/2016', '', '123456', '853C9E05-44BF-A647-7749-9782F98E667A.jpg', 1, 5, 8, 8, '2016-05-09 10:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_unit`
--

CREATE TABLE `tbl_add_unit` (
  `uid` int(11) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `unit_no` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_unit`
--

INSERT INTO `tbl_add_unit` (`uid`, `floor_no`, `unit_no`, `branch_id`, `status`, `added_date`) VALUES
(14, '1', '1B', 7, 1, '2020-05-07 08:30:42'),
(15, '1', '1A', 7, 0, '2020-05-07 08:30:53'),
(16, '3', '2B', 7, 0, '2020-05-07 08:31:02'),
(17, '3', '2A', 7, 0, '2020-05-07 08:31:11'),
(18, '4', '3A', 7, 1, '2020-05-07 08:31:22'),
(19, '4', '3B', 7, 0, '2020-05-07 08:31:33'),
(20, '5', '4B', 7, 0, '2020-05-07 08:31:48'),
(21, '5', '4A', 7, 0, '2020-05-07 08:31:57'),
(22, '6', '5B', 7, 0, '2020-05-07 08:32:07'),
(23, '6', '5A', 7, 0, '2020-05-07 08:32:16'),
(24, '8', '6A', 7, 0, '2020-05-07 08:32:24'),
(25, '8', '6B', 7, 0, '2020-05-07 08:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_utility_bill`
--

CREATE TABLE `tbl_add_utility_bill` (
  `utility_id` int(11) NOT NULL,
  `gas_bill` varchar(200) NOT NULL,
  `security_bill` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_utility_bill`
--

INSERT INTO `tbl_add_utility_bill` (`utility_id`, `gas_bill`, `security_bill`, `added_date`) VALUES
(3, '650', '1000', '2020-05-07 09:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_year_setup`
--

CREATE TABLE `tbl_add_year_setup` (
  `y_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_year_setup`
--

INSERT INTO `tbl_add_year_setup` (`y_id`, `xyear`, `added_date`) VALUES
(3, '2020', '2020-04-13 14:02:33'),
(4, '2021', '2020-04-13 14:02:38'),
(5, '2022', '2020-04-13 14:02:42'),
(6, '2023', '2020-04-13 14:02:47'),
(7, '2024', '2020-04-13 14:02:51'),
(8, '2025', '2020-04-13 14:02:56'),
(9, '2026', '2020-04-13 14:03:04'),
(10, '2027', '2020-04-13 14:03:08'),
(11, '2028', '2020-04-13 14:03:12'),
(12, '2029', '2020-04-13 14:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `lang_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `currency` varchar(20) CHARACTER SET utf8 NOT NULL,
  `currency_seperator` varchar(5) CHARACTER SET utf8 NOT NULL,
  `currency_position` varchar(10) NOT NULL,
  `date_format` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`lang_code`, `currency`, `currency_seperator`, `currency_position`, `date_format`) VALUES
('English', 'Tk', '.', 'left', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbranch`
--
ALTER TABLE `tblbranch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `tblsuper_admin`
--
ALTER TABLE `tblsuper_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_add_admin`
--
ALTER TABLE `tbl_add_admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `tbl_add_bill`
--
ALTER TABLE `tbl_add_bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `tbl_add_bill_type`
--
ALTER TABLE `tbl_add_bill_type`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `tbl_add_building_info`
--
ALTER TABLE `tbl_add_building_info`
  ADD PRIMARY KEY (`bldid`);

--
-- Indexes for table `tbl_add_complain`
--
ALTER TABLE `tbl_add_complain`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `tbl_add_employee`
--
ALTER TABLE `tbl_add_employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `tbl_add_employee_salary_setup`
--
ALTER TABLE `tbl_add_employee_salary_setup`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tbl_add_fair`
--
ALTER TABLE `tbl_add_fair`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tbl_add_floor`
--
ALTER TABLE `tbl_add_floor`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `tbl_add_member_type`
--
ALTER TABLE `tbl_add_member_type`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_add_month_setup`
--
ALTER TABLE `tbl_add_month_setup`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `tbl_add_owner`
--
ALTER TABLE `tbl_add_owner`
  ADD PRIMARY KEY (`ownid`);

--
-- Indexes for table `tbl_add_owner_utility`
--
ALTER TABLE `tbl_add_owner_utility`
  ADD PRIMARY KEY (`owner_utility_id`);

--
-- Indexes for table `tbl_add_rent`
--
ALTER TABLE `tbl_add_rent`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `tbl_add_unit`
--
ALTER TABLE `tbl_add_unit`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tbl_add_utility_bill`
--
ALTER TABLE `tbl_add_utility_bill`
  ADD PRIMARY KEY (`utility_id`);

--
-- Indexes for table `tbl_add_year_setup`
--
ALTER TABLE `tbl_add_year_setup`
  ADD PRIMARY KEY (`y_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbranch`
--
ALTER TABLE `tblbranch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsuper_admin`
--
ALTER TABLE `tblsuper_admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_add_admin`
--
ALTER TABLE `tbl_add_admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_add_bill`
--
ALTER TABLE `tbl_add_bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_add_bill_type`
--
ALTER TABLE `tbl_add_bill_type`
  MODIFY `bt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_add_building_info`
--
ALTER TABLE `tbl_add_building_info`
  MODIFY `bldid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_add_complain`
--
ALTER TABLE `tbl_add_complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_add_employee`
--
ALTER TABLE `tbl_add_employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_add_employee_salary_setup`
--
ALTER TABLE `tbl_add_employee_salary_setup`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_add_fair`
--
ALTER TABLE `tbl_add_fair`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_add_floor`
--
ALTER TABLE `tbl_add_floor`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_add_member_type`
--
ALTER TABLE `tbl_add_member_type`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_add_month_setup`
--
ALTER TABLE `tbl_add_month_setup`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_add_owner`
--
ALTER TABLE `tbl_add_owner`
  MODIFY `ownid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_add_owner_utility`
--
ALTER TABLE `tbl_add_owner_utility`
  MODIFY `owner_utility_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_add_rent`
--
ALTER TABLE `tbl_add_rent`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_add_unit`
--
ALTER TABLE `tbl_add_unit`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_add_utility_bill`
--
ALTER TABLE `tbl_add_utility_bill`
  MODIFY `utility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_add_year_setup`
--
ALTER TABLE `tbl_add_year_setup`
  MODIFY `y_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
