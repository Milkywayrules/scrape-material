-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 07:23 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nguli`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `brand_name` varchar(20) NOT NULL,
  `image` varchar(250) NOT NULL,
  `product_url` varchar(250) NOT NULL,
  `normal_price` int(11) NOT NULL,
  `special_price` int(11) NOT NULL,
  `product_info` text DEFAULT NULL,
  `sales_uom` varchar(250) DEFAULT NULL,
  `package_l` varchar(250) NOT NULL,
  `package_w` varchar(250) NOT NULL,
  `package_h` varchar(250) NOT NULL,
  `product_l` varchar(250) NOT NULL,
  `product_w` varchar(250) NOT NULL,
  `product_h` varchar(250) NOT NULL,
  `product_weight` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `brand_name`, `image`, `product_url`, `normal_price`, `special_price`, `product_info`, `sales_uom`, `package_l`, `package_w`, `package_h`, `product_l`, `product_w`, `product_h`, `product_weight`, `created_at`) VALUES
(1, 'Tidy Vinyl Click Lantai Kayu DC145 White Maple', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027453_2.jpg', 'https://www.mitra10.com/tidy-vinyl-click-dc145-white-maple-box-2-048m2.html', 586500, 469200, '<div class=\"value\"><p>Keunggulan Produk:</p>\n<ul>\n<li>Anti rayap</li>\n<li>Anti bakterial</li>\n<li>Waterproof</li>\n<li>Durable</li>\n<li>Locking system</li>\n<li>Mudah dipasang, hanya dengan klik</li>\n<li>Mudah dibersihkan</li>\n</ul>\n<p>Isi box : 10 pcs</p>\n<p>Spesifikasi:</p>\n<ul>\n<li>Panjang : 120 CM</li>\n<li>Lebar : 17.5 CM</li>\n<li>Tebal : 4 MM</li>\n<li>Motif : white maple</li>\n</ul></div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10'),
(2, 'Tidy Vinyl Click Lantai Kayu 8403 Rural Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100028731_2_1.jpg', 'https://www.mitra10.com/tidy-vinyl-click-8403-rural-wood-box-2-048m2.html', 586500, 469200, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Locking system</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 10 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 120 CM</li>\r\n<li>Lebar : 17.5 CM</li>\r\n<li>Tebal : 4 MM</li>\r\n<li>Motif : rural wood</li>\r\n</ul></div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10'),
(3, 'Tidy Vinyl Click Lantai Kayu 133-2 Natural Maple', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100028728_1_1.jpg', 'https://www.mitra10.com/tidy-vinyl-click-133-2-natural-maple-box-2-048m2.html', 586500, 469200, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Locking system</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 10 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 120 CM</li>\r\n<li>Lebar : 17.5 CM</li>\r\n<li>Tebal : 4 MM</li>\r\n<li>Motif : natural maple</li>\r\n</ul></div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10'),
(4, 'Tidy Vinyl Click Lantai Kayu DDM10-9 Yellow Pine', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027452_2.jpg', 'https://www.mitra10.com/tidy-vinyl-click-ddm10-9-yellow-pine-box-2-048m2.html', 586500, 469200, '<div class=\"value\"><p>Keunggulan Produk:</p>\n<ul>\n<li>Anti rayap</li>\n<li>Anti bakterial</li>\n<li>Waterproof</li>\n<li>Durable</li>\n<li>Locking system</li>\n<li>Mudah dipasang, hanya dengan klik</li>\n<li>Mudah dibersihkan</li>\n</ul>\n<p>Isi box : 10 pcs</p>\n<p>Spesifikasi:</p>\n<ul>\n<li>Panjang : 120 CM</li>\n<li>Lebar : 17.5 CM</li>\n<li>Tebal : 4 MM</li>\n<li>Motif : yellow pine</li>\n</ul></div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10'),
(5, 'Tidy Vinyl Click Lantai Kayu 116-10 Red Cherry', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100028727_2_1.jpg', 'https://www.mitra10.com/tidy-vinyl-click-116-10-red-cherry-box-2-048m2.html', 586500, 469200, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Locking system</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 10 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 120 CM</li>\r\n<li>Lebar : 17.5 CM</li>\r\n<li>Tebal : 4 MM</li>\r\n<li>Motif : red cherry</li>\r\n</ul></div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10'),
(6, 'Tidy Vinyl Click Lantai Kayu DM6007-8 Classic Oak', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027454_2.jpg', 'https://www.mitra10.com/tidy-vinyl-click-dm6007-8-classic-oak-box-2-048m2.html', 586500, 469200, '<div class=\"value\"><p><img src=\"https://www.mitra10.com/media/wysiwyg/ProductDescription/Vinyl.png\" alt=\"\"></p></div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10'),
(7, 'Tidy Vinyl Click Lantai Kayu 157-14 Antique Cherry', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100028729_2.jpg', 'https://www.mitra10.com/tidy-vinyl-click-157-14-antique-cherry-box-2-048m2.html', 586500, 469200, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Locking system</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 10 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 120 CM</li>\r\n<li>Lebar : 17.5 CM</li>\r\n<li>Tebal : 4 MM</li>\r\n<li>Motif : antique cherry</li>\r\n</ul></div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10'),
(8, 'Tidy Vinyl Lantai Kayu HC7217-4 Dark Orange Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024296_2.jpg', 'https://www.mitra10.com/tidy-vinyl-hc7217-4-dark-orange-wood-box-3-753m2.html', 551800, 441440, '<div class=\"value\"><p>Keunggulan Produk:</p>\n<ul>\n<li>Anti rayap</li>\n<li>Anti bakterial</li>\n<li>Waterproof</li>\n<li>Durable</li>\n<li>Plank system (seperti stiker tinggal tempel)</li>\n<li>Mudah dipasang, hanya dengan klik</li>\n<li>Mudah dibersihkan</li>\n</ul>\n<p>Isi box : 27 pcs</p>\n<p>Spesifikasi:</p>\n<ul>\n<li>Panjang : 90 CM</li>\n<li>Lebar : 15 CM</li>\n<li>Tebal : 2 MM</li>\n<li>Motif : dark orange wood</li>\n</ul></div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(9, 'Tidy Vinyl Lantai Kayu JC8002 Light Yellow Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024295_2_2.jpg', 'https://www.mitra10.com/tidy-vinyl-jc8002-light-yellow-wood-box-3-753m2.html', 551800, 441440, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bacterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Plank system (seperti stiker tinggal tempel)</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 27 pcs<br>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 90 CM</li>\r\n<li>Lebar : 15 CM</li>\r\n<li>Tebal : 2 MM</li>\r\n<li>Motif : light yellow wood</li>\r\n</ul></div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(10, 'Tidy Vinyl Lantai Kayu HC7256 Growth Ring Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024297_2.jpg', 'https://www.mitra10.com/tidy-vinyl-hc7256-growth-ring-wood-box-3-753m2.html', 551800, 441440, '<div class=\"value\">Keunggulan Produk :\r\n- Anti rayap\r\n- Anti bacterial\r\n- Waterproof\r\n- Tahan lama (durable)\r\n- Plank system (seperti stiker tinggal tempel)\r\n- Mudah dalam pemasangan, hanya dengan klik\r\n-  Mudah dibersihkan\r\nIsi box : 27 pcs\r\nSpesifikasi :\r\n-Panjang : 90CM\r\n-Lebar : 15CM\r\n-Tebal : 2MM\r\n-Motif : growth ring wood\r\n</div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(11, 'Tidy Vinyl Lantai Kayu HC7264-5 Ocher Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024299_2.jpg', 'https://www.mitra10.com/tidy-vinyl-hc7264-5-ocher-wood-box-3-753m2.html', 551800, 441440, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Plank system (seperti stiker tinggal tempel)</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 27 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 90 CM</li>\r\n<li>Lebar : 15 CM</li>\r\n<li>Tebal : 2 MM</li>\r\n<li>Motif : ocher wood</li>\r\n</ul></div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(12, 'Tidy Vinyl Lantai Kayu HC7256-1 White Wave Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024298_2_1.jpg', 'https://www.mitra10.com/tidy-vinyl-hc7256-1-white-wave-wood-box-3-753m2.html', 551800, 441440, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Plank system (seperti stiker tinggal tempel)</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 27 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 90 CM</li>\r\n<li>Lebar : 15 CM</li>\r\n<li>Tebal : 2 MM</li>\r\n<li>Motif : white wave wood</li>\r\n</ul></div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(13, 'Tidy Vinyl Lantai Kayu HT7022 Frost Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024300_2.jpg', 'https://www.mitra10.com/tidy-vinyl-ht7022-frost-wood-box-3-753m2.html', 551800, 441440, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Plank system (seperti stiker tinggal tempel)</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 27 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 90 CM</li>\r\n<li>Lebar : 15 CM</li>\r\n<li>Tebal : 2 MM</li>\r\n<li>Motif : frost wood</li>\r\n</ul></div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(14, 'Tidy Vinyl Lantai Kayu HC7193 Dark Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024301_2.jpg', 'https://www.mitra10.com/tidy-vinyl-hc7193-dark-wood-box-3-753m2.html', 551800, 441440, '<div class=\"value\">Keunggulan Produk :\n- Anti rayap\n- Anti bacterial\n- Waterproof\n- Tahan lama (durable)\n- Plank system (seperti stiker tinggal tempel)\n- Mudah dalam pemasangan, hanya dengan klik\n-  Mudah dibersihkan\nIsi box : 27 pcs\nSpesifikasi :\n-Panjang : 90CM\n-Lebar : 15CM\n-Tebal : 2MM\n-Motif : dark wood\n</div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(15, 'Tidy Vinyl Lantai Kayu HC7033 Brown Parquet', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100025118_2.jpg', 'https://www.mitra10.com/tidy-vinyl-hc7033-brown-parquet-box-3-753m2.html', 551800, 441440, '<div class=\"value\">Keunggulan Produk :\r\n- Anti rayap\r\n- Anti bacterial\r\n- Waterproof\r\n- Tahan lama (durable)\r\n- Plank system (seperti stiker tinggal tempel)\r\n- Mudah dalam pemasangan, hanya dengan klik\r\n-  Mudah dibersihkan\r\nIsi box : 27 pcs\r\nSpesifikasi :\r\n-Panjang : 90CM\r\n-Lebar : 15CM\r\n-Tebal : 2MM\r\n-Motif : brown parquet\r\n</div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(16, 'Tidy Vinyl Lantai Kayu HC7263 Big Tree Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024302_2.jpg', 'https://www.mitra10.com/tidy-vinyl-hc7263-big-tree-wood-box-3-753m2.html', 551800, 441440, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Plank system (seperti stiker tinggal tempel)</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 27 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 90 CM</li>\r\n<li>Lebar : 15 CM</li>\r\n<li>Tebal : 2 MM</li>\r\n<li>Motif : big tree wood</li>\r\n</ul></div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(17, 'Tidy Vinyl Lantai Kayu HC7274-2 Rose Wood', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100025119_2.jpg', 'https://www.mitra10.com/tidy-vinyl-hc7274-2-rose-wood-box-3-753m2.html', 551800, 441440, '<div class=\"value\"><p>Keunggulan Produk:</p>\n<ul>\n<li>Anti rayap</li>\n<li>Anti bakterial</li>\n<li>Waterproof</li>\n<li>Durable</li>\n<li>Plank system (seperti stiker tinggal tempel)</li>\n<li>Mudah dipasang, hanya dengan klik</li>\n<li>Mudah dibersihkan</li>\n</ul>\n<p>Isi box : 27 pcs</p>\n<p>Spesifikasi:</p>\n<ul>\n<li>Panjang : 90 CM</li>\n<li>Lebar : 15 CM</li>\n<li>Tebal : 2 MM</li>\n<li>Motif : rose wood</li>\n</ul></div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(18, 'Tidy Vinyl Lantai Kayu LS120-2 Dark-Red Teak', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100025117_2_1.jpg', 'https://www.mitra10.com/tidy-vinyl-ls120-2-dark-red-teak-box-3-753m2.html', 551800, 441440, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Plank system (seperti stiker tinggal tempel)</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 27 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 90 CM</li>\r\n<li>Lebar : 15 CM</li>\r\n<li>Tebal : 2 MM</li>\r\n<li>Motif : dark-red teak</li>\r\n</ul></div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(19, 'Tidy Vinyl Click Lantai Kayu HV7104 Brown Walnut', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027449_2.jpg', 'https://www.mitra10.com/tidy-vinyl-click-hv7104-brown-walnut-box-2-048m2.html', 586500, 469200, '<div class=\"value\">Keunggulan Produk :\n- Anti rayap\n- Anti bacterial\n- Waterproof\n- Tahan lama (durable)\n- Locking system\n- Mudah dalam pemasangan, hanya dengan klik\n-  Mudah dibersihkan\nIsi box : 10 pcs\nSpesifikasi :\n-Panjang : 120 CM\n-Lebar : 17.5 CM\n-Tebal : 4 MM\n-Motif : brown walnut\n</div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10'),
(20, 'Tidy Vinyl Click Lantai Kayu LS1115-77 Red Oak', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027450_2.jpg', 'https://www.mitra10.com/tidy-vinyl-click-ls1115-77-red-oak-box-2-048m2.html', 586500, 469200, '<div class=\"value\">Keunggulan Produk :\n- Anti rayap\n- Anti bacterial\n- Waterproof\n- Tahan lama (durable)\n- Locking system\n- Mudah dalam pemasangan, hanya dengan klik\n-  Mudah dibersihkan\nIsi box : 10 pcs\nSpesifikasi :\n-Panjang : 120 CM\n-Lebar : 17.5 CM\n-Tebal : 4 MM\n-Motif : red oak\n</div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10'),
(21, 'Tidy Vinyl Lantai Kayu HC7365-1 Ashen Teak', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100025120_2_1.jpg', 'https://www.mitra10.com/tidy-vinyl-hc7365-1-ashen-teak-box-3-753m2.html', 551800, 441440, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Plank system (seperti stiker tinggal tempel)</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 27 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 90 CM</li>\r\n<li>Lebar : 15 CM</li>\r\n<li>Tebal : 2 MM</li>\r\n<li>Motif : ashen teak</li>\r\n</ul></div>', 'BOX', '92', '17', '7', '90', '15', '0', '20', '2021-05-26 20:08:10'),
(22, 'Tidy Vinyl Click Lantai Kayu DC180 White Oak', 'TIDY', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027451_2_1.jpg', 'https://www.mitra10.com/tidy-vinyl-click-dc180-white-oak-box-2-048m2.html', 586500, 469200, '<div class=\"value\"><p>Keunggulan Produk:</p>\r\n<ul>\r\n<li>Anti rayap</li>\r\n<li>Anti bakterial</li>\r\n<li>Waterproof</li>\r\n<li>Durable</li>\r\n<li>Locking system</li>\r\n<li>Mudah dipasang, hanya dengan klik</li>\r\n<li>Mudah dibersihkan</li>\r\n</ul>\r\n<p>Isi box : 10 pcs</p>\r\n<p>Spesifikasi:</p>\r\n<ul>\r\n<li>Panjang : 120 CM</li>\r\n<li>Lebar : 17.5 CM</li>\r\n<li>Tebal : 4 MM</li>\r\n<li>Motif : white oak</li>\r\n</ul></div>', 'BOX', '122', '19', '5', '120', '17', '0', '18', '2021-05-26 20:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `url`
--

CREATE TABLE `url` (
  `id` int(11) NOT NULL,
  `product_url` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `url`
--

INSERT INTO `url` (`id`, `product_url`, `image`, `created_at`) VALUES
(1, 'https://www.mitra10.com/tidy-vinyl-click-ddm10-9-yellow-pine-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027452_2.jpg', '2021-05-26 19:53:28'),
(2, 'https://www.mitra10.com/tidy-vinyl-click-dc145-white-maple-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027453_2.jpg', '2021-05-26 19:53:28'),
(3, 'https://www.mitra10.com/tidy-vinyl-click-dm6007-8-classic-oak-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027454_2.jpg', '2021-05-26 19:53:28'),
(4, 'https://www.mitra10.com/tidy-vinyl-click-116-10-red-cherry-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100028727_2_1.jpg', '2021-05-26 19:53:28'),
(5, 'https://www.mitra10.com/tidy-vinyl-click-133-2-natural-maple-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100028728_1_1.jpg', '2021-05-26 19:53:28'),
(6, 'https://www.mitra10.com/tidy-vinyl-click-157-14-antique-cherry-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100028729_2.jpg', '2021-05-26 19:53:28'),
(7, 'https://www.mitra10.com/tidy-vinyl-click-8403-rural-wood-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100028731_2_1.jpg', '2021-05-26 19:53:28'),
(8, 'https://www.mitra10.com/zehn-glass-mosaic-mc-03-brown-mocca-30x30cm.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100017206_2.jpg', '2021-05-26 19:53:28'),
(9, 'https://www.mitra10.com/zehn-glass-mosaic-mc-04-green-30x30cm.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100017207_2.jpg', '2021-05-26 19:53:28'),
(10, 'https://www.mitra10.com/zehn-glsss-mosaic-mc-06-orange-yell-grn-30x30cm.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100017209_2.jpg', '2021-05-26 19:53:28'),
(11, 'https://www.mitra10.com/zehn-glass-mosaic-mc-02-black-red-30x30cm.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100017210_2_2.jpg', '2021-05-26 19:53:28'),
(12, 'https://www.mitra10.com/zehn-glass-mosaic-mc-05-white-rose-30x30cm.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100017211_2.jpg', '2021-05-26 19:53:28'),
(13, 'https://www.mitra10.com/zehn-stein-mosaic-gs-07-exotic-brown-sugar-30x30cm.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100017214_2.jpg', '2021-05-26 19:53:28'),
(14, 'https://www.mitra10.com/tidy-vinyl-jc8002-light-yellow-wood-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024295_2_2.jpg', '2021-05-26 19:53:28'),
(15, 'https://www.mitra10.com/tidy-vinyl-hc7217-4-dark-orange-wood-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024296_2.jpg', '2021-05-26 19:53:28'),
(16, 'https://www.mitra10.com/tidy-vinyl-hc7256-growth-ring-wood-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024297_2.jpg', '2021-05-26 19:53:28'),
(17, 'https://www.mitra10.com/tidy-vinyl-hc7256-1-white-wave-wood-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024298_2_1.jpg', '2021-05-26 19:53:28'),
(18, 'https://www.mitra10.com/tidy-vinyl-hc7264-5-ocher-wood-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024299_2.jpg', '2021-05-26 19:53:28'),
(19, 'https://www.mitra10.com/tidy-vinyl-ht7022-frost-wood-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024300_2.jpg', '2021-05-26 19:53:28'),
(20, 'https://www.mitra10.com/tidy-vinyl-hc7193-dark-wood-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024301_2.jpg', '2021-05-26 19:53:28'),
(21, 'https://www.mitra10.com/tidy-vinyl-hc7263-big-tree-wood-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100024302_2.jpg', '2021-05-26 19:53:28'),
(22, 'https://www.mitra10.com/tidy-vinyl-ls120-2-dark-red-teak-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100025117_2_1.jpg', '2021-05-26 19:53:28'),
(23, 'https://www.mitra10.com/tidy-vinyl-hc7033-brown-parquet-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100025118_2.jpg', '2021-05-26 19:53:28'),
(24, 'https://www.mitra10.com/tidy-vinyl-hc7274-2-rose-wood-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100025119_2.jpg', '2021-05-26 19:53:28'),
(25, 'https://www.mitra10.com/tidy-vinyl-hc7365-1-ashen-teak-box-3-753m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100025120_2_1.jpg', '2021-05-26 19:53:28'),
(26, 'https://www.mitra10.com/tidy-vinyl-click-hv7104-brown-walnut-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027449_2.jpg', '2021-05-26 19:53:28'),
(27, 'https://www.mitra10.com/tidy-vinyl-click-ls1115-77-red-oak-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027450_2.jpg', '2021-05-26 19:53:28'),
(28, 'https://www.mitra10.com/tidy-vinyl-click-dc180-white-oak-box-2-048m2.html', 'https://www.mitra10.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/0/1/0100027451_2_1.jpg', '2021-05-26 19:53:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `url`
--
ALTER TABLE `url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
