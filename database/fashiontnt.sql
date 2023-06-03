-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 10:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashiontnt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(3, 'Phan Sỹ Anh', 'anh@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 0, 1684772189);

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Danh mục sản phẩm', '', 0, 1, '2017-04-22 05:35:21'),
(2, 'Sản phẩm HOT', '', 0, 2, '2017-04-22 05:35:48'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(7, 'THỜI TRANG QUỐC TẾ', '', 1, 1, '2017-04-22 05:37:23'),
(8, 'THỜI TRANG VIỆT NAM', '', 1, 2, '2017-04-22 05:37:36'),
(9, 'BỘ SƯU TẬP', '', 1, 3, '2017-04-22 05:37:50'),
(10, 'LOUIS VUITTON', '', 7, 1, '2017-04-22 09:08:19'),
(11, 'GUCCI', '', 7, 2, '2017-04-22 09:08:36'),
(12, 'CHANEL', '', 7, 3, '2017-04-22 09:09:01'),
(13, 'VERSACE', '', 7, 4, '2017-04-22 09:09:14'),
(14, 'BERBERRY', '', 7, 5, '2017-04-22 09:09:31'),
(15, 'CANIFA', '', 8, 1, '2017-04-22 09:09:46'),
(16, 'ELISE', '', 8, 2, '2017-04-22 09:10:10'),
(17, 'YODY', '', 8, 3, '2017-04-22 09:23:39'),
(18, 'SSSTUTTER', '', 8, 4, '2017-04-22 09:23:57'),
(19, 'CARE & SHARE', '', 9, 1, '2017-04-22 09:25:55'),
(20, 'ĐỔ THỀ THAO', '', 9, 2, '2017-04-22 09:26:21'),
(21, 'CHẠY BỘ', '', 9, 3, '2017-04-22 09:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(29, 23, 72, 2, '200000.00', 0),
(28, 23, 71, 1, '100000.00', 0),
(27, 22, 71, 1, '100000.00', 0),
(26, 21, 71, 1, '100000.00', 0),
(25, 20, 72, 1, '100000.00', 0),
(24, 20, 71, 1, '100000.00', 0),
(23, 19, 69, 1, '500000.00', 0),
(22, 18, 71, 1, '100000.00', 0),
(21, 18, 72, 1, '100000.00', 0),
(20, 17, 69, 1, '500000.00', 0),
(16, 13, 29, 1, '180000.00', 0),
(17, 14, 29, 1, '180000.00', 0),
(18, 15, 50, 1, '100.00', 0),
(19, 16, 50, 1, '100.00', 0),
(30, 24, 71, 1, '100000.00', 0),
(31, 25, 61, 1, '200000.00', 0),
(32, 26, 54, 1, '300000.00', 0),
(33, 27, 61, 2, '400000.00', 0),
(34, 27, 60, 1, '200000.00', 0),
(35, 28, 61, 1, '200000.00', 0),
(36, 29, 61, 1, '200000.00', 0),
(37, 30, 61, 1, '200000.00', 0),
(38, 31, 88, 1, '2000000.00', 0),
(39, 31, 87, 1, '1000000.00', 0),
(40, 34, 88, 1, '2000000.00', 0),
(41, 35, 80, 1, '1000000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) NOT NULL,
  `image_list` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(78, 10, 'Glitter Monogram Bomber Jacket', 'Chiếc áo khoác bomber chủ yếu này được nâng tầm với một chữ ký lấp lánh, tinh xảo. Phần thân chính được chế tác theo kiểu vừa vặn quá khổ thông thường từ vải jacquard Monogram thu hút lấp lánh, được bù đắp bằng các miếng lót da mịn trên vai và túi để tạo nên sự tương phản đương đại. Bộ quần áo được hoàn thiện với các nút bấm màu vàng sang trọng và lớp lót Monogram mang tính biểu tượng.\r\n==================================================\r\nChất Liệu Chính : 82% Len, 10% Polyester, 7% Viscose, 1% Polyurethane\r\nĐen bóng\r\nPhù hợp thường xuyên\r\nNgười mẫu mặc size 36\r\nSố đo người mẫu : Ngực 31\'\' / 79 cm, Cao 5\'\' 10\" / 178 cm, Eo 23\'\' / 60 cm, Hông 34\'\' / 86 cm\r\nSản xuất tại Pháp\r\n', '2000000.00', 1000000, 'vuiton.jpg', '[\"vuiton2.jpg\"]', 2, 0, 4, 1, 1684769315),
(79, 10, 'Napolitana Jacket', 'Chiếc áo khoác mùa hè này có phần vai mềm mại và cảm giác thoải mái, không có cấu trúc, được tăng cường bởi các túi vá tròn. Nó được làm từ vải may vest len ​​sọc có các chữ ký Logo Breloque Fil Coupé được đặt bất đối xứng. Nút trên cùng được ký bằng đường khâu LV.\r\n==================================================\r\n100% len\r\nThạch đen xám\r\nPhù hợp thường xuyên\r\nNgười mẫu mặc cỡ FR 50\r\nSố đo người mẫu : ngực 36’’ / 92 cm, cao 6’ 0½’’ / 184 cm\r\nSản xuất tại Ý\r\n', '2000000.00', 1000000, 'vuiton4.jpg', '[\"vuiton5.jpg\"]', 1, 0, 4, 1, 1684769963),
(80, 10, 'Louis Vuitton LV Nice Nano Toiletry Pouch M44936', 'Túi xách Neverfull MM kết hợp thiết kế vượt thời gian với các chi tiết di sản. Trang nhã bằng vải bạt Damier Ebene với đường viền bằng da bò tự nhiên, nó rộng rãi nhưng không cồng kềnh, với các dây buộc bên hông tạo nên vẻ quyến rũ bóng bẩy hoặc nới lỏng để tạo vẻ ngoài giản dị. Tay cầm mỏng, thoải mái dễ dàng trượt qua vai hoặc cánh tay. Được lót bằng vải nhiều màu sắc, nó có một túi có thể tháo rời có thể được sử dụng như một chiếc ví cầm tay hoặc một túi phụ.\r\n==================================================\r\n12,6 x 11,4 x 6,7 inch\r\n(dài x Cao x Rộng)\r\nmàu đỏ\r\nVải phủ Damier Ebene\r\nViền da bò tự nhiên\r\nVải lót sọc\r\nPhần cứng màu vàng\r\n4 dây buộc bên\r\nđóng móc\r\nTúi bên trong phẳng, lót vải có khóa kéo\r\nTúi có khóa kéo có thể tháo rời\r\nvòng chữ D\r\n', '2000000.00', 1000000, 'vuiton8.jpg', '[\"vuiton7.jpg\"]', 1, 0, 4, 1, 1684770272),
(81, 11, 'Re-Edition wide leather belt', 'Vẻ ngoài mang tính biểu tượng được thể hiện trong bộ sưu tập Ouverture và tạo mối liên hệ với lịch sử phong phú của Gucci. Một chiếc thắt lưng da bản rộng với khóa Double G, một sự trả thù trong kho lưu trữ từ các bộ sưu tập của thập niên 70. Thắt lưng da nữ có thể được đeo ở hông hoặc thắt lưng để tạo ra những kiểu dáng khác nhau.\r\n==================================================\r\nDa trơn màu đen\r\nPhần cứng bằng đồng cổ điển với lớp hoàn thiện sáng bóng\r\nKhóa chữ G đôi\r\nKhóa: 3\"Rộng x 2,4\"H\r\nChiều rộng đai 1,5\"\r\nSản xuất tại Ý\r\nCó thể đeo như thắt lưng hoặc thắt lưng.\r\n', '2000000.00', 1000000, 'gucci.jpg', '[\"gucci1.jpg\"]', 1, 0, 4, 1, 1684770560),
(83, 11, 'Men GG sneaker', 'Với kiểu dáng chunky, đôi giày thể thao này kết hợp với hình dạng, màu sắc và chất liệu để tạo cảm giác hoài cổ. Với đế cao su xác định, giày được chế tác từ vải GG Nguyên bản màu be và gỗ mun với viền da đồng màu.\r\n==================================================\r\nMàu be và gỗ mun Canvas GG gốc\r\nnam\r\nviền da nâu\r\nĐế cao su\r\nĐi kèm thêm cặp dây buộc\r\nđóng cửa ren\r\nGót thấp\r\nSản xuất tại Ý\r\n', '2000000.00', 1000000, 'gucci2.jpg', '[\"gucci3.jpg\"]', 1, 0, 4, 1, 1684770900),
(84, 11, 'Embroidered wool-blend jacket', 'Áo khoác của Gucci được may từ hỗn hợp len trắng nhạt để có vẻ ngoài vượt thời gian vượt qua mọi mùa. Nó có các đường viền bện tương phản và một túi ngực được thêu chi tiết chữ \'GG\' lồng vào nhau đặc trưng của thương hiệu. Kết hợp bông tai của bạn với các nút có tông màu vàng lấp lánh.\r\n==================================================\r\nLen pha trộn đen trắng\r\nNút buộc thông qua phía trước\r\n86% len, 14% polyamit\r\nGiặt khô', '2000000.00', 1000000, 'gucci5.jpg', '[\"gucci4.jpg\"]', 1, 0, 4, 1, 1684771137),
(85, 12, 'J12 Caliber Watch', 'chất liệu\r\nGốm đen\r\nThép\r\n\r\nvỏ đồng hồ\r\nVỏ bằng gốm chịu lực cao màu đen và thép\r\n\r\nvành đồng hồ\r\nVành đồng hồ xoay đơn hướng chất liệu thép\r\n\r\nmặt đồng hồ\r\nMặt đồng hồ bằng sơn mài màu đen với chỉ số chất liệu gốm cao cấp màu trắng\r\n\r\nnúm vặn\r\nNúm vặn chống nước chất liệu thép với chóp bằng gốm chịu lực cao màu đen\r\n\r\ndây đeo\r\nDây đeo bằng gốm chịu lực cao màu đen và khóa gập ba chất liệu thép\r\n\r\nbộ chuyển động\r\nBộ chuyển động lên dây tự động\r\n\r\nchống thấm nước\r\n200 m', '2000000.00', 1000000, 'chanel.jpg', '[\"chanel1.jpg\"]', 1, 0, 4, 1, 1684771522),
(86, 12, 'Khuyên Tai Đơn Lune', 'loại đá quý\r\nĐính 18 viên kim cương giác cắt brilliant với trọng lượng tổng cộng 0,24 carat\r\n\r\nchất liệu\r\nVàng trắng 18K', '2000000.00', 1000000, 'chanl3.jpg', '[]', 1, 0, 4, 1, 1684771677),
(87, 13, 'VERSACE ALLOVER KNIT SWEATER', 'Một chiếc áo len dệt kim bằng vải cotton có họa tiết jacquard Versace Allover với nét chữ có đường viền tương phản.\r\nMẫu Versace Allover\r\nÁo dài tay\r\nCổ thuyền\r\ntrang trí có gân\r\nThành phần bên ngoài: 100% Cotton\r\nRửa tay nhẹ nhàng bằng chất tẩy rửa nhẹ\r\nKhông tẩy\r\nKhông được sấy khô\r\nCăn hộ khô ráo\r\nsắt mát\r\nGiặt khô tinh tế', '2000000.00', 1000000, 'ver1.jpg', '[\"ver2.jpg\"]', 2, 0, 4, 1, 1684771933),
(88, 13, 'VERSACE ALLOVER SHORTS', 'Quần short dài đến đầu gối này có họa tiết hoa Versace Allover và khuy Medusa tráng men.\r\nMẫu Versace Allover\r\nphần cứng medusa\r\ntúi bên\r\nTúi có dây buộc phía sau\r\nNút và khóa kéo\r\nvòng thắt lưng\r\nThành phần bên ngoài: 60% Polyester, 40% Cotton\r\nLớp lót: 100% Cotton\r\nViền: Da bê 100%\r\nRửa tay nhẹ nhàng bằng chất tẩy rửa nhẹ\r\nKhông tẩy\r\nKhông được sấy khô\r\nCăn hộ khô ráo\r\nLàm mát bàn ủi ở mặt trái với vải ẩm ở trên\r\nKhông giặt khô', '2000000.00', 0, 'ver4.jpg', '[\"ver3.jpg\"]', 2, 0, 4, 1, 1684772063);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_link` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(35, 0, 10, 'anh', 'anh2@gmail.com', '099', 'hòa bình', 'giao hàng giờ hành chính', '1000000.00', '', 1684810344),
(31, 0, 10, 'anh', 'anh2@gmail.com', '099', 'hòa bình', 'aaa', '3000000.00', '', 1684807793),
(34, 0, 10, 'anh', 'anh2@gmail.com', '099', 'hòa bình', 'a', '2000000.00', '', 1684807953);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(10, 'anh', 'anh2@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '099', 'hòa bình', 2023),
(8, 'anh', 'anh@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1', 'anh', 2022),
(9, 'Phan Sỹ Anh', 'syanh@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '099', 'hòa bình', 2023);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
