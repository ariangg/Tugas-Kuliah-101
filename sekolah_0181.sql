-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 12:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah_0181`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel 1`
--

CREATE TABLE `tabel 1` (
  `NIM` int(11) NOT NULL,
  `NAMA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel 2`
--

CREATE TABLE `tabel 2` (
  `KELAS` int(11) NOT NULL,
  `GEDUNG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel 1`
--
ALTER TABLE `tabel 1`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `tabel 2`
--
ALTER TABLE `tabel 2`
  ADD PRIMARY KEY (`KELAS`),
  ADD KEY `GEDUNG` (`GEDUNG`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabel 1`
--
ALTER TABLE `tabel 1`
  ADD CONSTRAINT `tabel 1_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `tabel 2` (`GEDUNG`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
