-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2024 at 06:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tr_customer`
--

CREATE TABLE `tr_customer` (
  `id_customer` varchar(100) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `alamat_customer` varchar(100) NOT NULL,
  `nomor_customer` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `deskripsi_customer` varchar(100) NOT NULL,
  `status_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_customer`
--

INSERT INTO `tr_customer` (`id_customer`, `nama_customer`, `alamat_customer`, `nomor_customer`, `email`, `deskripsi_customer`, `status_date`, `is_active`) VALUES
('5322F87AG', 'roman', 'sikumana', '82247528582', 'roman@gmail.com', '', '2024-10-08 23:08:37', 'Y'),
('53AA803F9', 'elen', 'Jalan Bonang', '82146508425', 'yohaniskarmoi123@gmail.com', '', '2020-01-17 17:31:26', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tr_email`
--

CREATE TABLE `tr_email` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tr_feedback`
--

CREATE TABLE `tr_feedback` (
  `id_feedback` int(11) NOT NULL,
  `id_customer` varchar(50) NOT NULL,
  `isi_feedback` varchar(1000) NOT NULL,
  `feedback_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_feedback`
--

INSERT INTO `tr_feedback` (`id_feedback`, `id_customer`, `isi_feedback`, `feedback_date`) VALUES
(4, '53AA803F9', 'Keren banget ini tokoh', '2020-01-19 21:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ip`
--

CREATE TABLE `tr_ip` (
  `nomor_ip` varchar(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_ip`
--

INSERT INTO `tr_ip` (`nomor_ip`, `id_produk`, `nama`, `no_hp`) VALUES
('::1', 3, 'Dolorem laboriosam ', 'Aliquip fugit eius ');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ip_2`
--

CREATE TABLE `tr_ip_2` (
  `nomor_ip` varchar(100) NOT NULL,
  `id_promo` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_ip_2`
--

INSERT INTO `tr_ip_2` (`nomor_ip`, `id_promo`, `nama`, `no_hp`, `umur`) VALUES
('::1', 3, 'Ipsam vel quo enim q', 'Possimus ipsa expl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tr_jenis_service`
--

CREATE TABLE `tr_jenis_service` (
  `id_jenis` int(11) NOT NULL,
  `jenis_service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_jenis_service`
--

INSERT INTO `tr_jenis_service` (`id_jenis`, `jenis_service`) VALUES
(1, 'SERVIS KOMPUTER DAN LAPTOP'),
(2, 'GANTI BATREI'),
(3, 'TAMBA RAM');

-- --------------------------------------------------------

--
-- Table structure for table `tr_minat_produk`
--

CREATE TABLE `tr_minat_produk` (
  `id_produk` int(11) NOT NULL,
  `jumlah_peminat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_minat_produk`
--

INSERT INTO `tr_minat_produk` (`id_produk`, `jumlah_peminat`) VALUES
(1, 0),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tr_minat_promo`
--

CREATE TABLE `tr_minat_promo` (
  `id_promo` int(11) NOT NULL,
  `jumlah_peminat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_minat_promo`
--

INSERT INTO `tr_minat_promo` (`id_promo`, `jumlah_peminat`) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 0),
(5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tr_order`
--

CREATE TABLE `tr_order` (
  `id_order` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `id_customer` varchar(50) NOT NULL,
  `catatan_order` varchar(1000) NOT NULL,
  `harga_order` int(11) NOT NULL,
  `status_order` int(11) NOT NULL,
  `nomor_telp` varchar(50) NOT NULL,
  `status_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_order`
--

INSERT INTO `tr_order` (`id_order`, `id_service`, `id_customer`, `catatan_order`, `harga_order`, `status_order`, `nomor_telp`, `status_date`) VALUES
(1, 1, '53AA803F9', 'test 123', 1, 2, '787878', '2024-09-25 07:31:50'),
(5, 1, '5322F87AG', 'perbaiki laptop merek asus blue skrin ', 45000, 2, '82247528582', '2024-10-08 23:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `tr_produk`
--

CREATE TABLE `tr_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi_produk` varchar(1000) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(1000) NOT NULL,
  `status_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_produk`
--

INSERT INTO `tr_produk` (`id_produk`, `nama_produk`, `deskripsi_produk`, `harga_produk`, `foto_produk`, `status_date`) VALUES
(1, 'Laptop HP', 'Laptop HP adalah salah satu laptop yang sangat bagus.', 18000000, 'LAPTOP HP.jpeg', '2024-08-19 22:26:41'),
(2, 'Laptop Xio', 'Laptop Xio adalah salah satu laptop yang sangat bagus.', 21000000, 'LAPTOP XIO.jpeg', '2024-08-19 22:27:00'),
(3, 'Laptop Asus', 'Laptop Asus murah', 270000000, 'LAPTOP ASUS.jpeg', '2024-08-19 22:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `tr_promo`
--

CREATE TABLE `tr_promo` (
  `id_promo` int(11) NOT NULL,
  `nama_promo` varchar(100) NOT NULL,
  `deskripsi_promo` varchar(1000) NOT NULL,
  `dari_tgl` date NOT NULL,
  `sampai_tgl` date NOT NULL,
  `jumlah_hari` int(11) NOT NULL,
  `status_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_promo`
--

INSERT INTO `tr_promo` (`id_promo`, `nama_promo`, `deskripsi_promo`, `dari_tgl`, `sampai_tgl`, `jumlah_hari`, `status_date`) VALUES
(1, 'Promo 100%', 'cukup dengan mendapatkan tiga teman untuk melakukan servis komputer maka akan mendapatkan biaya servis gratis!!', '2024-08-18', '2024-08-26', 8, '2024-08-18 21:07:00'),
(2, 'Promo gila gilaan', 'Cukup dengan melakukan kunjungan servis komputer minimal lima kali maka akan mendapatkan layanan servis gratis', '2024-08-19', '2024-08-31', 12, '2024-08-18 21:19:55'),
(3, 'Promo diskon 200%', 'Dapatkan promo terbatas ini hanya untuk satu orang beruntung!', '2020-01-01', '2020-06-26', 177, '2024-08-19 22:32:58'),
(4, 'Voluptatem porro ips', 'Laborum Voluptatem', '1979-01-03', '1980-01-28', 390, '2024-09-25 12:17:18'),
(5, 'Voluptatem maxime es', 'Est cum sint in as', '2016-07-08', '2021-04-15', 1742, '2024-09-25 12:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `tr_reminder`
--

CREATE TABLE `tr_reminder` (
  `id_reminder` int(11) NOT NULL,
  `id_customer` varchar(50) NOT NULL,
  `email_customer` varchar(100) NOT NULL,
  `isi_reminder` varchar(1000) NOT NULL,
  `reminder_date` datetime NOT NULL,
  `status_terkirim` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tr_reply_feedback`
--

CREATE TABLE `tr_reply_feedback` (
  `id_reply` int(11) NOT NULL,
  `id_feedback` int(11) NOT NULL,
  `isi_reply` varchar(1000) NOT NULL,
  `reply_by` varchar(100) NOT NULL,
  `status_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_reply_feedback`
--

INSERT INTO `tr_reply_feedback` (`id_reply`, `id_feedback`, `isi_reply`, `reply_by`, `status_date`) VALUES
(4, 4, 'Terima kasih gan:)', 'Admin CRM', '2020-01-19 21:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `tr_service`
--

CREATE TABLE `tr_service` (
  `id_service` int(11) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `nama_service` varchar(100) NOT NULL,
  `deskripsi_service` varchar(1000) NOT NULL,
  `harga_service` int(11) NOT NULL,
  `status_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_service`
--

INSERT INTO `tr_service` (`id_service`, `id_jenis`, `nama_service`, `deskripsi_service`, `harga_service`, `status_date`) VALUES
(1, 1, 'Service Diskon 30 %', 'Menservice laptop anda yang terkena masalah karena urusan mesin, yuk order sekarang!', 2500000, '2024-08-19 16:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `tr_status_order`
--

CREATE TABLE `tr_status_order` (
  `id_status` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_status_order`
--

INSERT INTO `tr_status_order` (`id_status`, `status`) VALUES
(1, 'SEDANG BERLANGSUNG'),
(2, 'TERTUNDA'),
(3, 'SELESAI'),
(4, 'DIBATALKAN');

-- --------------------------------------------------------

--
-- Table structure for table `tr_user`
--

CREATE TABLE `tr_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_registered` datetime NOT NULL,
  `role` varchar(30) NOT NULL,
  `id_customer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tr_user`
--

INSERT INTO `tr_user` (`id_user`, `username`, `email`, `password`, `date_registered`, `role`, `id_customer`) VALUES
(1, 'karmoi', 'yohaniskarmoi123@gmail.com', '0e494f9dc06512423186c07c9cda157f', '2020-01-16 00:00:00', 'admin', ''),
(5, 'yohanis', 'yohaniskarmoi123@gmail.com', 'd4f30eca76676e8f92f79df746786517', '2020-01-17 17:31:25', 'customer', '53AA803F9'),
(7, 'roman', 'roman@gmail.com', 'b179a9ec0777eae19382c14319872e1b', '2024-10-08 23:08:37', 'customer', '5322F87AG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tr_customer`
--
ALTER TABLE `tr_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `tr_email`
--
ALTER TABLE `tr_email`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tr_feedback`
--
ALTER TABLE `tr_feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Indexes for table `tr_ip`
--
ALTER TABLE `tr_ip`
  ADD UNIQUE KEY `nomor_ip` (`nomor_ip`,`id_produk`);

--
-- Indexes for table `tr_ip_2`
--
ALTER TABLE `tr_ip_2`
  ADD UNIQUE KEY `nomor_ip` (`nomor_ip`,`id_promo`);

--
-- Indexes for table `tr_jenis_service`
--
ALTER TABLE `tr_jenis_service`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tr_minat_produk`
--
ALTER TABLE `tr_minat_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tr_minat_promo`
--
ALTER TABLE `tr_minat_promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `tr_order`
--
ALTER TABLE `tr_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tr_produk`
--
ALTER TABLE `tr_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tr_promo`
--
ALTER TABLE `tr_promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `tr_reminder`
--
ALTER TABLE `tr_reminder`
  ADD PRIMARY KEY (`id_reminder`);

--
-- Indexes for table `tr_reply_feedback`
--
ALTER TABLE `tr_reply_feedback`
  ADD PRIMARY KEY (`id_reply`);

--
-- Indexes for table `tr_service`
--
ALTER TABLE `tr_service`
  ADD PRIMARY KEY (`id_service`);

--
-- Indexes for table `tr_status_order`
--
ALTER TABLE `tr_status_order`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tr_user`
--
ALTER TABLE `tr_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tr_feedback`
--
ALTER TABLE `tr_feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tr_jenis_service`
--
ALTER TABLE `tr_jenis_service`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tr_order`
--
ALTER TABLE `tr_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tr_produk`
--
ALTER TABLE `tr_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tr_reminder`
--
ALTER TABLE `tr_reminder`
  MODIFY `id_reminder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tr_reply_feedback`
--
ALTER TABLE `tr_reply_feedback`
  MODIFY `id_reply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tr_service`
--
ALTER TABLE `tr_service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tr_status_order`
--
ALTER TABLE `tr_status_order`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tr_user`
--
ALTER TABLE `tr_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
