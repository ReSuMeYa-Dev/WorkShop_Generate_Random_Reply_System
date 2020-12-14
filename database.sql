-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 ธ.ค. 2020 เมื่อ 07:02 AM
-- เวอร์ชันของเซิร์ฟเวอร์: 10.4.11-MariaDB
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
-- Database: `nicedev`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `message`
--

INSERT INTO `message` (`message_id`, `message_value`) VALUES
(1, 'สวัสดีคุณ {name} {thank} ที่ใช้บริการ วันนี้มีข้อเสนอมาจาก {prefix} ทดสอบระบบ'),
(2, '{thank} คุณ {name} ที่ใช้บริการขอบเรา ');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `name`
--

CREATE TABLE `name` (
  `name_id` int(11) NOT NULL,
  `name_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `name`
--

INSERT INTO `name` (`name_id`, `name_value`) VALUES
(1, 'ทดสอบ 1'),
(2, 'ทดสอบ 2'),
(3, 'DevMyStyle'),
(4, 'Nice Dev'),
(5, 'ReSuMeYa Dev');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `prefix`
--

CREATE TABLE `prefix` (
  `prefix_id` int(11) NOT NULL,
  `prefix_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `prefix`
--

INSERT INTO `prefix` (`prefix_id`, `prefix_value`) VALUES
(1, 'นาย'),
(2, 'นาง'),
(3, 'นางสาว');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `thank`
--

CREATE TABLE `thank` (
  `thank_id` int(11) NOT NULL,
  `thank_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `thank`
--

INSERT INTO `thank` (`thank_id`, `thank_value`) VALUES
(1, 'ขอบคุณครับ'),
(2, 'ขอบคุณค่ะ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`name_id`);

--
-- Indexes for table `prefix`
--
ALTER TABLE `prefix`
  ADD PRIMARY KEY (`prefix_id`);

--
-- Indexes for table `thank`
--
ALTER TABLE `thank`
  ADD PRIMARY KEY (`thank_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `name`
--
ALTER TABLE `name`
  MODIFY `name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prefix`
--
ALTER TABLE `prefix`
  MODIFY `prefix_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thank`
--
ALTER TABLE `thank`
  MODIFY `thank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
