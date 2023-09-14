-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 12:57 PM
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
-- Database: `internetbanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `ib_acc_types`
--

CREATE TABLE `ib_acc_types` (
  `acctype_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_acc_types`
--

INSERT INTO `ib_acc_types` (`acctype_id`, `name`, `description`, `rate`, `code`) VALUES
(9, 'SAVINGS', 'Susu for the future', '10', 'ACC-CAT-W2AZX'),
(10, 'LOANS', 'Loans for small business', '30', 'ACC-CAT-G6LE4');

-- --------------------------------------------------------

--
-- Table structure for table `ib_admin`
--

CREATE TABLE `ib_admin` (
  `admin_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_admin`
--

INSERT INTO `ib_admin` (`admin_id`, `name`, `email`, `number`, `password`, `profile_pic`) VALUES
(2, 'System Administrator', 'admin@mail.com', 'pkTRUSTLINE-ADM-0516', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'admin-icn.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_bankaccounts`
--

CREATE TABLE `ib_bankaccounts` (
  `account_id` int(20) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_rates` varchar(200) NOT NULL,
  `acc_status` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  `client_email` varchar(200) NOT NULL,
  `client_adr` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_bankaccounts`
--

INSERT INTO `ib_bankaccounts` (`account_id`, `acc_name`, `account_number`, `acc_type`, `acc_rates`, `acc_status`, `acc_amount`, `client_id`, `client_name`, `client_national_id`, `client_phone`, `client_number`, `client_email`, `client_adr`, `created_at`) VALUES
(21, 'Joycelyn Oware', '265714308', 'SAVINGS ', '10', 'Active', '0', '11', 'Joycelyn Oware', '0987654321', '0249872918', 'iBank-CLIENT-6452', 'susu1@pk.com', 'Achiaman', '2023-07-07 18:07:13.158825'),
(25, 'Samuel Ohene', '935467018', 'SAVINGS ', '10', 'Active', '0', '18', 'Samuel Ohene ', '0987654321', '0533527807', 'PKTMC-CLIENT-7125', 'susu2@pk.com', 'Opah - Achiaman', '2023-07-08 00:12:02.890924'),
(26, 'Addy Bright', '856179432', 'SAVINGS ', '10', 'Active', '0', '19', 'Addy Bright', '0987654321', '0277331934', 'PKTMC-CLIENT-4568', 'susu3@pk.com', 'Achiaman', '2023-07-08 08:52:29.499180'),
(27, 'Arhin Alex', '837215690', 'SAVINGS ', '10', 'Active', '0', '20', 'Arhin Alex', '0987654321', '0548565587', 'PKTMC-CLIENT-4706', 'susu4@pk.com', 'Abehenease', '2023-07-08 08:59:01.845617'),
(28, 'Asante Samuel', '314579820', 'LOANS ', '30', 'Active', '0', '22', 'Asante Samuel', '0987654321', '059581368', 'PKTMC-CLIENT-4703', 'loan1@pk.com', 'Pokuase', '2023-07-10 08:34:04.731142'),
(29, 'Sekina Ibrahim', '907843561', 'SAVINGS ', '10', 'Active', '0', '23', 'Sekina Ibrahim', '0987654321', '0201957200', 'PKTMC-CLIENT-3619', 'susu5@pk.com', 'Achiaman', '2023-07-10 10:12:56.669011');

-- --------------------------------------------------------

--
-- Table structure for table `ib_clients`
--

CREATE TABLE `ib_clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `national_id` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_clients`
--

INSERT INTO `ib_clients` (`client_id`, `name`, `national_id`, `phone`, `address`, `email`, `password`, `profile_pic`, `client_number`) VALUES
(11, 'Joycelyn Oware', '0987654321', '0249872918', 'Achiaman', 'susu1@pk.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', '', 'PTMC-CLIENT-6452'),
(18, 'Samuel Ohene ', '0987654321', '0533527807', 'Opah - Achiaman', 'susu2@pk.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', '', 'PKTMC-CLIENT-7125'),
(19, 'Addy Bright', '0987654321', '0277331934', 'Achiaman', 'susu3@pk.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', '', 'PKTMC-CLIENT-4568'),
(20, 'Arhin Alex', '0987654321', '0548565587', 'Abehenease', 'susu4@pk.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', '', 'PKTMC-CLIENT-4706'),
(22, 'Asante Samuel', '0987654321', '059581368', 'Pokuase', 'loan1@pk.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'Asante Samuel.jpg', 'PKTMC-CLIENT-4703'),
(23, 'Sekina Ibrahim', '0987654321', '0201957200', 'Achiaman', 'susu5@pk.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', '', 'PKTMC-CLIENT-3619');

-- --------------------------------------------------------

--
-- Table structure for table `ib_notifications`
--

CREATE TABLE `ib_notifications` (
  `notification_id` int(20) NOT NULL,
  `notification_details` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_notifications`
--

INSERT INTO `ib_notifications` (`notification_id`, `notification_details`, `created_at`) VALUES
(50, 'Asante Samuel Has Deposited $ 1300 To Bank Account 314579820', '2023-07-10 08:34:54.655681'),
(51, 'Sekina Ibrahim Has Deposited $ 5 To Bank Account 907843561', '2023-07-10 10:13:14.127966'),
(52, 'Asante Samuel Has Deposited $ 1000 To Bank Account 314579820', '2023-07-10 10:17:27.971406');

-- --------------------------------------------------------

--
-- Table structure for table `ib_staff`
--

CREATE TABLE `ib_staff` (
  `staff_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_staff`
--

INSERT INTO `ib_staff` (`staff_id`, `name`, `staff_number`, `phone`, `email`, `password`, `sex`, `profile_pic`) VALUES
(6, 'Sandra Ewuraama Agyapomaa Boateng', 'iBank-STAFF-5270', '0249965592', 'Sandra@mail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'Female', 'As.jpg'),
(7, 'Dennis Yeboah', 'PTMC-STAFF-5837', '0552798269', 'Dennis@mail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'Male', '');

-- --------------------------------------------------------

--
-- Table structure for table `ib_systemsettings`
--

CREATE TABLE `ib_systemsettings` (
  `id` int(20) NOT NULL,
  `sys_name` longtext NOT NULL,
  `sys_tagline` longtext NOT NULL,
  `sys_logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_systemsettings`
--

INSERT INTO `ib_systemsettings` (`id`, `sys_name`, `sys_tagline`, `sys_logo`) VALUES
(1, 'PK TRUSTLINE MICRO CREDIT', 'WE FOCUS ON YOUR TOMORROW', 'Pk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ib_transactions`
--

CREATE TABLE `ib_transactions` (
  `tr_id` int(20) NOT NULL,
  `tr_code` varchar(200) NOT NULL,
  `account_id` varchar(200) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `tr_type` varchar(200) NOT NULL,
  `tr_status` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `transaction_amt` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `receiving_acc_no` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `receiving_acc_name` varchar(200) NOT NULL,
  `receiving_acc_holder` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_transactions`
--

INSERT INTO `ib_transactions` (`tr_id`, `tr_code`, `account_id`, `acc_name`, `account_number`, `acc_type`, `acc_amount`, `tr_type`, `tr_status`, `client_id`, `client_name`, `client_national_id`, `transaction_amt`, `client_phone`, `receiving_acc_no`, `created_at`, `receiving_acc_name`, `receiving_acc_holder`) VALUES
(55, 'mEA61e2vNtxicMbwzkYJ', '21', 'Joycelyn Oware', '265714308', 'SAVINGS ', '', 'Deposit', 'Success ', '11', 'Joycelyn Oware', '0987654321', '70', '0249872918', '', '2023-07-07 18:08:41.857039', '', ''),
(59, 'NR7WTwgbIrype9n2ALJM', '25', 'Samuel Ohene', '935467018', 'SAVINGS ', '', 'Deposit', 'Success ', '18', 'Samuel Ohene ', '0987654321', '30', '0533527807', '', '2023-07-08 00:13:26.610903', '', ''),
(60, 'aCnk5HJ1xjybsKdUZ0uT', '26', 'Addy Bright', '856179432', 'SAVINGS ', '', 'Deposit', 'Success ', '19', 'Addy Bright', '0987654321', '95', '0277331934', '', '2023-07-08 08:53:37.108187', '', ''),
(61, 'U83XfnSY04oG6gPZsQ2V', '26', 'Addy Bright', '856179432', 'SAVINGS ', '', 'Deposit', 'Success ', '19', 'Addy Bright', '0987654321', '10', '0277331934', '', '2023-07-08 08:53:48.730911', '', ''),
(62, 'j09nEBwlPN3AXgWQC1Hc', '27', 'Arhin Alex', '837215690', 'SAVINGS ', '', 'Deposit', 'Success ', '20', 'Arhin Alex', '0987654321', '490', '0548565587', '', '2023-07-08 08:59:30.811866', '', ''),
(74, 'niu7IpY3t0z5QyKJmBrT', '29', 'Sekina Ibrahim', '907843561', 'SAVINGS ', '', 'Deposit', 'Success ', '23', 'Sekina Ibrahim', '0987654321', '5', '0201957200', '', '2023-07-10 10:13:14.126734', '', ''),
(75, 'pWDrCtRNlHfEu5bOn9Sa', '28', 'Asante Samuel', '314579820', 'LOANS ', '', 'Deposit', 'Success ', '22', 'Asante Samuel', '0987654321', '1000', '059581368', '', '2023-07-10 10:17:27.970434', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  ADD PRIMARY KEY (`acctype_id`);

--
-- Indexes for table `ib_admin`
--
ALTER TABLE `ib_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `ib_clients`
--
ALTER TABLE `ib_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `ib_staff`
--
ALTER TABLE `ib_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  ADD PRIMARY KEY (`tr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  MODIFY `acctype_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ib_admin`
--
ALTER TABLE `ib_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  MODIFY `account_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ib_clients`
--
ALTER TABLE `ib_clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  MODIFY `notification_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ib_staff`
--
ALTER TABLE `ib_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  MODIFY `tr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
