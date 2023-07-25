-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2019 at 12:08 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--
CREATE DATABASE IF NOT EXISTS `my_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `my_db`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `c_id` int(11) NOT NULL,
  `ref_p_id` int(11) NOT NULL,
  `c_detail` text NOT NULL,
  `c_status` int(1) NOT NULL DEFAULT '0' COMMENT '0 = hide, 1 =show',
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='เก็บข้อมูลการแสดงความคิดเห็นต่อสินค้า';

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`c_id`, `ref_p_id`, `c_detail`, `c_status`, `c_date`) VALUES
(1, 6, 'ดีมากๆ', 0, '2019-01-17 13:01:04'),
(2, 12, 'ราคาแพงมาก', 0, '2019-01-17 13:01:55'),
(3, 14, 'ใช้ดีมากๆ แต่แพงมากๆด้วย', 0, '2019-01-17 13:04:55'),
(4, 14, 'ok', 0, '2019-01-17 13:20:38'),
(5, 14, 'ok มากๆ', 0, '2019-01-17 13:20:46'),
(6, 16, 'ดีมากๆ', 0, '2019-01-17 13:21:15'),
(7, 16, 'ดีดี', 0, '2019-01-17 13:21:22'),
(8, 16, 'ok ', 0, '2019-01-17 13:22:31'),
(9, 14, 'ok ok ', 0, '2019-01-17 13:24:53'),
(10, 14, 'ไอ้....', 0, '2019-01-17 13:25:35'),
(11, 15, 'ok', 1, '2019-01-19 10:18:43'),
(12, 15, 'ไอ้...', 1, '2019-01-19 10:19:06'),
(13, 15, 'สินค้าดีมากๆ', 1, '2019-01-20 12:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_counter`
--

CREATE TABLE `tbl_counter` (
  `c_id` int(11) NOT NULL,
  `c_ipadr` varchar(50) NOT NULL,
  `c_datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_counter`
--

INSERT INTO `tbl_counter` (`c_id`, `c_ipadr`, `c_datesave`) VALUES
(1, '127.0.0.1', '2019-01-21 13:56:21'),
(2, '127.0.0.1', '2019-01-21 13:56:37'),
(3, '127.0.0.1', '2019-01-22 13:56:44'),
(4, '127.0.0.1', '2019-01-23 15:03:42'),
(5, '127.0.0.1', '2019-01-23 15:04:07'),
(6, '127.0.0.1', '2019-01-23 15:04:07'),
(7, '127.0.0.1', '2019-01-23 15:04:07'),
(8, '127.0.0.1', '2019-01-23 15:04:07'),
(9, '127.0.0.1', '2019-01-23 15:04:15'),
(10, '127.0.0.1', '2019-01-23 15:04:15'),
(11, '127.0.0.1', '2019-01-23 15:20:02'),
(12, '127.0.0.1', '2019-01-23 15:23:07'),
(13, '127.0.0.1', '2019-01-23 15:23:09'),
(14, '127.0.0.1', '2019-01-23 15:24:02'),
(15, '127.0.0.1', '2019-01-24 10:51:25'),
(16, '127.0.0.1', '2019-01-24 10:51:42'),
(17, '127.0.0.1', '2019-01-24 11:50:51'),
(18, '127.0.0.1', '2019-01-24 11:51:43'),
(19, '127.0.0.1', '2019-01-24 11:51:44'),
(20, '127.0.0.1', '2019-01-24 11:52:07'),
(21, '127.0.0.1', '2019-01-24 12:47:08'),
(22, '127.0.0.1', '2019-01-24 12:47:31'),
(23, '127.0.0.1', '2019-01-25 13:26:56'),
(24, '127.0.0.1', '2019-01-25 13:31:18'),
(25, '127.0.0.1', '2019-01-25 13:31:35'),
(26, '127.0.0.1', '2019-01-25 13:31:43'),
(27, '127.0.0.1', '2019-01-25 13:35:44'),
(28, '127.0.0.1', '2019-01-25 13:36:02'),
(29, '127.0.0.1', '2019-01-25 14:29:45'),
(30, '127.0.0.1', '2019-01-25 14:29:59'),
(31, '127.0.0.1', '2019-01-25 14:33:45'),
(32, '127.0.0.1', '2019-01-25 14:40:04'),
(33, '127.0.0.1', '2019-01-26 10:29:48'),
(34, '127.0.0.1', '2019-01-27 03:19:51'),
(35, '127.0.0.1', '2019-01-28 12:17:52'),
(36, '127.0.0.1', '2019-01-28 12:46:43'),
(37, '127.0.0.1', '2019-01-28 12:47:10'),
(38, '127.0.0.1', '2019-01-28 12:47:10'),
(39, '127.0.0.1', '2019-01-28 12:47:16'),
(40, '127.0.0.1', '2019-01-28 12:47:27'),
(41, '127.0.0.1', '2019-01-29 14:24:47'),
(42, '127.0.0.1', '2019-01-30 09:56:01'),
(43, '127.0.0.1', '2019-01-30 10:00:06'),
(44, '127.0.0.1', '2019-01-30 10:00:09'),
(45, '127.0.0.1', '2019-01-30 10:00:13'),
(46, '127.0.0.1', '2019-01-30 10:00:13'),
(47, '127.0.0.1', '2019-01-30 10:00:13'),
(48, '127.0.0.1', '2019-01-30 10:00:14'),
(49, '127.0.0.1', '2019-01-30 10:00:14'),
(50, '127.0.0.1', '2019-01-30 10:02:36'),
(51, '127.0.0.1', '2019-01-30 10:02:39'),
(52, '127.0.0.1', '2019-01-30 10:02:40'),
(53, '127.0.0.1', '2019-01-30 10:02:40'),
(54, '127.0.0.1', '2019-01-30 10:19:16'),
(55, '127.0.0.1', '2019-01-30 10:20:30'),
(56, '127.0.0.1', '2019-01-30 12:41:38'),
(57, '127.0.0.1', '2019-01-30 12:47:55'),
(58, '127.0.0.1', '2019-01-30 12:52:20'),
(59, '127.0.0.1', '2019-01-30 12:52:21'),
(60, '127.0.0.1', '2019-01-30 12:52:21'),
(61, '127.0.0.1', '2019-01-30 12:53:16'),
(62, '127.0.0.1', '2019-01-30 12:53:16'),
(63, '127.0.0.1', '2019-01-30 12:56:01'),
(64, '127.0.0.1', '2019-01-30 13:15:53'),
(65, '127.0.0.1', '2019-01-30 13:25:04'),
(66, '127.0.0.1', '2019-01-30 13:27:30'),
(67, '127.0.0.1', '2019-01-31 06:56:52'),
(68, '127.0.0.1', '2019-01-31 07:06:23'),
(69, '127.0.0.1', '2019-01-31 07:22:02'),
(70, '127.0.0.1', '2019-01-31 12:25:37'),
(71, '127.0.0.1', '2019-01-31 12:33:47'),
(72, '127.0.0.1', '2019-01-31 12:33:47'),
(73, '127.0.0.1', '2019-02-01 06:32:15'),
(74, '127.0.0.1', '2019-02-01 06:39:09'),
(75, '127.0.0.1', '2019-02-01 06:39:09'),
(76, '127.0.0.1', '2019-02-01 06:41:40'),
(77, '127.0.0.1', '2019-02-01 06:41:55'),
(78, '127.0.0.1', '2019-02-04 10:06:49'),
(79, '127.0.0.1', '2019-02-05 15:07:57'),
(80, '127.0.0.1', '2019-02-06 10:56:56'),
(81, '127.0.0.1', '2019-02-07 12:46:53'),
(82, '127.0.0.1', '2019-02-07 12:47:35'),
(83, '127.0.0.1', '2019-02-07 12:47:50'),
(84, '127.0.0.1', '2019-02-07 12:47:51'),
(85, '127.0.0.1', '2019-02-07 12:53:15'),
(86, '127.0.0.1', '2019-02-07 12:57:05'),
(87, '127.0.0.1', '2019-02-07 13:01:42'),
(88, '127.0.0.1', '2019-02-07 13:02:17'),
(89, '127.0.0.1', '2019-02-07 13:02:50'),
(90, '127.0.0.1', '2019-02-07 13:02:54'),
(91, '127.0.0.1', '2019-02-07 13:03:17'),
(92, '127.0.0.1', '2019-02-07 13:03:25'),
(93, '127.0.0.1', '2019-02-07 13:04:08'),
(94, '127.0.0.1', '2019-02-07 13:04:17'),
(95, '127.0.0.1', '2019-02-07 13:07:20'),
(96, '127.0.0.1', '2019-02-23 13:26:09'),
(97, '127.0.0.1', '2019-04-07 03:24:30'),
(98, '127.0.0.1', '2019-04-07 03:25:19'),
(99, '127.0.0.1', '2019-07-31 02:45:53'),
(100, '127.0.0.1', '2019-07-31 02:48:11'),
(101, '127.0.0.1', '2019-07-31 02:52:00'),
(102, '127.0.0.1', '2019-08-09 09:41:11'),
(103, '127.0.0.1', '2019-08-09 10:01:09'),
(104, '127.0.0.1', '2019-08-09 10:02:18'),
(105, '127.0.0.1', '2019-08-09 10:03:01'),
(106, '127.0.0.1', '2019-08-09 10:03:02'),
(107, '127.0.0.1', '2019-08-09 10:03:02'),
(108, '127.0.0.1', '2019-08-09 10:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_log`
--

CREATE TABLE `tbl_login_log` (
  `log_id` int(11) NOT NULL,
  `ref_m_id` int(11) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='เก็บประวัติการ login ';

--
-- Dumping data for table `tbl_login_log`
--

INSERT INTO `tbl_login_log` (`log_id`, `ref_m_id`, `log_date`) VALUES
(1, 3, '2018-01-07 12:56:13'),
(2, 3, '2018-01-07 12:56:13'),
(3, 2, '2018-01-07 12:56:13'),
(4, 2, '2018-01-07 12:56:13'),
(5, 2, '2018-01-07 12:56:13'),
(6, 3, '2018-01-07 12:56:13'),
(7, 2, '2018-01-07 12:56:13'),
(8, 3, '2018-01-07 12:56:13'),
(9, 3, '2018-01-07 12:56:13'),
(10, 2, '2018-01-07 12:56:13'),
(11, 2, '2019-01-07 12:56:13'),
(12, 2, '2019-01-07 12:56:13'),
(13, 3, '2019-01-07 12:56:13'),
(14, 2, '2019-01-07 12:56:13'),
(15, 3, '2019-01-07 12:56:13'),
(16, 3, '2019-01-07 12:56:13'),
(17, 2, '2019-01-07 12:56:13'),
(18, 2, '2019-01-07 12:56:13'),
(19, 2, '2019-01-07 12:56:13'),
(20, 3, '2019-01-07 12:56:13'),
(21, 2, '2019-01-07 12:56:13'),
(22, 3, '2019-01-07 12:56:13'),
(23, 3, '2019-01-07 12:56:13'),
(24, 2, '2019-01-07 12:59:13'),
(25, 2, '2019-01-08 12:56:13'),
(26, 2, '2019-01-08 12:56:13'),
(27, 3, '2019-01-08 12:56:13'),
(28, 2, '2019-01-07 12:56:13'),
(29, 3, '2019-01-09 12:24:34'),
(30, 2, '2019-01-09 12:24:51'),
(31, 2, '2019-01-12 14:51:00'),
(32, 2, '2019-02-07 12:53:45'),
(33, 2, '2019-02-07 13:01:49'),
(34, 2, '2019-04-07 03:25:13'),
(35, 2, '2019-07-31 02:48:09'),
(36, 2, '2019-08-09 10:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `m_id` int(11) NOT NULL,
  `m_username` varchar(50) NOT NULL,
  `m_password` varchar(128) NOT NULL,
  `m_fname` varchar(20) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_lname` varchar(100) NOT NULL,
  `m_email` varchar(50) NOT NULL,
  `m_phone` varchar(20) NOT NULL,
  `m_img` varchar(50) NOT NULL,
  `m_level` varchar(10) NOT NULL,
  `m_datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางข้อมูลสมาชิก';

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`m_id`, `m_username`, `m_password`, `m_fname`, `m_name`, `m_lname`, `m_email`, `m_phone`, `m_img`, `m_level`, `m_datesave`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'นาย', 'testing', 'system', 'user@user.com', '091111111', '52523078720181210_140522.png', 'ADMIN', '2018-12-08 00:44:59'),
(2, 'member', 'aa08769cdcb26674c6706093503ff0a3', 'นางสาว', 'user23', 'test system3', 'aa3@g.com', '096547464', '207295879320190103_221249.png', 'MEMBER', '2018-12-08 00:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prd`
--

CREATE TABLE `tbl_prd` (
  `p_id` int(11) NOT NULL,
  `ref_m_id` int(11) NOT NULL DEFAULT '0' COMMENT 'รหัสของคนเพิ่มข้อมูล',
  `ref_t_id` int(11) NOT NULL COMMENT 'รหัสประเทภสินค้า',
  `p_name` varchar(150) NOT NULL COMMENT 'ชื่อสินค้า',
  `p_intro` varchar(150) NOT NULL COMMENT 'รายละเอียดสั้นๆ',
  `p_detail` text NOT NULL,
  `p_price` float(10,2) NOT NULL,
  `p_img` varchar(100) DEFAULT NULL,
  `p_view` int(11) NOT NULL DEFAULT '0',
  `p_m_name` varchar(50) NOT NULL COMMENT 'ชื่อคนแก้สินค้า',
  `p_m_edit_date` datetime NOT NULL COMMENT 'ว/ด/ป ที่แก้สินค้า',
  `p_datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางเก็บข้อมูลสินค้า';

--
-- Dumping data for table `tbl_prd`
--

INSERT INTO `tbl_prd` (`p_id`, `ref_m_id`, `ref_t_id`, `p_name`, `p_intro`, `p_detail`, `p_price`, `p_img`, `p_view`, `p_m_name`, `p_m_edit_date`, `p_datesave`) VALUES
(3, 1, 1, 'iphonex', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 100.00, '98126995220181209_183535.png', 11, '', '0000-00-00 00:00:00', '2018-10-14 06:49:00'),
(4, 1, 2, 'ipad', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 200.00, '98126995220181209_183535.png', 39, '', '0000-00-00 00:00:00', '2018-10-14 06:49:00'),
(5, 1, 1, 'iphonex', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 300.00, '98126995220181209_183535.png', 10, '', '0000-00-00 00:00:00', '2018-10-14 06:49:00'),
(6, 1, 2, 'ipad', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 400.00, '98126995220181209_183535.png', 34, '', '0000-00-00 00:00:00', '2018-10-14 06:49:00'),
(7, 1, 1, 'iphonex', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 100.00, '98126995220181209_183535.png', 11, '', '0000-00-00 00:00:00', '2018-10-14 06:49:00'),
(8, 1, 2, 'ipad', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 200.00, '98126995220181209_183535.png', 33, '', '0000-00-00 00:00:00', '2018-10-14 06:49:00'),
(9, 0, 1, 'iphone x', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 29999.00, '98126995220181209_183535.png', 0, '', '0000-00-00 00:00:00', '2018-12-02 08:37:32'),
(10, 0, 2, 'ipad', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 10000.00, '98126995220181209_183535.png', 0, '', '0000-00-00 00:00:00', '2018-12-02 08:40:09'),
(11, 0, 6, 'mobile 9999', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 9999.00, '98126995220181209_183535.png', 0, '', '0000-00-00 00:00:00', '2018-12-02 08:43:31'),
(12, 0, 1, 'testing', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 999.00, '98126995220181209_183535.png', 10, '', '0000-00-00 00:00:00', '2018-12-09 11:30:04'),
(13, 0, 9, 'iphone xx', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">\r\nstart The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 999.00, '98126995220181209_183535.png', 15, 'member', '2019-01-06 20:24:36', '2018-12-09 11:35:35'),
(14, 20, 1, 'aaaaaa', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 33333.00, '98126995220181209_183535.png', 26, 'user23', '2019-01-05 12:24:20', '2019-01-01 08:59:36'),
(15, 20, 2, 'bbbb', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 111.00, '98126995220181209_183535.png', 29, 'member', '2019-01-06 21:17:44', '2019-01-01 09:00:57'),
(16, 1, 9, 'kkkkk', 'สินค้าราคาถูก ที่นี่ที่เดียว', '<h3><span style=\"color:#2980b9\">The standard Lorem Ipsum passage, used since the 1500s</span></h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3><span style=\"color:#c0392b\">1914 translation by H. Rackham</span></h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 1000.00, '98126995220181209_183535.png', 25, 'member', '2019-01-06 21:19:35', '2019-01-01 09:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prd_type`
--

CREATE TABLE `tbl_prd_type` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางเก็บข้อมูลประเภทสินค้า';

--
-- Dumping data for table `tbl_prd_type`
--

INSERT INTO `tbl_prd_type` (`t_id`, `t_name`) VALUES
(1, 'IphoneXS'),
(2, 'Ipad'),
(3, 'abc'),
(7, 'imac1234'),
(9, 'Iphone xx'),
(10, 'คอมพิวเตอร์'),
(11, 'rrrr'),
(12, 'dsfs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prd_update_log`
--

CREATE TABLE `tbl_prd_update_log` (
  `lid` int(11) NOT NULL,
  `ref_p_id` int(11) NOT NULL,
  `ref_m_id` int(11) NOT NULL,
  `l_date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='เก็บประวัติของคนที่เข้ามาแก้ไขสินค้า';

--
-- Dumping data for table `tbl_prd_update_log`
--

INSERT INTO `tbl_prd_update_log` (`lid`, `ref_p_id`, `ref_m_id`, `l_date_save`) VALUES
(1, 16, 2, '2019-01-06 05:45:43'),
(2, 16, 2, '2019-01-06 05:46:31'),
(3, 15, 2, '2019-01-06 05:47:16'),
(4, 13, 3, '2019-01-06 13:24:43'),
(5, 15, 3, '2019-01-06 14:13:59'),
(6, 15, 3, '2019-01-06 14:15:55'),
(7, 15, 3, '2019-01-06 14:17:50'),
(8, 16, 3, '2019-01-06 14:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_problem`
--

CREATE TABLE `tbl_problem` (
  `p_id` int(11) NOT NULL,
  `p_detail` varchar(300) NOT NULL,
  `p_email` varchar(50) NOT NULL,
  `p_phone` varchar(20) NOT NULL,
  `p_datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางสำหรับแจ้งปัญหาการใช้งานเว็บไซต์';

--
-- Dumping data for table `tbl_problem`
--

INSERT INTO `tbl_problem` (`p_id`, `p_detail`, `p_email`, `p_phone`, `p_datesave`) VALUES
(1, 'ปัญหา', 'test@g.com', '0999999999', '2019-01-24 11:49:01'),
(2, 'aaaa', 'test@g.com', '0999999999', '2019-01-24 11:49:36'),
(3, 'เว็บโหลดช้า', 'test@g.com', '0999999999', '2019-01-24 11:50:38'),
(4, 'Form แจ้งปัญหาการใช้งานเว็บไซต์', 'a@g.com', '098988988999', '2019-01-24 11:52:05'),
(5, 'testing', 'test@abc.com', '09934353455', '2019-01-24 12:47:29'),
(6, 'ddd', 'test@g.com', '0999999999', '2019-01-25 14:33:43'),
(7, 'ddd', 'test@g.com', '0999999999', '2019-01-25 14:33:43'),
(8, 'ระบบ login ใช้งานไม่ได้', 'test@g.com', '0999999999', '2019-01-25 14:35:12'),
(9, 'not login ', 'a@g.com', '09934353455', '2019-01-25 14:36:43'),
(10, 'system good', 'test@g.com', '0999999999', '2019-01-25 14:38:44'),
(11, 'ระบบใช้งานไม่ได้', 'test@abc.com', '0999999999', '2019-01-25 14:39:02'),
(12, 'kkkkk', 'test@g.com', '0999999999', '2019-01-25 14:40:02'),
(13, 'hello', 'devbanban@gmail.com', '0999999999', '2019-01-26 10:55:34'),
(14, 'hello', 'devbanban@gmail.com', '0999999999', '2019-01-26 10:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `s_id` int(11) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `s_status` varchar(5) NOT NULL,
  `s_link` varchar(200) NOT NULL,
  `s_img` varchar(100) NOT NULL,
  `s_datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_counter`
--
ALTER TABLE `tbl_counter`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_login_log`
--
ALTER TABLE `tbl_login_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `tbl_prd`
--
ALTER TABLE `tbl_prd`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_prd_type`
--
ALTER TABLE `tbl_prd_type`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `tbl_prd_update_log`
--
ALTER TABLE `tbl_prd_update_log`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `tbl_problem`
--
ALTER TABLE `tbl_problem`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_counter`
--
ALTER TABLE `tbl_counter`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tbl_login_log`
--
ALTER TABLE `tbl_login_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_prd`
--
ALTER TABLE `tbl_prd`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_prd_type`
--
ALTER TABLE `tbl_prd_type`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_prd_update_log`
--
ALTER TABLE `tbl_prd_update_log`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_problem`
--
ALTER TABLE `tbl_problem`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
