-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2023 pada 09.49
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perkuliahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(45) NOT NULL,
  `alamat_dosen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn_dosen`, `nama_dosen`, `alamat_dosen`) VALUES
(4401, 'Budi', 'Jl. Merpati'),
(4402, 'Lina', 'Jl. Elang'),
(4403, 'Sastika', 'Jl. Mangga'),
(4404, 'Naida', 'Jl. Angkasa'),
(4405, 'Very', 'Jl. Manggis'),
(4406, 'Ody', 'Jl. Nanas'),
(4407, 'Fafa', 'Jl. Pepaya'),
(4408, 'Bambang', 'Jl. Alpukat'),
(4409, 'Joko', 'Jl. Ahmad Yani'),
(4410, 'Roni', 'Jl. Merbabu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim_mhs` varchar(10) NOT NULL,
  `nama_mhs` varchar(45) NOT NULL,
  `nidn_dosenFK` int(11) DEFAULT NULL,
  `alamat_mhs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim_mhs`, `nama_mhs`, `nidn_dosenFK`, `alamat_mhs`) VALUES
('TIF001', 'Laisa', 4401, 'Jl. Pandan Hijau'),
('TIF002', 'Talitha', 4402, 'Jl. Belimbing'),
('TIF003', 'Sania', 4403, 'Jl. Sumpah Pemuda'),
('TIF004', 'Rivaldo', 4404, 'Jl. Proklamasi'),
('TIF005', 'Narada', 4405, 'Jl. Jambu'),
('TIF006', 'Rendi', 4406, 'Jl. Nangka'),
('TIF007', 'Putra', 4407, 'Jl. Manggis'),
('TIF008', 'Ronald', 4408, 'Jl. Pattimura'),
('TIF009', 'Karina', 4409, 'Jl. Teuku Umar'),
('TIF010', 'Tika', 4410, 'Jl. Melati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa_has_mata_kuliah`
--

CREATE TABLE `mahasiswa_has_mata_kuliah` (
  `nim_mhsFK` varchar(10) NOT NULL,
  `kode_mkFK` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa_has_mata_kuliah`
--

INSERT INTO `mahasiswa_has_mata_kuliah` (`nim_mhsFK`, `kode_mkFK`) VALUES
('TIF001', 'TI1101'),
('TIF010', 'TI1101'),
('TIF002', 'TI1102'),
('TIF009', 'TI1102'),
('TIF003', 'TI1103'),
('TIF008', 'TI1103'),
('TIF004', 'TI1104'),
('TIF005', 'TI1104'),
('TIF006', 'TI1104'),
('TIF007', 'TI1104'),
('TIF005', 'TI1105'),
('TIF006', 'TI1105'),
('TIF004', 'TI1107'),
('TIF007', 'TI1107'),
('TIF003', 'TI1108'),
('TIF008', 'TI1108'),
('TIF002', 'TI1109'),
('TIF009', 'TI1109'),
('TIF001', 'TI1110'),
('TIF010', 'TI1110');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mk` varchar(20) NOT NULL,
  `nidn_dosenFK` int(11) DEFAULT NULL,
  `nama_mk` varchar(45) NOT NULL,
  `kode_ruangFK` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mk`, `nidn_dosenFK`, `nama_mk`, `kode_ruangFK`) VALUES
('TI1101', 4401, 'Sistem Digital', 'TIFR.1'),
('TI1102', 4402, 'Pemrograman Visual', 'TIFR.2'),
('TI1103', 4403, 'Sistem Informasi', 'TIFR.3'),
('TI1104', 4404, 'Logika dan Himpunan', 'TIFR.4'),
('TI1105', 4405, 'Aljabar Linear dan Matriks', 'TIFR.5'),
('TI1106', 4406, 'Sistem Basis Data', 'TIFR.6'),
('TI1107', 4407, 'Algoritma dan Struktur Data', 'TIFR.7'),
('TI1108', 4408, 'Jaringan Komputer', 'TIFR.8'),
('TI1109', 4409, 'Rekayasa Perangkat Lunak', 'TIFR.9'),
('TI1110', 4410, 'Bahasa Indonesia', 'TIFR.10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang_kelas`
--

CREATE TABLE `ruang_kelas` (
  `kode_ruang` varchar(10) NOT NULL,
  `kapasitas_ruang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ruang_kelas`
--

INSERT INTO `ruang_kelas` (`kode_ruang`, `kapasitas_ruang`) VALUES
('TIFR.1', 56),
('TIFR.10', 100),
('TIFR.2', 78),
('TIFR.3', 74),
('TIFR.4', 34),
('TIFR.5', 80),
('TIFR.6', 60),
('TIFR.7', 70),
('TIFR.8', 56),
('TIFR.9', 90);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn_dosen`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim_mhs`);

--
-- Indeks untuk tabel `mahasiswa_has_mata_kuliah`
--
ALTER TABLE `mahasiswa_has_mata_kuliah`
  ADD PRIMARY KEY (`kode_mkFK`,`nim_mhsFK`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `ruang_kelas`
--
ALTER TABLE `ruang_kelas`
  ADD PRIMARY KEY (`kode_ruang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
