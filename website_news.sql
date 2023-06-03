-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 08:35 AM
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
-- Database: `website_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Khánh An', 'quangan010903@gmail.com', NULL, '$2y$10$7YAV6nSmUFEQz4rziimTvetICYCOgqyivGsPe/mhGX06u.OaHBdhi', 'admin.jpg', '', NULL, NULL, '2023-05-22 10:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đặng Quang Khánh An', 'quangan010903@gmail.com', NULL, '$2y$10$DzeydWV4XLjPbGK4/hInNuL5f/1V2vr4Y40a7UxPVrMJA6srSyRVS', 'author_photo_1685724257.jpg', '', NULL, '2023-06-02 09:40:05', '2023-06-02 10:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `show_on_menu` varchar(255) NOT NULL,
  `category_order` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `show_on_menu`, `category_order`, `created_at`, `updated_at`) VALUES
(15, 'Sports', 'Show', '1', '2023-05-28 10:03:02', '2023-05-28 10:03:02'),
(17, 'National', 'Show', '2', '2023-05-28 10:03:17', '2023-05-28 10:03:17'),
(18, 'Lifestyle', 'Show', '3', '2023-05-28 10:03:27', '2023-05-28 10:03:27'),
(19, 'Technology', 'Show', '4', '2023-05-28 10:03:40', '2023-05-28 10:03:40'),
(20, 'Job List', 'Show', '5', '2023-05-28 10:03:52', '2023-05-28 10:03:52'),
(21, 'Health', 'Show', '6', '2023-05-28 10:04:01', '2023-05-28 10:04:01'),
(22, 'Travel', 'Show', '7', '2023-05-28 10:04:11', '2023-05-28 10:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_advertisements`
--

CREATE TABLE `home_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `above_search_ad` varchar(255) NOT NULL,
  `above_search_ad_url` varchar(255) DEFAULT NULL,
  `above_search_ad_status` varchar(255) NOT NULL,
  `above_footer_ad` varchar(255) NOT NULL,
  `above_footer_ad_url` varchar(255) DEFAULT NULL,
  `above_footer_ad_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_advertisements`
--

INSERT INTO `home_advertisements` (`id`, `above_search_ad`, `above_search_ad_url`, `above_search_ad_status`, `above_footer_ad`, `above_footer_ad_url`, `above_footer_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'above_search_ad.jpg', 'facebook.com', 'Show', 'above_footer_ad.jpg', 'youtube.com', 'Show', NULL, '2023-05-23 02:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `live_channels`
--

CREATE TABLE `live_channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `video_id` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_channels`
--

INSERT INTO `live_channels` (`id`, `heading`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 'Bình Luận Tiếng Việt: IEM Dallas 2023 | Vòng Bảng | Ngày 3 | Stream A | On Gaming', 'YkC8OUxFbrM', '2023-05-31 10:09:50', '2023-05-31 10:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_21_085930_create_admins_table', 1),
(6, '2023_05_22_184235_create_home_advertisement_table', 2),
(7, '2023_05_22_191626_create_home_advertisements_table', 3),
(8, '2023_05_23_091438_create_top_advertisements_table', 4),
(9, '2023_05_23_163619_create_sidebar_advertisements_table', 5),
(10, '2023_05_24_170407_create_categories_table', 6),
(11, '2023_05_24_173946_create_sub_categories_table', 7),
(12, '2023_05_24_182304_create_posts_table', 8),
(13, '2023_05_24_182703_create_tags_table', 9),
(14, '2023_05_28_173309_create_settings_table', 10),
(15, '2023_05_30_062250_create_photos_table', 11),
(16, '2023_05_30_070818_create_videos_table', 12),
(17, '2023_05_30_093158_create_pages_table', 13),
(18, '2023_05_31_145259_create_subscribers_table', 14),
(19, '2023_05_31_165849_create_live_channels_table', 15),
(20, '2023_06_01_145143_create_online_polls_table', 16),
(21, '2023_06_02_140444_create_social_items_table', 17),
(22, '2023_06_02_162708_create_authors_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `online_polls`
--

CREATE TABLE `online_polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `yes_vote` text NOT NULL,
  `no_vote` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_polls`
--

INSERT INTO `online_polls` (`id`, `question`, `yes_vote`, `no_vote`, `created_at`, `updated_at`) VALUES
(1, 'Admin trang tin tức này rất đẹp trai đúng không ?', '2', '2', '2023-06-01 08:02:07', '2023-06-01 08:23:33'),
(2, 'An có còn yêu Hân không ?', '1', '0', '2023-06-01 08:32:33', '2023-06-01 08:32:38'),
(3, 'Liệu Khánh An có trở thành lập trình viên Web Backend ?', '0', '0', '2023-06-01 08:33:31', '2023-06-01 08:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_title` text NOT NULL,
  `about_detail` text NOT NULL,
  `about_status` text NOT NULL,
  `faq_title` text NOT NULL,
  `faq_detail` text DEFAULT NULL,
  `faq_status` text NOT NULL,
  `contact_title` text NOT NULL,
  `contact_detail` text NOT NULL,
  `contact_map` text NOT NULL,
  `contact_status` text NOT NULL,
  `terms_title` text NOT NULL,
  `terms_detail` text NOT NULL,
  `terms_status` text NOT NULL,
  `privacy_title` text NOT NULL,
  `privacy_detail` text NOT NULL,
  `privacy_status` text NOT NULL,
  `disclaimer_title` text NOT NULL,
  `disclaimer_detail` text NOT NULL,
  `disclaimer_status` text NOT NULL,
  `login_title` text NOT NULL,
  `login_status` text NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `about_title`, `about_detail`, `about_status`, `faq_title`, `faq_detail`, `faq_status`, `contact_title`, `contact_detail`, `contact_map`, `contact_status`, `terms_title`, `terms_detail`, `terms_status`, `privacy_title`, `privacy_detail`, `privacy_status`, `disclaimer_title`, `disclaimer_detail`, `disclaimer_status`, `login_title`, `login_status`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Khánh An New', '<p style=\"color: rgb(33, 37, 41); font-family: &quot;Maven Pro&quot;, sans-serif;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p><p style=\"color: rgb(33, 37, 41); font-family: &quot;Maven Pro&quot;, sans-serif;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p><p style=\"color: rgb(33, 37, 41); font-family: &quot;Maven Pro&quot;, sans-serif;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p><p style=\"color: rgb(33, 37, 41); font-family: &quot;Maven Pro&quot;, sans-serif;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>', 'Show', '', NULL, '', 'Contact Us', '<p>Something here...</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.8639811808416!2d105.7442068111263!3d21.038127780532637!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b991d80fd5%3A0x53cefc99d6b0bf6f!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIEZQVCBQb2x5dGVjaG5pYw!5e0!3m2!1svi!2s!4v1685464026161!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Show', '', '', '', '', '', '', '', '', '', 'Login', 'Show', 0, NULL, '2023-05-30 09:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `caption` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `caption`, `created_at`, `updated_at`) VALUES
(1, 'photo_1685429443.jpg', 'Summer Mikenco', '2023-05-29 23:41:33', '2023-05-29 23:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_detail` text NOT NULL,
  `post_photo` varchar(200) NOT NULL,
  `visitors` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `is_share` int(11) NOT NULL,
  `is_comment` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `sub_category_id`, `post_title`, `post_detail`, `post_photo`, `visitors`, `author_id`, `admin_id`, `is_share`, `is_comment`, `created_at`, `updated_at`) VALUES
(5, 7, 'Nga cảnh báo phương Tây đang ‘đùa với lửa’', '<p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\">“Tất nhiên, đó là sự leo thang không thể chấp nhận được. Tôi nghĩ có những người ở phương Tây thấu hiểu điều này. Nhưng mọi thứ đang do Washington, London và các vệ tinh của họ bên trong Liên minh châu Âu (EU) quyết định”, ông Lavrov chia sẻ trong cuộc phỏng vấn với kênh truyền hình Russia 1 hôm nay (28/5), khi bình luận về khả năng các chiến đấu cơ do Mỹ sản xuất sẽ được gửi cho Ukraine.</p><figure class=\"image vnn-content-image\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; list-style: none; border: 0px; font-style: italic; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><img data-id=\"00QKN8\" src=\"https://static-images.vnncdn.net/files/publish/2023/5/28/ngoai-truong-nga-880.jpg\" data-thumb-src=\"https://static-images.vnncdn.net/files/publish/2023/5/28/ngoai-truong-nga-880.jpg?width=200\" data-lg-id=\"10cfa27c-738e-49e3-a8c3-f541b4d56ece\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block;\"><figcaption style=\"margin: 10px 0px 0px; padding: 0px 1.875rem; list-style: none; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\">Ngoại trưởng Nga Sergey Lavrov. Ảnh: Tass</figcaption></figure><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\">Đài RT dẫn lời ông Lavrov cáo buộc chính Ba Lan và các quốc gia vùng Baltic gồm Latvia, Lithuania và Estonia, đang “thực hiện mục tiêu do Mỹ đặt ra là làm suy yếu và khiến&nbsp;<a href=\"https://vietnamnet.vn/nga-tag39008.html\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">Nga</a>&nbsp;hứng chịu thất bại chiến lược”.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\">“Một số ở phương Tây đang thảo luận về việc ‘phi thuộc địa hóa Nga’, đồng nghĩa với việc chia cắt đất nước của chúng tôi. Đây là hành động đùa với lửa”, lãnh đạo Bộ Ngoại giao Nga cảnh báo.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\">Theo ông Lavrov, những phát biểu hồi đầu tuần của Tướng Mark Milley, Chủ tịch Hội đồng Tham mưu trưởng liên quân Mỹ về việc Kiev không thể giành lại các vùng lãnh thổ đã mất vào tay Nga “trong thời gian tới” là “một bước tiến để hiểu tình hình thực tế”.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\">Suốt nhiều tháng qua, Tổng thống Ukraine&nbsp;<a href=\"https://vietnamnet.vn/volodymyr-zelensky-tag11756779462224860778.html\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">Volodymyr Zelensky</a>&nbsp;đã hối thúc các đồng minh phương Tây gửi tiêm kích F-16 cho Kiev, với lí do loại chiến đấu cơ này rất cần thiết cho việc bảo vệ không phận và cơ sở hạ tầng của Ukraine trước làn sóng tấn công bằng tên lửa của quân Nga.&nbsp;</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\">Tại hội nghị thượng đỉnh G7 ở Hiroshima, Nhật Bản hôm 21/5, Tổng thống Mỹ Joe Biden cho biết, Washington ủng hộ các nỗ lực của Anh, Hà Lan và các quốc gia châu Âu khác trong việc huấn luyện các binh sĩ Ukraine sử dụng F-16 và các chiến đấu cơ thế hệ thứ 4 khác của phương Tây. Cố vấn an ninh quốc gia Mỹ Jake Sullivan tiết lộ thêm, Washington sẽ cùng các đồng minh xác định khi nào sẽ chuyển giao các tiêm kích, bên nào chịu trách nhiệm vận chuyển số khí tài này và với số lượng bao nhiêu.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\">Moscow đã nhiều lần cảnh báo, việc phương Tây tiếp tục gửi vũ khí tân tiến hơn cho&nbsp;<a href=\"https://vietnamnet.vn/ukraine-tag62511.html\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">Ukraine</a>&nbsp;có thể vượt qua \"lằn ranh đỏ\", làm leo thang chiến sự. Giới chức Nga khẳng định, việc viện trợ vũ khí, chia sẻ thông tin tình báo và huấn luyện cho quân đội Ukraine khiến các quốc gia phương Tây trên thực tế đã là bên tham gia xung đột.</p>', 'post_photo_1685297257.jpg', 9, 0, 1, 1, 1, '2023-05-28 11:07:37', '2023-06-01 10:34:43'),
(6, 8, 'Thắng ngược Fulham, MU cán đích ở vị trí thứ 3', '<h2 class=\"content-detail-sapo\" style=\"margin: 1.25rem 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.625rem; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(64, 64, 64);\">Jadon Sancho và Bruno Fernandes tỏa sáng ghi bàn giúp MU lội ngược dòng thắng Fulham 2-1 ở vòng đấu cuối cùng Ngoại hạng Anh 2022/23.</h2><div class=\"maincontent main-content\" id=\"maincontent\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: medium; line-height: 1.75rem; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\"><div class=\"mb-20\" style=\"margin: 0px 0px 20px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><figure class=\"image vnn-content-image\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; list-style: none; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><img data-id=\"00QL2D\" src=\"https://static-images.vnncdn.net/files/publish/2023/5/28/mu-fulham-1055.jpg\" data-thumb-src=\"https://static-images.vnncdn.net/files/publish/2023/5/28/mu-fulham-1055.jpg?width=200\" data-lg-id=\"9cb47359-a0ff-47d2-b963-7179d1d062ec\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block;\"><figcaption style=\"margin: 10px 0px 0px; padding: 0px 1.875rem; list-style: none; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\">Sancho và Bruno đều ghi bàn giúp MU thắng trận hạ màn Ngoại hạng Anh</figcaption></figure><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Đội hình ra sân</span></p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">MU:&nbsp;</span>De Gea; Dalot, Maguire, Lindelof, Malacia; Casemiro, Fred, Fernandes, Sancho; Rashford, Garnacho.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Chelsea</span>: Leno, Tete, Adarabioyo, Diop, Robinson, Reed, Palhinha, Wilson, Cairney, Willian, Mitrovic.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Bàn thắng:</span>&nbsp;Sancho 39\', Bruno Fernandes 55\' - Tete 19\'</p><div class=\"newsFeature__listInfomation-itemIntroduce pb-15\" style=\"margin: 0px; padding: 20px 35px 15px 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; -webkit-box-pack: justify; display: flex; justify-content: space-between; position: relative;\"><div style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><div class=\"newsFeature__listInfomation-itemDate\" style=\"margin: 0px 0px 15px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; -webkit-box-align: center; align-items: center; color: rgb(45, 103, 173); display: flex;\"><span style=\"margin: 0px 5px 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">29/05/2023 | 00:30</span></div><h3 class=\"newsFeature__listInfomation-itemTitle\" style=\"margin: 16px 0px 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 22px; line-height: 1.5; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(42, 42, 42);\">Kết thúc</h3></div><div class=\"newsFeature__listInfomation-itemBoxIcon active\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit; -webkit-box-align: center; align-items: center; cursor: pointer; display: flex; height: calc(100% - 15px); position: absolute; right: 0px;\"><img class=\"no-zoom icon\" src=\"https://static.vnncdn.net/v1/icon/down-arrow.svg\" alt=\"icon\" style=\"margin: 0px; padding: 5px; list-style: none; border: 1px solid rgb(131, 131, 131); font: inherit; max-width: 100%; transform: rotate(180deg); border-radius: 50%; filter: grayscale(1); height: 25px; width: 25px;\"></div></div><div class=\"newsFeature__listInfomation-main\" style=\"margin: 0px 0px 15px; padding: 0px; list-style: none; border: 0px; font: inherit; overflow: hidden;\"><div class=\"newsFeature__listInfomation-post\" style=\"margin: 0px 0px 25px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><figure class=\"image vnn-content-image\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; list-style: none; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><img data-id=\"00QL3Z\" src=\"https://static-images.vnncdn.net/files/publish/2023/5/29/fxo0jmaxwamlovf-11.jpg\" data-thumb-src=\"https://static-images.vnncdn.net/files/publish/2023/5/29/fxo0jmaxwamlovf-11.jpg?width=200\" data-lg-id=\"06a100c8-ec41-48c3-bbd2-e7d7af756361\" style=\"margin: 10px auto 0px; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block;\"><figcaption style=\"margin: 10px 0px 0px; padding: 0px 1.875rem; list-style: none; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\">Trận đấu khép lại với tỷ số 2-1 nghiêng về Quỷ đỏ</figcaption></figure><figure class=\"image vnn-content-image\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; list-style: none; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><img data-id=\"00QL2F\" src=\"https://static-images.vnncdn.net/files/publish/2023/5/29/mu-fulham-12.jpg\" data-thumb-src=\"https://static-images.vnncdn.net/files/publish/2023/5/29/mu-fulham-12.jpg?width=200\" data-lg-id=\"6e93f5f6-43c4-4377-9e4b-2ebafd6bbac4\" style=\"margin: 10px auto 0px; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block;\"><figcaption style=\"margin: 10px 0px 0px; padding: 0px 1.875rem; list-style: none; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\"></figcaption></figure><figure class=\"image vnn-content-image\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; list-style: none; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><img data-id=\"00QL3X\" src=\"https://static-images.vnncdn.net/files/publish/2023/5/29/bxh-ngoai-hang-anh-1583.jpg\" data-thumb-src=\"https://static-images.vnncdn.net/files/publish/2023/5/29/bxh-ngoai-hang-anh-1583.jpg?width=200\" data-lg-id=\"14ea4de8-697e-4dd8-9113-ac33d1918b45\" style=\"margin: 10px auto 0px; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block;\"><figcaption style=\"margin: 10px 0px 0px; padding: 0px 1.875rem; list-style: none; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\"></figcaption></figure><div><br></div></div></div></div></div>', 'post_photo_1685297380.jpg', 5, 0, 1, 1, 1, '2023-05-28 11:09:40', '2023-06-02 05:52:15'),
(7, 6, 'Ông Putin hạ lệnh tăng cường an ninh biên giới Nga sau hàng loạt vụ tấn công', '<h2 class=\"content-detail-sapo\" style=\"margin: 1.25rem 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.625rem; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(64, 64, 64);\">Ông Putin tuyên bố tăng cường an ninh biên giới Nga để đảm bảo sự di chuyển ‘nhanh chóng’ của lực lượng quân sự và dân sự vào các khu vực ở Ukraine mà Moscow đang kiểm soát.</h2><div class=\"maincontent main-content\" id=\"maincontent\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: medium; line-height: 1.75rem; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\"><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Trong thông điệp chúc mừng ngày thành lập Lực lượng Biên phòng thuộc Cơ quan An ninh Liên bang Nga (FSB), hôm nay (28/5),&nbsp;<a href=\"https://vietnamnet.vn/putin-tag15415580591601883766.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">Tổng thống Vladimir Putin</a>&nbsp;cho biết nhiệm vụ của lính biên phòng là \"bảo vệ một cách đáng tin cậy\" các tuyến đường gần khu vực chiến sự.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Các cuộc tấn công nhằm vào lãnh thổ Nga đang gia tăng trong những tuần gần đây. Đáng nói, ngoài vùng biên giới, nhiều vị trí nằm sâu trong lãnh thổ Nga cũng đang bị tấn công như vụ tấn công nhằm vào tuyến đường ống dẫn dầu ở phía tây bắc thủ đô Moscow hôm 27/5.</p><figure class=\"image vnn-content-image\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; list-style: none; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><img data-id=\"00QKD1\" src=\"https://static-images.vnncdn.net/files/publish/2023/5/28/putin-590.jpg\" data-thumb-src=\"https://static-images.vnncdn.net/files/publish/2023/5/28/putin-590.jpg?width=200\" data-lg-id=\"8e9a0429-ae54-44d6-975c-a0fa6bd5b377\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block;\"><figcaption style=\"margin: 10px 0px 0px; padding: 0px 1.875rem; list-style: none; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\">&nbsp;Tổng thống Nga Vladimir Putin. Ảnh: Reuters&nbsp;</figcaption></figure><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">\"Điều cần thiết là đảm bảo sự di chuyển nhanh chóng của cả phương tiện quân sự và dân sự, cùng hàng hóa gồm thực phẩm, vật liệu xây dựng tới những chủ thể mới của Liên bang&nbsp;<a href=\"https://vietnamnet.vn/nga-tag11793932963017999683.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">Nga</a>\", hãng tin Reuters dẫn lời ông Putin.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Theo đó, 4 khu vực thuộc Ukraine gồm Kherson, Zaporizhzhia, Luhansk và Donetsk đã sáp nhập vào Liên bang Nga hồi tháng 9/2022. Lực lượng Nga cũng đang kiểm soát một phần diện tích trong 4 khu vực này.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Hôm 27/5, 3 người đã bị thương trong vụ pháo kích của Ukraine nhằm vào vùng Belgorod của Nga, làm dấy lên mối nghi ngờ về khả năng phòng thủ và quân sự của Nga.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Các khu vực Kursk và Belgorod của Nga nằm giáp biên giới với Ukraine đã trở thành mục tiêu thường xuyên bị tấn công thời gian gần đây, gây thiệt hại cho hệ thống điện, đường sắt và cơ sở hạ tầng quân sự. Giới chức Nga cáo buộc&nbsp;<a href=\"https://vietnamnet.vn/ukraine-tag18220395140699380479.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">Ukraine&nbsp;</a>là thủ phạm gây ra các vụ tấn công. &nbsp;</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Trong khi đó, Kiev chưa bao giờ công khai nhận trách nhiệm về các cuộc tấn công vào sâu lãnh thổ Nga, hay các khu vực ở Ukraine mà Nga đang nắm quyền kiểm soát. Song theo Kiev, các vụ phá hủy cơ sở hạ tầng là bước chuẩn bị cho một cuộc tấn công trên bộ đã được lên kế hoạch từ trước.&nbsp;</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Hôm 27/5, Ukraine tuyên bố đã sẵn sàng triển khai cuộc phản công bị trì hoãn lâu nay nhằm giành lại các vùng lãnh thổ mà Nga đang kiểm soát trong cuộc xung đột kéo dài suốt 15 tháng qua.&nbsp;</p></div>', 'post_photo_1685297473.jpg', 11, 0, 1, 1, 1, '2023-05-28 11:11:13', '2023-05-29 23:19:55'),
(8, 8, 'Mất bao lâu để tập chạy full marathon?', '<p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; background-color: rgb(252, 250, 246);\"><br>Chế độ tập luyện sẽ bao gồm 3 - 4 buổi mỗi tuần, còn lại là nghỉ ngơi, thư giãn để cơ bắp phục hồi. Theo Laura Noris - một HLV chạy bộ kiêm nhà sáng tạo nội dung tại Mỹ, nguyên tắc tập cho giải marathon đầu tiên là không thúc ép, không đốt cháy giai đoạn. Runner không nên đặt mục tiêu sub5 hoặc sub4 trong giải marathon đầu tiên. Noris cho rằng chỉ nên đặt mục tiêu về đích an toàn trong đúng thời gian quy định.<br></p><article class=\"fck_detail \" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 18px; line-height: 28.8px; font-family: arial; color: rgb(34, 34, 34); background-color: rgb(252, 250, 246);\"><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">\"Thúc ép có mang lại kết quả nhưng, nhưng sau đó runner dễ kiệt sức, chấn thương và mất dần đam mê với chạy bộ. Tôi không bao giờ muốn điều đó xảy ra với học viên của mình\", Noris - người đã huấn luyện cho hơn 200 VĐV phong trào và chuyên nghiệp, chia sẻ.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Với Laura Noris 6 tuần đầu tiên là quãng thời gian tập cơ bản để xây dựng nền tảng, tạo thói quen cho phổi và chân. Khối lượng tập trong thời gian này không quá nhiều. Ví dụ, tuần đầu tiên lịch tập có thể là chạy 15 phút vào thứ hai, sau đó tăng lên 20 phút vào thứ tư, 25 phút vào thứ 7. Chủ nhật là một buổi easy run (chạy thoải mái) dài một tiếng. Những tuần sau đó, runner sẽ tăng dần quãng đường hoặc thời gian chạy lên, có thể từ 3km lên 5km rồi 7km nhưng không nên quá 10km.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Laura Noris cho rằng tốc độ không phải yếu tố quan trọng trong những tuần đầu. Thay vào đó, runner có thể thả lỏng khi tập, kết hợp chạy và đi bộ. Ví dụ chạy 30 giây sau đó đi bộ một phút, sau đó cố gắng cải thiện thành chạy một phút đi bộ 30 giây. \"Phương pháp này là cách giúp tôi bắt đầu với chạy bộ. Mục tiêu của phương pháp này là tạo cho bản thân sự thoải mái, hạn chế chấn thương và để cơ thể dần dần thích ứng\", HLV đang theo học Thạc sĩ Khoa học thể thao tại Đại học Concordia chia sẻ.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Sau khi đã có nền tảng, runner có thể đăng ký một giải chạy ngắn, khoảng 5km, đặt mục tiêu chinh phục trong 45 phút hoặc 1 tiếng để tìm động lực và kiểm tra thành quả tập luyện. Đây cũng sẽ là bước đệm để người chơi lên dây cót tinh thần cho những quãng tập luyện sau này.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Trong khoảng tuần 6 - 16, runner sẽ bước vào chu kỳ tập luyện nâng cao. Trong đó, quãng đường chạy mỗi tuần sẽ tăng so với tuần trước, nhưng không vượt quá 10 - 15%.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 680px; float: left;\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 453.763px; text-rendering: optimizelegibility; width: 680px; float: left; display: table; -webkit-box-pack: center; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/25/HUE-8784-JPG-4114-1685002276.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hOjBDAAMWV1MqJOoqxHlWg 1x, https://i1-thethao.vnecdn.net/2023/05/25/HUE-8784-JPG-4114-1685002276.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=__1VzbZcHUjFqkzOuk4ZBQ 1.5x, https://i1-thethao.vnecdn.net/2023/05/25/HUE-8784-JPG-4114-1685002276.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=Q10s9zodq3tvGYKJAHBfng 2x\" srcset=\"https://i1-thethao.vnecdn.net/2023/05/25/HUE-8784-JPG-4114-1685002276.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hOjBDAAMWV1MqJOoqxHlWg 1x, https://i1-thethao.vnecdn.net/2023/05/25/HUE-8784-JPG-4114-1685002276.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=__1VzbZcHUjFqkzOuk4ZBQ 1.5x, https://i1-thethao.vnecdn.net/2023/05/25/HUE-8784-JPG-4114-1685002276.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=Q10s9zodq3tvGYKJAHBfng 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Runner chạy trên đồi cát tại VnExpress Marathon Quy Nhơn 2022. Ảnh: VM\" class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/25/HUE-8784-JPG-4114-1685002276.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hOjBDAAMWV1MqJOoqxHlWg\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/25/HUE-8784-JPG-4114-1685002276.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hOjBDAAMWV1MqJOoqxHlWg\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 680px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Runner chạy trên đồi cát tại VnExpress Marathon Quy Nhơn 2022. Ảnh:&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">VM</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Laura Noris có ba lời khuyên trong giai đoạn này. Đầu tiên là không quá quan trọng tốc độ. Theo cô, dù chạy quãng đường nào, VĐV luôn phải đảm bảo vẫn có thể nói chuyện với người xung quanh mà không thở gấp. Ví dụ, với 4 buổi mỗi tuần, runner nên có ít nhất hai buổi easy run, còn lại có thể là những buổi tập theo pace, long run hoặc intervel. \"Khi tăng quãng đường, cơ thể sẽ mất nhiều năng lượng hơn. Khi cơ thể biến đổi, cần có thời gian để dần dần thích nghi. Cho nên, phần lớn các buổi tập nên diễn ra với tốc độ chậm rãi để giảm nguy cơ chấn thương\", nữ HLV chia sẻ.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Thứ hai là những bài tập bổ trợ như đạp xe, yoga, bơi lội,... VĐV có thể chơi thêm các môn thể thao hoặc tập các bài bổ trợ vào thời gian rảnh hoặc các ngày không có lịch chạy. Cuối cùng là cung cấp năng lượng đúng cách. Glycongen và Carbonhydrate là hai chất quan trọng với người chơi thể thao, giúp nạp thêm năng lượng, tránh \"đụng tường\" trong tập luyện và thi đấu. Vì thế, các loại muối, gel, thanh năng lượng phải luôn thủ sẵn.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Sau khi đã trải qua đủ nhiều tháng tập luyện, điều cuối cùng runner cần quan tâm là lắng nghe cơ thể. Nếu chưa thật tự tin và thoải mái, runner có thể chọn tham gia 21km hoặc thậm chí vài cuộc đua 10km để tạo thói quen rồi mới nâng lên full marathon.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Tại Việt Nam, runner có thể chọn những giải đấu trong hệ thống VnExpress Marathon để kiểm chứng thành quả tập luyện của mình. Ngày 11/6 tới,&nbsp;<a href=\"http://vm.vnexpress.net/\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_Marathon-4609443&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-VnexpressMarathonSparklingQuyNhon&amp;vn_term=Desktop&amp;vn_thumb=0&amp;vn_test=A\" data-itm-added=\"1\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">VnExpress Marathon Sparkling Quy Nhơn</a>&nbsp;sẽ diễn ra với quy mô 10.000 VĐV. Giải đưa người tham gia khám phá vẻ đẹp của thành phố biển năng động của Nam Trung bộ, qua cây cầu vượt biển nổi tiếng Thị Nại. Tham gia giải cũng là cách các gia đình kết hợp thể thao và du lịch trong kỳ nghỉ hè.</p></article>', 'post_photo_1685344922.jpg', 1, 0, 1, 1, 1, '2023-05-29 00:22:02', '2023-05-29 00:22:02'),
(9, 8, 'Chỉ ba CĐV đón Messi và PSG', '<p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; background-color: rgb(252, 250, 246);\"><br>Trận hòa Strasbourg giúp PSG đủ điểm vô địch&nbsp;<a href=\"https://vnexpress.net/chu-de/ligue-1-42\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_CacGiaiKhac-4610785&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-Ligue1&amp;vn_term=Desktop&amp;vn_thumb=0&amp;vn_test=A\" data-itm-added=\"1\" style=\"background-color: rgb(252, 250, 246); margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Ligue 1</a>&nbsp;sớm một vòng. Messi và đồng đội sở hữu 85 điểm sau 37 trận, hơn đội xếp thứ hai Lens bốn điểm trước vòng cuối. PSG giành Ligue 1 thứ hai liên tiếp, đồng thời lập kỷ lục giải đấu với 11 danh hiệu.<br></p><article class=\"fck_detail \" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 18px; line-height: 28.8px; font-family: arial; color: rgb(34, 34, 34); background-color: rgb(252, 250, 246);\"><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Chính Messi mở tỷ số trận&nbsp;<a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/strasbourg-95\" rel=\"dofollow\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Strasbourg</a>&nbsp;ở phút 59. Tiền đạo người Argentina sút chéo góc đẹp mắt, sau pha kiến tạo của Kylian Mbappe. Anh qua đó lập kỷ lục ghi 496 bàn tại năm giải vô địch quốc gia hàng đầu châu Âu,&nbsp;<a href=\"https://vnexpress.net/bong-da/messi-pha-ky-luc-cua-ronaldo-4610549.html\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_CacGiaiKhac-4610785&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-PhaCotMoc495BanCuaCristianoRonaldo&amp;vn_term=Desktop&amp;vn_thumb=0&amp;vn_test=A\" data-itm-added=\"1\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">phá cột mốc 495 bàn của Cristiano Ronaldo</a>. Năm giải hàng đầu gồm Ngoại hạng Anh, La Liga, Bundesliga, Serie A và Ligue 1. Messi đang sở hữu 474 bàn La Liga, và 22 bàn Ligue 1.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Mùa này, PSG còn trận tiếp Clermont Foot ngày 3/6. Họ sẽ nâng Ligue 1 trên sân Parc des Princes ngay sau đó. Hồi đầu mùa, PSG đã thắng Nantes 4-0 trong trận tranh Siêu Cup Pháp. Messi san bằng kỷ lục giành 43 danh hiệu tập thể với đồng đội cũ Dani Alves.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Hợp đồng giữa Messi và&nbsp;<a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/psg-85\" rel=\"dofollow\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">PSG</a>&nbsp;chỉ còn hạn đến hết tháng 6. Theo trang&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Goal</em>, tiền đạo 35 tuổi sẽ ra đi theo dạng chuyển nhượng tự do. Anh đang đứng trước ba khả năng: trở lại Barca, sang Mỹ hoặc Arab Saudi.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\"><a href=\"https://vnexpress.net/chu-de/lionel-messi-300\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_CacGiaiKhac-4610785&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-Messi&amp;vn_term=Desktop&amp;vn_thumb=0&amp;vn_test=A\" data-itm-added=\"1\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Messi</a>&nbsp;gia nhập PSG tháng 8/2021, cũng theo dạng chuyển nhượng tự do. Trước đó, anh trưởng thành từ lò đào tạo, có 17 năm liên tục khoác áo đội một Barca.</p></article>', 'post_photo_1685345098.jpg', 5, 0, 1, 1, 1, '2023-05-29 00:24:58', '2023-06-02 10:28:23');
INSERT INTO `posts` (`id`, `sub_category_id`, `post_title`, `post_detail`, `post_photo`, `visitors`, `author_id`, `admin_id`, `is_share`, `is_comment`, `created_at`, `updated_at`) VALUES
(10, 8, 'Khi Leicester nhận ra nguy cơ xuống hạng quá muộn', '<p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; background-color: rgb(252, 250, 246);\"><span class=\"location-stamp\" style=\"margin: 0px 15px 0px 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 16px; text-transform: uppercase; letter-spacing: -0.5px; position: relative; color: rgb(117, 117, 117) !important;\">ANH</span>Xuống hạng là cái giá Leicester phải trả cho quá nhiều vấn đề mà họ không thể giải quyết, dù từng được cựu HLV Brendan Rodgers Trong lịch sử 31 năm của Ngoại hạng Anh, Leicester là một trong bảy nhà vô địch. Nhưng họ là đội thứ hai trong đó phải xuống hạng, sau Blackburn Rovers. Blackburn trở lại Ngoại hạng Anh sau hai mùa chơi ở hạng dưới, cho đến năm 2012 họ lại xuống hạng lần nữa và chưa hẹn ngày trở lại.</p><article class=\"fck_detail \" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 18px; line-height: 28.8px; font-family: arial; color: rgb(34, 34, 34); background-color: rgb(252, 250, 246);\"><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Với các đội xuống hạng, nhiều người sẽ thường trách giới chủ thiếu quan tâm đến đội bóng. Nhưng trường hợp của Leicester lại khác.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\"><strong style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Leicester luôn thể hiện là đội bóng đầy tham vọng dưới quyền sở hữu của gia đình Srivaddhanaprabha</strong>. Họ đã đầu tư nhiều vào đội bóng, dốc thêm hầu bao kể từ sau chức vô địch Ngoại hạng Anh năm 2016. Trung bình mỗi mùa giải họ chi 87 triệu USD để mua cầu thủ. Giới chủ Thái Lan cũng đãi ngộ cầu thủ ở mức cao hơn, khiến quỹ lương của đội phình to đến mức cao thứ bảy ở Ngoại hạng Anh.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Leicester cũng chi hàng trăm triệu USD để xây sân tập mới tại Seagrave, thuộc quận Charnwood, với ngân sách từ các khoản vay đảm bảo bằng tiền bản quyền truyền hình Ngoại hạng Anh trong tương lai. Khoản thu đó sẽ giảm đáng kể với họ trong thời gian tới do phải chơi ở hạng Nhất, nhưng đội vẫn sẽ phải thanh toán tiền lãi và gốc không đổi.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Leicester từng tuyên bố mục tiêu dự cup châu Âu là kế hoạch hàng năm của họ, nên giới chủ muốn tạo ra một cơ sở vật chất tốt nhất. Kể từ khi vô địch năm 2016, họ còn hai lần đứng trong top 5 và được dự Europa League dưới trướng HLV Rodgers. Mùa trước, họ cũng chỉ cách suất dự cup châu Âu một bậc.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Để đáp ứng chi tiêu của giới chủ, Leicester phải thể hiện được thành tích trên sân. Việc không được dự cup châu Âu khiến tình hình tài chính của đội căng thẳng. Họ phải cắt giảm chi tiêu trước sức ép từ UEFA, bởi quy định mới không cho phép đội chi đến 85% doanh thu như Leicester. UEFA đã đặt Leicester vào diện theo dõi, khiến họ không còn dám vung tiền mua sắm trong hè 2022.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Suốt gần ba tháng chuyển nhượng hè, HLV Rodgers không được bổ sung cầu thủ nào đủ sức cạnh tranh vị trí chính trong đội. Leicester chỉ mua trung vệ Wout Faes vào ngày cuối chuyển nhượng với giá 18 triệu USD, sau khi bán Wesley Fofana cho Chelsea với phí 86 triệu USD.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Sau kỳ chuyển nhượng ảm đạm, HLV Rodgers nói rằng mục tiêu của Leicester mùa 2022-2023 là giành 40 điểm - số điểm đảm bảo giúp họ trụ hạng. Khi đó, nhiều người cho rằng ông quá bi quan. Nhưng màn thể hiện của Leicester dần cho thấy HLV người Bắc Ireland đã đúng.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 680px; float: left;\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 407.875px; text-rendering: optimizelegibility; width: 680px; float: left; display: table; -webkit-box-pack: center; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/29/leicester-everton-jpeg-1685342-6262-2966-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ojdFoWS5qS7BPxmeHx5S8Q 1x, https://i1-thethao.vnecdn.net/2023/05/29/leicester-everton-jpeg-1685342-6262-2966-1685342755.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=C2nK41XBL7HyyMp7xvBfaA 1.5x, https://i1-thethao.vnecdn.net/2023/05/29/leicester-everton-jpeg-1685342-6262-2966-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=0SrVf_bDMFSkLbKbaAtMog 2x\" srcset=\"https://i1-thethao.vnecdn.net/2023/05/29/leicester-everton-jpeg-1685342-6262-2966-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ojdFoWS5qS7BPxmeHx5S8Q 1x, https://i1-thethao.vnecdn.net/2023/05/29/leicester-everton-jpeg-1685342-6262-2966-1685342755.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=C2nK41XBL7HyyMp7xvBfaA 1.5x, https://i1-thethao.vnecdn.net/2023/05/29/leicester-everton-jpeg-1685342-6262-2966-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=0SrVf_bDMFSkLbKbaAtMog 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Leicester (áo xanh) trong trận hòa Everton trên sân King Power ngày 1/5/2023. Ảnh: Reuters\" class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/29/leicester-everton-jpeg-1685342-6262-2966-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ojdFoWS5qS7BPxmeHx5S8Q\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/29/leicester-everton-jpeg-1685342-6262-2966-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ojdFoWS5qS7BPxmeHx5S8Q\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 680px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Leicester (áo xanh) trong trận hòa Everton trên sân King Power ngày 1/5/2023. Ảnh:&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Reuters</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\"><strong style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Leicester sa sút về mọi mặt, trong đó có những vấn đề hậu trường như việc thay đổi văn hóa trong đội</strong>. Sân tập Seagrave ngốn của đội bóng 124 triệu USD chi phí. \"Với một sân tập hoành tráng như thế, các thành viên dễ có cảm giác rằng đội bóng này lớn đến nỗi sẽ không có nguy cơ phải xuống hạng\", báo Anh&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">The</em>&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Athletic</em>&nbsp;nhận xét.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Leicester cũng hiểu rằng sân tập mới ở đẳng cấp hàng đầu&nbsp;<a href=\"https://vnexpress.net/chu-de/ngoai-hang-anh-43\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_GiaiNgoaiHangAnh-4610917&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-NgoaiHangAnh&amp;vn_term=Desktop&amp;vn_thumb=0&amp;vn_test=A\" data-itm-added=\"1\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Ngoại hạng Anh</a>. \"Khu tổ hợp Seagrave hiện đại bậc nhất, là ngọn hải đăng cho những tham vọng trong tương lai của đội bóng, đánh dấu giai đoạn phát triển mới của Leicester\", trang chủ đội bóng viết trong ngày khai trương sân tập năm 2020.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Nhưng khi đội một Leicester chuyển đến Seagrave, họ còn mất nhiều thứ hơn là tiền mặt. Bầu không khí gia đình của đội bóng không còn. Ở sân tập cũ, Leicester có một căng tin cho mọi người ngồi ăn và trò chuyện cùng nhau, không phân biệt cầu thủ, nhân viên hay đầu bếp. Môi trường ấy đã nuôi dưỡng những tình bạn thân thiết và cần thời gian để tái tạo điều này ở Seagrave. Tại chỗ mới, đội một sẽ ăn riêng, và tách biệt với đội trẻ và nhân viên, trong tổ hợp rộng gần 75 hecta.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\"><strong style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Công tác chuyển nhượng cũng là vấn đề của Leicester những năm vừa qua</strong>. Họ không thể bán các cầu thủ dư thừa như trung vệ Jannik Vestergaard, Caglar Soyuncu, tiền vệ Youri Tielemans hay tiền đạo Ayoze Perez. Trong đó, Vestergaard hai lần từ chối yêu cầu ra đi, để ở lại đến hết hợp đồng. Leicester không thể mua cầu thủ mới, nếu không thanh lý được những người cũ.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Leicester bổ nhiệm người đứng đầu chuyển nhượng Martyn Glover quá chậm, khi \"phiên chợ\" hè 2022 đã khép lại. Khi thị trưởng mở cửa trở lại vào tháng 1/2023, Glover không kịp thay đổi tình hình đội bóng, bởi các vụ tuyển mộ hậu vệ Harry Souttar và Victor Kristiansen là không đủ cải thiện đội hình.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Nampalys Mendy, Dennis Praet và Boubakary Soumare cũng nằm trong danh sách bị thanh lý, nhưng cuối cùng họ vẫn ở lại. Soyuncu sa sút phong độ và có thời điểm bị cất dài hạn trên ghế dự bị. HLV Rodgers rồi người kế nhiệm Dean Smith cũng thất vọng khi tiền vệ đang lên Harvey Barnes có dấu hiệu chững lại.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Leicester cũng thiếu đi những thủ lĩnh tinh thần trên sân. Thủ môn đội trưởng Kasper Schmeichel muốn ở lại và đòi một hợp đồng dài hạn, nhưng không được Leicester đáp ứng. Họ để anh ra đi, vừa đôn thủ môn dự bị Danny Ward lên bắt chính. Mùa 2022-2023, Ward có tỷ lệ cứu thua 63%, đứng thứ 19 trong 23 thủ môn thường xuyên ra sân tại giải. Tỷ lệ thủng lưới của anh cũng ở mức 1,77 bàn mỗi trận, đứng thứ 20.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Trung vệ đội phó Jonny Evans vật lộn với chấn thương, khiến hàng thủ đội bóng không còn thủ lĩnh thực thụ. Tiền vệ đội phó Marc Albrighton cũng bị đẩy sang West Brom theo dạng cho mượn, còn tiền đạo kỳ cựu Jamie Vardy sa sút phong độ và thường phải dự bị.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\"><strong style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Leicester dường như cũng thiếu đi nhiệt huyết từ ban huấn luyện, nơi Rodgers dẫn đội trong phần lớn mùa giải</strong>. Sau khi họ chỉ giành một điểm từ bảy trận đầu, ông đã nói rằng: \"Leicester đã không còn là đội bóng như vài năm trước\".</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Leicester đã có thể sa thải Rodgers ngay lúc đó, nhưng họ vẫn trao niềm tin cho ông - người đưa đội bóng tới hai suất dự cup châu Âu liên tiếp. Chỉ đến khi Leicester rơi xuống nhóm cầm đèn đỏ một lần nữa vào đầu tháng 4, giới chủ mới quyết định thay tướng.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 680px; float: left;\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 442.788px; text-rendering: optimizelegibility; width: 680px; float: left; display: table; -webkit-box-pack: center; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/29/rodgers-jpeg-8377-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5Nv2gfZfhFQRobKMpUzuqg 1x, https://i1-thethao.vnecdn.net/2023/05/29/rodgers-jpeg-8377-1685342755.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=a15cFFO2i9m8C46Cj_6UpA 1.5x, https://i1-thethao.vnecdn.net/2023/05/29/rodgers-jpeg-8377-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=6R1YkFpeaBE8q_Ts_cnhOw 2x\" srcset=\"https://i1-thethao.vnecdn.net/2023/05/29/rodgers-jpeg-8377-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5Nv2gfZfhFQRobKMpUzuqg 1x, https://i1-thethao.vnecdn.net/2023/05/29/rodgers-jpeg-8377-1685342755.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=a15cFFO2i9m8C46Cj_6UpA 1.5x, https://i1-thethao.vnecdn.net/2023/05/29/rodgers-jpeg-8377-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=6R1YkFpeaBE8q_Ts_cnhOw 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"HLV Brendan Rodgers trong trận gặp Tottenham ở London ngày 17/9/2022. Ảnh: Reuters\" class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/29/rodgers-jpeg-8377-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5Nv2gfZfhFQRobKMpUzuqg\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/29/rodgers-jpeg-8377-1685342755.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5Nv2gfZfhFQRobKMpUzuqg\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 680px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">HLV Brendan Rodgers trong trận gặp Tottenham ở London ngày 17/9/2022. Ảnh:&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Reuters</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Khi Leicester bổ nhiệm HLV Dean Smith, ông chỉ có tám trận để lật ngược tình thế, và như thế là quá ít. Smith đã hợp tác với cựu trung vệ John Terry để tìm cách cải thiện khả năng phòng ngự cho các hậu vệ. Terry nhiều lần họp và phân tích băng hình tình huống trong phòng thay đồ đội một, nhưng Leicester vẫn thủng lưới liên tiếp. Từ tháng 11 đến tháng 5, họ không giữ sạch lưới trận nào.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Leicester khép lại mùa giải tồi tệ, khi đội U23 cũng xuống hạng ở Premier League 2. Đội nữ của họ cũng suýt nữa phải xuống hạng. Gala cuối mùa cũng bị hủy, vì người hâm mộ không có nhiều điều để đánh giá cao về đội bóng.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Tuy nhiên, gia đình Srivaddhanaprabha không có ý định buông xuôi. Họ vẫn tiếp tục mở rộng khán đài phía Đông của sân King Power để tăng doanh thu từ vé vào sân. Tập đoàn King Power của nhà chủ Thái Lan cũng sẵn sàng cho đội bóng vay tiền bất cứ lúc nào cần thiết.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Điều khoản xuống hạng cũng được cài trong hợp đồng của các cầu thủ, khiến họ bị giảm lương. Ai không chịu có thể ra đi theo ý muốn. Điều này đảm bảo giúp Leicester hạ quỹ lương xuống, khi doanh thu từ hạng nhất chắc chắn sẽ không cao như hồi còn ở Ngoại hạng.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\"><a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/leicester-46\" rel=\"dofollow\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Leicester</a>&nbsp;sẽ tìm cách trở lại Ngoại hạng ngay ở mùa tới, để coi thất bại mùa này là bước lùi tạm thời. Tuy nhiên, áp lực với đội bóng sẽ nhân lên nếu họ không hoàn thành mục tiêu trở lại Ngoại hạng ngay lập tức.</p></article>', 'post_photo_1685345812.jpg', 8, 0, 1, 1, 1, '2023-05-29 00:36:52', '2023-06-01 08:43:37'),
(11, 6, 'Bà Rịa - Vũng Tàu đặt mục tiêu là thành phố trực thuộc Trung ương', '<p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; background-color: rgb(252, 250, 246);\">Đến 2030, Bà Rịa - Vũng Tàu đặt mục tiêu thành thành phố trực thuộc Trung ương với các trụ cột kinh tế gồm công nghiệp, cảng biển và logicstics, du lịch và đô thị, dịch vụ.</p><article class=\"fck_detail \" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 18px; line-height: 28.8px; font-family: arial; margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; position: relative; color: rgb(34, 34, 34); background-color: rgb(252, 250, 246);\"><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Nội dung được nêu trong Nghị quyết quy hoạch tỉnh Bà Rịa - Vũng Tàu giai đoạn 2021-2030, tầm nhìn đến 2050, được HĐND tỉnh thông qua tại kỳ họp chuyên đề, chiều 31/5. Địa phương có diện tích hơn 1.982 km2, với 8 đơn vị hành chính, gồm hai thành phố trực thuộc tỉnh, một thị xã và 5 huyện. Dân số gần 1,2 triệu người (năm 2022).</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Theo nghị quyết, đến năm 2025, tỉnh có 13 đô thị, trong đó Vũng Tàu là đô thị loại I, TP Bà Rịa và thị xã Phú Mỹ là đô thị loại II, một đô thị loại IV là thị trấn Long Hải. Đến 2030, Bà Rịa - Vũng Tàu đủ tiêu chí trở thành đô thị loại I của thành phố trực thuộc Trung ương.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 680px; float: left;\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 453.325px; text-rendering: optimizelegibility; width: 680px; float: left; display: table; -webkit-box-pack: center; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-vnexpress.vnecdn.net/2023/05/31/Thanh-pho-Vung-Tau-4659-1685526485.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zrCmHhZ4FTecb_tpjBU50g 1x, https://i1-vnexpress.vnecdn.net/2023/05/31/Thanh-pho-Vung-Tau-4659-1685526485.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=WWVEsVI14UVsiSWVEk9Qww 1.5x, https://i1-vnexpress.vnecdn.net/2023/05/31/Thanh-pho-Vung-Tau-4659-1685526485.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=TwLW8rLiRKaB1z1SI6cYVw 2x\" srcset=\"https://i1-vnexpress.vnecdn.net/2023/05/31/Thanh-pho-Vung-Tau-4659-1685526485.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zrCmHhZ4FTecb_tpjBU50g 1x, https://i1-vnexpress.vnecdn.net/2023/05/31/Thanh-pho-Vung-Tau-4659-1685526485.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=WWVEsVI14UVsiSWVEk9Qww 1.5x, https://i1-vnexpress.vnecdn.net/2023/05/31/Thanh-pho-Vung-Tau-4659-1685526485.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=TwLW8rLiRKaB1z1SI6cYVw 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Một góc thành phố Vũng Tàu. Ảnh: Trường Hà\" class=\"lazy lazied\" src=\"https://i1-vnexpress.vnecdn.net/2023/05/31/Thanh-pho-Vung-Tau-4659-1685526485.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zrCmHhZ4FTecb_tpjBU50g\" data-src=\"https://i1-vnexpress.vnecdn.net/2023/05/31/Thanh-pho-Vung-Tau-4659-1685526485.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zrCmHhZ4FTecb_tpjBU50g\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 680px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Một góc thành phố Vũng Tàu. Ảnh:&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Trường Hà</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Tương lai, Bà Rịa - Vũng Tàu được xác định là một trong những động lực phát triển quan trọng của vùng Đông Nam Bộ, thuộc nhóm 10 địa phương có tổng sản phẩm trên địa bàn (GRDP), thu ngân sách cao nhất nước và là trung tâm kinh tế biển quốc gia.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Nghị quyết cũng đưa ra mục tiêu cụ thể đến 2030, GRDP tỉnh Bà Rịa - Vũng Tàu tăng 8,1-8,6% một năm; thu nhập bình quân đầu người đến giai đoạn này khoảng 18.000-18.500 USD mỗi năm; phát triển mạnh kinh tế biển (không tính dầu khí) chiếm khoảng 75% GRDP; quy mô dân số hơn 1,4 triệu người. Đến năm 2050, GRDP tăng 6,5-7% một năm; thu nhập bình quân đầu người 55.000-58.000 USD.</p><div id=\"admbackground\" data-set=\"dfp\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"></div><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Thành phố trực thuộc trung ương là đơn vị hành chính tương đương cấp tỉnh, nằm dưới sự quản lý của trung ương. Hiện cả nước có 5 thành phố trực thuộc Trung ương là Hà Nội, TP HCM, Hải Phòng, Đà Nẵng, Cần Thơ.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 680px; float: left;\"><div class=\"action_thumb flexbox\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; display: flex; position: absolute; top: 10px; right: 10px; background: rgb(23, 25, 26); height: 32px; border-radius: 3px; transform-origin: 0px 0px; opacity: 1; transform: scale(1, 1); z-index: 9;\"><a class=\"share_photo\" data-type=\"fb\" data-reference-id=\"0\" style=\"margin: 0px; padding: 0px 10px; text-rendering: optimizelegibility; color: rgb(255, 255, 255); height: 32px; line-height: 30px;\"><svg class=\"ic ic-facebook\"><use xlink:href=\"#Facebook\"></use></svg></a><a class=\"share_photo\" data-type=\"tw\" data-reference-id=\"0\" style=\"margin: 0px; padding: 0px 10px; text-rendering: optimizelegibility; color: rgb(255, 255, 255); height: 32px; line-height: 30px;\"><svg class=\"ic ic-twitte\"><use xlink:href=\"#Twitter\"></use></svg></a><a class=\"vne_zoom\" style=\"margin: 0px; padding: 0px 10px; text-rendering: optimizelegibility; color: rgb(255, 255, 255); height: 32px; line-height: 30px; transform-origin: 0px 0px; opacity: 1; transform: scale(1, 1);\"><svg class=\"ic ic-zoom\"><use xlink:href=\"#Zoom\"></use></svg></a></div><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 449.9px; text-rendering: optimizelegibility; width: 680px; float: left; display: table; -webkit-box-pack: center; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-vnexpress.vnecdn.net/2023/05/31/Tau-container-M-V-OOCL-Spain-7614-1685522389.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ptJm1knidN3IdXeQ5T7npg 1x, https://i1-vnexpress.vnecdn.net/2023/05/31/Tau-container-M-V-OOCL-Spain-7614-1685522389.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=jPtAOaoxBl1SDQkct41kFQ 1.5x, https://i1-vnexpress.vnecdn.net/2023/05/31/Tau-container-M-V-OOCL-Spain-7614-1685522389.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=G7AgyLscHhWx72HG9BqOvA 2x\" srcset=\"https://i1-vnexpress.vnecdn.net/2023/05/31/Tau-container-M-V-OOCL-Spain-7614-1685522389.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ptJm1knidN3IdXeQ5T7npg 1x, https://i1-vnexpress.vnecdn.net/2023/05/31/Tau-container-M-V-OOCL-Spain-7614-1685522389.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=jPtAOaoxBl1SDQkct41kFQ 1.5x, https://i1-vnexpress.vnecdn.net/2023/05/31/Tau-container-M-V-OOCL-Spain-7614-1685522389.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=G7AgyLscHhWx72HG9BqOvA 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Tàu M/V OOCL Spain dài gần 400 m, sức chở hơn 24.000 container 20 feet cập cụm cảng Cái Mép - Thị Vải bốc dỡ hàng hồi tháng 3. Ảnh: Trường Hà\" class=\"lazy lazied\" src=\"https://i1-vnexpress.vnecdn.net/2023/05/31/Tau-container-M-V-OOCL-Spain-7614-1685522389.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ptJm1knidN3IdXeQ5T7npg\" data-src=\"https://i1-vnexpress.vnecdn.net/2023/05/31/Tau-container-M-V-OOCL-Spain-7614-1685522389.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ptJm1knidN3IdXeQ5T7npg\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 680px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Tàu M/V OOCL Spain dài gần 400 m, sức chở hơn 24.000 container 20 feet cập cụm cảng Cái Mép - Thị Vải bốc dỡ hàng hồi tháng 3. Ảnh:&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Trường Hà</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Một đô thị trở thành thành phố trực thuộc trung ương phải đáp ứng 5 tiêu chuẩn được quy định tại nghị quyết 1211 của Ủy ban thường vụ Quốc hội về phân loại đơn vị hành chính, như: quy mô dân số từ 1,5 triệu người trở lên; diện tích tự nhiên từ 1.500 km2 trở lên; cơ cấu và trình độ phát triển kinh tế - xã hội đạt quy định, trong đó mức tăng trưởng kinh tế trung bình 3 năm gần nhất đạt bình quân của cả nước; tỷ trọng công nghiệp, xây dựng và dịch vụ trong cơ cấu kinh tế đạt 90%...</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Thời gian qua, các tỉnh Khánh Hòa, Thừa Thiên - Huế cũng được định hướng trở thành thành phố trực thuộc trung ương trong những năm tới.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Tại kỳ họp hôm nay, HĐND tỉnh Bà Rịa - Vũng Tàu cũng thống nhất thông qua các nghị quyết về chủ trương đầu tư đường nối quốc lộ 55 và quốc lộ 56 vào cao tốc Biên Hòa - Vũng Tàu với tổng mức đầu tư dự kiến gần 12.000 tỷ đồng. Mục tiêu tạo kết nối liền mạch ngay khi tuyến cao tốc này hoàn thành.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Ngoài ra, kỳ họp cũng thông qua các dự án thành phần nằm trong dự án nâng cấp, mở rộng đường 994 với tổng mức đầu tư dự kiến khoảng 2.300 tỷ đồng. Tuyến đường này sau khi mở rộng có bề rộng 42 m và dài gần 100 km nối liền 5 địa phương của tỉnh này trên một trục.</p></article>', 'post_photo_1685550331.jpg', 6, 0, 1, 1, 1, '2023-05-31 09:25:31', '2023-06-02 09:25:40');
INSERT INTO `posts` (`id`, `sub_category_id`, `post_title`, `post_detail`, `post_photo`, `visitors`, `author_id`, `admin_id`, `is_share`, `is_comment`, `created_at`, `updated_at`) VALUES
(12, 8, 'Guardiola chuẩn bị kịch bản đá phạt đền ở chung kết Cup FA', '<h1 class=\"title-detail\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; line-height: 48px; font-size: 32px; font-feature-settings: &quot;pnum&quot;, &quot;lnum&quot;; font-family: Merriweather, serif; color: rgb(34, 34, 34); background-color: rgb(252, 250, 246);\"><br></h1><p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; background-color: rgb(252, 250, 246);\"><span class=\"location-stamp\" style=\"margin: 0px 15px 0px 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 16px; text-transform: uppercase; letter-spacing: -0.5px; position: relative; color: rgb(117, 117, 117) !important;\">ANH</span>Trước khi tranh Cup FA với Man Utd hôm nay, HLV Pep Guardiola nhấn mạnh tâm lý là yếu tố quan trọng nhất nếu phải giải quyết thắng thua trong loạt sút luân lưu.</p><article class=\"fck_detail \" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 18px; line-height: 28.8px; font-family: arial; color: rgb(34, 34, 34); background-color: rgb(252, 250, 246);\"><div class=\"width_common box-widget-thethao\" data-campaign=\"Box-LichDau_KetQua\" style=\"margin: 0px 0px 20px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; background: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 14px; line-height: 19.6px; border: 1px solid rgb(229, 229, 229); position: relative; overflow: hidden; text-size-adjust: none !important;\"><div class=\"header-tt flexbox\" style=\"margin: 0px; padding: 11px 15px; text-rendering: optimizelegibility; display: flex; -webkit-box-align: center; align-items: center; border-bottom: 1px solid rgb(229, 229, 229);\"><span class=\"title-box-tt\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: bold; font-stretch: normal; font-size: 16px; line-height: 25.6px; font-family: Merriweather, serif; text-size-adjust: none !important;\">Lịch đấu - Kết quả Cup FA</span></div><div class=\"width_common list-match-date scrollbar-inner ss-container\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 678.4px; float: left; scroll-behavior: smooth; max-height: 265px; overflow: hidden scroll; height: 67.6px;\"><div class=\"ss-wrapper\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; overflow: hidden; width: 678.4px; height: 67.6px; position: relative; z-index: 1; float: left;\"><div class=\"ss-content\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; height: 67.6px; width: calc(100% + 17px); position: relative; overflow-x: auto; overflow-y: scroll !important;\"><div class=\"width_common row-date-m\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 678.6px; float: left;\"><div class=\"item-date-m width_common\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 678.6px; float: left;\"><span class=\"date-m\" style=\"margin: 0px; padding: 4px 15px; text-rendering: optimizelegibility; background: rgb(247, 247, 247); width: 678.6px; float: left;\">Thứ bảy, ngày 3/6/2023</span><div class=\"item-match flexbox\" style=\"margin: 0px; padding: 4px 20px 4px 15px; text-rendering: optimizelegibility; display: flex; width: 678.6px; float: left; align-items: center; line-height: 22.4px; border-bottom: none; position: relative; -webkit-box-align: center; -webkit-box-pack: justify; justify-content: space-between; border-top: none; cursor: pointer; transition: all 0.3s ease 0s; height: 40px !important; min-height: 40px !important;\"><span class=\"round\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; flex-shrink: 0; color: rgb(171, 171, 171); width: 51.4875px; text-wrap: nowrap;\">Chung kết</span><a data-medium=\"Item-1\" href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/tran-dau/1023277/man-city-man-utd\" class=\"team-kq flexbox\" target=\"_blank\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_CacGiaiKhac-4613030&amp;vn_campaign=Box-LichDau_KetQua&amp;vn_medium=Item-1&amp;vn_term=Desktop&amp;vn_test=A\" data-itm-added=\"1\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; color: rgb(34, 34, 34); display: flex; flex-shrink: 1; width: 495.562px; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;\"><div class=\"team-pl flexbox\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; display: flex; flex-shrink: 1; width: calc((100% - 65px) / 2); -webkit-box-pack: end; justify-content: flex-end;\"><span class=\"name-team\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: calc(100% - 24px); height: 20px; overflow: hidden; text-wrap: nowrap; text-overflow: ellipsis; text-align: right;\">Man City</span><span class=\"flag-team\" style=\"margin: 0px 0px 0px 4px; padding: 0px; text-rendering: optimizelegibility; width: 20px; height: 20px;\"><img src=\"https://is.vnecdn.net/objects/teams/50.png\" alt=\"\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%;\"></span></div><span class=\"res-m\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 65px; text-align: center; font-size: 16px; line-height: 18px; font-weight: bold; flex-shrink: 0; text-size-adjust: none !important;\">21 : 00</span><div class=\"team-pl team-away flexbox\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; display: flex; flex-shrink: 1; width: calc((100% - 65px) / 2); -webkit-box-pack: start; justify-content: flex-start;\"><span class=\"name-team\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: calc(100% - 24px); height: 20px; overflow: hidden; text-wrap: nowrap; text-overflow: ellipsis; -webkit-box-ordinal-group: 3; order: 2;\">Man Utd</span><span class=\"flag-team\" style=\"margin: 0px 4px 0px 0px; padding: 0px; text-rendering: optimizelegibility; width: 20px; height: 20px; -webkit-box-ordinal-group: 2; order: 1;\"><img src=\"https://is.vnecdn.net/objects/teams/33.png\" alt=\"\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%;\"></span></div></a><span class=\"time\" style=\"margin: 0px 10px 0px 0px; padding: 0px; text-rendering: optimizelegibility; color: rgb(189, 189, 189); flex-shrink: 0; width: 51.4875px; text-align: right; text-wrap: nowrap;\"></span></div></div></div></div></div><div class=\"ss-scroll ss-hidden\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; position: relative; background: rgb(229, 229, 229); width: 5px; border-radius: 4px; top: 0px; z-index: 2; cursor: pointer; transition: opacity 0.25s linear 0s; height: 0px; left: 672.963px; opacity: 1 !important; right: auto !important;\"></div></div><div class=\"note-bot flexbox\" style=\"margin: 0px; padding: 6px 15px; text-rendering: optimizelegibility; display: flex; width: 678.4px; float: left; border-top: 1px solid rgb(229, 229, 229);\"><a data-medium=\"Item-XemTatCa\" href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/giai-dau/fa-cup\" class=\"btn-chitiet\" target=\"_blank\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_CacGiaiKhac-4613030&amp;vn_campaign=Box-LichDau_KetQua&amp;vn_medium=Item-XemTatCa&amp;vn_term=Desktop&amp;vn_test=A\" data-itm-added=\"1\" style=\"margin: 0px auto; padding: 0px; text-rendering: optimizelegibility; color: rgb(6, 91, 153); width: 142px; height: 36px; line-height: 36px; background: rgb(240, 249, 254); text-align: center; border-radius: 3px; position: relative; transition-duration: 0.3s;\">Xem tất cả</a></div></div><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">\"Bạn phải chú ý vì nhiều trận chung kết gần đây phải vào hiệp phụ và loạt luân lưu\", Guardiola nói ngày 2/6 tại họp báo trước trận. \"Đó là trải nghiệm mà bạn phải cố gắng kiểm soát. Kỹ năng quan trọng nhất là tâm lý. Bạn chỉ có hai lựa chọn, là ghi bàn hoặc không, và điều đó tạo ra sự khác biệt. Bạn phải quyết định sút sang trái, phải hoặc panenka, nhưng phải vững tâm lý\".</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Guardiola đến Man City từ năm 2016 và đoạt mọi danh hiệu quốc nội, gồm năm Ngoại hạng Anh, một Cup FA, bốn Cup Liên đoàn, hai Siêu Cup Anh. Tuy nhiên, HLV Tây Ban Nha cho rằng màn trình diễn trong quá khứ hay các danh hiệu không giúp định đoạt kết quả của một trận đấu cụ thể.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 680px; float: left;\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 382.325px; text-rendering: optimizelegibility; width: 680px; float: left; display: table; -webkit-box-pack: center; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture data-inimage=\"done\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-thethao.vnecdn.net/2023/06/03/li100103-jpeg-1545-1685726060.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=j8AMo4ozUZrDKOODtWt92Q 1x, https://i1-thethao.vnecdn.net/2023/06/03/li100103-jpeg-1545-1685726060.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=6OfrMrlUQoIj8YFB7y9Rnw 1.5x, https://i1-thethao.vnecdn.net/2023/06/03/li100103-jpeg-1545-1685726060.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=uyJsRI_i_Ya2LaAPiCfcLg 2x\" srcset=\"https://i1-thethao.vnecdn.net/2023/06/03/li100103-jpeg-1545-1685726060.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=j8AMo4ozUZrDKOODtWt92Q 1x, https://i1-thethao.vnecdn.net/2023/06/03/li100103-jpeg-1545-1685726060.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=6OfrMrlUQoIj8YFB7y9Rnw 1.5x, https://i1-thethao.vnecdn.net/2023/06/03/li100103-jpeg-1545-1685726060.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=uyJsRI_i_Ya2LaAPiCfcLg 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Guardiola dặn dò các cầu thủ Man City trên sân tập ngày 1/6. Ảnh: mancity.com\" class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/06/03/li100103-jpeg-1545-1685726060.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=j8AMo4ozUZrDKOODtWt92Q\" data-src=\"https://i1-thethao.vnecdn.net/2023/06/03/li100103-jpeg-1545-1685726060.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=j8AMo4ozUZrDKOODtWt92Q\" data-ll-status=\"loaded\" data-adbro-processed=\"true\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 680px;\"><div class=\"embed-container-ads\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; text-rendering: optimizelegibility; width: 680px; background: transparent; height: 100px; position: absolute; bottom: -1px; margin-bottom: 0px !important; padding-bottom: 0px !important;\"><div id=\"sis_inimage\" data-google-query-id=\"CNKTyrqMpf8CFcHNFgUdpVAEkw\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; position: relative; width: 680px; height: 100px;\"><div id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Thethao/Thethao.bongda.detail_0__container__\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0pt none;\"><iframe id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Thethao/Thethao.bongda.detail_0\" name=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Thethao/Thethao.bongda.detail_0\" title=\"3rd party ad content\" width=\"1\" height=\"1\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" role=\"region\" aria-label=\"Advertisement\" tabindex=\"0\" data-load-complete=\"true\" data-google-container-id=\"4\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 680px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Guardiola dặn dò các cầu thủ Man City trên sân tập ngày 1/6. Ảnh:&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">mancity.com</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">\"Đây là trận bóng đá, trận chung kết và quan trọng là cách bạn thể hiện trong ít nhất 90 phút\",&nbsp;<a href=\"https://vnexpress.net/chu-de/pep-guardiola-357\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_CacGiaiKhac-4613030&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-Guardiola&amp;vn_term=Desktop&amp;vn_thumb=0&amp;vn_test=A\" data-itm-added=\"1\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Guardiola</a>&nbsp;nói tiếp. \"Không quan trọng bạn đã làm gì, mà là việc bạn sẽ thi đấu tốt hoặc tệ như thế nào. Quan trọng là cách bạn thể hiện ở cả tư cách cá nhân lẫn tập thể, cũng như tất cả các chi tiết trong 90, 95 phút sắp tới. Man City phải là phiên bản tốt nhất của chính mình để đánh bại Man Utd\".</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Trong lần đầu đấu trí với Erik ten Hag hồi tháng 10/2022, Guardiola cùng Man City thắng Man Utd 6-3 trên sân Etihad tại Ngoại hạng Anh, trong ngày Erling Haaland và Phil Foden cùng lập hat-trick. Nhưng Guardiola cho rằng Man Utd đã tiến bộ và thi đấu tốt hơn nhiều trong sáu tháng qua, được thể hiện ở trận thắng ngược 2-1 trước chính Man City của ông hồi đầu năm.</p><div class=\"box-wg-dudoantiso aff_predict mb20\" id=\"aff_predict_0\" data-match-id=\"1023277\" style=\"margin-top: 0px; margin-right: auto; margin-left: auto; padding: 16px; text-rendering: optimizelegibility; background: rgb(255, 255, 255); border: 1px solid rgb(229, 229, 229); border-radius: 4px; width: 680px; max-width: 680px; clear: both; line-height: 1.2; margin-bottom: 20px !important;\"><div class=\"title\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 646.4px; text-align: center; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-variation-settings: normal; font-weight: bold; font-stretch: normal; line-height: 28.8px; font-family: Merriweather, serif; font-feature-settings: &quot;pnum&quot;, &quot;lnum&quot;;\"><a class=\"link-tit flexbox\" href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/giai-dau/fa-cup\" title=\"Dự đoán tỷ số\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; color: rgb(34, 34, 34); display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;\">Dự đoán tỷ số FA Cup</a></div><p class=\"counter total_predict\" style=\"margin: 8px 0px 0px; padding: 0px; text-rendering: optimizespeed; line-height: 16px; text-align: center; color: rgb(98, 98, 98); font-size: 16px;\">Đã có 151 lượt dự đoán</p><div class=\"row-team flexbox\" style=\"margin: 32px 0px 0px; padding: 0px; text-rendering: optimizelegibility; display: flex; width: 646.4px; -webkit-box-pack: center; justify-content: center;\"><div class=\"team-column team-home flexbox wrap\" style=\"margin: 0px 16px 0px 0px; padding: 0px; text-rendering: optimizelegibility; width: 96px; position: relative; text-align: center; font-size: 0px; flex-wrap: wrap; -webkit-box-pack: end; justify-content: flex-end;\"><span class=\"flag\" style=\"margin: 0px 0px 8px; padding: 0px; text-rendering: optimizelegibility; width: 64px; height: 64px; display: inline-block; position: relative;\"><img src=\"https://is.vnecdn.net/objects/teams/50.png\" alt=\"Man City\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; line-height: 0; max-width: 100%; max-height: 100%; position: absolute; left: 32px; top: 32px; transform: translate(-50%, -50%);\"></span><div class=\"name\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 16px; line-height: 1.4;\"><span style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 96px; display: inline-block;\">Man City</span></div></div><div class=\"ts-column flexbox\" style=\"margin: -15px 0px 0px; padding: 0px; text-rendering: optimizelegibility; display: flex; width: 180px; flex-shrink: 0; -webkit-box-pack: center; justify-content: center;\"><div class=\"wrap-input flexbox\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; display: flex; position: relative; font-size: 0px; flex-flow: column wrap; -webkit-box-orient: vertical; -webkit-box-direction: normal;\"><span class=\"arrow up\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 48px; text-align: center; display: inline-block; height: 20px; position: relative; cursor: pointer;\"><svg width=\"16\" height=\"9\" viewBox=\"0 0 16 9\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M2.102 8.98012C1.028 8.98012 0.453996 7.71612 1.162 6.90712L6.683 0.597118C6.84725 0.409403 7.04973 0.258969 7.27687 0.155901C7.50401 0.0528327 7.75056 -0.000488281 8 -0.000488281C8.24943 -0.000488281 8.49598 0.0528327 8.72312 0.155901C8.95026 0.258969 9.15274 0.409403 9.317 0.597118L14.839 6.90712C15.546 7.71612 14.972 8.98012 13.899 8.98012H2.101H2.102Z\" fill=\"#757575\"></path></svg></span><input type=\"tel\" class=\"input-txt\" id=\"score_home\" value=\"0\" style=\"padding: 0px; text-rendering: optimizelegibility; background: rgb(255, 255, 255); width: 48px; height: 56px; border-width: 1px; border-style: solid; border-color: rgb(117, 117, 117); font-size: 32px; outline: none; font-family: Montserrat; transition-duration: 200ms; transition-property: all; transition-timing-function: cubic-bezier(0.7, 1, 0.7, 1); border-radius: 4px; text-align: center; font-weight: 600;\"><span class=\"arrow down\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 48px; text-align: center; display: inline-block; height: 20px; position: relative; cursor: pointer;\"><svg width=\"16\" height=\"9\" viewBox=\"0 0 16 9\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M2.102 8.98012C1.028 8.98012 0.453996 7.71612 1.162 6.90712L6.683 0.597118C6.84725 0.409403 7.04973 0.258969 7.27687 0.155901C7.50401 0.0528327 7.75056 -0.000488281 8 -0.000488281C8.24943 -0.000488281 8.49598 0.0528327 8.72312 0.155901C8.95026 0.258969 9.15274 0.409403 9.317 0.597118L14.839 6.90712C15.546 7.71612 14.972 8.98012 13.899 8.98012H2.101H2.102Z\" fill=\"#757575\"></path></svg></span></div><span class=\"line\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 84px; position: relative;\"></span><div class=\"wrap-input flexbox\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; display: flex; position: relative; font-size: 0px; flex-flow: column wrap; -webkit-box-orient: vertical; -webkit-box-direction: normal;\"><span class=\"arrow up\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 48px; text-align: center; display: inline-block; height: 20px; position: relative; cursor: pointer;\"><svg width=\"16\" height=\"9\" viewBox=\"0 0 16 9\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M2.102 8.98012C1.028 8.98012 0.453996 7.71612 1.162 6.90712L6.683 0.597118C6.84725 0.409403 7.04973 0.258969 7.27687 0.155901C7.50401 0.0528327 7.75056 -0.000488281 8 -0.000488281C8.24943 -0.000488281 8.49598 0.0528327 8.72312 0.155901C8.95026 0.258969 9.15274 0.409403 9.317 0.597118L14.839 6.90712C15.546 7.71612 14.972 8.98012 13.899 8.98012H2.101H2.102Z\" fill=\"#757575\"></path></svg></span><input type=\"tel\" class=\"input-txt\" id=\"score_away\" value=\"0\" style=\"padding: 0px; text-rendering: optimizelegibility; background: rgb(255, 255, 255); width: 48px; height: 56px; border-width: 1px; border-style: solid; border-color: rgb(117, 117, 117); font-size: 32px; outline: none; font-family: Montserrat; transition-duration: 200ms; transition-property: all; transition-timing-function: cubic-bezier(0.7, 1, 0.7, 1); border-radius: 4px; text-align: center; font-weight: 600;\"><span class=\"arrow down\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 48px; text-align: center; display: inline-block; height: 20px; position: relative; cursor: pointer;\"><svg width=\"16\" height=\"9\" viewBox=\"0 0 16 9\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M2.102 8.98012C1.028 8.98012 0.453996 7.71612 1.162 6.90712L6.683 0.597118C6.84725 0.409403 7.04973 0.258969 7.27687 0.155901C7.50401 0.0528327 7.75056 -0.000488281 8 -0.000488281C8.24943 -0.000488281 8.49598 0.0528327 8.72312 0.155901C8.95026 0.258969 9.15274 0.409403 9.317 0.597118L14.839 6.90712C15.546 7.71612 14.972 8.98012 13.899 8.98012H2.101H2.102Z\" fill=\"#757575\"></path></svg></span></div></div><div class=\"team-column team-away flexbox wrap\" style=\"margin: 0px 0px 0px 16px; padding: 0px; text-rendering: optimizelegibility; width: 96px; position: relative; text-align: center; font-size: 0px; flex-wrap: wrap;\"><span class=\"flag\" style=\"margin: 0px 0px 8px; padding: 0px; text-rendering: optimizelegibility; width: 64px; height: 64px; display: inline-block; position: relative;\"><img src=\"https://is.vnecdn.net/objects/teams/33.png\" alt=\"Man Utd\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; line-height: 0; max-width: 100%; max-height: 100%; position: absolute; left: 32px; top: 32px; transform: translate(-50%, -50%);\"></span><div class=\"name\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 16px; line-height: 1.4;\"><span style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 96px; display: inline-block;\">Man Utd</span></div></div></div><div class=\"center bold txt_14 mt20 mb10 txt_num_corner\" style=\"margin-top: 20px; margin-right: 0px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 14px; font-weight: bold; text-align: center; margin-bottom: 10px !important;\"></div><div class=\"note-pt mb10\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 14px; line-height: 19.6px; text-align: center; color: rgb(24, 28, 22); margin-bottom: 10px !important;\"><a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/du-doan-ty-so\" title=\"Dự đoán trận khác\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; color: rgb(16, 127, 231); text-decoration-line: underline;\">Dự đoán trận khác</a></div><div class=\"dd-corner border-top mt20\" style=\"margin: 20px 0px 24px; padding: 24px 0px 0px; text-rendering: optimizelegibility; border-top-color: rgb(229, 229, 229); text-align: center;\"><div style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Nhập số dự đoán phạt góc</div><div class=\"input-corner flexbox mt10\" style=\"margin: 10px 0px 0px; padding: 0px; text-rendering: optimizelegibility; display: flex; width: 646.4px; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;\"><input type=\"tel\" id=\"num_corner\" class=\"input-n\" placeholder=\"Nhập số\" style=\"padding: 0px 10px; text-rendering: optimizelegibility; background: rgb(255, 255, 255); width: 106px; height: 40px; border-width: 1px; border-style: solid; border-color: rgb(192, 192, 192); font-size: 16px; outline: none; font-family: arial; transition-duration: 200ms; transition-property: all; transition-timing-function: cubic-bezier(0.7, 1, 0.7, 1); border-radius: 5px;\"><button type=\"submit\" class=\"btn_vne predict_submit disable\" style=\"margin-left: 14px; padding: 0px 24px; text-rendering: optimizelegibility; border-width: initial; border-style: none; border-color: initial; outline: none; transition-duration: 200ms; transition-property: all; transition-timing-function: cubic-bezier(0.7, 1, 0.7, 1); background: rgb(155, 155, 155); border-radius: 4px; height: 40px; font-size: 16px; color: rgb(255, 255, 255); font-weight: 700; line-height: 40px;\">Dự đoán</button></div><div class=\"not-login mt10\" style=\"margin: 10px 0px 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(66, 66, 66);\">Để tham gia dự đoán, bạn cần đăng nhập<br style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">tài khoản MyVnExpress.</div></div><div class=\"notifi error\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"></div><div class=\"border-top note-pt\" style=\"margin: 0px; padding: 24px 0px 0px; text-rendering: optimizelegibility; border-top-color: rgb(229, 229, 229); font-size: 14px; line-height: 19.6px; text-align: center; color: rgb(24, 28, 22);\">Tham gia dự đoán các trận đấu để có Cơ hội trúng giải hàng tháng với phần thưởng hấp dẫn. Xem chi tiết thể lệ&nbsp;<a class=\"open-popup-link\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; color: rgb(16, 127, 231);\">tại đây</a></div></div><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">HLV 52 tuổi ca ngợi&nbsp;<a href=\"https://vnexpress.net/chu-de/casemiro-186\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_CacGiaiKhac-4613030&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-Casemiro&amp;vn_term=Desktop&amp;vn_thumb=0&amp;vn_test=A\" data-itm-added=\"1\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Casemiro</a>&nbsp;là mẫu cầu thủ chuyên nghiệp, đồng thời dành nhiều lời khen cho Ten Hag. Hai người từng làm việc chung ở Bayern, khi Ten Hag phụ trách đội B còn Guardiola huấn luyện đội một.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">\"Đạt được thành tích tốt trong mùa đầu tiên tại Ngoại hạng Anh không dễ dàng, và điều đó cho thấy Ten Hag là HLV đẳng cấp\", Guardiola nói. \"Chúng tôi không phải là bạn, vì không liên lạc nhiều, nhưng tôi nghĩ Man Utd sẽ có một HLV tuyệt vời trong nhiều năm nữa\".</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Khi được hỏi về khả năng&nbsp;<a href=\"https://vnexpress.net/chu-de/erik-ten-hag-4506\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_CacGiaiKhac-4613030&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-TenHag&amp;vn_term=Desktop&amp;vn_thumb=0&amp;vn_test=A\" data-itm-added=\"1\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Ten Hag</a>&nbsp;tạo bất ngờ về mặt chiến thuật trên sân Wembley, HLV trưởng của Man City cảnh giác: \"Tôi không biết. Nếu Ten Hag làm vậy, chúng tôi phải đọc trận đấu tốt tốt nhất có thể trong 5 hoặc 10 phút đầu\".</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Theo Guardiola, Kevin De Bruyne, Ruben Dias, Jack Grealish đã trở lại tập luyện và đạt thể trạng gần như tốt nhất, đồng thời tiết lộ Ortega Moreno sẽ bắt chính. Mùa này, HLV Tây Ban Nha xếp Ederson bắt chính tại Ngoại hạng Anh, Champions League, còn Ortega được trao cơ hội trong suốt hành trình vào chung kết Cup FA. \"Mọi thứ vẫn như vậy, ngay cả khi gặp Barca hay Bayern, Ortega cũng sẽ thi đấu tại Cup FA\", ông nói.</p></article>', 'post_photo_1685726553.jpg', 1, 1, 0, 1, 1, '2023-06-02 10:22:33', '2023-06-02 10:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_ticker_total` text NOT NULL,
  `news_ticker_status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `news_ticker_total`, `news_ticker_status`, `created_at`, `updated_at`) VALUES
(1, '10', 'Show', NULL, '2023-05-28 10:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_advertisements`
--

CREATE TABLE `sidebar_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sidebar_ad` varchar(255) NOT NULL,
  `sidebar_ad_url` varchar(255) DEFAULT NULL,
  `sidebar_ad_location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebar_advertisements`
--

INSERT INTO `sidebar_advertisements` (`id`, `sidebar_ad`, `sidebar_ad_url`, `sidebar_ad_location`, `created_at`, `updated_at`) VALUES
(1, 'sidebar_ad_1684863115.jpg', 'www.facebook.com', 'Top', '2023-05-23 10:12:48', '2023-05-23 10:31:55'),
(3, 'sidebar_ad_1684863755.jpg', NULL, 'Top', '2023-05-23 10:42:35', '2023-05-23 10:42:35'),
(4, 'sidebar_ad_1684863763.jpg', NULL, 'Bottom', '2023-05-23 10:42:43', '2023-05-23 10:42:43'),
(5, 'sidebar_ad_1684863776.jpg', NULL, 'Bottom', '2023-05-23 10:42:56', '2023-05-23 10:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `social_items`
--

CREATE TABLE `social_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_items`
--

INSERT INTO `social_items` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-facebook-f', 'https://www.facebook.com/profile.php?id=100025951390410', '2023-06-02 09:17:04', '2023-06-02 09:17:04'),
(2, 'fab fa-twitter', '#', '2023-06-02 09:17:24', '2023-06-02 09:17:24'),
(3, 'fab fa-pinterest-p', '#', '2023-06-02 09:17:36', '2023-06-02 09:17:36'),
(4, 'fab fa-linkedin-in', '#', '2023-06-02 09:17:46', '2023-06-02 09:17:46'),
(5, 'fab fa-instagram', '#', '2023-06-02 09:17:58', '2023-06-02 09:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text NOT NULL,
  `token` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(3, 'handqkph25002@fpt.edu.vn', '', 'Active', '2023-05-31 08:26:19', '2023-05-31 08:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `show_on_menu` varchar(255) NOT NULL,
  `show_on_home` text NOT NULL DEFAULT 'Show',
  `sub_category_order` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category_name`, `show_on_menu`, `show_on_home`, `sub_category_order`, `category_id`, `created_at`, `updated_at`) VALUES
(6, 'Domestic', 'Show', 'Show', '2', 17, '2023-05-28 11:05:23', '2023-05-29 00:45:43'),
(7, 'Foreign', 'Show', 'Show', '2', 17, '2023-05-28 11:05:52', '2023-05-29 00:45:47'),
(8, 'Fooball', 'Show', 'Show', '1', 15, '2023-05-28 11:08:11', '2023-05-28 11:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `post_id`, `tag_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Game', '2023-05-24 12:09:34', '2023-05-24 12:09:34'),
(2, 2, 'Spost', '2023-05-24 12:09:34', '2023-05-24 12:09:34'),
(9, 4, 'city', '2023-05-27 08:17:06', '2023-05-27 08:17:06'),
(10, 4, 'authentic', '2023-05-27 08:17:06', '2023-05-27 08:17:06'),
(11, 4, 'luxury', '2023-05-27 08:17:06', '2023-05-27 08:17:06'),
(12, 5, 'Nga', '2023-05-28 11:07:37', '2023-05-28 11:07:37'),
(13, 5, 'Mỹ', '2023-05-28 11:07:37', '2023-05-28 11:07:37'),
(14, 5, 'Việt Nam', '2023-05-28 11:07:37', '2023-05-28 11:07:37'),
(15, 6, 'Mu', '2023-05-28 11:09:40', '2023-05-28 11:09:40'),
(16, 6, 'Chelse', '2023-05-28 11:09:40', '2023-05-28 11:09:40'),
(17, 6, 'Juventus', '2023-05-28 11:09:40', '2023-05-28 11:09:40'),
(18, 7, 'Nga', '2023-05-28 11:11:13', '2023-05-28 11:11:13'),
(19, 7, 'Mỹ', '2023-05-28 11:11:13', '2023-05-28 11:11:13'),
(20, 7, 'Việt Nam', '2023-05-28 11:11:13', '2023-05-28 11:11:13'),
(21, 8, 'marathon', '2023-05-29 00:22:02', '2023-05-29 00:22:02'),
(22, 9, 'Mu', '2023-05-29 00:24:58', '2023-05-29 00:24:58'),
(23, 9, 'Chelse', '2023-05-29 00:24:58', '2023-05-29 00:24:58'),
(24, 9, 'Juventus', '2023-05-29 00:24:58', '2023-05-29 00:24:58'),
(25, 10, 'Mu', '2023-05-29 00:36:52', '2023-05-29 00:36:52'),
(26, 10, 'Chelse', '2023-05-29 00:36:52', '2023-05-29 00:36:52'),
(27, 10, 'Juventus', '2023-05-29 00:36:52', '2023-05-29 00:36:52'),
(28, 11, 'Du lịch', '2023-05-31 09:25:31', '2023-05-31 09:25:31'),
(29, 11, 'Vũng Tàu', '2023-05-31 09:25:31', '2023-05-31 09:25:31'),
(30, 12, 'Mu', '2023-06-02 10:22:33', '2023-06-02 10:22:33'),
(31, 12, 'Chelse', '2023-06-02 10:22:33', '2023-06-02 10:22:33'),
(32, 12, 'Juventus', '2023-06-02 10:22:33', '2023-06-02 10:22:33'),
(33, 12, 'marathon', '2023-06-02 10:22:59', '2023-06-02 10:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `top_advertisements`
--

CREATE TABLE `top_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_ad` varchar(255) NOT NULL,
  `top_ad_url` varchar(255) DEFAULT NULL,
  `top_ad_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_advertisements`
--

INSERT INTO `top_advertisements` (`id`, `top_ad`, `top_ad_url`, `top_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'top_ad.png', 'www.facebook.com', 'Show', NULL, '2023-05-23 02:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` text NOT NULL,
  `caption` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_id`, `caption`, `created_at`, `updated_at`) VALUES
(1, 'mDYqT0_9VR4', 'The Call | Season 2022 Cinematic - League of Legends (ft. 2WEI, Louis Leibfried, and Edda Hayes)', '2023-05-30 00:24:00', '2023-05-30 00:28:33'),
(2, 'fEKGQ91isng', 'Phim \"The Flash\" Trailer | Dự Kiến Khởi Chiếu 15.06.2023', '2023-05-30 00:36:30', '2023-05-30 00:36:30'),
(3, 'WWWDskI46Js', 'Transformers: Rise of the Beasts | Official Teaser Trailer (2023 Movie)', '2023-05-30 00:37:03', '2023-05-30 00:38:03'),
(4, 'vzNcSvKCOyA', 'As We Fall | Varus Music Video - League of Legends', '2023-05-30 00:38:45', '2023-05-30 00:38:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_advertisements`
--
ALTER TABLE `home_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_channels`
--
ALTER TABLE `live_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_polls`
--
ALTER TABLE `online_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebar_advertisements`
--
ALTER TABLE `sidebar_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_items`
--
ALTER TABLE `social_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_advertisements`
--
ALTER TABLE `top_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_advertisements`
--
ALTER TABLE `home_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `live_channels`
--
ALTER TABLE `live_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `online_polls`
--
ALTER TABLE `online_polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sidebar_advertisements`
--
ALTER TABLE `sidebar_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_items`
--
ALTER TABLE `social_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `top_advertisements`
--
ALTER TABLE `top_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
