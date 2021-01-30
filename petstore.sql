-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 30, 2021 lúc 02:36 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `petstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_23_033333_create_tbl_admin_table', 1),
(5, '2020_11_24_112231_create_tbl_category_product', 1),
(6, '2020_11_25_130930_create_tbl_brand_product', 1),
(7, '2020_12_23_122523_create_tbl_product', 1),
(8, '2021_01_03_140151_create_tbl_user_table', 1),
(9, '2021_01_20_010151_tbl_customer', 2),
(10, '2021_01_20_031611_tbl_shipping', 2),
(11, '2021_01_23_014301_tbl_payment', 2),
(12, '2021_01_23_014613_tbl_order', 2),
(13, '2021_01_23_014645_tbl_order_details', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'admin123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Mai Lân', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Chó & Mèo kiểng', 'Chó & Mèo kiểng', 0, NULL, NULL),
(3, 'Hamster', 'Hamster', 0, NULL, NULL),
(4, 'Nhím kiểng', 'Nhím kiểng', 0, NULL, NULL),
(7, 'Phụ kiện thú cưng', 'Phụ kiện thú cưng', 0, NULL, NULL),
(8, 'Động vật bò sát', 'Động vật bò sát', 0, NULL, NULL),
(9, 'Sóc Kiểng', 'Sóc Kiểng', 1, NULL, NULL),
(10, 'Thỏ Kiểng', 'Thỏ Kiểng', 1, NULL, NULL),
(11, 'Chim Cảnh', 'Chim Cảnh', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Thế Hùng', 'pthung@gmail.com', '25f9e794323b453885f5181f1b624d0b', '123456789', NULL, NULL),
(4, 'Mai Lân', 'mtlan.17it3@vku.udn.vn', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(14, 4, 30, 14, '11,000,000.00', 'Đang chờ xử lý', '2021-01-28 06:06:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(4, 14, 34, 'Rùa sao Ấn Độ', '2200000', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(14, '2', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physical` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_life` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_old` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `product_desc`, `product_content`, `product_source`, `physical`, `product_weight`, `product_life`, `product_sex`, `price_old`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Akita Inu', 'Đang cập nhật', 'Chó Akita là loài chó quý có nguồn gốc từ Nhật Bản. Chúng là một trong những giống chó lâu đời nhất thế giới. Akita được Hoàng gia Nhật trọng dụng từ thời phong kiến cách đây hàng trăm năm và trở thành một phần không thể thiếu được trong văn hoá đất nước mặt trời mọc.', 'Nhật Bản', 'To lớn, tai nhỏ', '32 - 59kg', '10-15 năm', 'Đực', '25000000', '15000000', 'akita_inu55.jpg', 0, NULL, NULL),
(3, 1, 'Alaska Giant', 'Đang cập nhật', 'Alaska Giant đã có từ khá lâu rồi, khoảng 500 năm trước tại vùng đất Alaska lạnh giá. Chúng được lai tạo bởi những người Eskimo với mục đích tạo ra giống chó kéo xe khổng lồ, vượt trội hơn nhiều so với Alaska tiêu chuẩn. Qua một thời gian dài trong quá trình lai tạo, cuối cùng Alaskan Malamute Giant cũng ra đời và trở thành một trong những giống chó to lớn nhất Thế Giới.', 'Hoa Kỳ', 'Khổng lồ, lông dài', '60 - 90kg', '13 - 15 năm', 'Đực', '30000000', '16000000', 'Alaska38.jpg', 0, NULL, NULL),
(4, 1, 'Bắc Hà', 'Đang cập nhật', 'Chó Bắc Hà là một trong Tứ đại quốc khuyển của Việt Nam. Chúng là một trong bốn giống thú cảnh đẹp nhất Việt Nam, cùng với chó Phú Quốc, H’mông cộc đuôi và Dingo Đông Dương.', 'Việt Nam', 'Lông xù, có bờm', '16 - 26kg', '8-12 năm', 'Đực/cái', '800000', '300000', 'Bac_Ha11.jpg', 0, NULL, NULL),
(6, 1, 'Bull Pháp', 'Đang cập nhật', 'Đầu chó bulldog Pháp to, vuông. Hộp sọ phẳng hơi tròn ở đầu có 1 hoặc 2 rãnh giữa hai mắt. Mõm chó rộng, sâu, nhìn hài hoà. Cơ má phát triển đều. Mũi ngắn, lỗ mũi rộng, không dị tật, có màu đen.', 'Pháp, Anh', 'Tai dựng, đầu to', '10 - 14kg', '10-14 năm', 'Đực', '40000000', '25000000', 'Bull_Phap9.jpg', 0, NULL, NULL),
(7, 1, 'Chihuahua', 'Đang cập nhật', 'Cảnh khuyển Chihuahua sở hữu một ngoại hình nhỏ bé, xinh xắn: Đầu tròn, mõm ngắn, đôi mắt to, tròn xoe, thường có màu đen sẫm hoặc đỏ ruby sẫm. Đôi tai của những bé cún này khá to, vểnh, rất thính và nghe rõ được mọi âm thanh xung quanh.', 'Mexico', 'Nhỏ bé, trán dô rộng', '1,5 - 3kg', '12 - 20 năm', 'Đực/cái', '5000000', '3000000', 'Chihuahua76.jpg', 0, NULL, NULL),
(8, 7, 'Royal Canin Maxi Puppy - Thức Ăn Cao Cấp Dành Cho Chó', 'Đang cập nhật', 'Thành phần: Thịt và các dẫn xuất từ động vật, ngũ cốc, dẫn xuất từ thực vật, dầu và chất béo, chất khoáng, các loại đường. Phụ gia dinh dưỡng: Vitamin D3, E1, E2, B3, E4, E5, E6...', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '190000', '170000', 'thuc_an_cho43.jpg', 0, NULL, NULL),
(9, 7, 'Royal Canin Mini Puppy -Thức Ăn Khô Cao Cấp Cho Chó Cỡ Nhỏ', 'Đang cập nhật', 'Thành phần:  Thịt và các dẫn xuất từ động vật, ngũ cốc, dẫn xuất từ thực vật, dầu và chất béo, chất khoáng, các loại đường. Phụ gia dinh dưỡng: Vitamin D3, E1, E2, B3, E4, E5, E6...', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '210000', '190000', 'Thuc_an_cho_nho12.jpg', 0, NULL, NULL),
(10, 7, 'Thức Ăn Cao Cấp Dành Cho Mèo Con Royal Canin 400g', 'Đang cập nhật', 'Khối lượng: 400g\r\nThành phần: Sản phẩm được làm từ nhiều loại hương vị khác nhau. Bao gồm thịt và các dẫn xuất từ thực vật, chiết xuất protein thực vật, khoáng chất, sửa và các dẫn xuất của sữa, các dẫn xuất có nguồn gốc từ thực vật, nấm men, các loại đường khác....', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '140000', '120000', 'thuc_an_me-o87.jpg', 0, NULL, NULL),
(11, 7, 'Ba Lô Phi Hành Gia', 'Đang cập nhật', 'Trên balo có tay cầm, có quai đeo chắc chắn có thể điều chỉnh độ dài/ngắn theo ý muốn, có khóa kéo, có lỗ thoáng gió\r\nTạo cho thú cưng một không gian thoải mái, an toàn và thú vị. Cho phép thú cưng tương tác với thế giới bên ngoài\r\nDễ dàng sử dụng khiến cho việc vận chuyển thú cưng đi chơi, đi du lịch dễ dàng hơn. Bạn có thể tận hưởng những giây phút vui vẻ bên cạnh thú cưng của mình', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '600000', '550000', 'balo_phi_hanh88.jpg', 0, NULL, NULL),
(12, 7, 'Chuồng Chó', 'Đang cập nhật', 'Một chiếc chuồng với kích thước vừa vặn và phù hợp dù để bên ngoài hay trong căn nhà là điều vô cùng cần thiết. Bạn có thể coi chiếc chuồng này như ngôi nhà nhỏ của thú cưng và dạy chúng có thói quen ngủ nghỉ đúng giờ.', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '950000', '220000', 'chuong_cho51.jpg', 0, NULL, NULL),
(13, 1, 'Mèo Anh', 'Đang cập nhật', 'Giống mèo này có tính cách đặc biệt thân thiện, không quậy phá hay làm phiền con người. Chúng thích đùa giỡn và khá hiếu động, nhưng lại rất dễ bảo.', 'Anh', 'Được chia thành 2 dòng: Mèo Anh lông ngắn (British Shorthair) và Mèo Anh lông dài (British Longhair).', '4 - 7,5kg', '12 - 13 năm', 'Đực/cái', '19000000', '4900000', 'meo_anh33.jpg', 0, NULL, NULL),
(14, 1, 'Mèo Scottish Fold', 'Đang cập nhật', 'Mèo Scottish rất hiền lành và thân thiện với con người. Chúng thích nằm cuộn tròn trong lòng chủ nhân để được âu yếm, vuốt ve.', 'Scotland', 'sở hữu đôi tai với 4 cấp độ cụp vô cùng độc đáo', '2 - 6kg', '15 năm', 'Đực', '12900000', '8900000', 'meo_scottish27.jpg', 0, NULL, NULL),
(15, 1, 'Mèo Ba Tư', 'Đang cập nhật', 'Mèo 34 có rất nhiều màu lông khác nhau: Màu kem, màu cafe sữa, màu trắng, màu xám xanh, màu đỏ, màu nâu, vằn vện…', 'Ba Tư', 'Sở hữu đôi tai nhỏ, 2 mắt to và đặc biệt là chiếc mũi tẹt', '3 - 5kg', '10 - 17 năm', 'Đực', '10900000', '6900000', 'meo_ba_tu44.jpg', 0, NULL, NULL),
(16, 7, 'Ổ đệm cho chó mèo chấm bi ELITE', 'Đang cập nhật', 'Ổ đệm cho chó mèo chấm bi ELITE với thiết kế hình nôi vòm độc đáo và ấm áp. Sản phẩm với chất liệu vải nhung mềm mại, cao cấp an toàn cho thú cưng. Cho thú cưng một cảm giác êm ái khi nằm.', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '0', '395000', 'o_dem40.jpg', 0, NULL, NULL),
(17, 7, 'Đồ chơi cho chó mèo dạng bóng thừng BOBO', 'Đang cập nhật', 'Đồ chơi cho chó mèo dạng bóng thừng BOBO 1030 với màu sắc đa dạng, ngẫu nhiên.\r\nSản phẩm được làm bởi chất liệu thừng cotton chất lượng cao, dệt đan chắc chắn, bền bỉ đáp ứng nhu cầu gặm cắn của chó mèo.\r\nSản phẩm này là lựa chọn tuyệt vời kích thích bản năng nhai – gặm tự nhiên của thú cưng giúp làm sạch răng và nướu.', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '0', '30000', 'do_choi_dang_bong9.jpg', 0, NULL, NULL),
(18, 3, 'Hamster vàng chanh', 'Đang cập nhật', 'Tuy nhiên cũng được đánh giá là khá nhút nhát với người lạ, thường co rúm lại như cục bông khi có người lạ nhiệt tình thái quá. .', 'Việt Nam', 'Bộ lông vàng và hai mắt màu đỏ', '90 – 120g', '3 năm', 'Đực/cái', '150000', '100000', 'vang_chanh53.jpg', 0, NULL, NULL),
(19, 3, 'Hamster Saphia', 'Đang cập nhật', 'Hamster Saphire phù hợp với tất cả mọi người , với tính cách hiền hòa , mũm mĩm dù không có kinh nghiệm bạn cũng có thể chăm sóc và chơi đc với bé', 'Việt Nam', 'Có màu giống như màu con sóc nhưng nhòe đi , không rõ ràng các vạch sọc trên người.', '200g', '3 năm', 'Đực/cái', '0', '60000', 'saphia89.jpg', 0, NULL, NULL),
(20, 3, 'Hamster Sóc', 'Đang cập nhật', '<p>Chuột hamster S&oacute;c ph&ugrave; hợp với tất cả mọi người , với t&iacute;nh c&aacute;ch hiền h&ograve;a , mũm mĩm d&ugrave; kh&ocirc;ng c&oacute; kinh nghiệm bạn cũng c&oacute; thể chăm s&oacute;c v&agrave; chơi đc với b&eacute;.</p>', 'Việt Nam', 'Có màu giống như màu con sóc cảnh', '200g', '3 năm', 'Đực/cái', '0', '100000', 'hamster_soc57.jpg', 0, NULL, NULL),
(21, 3, 'Hamster Robo mặt nâu', 'Đang cập nhật', 'Hamster robo mặt nâu là hamster thuộc dòng Hamster Roborovski, có mặt màu nâu rất đẹp.', 'Mông Cổ', 'Dòng nhỏ nhất trong các loài hamster', '50g', '3 năm', 'Đực/cái', '0', '130000', 'robo_mat_nau39.jpg', 0, NULL, NULL),
(22, 7, 'Thức ăn trộn nhiều thành phần cho hamster', 'Đang cập nhật', 'Chỉ với thức ăn trộn, các bé sẽ đầy đủ chất dinh dưỡng và lớn nhanh như thánh gióng', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '0', '30000', 'thuc_an_tron2.jpg', 0, NULL, NULL),
(23, 7, 'Thức ăn sâu khô rang bơ cho hamster (Túi lớn)', 'Đang cập nhật', 'Sản phẩm thức ăn sâu khô cho hamster được đóng gói trong túi zip giúp dễ dàng bảo quản, sử dụng, khối lượng tịnh 180gr cho sản phẩm túi lớn, 1 bé ăn được rất lâu mới hết', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '0', '60000', 'thuc_an_sau_kho17.jpg', 0, NULL, NULL),
(24, 4, 'Nhím kiểng trắng', 'Đang cập nhật', 'Thường các bạn rất hiền, ít xù lông so với những chú nhím cùng lứa dù là đực hay cái', 'Đang cập nhật', 'Những sợi lông nhọn màu trắng và đôi mắt ruby màu hổng đỏ', '900g', '3,5 - 9 năm', 'Đực/cái', '0', '350000', 'nhim_trang62.jpg', 0, NULL, NULL),
(25, 4, 'Nhím kiểng muối tiêu', 'Đang cập nhật', 'Nhím kiểng muối tiêu thường rất dễ nuôi, cho gì ăn nấy nhưng đôi khi cũng làm nũng nịu', 'Đang cập nhật', 'lông màu muối tiêu', '900g', '3,5 - 9 năm', 'Đực/cái', '0', '300000', 'nhim_muoi_tieu68.jpg', 0, NULL, NULL),
(26, 4, 'Nhím kiểng Socola', 'Đang cập nhật', 'Rất nghe lời, nhìn rất oách, hay xù lông khi ai đó muốn chọc ghẹo', 'Đang cập nhật', 'Thường có phân biệt một ít về màu đậm nhạt', '900g', '3,5 - 9 năm', 'Đực/cái', '0', '400000', 'nhim_socola80.jpg', 0, NULL, NULL),
(27, 4, 'Nhím kiểng cam', 'Đang cập nhật', 'Là những bé hiếu động và luôn nổi bật trong đám đông. Là người tạo ra sự chú ý mạnh mẽ và thuyết phục bởi nguồn năng lượng dồi dào, sáng chói.', 'Đang cập nhật', 'Là loài nhím đặc biệt, có màu sắc độc đáo', '900g', '3,5 - 9 năm', 'Đực/cái', '0', '600000', 'nhim_cam97.jpg', 0, NULL, NULL),
(28, 7, 'Lồng hamster mica 30 x 20 x 20 cm', 'Đang cập nhật', 'Lồng tấm mica có kích thước: 40x20x20 cm\r\nLồng đã bao gồm: Tất cả các phụ kiện như trên hình: Nhà ngủ, wheel chạy gỗ, Nhà tắm ngoài\r\nNhà tắm ngoài sang choảnh.', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '0', '350000', 'long_mica70.jpg', 0, NULL, NULL),
(29, 7, 'Chuồng nhím kiểng 2', 'Đang cập nhật', 'Lồng bằng mica có kích thước: 80x50x60 cm\r\nTất cả phụ kiện như trên hình', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', '0', '450000', 'chuong_nhim_276.jpg', 0, NULL, NULL),
(30, 8, 'Rùa cạn Châu Phi', 'Đang cập nhật', 'Chúng hiền lành từ bé. Không có tính hiếu thắng, không hung dữ tấn công người. Chỉ có những con rùa nhát người hay không mà thôi.', 'Phía Nam của sa mạc Sahara, Châu Phi', 'Là một loài Rùa Cạn có kích thước lớn tuyệt đẹp xuất xứ từ miền đông và nam châu Phi.', '50 - 90kg', '75 năm hoặc hơn', 'Đực/cái', '4500000', '1600000', 'rua_can_chau_phi45.jpg', 0, NULL, NULL),
(31, 8, 'Rùa núi vàng', 'Đang cập nhật', 'Rùa Núi Vàng nằm trong dòng rùa cạn. Mà cách nuôi rùa cạn thì khá đơn giản. Các bạn cho rùa ăn các loại rau xanh như rau cải, xà lách, rau lang,…Bên cạnh đó, rùa ăn cả trái cây như cà rốt, táo, cà chua, chuối, dưa chuột,…', 'Khu vực Đông Nam Á và vùng Đông Bắc Ấn Độ.', 'Bộ mai có màu vàng như cơ thể và nhô cao dần về phía sống lưng, phần mai thường có đốm đen giữa những vảy mai vàng.', '3,5kg', '20 - 50 năm', 'Đực/cái', '1000000', '450000', 'rua_nui_vang40.jpg', 0, NULL, NULL),
(32, 8, 'Rùa hộp lưng đen', 'Đang cập nhật', 'Mặc dù là loài rùa nước, nhưng chúng vẫn được tìm thấy ở những nơi khô ráo.\r\nRùa hộp có tính cách nhát gan, tương đối hiền lành.', 'Đông Nam Á', 'Phần đầu, cổ của chúng có các sọc màu vàng, mai rùa có màu đen xám, khá cao và thường dài khoảng 20cm', '650g', '8-12 năm', 'Đực/cái', '300000', '800000', 'rua_hop_lung_den23.jpg', 0, NULL, NULL),
(33, 8, 'Rùa sa nhân', 'Đang cập nhật', '<p>R&ugrave;a sa nh&acirc;n ăn l&aacute; c&acirc;y kh&ocirc; v&agrave; động vật nhỏ như giun, ốc,.. Tuy l&agrave; lo&agrave;i ăn chay nhưng r&ugrave;a sa nh&acirc;n kh&ocirc;ng biết ăn rau</p>', 'Trung Quốc, Lào, Đông Ấn Độ, Việt Nam', 'Rùa sa nhân có gờ chạy dọc sống lưng chia mai rùa thành 2 bên đối xứng, phần mai ở gần đuôi có hình răng cưa.', '1,2kg', '30 - 40 năm', 'Đực/cái', '300000', '650000', 'rua_sa_nhan17.jpg', 0, NULL, NULL),
(34, 8, 'Rùa sao Ấn Độ', 'Đang cập nhật', '<p>R&ugrave;a sao ấn độ l&agrave; lo&agrave;i r&ugrave;a cạn dễ chăm s&oacute;c, k&iacute;ch thước vừa phải, m&agrave;u sắc bắt mắt đi k&egrave;m với d&aacute;ng mai đặc biệt, &iacute;t bệnh tật đi k&egrave;m với gi&aacute; th&agrave;nh rẻ hơn nhiều so với đa số c&aacute;c lo&agrave;i r&ugrave;a cạn kh&aacute;c c&ugrave;ng ph&acirc;n kh&uacute;c m&agrave;u sắc như Srilanka Star hay Radiated.</p>', 'Ấn Độ, Sri Lanca, Miền đông nam Pakistan.', 'Các đường họa tiết Vàng tạo thành những ngôi sao tuyệt vời.', '2,2kg', '30 – 80  năm', 'Đực/cái', '3000000', '2200000', 'rua_sao41.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_addressone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_addresstwo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_firstname`, `shipping_lastname`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_addressone`, `shipping_addresstwo`, `shipping_city`, `shipping_note`, `created_at`, `updated_at`) VALUES
(30, 'Vo', 'Son', 'Việt Nam', 'voson@gmail.com', '12345678', '20 Tran Hung Dao', '20 Tran Hung Dao', 'Da Nang', 'abc', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
