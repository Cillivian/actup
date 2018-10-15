-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-06-14 12:26:24
-- 服务器版本： 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `actup`
--

-- --------------------------------------------------------

--
-- 表的结构 `playgroup`
--

DROP TABLE IF EXISTS `playgroup`;
CREATE TABLE IF NOT EXISTS `playgroup` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_groupid` int(11) NOT NULL,
  `_username` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `playgroup`
--

INSERT INTO `playgroup` (`_id`, `_groupid`, `_username`) VALUES
(36, 9, '1'),
(37, 10, 'lsh'),
(38, 11, 'lsh'),
(6, 1, 'xcf'),
(10, 1, 'xcf'),
(21, 1, 'xcf'),
(22, 1, 'linsq'),
(23, 1, 'linsq'),
(24, 6, 'linsq'),
(25, 1, 'linsq'),
(26, 1, 'linsq'),
(27, 6, 'linsq'),
(28, 4, 'linsq'),
(29, 1, '林水泉'),
(30, 7, '林水泉'),
(31, 1, '1'),
(32, 1, '1'),
(33, 7, '1'),
(34, 8, '1'),
(35, 1, '1'),
(39, 5, 'lsh'),
(40, 9, 'lsh'),
(41, 12, 'aaa'),
(42, 13, 'test'),
(43, 12, '1'),
(44, 9, 'linsq'),
(45, 6, 'linsq'),
(46, 8, 'linsq'),
(47, 12, '1'),
(48, 15, '1'),
(49, 14, 'linsq');

-- --------------------------------------------------------

--
-- 表的结构 `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_kind` varchar(10) COLLATE utf8_bin NOT NULL,
  `_username` varchar(50) COLLATE utf8_bin NOT NULL,
  `_rantname` varchar(100) COLLATE utf8_bin NOT NULL,
  `_time` varchar(50) COLLATE utf8_bin NOT NULL,
  `_amount` varchar(10) COLLATE utf8_bin NOT NULL,
  `_isshow` varchar(20) COLLATE utf8_bin NOT NULL,
  `_intro` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `request`
--

INSERT INTO `request` (`_id`, `_kind`, `_username`, `_rantname`, `_time`, `_amount`, `_isshow`, `_intro`) VALUES
(12, '约饭', 'aaa', '六茶', '6.1', '2', '妹子', ''),
(11, '约跑', 'lsh', '操场', '明天', '2', '任何人可见', '111'),
(10, '电影', 'lsh', 'gogo', 'mingtian', '3', '妹子', ''),
(9, '约饭', '1', '二饭', '明天', '2', '汉纸', 'gaygay'),
(6, '学习', 'linsq', 'huagong', '11', '11', '汉纸', '11'),
(7, '约饭', '林水泉', '111', '111', '111', '汉纸', '1111'),
(8, '约饭', '1', '穗石', '周四', '2', '任何人可见', '来来来'),
(13, '约饭', 'test', '益和堂', '06.08', '2', '妹子', ''),
(14, '约饭', 'linsq', '11', '11', '11', '任何人可见', '1111'),
(15, '约饭', '1', '212', '123', '123', '妹子', '12321');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(20) COLLATE utf8_bin NOT NULL,
  `sex` varchar(10) COLLATE utf8_bin NOT NULL,
  `school` varchar(20) COLLATE utf8_bin NOT NULL,
  `academy` varchar(20) COLLATE utf8_bin NOT NULL,
  `phone` varchar(11) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`username`, `sex`, `school`, `academy`, `phone`, `id`, `password`) VALUES
('1', '汉纸', '1', '1', '', 1, '1'),
('linsq', '汉纸', 'huagong', 'se', '', 4, '111111'),
('林水泉', '汉纸', '华工', '软件', '', 5, '123456'),
('lsh', '妹子', '11', '11', '', 6, '111'),
('aaa', '汉纸', 'scut', 'se', '', 7, '123'),
('test', '汉纸', 'SCUT', 'SE', '', 8, '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
