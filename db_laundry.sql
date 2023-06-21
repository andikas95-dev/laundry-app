-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 10:36 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama_customer` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `createdAt` date NOT NULL DEFAULT curdate(),
  `updatedAt` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama_customer`, `alamat`, `createdAt`, `updatedAt`) VALUES
('611511d0-07c2-4717-b9f6-b33fc1545549', 'test', 'testing alamatasdasd', '2023-05-28', '2023-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_items`
--

CREATE TABLE `detail_transaksi_items` (
  `id_transaksi` varchar(100) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `harga_item` int(11) NOT NULL,
  `jumlah_item` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi_items`
--

INSERT INTO `detail_transaksi_items` (`id_transaksi`, `kode_item`, `harga_item`, `jumlah_item`, `total_item`, `keterangan`) VALUES
('b8bcd97f-8528-47e1-a2c3-2d35c9630c44', 'c91d14eb-b9a5-4015-867b-16e24905601a', 10000, 10, 100000, ''),
('b4494a5c-c999-44d4-a019-7dc333c60f87', 'c91d14eb-b9a5-4015-867b-16e24905601a', 10000, 10, 100000, ''),
('f9a09bb4-8813-4a24-ae7e-b7d89ff3b286', 'ba963b40-b73d-4d4a-9384-e6d85215ec49', 0, 1, 0, ''),
('e993a525-b994-4143-beb1-72557615ba9d', 'ba963b40-b73d-4d4a-9384-e6d85215ec49', 0, 1, 0, 'deterjen'),
('008eee49-872b-4c85-bd02-c7c22d13c58b', 'c91d14eb-b9a5-4015-867b-16e24905601a', 0, 10, 0, 'test'),
('1317a0fc-780e-435e-a2a0-47645f1a6d8a', 'c91d14eb-b9a5-4015-867b-16e24905601a', 0, 5, 0, 'deterjen'),
('2fc867fd-4700-4885-ad6d-2016ebbb6437', 'c91d14eb-b9a5-4015-867b-16e24905601a', 20000, 25, 500000, ''),
('af7270fc-5224-4e22-a778-bccdb2898671', 'c91d14eb-b9a5-4015-867b-16e24905601a', 10000, 10, 100000, ''),
('da1c5c2c-2e0d-40e4-8ab9-52372baef6a1', 'c91d14eb-b9a5-4015-867b-16e24905601a', 10000, 20, 200000, 'test'),
('1face8a2-3b04-4e7c-bbf9-7a26545c71b8', 'c91d14eb-b9a5-4015-867b-16e24905601a', 20000, 20, 400000, ''),
('1d66950c-39a7-4c29-bb68-3b8358ed0e3f', 'c91d14eb-b9a5-4015-867b-16e24905601a', 30000, 10, 300000, ''),
('7a891c0d-8fa5-4d3e-b4e7-662ca8b87f8a', 'c91d14eb-b9a5-4015-867b-16e24905601a', 10000, 10, 100000, ''),
('8fb9170d-1d0e-42b7-b105-fde4f436276f', 'c91d14eb-b9a5-4015-867b-16e24905601a', 0, 5, 0, 'rteasd');

-- --------------------------------------------------------

--
-- Table structure for table `items_master`
--

CREATE TABLE `items_master` (
  `kode_item` varchar(100) NOT NULL,
  `nama_item` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_master`
--

INSERT INTO `items_master` (`kode_item`, `nama_item`, `stock`, `satuan`, `keterangan`, `createdAt`, `updatedAt`) VALUES
('4668dd78-faee-48c8-94e7-be66ff59b211', 'kulkas', 1, 'Pcs', 'polytron', '2023-06-14', '2023-06-14'),
('ba963b40-b73d-4d4a-9384-e6d85215ec49', 'test111', 4, 'Liter', 'test123', '2023-06-12', '2023-06-12'),
('c91d14eb-b9a5-4015-867b-16e24905601a', 'test', 245, 'Pcs', 'deterjen', '2023-06-14', '2023-06-14'),
('ed571591-c276-4995-9142-66de24fe6a93', 'test', 1, 'Pcs', 'test', '2023-06-12', '2023-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `service_fee`
--

CREATE TABLE `service_fee` (
  `kode` varchar(200) NOT NULL,
  `nama_layanan` varchar(100) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_fee`
--

INSERT INTO `service_fee` (`kode`, `nama_layanan`, `satuan`, `harga`) VALUES
('0429e33f-46fd-4191-8383-d9e5a50b5ba6', 'Cuci Kiloan', 'Kilo', 7500),
('57398708-a0c9-43c2-9047-0205b6084cf4', 'test', 'test', 10000),
('f8e05ea0-e811-4b96-af69-c006159c2793', 'Cuci + Setrika', 'Kilo', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_items`
--

CREATE TABLE `transaksi_items` (
  `id_transaksi` varchar(100) NOT NULL,
  `jenis_transaksi` varchar(100) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `createdAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_items`
--

INSERT INTO `transaksi_items` (`id_transaksi`, `jenis_transaksi`, `total_transaksi`, `keterangan`, `createdAt`) VALUES
('008eee49-872b-4c85-bd02-c7c22d13c58b', 'keluar', 0, '', '2023-01-01'),
('1317a0fc-780e-435e-a2a0-47645f1a6d8a', 'keluar', 0, '', '2023-01-01'),
('1d66950c-39a7-4c29-bb68-3b8358ed0e3f', 'masuk', 300000, '', '2023-06-21'),
('1face8a2-3b04-4e7c-bbf9-7a26545c71b8', 'masuk', 400000, '', '2023-06-21'),
('2fc867fd-4700-4885-ad6d-2016ebbb6437', 'masuk', 500000, '', '2023-01-01'),
('6b9259aa-3aa1-4737-965b-02ee64a94a08', 'masuk', 100000, '', '2023-01-01'),
('7a891c0d-8fa5-4d3e-b4e7-662ca8b87f8a', 'masuk', 100000, '', '2023-06-21'),
('8fb9170d-1d0e-42b7-b105-fde4f436276f', 'keluar', 0, '', '2023-06-21'),
('97125356-53b2-409d-8149-c4020168a453', 'masuk', 100000, '', '2023-01-01'),
('af7270fc-5224-4e22-a778-bccdb2898671', 'masuk', 100000, '', '2023-01-01'),
('b4494a5c-c999-44d4-a019-7dc333c60f87', 'masuk', 100000, '', '2023-01-01'),
('b5e86abe-66ea-472d-a014-7b63097a7fde', 'masuk', 100000, '', '2023-01-01'),
('b8bcd97f-8528-47e1-a2c3-2d35c9630c44', 'masuk', 100000, '', '2023-01-01'),
('d04eb4a8-cf7f-45f5-b131-8f9c6d722e4f', 'masuk', 100000, '', '2023-01-01'),
('da1c5c2c-2e0d-40e4-8ab9-52372baef6a1', 'masuk', 200000, '', '2023-01-01'),
('e0d19e44-5b8c-4c00-b3a3-dd8c51622a97', 'masuk', 100000, '', '2023-01-01'),
('e993a525-b994-4143-beb1-72557615ba9d', 'masuk', 0, '', '2023-01-01'),
('f9a09bb4-8813-4a24-ae7e-b7d89ff3b286', 'masuk', 0, '', '2023-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `user_karyawan`
--

CREATE TABLE `user_karyawan` (
  `kode_user` varchar(100) NOT NULL,
  `nama_user` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `tgl_gabung` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_karyawan`
--

INSERT INTO `user_karyawan` (`kode_user`, `nama_user`, `username`, `telp`, `tgl_gabung`, `alamat`, `password`, `createdAt`, `updatedAt`) VALUES
('675dc80d-23e2-414a-b180-a3d2c1b8d464', 'test', 'test1', '12312312', '2023-06-21', '12312312', 'd41d8cd98f00b204e9800998ecf8427e', '2023-06-11', '2023-06-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `detail_transaksi_items`
--
ALTER TABLE `detail_transaksi_items`
  ADD KEY `detail_transaksi_items_FK` (`id_transaksi`),
  ADD KEY `detail_transaksi_items_FK_1` (`kode_item`);

--
-- Indexes for table `items_master`
--
ALTER TABLE `items_master`
  ADD PRIMARY KEY (`kode_item`);

--
-- Indexes for table `service_fee`
--
ALTER TABLE `service_fee`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `transaksi_items`
--
ALTER TABLE `transaksi_items`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user_karyawan`
--
ALTER TABLE `user_karyawan`
  ADD PRIMARY KEY (`kode_user`),
  ADD UNIQUE KEY `user_karyawan_un` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi_items`
--
ALTER TABLE `detail_transaksi_items`
  ADD CONSTRAINT `detail_transaksi_items_FK` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_items` (`id_transaksi`),
  ADD CONSTRAINT `detail_transaksi_items_FK_1` FOREIGN KEY (`kode_item`) REFERENCES `items_master` (`kode_item`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
