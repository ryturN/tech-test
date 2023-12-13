-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 05:16 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_perpuspro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`user_id` int(2) NOT NULL ,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'admin', 'admin', 'Admin Pemesanan', 'gambar_admin/male.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_driver`
--

CREATE TABLE IF NOT EXISTS `data_driver` (
`id` int(4) NOT NULL ,
  `no_anggota` varchar(7) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(75) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT 'not_active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datadr`
--

INSERT INTO `data_driver` (`id`, `no_anggota`, `nama`, `jk`, `ttl`, `alamat`, `foto`) VALUES
(1, 'A12345', 'Ahmad', 'L', '1990-01-01', 'Jl. Merdeka No. 1', 'foto_ahmad.jpg'),
(2, 'B23456', 'Budi', 'L', '1995-02-02', 'Jl. Sudirman No. 2', 'foto_budi.jpg'),
(3, 'C34567', 'Citra', 'P', '1992-03-03', 'Jl. Thamrin No. 3', 'foto_citra.jpg'),
(4, 'D45678', 'Dani', 'L', '1998-04-04', 'Jl. Gatot Subroto No. 4', 'foto_dani.jpg'),
(5, 'E56789', 'Eka', 'P', '2000-05-05', 'Jl. H. Agus Salim No. 5', 'foto_eka.jpg'),
(6, 'F67890', 'Faisal', 'L', '1994-06-06', 'Jl. Diponegoro No. 6', 'foto_faisal.jpg'),
(7, 'G78901', 'Gina', 'P', '1993-07-07', 'Jl. Sisingamangaraja No. 7', 'foto_gina.jpg'),
(8, 'H89012', 'Haris', 'L', '1997-08-08', 'Jl. Panglima Polim No. 8', 'foto_haris.jpg'),
(9, 'I90123', 'Indah', 'P', '1991-09-09', 'Jl. Merdeka Timur No. 9', 'foto_indah.jpg'),
(10, 'J01234', 'Joko', 'L', '2001-10-10', 'Jl. Thamrin Barat No. 10', 'foto_joko.jpg'),
(11, 'K12345', 'Karina', 'P', '1989-11-11', 'Jl. Sudirman Selatan No. 11', 'foto_karina.jpg'),
(12, 'L23456', 'Latief', 'L', '1996-12-12', 'Jl. Gatot Subroto Timur No. 12', 'foto_lati.jpg'),
(13, 'M34567', 'Mega', 'P', '1987-01-13', 'Jl. H. Agus Salim Utara No. 13', 'foto_mega.jpg'),
(14, 'N45678', 'Nina', 'P', '2002-02-14', 'Jl. Diponegoro Barat No. 14', 'foto_nina.jpg'),
(15, 'O56789', 'Oki', 'L', '1988-03-15', 'Jl. Sisingamangaraja Timur No. 15', 'foto_oki.jpg'),
(16, 'P67890', 'Putri', 'P', '1986-04-16', 'Jl. Panglima Polim Selatan No. 16', 'foto_putri.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_kendaraan`
--

CREATE TABLE IF NOT EXISTS `data_kendaraan` (
`id` int(5) NOT NULL ,
  `merk_kendaraan` varchar(250) NOT NULL,
  `type_kendaraan` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kendaran`
--

INSERT INTO `data_kendaraan` (`id`, `merk_kendaraan`, `type_kendaraan`, `status`) VALUES
(1, 'Hino', 'FM 280 JD', 'Aktif'),
(2, 'Mitsubishi Fuso', 'FE 75 Super HDX N', 'Aktif'),
(3, 'Hino', '36HDX', 'Aktif'),
(4, 'Isuzu', 'NMR71 T SDL', 'Aktif'),
(5, 'Toyota Dyna', '130 HT', 'Aktif'),
(6, 'Mitsubishi Colt Diesel', 'FE 71 HDX', 'Aktif'),
(7, 'UD Trucks', 'Quester 380', 'Aktif'),
(8, 'Scania', 'G410', 'Aktif'),
(9, 'Mercedes-Benz', 'Actros 1845', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE IF NOT EXISTS `management` (
`user_id` int(2) NOT NULL ,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `management` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'management', 'management', 'Management Approve', 'gambar_admin/male.jpg');
-- --------------------------------------------------------

--
-- Table structure for table `status_dirver`
--

CREATE TABLE IF NOT EXISTS `status_driver` (
`id` int(5) NOT NULL ,
  `no_anggota` varchar(7) NOT NULL ,
  `nama` varchar(250) NOT NULL,
  `merk_kendaraan` varchar(250) NOT NULL,
  `type_kendaraan` varchar(250) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_driver`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `data_driver`
--
ALTER TABLE `data_driver`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kendaraan`
--
ALTER TABLE `data_kendaraan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `status_driver`
--
ALTER TABLE `status_driver`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_driver`
--
ALTER TABLE `data_driver`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `data_kendaraan`
--
ALTER TABLE `data_kendaraan`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `status_driver`
--
ALTER TABLE `status_driver`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
