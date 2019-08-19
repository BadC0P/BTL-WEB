-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 03:45 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcntt`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhsachgv`
--

CREATE TABLE `danhsachgv` (
  `MaGV` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaMH` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhsachsv`
--

CREATE TABLE `danhsachsv` (
  `MaSV` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaMH` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhsachsv`
--

INSERT INTO `danhsachsv` (`MaSV`, `MaMH`) VALUES
('3', 'mh1'),
('4', 'mh1'),
('5', 'mh1'),
('6', 'mh1'),
('7', 'mh1');

-- --------------------------------------------------------

--
-- Table structure for table `diemdanh`
--

CREATE TABLE `diemdanh` (
  `msv` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaMH` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay` date DEFAULT NULL,
  `trangthai` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diemdanh`
--

INSERT INTO `diemdanh` (`msv`, `MaMH`, `ngay`, `trangthai`) VALUES
('1651060710', 'mh1', '2019-08-19', '0'),
('1651060710', 'mh1', '2019-08-19', '1'),
('1651060710', 'mh1', '2019-08-19', '0'),
('1651060710', 'mh1', '2019-08-19', '1'),
('1651060710', 'mh1', '2019-08-19', '0');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMH` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenMH` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LichHoc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiethoc` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`MaMH`, `TenMH`, `LichHoc`, `tiethoc`) VALUES
('mh1', 'cong nghe web', 'thu: 2,4,6', 'tiet: 7,8,9');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `idtt` mediumint(11) UNSIGNED NOT NULL,
  `tieudett` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidungtt` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`idtt`, `tieudett`, `noidungtt`) VALUES
(2, 'Ã¡Ä‘Ã¢sÄ‘Ã¡', 'Ã¡Ä‘Ã¢sdáº¥dÃ¡');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creatdate` date DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ho_ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lop` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msv` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `creatdate`, `role`, `ho_ten`, `lop`, `msv`) VALUES
(1, 'admin', 'admin', 'hoangmd62@wru.vn', '2019-08-19', 'admin', 'Mai Đình Hoàng', NULL, NULL),
(2, 'phong', 'phong', 'phongtg62@wru.vn', '2019-08-19', 'teacher', 'Trân Gia Phong', NULL, NULL),
(3, 'abcdef', 'abcdef', 'abcdef62@wru.vn', '2019-08-19', 'student', 'Trân Văn A', '58TH2', '1651060710'),
(4, 'abcdef', 'abcdef', 'abcdef62@wru.vn', '2019-08-19', 'student', 'Trân Văn A', '58TH2', '1651060710'),
(5, 'abcdef', 'abcdef', 'abcdef62@wru.vn', '2019-08-19', 'student', 'Trân Văn A', '58TH2', '1651060710'),
(6, 'abcdef', 'abcdef', 'abcdef62@wru.vn', '2019-08-19', 'student', 'Trân Văn A', '58TH2', '1651060710'),
(7, 'abcdef', 'abcdef', 'abcdef62@wru.vn', '2019-08-19', 'student', 'Trân Văn A', '58TH2', '1651060710');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMH`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idtt`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idtt` mediumint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
