-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2017 at 10:32 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mproduct`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`) VALUES
(1, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `d_id` int(10) NOT NULL,
  `o_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `d_qty` int(11) NOT NULL,
  `d_subtotal` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`d_id`, `o_id`, `p_id`, `d_qty`, `d_subtotal`) VALUES
(1, 1, 1, 1, 349),
(2, 2, 1, 7, 2443),
(3, 3, 2, 1, 349),
(4, 5, 1, 1, 349),
(5, 6, 1, 1, 349),
(6, 7, 2, 1, 349),
(7, 8, 1, 3, 1047),
(8, 9, 1, 1, 349),
(9, 10, 2, 9, 3141),
(10, 11, 1, 1, 3000),
(11, 12, 1, 1, 3000),
(12, 13, 1, 1, 3000),
(13, 14, 4, 1, 5000),
(14, 14, 1, 1, 5500);

-- --------------------------------------------------------

--
-- Table structure for table `order_head`
--

CREATE TABLE `order_head` (
  `o_id` int(10) NOT NULL,
  `o_dttm` datetime NOT NULL,
  `o_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_addr` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `o_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `o_qty` int(11) NOT NULL,
  `o_total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_head`
--

INSERT INTO `order_head` (`o_id`, `o_dttm`, `o_name`, `o_addr`, `o_email`, `o_phone`, `o_qty`, `o_total`) VALUES
(1, '2017-12-23 14:21:44', 'cddfsdf', 'dsfsedfsdfsef', 'erwer@gmail.com', '095326413', 0, 0),
(2, '2017-12-23 16:21:54', 'charn', '171', 'charn@gmail.com', '0969653277', 0, 0),
(3, '2017-12-23 16:22:35', 'sdasdsa', 'sdasd', 'cad@gmail.com', '09658743211', 0, 0),
(4, '2017-12-23 16:23:32', '', '', '', '', 0, 0),
(5, '2017-12-23 16:24:05', 'charn', 'qqqq', 'qqq@gmail.com', '0965832144', 0, 0),
(6, '2017-12-23 16:28:27', 'cha', '171 หมู่ 8', 'charn1@gmail.com', '0810365710', 0, 0),
(7, '2017-12-23 16:28:57', 'sdasd', 'sadasd', 'sadas@gmail.com', '0552547456', 0, 0),
(8, '2017-12-23 16:37:12', 'charn', 'CSCZSC', 'yugioh2553@hotmail.com', '0878796277', 0, 0),
(9, '2017-12-23 16:55:44', 'charn', 'qweqe', 'qqq@gmail.com', '0878796277', 0, 349),
(10, '2017-12-23 17:00:47', 'charn', ';l,,l,l;,', 'charn2539charn@gmail.com', '0878796277', 9, 3141),
(11, '2017-12-23 20:19:50', 'ddd', 'dddd', 'ddd@ddd.com', 'ddd', 1, 3000),
(12, '2017-12-23 20:20:45', 'eeee', 'eeee', 'ssss@ssss.com', '10', 1, 3000),
(13, '2017-12-23 22:25:07', 'ddddddddddd', 'ddddddddddddddd', 'ddd@ddd.com', '0810365710', 1, 3000),
(14, '2017-12-24 22:31:32', 'Pee', '179 หมู่1 ต.หนองกอมเกาะ อ.เมือง จ.หนองคาย 43000', 'pee1234@gmail.com', '0967894523', 2, 10500);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_detail` text COLLATE utf8_unicode_ci,
  `p_price` float DEFAULT NULL,
  `p_pic` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_pic`, `c_id`) VALUES
(1, 'CBR 1000RR', 'CBR 1000RR \r\nรายละเอียดการเช่า\r\n-การเช่ารถคือวันต่อวัน\r\n-ราคารวมค่ามัดจำแล้ว\r\nเอกสารสำหรับเช่ารถ:\r\n-บัตรประชาชน / หนังสือเดินทาง\r\n-ใบขับขี่\r\n-บัตรเครดิต \r\n\r\n', 5500, 'bigbike1.jpg', '1'),
(2, 'ducati 1199', 'ducati 1199\r\nรายละเอียดการเช่า\r\n-การเช่ารถคือวันต่อวัน\r\n-ราคารวมค่ามัดจำแล้ว\r\nเอกสารสำหรับเช่ารถ:\r\n-บัตรประชาชน / หนังสือเดินทาง\r\n-ใบขับขี่\r\n-บัตรเครดิต \r\n', 5000, '2.jpg', '1'),
(3, 'R1M', 'R1M\r\nรายละเอียดการเช่า\r\n-การเช่ารถคือวันต่อวัน\r\n-ราคารวมค่ามัดจำแล้ว\r\nเอกสารสำหรับเช่ารถ:\r\n-บัตรประชาชน / หนังสือเดินทาง\r\n-ใบขับขี่\r\n-บัตรเครดิต ', 6500, '3.jpg', '1'),
(4, 'ZX10R', 'ZX10R\r\nรายละเอียดการเช่า\r\n-การเช่ารถคือวันต่อวัน\r\n-ราคารวมค่ามัดจำแล้ว\r\nเอกสารสำหรับเช่ารถ:\r\n-บัตรประชาชน / หนังสือเดินทาง\r\n-ใบขับขี่\r\n-บัตรเครดิต', 5000, '4.jpg', '1'),
(5, 'H2R', 'H2R\r\nรายละเอียดการเช่า\r\n-การเช่ารถคือวันต่อวัน\r\n-ราคารวมค่ามัดจำแล้ว\r\nเอกสารสำหรับเช่ารถ:\r\n-บัตรประชาชน / หนังสือเดินทาง\r\n-ใบขับขี่\r\n-บัตรเครดิต', 7000, '5.jpg', '1'),
(6, 'S1000RR', 'S1000RR\r\nรายละเอียดการเช่า\r\n-การเช่ารถคือวันต่อวัน\r\n-ราคารวมค่ามัดจำแล้ว\r\nเอกสารสำหรับเช่ารถ:\r\n-บัตรประชาชน / หนังสือเดินทาง\r\n-ใบขับขี่\r\n-บัตรเครดิต', 6500, '6.jpg', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `order_head`
--
ALTER TABLE `order_head`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_head`
--
ALTER TABLE `order_head`
  MODIFY `o_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
