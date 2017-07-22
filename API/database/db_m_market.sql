-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2017 at 06:24 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_m_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

CREATE TABLE IF NOT EXISTS `adress` (
  `id_adress` int(11) NOT NULL,
  `adress1` varchar(255) NOT NULL,
  `adress2` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
`bank_id` int(11) NOT NULL,
  `bank_nm` varchar(15) NOT NULL,
  `norek` int(11) NOT NULL,
  `nm_pemilik` varchar(50) NOT NULL,
  `jmlh_trnsfer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `chart_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_prdk` int(11) NOT NULL,
  `jmlh_prdk` int(5) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(5) NOT NULL,
  `nm` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`pesan_id` int(11) NOT NULL,
  `no_invoice` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `toko_id` int(11) NOT NULL,
  `status_order` int(11) NOT NULL,
  `metode_paymen` int(11) NOT NULL,
  `note_produk` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `shiping` float NOT NULL,
  `id_penerima2` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `id_psn_detail` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pesan_detail_quantity` int(11) NOT NULL,
  `pesan_detail_shiping` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
`transfer_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penerima`
--

CREATE TABLE IF NOT EXISTS `penerima` (
`penerima_id` int(11) NOT NULL,
  `penerima_nm` text NOT NULL,
  `penerima_almt` varchar(200) NOT NULL,
  `penerima_notelp` varchar(12) NOT NULL,
  `penerima_kdpos` mediumint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `product_nm` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_desc` varchar(700) NOT NULL,
  `product_weight` float NOT NULL,
  `product_count` tinyint(2) NOT NULL,
  `product_color` text NOT NULL,
  `product_img` varchar(100) NOT NULL,
  `id_category` int(5) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` varchar(99) NOT NULL,
  `jumlah` varchar(99) NOT NULL,
  `penerima` varchar(99) NOT NULL,
  `alamat` varchar(99) NOT NULL,
  `notelp` varchar(99) NOT NULL,
  `pembayaran` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `jumlah`, `penerima`, `alamat`, `notelp`, `pembayaran`) VALUES
('2', '12', 'aa', 'aa', '11', ''),
('1', '1', 'aa', 'cc', '1', ''),
('2', '2', 'as', 'sa', '12', ''),
('2', '50', 'a', 'as', '0', ''),
('2', '4', 'jemmy', 'pamulang', '0pembayaran=COD', ''),
('1', '2', 'as', 'as', '0', 'TRANSFER'),
('1', '2', 'jemmy calak', 'pamulang', '0', 'COD'),
('2', '1', 'jemmy calak', 'pamulang', '0', 'COD'),
('2', '2', 'T', 'R', '0', 'TRANSFER'),
('2', '5', 'A', 'A', '0', 'COD'),
('', '', '', '', '098', ''),
('2', '5', 'd', 'd', '0909009', 'TRANSFER'),
('1', '1', 'q', 'q', '0909009', 'TRANSFER'),
('2', '1', '2', '2', '0909009', 'TRANSFER'),
('2', '12', '2', '2', '0909009', 'COD'),
('2', '1', '1', '1', '0909009', 'TRANSFER'),
('1', '1', '1', '1', '0909009', 'TRANSFER'),
('1', '1', '1', '1', '0909009', 'TRANSFER'),
('2', '1', '1', '1', '0909009', 'TRANSFER'),
('2', '1', '1', '1', '0909009', 'TRANSFER'),
('2', '1', 'q', 'q', '0909009', 'TRANSFER'),
('2', '1', '1', '1', '0909009', 'TRANSFER'),
('2', '1', 'q', 'q', '0909009', 'TRANSFER'),
('2', '1', '11', '1', '0909009', 'TRANSFER'),
('1', '1', '1', '1', '0909009', 'COD'),
('1', '1', '1', '1', '0909009', 'COD'),
('1', '1', '1', '1', '0909009', 'TRANSFER'),
('2', '1', '1', '1', '0909009', 'TRANSFER'),
('2', '1', '1', '11', '0909009', 'TRANSFER'),
('2', '1', '1', '1', '0909009', 'TRANSFER'),
('2', '1', '1', '1', '0909009', 'TRANSFER'),
('2', '1', '1', '1', '0909009', 'TRANSFER'),
('2', '1', '1', '1', '0909009', 'TRANSFER'),
('1', '1', 'a', 'a', '0909009', 'COD'),
('1', '1', 'a', 'a', '0909009', 'COD'),
('1', '1', 'q', 'q', '0909009', 'TRANSFER');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE IF NOT EXISTS `toko` (
  `id_toko` int(11) NOT NULL,
  `nm_toko` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_addres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pw` varchar(50) NOT NULL,
  `user_nm` varchar(50) NOT NULL,
  `user_jk` varchar(12) NOT NULL,
  `user_notelp` varchar(12) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `id_adres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adress`
--
ALTER TABLE `adress`
 ADD PRIMARY KEY (`id_adress`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
 ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`chart_id`), ADD KEY `id_user` (`id_user`), ADD KEY `id_prdk` (`id_prdk`), ADD KEY `id_user_2` (`id_user`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`pesan_id`), ADD UNIQUE KEY `product_id_2` (`product_id`,`toko_id`,`metode_paymen`), ADD KEY `user_id` (`user_id`), ADD KEY `user_id_2` (`user_id`), ADD KEY `pesan_id` (`pesan_id`), ADD KEY `user_id_3` (`user_id`), ADD KEY `product_id` (`product_id`,`toko_id`,`metode_paymen`), ADD KEY `product_id_3` (`product_id`,`toko_id`,`metode_paymen`), ADD KEY `metode_paymen` (`metode_paymen`), ADD KEY `toko_id` (`toko_id`), ADD KEY `id_penerima2` (`id_penerima2`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
 ADD KEY `pesan_id` (`id_psn_detail`,`product_id`,`pesan_detail_quantity`), ADD KEY `product_id` (`product_id`), ADD KEY `id_psn_detail` (`id_psn_detail`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
 ADD PRIMARY KEY (`transfer_id`), ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `penerima`
--
ALTER TABLE `penerima`
 ADD PRIMARY KEY (`penerima_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`), ADD KEY `id_category` (`id_category`), ADD KEY `id_category_2` (`id_category`), ADD KEY `id_category_3` (`id_category`), ADD KEY `id_category_4` (`id_category`), ADD KEY `id_category_5` (`id_category`), ADD KEY `id_category_6` (`id_category`), ADD KEY `id_category_7` (`id_category`), ADD KEY `id_category_8` (`id_category`), ADD KEY `id_category_9` (`id_category`), ADD KEY `id_category_10` (`id_category`), ADD KEY `id_category_11` (`id_category`), ADD KEY `id_category_12` (`id_category`), ADD KEY `id_category_13` (`id_category`), ADD KEY `id_category_14` (`id_category`), ADD KEY `id_category_15` (`id_category`), ADD KEY `id_category_16` (`id_category`), ADD KEY `id_category_17` (`id_category`), ADD KEY `id_category_18` (`id_category`), ADD KEY `id_category_19` (`id_category`), ADD KEY `id_category_20` (`id_category`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
 ADD PRIMARY KEY (`id_toko`), ADD KEY `id_user` (`id_user`,`id_addres`), ADD KEY `id_addres` (`id_addres`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`), ADD KEY `id_adres` (`id_adres`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `pesan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penerima`
--
ALTER TABLE `penerima`
MODIFY `penerima_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank`
--
ALTER TABLE `bank`
ADD CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `payment` (`bank_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_prdk`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`metode_paymen`) REFERENCES `payment` (`transfer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `order_ibfk_4` FOREIGN KEY (`toko_id`) REFERENCES `toko` (`id_toko`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `order_ibfk_5` FOREIGN KEY (`id_penerima2`) REFERENCES `penerima` (`penerima_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `toko`
--
ALTER TABLE `toko`
ADD CONSTRAINT `toko_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `toko_ibfk_2` FOREIGN KEY (`id_addres`) REFERENCES `adress` (`id_adress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_adres`) REFERENCES `adress` (`id_adress`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
