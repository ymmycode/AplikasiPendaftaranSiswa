-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2021 at 04:59 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yasfi`
--
CREATE DATABASE IF NOT EXISTS `yasfi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `yasfi`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `nodaftar` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `biaya` varchar(255) DEFAULT NULL,
  `stat` varchar(255) DEFAULT NULL,
  `tglpembayaran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`nodaftar`, `nama`, `biaya`, `stat`, `tglpembayaran`) VALUES
('1', 'Fauzi', 'Rp 1.000.000', 'Full', '25 Desember 2020'),
('2', 'Andi', 'Rp 1.000.000', 'Full', '1 Januari 2021');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `nodaftar` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kelamin` varchar(255) DEFAULT NULL,
  `namawali` varchar(255) DEFAULT NULL,
  `ttl` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `notelp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tgldaftar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`nodaftar`, `nama`, `kelamin`, `namawali`, `ttl`, `agama`, `notelp`, `alamat`, `tgldaftar`) VALUES
('1', 'Fauzi', 'Laki-Laki', 'Sumarni', 'Gunung Kidul, 17 September 2002', 'Islam', '098756465', 'Jl. Kompleks Keuangan,', '24 Desember 2020'),
('2', 'Andi', 'Laki-Laki', 'XXXXXX', 'Jakarta, 23 September 2001', 'Islam', '098765546', 'Jl. GG Tabah', '26 Desember 2020');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nodaftar` varchar(255) NOT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kelamin` varchar(255) DEFAULT NULL,
  `ttl` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(255) DEFAULT NULL,
  `tgl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nodaftar`, `nis`, `nama`, `kelamin`, `ttl`, `alamat`, `notelp`, `tgl`) VALUES
('1', '741745', 'Fauzi', 'Laki-Laki', 'Gunung Kidul, 17 September 2002', 'Jl. Kompleks Keuangan,', '098756465', '1 Januari 2021'),
('2', '321321', 'Andi', 'Laki-Laki', 'Jakarta, 23 September 2001', 'Jl. GG Tabah', '098765546', '1 Januari 2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`nodaftar`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`nodaftar`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nodaftar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
