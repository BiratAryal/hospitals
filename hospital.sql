-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 01, 2018 at 10:45 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctorreport`
--

CREATE TABLE `doctorreport` (
  `id` int(11) NOT NULL,
  `doctor_username` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `symptoms` longtext NOT NULL,
  `tests` longtext NOT NULL,
  `test_results` longtext NOT NULL,
  `medical` longtext NOT NULL,
  `doctor_type` varchar(20) NOT NULL,
  `doctor_price` int(11) NOT NULL,
  `test_price` int(11) NOT NULL,
  `medical_price` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `patient_id`, `status`, `symptoms`, `tests`, `test_results`, `medical`, `doctor_type`, `doctor_price`, `test_price`, `medical_price`, `date`, `month`, `year`) VALUES
(1, 5, 'recdoctor', '', '', '', '', 'NormalDoctor', 20000, 0, 0, 1, 7, 2018),
(2, 5, 'recdoctor', '', '', '', '', 'DentalDoctor', 30000, 0, 0, 1, 7, 2018),
(3, 5, 'recdoctor', '', '', '', '', 'WomenDoctor', 40000, 0, 0, 1, 7, 2018),
(4, 5, 'recdoctor', '', '', '', '', 'NormalDoctor', 20000, 0, 0, 1, 7, 2018);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `bloodgroup` varchar(5) NOT NULL,
  `birthyear` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `fname`, `sname`, `email`, `address`, `phone`, `sex`, `bloodgroup`, `birthyear`) VALUES
(3, 'Sabal', 'Sharma', 'sharmasabal7@gmail.com', 'Hetauda', '9843650811', 'Male', 'B', 2001),
(4, 'Shashwat', 'Acharya', 'kingsha.shashwat@gmail.com', 'Chabahil', '9861408539', 'Male', 'B', 1995),
(5, 'Akash', 'Bhattarai', 'akashbhattarai@gmail.com', 'Balkot', '9860012345', 'Male', 'AB', 1995);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_no` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `patientsinroom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fname`, `sname`, `type`) VALUES
('Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Sambad', 'Bidari', 'Admin'),
('dental', '407d3b022586f7a2eb8564734237579b62420ef2', 'Dental', 'Dental', 'DentalDoctor'),
('doctor', '1f0160076c9f42a157f0a8f0dcc68e02ff69045b', 'Doctor', 'Doctor', 'Doctor'),
('lab', '3953f9ddf975ab5097ee468d99555c5b441169bf', 'Lab', 'Lab', 'Laboratory'),
('pharmacy', 'adfa59cc50d2bd2ce3af0061ed4925fdc37019ba', 'Pharmacy', 'Pharmacy', 'Pharmacy'),
('reception', '44057e3fd5f18ebc77c507f7ad4f03a4b25aafd6', 'Reception', 'Reception', 'Reception'),
('women', 'b3ae4f722a30578fac0191593f82a69346a877d0', 'Women', 'Women', 'WomenDoctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctorreport`
--
ALTER TABLE `doctorreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctorreport`
--
ALTER TABLE `doctorreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
