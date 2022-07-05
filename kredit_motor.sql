-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 02:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kredit_motor`
--

-- --------------------------------------------------------

--
-- Table structure for table `bayar_cicilan`
--

CREATE TABLE `bayar_cicilan` (
  `no_bayar` int(20) NOT NULL,
  `tanggal_bayar` text NOT NULL,
  `kode_kredit` varchar(25) NOT NULL,
  `kode_pelanggan` text NOT NULL,
  `kode_motor` text NOT NULL,
  `jumlah_bayar_cicilan` text NOT NULL,
  `anggsuran` text NOT NULL,
  `keterangan_cicilan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayar_cicilan`
--

INSERT INTO `bayar_cicilan` (`no_bayar`, `tanggal_bayar`, `kode_kredit`, `kode_pelanggan`, `kode_motor`, `jumlah_bayar_cicilan`, `anggsuran`, `keterangan_cicilan`) VALUES
(20, '2021-04-04', 'KDR-01', 'PLG-01', 'KMR-001', '2.288.000', '1', 'done'),
(21, '2021-04-04', 'KDR-01', 'PLG-01', 'KMR-001', '2.288.000', '2', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `beli_cash`
--

CREATE TABLE `beli_cash` (
  `kode_cash` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `pelanggan` varchar(20) NOT NULL,
  `kode_motor` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `bayar` varchar(20) NOT NULL,
  `keterangan_cash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beli_cash`
--

INSERT INTO `beli_cash` (`kode_cash`, `tanggal`, `pelanggan`, `kode_motor`, `harga`, `bayar`, `keterangan_cash`) VALUES
('CSH-01', '0000-00-00', '----- Pilih Nama Pel', '----- Pilih Motor --', '----- Pilih Harga Mo', '', ''),
('CSH-01', '2012-01-19', 'PEL-001', 'KZR-001', 'KZR-001', '1000000', 'lunas'),
('CSH-01', '2012-01-19', 'PEL-001', 'KZR-001', 'KZR-001', '1000000', 'lunas'),
('CSH-012', '2012-01-25', 'PEL-001', 'KZR-003', 'KZR-003', '1000000', 'belum lunas');

-- --------------------------------------------------------

--
-- Table structure for table `beli_kredit`
--

CREATE TABLE `beli_kredit` (
  `kode_kredit` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_pelanggan` text NOT NULL,
  `kode_motor` text NOT NULL,
  `uang_muka` varchar(20) NOT NULL,
  `lama_cicilan` int(20) NOT NULL,
  `sisa_cicilan` int(11) NOT NULL,
  `Keterangan_kredit` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beli_kredit`
--

INSERT INTO `beli_kredit` (`kode_kredit`, `tanggal`, `kode_pelanggan`, `kode_motor`, `uang_muka`, `lama_cicilan`, `sisa_cicilan`, `Keterangan_kredit`) VALUES
('KDR-01', '2020-02-20', 'PLG-01', 'KMR-001', '4.000.000', 12, 10, 'Terima');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_motor`
--

CREATE TABLE `jenis_motor` (
  `kd_jenismotor` int(11) NOT NULL,
  `kd_merk` int(11) NOT NULL,
  `jenis_motor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merk_motor`
--

CREATE TABLE `merk_motor` (
  `kd_merek` int(11) NOT NULL,
  `nama_merek` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE `motor` (
  `kode_motor` varchar(20) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `dp` text NOT NULL,
  `angsuran` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motor`
--

INSERT INTO `motor` (`kode_motor`, `merek`, `type`, `warna`, `harga`, `dp`, `angsuran`, `photo`) VALUES
('KMR-001', 'HONDA', 'Beat', 'hitam', '28000000', '4000000', '2.288.000', 'BEAT_201811.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode_pelanggan` varchar(20) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` int(11) NOT NULL,
  `ktp` text NOT NULL,
  `npwp` text NOT NULL,
  `slip_gaji` text NOT NULL,
  `keterangan` text NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kk` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kode_pelanggan`, `nama_lengkap`, `alamat`, `no_hp`, `ktp`, `npwp`, `slip_gaji`, `keterangan`, `tmp_lahir`, `tgl_lahir`, `kk`, `foto`) VALUES
('PLG-01', 'Rio Desra Ginting s', 'jl.AMD/Swakarya', 2147483647, 'DTRACKER_SE_KUNING_20181.jpg', 'DTRACKER_SE_KUNING_20181.jpg', 'DTRACKER_SE_KUNING_20181.jpg', 'Belum Kawin', 'medan', '2021-04-20', 'DTRACKER_SE_KUNING_20181.jpg', 'DTRACKER_SE_KUNING_20181.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_motor`
--

CREATE TABLE `pembelian_motor` (
  `kd_pembelian` int(11) NOT NULL,
  `kd_jenismotor` int(11) NOT NULL,
  `nama_pembeli` varchar(25) NOT NULL,
  `nopol` varchar(20) NOT NULL,
  `stnk` text NOT NULL,
  `bpkp` text NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `harga_pembelian` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user257`
--

CREATE TABLE `tb_user257` (
  `id_user257` int(50) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `akses_level` varchar(15) NOT NULL,
  `is_active` int(2) NOT NULL,
  `ket` text NOT NULL,
  `photo` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user257`
--

INSERT INTO `tb_user257` (`id_user257`, `nama`, `email`, `username`, `password`, `akses_level`, `is_active`, `ket`, `photo`, `tanggal`) VALUES
(9, 'Rio Desra', 'riodesra001@gmail.com', 'rio123', '5ad84765cde27d0732195b3517b0f9b7', 'admin', 1, '<p><strong><span style=\"color: #e03e2d;\">KETERANGAN</span></strong></p>', '', '2012-01-10 10:30:28'),
(10, 'udin', 'riodesra001@gmail.com', 'udin123', '28d5cee6808e16dca79a7a2016c9ba451587216a', 'admin', 1, '', '', '2012-01-10 10:33:29'),
(12, 'admin', 'admin@gmail.com', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin', 1, '', '', '2021-04-02 03:40:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayar_cicilan`
--
ALTER TABLE `bayar_cicilan`
  ADD PRIMARY KEY (`no_bayar`),
  ADD KEY `kode_kredit` (`kode_kredit`);

--
-- Indexes for table `beli_kredit`
--
ALTER TABLE `beli_kredit`
  ADD PRIMARY KEY (`kode_kredit`);

--
-- Indexes for table `jenis_motor`
--
ALTER TABLE `jenis_motor`
  ADD PRIMARY KEY (`kd_jenismotor`);

--
-- Indexes for table `merk_motor`
--
ALTER TABLE `merk_motor`
  ADD PRIMARY KEY (`kd_merek`);

--
-- Indexes for table `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`kode_motor`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `pembelian_motor`
--
ALTER TABLE `pembelian_motor`
  ADD PRIMARY KEY (`kd_pembelian`);

--
-- Indexes for table `tb_user257`
--
ALTER TABLE `tb_user257`
  ADD PRIMARY KEY (`id_user257`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bayar_cicilan`
--
ALTER TABLE `bayar_cicilan`
  MODIFY `no_bayar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jenis_motor`
--
ALTER TABLE `jenis_motor`
  MODIFY `kd_jenismotor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merk_motor`
--
ALTER TABLE `merk_motor`
  MODIFY `kd_merek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian_motor`
--
ALTER TABLE `pembelian_motor`
  MODIFY `kd_pembelian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user257`
--
ALTER TABLE `tb_user257`
  MODIFY `id_user257` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
