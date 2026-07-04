-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2026 pada 08.07
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualandb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(6) NOT NULL,
  `nm_brg` varchar(20) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `h_beli` int(11) NOT NULL,
  `h_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `jenis`, `h_beli`, `h_jual`) VALUES
('K001', 'Pocari', 'Minuman', 6500, 3000),
('K002', 'Indomie Goreng', 'Makanan', 3500, 2000),
('K003', 'Susu', 'Minuman', 3500, 2000),
('K004', 'Telur', 'Makanan', 5000, 3500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_nota`
--

CREATE TABLE `detail_nota` (
  `idnota` varchar(15) DEFAULT NULL,
  `kdbrg` varchar(10) DEFAULT NULL,
  `nmbrg` varchar(50) DEFAULT NULL,
  `hj` decimal(10,0) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` decimal(12,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi`
--

CREATE TABLE `isi` (
  `idnota` varchar(10) DEFAULT NULL,
  `kd_brg` varchar(10) DEFAULT NULL,
  `h_beli` decimal(10,0) DEFAULT NULL,
  `h_jual` decimal(10,0) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `isi`
--

INSERT INTO `isi` (`idnota`, `kd_brg`, `h_beli`, `h_jual`, `qty`) VALUES
('IN0001', 'K002', '3500', '2000', 4),
('IN0001', 'K001', '6500', '3000', 5),
('IN0002', 'K001', '6500', '3000', 8),
('IN0002', 'K002', '3500', '2000', 8),
('IN0003', 'K002', '3500', '2000', 10),
('IN0003', 'K001', '6500', '3000', 10),
('IN0004', 'K001', '6500', '3000', 10),
('IN0004', 'K002', '3500', '2000', 20),
('IN0005', 'K002', '3500', '2000', 20),
('IN0005', 'K001', '6500', '3000', 20),
('IN0006', 'K001', '6500', '3000', 5),
('IN0006', 'K002', '3500', '2000', 5),
('IN0007', 'K002', '3500', '2000', 5),
('IN0007', 'K004', '5000', '3500', 3),
('IN0008', 'K003', '3500', '2000', 1),
('IN0009', 'K004', '5000', '3500', 2),
('IN0010', 'K004', '5000', '3500', 2),
('IN0011', 'K002', '3500', '2000', 2),
('IN0012', 'K003', '3500', '2000', 2),
('IN0013', 'K004', '5000', '3500', 3),
('IN0014', 'K003', '3500', '2000', 2),
('IN0015', 'K004', '5000', '3500', 3),
('IN0016', 'K001', '6500', '3000', 2),
('IN0016', 'K002', '3500', '2000', 3),
('IN0016', 'K004', '5000', '3500', 5),
('IN0016', 'K003', '3500', '2000', 4),
('IN0017', 'K001', '6500', '3000', 2),
('IN0017', 'K002', '3500', '2000', 3),
('IN0018', 'K002', '3500', '2000', 4),
('IN0018', 'K004', '5000', '3500', 6),
('IN0019', 'K002', '3500', '2000', 2),
('IN0019', 'K004', '5000', '3500', 4),
('IN0020', 'K004', '5000', '3500', 6),
('IN0020', 'K003', '3500', '2000', 9),
('IN0021', 'K004', '5000', '3500', 5),
('IN0021', 'K002', '3500', '2000', 10),
('IN0022', 'K003', '3500', '2000', 65),
('IN0022', 'K001', '6500', '3000', 16),
('IN0023', 'K001', '6500', '3000', 7),
('IN0023', 'K002', '3500', '2000', 9),
('IN0024', 'K004', '5000', '3500', 5),
('IN0024', 'K003', '3500', '2000', 5),
('IN0025', 'K004', '5000', '3500', 5),
('IN0026', 'K004', '5000', '3500', 5),
('IN0026', 'K003', '3500', '2000', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(10) NOT NULL,
  `nm_kasir` varchar(30) NOT NULL,
  `jkel` varchar(15) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nm_kasir`, `jkel`, `no_telp`, `agama`, `alamat`, `password`) VALUES
('KAS001', 'Agung', 'Laki - laki', '082110946212', 'Islam', 'Jalan kunang', '123123'),
('KAS002', 'Intan A', 'Perempuan', '0812345', 'Budha', 'Jalan mandau', '321321'),
('KAS003', 'FIRHAM', 'Perempuan', '09012', 'Hindu', 'DJIAJD', '4321321'),
('KAS004', 'NAYO', 'Perempuan', '870878', 'Budha', 'KOKO', '09809');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `idnota` varchar(10) NOT NULL,
  `tgl` date DEFAULT NULL,
  `txtid` varchar(10) DEFAULT NULL,
  `id_kasir` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`idnota`, `tgl`, `txtid`, `id_kasir`) VALUES
('IN0001', '2026-06-08', 'A001', 'KAS002'),
('IN0002', '2026-06-08', 'A001', 'KAS001'),
('IN0003', '2026-06-08', 'A001', 'KAS001'),
('IN0004', '2026-06-15', 'A002', 'KAS004'),
('IN0005', '2026-06-15', 'A002', 'KAS002'),
('IN0006', '2026-06-15', 'A001', 'KAS003'),
('IN0007', '2026-06-15', 'A002', 'KAS001'),
('IN0008', '2026-06-15', 'A002', 'KAS001'),
('IN0009', '2026-06-15', 'A001', 'KAS001'),
('IN0010', '2026-06-15', 'A002', 'KAS001'),
('IN0011', '2026-06-15', 'A001', 'KAS001'),
('IN0012', '2026-06-15', 'A002', 'KAS001'),
('IN0013', '2026-06-15', 'A002', 'KAS001'),
('IN0014', '2026-06-15', 'A001', 'KAS001'),
('IN0015', '2026-06-15', 'A002', 'KAS001'),
('IN0016', '2026-06-15', 'A001', 'KAS001'),
('IN0017', '2026-06-15', 'A002', 'KAS001'),
('IN0018', '2026-06-15', 'A002', 'KAS001'),
('IN0019', '2026-06-15', 'A001', 'KAS001'),
('IN0020', '2026-06-15', 'A002', 'KAS001'),
('IN0021', '2026-06-15', 'A001', 'KAS001'),
('IN0022', '2026-06-15', 'A002', 'KAS001'),
('IN0023', '2026-06-15', 'A002', 'KAS001'),
('IN0024', '2026-06-22', 'A002', 'KAS003'),
('IN0025', '2026-06-27', 'A002', 'KAS001'),
('IN0026', '2026-06-27', 'A001', 'KAS001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(6) NOT NULL,
  `nmplg` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nmplg`, `jenis`, `telepon`, `alamat`) VALUES
('A001', 'Ainaya', 'Perempuan', '0182391', 'Jalannnn'),
('A002', 'Rusdy', 'Laki - laki', '0828713', 'Jalan jalan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indeks untuk tabel `detail_nota`
--
ALTER TABLE `detail_nota`
  ADD KEY `kdbrg` (`kdbrg`);

--
-- Indeks untuk tabel `isi`
--
ALTER TABLE `isi`
  ADD KEY `idnota` (`idnota`),
  ADD KEY `barang` (`kd_brg`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`idnota`),
  ADD KEY `pelanggan` (`txtid`),
  ADD KEY `kasir` (`id_kasir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_nota`
--
ALTER TABLE `detail_nota`
  ADD CONSTRAINT `detail_nota_ibfk_1` FOREIGN KEY (`kdbrg`) REFERENCES `barang` (`kd_brg`);

--
-- Ketidakleluasaan untuk tabel `isi`
--
ALTER TABLE `isi`
  ADD CONSTRAINT `barang` FOREIGN KEY (`kd_brg`) REFERENCES `barang` (`kd_brg`),
  ADD CONSTRAINT `isi_ibfk_1` FOREIGN KEY (`idnota`) REFERENCES `nota` (`idnota`);

--
-- Ketidakleluasaan untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `kasir` FOREIGN KEY (`id_kasir`) REFERENCES `kasir` (`id_kasir`),
  ADD CONSTRAINT `pelanggan` FOREIGN KEY (`txtid`) REFERENCES `pelanggan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
