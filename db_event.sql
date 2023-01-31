-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2023 pada 12.39
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_event`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_agama`
--

CREATE TABLE `tab_agama` (
  `id` int(11) NOT NULL,
  `agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_agama`
--

INSERT INTO `tab_agama` (`id`, `agama`) VALUES
(1, 'islam'),
(2, 'kristen'),
(3, 'protestan'),
(4, 'khatolik'),
(5, 'hindu'),
(6, 'budha'),
(7, 'khonguchu'),
(8, 'lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_mahasiswa`
--

CREATE TABLE `tab_mahasiswa` (
  `nim` varchar(12) NOT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `prodi` int(11) DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `Agama` int(11) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_mahasiswa`
--

INSERT INTO `tab_mahasiswa` (`nim`, `no_ktp`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `prodi`, `provinsi`, `Agama`, `alamat_lengkap`, `tgl_masuk`) VALUES
('111', '121', 'Widya ', 'Jakarta', '2000-09-24', 'Wanita', 7, 2, 1, 'Jl. Bumi Raya', '0000-00-00'),
('112', '122', 'Fauzan', 'Jakarta', '2001-07-02', 'Pria', 7, 2, 1, 'Jl. Kayu Jati', '0000-00-00'),
('113', '123', 'Felicia', 'Solo', '2003-04-12', 'Wanita', 4, 1, 0, 'Jl. Gotong Royong', '0000-00-00'),
('114', '124', 'Rara', 'Jakarta', '2002-08-26', 'Wanita', 4, 2, 1, 'Jl. Bumi Raya', '0000-00-00'),
('115', '125', 'Iqbal', 'Sulawesi', '2002-09-02', 'Wanita', 4, 1, 2, 'Jl. Bumi Raya III', '0000-00-00'),
('116', '126', 'Steven', 'Bantul', '1999-10-29', 'Pria', 7, 2, 0, 'Jl. Madrasah II', '0000-00-00'),
('117', '127', 'Herry', 'Bekasi', '1996-09-23', 'Pria', 8, 3, 1, 'Jl. Cipinang Muara', '0000-00-00'),
('118', '128', 'Aurel', 'Jakarta', '1997-10-24', 'Wanita', 8, 2, 4, 'Jl. Gotong Royong', '0000-00-00'),
('119', '129', 'Reyhan', 'Solo', '2003-03-27', 'Pria', 4, 1, 1, 'Jl. Madrasah II', '0000-00-00'),
('120', '130', 'Rizal', 'Jakarta', '1990-05-27', 'Pria', 8, 3, 1, 'Jl. Bumi Raya', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_prodi`
--

CREATE TABLE `tab_prodi` (
  `id` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_prodi`
--

INSERT INTO `tab_prodi` (`id`, `prodi`) VALUES
(1, 'Sistem Informasi'),
(2, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_provinsi`
--

CREATE TABLE `tab_provinsi` (
  `id` int(11) NOT NULL,
  `kelurahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_user`
--

CREATE TABLE `tab_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tab_user`
--

INSERT INTO `tab_user` (`id`, `username`, `password`, `lastlogin`, `created_by`, `created_at`, `update_by`, `update_at`) VALUES
(2, 'syaharani', '26', '2023-01-02 04:00:45', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tab_agama`
--
ALTER TABLE `tab_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_mahasiswa`
--
ALTER TABLE `tab_mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tab_prodi`
--
ALTER TABLE `tab_prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_provinsi`
--
ALTER TABLE `tab_provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tab_agama`
--
ALTER TABLE `tab_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tab_provinsi`
--
ALTER TABLE `tab_provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
