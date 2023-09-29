-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2023 at 05:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(20) NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `alamat_customer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat_customer`) VALUES
('C1', 'Budi Susanto', 'Jl. Diponegoro No. 123'),
('C10', 'Ratna Kusuma', 'Jl. Gatot Subroto No. 573'),
('C2', 'Anita Sari', 'Jl. Sudirman No. 456'),
('C3', 'Ahmad Hidayat', 'Jl. Ahmad Yani No. 789'),
('C4', 'Rina Wijaya', 'Jl. Merdeka No. 321'),
('C5', 'Eko Prasetyo', 'Jl. Gajah Mada No. 654'),
('C6', 'Siti Rahayu', 'Jl. Asia Afrika No. 987'),
('C7', 'Joko Santoso', 'Jl. Veteran No. 135'),
('C8', 'Dewi Indah', 'Jl. Pahlawan No. 864'),
('C9', 'Hendra Wijaya', 'Jl. Raya Bogor No. 246');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` varchar(20) NOT NULL,
  `id_customerFK` varchar(20) DEFAULT NULL,
  `nama_mobil` varchar(20) NOT NULL,
  `tipe_mobil` varchar(20) NOT NULL,
  `warna_mobil` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `id_customerFK`, `nama_mobil`, `tipe_mobil`, `warna_mobil`) VALUES
('AB 1080 FE', 'C2', 'Toyota Fortuner', 'SUV', 'Abu-abu'),
('AB 1159 AC', 'C4', 'Honda Civic Type R', 'Hatchback', 'Merah'),
('AB 1678 SA', 'C7', 'Hyundai Santafe', 'SUV', 'Coklat'),
('AD 1234 AB', 'C5', 'Mitsubishi Xpander', 'MPV', 'Putih'),
('AD 1345 CB', 'C1', 'Toyota Innova Zenix', 'MPV', 'Putih'),
('AD 1456 DC', 'C3', 'Mitsubishi Pajero Sp', 'SUV', 'Hitam'),
('H 1378 CE', 'C10', 'Mitsubishi Xpander', 'MPV', 'Silver'),
('H 1631 BA', 'C9', 'Audi A8', 'toyota', 'Hitam'),
('K 1099 NR', 'C8', 'Hyundai Palisade', 'SUV', 'Hitam'),
('K 1119 ED', 'C6', 'Mitsubishi Triton', 'Double Cabin', 'Putih');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id_service` varchar(20) NOT NULL,
  `id_mobilFK` varchar(20) DEFAULT NULL,
  `jenis_service` varchar(20) NOT NULL,
  `harga_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_service`, `id_mobilFK`, `jenis_service`, `harga_service`) VALUES
('S1', 'K 1099 NR', 'Servis A', 400000),
('S10', 'AB 1678 SA', 'Servis A', 400000),
('S2', 'AD 1234 AB', 'Servis B', 600000),
('S3', 'K 1119 ED', 'Servis A', 400000),
('S4', 'AD 1345 CB', 'Servis C', 800000),
('S5', 'H 1378 CE', 'Servis B', 600000),
('S6', 'AD 1456 DC', 'Servis B', 600000),
('S7', 'H 1631 BA', 'Servis C', 800000),
('S8', 'AB 1080 FE', 'Servis B', 600000),
('S9', 'AB 1159 AC', 'Servis C', 800000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `id_serviceFK` varchar(20) DEFAULT NULL,
  `id_customerFK` varchar(20) DEFAULT NULL,
  `jenis_transaksi` varchar(20) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `total_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_serviceFK`, `id_customerFK`, `jenis_transaksi`, `tgl_transaksi`, `total_transaksi`) VALUES
('T53', 'S3', 'C8', 'Tunai', '2023-01-11 00:00:00', 425000),
('T54', 'S4', 'C7', 'E-Cash', '2023-01-11 00:00:00', 850000),
('T55', 'S5', 'C6', 'Debit', '2023-01-12 00:00:00', 640000),
('T56', 'S6', 'C5', 'Tunai', '2023-01-15 00:00:00', 640000),
('T57', 'S7', 'C4', 'E-Cash', '2023-01-18 00:00:00', 850000),
('T58', 'S8', 'C3', 'Debit', '2023-01-20 00:00:00', 640000),
('T59', 'S9', 'C2', 'Tunai', '2023-01-27 00:00:00', 850000),
('T60', 'S10', 'C1', 'E-Cash', '2023-01-30 00:00:00', 425000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
