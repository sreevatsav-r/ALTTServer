-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2016 at 01:56 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(5) NOT NULL,
  `username` varchar(20) CHARACTER SET latin1 NOT NULL,
  `password` varchar(200) CHARACTER SET latin1 NOT NULL,
  `last_log` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin2 COLLATE=latin2_czech_cs;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `last_log`) VALUES
(1, 'raj', '65a1223dae83b8092c4edba0823a793c', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temp_users`
--

CREATE TABLE IF NOT EXISTS `temp_users` (
  `confirm_code` varchar(100) NOT NULL,
  `email_status` varchar(5) NOT NULL DEFAULT 'no',
`id` int(5) NOT NULL,
  `hid` varchar(8) NOT NULL,
  `hotelname` varchar(100) NOT NULL,
  `displayname` varchar(100) NOT NULL,
  `managername` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `num_tab` varchar(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `password` varchar(25) NOT NULL,
  `act_status` varchar(25) NOT NULL DEFAULT 'deactive',
  `sub_status` varchar(25) NOT NULL DEFAULT 'deactive',
  `reg_status` varchar(25) NOT NULL DEFAULT 'deactive',
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fromdate` date NOT NULL,
  `tilldate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_users`
--

INSERT INTO `temp_users` (`confirm_code`, `email_status`, `id`, `hid`, `hotelname`, `displayname`, `managername`, `phone`, `email`, `address`, `location`, `num_tab`, `amount`, `password`, `act_status`, `sub_status`, `reg_status`, `reg_time`, `fromdate`, `tilldate`) VALUES
('687e979b3b3adeeb105918291f4939f5', 'yes', 1, 'HH000001', 'Chilles', 'fortune', 'Thanmai', '7784925633', 'thanmai.nandanuru@gmail.com', 'SGGGGGGGGGGGGGGGGGGGGGGG', 'Andhra Pradesh', '10', 50000, 'j24ay76O', 'deactive', 'deactive', 'deactive', '2016-02-22 09:01:58', '2016-02-18', '2019-06-04'),
('2e56f3e770f2491b2cfb201c7d7d0a84', 'yes', 2, 'HH000002', 'kences', 'test 13', 'Bapu Siri', '7794813077', 'siribapu@gmail.com', '102,SV Hights co-operative colony,Opposite to Police guest house, Kadapa-516001', 'Arunachal Pradesh', '10', 50000, 'iUQ33O2l', 'deactive', 'deactive', 'deactive', '2016-02-22 09:31:10', '2016-02-12', '0000-00-00'),
('2cbb0ed49459373d0741b3a012f3e5e4', 'yes', 3, 'HH000003', 'Chilles', 'fortune', 'Raja Sekhar', '7794813077', 'prajasekhar935@gmail.com', 'T Sai Kumar', 'Andhra Pradesh', '10', 50000, 'BDajMMrX', 'deactive', 'deactive', 'deactive', '2016-02-22 09:41:23', '2016-02-22', '2019-06-11'),
('b8d9d1e62cbbc1a52b557f8a4978b646', 'no', 4, 'HH000004', 'Chilles', 'Chilles', 'Raja Sekhar', '7794813077', 'devi.nikitha@gmail.com', '102,SV Hights co-operative colony,Opposite to Police guest house, Kadapa-516001', 'Andhra Pradesh', '10', 50000, 'LfZXmpLV', 'deactive', 'deactive', 'deactive', '2016-02-22 09:50:03', '2016-02-22', '2019-01-15'),
('3bca1c4019407d3f264c8bc19d7ee0f3', 'no', 5, 'HH000004', 'Apple', 'Apple', 'Goverdhan', '7794813077', 'saigovardhan1111@gmail.com', 'hjfjdbfmndbmfnsdb', 'Andhra Pradesh', '85', 5555, 'gFW5UIKy', 'deactive', 'deactive', 'deactive', '2016-02-22 18:24:01', '2016-02-22', '2017-02-15'),
('3443b9e6e758a89232a71f32a806c3a5', 'yes', 6, 'HH000004', 'Forest', 'De Forest', 'Bharath', '7794813077', 'prajasekhar786@gmail.com', 'T Sai Kumar', 'Andhra Pradesh', '88', 88888, 'j0NPtzzG', 'deactive', 'deactive', 'deactive', '2016-02-22 18:27:33', '2016-02-22', '2017-02-22'),
('d6e5c139720c6bc44e2ccf2832322fcc', 'yes', 7, 'HH000005', 'KFC', 'KFC', 'Balaji', '88888888', 'bbalu01223@gmail.com', 'bdmnbsdv', 'Andhra Pradesh', '420', 50000, 'XKjU5PtJ', 'deactive', 'deactive', 'deactive', '2016-02-22 18:32:41', '2017-11-29', '2018-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(5) NOT NULL,
  `hid` varchar(8) NOT NULL,
  `hotelname` varchar(100) NOT NULL,
  `displayname` varchar(100) NOT NULL,
  `managername` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `num_tab` varchar(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `password` varchar(25) NOT NULL,
  `act_status` varchar(25) NOT NULL DEFAULT 'deactive',
  `sub_status` varchar(25) NOT NULL DEFAULT 'deactive',
  `reg_status` varchar(25) NOT NULL DEFAULT 'deactive',
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fromdate` date NOT NULL,
  `tilldate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hid`, `hotelname`, `displayname`, `managername`, `phone`, `email`, `address`, `location`, `num_tab`, `amount`, `password`, `act_status`, `sub_status`, `reg_status`, `reg_time`, `fromdate`, `tilldate`) VALUES
(1, 'HH000001', 'Chilles', 'fortune', 'Thanmai', '7784925633', 'thanmai.nandanuru@gmail.com', 'SGGGGGGGGGGGGGGGGGGGGGGG', 'Andhra Pradesh', '10', 50000, 'j24ay76O', 'deactive', 'active', 'active', '2016-02-22 09:03:40', '2016-02-09', '2016-05-12'),
(2, 'HH000002', 'kences', 'test 17', 'Bapu', '7794813077', 'siribapu@gmail.com', '102,SV Hights co-operative colony,Opposite to Police guest house, Kadapa-516001', 'Arunachal Pradesh', '10', 50000, 'iUQ33O2l', 'deactive', 'deactive', 'active', '2016-02-22 09:31:53', '2016-02-12', '2016-02-08'),
(3, 'HH000003', 'Chilles', 'fortune', 'Raja Sekhar', '7794813077', 'prajasekhar935@gmail.com', 'T Sai Kumar', 'Andhra Pradesh', '10', 50000, 'BDajMMrX', 'deactive', 'deactive', 'active', '2016-02-22 09:42:04', '2016-02-22', '2019-06-11'),
(4, 'HH000004', 'Forest', 'De Forest', 'Bharath', '7794813077', 'prajasekhar786@gmail.com', 'T Sai Kumar', 'Andhra Pradesh', '888', 88888, 'j0NPtzzG', 'deactive', 'deactive', 'active', '2016-02-22 18:29:46', '2016-02-22', '2017-02-22'),
(5, 'HH000005', 'KFC', 'KFC', 'Balaji', '88888888', 'bbalu01223@gmail.com', 'bdmnbsdv', 'Andhra Pradesh', '420', 50000, 'XKjU5PtJ', 'deactive', 'deactive', 'active', '2016-02-22 18:33:19', '2017-11-29', '2018-12-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_users`
--
ALTER TABLE `temp_users`
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
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `temp_users`
--
ALTER TABLE `temp_users`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
