-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2025 pada 21.09
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_inventory`
--

CREATE TABLE `tb_inventory` (
  `id_barang` int(10) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah_barang` int(10) NOT NULL,
  `satuan_barang` varchar(20) NOT NULL,
  `harga_beli` double(20,2) NOT NULL,
  `status_barang` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_inventory`
--

INSERT INTO `tb_inventory` (`id_barang`, `kode_barang`, `nama_barang`, `jumlah_barang`, `satuan_barang`, `harga_beli`, `status_barang`) VALUES
(1, 'BK01', 'Buku 1', 10, 'kg', 10000.00, 1),
(2, 'BK02', 'Buku 2', 5, 'pcs', 15000.00, 1),
(3, 'BK03', 'Buku 3', 0, 'liter', 20000.00, 0),
(4, 'BK04', 'Buku 4', 20, 'meter', 5000.00, 1),
(5, 'BK05', 'Buku 5', 15, 'kg', 12000.00, 1),
(6, 'BK06', 'Buku 6', 0, 'pcs', 30000.00, 0),
(7, 'BK07', 'Buku 7', 8, 'liter', 25000.00, 1),
(8, 'BK08', 'Buku 8', 12, 'meter', 7000.00, 1),
(9, 'BK09', 'Buku 9', 3, 'kg', 18000.00, 1),
(10, 'BK10', 'Buku 10', 0, 'pcs', 22000.00, 0),
(11, 'BK11', 'Buku 11', 25, 'liter', 9000.00, 1),
(12, 'BK12', 'Buku 12', 10, 'meter', 11000.00, 1),
(13, 'BK13', 'Buku 13', 5, 'kg', 13000.00, 1),
(14, 'BK14', 'Buku 14', 0, 'pcs', 16000.00, 0),
(15, 'BK15', 'Buku 15', 7, 'liter', 14000.00, 1),
(17, 'BK16', 'Buku 16', 1, 'pcs', 1000.00, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_inventory`
--
ALTER TABLE `tb_inventory`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_inventory`
--
ALTER TABLE `tb_inventory`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
