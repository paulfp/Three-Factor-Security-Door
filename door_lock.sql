-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2017 at 03:22 PM
-- Server version: 5.5.55-0+deb8u1
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `door_lock`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_list`
--

CREATE TABLE IF NOT EXISTS `access_list` (
`user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `rfid_code` varchar(20) NOT NULL,
  `pin` char(6) NOT NULL,
  `sms_number` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `access_log`
--

CREATE TABLE IF NOT EXISTS `access_log` (
`access_id` int(11) NOT NULL,
  `rfid_presented` varchar(20) DEFAULT NULL,
  `rfid_presented_datetime` datetime DEFAULT NULL,
  `rfid_granted` tinyint(1) DEFAULT NULL,
  `pin_entered` char(6) DEFAULT NULL,
  `pin_entered_datetime` datetime DEFAULT NULL,
  `pin_granted` tinyint(1) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `smscode_entered` char(6) DEFAULT NULL,
  `smscode_entered_datetime` datetime DEFAULT NULL,
  `smscode_granted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `twilio_api_credentials`
--

CREATE TABLE IF NOT EXISTS `twilio_api_credentials` (
  `id` int(11) NOT NULL,
  `account_sid` varchar(50) NOT NULL,
  `auth_token` varchar(50) NOT NULL,
  `twilio_sms_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_list`
--
ALTER TABLE `access_list`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `rfid_code` (`rfid_code`), ADD UNIQUE KEY `image` (`image`);

--
-- Indexes for table `access_log`
--
ALTER TABLE `access_log`
 ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `twilio_api_credentials`
--
ALTER TABLE `twilio_api_credentials`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_list`
--
ALTER TABLE `access_list`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `access_log`
--
ALTER TABLE `access_log`
MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=116;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
