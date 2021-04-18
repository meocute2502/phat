-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 01:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `order_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `order_status`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(35, 43, '2020-11-30', 'Đang xử lý', 5400000, 'Thanh toán khi nhận hàng', NULL, '2020-11-30 12:03:36', '2020-11-30 12:03:36'),
(33, 41, '2020-11-30', 'Đang xử lý', 3500000, 'Thanh toán khi nhận hàng', NULL, '2020-11-30 08:55:45', '2020-11-30 08:55:45'),
(34, 42, '2020-11-30', 'Đang xử lý', 5400000, 'Thanh toán khi nhận hàng', NULL, '2020-11-30 11:29:30', '2020-11-30 11:29:30'),
(36, 44, '2020-11-30', 'Đang xử lý', 5400000, 'Thanh toán khi nhận hàng', NULL, '2020-11-30 12:09:12', '2020-11-30 12:09:12'),
(37, 45, '2020-11-30', 'Đang xử lý', 5400000, 'Thanh toán khi nhận hàng', NULL, '2020-11-30 12:10:10', '2020-11-30 12:10:10'),
(38, 46, '2020-11-30', 'Đang xử lý', 5400000, 'Thanh toán khi nhận hàng', NULL, '2020-11-30 12:12:27', '2020-11-30 12:12:27'),
(39, 47, '2020-11-30', 'Đang xử lý', 5400000, 'Thanh toán khi nhận hàng', NULL, '2020-11-30 12:18:36', '2020-11-30 12:18:36'),
(40, 48, '2020-12-07', 'Đang xử lý', 3500000, 'Thanh toán khi nhận hàng', NULL, '2020-12-07 06:10:20', '2020-12-07 06:10:20'),
(41, 49, '2020-12-07', 'Đang xử lý', 1500000, 'Thanh toán khi nhận hàng', NULL, '2020-12-07 06:27:21', '2020-12-07 06:27:21'),
(42, 50, '2020-12-07', 'Đang xử lý', 3500000, 'Thanh toán khi nhận hàng', NULL, '2020-12-07 06:43:39', '2020-12-07 06:43:39'),
(43, 51, '2020-12-07', 'Đang xử lý', 3500000, 'Thanh toán khi nhận hàng', NULL, '2020-12-07 07:58:41', '2020-12-07 07:58:41'),
(44, 52, '2020-12-07', 'Đang xử lý', 3500000, 'Thanh toán khi nhận hàng', NULL, '2020-12-07 08:06:49', '2020-12-07 08:06:49'),
(45, 53, '2020-12-07', 'Đang xử lý', 399000, 'Thanh toán khi nhận hàng', NULL, '2020-12-07 10:13:13', '2020-12-07 10:13:13'),
(46, 54, '2020-12-07', 'Đang xử lý', 3500000, 'Thanh toán khi nhận hàng', NULL, '2020-12-07 10:14:16', '2020-12-07 10:14:16'),
(47, 55, '2020-12-07', 'Đang xử lý', 5000000, 'Thanh toán khi nhận hàng', NULL, '2020-12-07 10:19:56', '2020-12-07 10:19:56'),
(48, 56, '2020-12-08', 'Đang xử lý', 3500000, 'Thanh toán khi nhận hàng', NULL, '2020-12-08 04:14:36', '2020-12-08 04:14:36'),
(50, 58, '2020-12-08', 'Đang xử lý', 1500000, 'Thanh toán khi nhận hàng', NULL, '2020-12-08 12:03:31', '2020-12-08 12:03:31'),
(51, 59, '2021-04-12', 'Đang xử lý', 224000, 'Thanh toán khi nhận hàng', 'meo mua ne', '2021-04-12 14:57:55', '2021-04-12 14:57:55'),
(52, 60, '2021-04-12', 'Đang xử lý', 150000, 'Thanh toán khi nhận hàng', 'mua ne', '2021-04-12 15:00:09', '2021-04-12 15:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(33, 1, 1, 3500000, '2020-11-30 08:55:45', '2020-11-30 08:55:45'),
(34, 1, 1, 3500000, '2020-11-30 11:29:30', '2020-11-30 11:29:30'),
(35, 1, 1, 3500000, '2020-11-30 12:03:36', '2020-11-30 12:03:36'),
(36, 1, 1, 3500000, '2020-11-30 12:09:12', '2020-11-30 12:09:12'),
(37, 1, 1, 3500000, '2020-11-30 12:10:10', '2020-11-30 12:10:10'),
(38, 1, 1, 3500000, '2020-11-30 12:12:27', '2020-11-30 12:12:27'),
(39, 1, 1, 3500000, '2020-11-30 12:18:36', '2020-11-30 12:18:36'),
(39, 2, 1, 1500000, '2020-11-30 12:18:36', '2020-11-30 12:18:36'),
(39, 7, 1, 400000, '2020-11-30 12:18:36', '2020-11-30 12:18:36'),
(40, 1, 1, 3500000, '2020-12-07 06:10:20', '2020-12-07 06:10:20'),
(41, 2, 1, 1500000, '2020-12-07 06:27:21', '2020-12-07 06:27:21'),
(42, 1, 1, 3500000, '2020-12-07 06:43:39', '2020-12-07 06:43:39'),
(43, 1, 1, 3500000, '2020-12-07 07:58:41', '2020-12-07 07:58:41'),
(44, 1, 1, 3500000, '2020-12-07 08:06:49', '2020-12-07 08:06:49'),
(45, 5, 1, 499000, '2020-12-07 10:13:13', '2020-12-07 10:13:13'),
(46, 1, 1, 3500000, '2020-12-07 10:14:16', '2020-12-07 10:14:16'),
(47, 1, 1, 3500000, '2020-12-07 10:19:56', '2020-12-07 10:19:56'),
(47, 2, 1, 1500000, '2020-12-07 10:19:56', '2020-12-07 10:19:56'),
(48, 1, 1, 3500000, '2020-12-08 04:14:36', '2020-12-08 04:14:36'),
(49, 1, 1, 3500000, '2020-12-08 11:52:30', '2020-12-08 11:52:30'),
(50, 2, 1, 1500000, '2020-12-08 12:03:31', '2020-12-08 12:03:31'),
(51, 7, 1, 74000, '2021-04-12 14:57:55', '2021-04-12 14:57:55'),
(51, 2, 1, 150000, '2021-04-12 14:57:55', '2021-04-12 14:57:55'),
(52, 2, 1, 150000, '2021-04-12 15:00:09', '2021-04-12 15:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `id_user`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(59, 22, 'meo', 'nam', 'meo123@gmail.com', '12/8 thu duc', '123456789', 'meo mua ne', '2021-04-12 14:57:55', '2021-04-12 14:57:55'),
(60, 22, 'meo', 'nam', 'meo123@gmail.com', 'thu duc', '987456123', 'mua ne', '2021-04-12 15:00:09', '2021-04-12 15:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `employeess`
--

CREATE TABLE `employeess` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL,
  `employee_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employeess`
--

INSERT INTO `employeess` (`id`, `id_user`, `employee_name`, `description`, `address`, `phone`) VALUES
(7, 21, 'Nguyễn Tấn Phát', 'Quản lý user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varbinary(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `id_user`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(6, 7, 'yêu', 'ádasdas', 0x6e30312e6a7067, '2020-11-25 14:30:01', '2020-11-25 14:30:01'),
(13, 8, 'anhyeuem', '123123123123123', 0x3132333435362e6a7067, '2020-11-25 14:56:11', '2020-11-25 15:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_supplier` int(10) DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_supplier`, `id_type`, `description`, `quantity`, `unit_price`, `promotion_price`, `image`, `detail`, `new`, `updated_at`, `created_at`) VALUES
(2, 'Áo croptop nữ GUMAC ATB335', 1, 1, 'Áo thun mang cá tính năng động trẻ trung, thần thái riêng biệt.\r\n\r\nĐịnh hình phong cách tươi mới, năng động hiện đại trẻ trung.\r\n\r\nSản phẩm dành cho nhiều lứa tuổi, có thể mặc đi bất cứ nơi đâu và lúc nào.\r\n\r\nChất liệu cao cấp mang lại cảm giác dễ chịu vô cùng, tự tin xuống phố đi làm.\r\n\r\nMang hơi hướng thời thượng và phong cách mới cùng nhiều set đồ khác nhau.', 20, 150000, 0, 'Croptop.jpg', '1 combo', 1, '2021-04-12 13:24:34', '2021-04-12 13:24:34'),
(3, 'Áo croptop combo', 1, 1, 'Xuất xứ: Việt Nam\r\nChất liệu: Thun mềm mịn co giãn, thấm hút mồ hôi tốt, dễ giặt\r\nMàu sắc: Màu vàng,đen (Như hình, ảnh thật sp 100%)\r\nKích cỡ: Onezise(từ 55kg trở xuống)\r\nĐường may gọn gàng, chắc chắn, không chỉ dư, cổ tròn đơn giản nhưng cực kỳ xinh xắn dễ mặc và mix cùng sooc, jean cạp cao, chân váy, quần ống rộng... có thể mặc đi học, đi chơi, đi làm đều rất xinh\r\nLuôn mang đến cho khách hàng những sản phẩm chất lượng, kiểu dáng đa dạng, giá cả cạnh tranh. Mang đến sự sang trọng trong thiết kế, tinh tế trong đường nét sản phẩm, sản phẩm đa dạng theo xu thế thời trang thế giới.', 5, 160000, 0, 'Croptop1.jpg', '1 combo', 0, '2021-04-12 13:27:48', '2021-04-12 13:27:48'),
(4, 'Áo croptop NQ30', 1, 1, 'Xuất xứ: Việt Nam\r\nChất liệu: Thun mềm mịn co giãn, thấm hút mồ hôi tốt, dễ giặt\r\nMàu sắc: Màu vàng,đen (Như hình, ảnh thật sp 100%)\r\nKích cỡ: Onezise(từ 55kg trở xuống)\r\nĐường may gọn gàng, chắc chắn, không chỉ dư, cổ tròn đơn giản nhưng cực kỳ xinh xắn dễ mặc và mix cùng sooc, jean cạp cao, chân váy, quần ống rộng... có thể mặc đi học, đi chơi, đi làm đều rất xinh\r\nLuôn mang đến cho khách hàng những sản phẩm chất lượng, kiểu dáng đa dạng, giá cả cạnh tranh. Mang đến sự sang trọng trong thiết kế, tinh tế trong đường nét sản phẩm, sản phẩm đa dạng theo xu thế thời trang thế giới.', 5, 160000, 0, 'Croptop2.jpg', '1 combo', 0, '2021-04-12 05:11:31', '2021-04-12 05:11:31'),
(5, 'Áo Hoodie đen', 2, 2, 'Kiểu giáng unisex Hàn Quốc\r\nChất liệu cao cấp bền đẹp\r\nGam màu độc đáo cá tính', 3, 499000, 399000, 'aohoodie1.jpg', '1 combo', 0, '2021-04-12 05:11:31', '2021-04-12 05:11:31'),
(6, 'Áo Hoodie chim bay', 2, 2, 'Kiểu giáng unisex Hàn Quốc\r\nChất liệu cao cấp bền đẹp\r\nGam màu độc đáo cá tính', 5, 60000, 0, 'aohoodie2.jpg', '1 combo', 0, '2021-04-12 13:44:33', '2021-04-12 05:11:31'),
(7, 'Áo Hoodie gấu vàng', 2, 2, 'Kiểu giáng unisex Hàn Quốc\r\nChất liệu cao cấp bền đẹp\r\nGam màu độc đáo cá tính', 3, 400000, 0, 'aohoodie3.jpg', '1 combo', 1, '2021-04-12 13:46:41', '2021-04-12 13:46:41'),
(8, 'Áo Hoodie xanh', 2, 2, 'Kiểu giáng unisex Hàn Quốc\r\nChất liệu cao cấp bền đẹp\r\nGam màu độc đáo cá tính', 5, 420000, 320000, 'aohoodie4.jpg', '1 combo', 0, '2021-04-12 06:41:37', '2021-04-12 06:41:37'),
(9, 'Quần Tây đen', 3, 3, 'ên Sản Phẩm:Quần Tây Nam 5S (QAU0408S1TTS) Dáng Ôm Trẻ Trung, Nam Tính, Lịch Lãm\r\nThương Hiệu: Thời Trang Nam Cao Cấp 5S\r\nMàu Sắc: Tím Than Sáng Kẻ Caro Chìm\r\nKiểu Dáng: Slimfit\r\nThiết Kế: Cúc Dập Logo 5s, Có Khóa Kéo Kim Loại\r\nChất Liệu: 68% Polyester, 30% Rayon, 2% Spandex\r\n', 10, 250000, 0, 'quantay1.jpg', '1 combo', 0, '2021-04-12 13:58:23', '2021-04-12 13:58:23'),
(10, 'Quần Tây amazing', 3, 3, 'Tên Sản Phẩm:Quần Tây Nam 5S (QAU0408S1TTS) Dáng Ôm Trẻ Trung, Nam Tính, Lịch Lãm\r\nThương Hiệu: Thời Trang Nam Cao Cấp 5S\r\nMàu Sắc: Tím Than Sáng Kẻ Caro Chìm\r\nKiểu Dáng: Slimfit\r\nThiết Kế: Cúc Dập Logo 5s, Có Khóa Kéo Kim Loại\r\nChất Liệu: 68% Polyester, 30% Rayon, 2% Spandex', 5, 360000, 0, 'quantay2.jpg', '1 combo', 0, '2021-04-12 05:11:31', '2021-04-12 05:11:31'),
(11, 'Quần Tây QAU0408S1TTS', 3, 3, 'Tên Sản Phẩm:Quần Tây Nam 5S (QAU0408S1TTS) Dáng Ôm Trẻ Trung, Nam Tính, Lịch Lãm\r\nThương Hiệu: Thời Trang Nam Cao Cấp 5S\r\nMàu Sắc: Tím Than Sáng Kẻ Caro Chìm\r\nKiểu Dáng: Slimfit\r\nThiết Kế: Cúc Dập Logo 5s, Có Khóa Kéo Kim Loại\r\nChất Liệu: 68% Polyester, 30% Rayon, 2% Spandex', 0, 400000, 0, 'quantay3.jpg', '1 combo', 0, '2021-04-12 05:38:44', '2021-04-12 05:38:44'),
(12, 'Quần Tây Nam 5S ', 3, 3, 'Tên Sản Phẩm:Quần Tây Nam 5S (QAU0408S1TTS) Dáng Ôm Trẻ Trung, Nam Tính, Lịch Lãm\r\nThương Hiệu: Thời Trang Nam Cao Cấp 5S\r\nMàu Sắc: Tím Than Sáng Kẻ Caro Chìm\r\nKiểu Dáng: Slimfit\r\nThiết Kế: Cúc Dập Logo 5s, Có Khóa Kéo Kim Loại\r\nChất Liệu: 68% Polyester, 30% Rayon, 2% Spandex', 0, 760000, 560000, 'quantay4.jpg', '1 combo', 1, '2021-04-12 05:38:44', '2021-04-12 05:38:44'),
(13, 'áo thun thường', 4, 4, 'THÔNG TIN CHI TIẾT\r\nTên sản phẩm: Áo Phông Nam Đẹp Không Cổ Trơn Tay Ngắn BATINO Cao Cấp 100% Cotton 6 màu\r\nChất liệu: 100% Cotton\r\nMàu sắc: TRẮNG SÁNG, XÁM ĐEN, ĐỎ, THAN, XÁM TRẮNG, BE\r\nThương hiệu: BATINO\r\nXuất xứ: Việt Nam', 0, 550000, 99000, 'thun1.jpg', '1 combo', 0, '2021-04-12 05:38:44', '2021-04-12 05:38:44'),
(14, 'áo thun đen', 4, 4, 'THÔNG TIN CHI TIẾT\r\nTên sản phẩm: Áo Phông Nam Đẹp Không Cổ Trơn Tay Ngắn BATINO Cao Cấp 100% Cotton 6 màu\r\nChất liệu: 100% Cotton\r\nMàu sắc: TRẮNG SÁNG, XÁM ĐEN, ĐỎ, THAN, XÁM TRẮNG, BE\r\nThương hiệu: BATINO\r\nXuất xứ: Việt Nam', 0, 450000, 350000, 'thun2.jpg', '1 combo', 1, '2021-04-12 05:38:44', '2021-04-12 05:38:44'),
(15, 'áo thun zoro', 4, 4, 'THÔNG TIN CHI TIẾT\r\nTên sản phẩm: Áo Phông Nam Đẹp Không Cổ Trơn Tay Ngắn BATINO Cao Cấp 100% Cotton 6 màu\r\nChất liệu: 100% Cotton\r\nMàu sắc: TRẮNG SÁNG, XÁM ĐEN, ĐỎ, THAN, XÁM TRẮNG, BE\r\nThương hiệu: BATINO\r\nXuất xứ: Việt Nam', 0, 600000, 450000, 'thun3.jpg', '1 combo', 0, '2021-04-12 05:38:44', '2021-04-12 05:38:44'),
(16, 'áo thun trắng', 4, 4, 'THÔNG TIN CHI TIẾT\r\nTên sản phẩm: Áo Phông Nam Đẹp Không Cổ Trơn Tay Ngắn BATINO Cao Cấp 100% Cotton 6 màu\r\nChất liệu: 100% Cotton\r\nMàu sắc: TRẮNG SÁNG, XÁM ĐEN, ĐỎ, THAN, XÁM TRẮNG, BE\r\nThương hiệu: BATINO\r\nXuất xứ: Việt Nam', 0, 350000, 150000, 'thun4.jpg', '1 combo', 0, '2021-04-12 05:38:44', '2021-04-12 05:38:44'),
(17, 'Bộ Mặc Nhà Thể Thao Nam', 5, 5, 'THÔNG TIN CHI TIẾT\r\nChất liệu: Vải Cá Sấu\r\nMàu sắc: Đen, Xanh Than, Xám, Be\r\nThương hiệu: ZERO\r\nKích thước: M-L-XL-XXL\r\nXuất xứ: Việt Nam', 2, 105000, 0, 'dobo1.jpg', '1 combo', 0, '2021-04-12 05:38:44', '2021-04-12 05:38:44'),
(18, 'đồ bộ naruto', 5, 5, 'THÔNG TIN CHI TIẾT\r\nChất liệu: Vải Cá Sấu\r\nMàu sắc: Đen, Xanh Than, Xám, Be\r\nThương hiệu: ZERO\r\nKích thước: M-L-XL-XXL\r\nXuất xứ: Việt Nam', 3, 110000, 0, 'dobo2.jpg', '1 combo', 1, '2021-04-12 14:25:50', '2021-04-12 14:25:50'),
(19, 'đồ bộ 3 màu', 5, 5, 'THÔNG TIN CHI TIẾT\r\nChất liệu: Vải Cá Sấu\r\nMàu sắc: Đen, Xanh Than, Xám, Be\r\nThương hiệu: ZERO\r\nKích thước: M-L-XL-XXL\r\nXuất xứ: Việt Nam', 5, 650000, 0, 'dobo3.jpg', '1 combo', 0, '2021-04-12 05:38:44', '2021-04-12 05:38:44'),
(20, 'đồ bộ nhật bản', 5, 5, 'THÔNG TIN CHI TIẾT\r\nChất liệu: Vải Cá Sấu\r\nMàu sắc: Đen, Xanh Than, Xám, Be\r\nThương hiệu: ZERO\r\n\r\n', 5, 1100000, 0, 'dobo4.jpg', '1 combo', 0, '2021-04-12 05:38:45', '2021-04-12 05:38:45'),
(21, 'Áo Khoác CARDIGAN Hồng', 6, 6, ' Chất vải: Nhung gân\r\n\r\n+Free size dưới 65kg\r\n\r\nNgập tràn mẫu mới\r\nForm rộng Unisex cho cả nam và nữ ', 10, 990000, 0, 'ao1.jpg', '1 combo', 1, '2021-04-12 06:16:22', '2021-04-12 06:16:22'),
(22, 'Áo Khoác Cardigan Mỏng hồng', 6, 6, 'Hàng Free size < 56kg.\r\nSiêu hot siêu hot! Áo khoác Cardigan quốc dân, em này đang làm mưa làm gió bên Trung đó ạ, mặc khoác nhẹ nhàng bên ngoài váy, áo dây hay mặc đi biển cũng đẹp xuất sắc luôn ý.\r\nMặc em này kiểu đẹp mong manh dễ vỡ ý, xinh dã man.\r\nCardigan mùa hè nhé mặc mùa này là chuẩn luôn đấy ạ\r\nMàu: be da, trắng, vàng nâu.', 10, 690000, 0, 'ao2.jpg', '1 combo', 0, '2021-04-12 06:13:59', '2021-04-12 06:13:59'),
(23, 'Áo Khoác Cardigan đen', 6, 6, 'Hàng Free size < 56kg.\r\nSiêu hot siêu hot! Áo khoác Cardigan quốc dân, em này đang làm mưa làm gió bên Trung đó ạ, mặc khoác nhẹ nhàng bên ngoài váy, áo dây hay mặc đi biển cũng đẹp xuất sắc luôn ý.\r\nMặc em này kiểu đẹp mong manh dễ vỡ ý, xinh dã man.\r\nCardigan mùa hè nhé mặc mùa này là chuẩn luôn đấy ạ', 5, 690000, 0, 'ao3.jpg', '1 combo', 0, '2021-04-12 06:28:10', '2021-04-12 06:28:10'),
(24, 'Áo Khoác Cardigan trắng', 6, 6, 'Hàng Free size < 56kg.\r\nSiêu hot siêu hot! Áo khoác Cardigan quốc dân, em này đang làm mưa làm gió bên Trung đó ạ, mặc khoác nhẹ nhàng bên ngoài váy, áo dây hay mặc đi biển cũng đẹp xuất sắc luôn ý.\r\nMặc em này kiểu đẹp mong manh dễ vỡ ý, xinh dã man.\r\nCardigan mùa hè nhé mặc mùa này là chuẩn luôn đấy ạ\r\n', 5, 690000, 0, 'ao4.jpg', '1 combo', 0, '2021-04-12 06:28:10', '2021-04-12 06:28:10'),
(25, 'Áo Khoác Cardigan nerver let your', 6, 6, 'Số lượng có hạn.\r\nChất lượng siêu bền.\r\nCao su cao cấp.', 5, 500000, 0, 'ao5.jpg', '1 combo', 0, '2021-04-12 06:28:10', '2021-04-12 06:28:10'),
(26, 'Áo Khoác Cardigan chuột miskey', 6, 6, 'Số lượng có hạn.\r\nChất lượng siêu bền.\r\nCao su cao cấp.', 5, 600000, 550000, 'ao6.jpg', '1 combo', 0, '2021-04-12 14:37:07', '2021-04-12 14:37:07'),
(27, 'Áo Khoác Cardigan since vải', 6, 6, 'Số lượng có hạn.\r\nChất lượng siêu bền.\r\nCao su cao cấp.', 5, 600000, 550000, 'ao7.jpg', '1 combo', 1, '2021-04-12 06:28:10', '2021-04-12 06:28:10'),
(28, 'Quần ống rộng caro', 7, 7, '- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :', 5, 65000, 0, 'rong1.jpg', '1 combo', 0, '2021-04-12 06:28:10', '2021-04-12 06:28:10'),
(29, 'Quần Ống Rộng thun đen', 7, 7, 'THÔNG TIN SẢN PHẨM :\r\n- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :\r\nFREESIZE DƯỚI 60kg', 5, 105000, 0, 'rong2.jpg', '1 combo', 1, '2021-04-12 06:28:10', '2021-04-12 06:28:10'),
(30, 'Quần Ống Rộng trắng', 7, 7, 'THÔNG TIN SẢN PHẨM :\r\n- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :\r\nFREESIZE DƯỚI 60kg', 10, 700000, 0, 'rong3.jpg', '1 combo', 0, '2021-04-12 06:28:10', '2021-04-12 06:28:10'),
(31, 'Quần Ống Rộng thun sọc đen', 7, 7, '- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :\r\nFREESIZE DƯỚI 60kg', 10, 450000, 0, 'rong4.jpg', '1 combo', 0, '2021-04-12 06:40:31', '2021-04-12 06:40:31'),
(32, 'Quần Ống Rộng caro xanh', 7, 7, 'THÔNG TIN SẢN PHẨM :\r\n- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :\r\nFREESIZE DƯỚI 60kg', 5, 280000, 0, 'rong5.jpg', '1 combo', 1, '2021-04-12 06:40:31', '2021-04-12 06:40:31'),
(33, 'Quần Ống Rộng sọc trắng đen', 7, 7, 'THÔNG TIN SẢN PHẨM :\r\n- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :\r\nFREESIZE DƯỚI 60kg', 5, 150000, 0, 'rong6.jpg', '1 combo', 1, '2021-04-12 06:40:31', '2021-04-12 06:40:31'),
(34, 'Quần Ống Rộng thun đen 2.0', 7, 7, 'THÔNG TIN SẢN PHẨM :\r\n- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :\r\nFREESIZE DƯỚI 60kg', 5, 320000, 0, 'rong7.jpg', '1 combo', 1, '2021-04-12 06:40:31', '2021-04-12 06:40:31'),
(35, 'Quần Ống Rộng china', 7, 7, 'THÔNG TIN SẢN PHẨM :\r\n- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :\r\nFREESIZE DƯỚI 60kg', 10, 150000, 0, 'rong8.jpg', '1 combo', 0, '2021-04-12 06:40:31', '2021-04-12 06:40:31'),
(36, 'Quần Ống Rộng thun trắng đen', 7, 7, 'THÔNG TIN SẢN PHẨM :\r\n- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :\r\nFREESIZE DƯỚI 60kg', 10, 220000, 0, 'rong9.jpg', '1 combo', 1, '2021-04-12 06:40:32', '2021-04-12 06:40:32'),
(37, 'Quần Ống Rộng xanh dương', 7, 7, 'THÔNG TIN SẢN PHẨM :\r\n- Màu sắc : nhiều màu\r\n- Chiều dài quần:~91-92cm\r\n- Kích thước :\r\nFREESIZE DƯỚI 60kg', 20, 4200000, 0, 'rong10.jpg', '1 combo', 0, '2021-04-12 06:40:32', '2021-04-12 06:40:32'),
(38, 'áo thun sọc đen tay', 4, 4, 'THÔNG TIN CHI TIẾT\r\nTên sản phẩm: Áo Phông Nam Đẹp Không Cổ Trơn Tay Ngắn BATINO Cao Cấp 100% Cotton 6 màu\r\nChất liệu: 100% Cotton\r\nMàu sắc: TRẮNG SÁNG, XÁM ĐEN, ĐỎ, THAN, XÁM TRẮNG, BE\r\nThương hiệu: BATINO', 5, 450000, 99000, 'thun5.jpg', '1 combo', 0, '2021-04-12 06:40:32', '2021-04-12 06:40:32'),
(40, 'áo thun vàng', 4, 4, 'THÔNG TIN CHI TIẾT\r\nTên sản phẩm: Áo Phông Nam Đẹp Không Cổ Trơn Tay Ngắn BATINO Cao Cấp 100% Cotton 6 màu\r\nChất liệu: 100% Cotton\r\nMàu sắc: TRẮNG SÁNG, XÁM ĐEN, ĐỎ, THAN, XÁM TRẮNG, BE\r\nThương hiệu: BATINO\r\nXuất xứ: Việt Nam', 5, 450000, 99000, 'thun6.jpg', '1 combo', 0, '2021-04-12 06:40:32', '2021-04-12 06:40:32'),
(41, 'áo thun dragon', 4, 4, 'THÔNG TIN CHI TIẾT\r\nTên sản phẩm: Áo Phông Nam Đẹp Không Cổ Trơn Tay Ngắn BATINO Cao Cấp 100% Cotton 6 màu\r\nChất liệu: 100% Cotton\r\nMàu sắc: TRẮNG SÁNG, XÁM ĐEN, ĐỎ, THAN, XÁM TRẮNG, BE\r\nThương hiệu: BATINO\r\nXuất xứ: Việt Nam', 5, 500000, 249000, 'thun7.jpg', '1 combo', 0, '2021-04-12 06:42:46', '2021-04-12 06:42:46'),
(42, 'áo thun đen sọc trắng tay', 4, 4, 'THÔNG TIN CHI TIẾT\r\nTên sản phẩm: Áo Phông Nam Đẹp Không Cổ Trơn Tay Ngắn BATINO Cao Cấp 100% Cotton 6 màu\r\nChất liệu: 100% Cotton\r\nMàu sắc: TRẮNG SÁNG, XÁM ĐEN, ĐỎ, THAN, XÁM TRẮNG, BE\r\nThương hiệu: BATINO\r\nXuất xứ: Việt Nam', 5, 280000, 99000, 'thun8.jpg', '1 combo', 1, '2021-04-12 06:42:53', '2021-04-12 06:42:53'),
(43, 'Quần tây Dáng Ôm Co Vải', 3, 3, 'Thiết kế thời trang, đẹp mắt\r\nBề mặt vải mịn màng, dễ chịu khi tiếp xúc với da\r\nThoáng khí và thấm hút mồ hôi tốt\r\nĐường may tinh tế, tỉ mỉ', 5, 1000000, 549000, 'quantay5.jpg', '1 combo', 0, '2021-04-12 06:46:18', '2021-04-12 06:46:18'),
(44, 'quần tay hàn quốc', 3, 3, 'Thiết kế thời trang, đẹp mắt\r\nBề mặt vải mịn màng, dễ chịu khi tiếp xúc với da\r\nThoáng khí và thấm hút mồ hôi tốt\r\nĐường may tinh tế, tỉ mỉ', 5, 900000, 549000, 'quantay6.jpg', '1 combo', 0, '2021-04-12 06:46:18', '2021-04-12 06:46:18'),
(45, 'Quần Tây Nam KOJIBA', 3, 3, 'Thiết kế thời trang, đẹp mắt\r\nBề mặt vải mịn màng, dễ chịu khi tiếp xúc với da\r\nThoáng khí và thấm hút mồ hôi tốt\r\nĐường may tinh tế, tỉ mỉ', 5, 850000, 499000, 'quantay9.jpg', '1 combo', 0, '2021-04-12 14:08:44', '2021-04-12 14:08:44'),
(46, 'quần tây học sinh', 3, 3, 'Thiết kế thời trang, đẹp mắt\r\nBề mặt vải mịn màng, dễ chịu khi tiếp xúc với da\r\nThoáng khí và thấm hút mồ hôi tốt\r\nĐường may tinh tế, tỉ mỉ', 5, 850000, 499000, 'quantay7.jpg', '1 combo', 0, '2021-04-12 06:46:19', '2021-04-12 06:46:19'),
(47, 'Áo thun truth xanh', 3, 4, 'THÔNG TIN CHI TIẾT\r\nTên sản phẩm: Áo Phông Nam Đẹp Không Cổ Trơn Tay Ngắn BATINO Cao Cấp 100% Cotton 6 màu\r\nChất liệu: 100% Cotton\r\nMàu sắc: TRẮNG SÁNG, XÁM ĐEN, ĐỎ, THAN, XÁM TRẮNG, BE\r\nThương hiệu: BATINO\r\nXuất xứ: Việt Nam', 5, 850000, 499000, 'thun9.jpg', '1 combo', 0, '2021-04-12 06:46:19', '2021-04-12 06:46:19'),
(48, 'Áo croptop sweet time', 1, 1, 'Xuất xứ: Việt Nam\r\nChất liệu: Thun mềm mịn co giãn, thấm hút mồ hôi tốt, dễ giặt\r\nMàu sắc: Màu vàng,đen (Như hình, ảnh thật sp 100%)\r\nKích cỡ: Onezise(từ 55kg trở xuống)\r\nĐường may gọn gàng, chắc chắn, không chỉ dư, cổ tròn đơn giản nhưng cực kỳ xinh xắn dễ mặc và mix cùng sooc, jean cạp cao, chân váy, quần ống rộng... có thể mặc đi học, đi chơi, đi làm đều rất xinh\r\nLuôn mang đến cho khách hàng những sản phẩm chất lượng, kiểu dáng đa dạng, giá cả cạnh tranh. Mang đến sự sang trọng trong thiết kế, tinh tế trong đường nét sản phẩm, sản phẩm đa dạng theo xu thế thời trang thế giới. ', 10, 200000, 0, 'Croptop3.jpg', '1 combo', 0, '2021-04-12 13:30:52', '2021-04-12 13:30:52'),
(49, 'Áo croptop bông hoa', 1, 1, 'Xuất xứ: Việt Nam\r\nChất liệu: Thun mềm mịn co giãn, thấm hút mồ hôi tốt, dễ giặt\r\nMàu sắc: Màu vàng,đen (Như hình, ảnh thật sp 100%)\r\nKích cỡ: Onezise(từ 55kg trở xuống)\r\nĐường may gọn gàng, chắc chắn, không chỉ dư, cổ tròn đơn giản nhưng cực kỳ xinh xắn dễ mặc và mix cùng sooc, jean cạp cao, chân váy, quần ống rộng... có thể mặc đi học, đi chơi, đi làm đều rất xinh\r\nLuôn mang đến cho khách hàng những sản phẩm chất lượng, kiểu dáng đa dạng, giá cả cạnh tranh. Mang đến sự sang trọng trong thiết kế, tinh tế trong đường nét sản phẩm, sản phẩm đa dạng theo xu thế thời trang thế giới', 10, 60000, 0, 'Croptop4.jpg', '1 combo', 0, '2021-04-12 06:46:19', '2021-04-12 06:46:19'),
(50, 'Áo croptop 7 màu', 1, 1, 'Xuất xứ: Việt Nam\r\nChất liệu: Thun mềm mịn co giãn, thấm hút mồ hôi tốt, dễ giặt\r\nMàu sắc: Màu vàng,đen (Như hình, ảnh thật sp 100%)\r\nKích cỡ: Onezise(từ 55kg trở xuống)\r\nĐường may gọn gàng, chắc chắn, không chỉ dư, cổ tròn đơn giản nhưng cực kỳ xinh xắn dễ mặc và mix cùng sooc, jean cạp cao, chân váy, quần ống rộng... có thể mặc đi học, đi chơi, đi làm đều rất xinh\r\nLuôn mang đến cho khách hàng những sản phẩm chất lượng, kiểu dáng đa dạng, giá cả cạnh tranh. Mang đến sự sang trọng trong thiết kế, tinh tế trong đường nét sản phẩm, sản phẩm đa dạng theo xu thế thời trang thế giới. ', 0, 45000, 0, 'Croptop5.jpg', '1 combo', 0, '2021-04-12 06:46:19', '2021-04-12 06:46:19'),
(51, 'Áo croptop ngắn', 1, 1, 'Xuất xứ: Việt Nam\r\nChất liệu: Thun mềm mịn co giãn, thấm hút mồ hôi tốt, dễ giặt\r\nMàu sắc: Màu vàng,đen (Như hình, ảnh thật sp 100%)\r\nKích cỡ: Onezise(từ 55kg trở xuống)\r\nĐường may gọn gàng, chắc chắn, không chỉ dư, cổ tròn đơn giản nhưng cực kỳ xinh xắn dễ mặc và mix cùng sooc, jean cạp cao, chân váy, quần ống rộng... có thể mặc đi học, đi chơi, đi làm đều rất xinh\r\nLuôn mang đến cho khách hàng những sản phẩm chất lượng, kiểu dáng đa dạng, giá cả cạnh tranh. Mang đến sự sang trọng trong thiết kế, tinh tế trong đường nét sản phẩm, sản phẩm đa dạng theo xu thế thời trang thế giới.', 0, 350000, 0, 'Croptop6.jpg', '1 combo', 0, '2021-04-12 06:46:19', '2021-04-12 06:46:19'),
(52, 'Áo croptop gấu mèo', 1, 1, 'Xuất xứ: Việt Nam\r\nChất liệu: Thun mềm mịn co giãn, thấm hút mồ hôi tốt, dễ giặt\r\nMàu sắc: Màu vàng,đen (Như hình, ảnh thật sp 100%)\r\nKích cỡ: Onezise(từ 55kg trở xuống)\r\nĐường may gọn gàng, chắc chắn, không chỉ dư, cổ tròn đơn giản nhưng cực kỳ xinh xắn dễ mặc và mix cùng sooc, jean cạp cao, chân váy, quần ống rộng... có thể mặc đi học, đi chơi, đi làm đều rất xinh\r\nLuôn mang đến cho khách hàng những sản phẩm chất lượng, kiểu dáng đa dạng, giá cả cạnh tranh. Mang đến sự sang trọng trong thiết kế, tinh tế trong đường nét sản phẩm, sản phẩm đa dạng theo xu thế thời trang thế giới', 0, 400000, 0, 'Croptop7.jpg', '', 0, '2021-04-12 06:46:19', '2021-04-12 06:46:19'),
(53, 'Áo croptop hình trái tim', 1, 1, 'Xuất xứ: Việt Nam\r\nChất liệu: Thun mềm mịn co giãn, thấm hút mồ hôi tốt, dễ giặt\r\nMàu sắc: Màu vàng,đen (Như hình, ảnh thật sp 100%)\r\nKích cỡ: Onezise(từ 55kg trở xuống)\r\nĐường may gọn gàng, chắc chắn, không chỉ dư, cổ tròn đơn giản nhưng cực kỳ xinh xắn dễ mặc và mix cùng sooc, jean cạp cao, chân váy, quần ống rộng... có thể mặc đi học, đi chơi, đi làm đều rất xinh\r\nLuôn mang đến cho khách hàng những sản phẩm chất lượng, kiểu dáng đa dạng, giá cả cạnh tranh. Mang đến sự sang trọng trong thiết kế, tinh tế trong đường nét sản phẩm, sản phẩm đa dạng theo xu thế thời trang thế giới. ', 5, 250000, 25000, 'Croptop9.jpg', '1 combo', 1, '2021-04-12 13:37:42', '2021-04-12 13:37:42'),
(54, 'Quần tây công sở', 3, 3, 'Thiết kế thời trang, đẹp mắt\r\nBề mặt vải mịn màng, dễ chịu khi tiếp xúc với da\r\nThoáng khí và thấm hút mồ hôi tốt\r\nĐường may tinh tế, tỉ mỉ', 5, 850000, 0, 'quantay9.jpg', '1 combo', 0, '2021-04-12 06:49:54', '2021-04-12 06:49:54'),
(55, 'Giày Adidas Alphabounce Instinct ', 3, 3, 'Chất liệu: Chất liệu vải dệt knit, êm chân\r\nKiểu dáng: Giày đế đúc cao su nguyên khối\r\nChất lượng: Nhẹ nhàng, êm chân', 5, 1000000, 0, 'add02.jpg', 'đôi', 0, '2020-12-01 06:49:54', '2020-12-01 06:49:54'),
(56, 'Áo Hoodie seke xanh', 2, 2, 'Kiểu giáng unisex Hàn Quốc\r\nChất liệu cao cấp bền đẹp\r\nGam màu độc đáo cá tính', 5, 850000, 0, 'aohoodie5.jpg', '1 combo', 0, '2021-04-12 06:49:54', '2021-04-12 06:49:54'),
(57, 'Áo Hoodie đen MI', 2, 2, 'Kiểu giáng unisex Hàn Quốc\r\nChất liệu cao cấp bền đẹp\r\nGam màu độc đáo cá tính', 5, 400000, 0, 'aohoodie6.jpg', '1 combo', 0, '2021-04-12 06:49:54', '2021-04-12 06:49:54'),
(58, 'Áo Hoodie chữ T', 2, 2, 'Kiểu giáng unisex Hàn Quốc\r\nChất liệu cao cấp bền đẹp\r\nGam màu độc đáo cá tính', 5, 500000, 0, 'aohoodie7.jpg', '1 combo', 0, '2021-04-12 06:49:54', '2021-04-12 06:49:54'),
(59, 'Áo Hoodie free fire', 2, 2, 'Kiểu giáng unisex Hàn Quốc\r\nChất liệu cao cấp bền đẹp\r\nGam màu độc đáo cá tính', 5, 550000, 0, 'aohoodie8.jpg', '1 combo', 1, '2021-04-12 06:49:54', '2021-04-12 06:49:54'),
(60, 'Áo Hoodie trắng', 2, 2, 'Chất liệu: Vải dệt Knit\r\nChất liệu vải dệt, êm chân\r\nĐộ đàn hồi, co dãn tốt, ôm khít vừa chân\r\nĐế đúc cao su nguyên khối, chắc chắn.', 0, 450000, 0, 'aohoodie9.jpg', '1 combo', 0, '2021-04-12 06:49:54', '2021-04-12 06:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'a.jpg'),
(2, '', 'b.jpg'),
(3, '', 'c.jpg'),
(4, '', 'd.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id_supplier` int(10) NOT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_adress` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_phone` int(11) DEFAULT NULL,
  `supplier_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id_supplier`, `supplier_name`, `supplier_adress`, `supplier_phone`, `supplier_mail`) VALUES
(1, 'Áo crop top', '21 Nguyễn Văn Bảo, Phường 3, Q.Gò Vấp, TP-Hồ Chí Minh', 906123456, 'nguyenphat@gmail.com'),
(2, 'hoodie', '21 Nguyễn Oanh, Phường 6, Q.Gò Vấp, TP-Hồ Chí Minh', 906856741, 'nguyenphat@gmail.com'),
(3, 'Quần tây VN', '22, linh trung, Q.thủ đức, TP-Hồ Chí Minh', 90682356, 'nguyenphat@gmail.com'),
(4, 'áo thun VN', '254 Nguyễn Thái Sơn, Phường 3, Q. Gò Vấp, TP-Hồ Chí Minh', 90853214, 'nguyenphat@mail.com'),
(5, 'đồ bộ VN', '23 linh xuan, Q. thu duc, TP-Hồ Chí Minh', 909582462, 'nguyenphat@gmail.com'),
(6, 'Áo cardigan VN', '123, P.linh xuan, Q.thu duc, TP-Hồ Chí Minh', 901568743, 'nguyenphat@gmail.com'),
(7, 'Quần ống rộng VN', '654, P.linh trung, Q.thu duc, TP-Hồ Chí Minh', 909648751, 'nguyenphat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Áo crop-top', 'Sau nhiều năm sáng tạo không ngừng nghỉ, Áo crop-top luôn kiên định với mục tiêu tái chế từ những chất thải ra môi trường  mới vừa chất vừa đẹp vừa độc đáo. Không chỉ phát triển thêm những công nghệ mới để có thể tái chế đa dạng vật liệu cũng như tối ưu hóa.', 'crop-top.jpg', '2022-04-12 13:20:45', '2021-04-12 13:20:45'),
(2, 'Áo Hoodie', 'Áo Hoodie là loại áo mang tính cách mạng trong thế giới Hoodie, nhưng dần dần được các ngôi sao giải trí có tầm ảnh hưởng ưa thích và biến chúng thành áo “bất hủ”.', 'aohoodie.jpg', '2021-04-12 02:16:15', '2021-04-12 01:38:35'),
(3, 'Quần Tây', 'Quần Tây huyền thoại đã phát triển mạnh mẽ , Đây chính là một trong những Quần không bao giờ lỗi mốt, Một món đồ \"must have\" thịnh hành bậc nhất hành tinh, Quần Tây dễ phối đồ, phụ hợp cho mọi lứa tuổi và hoàn cảnh.', 'quantay.jpg', '2021-04-12 00:33:33', '2021-04-12 00:33:33'),
(4, 'Áo Thun', 'Thun mang vào thoải mái, phù hợp cho những người yêu thích áo thun.', 'thun.jpg', '2021-04-12 03:29:19', '2021-04-12 03:29:19'),
(5, 'Đồ bộ', 'Chất lượng được làm bằng vải cao cấp, hợp thời trang, tự do phối đồ, cực bền.', 'dobo.jpg', '2021-04-12 05:00:00', '2021-04-12 04:00:23'),
(6, 'Áo cardigan ', 'Mềm, mang thoải mái.', 'ao.jpg', '2021-04-11 17:19:00', '2021-04-11 17:19:00'),
(7, 'Quần ống rộng', 'Quần ống rộng là quần có phần rộng mặc thoải mái', 'rong.jpg', '2021-04-11 17:19:00', '2021-04-11 17:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(10) DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `gender`, `quyen`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(21, 'nguyen tan phat', 'nguyenphat@gmail.com', '$2y$10$Wlst4SvI6OsM.ZIp6L5hv.eWpBe/eyhXJVSLVgehYQZmoG9mu3J1a', 'nam', 1, NULL, NULL, NULL, '2021-04-12 13:09:22', '2021-04-12 13:09:22'),
(22, 'meo', 'meo123@gmail.com', '$2y$10$coB4IUkz2bQoorhHMM9HRuvwpi/43ZwRNw/hGTibINbhbF1pQ0dVe', 'nam', 0, NULL, NULL, NULL, '2021-04-12 14:56:57', '2021-04-12 14:56:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_idcustomerfk_1` (`id_customer`) USING BTREE;

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`,`id_product`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`,`id_user`),
  ADD KEY `userid_foreign` (`id_user`);

--
-- Indexes for table `employeess`
--
ALTER TABLE `employeess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user123` (`id_user`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser_foreign` (`id_user`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`),
  ADD KEY `supplier_id_foreign` (`id_supplier`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `employeess`
--
ALTER TABLE `employeess`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeess`
--
ALTER TABLE `employeess`
  ADD CONSTRAINT `user123` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`),
  ADD CONSTRAINT `supplier_id_foreign` FOREIGN KEY (`id_supplier`) REFERENCES `suppliers` (`id_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
