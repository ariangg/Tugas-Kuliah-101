-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 04:02 AM
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
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `NIP` int(10) NOT NULL,
  `NAMA` int(20) NOT NULL,
  `JENIS_KEL` int(1) NOT NULL,
  `ALAMAT` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `KELAS` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIP` int(10) DEFAULT NULL,
  `JML_SISWA` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `KODE_MAPEL` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NAMA_MAPEL` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `NIS` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KELAS` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SEMESTER` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIP` int(10) DEFAULT NULL,
  `KODE_MAPEL` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NIALI_ANGKA` int(9) DEFAULT NULL,
  `THN_AJARAN` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `NIS` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NAMA` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TEMPAT_LAHIR` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL,
  `JENIS_KEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ALAMAT` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`KELAS`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `NIP_2` (`NIP`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`KODE_MAPEL`),
  ADD KEY `KODE_MAPEL` (`KODE_MAPEL`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `NIS` (`NIS`),
  ADD KEY `KELAS` (`KELAS`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `KODE_MAPEL` (`KODE_MAPEL`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NIS`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`NIP`) REFERENCES `nilai` (`NIP`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`NIP`) REFERENCES `guru` (`NIP`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`NIS`) REFERENCES `siswa` (`NIS`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`KODE_MAPEL`) REFERENCES `mapel` (`KODE_MAPEL`),
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`KELAS`) REFERENCES `kelas` (`KELAS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
