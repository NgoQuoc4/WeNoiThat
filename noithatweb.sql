-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 06:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noithatweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_bills` int(11) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `id_bills`, `quanty`, `total`) VALUES
(61, 61, 8, 1, 400000),
(62, 16, 9, 400000, 1),
(63, 54, 10, 2400000, 4),
(64, 59, 10, 200000, 1),
(65, 45, 10, 3000000, 1),
(66, 30, 10, 500000, 1),
(67, 18, 11, 150000, 1),
(68, 3, 11, 2000000, 1),
(69, 52, 11, 4000000, 1),
(70, 39, 11, 50000, 1),
(71, 57, 11, 600000, 1),
(72, 11, 11, 500000, 1),
(73, 29, 11, 120000, 1),
(74, 15, 12, 800000, 2),
(75, 2, 13, 1000000, 1),
(76, 37, 13, 100000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES
(8, 'haiyen@gmail.com', '1234567890', 'Trần Thị Hải Yến', 'VIET NAM', 400000, 1, 'Giao Chủ Nhật'),
(9, 'trungdong@gmail.com', '', 'Hồ Trung Đông', 'VIET NAM', 400000, 1, ''),
(10, 'haiyen@gmail.com', '123123123', 'Trần Thị Hải Yến', 'VIET NAM', 6100000, 7, 'Giao giờ hành chính'),
(11, 'haiyen@gmail.com', '1231231231', 'Trần Thị Hải Yến', 'VIET NAM', 7420000, 7, 'Giao giờ hành chính'),
(12, 'trungdong@gmail.com', '435354', 'Hồ Trung Đông1', 'VIET NAM', 800000, 2, 'Giao giờ hành chính'),
(13, 'trungdong@gmail.com', '12313', 'Hồ Trung Đông', 'VIET NAM', 1100000, 3, 'Giao giờ hành chính');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `img`) VALUES
(1, 'Bàn', ''),
(2, 'Ghế', ''),
(3, 'Đèn', ''),
(4, 'Kệ', ''),
(5, 'Gương', ''),
(6, 'Sofa', ''),
(7, 'Tủ', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `id_category` int(11) NOT NULL,
  `tilte` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `price`, `id_category`, `tilte`) VALUES
(1, 'Bàn Ăn Đen', 'bananden.png', 1000000, 1, 'Sử dụng trong phòng bếp.'),
(2, 'Bàn Ăn Màu Gỗ', 'banango.png', 1000000, 1, 'Sử dụng trong phòng bếp.'),
(3, 'Bàn Ăn Màu Nâu', 'banannau.png', 2000000, 1, 'Sử dụng trong phòng bếp.'),
(4, 'Bàn Ăn Màu Trắng', 'banantrang.png', 2500000, 1, 'Sử dụng trong phòng bếp.'),
(5, 'Bàn Làm Việc Đen', 'banlamden.png', 2500000, 1, 'Sử dụng trong văn phòng.'),
(7, 'Bàn Làm Việc Màu Gỗ', 'banlamgo.png', 1000000, 1, 'Bàn làm việc dùng trong văn phòng.'),
(8, 'Bàn Làm Việc Màu Trắng', 'banlamtrang.png', 500000, 1, 'Bàn làm việc dùng trong văn phòng.'),
(10, 'Ghế Văn Phòng Đen', 'ghelamden.png', 500000, 2, 'Ghế dùng trong văn phòng.'),
(11, 'Ghế Văn Phòng Trắng', 'ghelamtrang.png', 500000, 2, 'Ghế dùng trong văn phòng.'),
(12, 'Ghế Nhỏ Đỏ', 'ghenhodo.png', 300000, 2, 'Ghế nhỏ ngồi đâu cũng được.'),
(13, 'Ghế Nhỏ Xám', 'ghenhoxam.png', 300000, 2, 'Ghế nhỏ ngồi đâu cũng được.'),
(14, 'Ghế Nhỏ Xanh', 'ghenhoxanh.png', 300000, 2, 'Ghế nhỏ ngồi đâu cũng được.'),
(15, 'Ghế Xoay Đen', 'ghexoayden.png', 400000, 2, 'Ghế xoay nâng hạ.'),
(16, 'Ghế Xoay Trắng', 'ghexoaytrang.png', 400000, 2, 'Ghế xoay nâng hạ'),
(17, 'Đèn Bàn Đen', 'denbanden.png', 150000, 3, 'Đèn bàn học tập đa dụng.'),
(18, 'Đèn Bàn Trắng', 'denbantrang.png', 150000, 3, 'Đèn bàn học tập đa dụng.'),
(21, 'Đèn Bàn Vàng', 'denbanvang.png', 150000, 3, 'Đèn bàn dùng học tập đa dụng.'),
(22, 'Đèn Bàn Nhỏ Đen', 'dennhoden.png', 100000, 3, 'Đèn bàn nhỏ học tập.'),
(23, 'Đèn Bàn Nhỏ Hồng', 'dennhohong.png', 100000, 3, 'Đèn bàn nhỏ học tập.'),
(24, 'Đèn Bàn Nhỏ Trắng', 'dennhotrang.png', 100000, 3, 'Đèn bàn nhỏ học tập.'),
(25, 'Đèn Nhỏ Vàng', 'dennhovang.png', 100000, 3, 'Đèn bàn nhỏ học tập.'),
(26, 'Gương Để Bàn Đen', 'guongbanden.png', 150000, 5, 'Gương để bàn trang điểm.'),
(27, 'Gương Để Bàn Trắng', 'guongbantrang.png', 150000, 5, 'Gương để bàn trang điểm.'),
(28, 'Gương Nhỏ Để Bàn Hồng', 'guongbanhong.png', 120000, 5, 'Gương nhỏ để bàn.'),
(29, 'Gương Nhỏ Để Bàn Hồng', 'guongbanxanh.png', 120000, 5, 'Gương nhỏ để bàn.'),
(30, 'Gương Dài Đen', 'guongdaiden.png', 500000, 5, 'Gương xem toàn thân chụp ảnh.'),
(31, 'Gương Dài Trắng', 'guongdaitrang.png', 500000, 5, 'Gương xem toàn thân chụp ảnh.'),
(32, 'Gương Tròn Đen', 'guongtronden.png', 400000, 5, 'Gương tròn treo tường.'),
(33, 'Gương Tròn Trắng', 'guongtrontrang.png', 400000, 5, 'Gương tròn treo tường.'),
(34, 'Gương Tròn Vàng', 'guongtronvang.png', 400000, 5, 'Gương tròn treo tường.'),
(35, 'Kệ Treo Tường Đen', 'keden.png', 50000, 4, 'Kệ treo tường trang trí.'),
(36, 'Kệ Treo Tường Trắng', 'ketrang.png', 50000, 4, 'Kệ treo tường trang trí.'),
(37, 'Kệ Móc Đen', 'ketreoden.png', 50000, 4, 'Kệ treo tường dạng bảng.'),
(38, 'Kệ Móc Trắng', 'ketreotrang.png', 50000, 4, 'Kệ treo tường dạng bảng.'),
(39, 'Kệ Móc Xanh', 'ketreoxanh.png', 50000, 4, 'Kệ treo tường dạng bảng.'),
(40, 'Kệ Móc Gỗ', 'ketreogo.png', 50000, 4, 'Kệ treo tường dạng bảng.'),
(41, 'Kệ Tivi Đen', 'ketividen.png', 2000000, 4, 'Kệ để tivi đa dụng.'),
(42, 'Kệ Tivi Gỗ', 'ketivigo.png', 2000000, 4, 'Kệ để tivi đa dụng.'),
(43, 'Kệ Tivi Nâu', 'ketivinau.png', 2000000, 4, 'Kệ để tivi đa dụng.'),
(44, 'Sofa Nhỏ Đen', 'sofanhoden.png', 3000000, 6, 'Sofa phòng khách.'),
(45, 'Sofa Nhỏ Đỏ', 'sofanhodo.png', 3000000, 6, 'Sofa phòng khách.'),
(46, 'Sofa Nhỏ Xám', 'sofanhoxam.png', 3000000, 6, 'Sofa để phòng khách.'),
(47, 'Sofa To Nâu', 'sofatonau.png', 5000000, 6, 'Sofa để phòng khách.'),
(48, 'Sofa To Trắng', 'sofatotrang.png', 5000000, 6, 'Sofa để phòng khách.'),
(49, 'Sofa To Xám', 'sofatoxam.png', 5000000, 6, 'Sofa để phòng khách.'),
(50, 'Sofa Vừa Nâu', 'sofavuanau.png', 4000000, 6, 'Sofa để phòng khách.'),
(51, 'Sofa Vừa Nâu', 'sofavuatrang.png', 4000000, 6, 'Sofa để phòng khách.'),
(52, 'Sofa Vừa Vàng', 'sofavuavang.png', 4000000, 6, 'Sofa để phòng khách.'),
(53, 'Tủ Áo Nhỏ Trắng', 'tuaonho.png', 200000, 7, 'Tủ áo nhỏ phòng ngủ.'),
(54, 'Tủ Áo To Trắng', 'tuaoto.png', 600000, 7, 'Tủ áo to phòng ngủ.'),
(55, 'Tủ Áo Vừa Trắng', 'tuaovua.png', 400000, 7, 'Tủ áo phòng ngủ.'),
(56, 'Tủ Nhỏ Đen', 'tudennho.png', 200000, 7, 'Tủ phòng ngủ.'),
(57, 'Tủ To Đen', 'tudento.png', 600000, 7, 'Tủ to phòng ngủ.'),
(58, 'Tủ Vừa Đen', 'tudenvua.png', 400000, 7, 'Tủ vừa phòng ngủ.'),
(59, 'Tủ Nhỏ Gỗ', 'tunho.png', 200000, 7, 'Tủ nhỏ phòng ngủ.'),
(60, 'Tủ To Gỗ', 'tuto.png', 600000, 7, 'Tủ to phòng ngủ.'),
(61, 'Tủ Vừa Gỗ', 'tuvua.png', 400000, 7, 'Tủ vừa phòng ngủ.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`, `id_role`) VALUES
(4, 'ngoquoc@gmail.com', '$2a$12$e1kPMqUZOeQux5Cfjllss.8jUL2u5Sux9H/K1XtJiAJoWj6wG8lUG', 'Ngô Chí Quốc', 'VIET NAM', 2),
(5, 'trungdong@gmail.com', '$2a$12$kfaFJ1wvMTli.Dl03ZMWg.mzNB3rbwcfsklCWfpPeMY9.2a30COS6', 'Hồ Trung Đông', 'VIET NAM', 1),
(8, 'haiyen@gmail.com', '$2a$12$btd7HEqTyGhIxEVgTTaufetSWyUj4C75Q2KHChWBArxSh2NRvORQ2', 'Trần Thị Hải Yến', 'VIET NAM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
