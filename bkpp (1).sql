-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 06:49 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkpp`
--

-- --------------------------------------------------------

--
-- Table structure for table `base_instagrams`
--

CREATE TABLE `base_instagrams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `base_instagrams`
--

INSERT INTO `base_instagrams` (`id`, `name`, `token`, `created_at`, `updated_at`) VALUES
(1, 'pupr_ck_bkpp', 'IGQWROV1IxNEozT2JZAcDhoNGcxQ1JubzlFZAUZAFM0RhbG4tRW1ZAZA0h6UzJtcGYxaS0zbDV6aXBGTThzOTI2eGplN1lON2l1SnhOM3oyamllMzBJX1RRVmcwaDVqN1RSSTRWdVFoSFdCdFUtbmw2bzNsODY1Y1o2dDgZD', NULL, '2024-09-18 11:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `close_the_forum` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_publish` timestamp NULL DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `name`, `subject`, `email`, `close_the_forum`, `publish`, `create_publish`, `comment`, `created_at`, `updated_at`) VALUES
(5, 'Michelle', 'asd', 'akbarginanjar0@gmail.com', 'true', '1', '2024-09-07 07:54:21', 'bandung', '2024-08-08 07:38:30', '2024-09-07 07:54:21'),
(6, 'fawwaz', 'Devin', 'masteradmin@gmail.com', 'false', '0', '2024-09-07 00:41:48', 'helo dek', '2024-08-10 01:04:37', '2024-09-07 07:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `kalender_kegiatans`
--

CREATE TABLE `kalender_kegiatans` (
  `id` int(11) NOT NULL,
  `lkid` bigint(20) UNSIGNED DEFAULT NULL,
  `kkid` bigint(20) UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(225) NOT NULL,
  `data_lkid` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `waktu_kegiatan` varchar(225) NOT NULL,
  `publish` varchar(225) DEFAULT NULL,
  `dokumentasi` varchar(225) DEFAULT NULL,
  `link` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kalender_kegiatans`
--

INSERT INTO `kalender_kegiatans` (`id`, `lkid`, `kkid`, `nama_kegiatan`, `data_lkid`, `deskripsi`, `waktu_kegiatan`, `publish`, `dokumentasi`, `link`, `created_at`, `updated_at`, `status`) VALUES
(10, NULL, 1, 'Kemerdekaan indonesia RI', '[\"1\",\"2\"]', 'Deskripsi adalah penggambaran atau pemaparan secara jelas dan terperinci\r\n\r\n\r\n\r\n\r\n\r\n      dengan kata-kata. Kata deskripsi berasal dari bahasa Inggris describe dan bahasa Latin describere yang berarti melukiskan, menguraikan, atau memaparkan. Deskripsi adalah penggambaran atau pemaparan secara jelas dan terperinci dengan kata-kata. Kata deskripsi berasal dari bahasa Inggris describe dan bahasa Latin describere yang berarti melukiskan, menguraikan, atau memaparkan.', '2024-09-10T19:26', NULL, '8379umkm.png', '[]', '2024-09-10 12:37:42', '2024-09-14 06:12:25', '0'),
(11, NULL, 1, 'Bimtek', '[\"1\"]', 'ini adalah kegiatan bimtek', '2024-09-13T09:23', NULL, '8607Gambar WhatsApp 2024-01-03 pukul 12.01.34_7d090efb.jpg', '[]', '2024-09-13 02:24:00', '2024-09-13 02:41:50', '0'),
(12, NULL, 1, 'fufufafa', '[]', 'ini contoh', '2024-09-13T08:08', NULL, '3638Gambar WhatsApp 2023-12-22 pukul 12.53.31_5b6b0a7f.jpg', 'null', '2024-09-13 02:54:09', '2024-09-13 02:54:09', '0');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_kegiatans`
--

CREATE TABLE `kategori_kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_kegiatans`
--

INSERT INTO `kategori_kegiatans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bimbingan Teknis', '2024-08-31 00:40:26', '2024-08-31 01:17:16'),
(3, 'Advis Teknis', '2024-08-31 00:51:35', '2024-08-31 01:17:30'),
(4, 'Studio Pemodelan dan SIG', '2024-08-31 01:17:55', '2024-08-31 01:17:55'),
(5, 'kesekretariatan habitat', '2024-08-31 01:18:18', '2024-08-31 01:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`id`, `icon`, `link`, `name`, `created_at`, `updated_at`) VALUES
(4, '5782berita.png', 'https://www.barata.id/en/', 'Berita', '2024-08-30 23:59:13', '2024-08-30 23:59:13'),
(5, '2660vidio.PNG', 'https://www.tiktok.com', 'Vidio', '2024-08-31 00:03:44', '2024-08-31 00:03:44'),
(6, '1900ebok.PNG', 'https://bkpp.notive.my.id/s=%3Eebook', 'Ebook', '2024-08-31 00:12:01', '2024-09-04 20:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `link_kegiatans`
--

CREATE TABLE `link_kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `link_kegiatans`
--

INSERT INTO `link_kegiatans` (`id`, `name`, `color`, `url`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Link Video', '#ff0000', 'https://www.youtube.com/watch?v=XQbs_DkeP8w', '88358429youtube.png', '2024-09-10 12:00:31', '2024-09-13 02:22:29'),
(2, 'Tiktok', '#0a0000', 'https://www.tiktok.com/', '4379tik.png', '2024-09-10 12:16:46', '2024-09-12 14:20:42'),
(3, 'Azriel Rabani Sidik', '#d72d2d', 'https://icommits.co.id/', '5917kategori3.jpg', '2024-09-12 13:01:51', '2024-09-12 13:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `media_sosials`
--

CREATE TABLE `media_sosials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_sosials`
--

INSERT INTO `media_sosials` (`id`, `name`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(8, 'Instagram Balai', '6626download.jpg', 'https://www.instagram.com/pupr_ck_bkpp/?hl=en', '2024-09-04 20:12:37', '2024-09-04 20:12:37'),
(9, 'Youtube', '8429youtube.png', 'https://www.youtube.com/@pupr_ck_bkpp3726', '2024-09-12 01:54:29', '2024-09-12 01:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_19_060114_laratrust_setup_tables', 1),
(6, '2022_08_18_160212_create_tb_kategori_artikels_table', 1),
(7, '2022_08_18_162328_create_tb_kategori_kegiatans_table', 1),
(8, '2022_08_18_162332_create_tb_kategori_galeris_table', 1),
(9, '2022_08_18_162403_create_tb_artikels_table', 1),
(10, '2022_08_18_162428_create_tb_kegiatans_table', 1),
(11, '2022_08_18_162500_create_tb_halamans_table', 1),
(12, '2022_08_18_162501_create_tb_kontens_table', 1),
(13, '2022_08_18_162559_create_tb_menus_table', 1),
(14, '2022_08_18_162723_create_tb_submenus_table', 1),
(15, '2022_08_18_162756_create_tb_slides_table', 1),
(16, '2022_08_18_162813_create_tb_wilayahs_table', 1),
(17, '2022_08_18_162830_create_tb_penggunas_table', 1),
(18, '2022_08_26_125331_create_tb_settings_table', 1),
(19, '2022_08_26_135432_create_tb_galeris_table', 1),
(20, '2022_09_01_040929_create_tb_petas_table', 1),
(21, '2022_09_04_053327_create_tb_kelembagaans_table', 1),
(22, '2022_09_04_053402_create_tb_sdms_table', 1),
(23, '2022_09_04_053433_create_tb_relawans_table', 1),
(24, '2022_09_04_053536_create_tb_sarpras_table', 1),
(25, '2022_09_04_082752_create_tb_regulasi_sops_table', 1),
(26, '2022_09_04_084616_create_tb_kejadian_kebakarans_table', 1),
(27, '2022_09_04_084725_create_tb_kejadian_penyelamatans_table', 1),
(28, '2022_09_04_085006_create_tb_kerjasama_daerahs_table', 1),
(29, '2022_09_04_085251_create_tb_spms_table', 1),
(30, '2022_09_04_085402_create_tb_anggarans_table', 1),
(31, '2022_09_09_081534_create_tb_jenis_relawans_table', 1),
(32, '2022_09_09_081651_create_tb_jenis_kendaraans_table', 1),
(33, '2022_09_09_081802_create_tb_jenis_apds_table', 1),
(34, '2022_09_09_082001_create_tb_jenis_regulasis_table', 1),
(35, '2022_09_09_082031_create_tb_jenis_sops_table', 1),
(36, '2022_09_09_082141_create_tb_jenis_terbakars_table', 1),
(37, '2022_09_09_082249_create_tb_jenis_penyelamatans_table', 1),
(38, '2022_09_09_082533_create_tb_kd_jenis_regulasis_table', 1),
(39, '2022_09_09_082558_create_tb_kd_jenis_sops_table', 1),
(40, '2022_09_09_082656_create_tb_tahuns_table', 1),
(41, '2022_09_09_082914_create_tb_tahun_spms_table', 1),
(42, '2022_09_09_083049_create_tb_tahun_anggarans_table', 1),
(43, '2022_09_13_135222_create_tb_contacts_table', 1),
(44, '2022_10_28_031450_create_tb_links_table', 2),
(45, '2024_08_30_110210_create_base_instagrams_table', 3),
(46, '2024_08_31_032907_create_media_sosials_table', 4),
(47, '2024_08_31_042652_create_layanans_table', 5),
(48, '2024_08_31_072134_create_kategori_kegiatans_table', 6),
(49, '2024_09_14_153905_create_module_texts_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `module_texts`
--

CREATE TABLE `module_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_texts`
--

INSERT INTO `module_texts` (`id`, `judul`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Pendidikan Islami DI Bandung', '<p><strong>Lorem ipsum dolor sit amet consectetur adipisicing elit.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Assumenda unde, tempore voluptatum corrupti ex fugit veniam perferendis adipisci aliquam ducimus veritatis, quaerat delectus tempora dolore labore non praesentium, dolorum officia libero. Neque, possimus, sint fugit laboriosam rem odit dolorum officiis vel ullam pariatur eaque ex quasi molestias dolor architecto? Aspernatur atque nesciunt corrupti architecto, nobis cupiditate fugit, deserunt praesentium debitis voluptatum ratione? Officiis atque blanditiis qui modi. Veniam odit iure voluptatum, culpa voluptatem incidunt ab in cupiditate quisquam reiciendis similique velit, consequatur esse necessitatibus praesentium accusantium sequi dolore eligendi temporibus sint explicabo? Quibusdam fugit, magnam saepe modi amet minus possimus.</p>', '2024-09-14 08:59:30', '2024-09-14 08:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2022-10-27 03:11:41', '2022-10-27 03:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(1, 2, 'App\\Models\\User'),
(1, 3, 'App\\Models\\User'),
(1, 4, 'App\\Models\\User'),
(1, 5, 'App\\Models\\User'),
(1, 6, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `sub_forums`
--

CREATE TABLE `sub_forums` (
  `id` int(11) NOT NULL,
  `kepada` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `forum_id` bigint(20) UNSIGNED DEFAULT NULL,
  `create_publish` timestamp NULL DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publish` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_forums`
--

INSERT INTO `sub_forums` (`id`, `kepada`, `name`, `deskripsi`, `forum_id`, `create_publish`, `email`, `created_at`, `updated_at`, `publish`) VALUES
(11, 'fawwaz', 'akbar ginanjar', 'helooo', 6, NULL, 'hehe@gmail.com', '2024-08-10 01:21:05', '2024-08-10 01:21:05', NULL),
(12, 'Michelle', 'ajeng', 'ajeng@gmail.com', 5, '2024-09-07 07:51:57', 'ajeng@gmail.com', '2024-08-10 01:23:41', '2024-09-07 07:51:57', '1'),
(13, 'Michelle', 'janto', 'janto@gmail.com', 5, '2024-09-07 07:52:07', 'janto@gmail.com', '2024-08-10 01:27:10', '2024-09-07 07:52:44', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggarans`
--

CREATE TABLE `tb_anggarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_artikels`
--

CREATE TABLE `tb_artikels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori_artikel` bigint(20) UNSIGNED NOT NULL,
  `id_kategori_konten` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pembuatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu_pembuatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_artikels`
--

INSERT INTO `tb_artikels` (`id`, `id_kategori_artikel`, `id_kategori_konten`, `id_user`, `judul`, `tgl_pembuatan`, `waktu_pembuatan`, `slug`, `teks`, `gambar`, `viewer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(33, 21, 1, 1, 'Pengertian Perumahan Dan Kawasan Permukiman Yang Harus Kamu Ketahui', '2024-07-29', '21:58', 'pengertian-perumahan-dan-kawasan-permukiman-yang-harus-kamu-ketahui', '<p><strong>Berikut Pengertian Perumahan dan Kawasan Permukiman Menurut Undang-Undang Republik Indonesia Nomor 1 Tahun 2011</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Perumahan dan kawasan permukiman</strong>&nbsp;adalah satu kesatuan sistem yang terdiri atas pembinaan, penyelenggaraan perumahan, penyelenggaraan kawasan permukiman, pemeliharaan dan perbaikan, pencegahan dan peningkatan kualitas terhadap perumahan kumuh dan permukiman kumuh, penyediaan tanah, pendanaan dan sistem pembiayaan, serta peran masyarakat.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Perumahan&nbsp;</strong>adalah kumpulan rumah sebagai bagian dari permukiman, baik perkotaan maupun perdesaan, yang dilengkapi dengan prasarana, sarana, dan utilitas umum sebagai hasil upaya pemenuhan rumah yang layak huni.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Kawasan permukiman</strong>&nbsp;adalah bagian dari lingkungan hidup di luar kawasan lindung, baik berupa kawasan perkotaan maupun perdesaan, yang berfungsi sebagai lingkungan tempat tinggal atau lingkungan hunian dan tempat kegiatan yang mendukung perikehidupan dan penghidupan.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Lingkungan hunian</strong>&nbsp;adalah bagian dari kawasan permukiman yang terdiri atas lebih dari satu satuan permukiman.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Permukiman</strong>&nbsp;adalah bagian dari lingkungan hunian yang terdiri atas lebih dari satu satuan perumahan yang mempunyai prasarana, sarana, utilitas umum, serta mempunyai penunjang kegiatan fungsi lain di kawasan perkotaan atau kawasan perdesaan.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Penyelenggaraan perumahan dan kawasan permukiman</strong>&nbsp;adalah kegiatan perencanaan, pembangunan, pemanfaatan, dan pengendalian, termasuk di dalamnya pengembangan kelembagaan, pendanaan dan sistem pembiayaan, serta peran masyarakat yang terkoordinasi dan terpadu.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Rumah</strong>&nbsp;adalah bangunan gedung yang berfungsi sebagai tempat tinggal yang layak huni, sarana pembinaan keluarga, cerminan harkat dan martabat penghuninya, serta aset bagi pemiliknya.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Rumah komersial</strong>&nbsp;adalah rumah yang diselenggarakan dengan tujuan mendapatkan keuntungan.<br />\r\n	&nbsp;</li>\r\n	<li><strong>Rumah swadaya</strong>&nbsp;adalah rumah yang dibangun atas prakarsa dan upaya masyarakat.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Rumah umum</strong>&nbsp;adalah rumah yang diselenggarakan untuk memenuhi kebutuhan rumah bagi masyarakat berpenghasilan rendah.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Rumah khusus</strong>&nbsp;adalah rumah yang diselenggarakan untuk memenuhi kebutuhan khusus.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Rumah Negara</strong>&nbsp;adalah rumah yang dimiliki negara dan berfungsi sebagai tempat tinggal atau hunian dan sarana pembinaan keluarga serta penunjang pelaksanaan tugas pejabat dan/atau pegawai negeri.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Permukiman kumuh</strong>&nbsp;adalah permukiman yang tidak layak huni karena ketidakteraturan bangunan, tingkat kepadatan bangunan yang tinggi, dan kualitas bangunan serta sarana dan prasarana yang tidak memenuhi syarat.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Perumahan kumuh</strong>&nbsp;adalah perumahan yang mengalami penurunan kualitas fungsi sebagai tempat hunian.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Kawasan siap bangun yang selanjutnya disebut Kasiba</strong>&nbsp;adalah sebidang tanah yang fisiknya serta prasarana, sarana, dan utilitas umumnya telah dipersiapkan untuk pembangunan lingkungan hunian skala besar sesuai dengan rencana tata ruang.&nbsp;&nbsp;&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Lingkungan siap bangun yang selanjutnya disebut Lisiba</strong>&nbsp;adalah sebidang tanah yang fisiknya serta prasarana, sarana, dan utilitas umumnya telah dipersiapkan untuk pembangunan perumahan dengan batas-batas kaveling yang jelas dan merupakan bagian dari kawasan siap bangun sesuai dengan rencana rinci tata ruang.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Kaveling tanah matang</strong>&nbsp;adalah sebidang tanah yang telah dipersiapkan untuk rumah sesuai dengan persyaratan dalam penggunaan, penguasaan, pemilikan tanah, rencana rinci tata ruang, serta rencana tata bangunan dan lingkungan.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Konsolidasi tanah</strong>&nbsp;adalah penataan kembali penguasaan, pemilikan, penggunaan, dan pemanfaatan tanah sesuai dengan rencana tata ruang wilayah dalam usaha penyediaan tanah untuk kepentingan pembangunan perumahan dan permukiman guna meningkatkan kualitas lingkungan dan pemeliharaan sumber daya alam dengan partisipasi aktif masyarakat.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Pendanaan</strong>&nbsp;adalah penyediaan sumber daya keuangan yang berasal dari anggaran pendapatan dan belanja negara, anggaran pendapatan dan belanja daerah, dan/atau sumber dana lain yang dibelanjakan untuk penyelenggaraan perumahan dan kawasan permukiman sesuai dengan ketentuan peraturan perundang-undangan.&nbsp;&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Pembiayaan</strong>&nbsp;adalah setiap penerimaan yang perlu dibayar kembali dan/atau setiap pengeluaran yang akan diterima kembali untuk kepentingan penyelenggaraan perumahan dan kawasan permukiman baik yang berasal dari dana masyarakat, tabungan perumahan, maupun sumber dana lainnya.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Prasarana</strong>&nbsp;adalah kelengkapan dasar fisik lingkungan hunian yang memenuhi standar tertentu untuk kebutuhan bertempat tinggal yang layak, sehat, aman, dan nyaman.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Sarana</strong>&nbsp; adalah&nbsp; fasilitas dalam lingkungan hunian yang berfungsi untuk mendukung penyelenggaraan dan pengembangan kehidupan sosial, budaya, dan ekonomi.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Utilitas</strong>&nbsp;umum adalah kelengkapan penunjang untuk pelayanan lingkungan hunian.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Masyarakat Berpenghasilan Rendah yang selanjutnya disingkat MBR</strong>&nbsp;adalah masyarakat yang mempunyai keterbatasan daya beli sehingga perlu mendapat dukungan pemerintah untuk memperoleh rumah.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Setiap orang</strong>&nbsp;adalah orang perseorangan atau badan hukum.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Badan hukum</strong>&nbsp;adalah badan hukum yang didirikan oleh warga negara Indonesia yang kegiatannya di bidang penyelenggaraan perumahan dan kawasan permukiman.&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Pemerintah pusat yang selanjutnya disebut Pemerintah</strong>&nbsp;adalah Presiden Republik Indonesia yang memegang kekuasaan pemerintahan Negara Republik Indonesia sebagaimana dimaksud dalam Undang-Undang Dasar Negara Republik Indonesia Tahun 1945.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Pemerintah daerah</strong>&nbsp;adalah gubernur, bupati/walikota, dan perangkat daerah sebagai unsur penyelenggara pemerintahan daerah.&nbsp; 29. Menteri adalah menteri yang menyelenggarakan urusan pemerintahan di bidang perumahan dan kawasan permukiman.&nbsp;</li>\r\n</ul>', '96421-5-1024x493.png', '38', '2024-07-11 07:59:29', '2024-08-14 05:23:44', NULL),
(36, 21, 1, 1, 'Statistik Perumahan dan Permukiman 2022', '2024-07-29', '20:29', 'statistik-perumahan-dan-permukiman-2022', '<p>Publikasi Statistik Perumahan dan Permukiman 2022 menyajikan indikator dan statistik terkait perumahan dan permukiman yang dihasilkan dari Survei Sosial Ekonomi Nasional (Susenas) Modul Kesehatan dan Perumahan (MKP) 2022. Melalui Susenas MKP 2022, dikumpulkan berbagai data tentang perumahan dan permukiman yang lebih spesifik untuk melengkapi data yang telah dikumpulkan pada Susenas Maret 2022. Berbagai informasi yang disajikan dalam publikasi Statistik Perumahan dan Permukiman 2022 diharapkan mampu memenuhi kebutuhan data baik untuk keperluan perencanaan maupun evaluasi pembangunan perumahan serta untuk berbagai penelitian yang berkaitan dengan perumahan dan permukiman di Indonesia.</p>', '2622cover.png', '37', '2024-07-12 06:29:56', '2024-08-06 06:29:59', NULL),
(37, 21, 1, 1, 'Pengertian Permukiman', '2024-07-15', '15:02', 'pengertian-permukiman', '<p>Menurut Undang-Undang No 4 Tahun 1992 Pasal 3, Permukiman adalah bagian dari lingkungan hidup di&nbsp;luar kawasan lindung, baik yang berupa kawasan perkotaan maupun pedesaan yang berfungsi sebagai lingkungan tempat tinggal atau lingkungan hunian dan tempat kegiatan yang mendukung perikehidupan dan penghidupan. Satuan lingkungan permukiman adalah kawasan perumahan dalam berbagai bentuk dan ukuran dengan penataan tanah dan ruang, prasarana dan sarana lingkungan yang terstruktur.&nbsp;&nbsp;Sedangkan dalam Pasal 4 menyebutkan bahwa penataan perumahan dan permukiman bertujuan untuk&nbsp;:</p>\r\n\r\n<p>a.&nbsp;&nbsp;&nbsp;&nbsp;Memenuhi kebutuhan rumah sebagai salah satu kebutuhan dasar manusia, dalam rangka peningkatan dan pemerataan kesejahteraan rakyat;</p>\r\n\r\n<p>b.&nbsp;&nbsp;&nbsp;&nbsp;Mewujudkan perumahan dan permukiman yang layak dalam lingkungan yang sehat, aman, serasi, dan teratur;</p>\r\n\r\n<p>c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Memberi arah pada pertumbuhan wilayah dan persebaran penduduk yang rasional;</p>\r\n\r\n<p>d.&nbsp;&nbsp;&nbsp;&nbsp;Menunjang pembangunan di bidang ekonomi, sosial , budaya, dan bidang-bidang lain.</p>', '277238783437572.jpg', '19', '2024-07-15 01:13:25', '2024-08-15 05:47:15', NULL),
(38, 21, 1, 1, 'Rumah, Perumahan, dan Permukiman', '2024-07-16', '13:06', 'rumah-perumahan-dan-permukiman', '<p>Menurut UU No. 4 Tahun 1992 tentang Perumahan dan Permukiman, rumah adalah bangunan yang berfungsi sebagai tempat tinggal atau hunian dan sarana pembinaan keluarga.&nbsp;Menurut John F.C Turner, 1972, dalam bukunya&nbsp;<em>Freedom To Build</em>&nbsp;mengatakan, &ldquo;Rumah adalah bagian yang utuh dari permukiman, dan bukan hasil fisik sekali jadi semata, melainkan merupakan suatu&nbsp;proses&nbsp;yang terus berkembang dan terkait dengan mobilitas sosial ekonomi penghuninya dalam suatu kurun waktu. Menurut Siswono Yudohusodo (Rumah Untuk Seluruh Rakyat, 1991: 432), rumah adalah bangunan yang berfungsi sebagai tempat tinggal atau hunian dan sarana pembinaan keluarga. Jadi, selain berfungsi sebagai tempat tinggal atau hunian yang digunakan untuk berlindung dari gangguan iklim dan makhluk hidup lainnya, rumah merupakan tempat awal pengembangan kehidupan.</p>', '3964housing-3-6658afe634777c21773f60a4.jpg', '51', '2024-07-15 23:13:13', '2024-09-13 02:27:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_comments`
--

CREATE TABLE `tb_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_artikel` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `publish` tinyint(4) NOT NULL,
  `teks` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_comments`
--

INSERT INTO `tb_comments` (`id`, `id_artikel`, `name`, `email`, `publish`, `teks`, `reply`, `created_at`, `updated_at`) VALUES
(1, 12, 'Rezha', 'rezharanmark@gmail.com', 0, 'Sangat memotivasi!!!', NULL, '2024-06-21 07:29:31', '2024-06-21 07:29:31'),
(2, 15, 'Rezha', 'rezharanmark@gmail.com', 1, 'saya sangat terinspirasi dari artikel ini, hatur nuhun kang sobari', 'semangat!!!', '2024-06-28 04:58:01', '2024-06-28 04:58:47'),
(4, 18, 'Akbar Ginanjar', 'akbarginanjar0@gmail.com', 0, 'Semangat!!', NULL, '2024-06-29 04:55:40', '2024-06-29 04:55:40'),
(5, 18, 'Kidam Kusnandi', 'kidam@gmail.com', 0, 'Semangat!!', NULL, '2024-06-29 05:01:05', '2024-06-29 05:01:05'),
(6, 20, 'Rezha Ranmark', 'rezharanmark@gmail.com', 0, 'Luar biasa kang, semakin ditempa akan semakin kuat mentalnya', NULL, '2024-06-29 18:12:52', '2024-06-29 18:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ebook`
--

CREATE TABLE `tb_ebook` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori_ebook` bigint(20) UNSIGNED NOT NULL,
  `id_kategori_konten_ebook` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_pembuatan` varchar(100) DEFAULT NULL,
  `waktu_pembuatan` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `teks` text DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `viewer` bigint(20) DEFAULT 0,
  `file` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ebook`
--

INSERT INTO `tb_ebook` (`id`, `id_kategori_ebook`, `id_kategori_konten_ebook`, `id_user`, `judul`, `tgl_pembuatan`, `waktu_pembuatan`, `slug`, `teks`, `gambar`, `viewer`, `file`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 21, 1, 1, 'Modul Standar Kelengkapan Gambar Perancangan Arsitektur', '2024-09-04', '12:00', 'modul-standar-kelengkapan-gambar-perancangan-arsitektur', NULL, NULL, 3, '8851RW06.pdf', NULL, '2024-09-03 21:55:45', '2024-09-04 21:42:20', NULL),
(15, 22, 1, 1, 'inilah', '2024-09-13', '08:08', 'inilah', '<p>contoh</p>', '6686Screenshot 2024-09-12 103516.png', 1, '6482Screenshot 2024-09-12 103516.png', NULL, '2024-09-13 01:26:16', '2024-09-13 01:26:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_faqs`
--

CREATE TABLE `tb_faqs` (
  `id` bigint(20) NOT NULL,
  `pertanyaan` varchar(200) DEFAULT NULL,
  `jawaban` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_faqs`
--

INSERT INTO `tb_faqs` (`id`, `pertanyaan`, `jawaban`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ada berapa banyak tabelnya', '<p>ada 5 tabelnya</p>', '2023-04-14 22:46:51', '2023-04-16 15:39:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeris`
--

CREATE TABLE `tb_galeris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori_galeri` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_galeris`
--

INSERT INTO `tb_galeris` (`id`, `id_kategori_galeri`, `gambar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, '5614icommits-academy.png', '2022-10-26 17:00:00', '2024-06-05 06:14:46', '2024-06-05 13:14:46'),
(2, 1, '5199alam (gunung puntang ).jpg', '2022-10-26 17:00:00', '2022-10-30 05:01:25', '2022-10-30 12:01:25'),
(3, 1, '4060alam (kawah putih)2.jpg', '2022-10-26 17:00:00', '2022-10-30 05:01:29', '2022-10-30 12:01:29'),
(4, 1, '1372alam (kawah rengganis).webp', '2022-10-26 17:00:00', '2022-10-30 05:01:46', '2022-10-30 12:01:46'),
(5, 3, '9157Allianz_eng.jpg', '2023-01-17 17:00:00', '2024-06-05 06:14:42', '2024-06-05 13:14:42'),
(6, 3, '4969barca.jpg', '2023-01-17 17:00:00', '2024-06-05 06:14:39', '2024-06-05 13:14:39'),
(7, 3, '3476barca2.jpeg', '2023-01-17 17:00:00', '2024-06-05 06:14:35', '2024-06-05 13:14:35'),
(8, 3, '7926mobil bmw.jpg', '2024-07-19 17:00:00', '2024-07-28 16:59:34', '2024-07-28 23:59:34'),
(9, 3, '4935mobil bmw.jpg', '2024-07-21 17:00:00', '2024-07-28 16:59:32', '2024-07-28 23:59:32'),
(10, 2, '8143mobil bmw.jpg', '2024-07-21 17:00:00', '2024-07-28 16:59:29', '2024-07-28 23:59:29'),
(11, 4, '2366mobil bmw.jpg', '2024-07-21 17:00:00', '2024-07-28 16:59:26', '2024-07-28 23:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_halamans`
--

CREATE TABLE `tb_halamans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atas_kiri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atas_tengah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atas_kanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tengah_kiri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tengah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tengah_kanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bawah_kiri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bawah_tengah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bawah_kanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_halamans`
--

INSERT INTO `tb_halamans` (`id`, `judul`, `slug`, `atas_kiri`, `atas_tengah`, `atas_kanan`, `tengah_kiri`, `tengah`, `tengah_kanan`, `bawah_kiri`, `bawah_tengah`, `bawah_kanan`, `teks`, `gambar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 'Galeri', 'galeri', 'Tidak', 'Galeri', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-20 00:22:00', '2024-07-20 01:26:35', '2024-07-20 08:26:35'),
(23, 'Visi Misi', 'visi-misi', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<h2><strong>Visi</strong></h2>\r\n\r\n<p>Terwujudnya layanan Balai Kawasan Permukiman dan Perumahan yang <em>SOLID</em></p>\r\n\r\n<h2><strong>Misi</strong></h2>\r\n\r\n<ol>\r\n	<li><em>Melaksanakan sistem pengelolaan pelayanan yang profesional melalui pengembangan inovasi dalam pelaksanaan &nbsp;kegiatan</em></li>\r\n	<li><em>Tersedianya informasi layanan yang transparan, mudah diakses dan dapat &nbsp;diandalkan</em></li>\r\n	<li><em>Tersedianya Sumber Daya Manusia dan&nbsp;Peralatan yang handal dan termutakhirkan dalam pelaksanaan layanan</em><br />\r\n	<br />\r\n	<br />\r\n	<em>​​​​​​​​​​​​​​​​​​​​​</em></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', NULL, '2024-07-28 16:44:26', '2024-09-03 19:49:15', NULL),
(24, 'Tugas Pokok dan Fungsi', 'tugas-pokok-dan-fungsi', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<p>Balai Kawasan Permukiman dan Perumahan mempunyai tugas dan fungsi sebagaimana tercantum dalam Permen PUPR Nomor 16 Tahun 2020tentang Organisasi dan Tata Kerja Unit Pelaksana Teknis di Kementerian Pekerjaan Umum dan Perumahan Rakyat, yaitu:</p>\r\n\r\n<hr />\r\n<h3><strong>Tugas Balai Kawasan Permukiman dan Perumahan</strong></h3>\r\n\r\n<p>Balai Kawasan Permukiman dan Perumahan mempunyai tugas melaksanakan pelayanan pengujian,inspeksi dan sertifikasi serta pengkajian teknologi kawasan permukiman dan perumahan.</p>\r\n\r\n<hr />\r\n<h3><strong>Fungsi Balai Kawasan Permukiman dan Perumahan</strong></h3>\r\n\r\n<p>Dalam melaksanakan tugas sebagaimana dimaksud dalam pasal 155, Balai Kawasan Permukiman dan Perumahan menyelenggarakan fungsi:</p>\r\n\r\n<ol>\r\n	<li>Penyusunan rencana, program, dan anggaran;</li>\r\n	<li>Pelaksanaan pengujian keandalan kawasan permukiman dan perumahan;</li>\r\n	<li>Pelayanan studio kawasan permukiman dan perumahan;&nbsp;</li>\r\n	<li>Pengelolaan sistem manajemen mutu;&nbsp;</li>\r\n	<li>Pelaksanaan inspeksi dan sertifikasi bahan dan produk konstruksi teknologi kawasan permukiman dan perumahan;&nbsp;</li>\r\n	<li>Pelaksanaan bimbingan teknis dan diseminasi bidang kawasan permukiman dan perumahan;&nbsp;</li>\r\n	<li>Pelaksanaan audit teknologi serta penilaian penataan kawasan pascakonstruksi dan pascabencana kawasan permukiman dan perumahan;&nbsp;</li>\r\n	<li>Pelaksanaan perekayasaan kawasan permukiman dan perumahan;&nbsp;</li>\r\n	<li>Pelaksanaan kliring teknologi kawasan permukiman dan perumahan; dan&nbsp;</li>\r\n	<li>Pelaksanaan urusan tata usaha dan rumah tangga balai.</li>\r\n</ol>', NULL, '2024-07-28 16:45:19', '2024-09-12 07:09:28', NULL),
(25, 'Struktur Organisasi', 'struktur-organisasi', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<p>Pejabat Struktural</p>\r\n\r\n<hr />\r\n<p><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/Screenshot 2024-09-12 094524_1726109145.png\" style=\"height:503px; width:900px\" /></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>', NULL, '2024-07-28 16:45:33', '2024-09-12 02:47:11', NULL),
(26, 'Sejarah', 'sejarah', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<hr />\r\n<p>Balai Kawasan Permukiman dan Perumahan memiliki sejarah panjang yang dimulai sejak tahun 1953, ketika pertama kali didirikan dengan nama Lembaga Penyelidikan Masalah Bangunan (LPMB). Sejak awal berdirinya, lembaga ini telah mengalami beberapa kali reorganisasi yang bertujuan untuk menyesuaikan diri dengan perkembangan dan kebutuhan sektor perumahan dan permukiman di Indonesia.&nbsp;</p>\r\n\r\n<p>Berikut adalah transformasi kelembagaan yang terjadi:</p>\r\n\r\n<hr />\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:1200px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li><strong>1953 - 1975:</strong></li>\r\n			</ul>\r\n			</td>\r\n			<td>Lembaga ini dikenal sebagai <strong>Lembaga Penyelidikan Masalah Bangunan (LPMB)</strong>, yang berfokus pada penelitian terkait masalah bangunan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li><strong>1976 - 1984</strong>:</li>\r\n			</ul>\r\n			</td>\r\n			<td>Nama lembaga berubah menjadi <strong>Direktorat Penyelidikan Masalah Bangunan (DPMB)</strong>, mencerminkan peningkatan peran dan cakupan tugasnya.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li><strong>1985 - 2020</strong>:</li>\r\n			</ul>\r\n			</td>\r\n			<td>Lembagai ini berkembang menjadi&nbsp;<strong>Pusat Penelitian dan Pengembangan Perumahan dan Permukiman (PUSKIM)</strong>, dengan fokus yang lebih luas pada penelitian dan pengembangan di sektor perumahan dan permukiman.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li><strong>2020 - Sekarang:</strong></li>\r\n			</ul>\r\n			</td>\r\n			<td>Nama lembaga berubah menjadi <strong>Balai Kawasan Permukiman dan Perumahan</strong>, seiring dengan penyesuaian nomenklatur, tugas, dan fungsi yang diatur dalam Peraturan Menteri PUPR Nomor 16 Tahun 2020 tentang Struktur Organisasi dan Tata Kerja Unit Pelaksana Teknis Kementerian PUPR.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<p>Perubahan pada tahun 2020 ini mencerminkan penguatan peran Balai dalam mendukung pembangunan perumahan dan permukiman yang lebih efektif, sesuai dengan kebutuhan masyarakat dan perkembangan kebijakan di sektor ini.</p>\r\n\r\n<p>Balai Kawasan Permukiman dan Perumahan merupakan salah satu unit kerja baru di lingkungan Direktorat Jenderal Cipta Karya dibentuk pada tahun 2020 melalui Peraturan Menteri PUPR Nomor 16 Tahun 2020 tentang Struktur Organisasi dan Tata Kerja Unit Pelaksana Teknis Kementerian PUPR. Pada tahun 2021, Balai Kawasan Permukiman dan Perumahan merupakan Satuan Kerja mandiri.</p>\r\n\r\n<p>Pada tanggal 31 Maret 2021, Balai Kawasan Permukiman dan Perumahan menegaskan komitmennya dalam meningkatkan tata kelola pemerintahan yang bersih dan bebas dari korupsi melalui pencanangan <em>Zona Integritas</em>. Langkah ini merupakan bagian dari upaya untuk menciptakan lingkungan kerja yang transparan, akuntabel, dan profesional, sesuai dengan arahan Kementerian Pekerjaan Umum dan Perumahan Rakyat (PUPR).</p>\r\n\r\n<hr />\r\n<p><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/Screenshot 2024-09-12 141624_1726125413.png\" style=\"height:564px; width:1000px\" /></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>', NULL, '2024-07-28 16:45:46', '2024-09-12 07:46:56', NULL),
(27, 'Maklumat Layanan', 'maklumat-layanan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<hr />\r\n<p><strong><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/7bc2ed06-84a1-49e9-a860-fc1bd88994e7_1725501051.jpg\" style=\"height:636px; width:900px\" /></strong></p>\r\n\r\n<hr />\r\n<p>Sebagaimana yang ditetapkan di Bandung, 5 Mei 2023 dan disahkan oleh Kepala Balai Kawasan Permukiman dan Perumahan, <strong>Budianto Prasetio, S.T., M.J.D.S., M.Eng.:</strong></p>\r\n\r\n<p>&quot;Kami seluruh jajaran Balai Kawasan Permukiman dan Perumahan berkomitmen menyelenggarakan pelayanan Studio Pemodelan dan SIG, Advis Teknis, Bimbingan Teknis, dan KKN Tematik Infrastruktur bidang kawasan permukiman dan perumahan sesuai standar demi meningkatkan kepuasan penerima manfaat dan memperbaiki kinerja sesuai saran/masukan penerima manfaat serta bersedia menerima sanksi apabila pelayanan tidak sesuai dengan standar pelayanan kami.<strong>&quot;</strong></p>\r\n\r\n<p>&nbsp;</p>', NULL, '2024-07-28 16:47:40', '2024-09-12 07:52:22', NULL),
(28, 'Visi Misi Pelayanan', 'visi-misi-pelayanan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<hr />\r\n<p><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/Screenshot 2024-09-12 145751_1726127892.png\" style=\"height:278px; width:800px\" /></p>\r\n\r\n<hr />\r\n<h2><strong>Visi</strong></h2>\r\n\r\n<p>Visi pelayanan publik Balai Kawasan Permukiman dan Perumahan yaitu:&nbsp;</p>\r\n\r\n<p>&quot;Terwujudnya layanan Balai Kawasan Permukiman dan Perumahan yang <strong>S</strong>igap Bekerja.&nbsp;<strong>O</strong>rientasi Manfaat,&nbsp;<strong>L</strong>ayanan Prima,&nbsp;<strong>I</strong>ntergritas,&nbsp;<strong>D</strong>apat diandalkan (SOLID) &quot;</p>\r\n\r\n<p><strong><em><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/BKPP SOLID-01_1726128247.png\" style=\"height:30px; width:200px\" /></em></strong></p>\r\n\r\n<hr />\r\n<h2><strong>Misi</strong></h2>\r\n\r\n<p>Adapun misi pelayanan publik Balai Kawasan Permukiman dan Perumahan adalah:</p>\r\n\r\n<ol>\r\n	<li>Melaksanakan sistem pengelolaan pelayanan yang profesional melalui pengembangan inovasi dalam pelaksanaan &nbsp;kegiatan</li>\r\n	<li>Tersedianya informasi layanan yang transparan, mudah diakses dan dapat &nbsp;diandalkan</li>\r\n	<li>Tersedianya Sumber Daya Manusia dan&nbsp;Peralatan yang handal dan termutakhirkan dalam pelaksanaan layanan</li>\r\n</ol>', NULL, '2024-07-28 16:47:54', '2024-09-12 08:07:09', NULL),
(29, 'Jenis Pelayanan', 'jenis-pelayanan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<hr />\r\n<p>Pelayanan yang diberikan oleh Balai Kawasan Permukiman dan Perumahan kepada pelanggan secara publik adalah sebagai berikut:</p>\r\n\r\n<p><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/Informasi Layanan untuk Pintu_1726128887.jpg\" style=\"height:930px; width:700px\" /></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>', NULL, '2024-07-28 16:48:08', '2024-09-12 08:20:31', NULL),
(30, 'Mekanisme dan Prosedur', 'mekanisme-dan-prosedur', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Kontak', 'Tidak', 'Tidak', '<hr />\r\n<table align=\"center\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:1400px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/SOP FIX-01_1726129544.jpg\" style=\"height:816px; width:600px\" /></td>\r\n			<td><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/SOP FIX-02_1726129592.jpg\" style=\"height:816px; width:600px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/SOP FIX-03_1726130019.jpg\" style=\"height:816px; width:600px\" /></td>\r\n			<td><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/SOP FIX-04_1726130056.jpg\" style=\"height:816px; width:600px\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<p>&nbsp;</p>', NULL, '2024-07-28 16:48:19', '2024-09-12 08:35:05', NULL),
(31, 'Indeks Kepuasan', 'indeks-kepuasan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<hr />\r\n<h3><strong>TAHUN 2024 :&nbsp;</strong></h3>\r\n\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:600px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Triwulan I</td>\r\n			<td>Triwulan II</td>\r\n			<td>Triwulan III</td>\r\n			<td>Triwulan IV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<h3><strong>TAHUN 2023 :&nbsp;</strong></h3>\r\n\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:600px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Triwulan I</td>\r\n			<td>Triwulan II</td>\r\n			<td>Triwulan III</td>\r\n			<td>Triwulan IV</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/Screenshot 2024-09-12 154136_1726130548.png\" style=\"height:263px; width:300px\" /></td>\r\n			<td><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/Screenshot 2024-09-12 154358_1726130654.png\" style=\"height:265px; width:300px\" /></td>\r\n			<td><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/Screenshot 2024-09-12 154157_1726130600.png\" style=\"height:266px; width:300px\" /></td>\r\n			<td><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/Screenshot 2024-09-12 154204_1726130675.png\" style=\"height:264px; width:300px\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, '2024-07-28 16:48:37', '2024-09-12 08:46:49', NULL),
(32, 'Bimbingan Teknis', 'bimbingan-teknis', 'Tidak', '1,konten', 'Kalender Widget', 'Tidak', 'Kalender', 'Tidak', 'Tidak', '1,konten', 'Tidak', '<h2><strong>INFORMASI UMUM</strong></h2>\r\n\r\n<p>Bimbingan Teknik (Bimtek) bidang permukiman dan perumahan di Balai Kawasan Permukiman dan Perumahan adalah kegiatan yang bertujuan untuk meningkatkan kapasitas dan kompetensi para tenaga teknis serta pihak terkait dalam pengelolaan kawasan permukiman dan perumahan. Kegiatan ini meliputi pelatihan, workshop, dan diskusi yang membahas berbagai aspek, mulai dari perencanaan tata ruang, pembangunan infrastruktur dasar, hingga pengelolaan lingkungan yang berkelanjutan. Melalui Bimtek ini, diharapkan peserta dapat menerapkan pengetahuan yang diperoleh untuk meningkatkan kualitas permukiman dan perumahan di wilayah tugas mereka, sehingga tercipta lingkungan yang layak huni dan berkelanjutan bagi masyarakat.</p>\r\n\r\n<hr />\r\n<h2><strong>LINGKUP BIMBINGAN TEKNIK BIDANG PERUMAHAN</strong></h2>\r\n\r\n<p>Secara praktis lingkup bimbingan teknik yang dilaksanakan melalui kegiatan seperti:</p>\r\n\r\n<ul>\r\n	<li>Standar Kelengkapan Gambar Arsitektur</li>\r\n	<li>Pelestarian Kota Tematik Pusaka</li>\r\n	<li>Penerapan Aspek Kemudahan Bangunan GEdung melalui Desain Universal</li>\r\n	<li>Standar Kelengkapan Gambar REncana dan Detail Arsitektur</li>\r\n	<li>Kebijakan dan Strategi Penyelenggaraan Bangunan Gedung Hijau</li>\r\n	<li>Pentingnya Penyediaan Lanskap dalam mencapai iklim mikro kawasan permukiman</li>\r\n</ul>\r\n\r\n<p>Sasaran Bimbingan Teknik BIdang Permukiman dan Perumahan secara khusus adalah pegawai / pelaksana di bidang pekerjaan umum baik instansi pusat (internal PUPR) maupun pemda. sedangkan sasaran secara umum adalah masyarakat luas, stakeholder, hingga mahasiswa dalam bidang pekerjaan umum dan disiplin ilmu yang terkait.</p>\r\n\r\n<p><img alt=\"\" src=\"https://bkpp.notive.my.id/images/artikel/DJI_0002_1725504870.JPG\" style=\"float:left; height:225px; width:300px\" /></p>', NULL, '2024-07-28 16:50:31', '2024-09-04 21:39:52', NULL),
(33, 'Advis Teknis', 'advis-teknis', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<h2>&nbsp;</h2>\r\n\r\n<h3><strong>INFORMASI UMUM</strong></h3>\r\n\r\n<p>Pendampingan Teknis dalam pemeriksaan dokumen perencanaan, pemeriksaan bangunan gedung pasca konstruksi, serta bencana alam dalam lingkup kawasan permukiman dan perumahan merupakan langkah penting untuk memastikan bahwa setiap proyek pembangunan berjalan sesuai dengan standar yang telah ditetapkan. Proses ini melibatkan peninjauan menyeluruh terhadap dokumen-dokumen perencanaan yang menjadi dasar pelaksanaan konstruksi, serta evaluasi kondisi bangunan pasca penyelesaian proyek dan setelah terjadinya bencana alam. Dengan adanya pendampingan teknis ini, diharapkan seluruh bangunan di kawasan permukiman dan perumahan dapat terjamin keamanannya, baik dari segi struktur maupun kelayakan huni, serta mampu mengurangi risiko kerusakan yang mungkin terjadi akibat bencana alam di masa mendatang.</p>\r\n\r\n<hr />\r\n<h3><strong>TUJUAN</strong></h3>\r\n\r\n<ol>\r\n	<li>Memberikan masukan terkait kesesuaian teknis dokumen perencanaan dan pelaksanaan konstruksi&nbsp; dengan NSPK terbaru</li>\r\n	<li>Memberikan masukan teknis terkait rancangan disain bangunan dan kawasan</li>\r\n	<li>Memberikan masukan teknis untuk peningkatan kualitas disain bangunan dan kawasan.</li>\r\n	<li>Memberikan rekomendasi teknis bangunan dan kawasan tahap konstruksi dan bencana alam</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>LINGKUP PEMERIKSAAN</strong></h3>\r\n\r\n<ol>\r\n	<li>Aspek Arsitektural Bangunan Gedung dan Non Gedung</li>\r\n	<li>Sarana dan Prasarana dalam Bangunan dan Kawasan</li>\r\n	<li>Aspek Pembiayaan dan Kelembagaan dalam pengelolaan Bangunan dan Kawasan</li>\r\n</ol>', '9345ea.jpg', '2024-07-28 16:50:45', '2024-09-03 20:26:36', NULL),
(34, 'studio pemodelan dan SIG', 'studio-pemodelan-dan-sig', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:50:57', '2024-07-28 16:50:57', NULL),
(35, 'Kesekretariatan Habitat', 'kesekretariatan-habitat', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:51:06', '2024-07-28 16:51:06', NULL),
(36, 'Kegiatan Kami', 'kegiatan-kami', 'Tidak', '1,konten', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:52:34', '2024-09-04 19:49:05', NULL),
(37, 'Foto', 'foto', 'Tidak', 'Galeri', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:53:28', '2024-07-28 16:53:28', NULL),
(38, 'Video', 'video', 'Tidak', 'Video', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:53:49', '2024-07-28 16:53:49', NULL),
(39, 'Ebook', 'ebook', 'Tidak', 'Ebook', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:54:03', '2024-07-28 16:54:03', NULL),
(40, 'Peraturan', 'peraturan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:54:13', '2024-07-28 16:54:13', NULL),
(41, 'Pelaporan SP4n Lapor', 'pelaporan-sp4n-lapor', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:55:36', '2024-07-28 16:55:36', NULL),
(42, 'Ruang Diskusi', 'ruang-diskusi', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:55:52', '2024-07-28 16:55:52', NULL),
(43, 'Kontak Kita', 'kontak-kita', 'Tidak', 'Kontak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-07-28 16:56:54', '2024-07-28 16:56:54', NULL),
(44, 'Profil Pejabat', 'profil-pejabat', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-09-12 02:25:45', '2024-09-12 02:25:45', NULL),
(47, 'halaman testing', 'halaman-testing', '1,text', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '<p>halaman testing text</p>', NULL, '2024-09-14 10:07:47', '2024-09-14 10:14:47', '2024-09-14 17:14:47'),
(49, 'ju', 'ju', '1,text', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', NULL, NULL, '2024-09-14 10:49:11', '2024-09-14 10:49:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_apds`
--

CREATE TABLE `tb_jenis_apds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_sarpras` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_kendaraans`
--

CREATE TABLE `tb_jenis_kendaraans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_sarpras` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_penyelamatans`
--

CREATE TABLE `tb_jenis_penyelamatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kejadian_penyelamatan` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_regulasis`
--

CREATE TABLE `tb_jenis_regulasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_regulasi` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_relawans`
--

CREATE TABLE `tb_jenis_relawans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_relawan` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_sops`
--

CREATE TABLE `tb_jenis_sops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_regulasi` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_terbakars`
--

CREATE TABLE `tb_jenis_terbakars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kejadian_kebakaran` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `penyebab` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asumsi_kerugian` int(11) DEFAULT NULL,
  `asumsi_pemadaman` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_karirs`
--

CREATE TABLE `tb_karirs` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_karirs`
--

INSERT INTO `tb_karirs` (`id`, `judul`, `isi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Judul Karir', '<p>Isi&nbsp;<em>Teks&nbsp;<strong>Karir</strong></em></p>', '2023-04-14 21:45:47', '2023-04-14 17:03:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_artikels`
--

CREATE TABLE `tb_kategori_artikels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kategori_artikels`
--

INSERT INTO `tb_kategori_artikels` (`id`, `cover`, `nama`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '35161000608204.jpg', 'Mamahku', 'mamahku', '2024-06-18 08:05:19', '2024-07-29 00:10:57', '2024-07-29 07:10:57'),
(7, NULL, 'Manajemen', 'manajemen', '2024-06-19 10:22:47', '2024-07-29 00:10:53', '2024-07-29 07:10:53'),
(8, NULL, 'Keuangan', 'keuangan', '2024-06-19 10:22:54', '2024-07-29 00:11:02', '2024-07-29 07:11:02'),
(9, NULL, 'Parentingku', 'parentingku', '2024-06-19 10:23:18', '2024-07-29 00:11:06', '2024-07-29 07:11:06'),
(10, NULL, 'Nasehat', 'nasehat', '2024-06-19 10:24:08', '2024-07-29 00:11:09', '2024-07-29 07:11:09'),
(12, NULL, 'Dosen-Teladan', 'dosen-teladan', '2024-06-19 10:25:06', '2024-07-29 00:11:12', '2024-07-29 07:11:12'),
(13, NULL, 'MotivasiDiri', 'motivasidiri', '2024-06-19 10:26:31', '2024-07-29 00:11:15', '2024-07-29 07:11:15'),
(14, NULL, 'Candaku', 'candaku', '2024-06-19 10:27:48', '2024-07-29 00:11:18', '2024-07-29 07:11:18'),
(15, NULL, 'Quoteku', 'quoteku', '2024-06-19 10:30:22', '2024-07-29 00:11:22', '2024-07-29 07:11:22'),
(16, NULL, 'Bisnis&Digital', 'bisnisdigital', '2024-06-19 10:31:00', '2024-07-29 00:11:25', '2024-07-29 07:11:25'),
(17, NULL, 'Hypnotheraphy', 'hypnotheraphy', '2024-06-20 09:18:03', '2024-07-29 00:11:30', '2024-07-29 07:11:30'),
(18, NULL, 'e-Learning', 'e-learning', '2024-06-21 09:02:21', '2024-07-29 00:11:39', '2024-07-29 07:11:39'),
(19, NULL, 'Olahraga', 'olahraga', '2024-06-26 04:00:49', '2024-07-29 00:11:35', '2024-07-29 07:11:35'),
(20, NULL, 'Karya Ilmiah', 'karya-ilmiah', '2024-07-04 05:53:59', '2024-07-04 05:55:31', '2024-07-04 12:55:31'),
(21, '6278housing-3-6658afe634777c21773f60a4.jpg', 'Permukiman', 'permukiman', '2024-07-28 17:03:25', '2024-07-28 17:03:25', NULL),
(22, NULL, 'Edukasi', 'edukasi', '2024-08-01 19:28:28', '2024-08-01 19:28:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_ebook`
--

CREATE TABLE `tb_kategori_ebook` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori_ebook`
--

INSERT INTO `tb_kategori_ebook` (`id`, `nama`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'Birokrasi', 'birokrasi', '2024-07-08 04:47:14', '2024-07-08 04:47:14', NULL),
(10, 'Aswaja', 'aswaja', '2024-07-10 01:56:48', '2024-07-10 01:56:48', NULL),
(11, 'Balance Scorecard', 'balance-scorecard', '2024-07-10 02:19:23', '2024-07-10 02:19:23', NULL),
(12, 'Supervisi Mutu Pendidikan', 'supervisi-mutu-pendidikan', '2024-07-10 02:32:03', '2024-07-10 02:32:03', NULL),
(13, 'Kepemimpinan Organisasi', 'kepemimpinan-organisasi', '2024-07-10 02:54:34', '2024-07-10 02:54:34', NULL),
(14, 'Tantangan dan Peluang Manajemen Pendidikan', 'tantangan-dan-peluang-manajemen-pendidikan', '2024-07-10 02:57:57', '2024-07-10 02:57:57', NULL),
(15, 'Balance Scorecard Jurnal Sinta 5', 'balance-scorecard-jurnal-sinta-5', '2024-07-15 20:53:31', '2024-07-15 20:53:31', NULL),
(16, 'Sinta 4 Conflict Management in Education', 'sinta-4-conflict-management-in-education', '2024-07-15 21:04:29', '2024-07-15 21:04:29', NULL),
(17, 'Scopus Q4 e-Learning Management', 'scopus-q4-e-learning-management', '2024-07-15 21:09:13', '2024-07-15 21:09:13', NULL),
(18, 'Scopus Q4 Teaching Factory', 'scopus-q4-teaching-factory', '2024-07-15 21:13:50', '2024-07-15 21:13:50', NULL),
(19, 'Scopus Q4 Teaching Factory', 'scopus-q4-teaching-factory', '2024-07-15 21:13:51', '2024-07-15 21:13:51', NULL),
(20, 'Scopus Q4-Equal Education Management', 'scopus-q4-equal-education-management', '2024-07-15 21:16:27', '2024-07-15 21:16:27', NULL),
(21, 'Arsitektur', 'arsitektur', '2024-09-04 19:59:41', '2024-09-04 19:59:41', NULL),
(22, 'Kebijaksanaan', 'kebijaksanaan', '2024-09-13 01:24:36', '2024-09-13 01:24:36', NULL),
(23, 'Perumahan', 'perumahan', '2024-09-13 02:43:37', '2024-09-13 02:43:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_galeris`
--

CREATE TABLE `tb_kategori_galeris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kategori_galeris`
--

INSERT INTO `tb_kategori_galeris` (`id`, `nama`, `slug`, `cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aku', 'aku', '2940alam (curug ciangin).webp', '2022-10-27 03:16:41', '2022-10-30 05:05:12', '2022-10-30 12:05:12'),
(2, 'Belajar Bahasa Korea', 'belajar-bahasa-korea', '4865bts.jpg', '2022-10-30 04:59:16', '2024-07-28 16:59:39', '2024-07-28 23:59:39'),
(3, 'Bisnis', 'bisnis', '2013paket1.jpg', '2022-10-30 06:38:00', '2022-10-30 06:38:00', NULL),
(4, 'UTBK', 'utbk', '8525paket2.jfif', '2022-10-30 06:38:49', '2024-07-28 16:59:41', '2024-07-28 23:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_kegiatans`
--

CREATE TABLE `tb_kategori_kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_konten`
--

CREATE TABLE `tb_kategori_konten` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori_konten`
--

INSERT INTO `tb_kategori_konten` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Artikel', '2024-06-22 09:41:19', '2024-06-22 09:41:19', NULL),
(2, 'Event', '2024-06-22 09:41:19', '2024-06-22 09:41:19', NULL),
(3, 'Berita', '2024-07-20 08:34:13', '2024-07-20 08:34:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_konten_ebook`
--

CREATE TABLE `tb_kategori_konten_ebook` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori_konten_ebook`
--

INSERT INTO `tb_kategori_konten_ebook` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ebook', '2024-07-19 08:57:00', '2024-07-19 08:57:44', NULL),
(2, 'Karya Ilmiah', '2024-07-19 08:57:44', '2024-07-19 08:57:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kd_jenis_regulasis`
--

CREATE TABLE `tb_kd_jenis_regulasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kerjasama_daerah` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kd_jenis_sops`
--

CREATE TABLE `tb_kd_jenis_sops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kerjasama_daerah` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kegiatans`
--

CREATE TABLE `tb_kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori_kegiatan` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kejadian_kebakarans`
--

CREATE TABLE `tb_kejadian_kebakarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `jml_kejadian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asumsi_rugi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asumsi_selamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kejadian_penyelamatans`
--

CREATE TABLE `tb_kejadian_penyelamatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `total_selamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelembagaans`
--

CREATE TABLE `tb_kelembagaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `dinas_mandiri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satpol_pp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpbd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipologi_kelembagaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kerjasama_daerahs`
--

CREATE TABLE `tb_kerjasama_daerahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_keuntungans`
--

CREATE TABLE `tb_keuntungans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teks1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teks2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teks3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teks4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teks5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teks6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_keuntungans`
--

INSERT INTO `tb_keuntungans` (`id`, `gambar`, `teks1`, `teks2`, `teks3`, `teks4`, `teks5`, `teks6`, `created_at`, `updated_at`) VALUES
(1, '2852Advantages-amico.png', '-', '-', '-', '-', '-', '-', NULL, '2024-07-30 18:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kontens`
--

CREATE TABLE `tb_kontens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_artikel` bigint(20) UNSIGNED DEFAULT NULL,
  `id_kategori_ebook` bigint(20) UNSIGNED DEFAULT NULL,
  `id_kategori_artikel` bigint(20) UNSIGNED DEFAULT NULL,
  `id_kegiatan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_halaman` bigint(20) UNSIGNED DEFAULT NULL,
  `id_link` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kontens`
--

INSERT INTO `tb_kontens` (`id`, `id_artikel`, `id_kategori_ebook`, `id_kategori_artikel`, `id_kegiatan`, `id_halaman`, `id_link`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(94, NULL, NULL, NULL, NULL, 22, NULL, 'halaman', '2024-07-20 00:22:00', '2024-07-20 01:26:35', '2024-07-20 08:26:35'),
(95, NULL, NULL, NULL, NULL, 23, NULL, 'halaman', '2024-07-28 16:44:26', '2024-07-28 16:44:26', NULL),
(96, NULL, NULL, NULL, NULL, 24, NULL, 'halaman', '2024-07-28 16:45:19', '2024-07-28 16:45:19', NULL),
(97, NULL, NULL, NULL, NULL, 25, NULL, 'halaman', '2024-07-28 16:45:33', '2024-07-28 16:45:33', NULL),
(98, NULL, NULL, NULL, NULL, 26, NULL, 'halaman', '2024-07-28 16:45:46', '2024-07-28 16:45:46', NULL),
(99, NULL, NULL, NULL, NULL, 27, NULL, 'halaman', '2024-07-28 16:47:40', '2024-07-28 16:47:40', NULL),
(100, NULL, NULL, NULL, NULL, 28, NULL, 'halaman', '2024-07-28 16:47:54', '2024-07-28 16:47:54', NULL),
(101, NULL, NULL, NULL, NULL, 29, NULL, 'halaman', '2024-07-28 16:48:08', '2024-07-28 16:48:08', NULL),
(102, NULL, NULL, NULL, NULL, 30, NULL, 'halaman', '2024-07-28 16:48:19', '2024-07-28 16:48:19', NULL),
(103, NULL, NULL, NULL, NULL, 31, NULL, 'halaman', '2024-07-28 16:48:37', '2024-07-28 16:48:37', NULL),
(104, NULL, NULL, NULL, NULL, 32, NULL, 'halaman', '2024-07-28 16:50:31', '2024-07-28 16:50:31', NULL),
(105, NULL, NULL, NULL, NULL, 33, NULL, 'halaman', '2024-07-28 16:50:45', '2024-07-28 16:50:45', NULL),
(106, NULL, NULL, NULL, NULL, 34, NULL, 'halaman', '2024-07-28 16:50:57', '2024-07-28 16:50:57', NULL),
(107, NULL, NULL, NULL, NULL, 35, NULL, 'halaman', '2024-07-28 16:51:06', '2024-07-28 16:51:06', NULL),
(108, NULL, NULL, NULL, NULL, 36, NULL, 'halaman', '2024-07-28 16:52:34', '2024-07-28 16:52:34', NULL),
(109, NULL, NULL, NULL, NULL, 37, NULL, 'halaman', '2024-07-28 16:53:28', '2024-07-28 16:53:28', NULL),
(110, NULL, NULL, NULL, NULL, 38, NULL, 'halaman', '2024-07-28 16:53:49', '2024-07-28 16:53:49', NULL),
(111, NULL, NULL, NULL, NULL, 39, NULL, 'halaman', '2024-07-28 16:54:03', '2024-07-28 16:54:03', NULL),
(112, NULL, NULL, NULL, NULL, 40, NULL, 'halaman', '2024-07-28 16:54:13', '2024-07-28 16:54:13', NULL),
(113, NULL, NULL, NULL, NULL, 41, NULL, 'halaman', '2024-07-28 16:55:36', '2024-07-28 16:55:36', NULL),
(114, NULL, NULL, NULL, NULL, 42, NULL, 'halaman', '2024-07-28 16:55:52', '2024-07-28 16:55:52', NULL),
(115, NULL, NULL, NULL, NULL, 43, NULL, 'halaman', '2024-07-28 16:56:54', '2024-07-28 16:56:54', NULL),
(116, NULL, NULL, 21, NULL, NULL, NULL, 'kategori-artikel', '2024-07-28 17:03:25', '2024-07-28 17:03:25', NULL),
(117, NULL, NULL, NULL, NULL, NULL, NULL, 'artikel', '2024-07-28 18:45:11', '2024-07-28 18:45:11', NULL),
(118, NULL, NULL, NULL, NULL, NULL, NULL, 'artikel', '2024-07-28 18:47:30', '2024-07-28 18:47:30', NULL),
(119, NULL, NULL, 22, NULL, NULL, NULL, 'kategori-artikel', '2024-08-01 19:28:28', '2024-08-01 19:28:28', NULL),
(120, NULL, NULL, NULL, NULL, NULL, 5, 'link', '2024-09-03 20:02:15', '2024-09-03 20:02:15', NULL),
(121, NULL, NULL, NULL, NULL, NULL, 6, 'link', '2024-09-03 20:03:51', '2024-09-03 20:03:51', NULL),
(122, NULL, 21, NULL, NULL, NULL, NULL, 'kategori-ebook', '2024-09-04 19:59:41', '2024-09-04 19:59:41', NULL),
(123, NULL, NULL, NULL, NULL, 44, NULL, 'halaman', '2024-09-12 02:25:45', '2024-09-12 02:25:45', NULL),
(124, NULL, NULL, NULL, NULL, NULL, 7, 'link', '2024-09-12 08:50:06', '2024-09-12 08:50:06', NULL),
(125, NULL, NULL, NULL, NULL, NULL, 8, 'link', '2024-09-12 08:50:44', '2024-09-12 08:50:44', NULL),
(126, NULL, NULL, NULL, NULL, NULL, 9, 'link', '2024-09-12 08:56:06', '2024-09-12 08:56:06', NULL),
(127, NULL, 22, NULL, NULL, NULL, NULL, 'kategori-ebook', '2024-09-13 01:24:36', '2024-09-13 01:24:36', NULL),
(128, NULL, 23, NULL, NULL, NULL, NULL, 'kategori-ebook', '2024-09-13 02:43:37', '2024-09-13 02:43:37', NULL),
(129, NULL, NULL, NULL, NULL, 45, NULL, 'halaman', '2024-09-14 09:15:53', '2024-09-14 10:07:20', '2024-09-14 17:07:20'),
(130, NULL, NULL, NULL, NULL, 46, NULL, 'halaman', '2024-09-14 09:35:26', '2024-09-14 10:07:27', '2024-09-14 17:07:27'),
(131, NULL, NULL, NULL, NULL, 47, NULL, 'halaman', '2024-09-14 10:07:47', '2024-09-14 10:14:47', '2024-09-14 17:14:47'),
(132, NULL, NULL, NULL, NULL, 48, NULL, 'halaman', '2024-09-14 10:15:41', '2024-09-14 10:15:41', NULL),
(133, NULL, NULL, NULL, NULL, 49, NULL, 'halaman', '2024-09-14 10:49:11', '2024-09-14 10:49:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lelangs`
--

CREATE TABLE `tb_lelangs` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `harga` varchar(225) NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `alamat` text DEFAULT NULL,
  `gambar` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lelangs`
--

INSERT INTO `tb_lelangs` (`id`, `nama`, `harga`, `deskripsi`, `alamat`, `gambar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Rumah Modern', '100.000.000', '<p>Rumah Ini Akan Di Jual Dalam Ke Adaan Bagus</p>', 'bandung jalan moch toha sayuran', '22381.webp', '2023-04-27 10:38:32', '2023-04-27 03:38:32', NULL),
(6, 'Rumah Modern Terbaru', '150.000.000', '<p>Rumah siap Pakai</p>', 'bandung', '71232.jpeg', '2023-04-27 10:41:26', '2023-04-27 03:41:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_links`
--

CREATE TABLE `tb_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_links`
--

INSERT INTO `tb_links` (`id`, `nama`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Link Facebook', 'https://facebook.com', '2022-10-28 07:20:45', '2022-10-28 07:20:45', NULL),
(2, 'Link Blog', 'https://template.digma.id/FlexStart/blog.html', '2022-10-30 06:34:16', '2024-06-05 06:14:13', '2024-06-05 13:14:13'),
(3, 'Link Facebook Saya', 'https://facebook/Kidam', '2022-11-10 01:10:21', '2024-06-05 06:14:09', '2024-06-05 13:14:09'),
(4, 'Kuis Perkalian', 'https://master--jocular-caramel-20440f.netlify.app/', '2023-04-07 21:13:30', '2024-06-05 06:14:03', '2024-06-05 13:14:03'),
(5, 'SP4N Lapor', 'https://www.lapor.go.id/', '2024-09-03 20:02:15', '2024-09-03 20:02:15', NULL),
(6, 'Website Habitat', 'https://habitatidn.id/', '2024-09-03 20:03:51', '2024-09-03 20:03:51', NULL),
(7, 'Pelaporan Gratifikasi KPK', 'gol.kpk.go.id', '2024-09-12 08:50:06', '2024-09-12 08:50:06', NULL),
(8, 'Whistle Blowing System PUPR', 'https://wispu.pu.go.id/', '2024-09-12 08:50:44', '2024-09-12 08:50:44', NULL),
(9, 'Kontak Resmi Balai Kawasan Permukiman dan Perumahan', 'https://wa.me/6285215861676', '2024-09-12 08:56:06', '2024-09-12 08:56:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menus`
--

CREATE TABLE `tb_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_konten` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `id_konten`, `nama`, `slug`, `urutan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, 94, 'Galeri', 'galeri', 1, '2024-07-20 00:22:12', '2024-07-20 01:26:39', '2024-07-20 08:26:39'),
(27, 0, 'Profil BKPP', 'profil-bkpp', 2, '2024-07-28 16:43:42', '2024-09-14 07:27:31', NULL),
(28, 0, 'Standar Pelayanan', 'standar-pelayanan', 3, '2024-07-28 16:47:14', '2024-09-14 07:27:31', NULL),
(29, 0, 'Layanan BKPP', 'layanan-bkpp', 10, '2024-07-28 16:50:11', '2024-09-14 10:07:59', NULL),
(30, 108, 'Kegiatan Kami', 'kegiatan-kami', 5, '2024-07-28 16:52:44', '2024-09-12 08:48:03', '2024-09-12 15:48:03'),
(31, 0, 'Informasi Publik', 'informasi-publik', 4, '2024-07-28 16:52:59', '2024-09-14 07:49:07', NULL),
(32, 0, 'Kanal Pelaporan', 'kanal-pelaporan', 7, '2024-07-28 16:55:18', '2024-09-14 07:49:07', NULL),
(33, 115, 'Kontak', 'kontak', 9, '2024-07-28 16:57:03', '2024-09-18 12:08:56', '2024-09-18 19:08:56'),
(34, 0, 'Cek', 'cek', 8, '2024-09-13 01:16:30', '2024-09-18 12:09:06', '2024-09-18 19:09:06'),
(35, 0, 'text', 'text', 8, '2024-09-14 09:16:15', '2024-09-14 10:07:07', '2024-09-14 17:07:07'),
(36, 0, 'menu testing', 'menu-testing', 8, '2024-09-14 10:08:21', '2024-09-14 10:17:52', '2024-09-14 17:17:52'),
(37, 132, 'testing', 'testing', 8, '2024-09-14 10:18:07', '2024-09-14 10:48:47', '2024-09-14 17:48:47'),
(38, 133, 'cek', 'cek', 8, '2024-09-14 10:49:46', '2024-09-14 10:49:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penggunas`
--

CREATE TABLE `tb_penggunas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_penggunas`
--

INSERT INTO `tb_penggunas` (`id`, `id_user`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_telepon`, `isActive`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, NULL, '-', '-', '-', 1, '2022-11-15 02:38:12', '2024-07-01 00:40:15', NULL),
(2, 3, NULL, '-', '-', '-', 1, '2022-11-16 00:03:50', '2023-02-10 00:21:22', NULL),
(3, 4, NULL, '-', '-', '-', 1, '2023-04-07 21:19:37', '2023-04-07 21:19:37', NULL),
(4, 5, NULL, '-', '-', '-', 1, '2024-06-15 03:23:19', '2024-06-15 03:23:19', NULL),
(5, 6, NULL, '-', '-', '-', 1, '2024-06-28 05:07:43', '2024-06-28 05:07:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyans`
--

CREATE TABLE `tb_pertanyans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pertanyans`
--

INSERT INTO `tb_pertanyans` (`id`, `pertanyaan`, `jawaban`, `created_at`, `updated_at`) VALUES
(1, 'Apa itu \"Belajar.link\"?', 'Platform pembelajaran online yang di peruntukan untuk umum dengan ketersediaan pembelajaran pembelajaran yang menjurus kepada keahlian diri.', NULL, '2022-11-24 23:32:09'),
(2, 'Metode Pembayaran dapat dilakukan via apa saja?', 'Anda dapat membayar melalui alfamart, indomaret, dan e-wallet.', NULL, '2022-11-16 23:29:18'),
(3, 'Siapa saja yang dapat menggunakan \"belajar.link\"?', 'Platform pembelajaran yang tidak di batasi oleh jenjang ini bisa di akses oleh siapa saja dengan profesi apapun.', NULL, '2022-11-24 23:22:32'),
(4, 'Bagaimana cara mendaftarnya?', 'Bisa langsung di klik aja ya \"Berlangganan Sekarang\", kemudian klik \"daftar disini\", setelah mengisi data lalu kamu bisa langsung login dan dapat mengakses paket yang tersedia.', NULL, '2022-11-24 23:32:57'),
(5, 'Paket yang sudah di pesan apakah memiliki batas akses?', 'Paket yang sudah di pesan tidak ada batas akses, kamu dapat mengakses nya selama masih menggunakan \"belajar.link\"', NULL, '2022-11-24 23:25:01'),
(6, 'Apakah akun yang sudah berlangganan, bisa akses lebih dari satu perangkat?', 'Tentu saja bisa.', NULL, '2022-11-24 22:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petas`
--

CREATE TABLE `tb_petas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_regulasi_sops`
--

CREATE TABLE `tb_regulasi_sops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_relawans`
--

CREATE TABLE `tb_relawans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `jml_kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jml_desa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redkar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sarpras`
--

CREATE TABLE `tb_sarpras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `jml_kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jml_pos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sdms`
--

CREATE TABLE `tb_sdms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pns` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_pns` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jafung_damkaar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jafung_analis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diklat_apbd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diklat_apbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_settings`
--

CREATE TABLE `tb_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_us` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_us` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_settings`
--

INSERT INTO `tb_settings` (`id`, `icon`, `judul`, `alamat`, `call_us`, `email_us`, `facebook`, `twitter`, `linkedin`, `instagram`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '9020logo.png', 'Balai Kawasan Permukiman dan Perumahan', 'Balai Kawasan Permukiman dan Perumahan\r\nJl. Panyawungan, Cileunyi Wetan, Kec. Cileunyi, Kabupaten Bandung, Jawa Barat 40622', '625215861676', 'bkpplayanan@gmail.com', 'https://www.facebook.com/pupr.ck.bkpp/', 'http://twitter.com/pupr_ck_bkpp/', 'http://linkedin.com', 'https://www.instagram.com/pupr_ck_bkpp/', '2022-10-27 03:11:42', '2024-09-04 20:14:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_slides`
--

CREATE TABLE `tb_slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_slides`
--

INSERT INTO `tb_slides` (`id`, `gambar`, `deskripsi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '609787974a1ca8ba-a911-4320-9ac0-fd74a0be1fe6.jpg', '-', '2023-03-21 07:13:41', '2024-06-05 06:15:06', '2024-06-05 13:15:06'),
(2, '7065hehhe.jpg', 'slide', '2023-03-21 07:15:17', '2023-03-22 00:32:56', '2023-03-22 07:32:56'),
(3, '73664477IMG_9395.jpg', '2', '2023-03-22 00:34:38', '2024-06-05 06:15:04', '2024-06-05 13:15:04'),
(4, '4729Screenshot.png', '4', '2023-03-22 00:39:46', '2024-06-05 06:14:57', '2024-06-05 13:14:57'),
(5, '6643IMG_2210 (1).jpg', '56', '2023-03-22 00:43:05', '2023-03-26 19:12:45', '2023-03-27 02:12:45'),
(6, '2785Screenshot 2024-06-07 160903.png', 'satu', '2024-06-07 02:06:55', '2024-07-12 02:16:35', '2024-07-12 09:16:35'),
(7, '6073Screenshot 2024-06-07 160903.png', 'dua', '2024-06-07 02:07:05', '2024-07-12 02:16:38', '2024-07-12 09:16:38'),
(8, '6332Screenshot 2024-09-12 095558.png', 'Selamat Datang Diwebsite Balai KPP', '2024-07-19 23:48:49', '2024-09-12 02:56:55', NULL),
(9, '2470image.png', 'Selamat Datang Diwebsite Balai KPP', '2024-07-19 23:48:57', '2024-07-28 16:41:53', NULL),
(10, '1179bkpp slide.JPG', 'Welcome', '2024-09-04 18:12:40', '2024-09-04 18:13:38', '2024-09-05 01:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `tb_spms`
--

CREATE TABLE `tb_spms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wilayah` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_submenus`
--

CREATE TABLE `tb_submenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_konten` bigint(20) UNSIGNED NOT NULL,
  `id_menu` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_submenus`
--

INSERT INTO `tb_submenus` (`id`, `id_konten`, `id_menu`, `nama`, `slug`, `urutan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(29, 95, 27, 'Visi Misi', 'visi-misi', 1, '2024-07-28 16:44:42', '2024-09-12 02:23:57', '2024-09-12 09:23:57'),
(30, 96, 27, 'Tugas dan Fungsi', 'tugas-dan-fungsi', 2, '2024-07-28 16:46:13', '2024-09-13 01:21:46', NULL),
(31, 97, 27, 'Struktur Organisasi', 'struktur-organisasi', 3, '2024-07-28 16:46:25', '2024-09-13 01:21:46', NULL),
(32, 98, 27, 'Sejarah', 'sejarah', 4, '2024-07-28 16:46:39', '2024-09-12 02:28:34', NULL),
(33, 99, 28, 'Maklumat Layanan', 'maklumat-layanan', 1, '2024-07-28 16:48:54', '2024-07-28 16:48:54', NULL),
(34, 100, 28, 'Visi Misi Pelayanan', 'visi-misi-pelayanan', 2, '2024-07-28 16:49:11', '2024-07-28 16:49:11', NULL),
(35, 101, 28, 'Jenis Pelayanan', 'jenis-pelayanan', 3, '2024-07-28 16:49:24', '2024-07-28 16:49:24', NULL),
(36, 102, 28, 'Mekanisme dan Prosedur', 'mekanisme-dan-prosedur', 4, '2024-07-28 16:49:39', '2024-07-28 16:49:39', NULL),
(37, 103, 28, 'Indeks Kepuasan', 'indeks-kepuasan', 5, '2024-07-28 16:49:52', '2024-07-28 16:49:52', NULL),
(38, 104, 29, 'Bimbingan Teknis', 'bimbingan-teknis', 1, '2024-07-28 16:51:28', '2024-07-28 16:51:28', NULL),
(39, 105, 29, 'advis teknis', 'advis-teknis', 2, '2024-07-28 16:51:40', '2024-07-28 16:51:40', NULL),
(40, 106, 29, 'studio pemodelan dan SIG', 'studio-pemodelan-dan-sig', 3, '2024-07-28 16:51:52', '2024-09-13 02:56:44', NULL),
(41, 121, 29, 'Kesekretariatan Habitat', 'kesekretariatan-habitat', 4, '2024-07-28 16:52:05', '2024-09-13 02:56:44', NULL),
(42, 109, 31, 'Foto', 'foto', 1, '2024-07-28 16:54:30', '2024-07-28 16:54:30', NULL),
(43, 110, 31, 'Video', 'video', 2, '2024-07-28 16:54:41', '2024-07-28 16:54:41', NULL),
(44, 111, 31, 'Ebook', 'ebook', 3, '2024-07-28 16:54:52', '2024-07-28 16:54:52', NULL),
(45, 112, 31, 'Peraturan', 'peraturan', 4, '2024-07-28 16:55:03', '2024-07-28 16:55:03', NULL),
(46, 113, 32, 'Pengaduan Masyarakat', 'pengaduan-masyarakat', 1, '2024-07-28 16:56:09', '2024-09-12 08:52:39', NULL),
(47, 114, 32, 'Ruang Diskusi', 'ruang-diskusi', 2, '2024-07-28 16:56:22', '2024-09-12 08:50:55', '2024-09-12 15:50:55'),
(48, 123, 27, 'Profil Pejabat', 'profil-pejabat', 4, '2024-09-12 02:26:05', '2024-09-13 01:21:43', NULL),
(49, 124, 32, 'Pelaporan Gratifikasi KPK', 'pelaporan-gratifikasi-kpk', 2, '2024-09-12 08:51:15', '2024-09-12 08:51:15', NULL),
(50, 125, 32, 'Whistle Blowing System PUPR', 'whistle-blowing-system-pupr', 3, '2024-09-12 08:51:47', '2024-09-12 08:51:47', NULL),
(51, 126, 32, 'Kontak Resmi BKPP', 'kontak-resmi-bkpp', 4, '2024-09-12 08:56:26', '2024-09-12 08:56:26', NULL),
(54, 131, 36, 'sub_men testing1', 'sub-men-testing1', 1, '2024-09-14 10:08:51', '2024-09-14 10:15:06', '2024-09-14 17:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `tb_subscribers`
--

CREATE TABLE `tb_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_subscribers`
--

INSERT INTO `tb_subscribers` (`id`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'rezharanmark@gmail.com', '2024-06-28 04:17:46', '2024-06-28 04:17:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahuns`
--

CREATE TABLE `tb_tahuns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun_anggarans`
--

CREATE TABLE `tb_tahun_anggarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_anggaran` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `anggaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun_spms`
--

CREATE TABLE `tb_tahun_spms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_spm` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `nilai_spm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tentangs`
--

CREATE TABLE `tb_tentangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_tentangs`
--

INSERT INTO `tb_tentangs` (`id`, `gambar`, `judul`, `teks`, `created_at`, `updated_at`) VALUES
(1, '1558About us page-amico.png', 'Tentang Icommits', 'Menjadi Perusahaan Dagang Terpercaya dan Terkemuka serta Mempunyai Akses Sumber Daya yang Unggul di Dalam dan Luar Negeri', NULL, '2023-01-10 18:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tentang_kamis`
--

CREATE TABLE `tb_tentang_kamis` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tentang_kamis`
--

INSERT INTO `tb_tentang_kamis` (`id`, `judul`, `isi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tentang', '<p>Tentang&nbsp;<strong>Kami <em>LOREM IPSUM&nbsp;</em></strong>dolor sit&nbsp;<strong>amet</strong></p>', '2023-04-14 21:17:49', '2023-04-14 16:58:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_videos`
--

CREATE TABLE `tb_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_visitors`
--

CREATE TABLE `tb_visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `device` varchar(255) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_visitors`
--

INSERT INTO `tb_visitors` (`id`, `ip_address`, `browser`, `device`, `platform`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3840, '-', '-', '-', '-', '2024-07-21 23:52:43', '2024-07-21 23:52:43', NULL),
(3841, '-', '-', '-', '-', '2024-07-22 00:07:23', '2024-07-22 00:07:23', NULL),
(3842, '-', '-', '-', '-', '2024-07-22 00:26:51', '2024-07-22 00:26:51', NULL),
(3843, '-', '-', '-', '-', '2024-07-22 00:26:58', '2024-07-22 00:26:58', NULL),
(3844, '-', '-', '-', '-', '2024-07-22 01:12:03', '2024-07-22 01:12:03', NULL),
(3845, '-', '-', '-', '-', '2024-07-22 01:12:21', '2024-07-22 01:12:21', NULL),
(3846, '-', '-', '-', '-', '2024-07-22 01:14:04', '2024-07-22 01:14:04', NULL),
(3847, '-', '-', '-', '-', '2024-07-22 01:15:00', '2024-07-22 01:15:00', NULL),
(3848, '-', '-', '-', '-', '2024-07-22 01:21:14', '2024-07-22 01:21:14', NULL),
(3849, '-', '-', '-', '-', '2024-07-22 01:21:34', '2024-07-22 01:21:34', NULL),
(3850, '-', '-', '-', '-', '2024-07-22 01:23:35', '2024-07-22 01:23:35', NULL),
(3851, '-', '-', '-', '-', '2024-07-22 01:24:30', '2024-07-22 01:24:30', NULL),
(3852, '-', '-', '-', '-', '2024-07-22 01:51:10', '2024-07-22 01:51:10', NULL),
(3853, '-', '-', '-', '-', '2024-07-22 02:21:09', '2024-07-22 02:21:09', NULL),
(3854, '-', '-', '-', '-', '2024-07-22 02:51:09', '2024-07-22 02:51:09', NULL),
(3855, '-', '-', '-', '-', '2024-07-22 03:21:10', '2024-07-22 03:21:10', NULL),
(3856, '-', '-', '-', '-', '2024-07-22 03:51:10', '2024-07-22 03:51:10', NULL),
(3857, '-', '-', '-', '-', '2024-07-22 03:51:28', '2024-07-22 03:51:28', NULL),
(3858, '-', '-', '-', '-', '2024-07-22 04:21:11', '2024-07-22 04:21:11', NULL),
(3859, '-', '-', '-', '-', '2024-07-22 04:51:11', '2024-07-22 04:51:11', NULL),
(3860, '-', '-', '-', '-', '2024-07-22 05:21:12', '2024-07-22 05:21:12', NULL),
(3861, '-', '-', '-', '-', '2024-07-22 05:51:12', '2024-07-22 05:51:12', NULL),
(3862, '-', '-', '-', '-', '2024-07-22 06:21:12', '2024-07-22 06:21:12', NULL),
(3863, '-', '-', '-', '-', '2024-07-22 06:51:13', '2024-07-22 06:51:13', NULL),
(3864, '-', '-', '-', '-', '2024-07-22 07:21:13', '2024-07-22 07:21:13', NULL),
(3865, '-', '-', '-', '-', '2024-07-22 07:51:13', '2024-07-22 07:51:13', NULL),
(3866, '-', '-', '-', '-', '2024-07-22 08:21:14', '2024-07-22 08:21:14', NULL),
(3867, '-', '-', '-', '-', '2024-07-22 08:51:14', '2024-07-22 08:51:14', NULL),
(3868, '-', '-', '-', '-', '2024-07-22 09:21:14', '2024-07-22 09:21:14', NULL),
(3869, '-', '-', '-', '-', '2024-07-22 09:51:15', '2024-07-22 09:51:15', NULL),
(3870, '-', '-', '-', '-', '2024-07-22 10:21:16', '2024-07-22 10:21:16', NULL),
(3871, '-', '-', '-', '-', '2024-07-22 10:51:17', '2024-07-22 10:51:17', NULL),
(3872, '-', '-', '-', '-', '2024-07-22 11:21:16', '2024-07-22 11:21:16', NULL),
(3873, '-', '-', '-', '-', '2024-07-22 11:51:19', '2024-07-22 11:51:19', NULL),
(3874, '-', '-', '-', '-', '2024-07-22 12:21:17', '2024-07-22 12:21:17', NULL),
(3875, '-', '-', '-', '-', '2024-07-22 12:51:17', '2024-07-22 12:51:17', NULL),
(3876, '-', '-', '-', '-', '2024-07-22 13:21:18', '2024-07-22 13:21:18', NULL),
(3877, '-', '-', '-', '-', '2024-07-22 13:51:24', '2024-07-22 13:51:24', NULL),
(3878, '-', '-', '-', '-', '2024-07-22 14:21:19', '2024-07-22 14:21:19', NULL),
(3879, '-', '-', '-', '-', '2024-07-22 14:51:20', '2024-07-22 14:51:20', NULL),
(3880, '-', '-', '-', '-', '2024-07-22 15:21:19', '2024-07-22 15:21:19', NULL),
(3881, '-', '-', '-', '-', '2024-07-22 15:51:20', '2024-07-22 15:51:20', NULL),
(3882, '-', '-', '-', '-', '2024-07-22 16:21:20', '2024-07-22 16:21:20', NULL),
(3883, '-', '-', '-', '-', '2024-07-22 16:51:20', '2024-07-22 16:51:20', NULL),
(3884, '-', '-', '-', '-', '2024-07-22 17:21:21', '2024-07-22 17:21:21', NULL),
(3885, '-', '-', '-', '-', '2024-07-22 17:51:21', '2024-07-22 17:51:21', NULL),
(3886, '-', '-', '-', '-', '2024-07-22 18:21:29', '2024-07-22 18:21:29', NULL),
(3887, '-', '-', '-', '-', '2024-07-22 18:51:23', '2024-07-22 18:51:23', NULL),
(3888, '-', '-', '-', '-', '2024-07-22 19:21:23', '2024-07-22 19:21:23', NULL),
(3889, '-', '-', '-', '-', '2024-07-22 19:51:23', '2024-07-22 19:51:23', NULL),
(3890, '-', '-', '-', '-', '2024-07-22 20:21:24', '2024-07-22 20:21:24', NULL),
(3891, '-', '-', '-', '-', '2024-07-22 20:51:24', '2024-07-22 20:51:24', NULL),
(3892, '-', '-', '-', '-', '2024-07-22 21:21:25', '2024-07-22 21:21:25', NULL),
(3893, '-', '-', '-', '-', '2024-07-22 21:51:25', '2024-07-22 21:51:25', NULL),
(3894, '-', '-', '-', '-', '2024-07-22 22:21:26', '2024-07-22 22:21:26', NULL),
(3895, '-', '-', '-', '-', '2024-07-22 22:51:26', '2024-07-22 22:51:26', NULL),
(3896, '-', '-', '-', '-', '2024-07-22 23:21:27', '2024-07-22 23:21:27', NULL),
(3897, '-', '-', '-', '-', '2024-07-22 23:51:26', '2024-07-22 23:51:26', NULL),
(3898, '-', '-', '-', '-', '2024-07-23 00:21:26', '2024-07-23 00:21:26', NULL),
(3899, '-', '-', '-', '-', '2024-07-23 00:51:27', '2024-07-23 00:51:27', NULL),
(3900, '-', '-', '-', '-', '2024-07-23 01:21:29', '2024-07-23 01:21:29', NULL),
(3901, '-', '-', '-', '-', '2024-07-23 01:51:28', '2024-07-23 01:51:28', NULL),
(3902, '-', '-', '-', '-', '2024-07-23 02:21:28', '2024-07-23 02:21:28', NULL),
(3903, '-', '-', '-', '-', '2024-07-23 02:51:28', '2024-07-23 02:51:28', NULL),
(3904, '-', '-', '-', '-', '2024-07-23 03:21:29', '2024-07-23 03:21:29', NULL),
(3905, '-', '-', '-', '-', '2024-07-23 03:51:30', '2024-07-23 03:51:30', NULL),
(3906, '-', '-', '-', '-', '2024-07-23 04:21:30', '2024-07-23 04:21:30', NULL),
(3907, '-', '-', '-', '-', '2024-07-23 04:51:31', '2024-07-23 04:51:31', NULL),
(3908, '-', '-', '-', '-', '2024-07-23 05:21:32', '2024-07-23 05:21:32', NULL),
(3909, '-', '-', '-', '-', '2024-07-23 05:51:31', '2024-07-23 05:51:31', NULL),
(3910, '-', '-', '-', '-', '2024-07-23 06:20:00', '2024-07-23 06:20:00', NULL),
(3911, '-', '-', '-', '-', '2024-07-23 06:20:05', '2024-07-23 06:20:05', NULL),
(3912, '-', '-', '-', '-', '2024-07-23 06:20:05', '2024-07-23 06:20:05', NULL),
(3913, '-', '-', '-', '-', '2024-07-23 06:20:16', '2024-07-23 06:20:16', NULL),
(3914, '-', '-', '-', '-', '2024-07-23 06:20:29', '2024-07-23 06:20:29', NULL),
(3915, '-', '-', '-', '-', '2024-07-23 06:20:59', '2024-07-23 06:20:59', NULL),
(3916, '-', '-', '-', '-', '2024-07-23 06:21:32', '2024-07-23 06:21:32', NULL),
(3917, '-', '-', '-', '-', '2024-07-23 06:21:35', '2024-07-23 06:21:35', NULL),
(3918, '-', '-', '-', '-', '2024-07-23 06:21:51', '2024-07-23 06:21:51', NULL),
(3919, '-', '-', '-', '-', '2024-07-23 06:22:15', '2024-07-23 06:22:15', NULL),
(3920, '-', '-', '-', '-', '2024-07-23 06:22:21', '2024-07-23 06:22:21', NULL),
(3921, '-', '-', '-', '-', '2024-07-23 06:22:32', '2024-07-23 06:22:32', NULL),
(3922, '-', '-', '-', '-', '2024-07-23 06:22:32', '2024-07-23 06:22:32', NULL),
(3923, '-', '-', '-', '-', '2024-07-23 06:22:37', '2024-07-23 06:22:37', NULL),
(3924, '-', '-', '-', '-', '2024-07-23 06:22:37', '2024-07-23 06:22:37', NULL),
(3925, '-', '-', '-', '-', '2024-07-23 06:23:10', '2024-07-23 06:23:10', NULL),
(3926, '-', '-', '-', '-', '2024-07-23 06:23:12', '2024-07-23 06:23:12', NULL),
(3927, '-', '-', '-', '-', '2024-07-23 06:47:22', '2024-07-23 06:47:22', NULL),
(3928, '-', '-', '-', '-', '2024-07-23 06:47:27', '2024-07-23 06:47:27', NULL),
(3929, '-', '-', '-', '-', '2024-07-23 06:47:30', '2024-07-23 06:47:30', NULL),
(3930, '-', '-', '-', '-', '2024-07-23 06:47:31', '2024-07-23 06:47:31', NULL),
(3931, '-', '-', '-', '-', '2024-07-23 06:47:34', '2024-07-23 06:47:34', NULL),
(3932, '-', '-', '-', '-', '2024-07-23 06:47:36', '2024-07-23 06:47:36', NULL),
(3933, '-', '-', '-', '-', '2024-07-23 06:51:33', '2024-07-23 06:51:33', NULL),
(3934, '-', '-', '-', '-', '2024-07-23 07:21:32', '2024-07-23 07:21:32', NULL),
(3935, '-', '-', '-', '-', '2024-07-23 07:51:33', '2024-07-23 07:51:33', NULL),
(3936, '-', '-', '-', '-', '2024-07-23 08:21:33', '2024-07-23 08:21:33', NULL),
(3937, '-', '-', '-', '-', '2024-07-23 08:51:33', '2024-07-23 08:51:33', NULL),
(3938, '-', '-', '-', '-', '2024-07-23 09:21:34', '2024-07-23 09:21:34', NULL),
(3939, '-', '-', '-', '-', '2024-07-23 09:51:34', '2024-07-23 09:51:34', NULL),
(3940, '-', '-', '-', '-', '2024-07-23 10:21:35', '2024-07-23 10:21:35', NULL),
(3941, '-', '-', '-', '-', '2024-07-23 10:51:36', '2024-07-23 10:51:36', NULL),
(3942, '-', '-', '-', '-', '2024-07-23 11:21:35', '2024-07-23 11:21:35', NULL),
(3943, '-', '-', '-', '-', '2024-07-23 11:51:36', '2024-07-23 11:51:36', NULL),
(3944, '-', '-', '-', '-', '2024-07-23 12:21:36', '2024-07-23 12:21:36', NULL),
(3945, '-', '-', '-', '-', '2024-07-23 12:51:37', '2024-07-23 12:51:37', NULL),
(3946, '-', '-', '-', '-', '2024-07-23 13:21:38', '2024-07-23 13:21:38', NULL),
(3947, '-', '-', '-', '-', '2024-07-23 13:51:40', '2024-07-23 13:51:40', NULL),
(3948, '-', '-', '-', '-', '2024-07-23 14:21:38', '2024-07-23 14:21:38', NULL),
(3949, '-', '-', '-', '-', '2024-07-23 14:51:39', '2024-07-23 14:51:39', NULL),
(3950, '-', '-', '-', '-', '2024-07-23 15:21:38', '2024-07-23 15:21:38', NULL),
(3951, '-', '-', '-', '-', '2024-07-23 15:29:52', '2024-07-23 15:29:52', NULL),
(3952, '-', '-', '-', '-', '2024-07-23 15:29:53', '2024-07-23 15:29:53', NULL),
(3953, '-', '-', '-', '-', '2024-07-23 15:29:58', '2024-07-23 15:29:58', NULL),
(3954, '-', '-', '-', '-', '2024-07-23 15:30:23', '2024-07-23 15:30:23', NULL),
(3955, '-', '-', '-', '-', '2024-07-23 15:30:33', '2024-07-23 15:30:33', NULL),
(3956, '-', '-', '-', '-', '2024-07-23 15:30:58', '2024-07-23 15:30:58', NULL),
(3957, '-', '-', '-', '-', '2024-07-23 15:43:27', '2024-07-23 15:43:27', NULL),
(3958, '-', '-', '-', '-', '2024-07-23 15:51:39', '2024-07-23 15:51:39', NULL),
(3959, '-', '-', '-', '-', '2024-07-23 16:21:39', '2024-07-23 16:21:39', NULL),
(3960, '-', '-', '-', '-', '2024-07-23 16:51:39', '2024-07-23 16:51:39', NULL),
(3961, '-', '-', '-', '-', '2024-07-23 17:21:40', '2024-07-23 17:21:40', NULL),
(3962, '-', '-', '-', '-', '2024-07-23 17:51:40', '2024-07-23 17:51:40', NULL),
(3963, '-', '-', '-', '-', '2024-07-23 18:20:08', '2024-07-23 18:20:08', NULL),
(3964, '-', '-', '-', '-', '2024-07-23 18:21:43', '2024-07-23 18:21:43', NULL),
(3965, '-', '-', '-', '-', '2024-07-23 18:51:43', '2024-07-23 18:51:43', NULL),
(3966, '-', '-', '-', '-', '2024-07-23 18:58:32', '2024-07-23 18:58:32', NULL),
(3967, '-', '-', '-', '-', '2024-07-23 18:58:32', '2024-07-23 18:58:32', NULL),
(3968, '-', '-', '-', '-', '2024-07-23 18:58:39', '2024-07-23 18:58:39', NULL),
(3969, '-', '-', '-', '-', '2024-07-23 18:58:42', '2024-07-23 18:58:42', NULL),
(3970, '-', '-', '-', '-', '2024-07-23 19:21:43', '2024-07-23 19:21:43', NULL),
(3971, '-', '-', '-', '-', '2024-07-23 19:52:00', '2024-07-23 19:52:00', NULL),
(3972, '-', '-', '-', '-', '2024-07-23 20:21:43', '2024-07-23 20:21:43', NULL),
(3973, '-', '-', '-', '-', '2024-07-23 20:51:43', '2024-07-23 20:51:43', NULL),
(3974, '-', '-', '-', '-', '2024-07-23 21:21:44', '2024-07-23 21:21:44', NULL),
(3975, '-', '-', '-', '-', '2024-07-23 21:48:43', '2024-07-23 21:48:43', NULL),
(3976, '-', '-', '-', '-', '2024-07-23 21:48:43', '2024-07-23 21:48:43', NULL),
(3977, '-', '-', '-', '-', '2024-07-23 21:51:44', '2024-07-23 21:51:44', NULL),
(3978, '-', '-', '-', '-', '2024-07-23 22:21:45', '2024-07-23 22:21:45', NULL),
(3979, '-', '-', '-', '-', '2024-07-23 22:36:57', '2024-07-23 22:36:57', NULL),
(3980, '-', '-', '-', '-', '2024-07-23 22:51:45', '2024-07-23 22:51:45', NULL),
(3981, '-', '-', '-', '-', '2024-07-23 22:56:30', '2024-07-23 22:56:30', NULL),
(3982, '-', '-', '-', '-', '2024-07-23 23:21:45', '2024-07-23 23:21:45', NULL),
(3983, '-', '-', '-', '-', '2024-07-23 23:51:45', '2024-07-23 23:51:45', NULL),
(3984, '-', '-', '-', '-', '2024-07-24 00:02:09', '2024-07-24 00:02:09', NULL),
(3985, '-', '-', '-', '-', '2024-07-24 00:21:46', '2024-07-24 00:21:46', NULL),
(3986, '-', '-', '-', '-', '2024-07-24 00:51:47', '2024-07-24 00:51:47', NULL),
(3987, '-', '-', '-', '-', '2024-07-24 00:59:35', '2024-07-24 00:59:35', NULL),
(3988, '-', '-', '-', '-', '2024-07-24 01:21:48', '2024-07-24 01:21:48', NULL),
(3989, '-', '-', '-', '-', '2024-07-24 01:41:22', '2024-07-24 01:41:22', NULL),
(3990, '-', '-', '-', '-', '2024-07-24 01:41:24', '2024-07-24 01:41:24', NULL),
(3991, '-', '-', '-', '-', '2024-07-24 01:46:55', '2024-07-24 01:46:55', NULL),
(3992, '-', '-', '-', '-', '2024-07-24 01:46:57', '2024-07-24 01:46:57', NULL),
(3993, '-', '-', '-', '-', '2024-07-24 01:51:47', '2024-07-24 01:51:47', NULL),
(3994, '-', '-', '-', '-', '2024-07-24 02:21:50', '2024-07-24 02:21:50', NULL),
(3995, '-', '-', '-', '-', '2024-07-24 02:51:48', '2024-07-24 02:51:48', NULL),
(3996, '-', '-', '-', '-', '2024-07-24 03:05:49', '2024-07-24 03:05:49', NULL),
(3997, '-', '-', '-', '-', '2024-07-24 03:21:48', '2024-07-24 03:21:48', NULL),
(3998, '-', '-', '-', '-', '2024-07-24 03:25:32', '2024-07-24 03:25:32', NULL),
(3999, '-', '-', '-', '-', '2024-07-24 03:51:49', '2024-07-24 03:51:49', NULL),
(4000, '-', '-', '-', '-', '2024-07-24 04:06:31', '2024-07-24 04:06:31', NULL),
(4001, '-', '-', '-', '-', '2024-07-24 04:06:33', '2024-07-24 04:06:33', NULL),
(4002, '-', '-', '-', '-', '2024-07-24 04:21:49', '2024-07-24 04:21:49', NULL),
(4003, '-', '-', '-', '-', '2024-07-24 04:36:23', '2024-07-24 04:36:23', NULL),
(4004, '-', '-', '-', '-', '2024-07-24 04:37:58', '2024-07-24 04:37:58', NULL),
(4005, '-', '-', '-', '-', '2024-07-24 04:39:59', '2024-07-24 04:39:59', NULL),
(4006, '-', '-', '-', '-', '2024-07-24 04:51:49', '2024-07-24 04:51:49', NULL),
(4007, '-', '-', '-', '-', '2024-07-24 05:21:50', '2024-07-24 05:21:50', NULL),
(4008, '-', '-', '-', '-', '2024-07-24 05:32:06', '2024-07-24 05:32:06', NULL),
(4009, '-', '-', '-', '-', '2024-07-24 05:32:08', '2024-07-24 05:32:08', NULL),
(4010, '-', '-', '-', '-', '2024-07-24 05:33:36', '2024-07-24 05:33:36', NULL),
(4011, '-', '-', '-', '-', '2024-07-24 05:33:37', '2024-07-24 05:33:37', NULL),
(4012, '-', '-', '-', '-', '2024-07-24 05:51:51', '2024-07-24 05:51:51', NULL),
(4013, '-', '-', '-', '-', '2024-07-24 06:06:21', '2024-07-24 06:06:21', NULL),
(4014, '-', '-', '-', '-', '2024-07-24 06:06:22', '2024-07-24 06:06:22', NULL),
(4015, '-', '-', '-', '-', '2024-07-24 06:21:51', '2024-07-24 06:21:51', NULL),
(4016, '-', '-', '-', '-', '2024-07-24 06:51:51', '2024-07-24 06:51:51', NULL),
(4017, '-', '-', '-', '-', '2024-07-24 07:12:54', '2024-07-24 07:12:54', NULL),
(4018, '-', '-', '-', '-', '2024-07-24 07:12:55', '2024-07-24 07:12:55', NULL),
(4019, '-', '-', '-', '-', '2024-07-24 07:21:51', '2024-07-24 07:21:51', NULL),
(4020, '-', '-', '-', '-', '2024-07-24 07:26:47', '2024-07-24 07:26:47', NULL),
(4021, '-', '-', '-', '-', '2024-07-24 07:51:53', '2024-07-24 07:51:53', NULL),
(4022, '-', '-', '-', '-', '2024-07-24 08:21:52', '2024-07-24 08:21:52', NULL),
(4023, '-', '-', '-', '-', '2024-07-24 08:51:53', '2024-07-24 08:51:53', NULL),
(4024, '-', '-', '-', '-', '2024-07-24 09:21:30', '2024-07-24 09:21:30', NULL),
(4025, '-', '-', '-', '-', '2024-07-24 09:21:31', '2024-07-24 09:21:31', NULL),
(4026, '-', '-', '-', '-', '2024-07-24 09:21:54', '2024-07-24 09:21:54', NULL),
(4027, '-', '-', '-', '-', '2024-07-24 09:51:54', '2024-07-24 09:51:54', NULL),
(4028, '-', '-', '-', '-', '2024-07-24 10:21:55', '2024-07-24 10:21:55', NULL),
(4029, '-', '-', '-', '-', '2024-07-24 10:51:55', '2024-07-24 10:51:55', NULL),
(4030, '-', '-', '-', '-', '2024-07-24 11:21:56', '2024-07-24 11:21:56', NULL),
(4031, '-', '-', '-', '-', '2024-07-24 11:51:55', '2024-07-24 11:51:55', NULL),
(4032, '-', '-', '-', '-', '2024-07-24 12:21:55', '2024-07-24 12:21:55', NULL),
(4033, '-', '-', '-', '-', '2024-07-24 12:51:57', '2024-07-24 12:51:57', NULL),
(4034, '-', '-', '-', '-', '2024-07-24 13:21:56', '2024-07-24 13:21:56', NULL),
(4035, '-', '-', '-', '-', '2024-07-24 13:52:05', '2024-07-24 13:52:05', NULL),
(4036, '-', '-', '-', '-', '2024-07-24 14:21:56', '2024-07-24 14:21:56', NULL),
(4037, '-', '-', '-', '-', '2024-07-24 14:51:57', '2024-07-24 14:51:57', NULL),
(4038, '-', '-', '-', '-', '2024-07-24 15:21:58', '2024-07-24 15:21:58', NULL),
(4039, '-', '-', '-', '-', '2024-07-24 15:26:25', '2024-07-24 15:26:25', NULL),
(4040, '-', '-', '-', '-', '2024-07-24 15:51:58', '2024-07-24 15:51:58', NULL),
(4041, '-', '-', '-', '-', '2024-07-24 16:21:59', '2024-07-24 16:21:59', NULL),
(4042, '-', '-', '-', '-', '2024-07-24 16:52:00', '2024-07-24 16:52:00', NULL),
(4043, '-', '-', '-', '-', '2024-07-24 17:22:00', '2024-07-24 17:22:00', NULL),
(4044, '-', '-', '-', '-', '2024-07-24 17:51:59', '2024-07-24 17:51:59', NULL),
(4045, '-', '-', '-', '-', '2024-07-24 18:22:01', '2024-07-24 18:22:01', NULL),
(4046, '-', '-', '-', '-', '2024-07-24 18:52:07', '2024-07-24 18:52:07', NULL),
(4047, '-', '-', '-', '-', '2024-07-24 19:16:04', '2024-07-24 19:16:04', NULL),
(4048, '-', '-', '-', '-', '2024-07-24 19:22:02', '2024-07-24 19:22:02', NULL),
(4049, '-', '-', '-', '-', '2024-07-24 19:41:22', '2024-07-24 19:41:22', NULL),
(4050, '-', '-', '-', '-', '2024-07-24 19:52:03', '2024-07-24 19:52:03', NULL),
(4051, '-', '-', '-', '-', '2024-07-24 20:22:03', '2024-07-24 20:22:03', NULL),
(4052, '-', '-', '-', '-', '2024-07-24 20:52:03', '2024-07-24 20:52:03', NULL),
(4053, '-', '-', '-', '-', '2024-07-24 21:22:03', '2024-07-24 21:22:03', NULL),
(4054, '-', '-', '-', '-', '2024-07-24 21:52:04', '2024-07-24 21:52:04', NULL),
(4055, '-', '-', '-', '-', '2024-07-24 22:22:04', '2024-07-24 22:22:04', NULL),
(4056, '-', '-', '-', '-', '2024-07-24 22:37:50', '2024-07-24 22:37:50', NULL),
(4057, '-', '-', '-', '-', '2024-07-24 22:52:04', '2024-07-24 22:52:04', NULL),
(4058, '-', '-', '-', '-', '2024-07-24 22:54:48', '2024-07-24 22:54:48', NULL),
(4059, '-', '-', '-', '-', '2024-07-24 23:07:03', '2024-07-24 23:07:03', NULL),
(4060, '-', '-', '-', '-', '2024-07-24 23:22:05', '2024-07-24 23:22:05', NULL),
(4061, '-', '-', '-', '-', '2024-07-24 23:52:05', '2024-07-24 23:52:05', NULL),
(4062, '-', '-', '-', '-', '2024-07-25 00:22:07', '2024-07-25 00:22:07', NULL),
(4063, '-', '-', '-', '-', '2024-07-25 00:52:07', '2024-07-25 00:52:07', NULL),
(4064, '-', '-', '-', '-', '2024-07-25 01:22:07', '2024-07-25 01:22:07', NULL),
(4065, '-', '-', '-', '-', '2024-07-25 01:41:30', '2024-07-25 01:41:30', NULL),
(4066, '-', '-', '-', '-', '2024-07-25 01:52:06', '2024-07-25 01:52:06', NULL),
(4067, '-', '-', '-', '-', '2024-07-25 02:22:08', '2024-07-25 02:22:08', NULL),
(4068, '-', '-', '-', '-', '2024-07-25 02:22:54', '2024-07-25 02:22:54', NULL),
(4069, '-', '-', '-', '-', '2024-07-25 02:24:10', '2024-07-25 02:24:10', NULL),
(4070, '-', '-', '-', '-', '2024-07-25 02:24:27', '2024-07-25 02:24:27', NULL),
(4071, '-', '-', '-', '-', '2024-07-25 02:24:36', '2024-07-25 02:24:36', NULL),
(4072, '-', '-', '-', '-', '2024-07-25 02:24:43', '2024-07-25 02:24:43', NULL),
(4073, '-', '-', '-', '-', '2024-07-25 02:29:05', '2024-07-25 02:29:05', NULL),
(4074, '-', '-', '-', '-', '2024-07-25 02:52:07', '2024-07-25 02:52:07', NULL),
(4075, '-', '-', '-', '-', '2024-07-25 03:22:08', '2024-07-25 03:22:08', NULL),
(4076, '-', '-', '-', '-', '2024-07-25 03:52:09', '2024-07-25 03:52:09', NULL),
(4077, '-', '-', '-', '-', '2024-07-25 04:22:09', '2024-07-25 04:22:09', NULL),
(4078, '-', '-', '-', '-', '2024-07-25 04:52:09', '2024-07-25 04:52:09', NULL),
(4079, '-', '-', '-', '-', '2024-07-25 05:22:10', '2024-07-25 05:22:10', NULL),
(4080, '-', '-', '-', '-', '2024-07-25 05:52:10', '2024-07-25 05:52:10', NULL),
(4081, '-', '-', '-', '-', '2024-07-25 06:22:12', '2024-07-25 06:22:12', NULL),
(4082, '-', '-', '-', '-', '2024-07-25 06:34:51', '2024-07-25 06:34:51', NULL),
(4083, '-', '-', '-', '-', '2024-07-25 06:35:14', '2024-07-25 06:35:14', NULL),
(4084, '-', '-', '-', '-', '2024-07-25 06:52:11', '2024-07-25 06:52:11', NULL),
(4085, '-', '-', '-', '-', '2024-07-25 07:22:12', '2024-07-25 07:22:12', NULL),
(4086, '-', '-', '-', '-', '2024-07-25 07:52:11', '2024-07-25 07:52:11', NULL),
(4087, '-', '-', '-', '-', '2024-07-25 08:22:13', '2024-07-25 08:22:13', NULL),
(4088, '-', '-', '-', '-', '2024-07-25 08:52:13', '2024-07-25 08:52:13', NULL),
(4089, '-', '-', '-', '-', '2024-07-25 09:22:14', '2024-07-25 09:22:14', NULL),
(4090, '-', '-', '-', '-', '2024-07-25 09:52:13', '2024-07-25 09:52:13', NULL),
(4091, '-', '-', '-', '-', '2024-07-25 10:22:14', '2024-07-25 10:22:14', NULL),
(4092, '-', '-', '-', '-', '2024-07-25 10:52:15', '2024-07-25 10:52:15', NULL),
(4093, '-', '-', '-', '-', '2024-07-25 11:22:14', '2024-07-25 11:22:14', NULL),
(4094, '-', '-', '-', '-', '2024-07-25 11:52:14', '2024-07-25 11:52:14', NULL),
(4095, '-', '-', '-', '-', '2024-07-25 12:22:15', '2024-07-25 12:22:15', NULL),
(4096, '-', '-', '-', '-', '2024-07-25 12:52:15', '2024-07-25 12:52:15', NULL),
(4097, '-', '-', '-', '-', '2024-07-25 13:22:19', '2024-07-25 13:22:19', NULL),
(4098, '-', '-', '-', '-', '2024-07-25 13:52:24', '2024-07-25 13:52:24', NULL),
(4099, '-', '-', '-', '-', '2024-07-25 14:22:16', '2024-07-25 14:22:16', NULL),
(4100, '-', '-', '-', '-', '2024-07-25 14:52:17', '2024-07-25 14:52:17', NULL),
(4101, '-', '-', '-', '-', '2024-07-25 15:22:17', '2024-07-25 15:22:17', NULL),
(4102, '-', '-', '-', '-', '2024-07-25 15:52:17', '2024-07-25 15:52:17', NULL),
(4103, '-', '-', '-', '-', '2024-07-25 16:22:18', '2024-07-25 16:22:18', NULL),
(4104, '-', '-', '-', '-', '2024-07-25 16:52:18', '2024-07-25 16:52:18', NULL),
(4105, '-', '-', '-', '-', '2024-07-25 17:22:19', '2024-07-25 17:22:19', NULL),
(4106, '-', '-', '-', '-', '2024-07-25 17:52:19', '2024-07-25 17:52:19', NULL),
(4107, '-', '-', '-', '-', '2024-07-25 18:22:26', '2024-07-25 18:22:26', NULL),
(4108, '-', '-', '-', '-', '2024-07-25 18:52:20', '2024-07-25 18:52:20', NULL),
(4109, '-', '-', '-', '-', '2024-07-25 19:22:22', '2024-07-25 19:22:22', NULL),
(4110, '-', '-', '-', '-', '2024-07-25 19:52:21', '2024-07-25 19:52:21', NULL),
(4111, '-', '-', '-', '-', '2024-07-25 20:22:21', '2024-07-25 20:22:21', NULL),
(4112, '-', '-', '-', '-', '2024-07-25 20:52:22', '2024-07-25 20:52:22', NULL),
(4113, '-', '-', '-', '-', '2024-07-25 21:22:22', '2024-07-25 21:22:22', NULL),
(4114, '-', '-', '-', '-', '2024-07-25 21:52:24', '2024-07-25 21:52:24', NULL),
(4115, '-', '-', '-', '-', '2024-07-25 22:22:23', '2024-07-25 22:22:23', NULL),
(4116, '-', '-', '-', '-', '2024-07-25 22:52:23', '2024-07-25 22:52:23', NULL),
(4117, '-', '-', '-', '-', '2024-07-25 23:22:25', '2024-07-25 23:22:25', NULL),
(4118, '-', '-', '-', '-', '2024-07-25 23:25:27', '2024-07-25 23:25:27', NULL),
(4119, '-', '-', '-', '-', '2024-07-25 23:33:36', '2024-07-25 23:33:36', NULL),
(4120, '-', '-', '-', '-', '2024-07-25 23:52:24', '2024-07-25 23:52:24', NULL),
(4121, '-', '-', '-', '-', '2024-07-26 00:22:24', '2024-07-26 00:22:24', NULL),
(4122, '-', '-', '-', '-', '2024-07-26 00:52:25', '2024-07-26 00:52:25', NULL),
(4123, '-', '-', '-', '-', '2024-07-26 01:22:30', '2024-07-26 01:22:30', NULL),
(4124, '-', '-', '-', '-', '2024-07-26 01:39:48', '2024-07-26 01:39:48', NULL),
(4125, '-', '-', '-', '-', '2024-07-26 01:52:25', '2024-07-26 01:52:25', NULL),
(4126, '-', '-', '-', '-', '2024-07-26 02:22:33', '2024-07-26 02:22:33', NULL),
(4127, '-', '-', '-', '-', '2024-07-26 02:52:26', '2024-07-26 02:52:26', NULL),
(4128, '-', '-', '-', '-', '2024-07-26 03:22:28', '2024-07-26 03:22:28', NULL),
(4129, '-', '-', '-', '-', '2024-07-26 03:52:27', '2024-07-26 03:52:27', NULL),
(4130, '-', '-', '-', '-', '2024-07-26 04:22:27', '2024-07-26 04:22:27', NULL),
(4131, '-', '-', '-', '-', '2024-07-26 04:52:28', '2024-07-26 04:52:28', NULL),
(4132, '-', '-', '-', '-', '2024-07-26 05:22:28', '2024-07-26 05:22:28', NULL),
(4133, '-', '-', '-', '-', '2024-07-26 05:52:29', '2024-07-26 05:52:29', NULL),
(4134, '-', '-', '-', '-', '2024-07-26 06:22:29', '2024-07-26 06:22:29', NULL),
(4135, '-', '-', '-', '-', '2024-07-26 06:52:29', '2024-07-26 06:52:29', NULL),
(4136, '-', '-', '-', '-', '2024-07-26 07:22:31', '2024-07-26 07:22:31', NULL),
(4137, '-', '-', '-', '-', '2024-07-26 07:52:31', '2024-07-26 07:52:31', NULL),
(4138, '-', '-', '-', '-', '2024-07-26 08:22:32', '2024-07-26 08:22:32', NULL),
(4139, '-', '-', '-', '-', '2024-07-26 08:52:31', '2024-07-26 08:52:31', NULL),
(4140, '-', '-', '-', '-', '2024-07-26 09:22:32', '2024-07-26 09:22:32', NULL),
(4141, '-', '-', '-', '-', '2024-07-26 09:52:32', '2024-07-26 09:52:32', NULL),
(4142, '-', '-', '-', '-', '2024-07-26 10:22:36', '2024-07-26 10:22:36', NULL),
(4143, '-', '-', '-', '-', '2024-07-26 10:52:35', '2024-07-26 10:52:35', NULL),
(4144, '-', '-', '-', '-', '2024-07-26 11:22:34', '2024-07-26 11:22:34', NULL),
(4145, '-', '-', '-', '-', '2024-07-26 11:52:34', '2024-07-26 11:52:34', NULL),
(4146, '-', '-', '-', '-', '2024-07-26 12:22:34', '2024-07-26 12:22:34', NULL),
(4147, '-', '-', '-', '-', '2024-07-26 12:52:35', '2024-07-26 12:52:35', NULL),
(4148, '-', '-', '-', '-', '2024-07-26 13:22:35', '2024-07-26 13:22:35', NULL),
(4149, '-', '-', '-', '-', '2024-07-26 13:52:47', '2024-07-26 13:52:47', NULL),
(4150, '-', '-', '-', '-', '2024-07-26 14:22:43', '2024-07-26 14:22:43', NULL),
(4151, '-', '-', '-', '-', '2024-07-26 14:52:37', '2024-07-26 14:52:37', NULL),
(4152, '-', '-', '-', '-', '2024-07-26 15:22:37', '2024-07-26 15:22:37', NULL),
(4153, '-', '-', '-', '-', '2024-07-26 15:52:36', '2024-07-26 15:52:36', NULL),
(4154, '-', '-', '-', '-', '2024-07-26 16:22:37', '2024-07-26 16:22:37', NULL),
(4155, '-', '-', '-', '-', '2024-07-26 16:52:38', '2024-07-26 16:52:38', NULL),
(4156, '-', '-', '-', '-', '2024-07-26 17:22:38', '2024-07-26 17:22:38', NULL),
(4157, '-', '-', '-', '-', '2024-07-26 17:52:39', '2024-07-26 17:52:39', NULL),
(4158, '-', '-', '-', '-', '2024-07-26 18:22:39', '2024-07-26 18:22:39', NULL),
(4159, '-', '-', '-', '-', '2024-07-26 18:52:40', '2024-07-26 18:52:40', NULL),
(4160, '-', '-', '-', '-', '2024-07-26 19:22:40', '2024-07-26 19:22:40', NULL),
(4161, '-', '-', '-', '-', '2024-07-26 19:52:40', '2024-07-26 19:52:40', NULL),
(4162, '-', '-', '-', '-', '2024-07-26 20:21:05', '2024-07-26 20:21:05', NULL),
(4163, '-', '-', '-', '-', '2024-07-26 20:22:41', '2024-07-26 20:22:41', NULL),
(4164, '-', '-', '-', '-', '2024-07-26 20:52:42', '2024-07-26 20:52:42', NULL),
(4165, '-', '-', '-', '-', '2024-07-26 20:55:33', '2024-07-26 20:55:33', NULL),
(4166, '-', '-', '-', '-', '2024-07-26 21:22:41', '2024-07-26 21:22:41', NULL),
(4167, '-', '-', '-', '-', '2024-07-26 21:52:42', '2024-07-26 21:52:42', NULL),
(4168, '-', '-', '-', '-', '2024-07-26 22:22:42', '2024-07-26 22:22:42', NULL),
(4169, '-', '-', '-', '-', '2024-07-26 22:37:17', '2024-07-26 22:37:17', NULL),
(4170, '-', '-', '-', '-', '2024-07-26 22:41:03', '2024-07-26 22:41:03', NULL),
(4171, '-', '-', '-', '-', '2024-07-26 22:52:43', '2024-07-26 22:52:43', NULL),
(4172, '-', '-', '-', '-', '2024-07-26 23:22:44', '2024-07-26 23:22:44', NULL),
(4173, '-', '-', '-', '-', '2024-07-26 23:52:43', '2024-07-26 23:52:43', NULL),
(4174, '-', '-', '-', '-', '2024-07-27 00:05:48', '2024-07-27 00:05:48', NULL),
(4175, '-', '-', '-', '-', '2024-07-27 00:05:50', '2024-07-27 00:05:50', NULL),
(4176, '-', '-', '-', '-', '2024-07-27 00:15:36', '2024-07-27 00:15:36', NULL),
(4177, '-', '-', '-', '-', '2024-07-27 00:21:16', '2024-07-27 00:21:16', NULL),
(4178, '-', '-', '-', '-', '2024-07-27 00:22:44', '2024-07-27 00:22:44', NULL),
(4179, '-', '-', '-', '-', '2024-07-27 00:52:46', '2024-07-27 00:52:46', NULL),
(4180, '-', '-', '-', '-', '2024-07-27 01:22:44', '2024-07-27 01:22:44', NULL),
(4181, '-', '-', '-', '-', '2024-07-27 01:52:46', '2024-07-27 01:52:46', NULL),
(4182, '-', '-', '-', '-', '2024-07-27 02:22:46', '2024-07-27 02:22:46', NULL),
(4183, '-', '-', '-', '-', '2024-07-27 02:52:46', '2024-07-27 02:52:46', NULL),
(4184, '-', '-', '-', '-', '2024-07-27 03:22:46', '2024-07-27 03:22:46', NULL),
(4185, '-', '-', '-', '-', '2024-07-27 03:52:46', '2024-07-27 03:52:46', NULL),
(4186, '-', '-', '-', '-', '2024-07-27 04:22:48', '2024-07-27 04:22:48', NULL),
(4187, '-', '-', '-', '-', '2024-07-27 04:52:47', '2024-07-27 04:52:47', NULL),
(4188, '-', '-', '-', '-', '2024-07-27 05:22:47', '2024-07-27 05:22:47', NULL),
(4189, '-', '-', '-', '-', '2024-07-27 05:52:49', '2024-07-27 05:52:49', NULL),
(4190, '-', '-', '-', '-', '2024-07-27 06:22:49', '2024-07-27 06:22:49', NULL),
(4191, '-', '-', '-', '-', '2024-07-27 06:52:49', '2024-07-27 06:52:49', NULL),
(4192, '-', '-', '-', '-', '2024-07-27 07:22:49', '2024-07-27 07:22:49', NULL),
(4193, '-', '-', '-', '-', '2024-07-27 07:52:51', '2024-07-27 07:52:51', NULL),
(4194, '-', '-', '-', '-', '2024-07-27 08:22:50', '2024-07-27 08:22:50', NULL),
(4195, '-', '-', '-', '-', '2024-07-27 08:52:50', '2024-07-27 08:52:50', NULL),
(4196, '-', '-', '-', '-', '2024-07-27 09:22:53', '2024-07-27 09:22:53', NULL),
(4197, '-', '-', '-', '-', '2024-07-27 09:52:52', '2024-07-27 09:52:52', NULL),
(4198, '-', '-', '-', '-', '2024-07-27 10:23:13', '2024-07-27 10:23:13', NULL),
(4199, '-', '-', '-', '-', '2024-07-27 10:52:52', '2024-07-27 10:52:52', NULL),
(4200, '-', '-', '-', '-', '2024-07-27 11:22:53', '2024-07-27 11:22:53', NULL),
(4201, '-', '-', '-', '-', '2024-07-27 11:52:53', '2024-07-27 11:52:53', NULL),
(4202, '-', '-', '-', '-', '2024-07-27 12:22:53', '2024-07-27 12:22:53', NULL),
(4203, '-', '-', '-', '-', '2024-07-27 12:52:54', '2024-07-27 12:52:54', NULL),
(4204, '-', '-', '-', '-', '2024-07-27 13:14:14', '2024-07-27 13:14:14', NULL),
(4205, '-', '-', '-', '-', '2024-07-27 13:14:15', '2024-07-27 13:14:15', NULL),
(4206, '-', '-', '-', '-', '2024-07-27 13:22:53', '2024-07-27 13:22:53', NULL),
(4207, '-', '-', '-', '-', '2024-07-27 13:53:01', '2024-07-27 13:53:01', NULL),
(4208, '-', '-', '-', '-', '2024-07-27 14:22:56', '2024-07-27 14:22:56', NULL),
(4209, '-', '-', '-', '-', '2024-07-27 14:52:55', '2024-07-27 14:52:55', NULL),
(4210, '-', '-', '-', '-', '2024-07-27 15:22:55', '2024-07-27 15:22:55', NULL),
(4211, '-', '-', '-', '-', '2024-07-27 15:52:57', '2024-07-27 15:52:57', NULL),
(4212, '-', '-', '-', '-', '2024-07-27 16:22:56', '2024-07-27 16:22:56', NULL),
(4213, '-', '-', '-', '-', '2024-07-27 16:52:57', '2024-07-27 16:52:57', NULL),
(4214, '-', '-', '-', '-', '2024-07-27 17:22:57', '2024-07-27 17:22:57', NULL),
(4215, '-', '-', '-', '-', '2024-07-27 17:52:58', '2024-07-27 17:52:58', NULL),
(4216, '-', '-', '-', '-', '2024-07-27 18:22:58', '2024-07-27 18:22:58', NULL),
(4217, '-', '-', '-', '-', '2024-07-27 18:52:59', '2024-07-27 18:52:59', NULL),
(4218, '-', '-', '-', '-', '2024-07-27 19:22:59', '2024-07-27 19:22:59', NULL),
(4219, '-', '-', '-', '-', '2024-07-27 19:53:00', '2024-07-27 19:53:00', NULL),
(4220, '-', '-', '-', '-', '2024-07-27 20:22:59', '2024-07-27 20:22:59', NULL),
(4221, '-', '-', '-', '-', '2024-07-27 20:53:00', '2024-07-27 20:53:00', NULL),
(4222, '-', '-', '-', '-', '2024-07-27 21:23:00', '2024-07-27 21:23:00', NULL),
(4223, '-', '-', '-', '-', '2024-07-27 21:53:12', '2024-07-27 21:53:12', NULL),
(4224, '-', '-', '-', '-', '2024-07-27 22:23:03', '2024-07-27 22:23:03', NULL),
(4225, '-', '-', '-', '-', '2024-07-27 22:31:25', '2024-07-27 22:31:25', NULL),
(4226, '-', '-', '-', '-', '2024-07-27 22:37:39', '2024-07-27 22:37:39', NULL),
(4227, '-', '-', '-', '-', '2024-07-27 22:53:02', '2024-07-27 22:53:02', NULL),
(4228, '-', '-', '-', '-', '2024-07-27 23:23:03', '2024-07-27 23:23:03', NULL),
(4229, '-', '-', '-', '-', '2024-07-27 23:53:02', '2024-07-27 23:53:02', NULL),
(4230, '-', '-', '-', '-', '2024-07-28 00:23:05', '2024-07-28 00:23:05', NULL),
(4231, '-', '-', '-', '-', '2024-07-28 00:53:03', '2024-07-28 00:53:03', NULL),
(4232, '-', '-', '-', '-', '2024-07-28 01:23:07', '2024-07-28 01:23:07', NULL),
(4233, '-', '-', '-', '-', '2024-07-28 01:53:04', '2024-07-28 01:53:04', NULL),
(4234, '-', '-', '-', '-', '2024-07-28 02:23:06', '2024-07-28 02:23:06', NULL),
(4235, '-', '-', '-', '-', '2024-07-28 02:53:05', '2024-07-28 02:53:05', NULL),
(4236, '-', '-', '-', '-', '2024-07-28 03:23:06', '2024-07-28 03:23:06', NULL),
(4237, '-', '-', '-', '-', '2024-07-28 03:53:06', '2024-07-28 03:53:06', NULL),
(4238, '-', '-', '-', '-', '2024-07-28 04:23:06', '2024-07-28 04:23:06', NULL),
(4239, '-', '-', '-', '-', '2024-07-28 04:53:07', '2024-07-28 04:53:07', NULL),
(4240, '-', '-', '-', '-', '2024-07-28 05:03:14', '2024-07-28 05:03:14', NULL),
(4241, '-', '-', '-', '-', '2024-07-28 05:03:32', '2024-07-28 05:03:32', NULL),
(4242, '-', '-', '-', '-', '2024-07-28 05:23:09', '2024-07-28 05:23:09', NULL),
(4243, '-', '-', '-', '-', '2024-07-28 05:53:13', '2024-07-28 05:53:13', NULL),
(4244, '-', '-', '-', '-', '2024-07-28 06:23:10', '2024-07-28 06:23:10', NULL),
(4245, '-', '-', '-', '-', '2024-07-28 06:53:09', '2024-07-28 06:53:09', NULL),
(4246, '-', '-', '-', '-', '2024-07-28 07:23:08', '2024-07-28 07:23:08', NULL),
(4247, '-', '-', '-', '-', '2024-07-28 07:53:10', '2024-07-28 07:53:10', NULL),
(4248, '-', '-', '-', '-', '2024-07-28 08:23:09', '2024-07-28 08:23:09', NULL),
(4249, '-', '-', '-', '-', '2024-07-28 08:53:11', '2024-07-28 08:53:11', NULL),
(4250, '-', '-', '-', '-', '2024-07-28 09:23:10', '2024-07-28 09:23:10', NULL),
(4251, '-', '-', '-', '-', '2024-07-28 09:53:11', '2024-07-28 09:53:11', NULL),
(4252, '-', '-', '-', '-', '2024-07-28 10:23:15', '2024-07-28 10:23:15', NULL),
(4253, '-', '-', '-', '-', '2024-07-28 10:53:12', '2024-07-28 10:53:12', NULL),
(4254, '-', '-', '-', '-', '2024-07-28 11:23:12', '2024-07-28 11:23:12', NULL),
(4255, '-', '-', '-', '-', '2024-07-28 11:53:13', '2024-07-28 11:53:13', NULL),
(4256, '-', '-', '-', '-', '2024-07-28 12:23:12', '2024-07-28 12:23:12', NULL),
(4257, '-', '-', '-', '-', '2024-07-28 12:53:19', '2024-07-28 12:53:19', NULL),
(4258, '-', '-', '-', '-', '2024-07-28 12:57:20', '2024-07-28 12:57:20', NULL),
(4259, '-', '-', '-', '-', '2024-07-28 12:57:28', '2024-07-28 12:57:28', NULL),
(4260, '-', '-', '-', '-', '2024-07-28 13:23:14', '2024-07-28 13:23:14', NULL),
(4261, '-', '-', '-', '-', '2024-07-28 13:53:14', '2024-07-28 13:53:14', NULL),
(4262, '-', '-', '-', '-', '2024-07-28 14:23:14', '2024-07-28 14:23:14', NULL),
(4263, '-', '-', '-', '-', '2024-07-28 14:53:14', '2024-07-28 14:53:14', NULL),
(4264, '-', '-', '-', '-', '2024-07-28 15:23:15', '2024-07-28 15:23:15', NULL),
(4265, '-', '-', '-', '-', '2024-07-28 15:53:15', '2024-07-28 15:53:15', NULL),
(4266, '-', '-', '-', '-', '2024-07-28 16:23:15', '2024-07-28 16:23:15', NULL),
(4267, '-', '-', '-', '-', '2024-07-28 16:23:50', '2024-07-28 16:23:50', NULL),
(4268, '-', '-', '-', '-', '2024-07-28 16:40:18', '2024-07-28 16:40:18', NULL),
(4269, '-', '-', '-', '-', '2024-07-28 16:41:57', '2024-07-28 16:41:57', NULL),
(4270, '-', '-', '-', '-', '2024-07-28 16:46:44', '2024-07-28 16:46:44', NULL),
(4271, '-', '-', '-', '-', '2024-07-28 16:46:54', '2024-07-28 16:46:54', NULL),
(4272, '-', '-', '-', '-', '2024-07-28 16:53:16', '2024-07-28 16:53:16', NULL),
(4273, '-', '-', '-', '-', '2024-07-28 16:57:06', '2024-07-28 16:57:06', NULL),
(4274, '-', '-', '-', '-', '2024-07-28 17:01:59', '2024-07-28 17:01:59', NULL),
(4275, '-', '-', '-', '-', '2024-07-28 17:23:16', '2024-07-28 17:23:16', NULL),
(4276, '-', '-', '-', '-', '2024-07-28 17:53:17', '2024-07-28 17:53:17', NULL),
(4277, '-', '-', '-', '-', '2024-07-28 18:20:31', '2024-07-28 18:20:31', NULL),
(4278, '-', '-', '-', '-', '2024-07-28 18:23:20', '2024-07-28 18:23:20', NULL),
(4279, '-', '-', '-', '-', '2024-07-28 18:36:31', '2024-07-28 18:36:31', NULL),
(4280, '-', '-', '-', '-', '2024-07-28 18:36:33', '2024-07-28 18:36:33', NULL),
(4281, '-', '-', '-', '-', '2024-07-28 18:41:41', '2024-07-28 18:41:41', NULL),
(4282, '-', '-', '-', '-', '2024-07-28 18:41:45', '2024-07-28 18:41:45', NULL),
(4283, '-', '-', '-', '-', '2024-07-28 18:42:01', '2024-07-28 18:42:01', NULL),
(4284, '-', '-', '-', '-', '2024-07-28 18:52:13', '2024-07-28 18:52:13', NULL),
(4285, '-', '-', '-', '-', '2024-07-28 18:53:18', '2024-07-28 18:53:18', NULL),
(4286, '-', '-', '-', '-', '2024-07-28 18:53:23', '2024-07-28 18:53:23', NULL),
(4287, '-', '-', '-', '-', '2024-07-28 19:23:20', '2024-07-28 19:23:20', NULL),
(4288, '-', '-', '-', '-', '2024-07-28 19:53:19', '2024-07-28 19:53:19', NULL),
(4289, '-', '-', '-', '-', '2024-07-28 20:23:20', '2024-07-28 20:23:20', NULL),
(4290, '-', '-', '-', '-', '2024-07-28 20:23:20', '2024-07-28 20:23:20', NULL),
(4291, '-', '-', '-', '-', '2024-07-28 20:53:20', '2024-07-28 20:53:20', NULL),
(4292, '-', '-', '-', '-', '2024-07-28 21:23:03', '2024-07-28 21:23:03', NULL),
(4293, '-', '-', '-', '-', '2024-07-28 21:23:26', '2024-07-28 21:23:26', NULL),
(4294, '-', '-', '-', '-', '2024-07-28 21:53:21', '2024-07-28 21:53:21', NULL),
(4295, '-', '-', '-', '-', '2024-07-28 21:53:46', '2024-07-28 21:53:46', NULL),
(4296, '-', '-', '-', '-', '2024-07-28 22:01:26', '2024-07-28 22:01:26', NULL),
(4297, '-', '-', '-', '-', '2024-07-28 22:23:26', '2024-07-28 22:23:26', NULL),
(4298, '-', '-', '-', '-', '2024-07-28 22:53:21', '2024-07-28 22:53:21', NULL),
(4299, '-', '-', '-', '-', '2024-07-28 23:03:53', '2024-07-28 23:03:53', NULL),
(4300, '-', '-', '-', '-', '2024-07-28 23:04:33', '2024-07-28 23:04:33', NULL),
(4301, '-', '-', '-', '-', '2024-07-28 23:05:13', '2024-07-28 23:05:13', NULL),
(4302, '-', '-', '-', '-', '2024-07-28 23:23:22', '2024-07-28 23:23:22', NULL),
(4303, '-', '-', '-', '-', '2024-07-28 23:23:33', '2024-07-28 23:23:33', NULL),
(4304, '-', '-', '-', '-', '2024-07-28 23:23:41', '2024-07-28 23:23:41', NULL),
(4305, '-', '-', '-', '-', '2024-07-28 23:23:56', '2024-07-28 23:23:56', NULL),
(4306, '-', '-', '-', '-', '2024-07-28 23:24:18', '2024-07-28 23:24:18', NULL),
(4307, '-', '-', '-', '-', '2024-07-28 23:24:42', '2024-07-28 23:24:42', NULL),
(4308, '-', '-', '-', '-', '2024-07-28 23:25:34', '2024-07-28 23:25:34', NULL),
(4309, '-', '-', '-', '-', '2024-07-28 23:25:41', '2024-07-28 23:25:41', NULL),
(4310, '-', '-', '-', '-', '2024-07-28 23:26:10', '2024-07-28 23:26:10', NULL),
(4311, '-', '-', '-', '-', '2024-07-28 23:26:17', '2024-07-28 23:26:17', NULL),
(4312, '-', '-', '-', '-', '2024-07-28 23:26:47', '2024-07-28 23:26:47', NULL),
(4313, '-', '-', '-', '-', '2024-07-28 23:27:35', '2024-07-28 23:27:35', NULL),
(4314, '-', '-', '-', '-', '2024-07-28 23:27:48', '2024-07-28 23:27:48', NULL),
(4315, '-', '-', '-', '-', '2024-07-28 23:53:22', '2024-07-28 23:53:22', NULL),
(4316, '-', '-', '-', '-', '2024-07-29 00:06:28', '2024-07-29 00:06:28', NULL),
(4317, '-', '-', '-', '-', '2024-07-29 00:06:35', '2024-07-29 00:06:35', NULL),
(4318, '-', '-', '-', '-', '2024-07-29 00:06:36', '2024-07-29 00:06:36', NULL),
(4319, '-', '-', '-', '-', '2024-07-29 00:06:36', '2024-07-29 00:06:36', NULL),
(4320, '-', '-', '-', '-', '2024-07-29 00:09:05', '2024-07-29 00:09:05', NULL),
(4321, '-', '-', '-', '-', '2024-07-29 00:23:23', '2024-07-29 00:23:23', NULL),
(4322, '-', '-', '-', '-', '2024-07-29 00:53:24', '2024-07-29 00:53:24', NULL),
(4323, '-', '-', '-', '-', '2024-07-29 01:23:24', '2024-07-29 01:23:24', NULL),
(4324, '-', '-', '-', '-', '2024-07-29 01:52:54', '2024-07-29 01:52:54', NULL),
(4325, '-', '-', '-', '-', '2024-07-29 01:53:24', '2024-07-29 01:53:24', NULL),
(4326, '-', '-', '-', '-', '2024-07-29 01:57:06', '2024-07-29 01:57:06', NULL),
(4327, '-', '-', '-', '-', '2024-07-29 02:23:24', '2024-07-29 02:23:24', NULL),
(4328, '-', '-', '-', '-', '2024-07-29 02:29:35', '2024-07-29 02:29:35', NULL),
(4329, '-', '-', '-', '-', '2024-07-29 02:42:30', '2024-07-29 02:42:30', NULL),
(4330, '-', '-', '-', '-', '2024-07-29 02:42:40', '2024-07-29 02:42:40', NULL),
(4331, '-', '-', '-', '-', '2024-07-29 02:46:24', '2024-07-29 02:46:24', NULL),
(4332, '-', '-', '-', '-', '2024-07-29 02:52:17', '2024-07-29 02:52:17', NULL),
(4333, '-', '-', '-', '-', '2024-07-29 02:53:24', '2024-07-29 02:53:24', NULL),
(4334, '-', '-', '-', '-', '2024-07-29 03:01:33', '2024-07-29 03:01:33', NULL),
(4335, '-', '-', '-', '-', '2024-07-29 03:02:22', '2024-07-29 03:02:22', NULL),
(4336, '-', '-', '-', '-', '2024-07-29 03:06:18', '2024-07-29 03:06:18', NULL),
(4337, '-', '-', '-', '-', '2024-07-29 03:06:23', '2024-07-29 03:06:23', NULL),
(4338, '-', '-', '-', '-', '2024-07-29 03:06:48', '2024-07-29 03:06:48', NULL),
(4339, '-', '-', '-', '-', '2024-07-29 03:06:48', '2024-07-29 03:06:48', NULL),
(4340, '-', '-', '-', '-', '2024-07-29 03:06:49', '2024-07-29 03:06:49', NULL),
(4341, '-', '-', '-', '-', '2024-07-29 03:08:52', '2024-07-29 03:08:52', NULL),
(4342, '-', '-', '-', '-', '2024-07-29 03:09:12', '2024-07-29 03:09:12', NULL),
(4343, '-', '-', '-', '-', '2024-07-29 03:09:15', '2024-07-29 03:09:15', NULL),
(4344, '-', '-', '-', '-', '2024-07-29 03:09:43', '2024-07-29 03:09:43', NULL),
(4345, '-', '-', '-', '-', '2024-07-29 03:09:51', '2024-07-29 03:09:51', NULL),
(4346, '-', '-', '-', '-', '2024-07-29 03:11:50', '2024-07-29 03:11:50', NULL),
(4347, '-', '-', '-', '-', '2024-07-29 03:12:39', '2024-07-29 03:12:39', NULL),
(4348, '-', '-', '-', '-', '2024-07-29 03:23:24', '2024-07-29 03:23:24', NULL),
(4349, '-', '-', '-', '-', '2024-07-29 03:53:25', '2024-07-29 03:53:25', NULL),
(4350, '-', '-', '-', '-', '2024-07-29 04:23:25', '2024-07-29 04:23:25', NULL),
(4351, '-', '-', '-', '-', '2024-07-29 04:53:26', '2024-07-29 04:53:26', NULL),
(4352, '-', '-', '-', '-', '2024-07-29 05:23:26', '2024-07-29 05:23:26', NULL),
(4353, '-', '-', '-', '-', '2024-07-29 05:53:26', '2024-07-29 05:53:26', NULL),
(4354, '-', '-', '-', '-', '2024-07-29 06:16:54', '2024-07-29 06:16:54', NULL),
(4355, '-', '-', '-', '-', '2024-07-29 06:17:00', '2024-07-29 06:17:00', NULL),
(4356, '-', '-', '-', '-', '2024-07-29 06:23:27', '2024-07-29 06:23:27', NULL),
(4357, '-', '-', '-', '-', '2024-07-29 06:53:28', '2024-07-29 06:53:28', NULL),
(4358, '-', '-', '-', '-', '2024-07-29 07:23:27', '2024-07-29 07:23:27', NULL),
(4359, '-', '-', '-', '-', '2024-07-29 07:53:28', '2024-07-29 07:53:28', NULL),
(4360, '-', '-', '-', '-', '2024-07-29 08:23:29', '2024-07-29 08:23:29', NULL),
(4361, '-', '-', '-', '-', '2024-07-29 08:53:29', '2024-07-29 08:53:29', NULL),
(4362, '-', '-', '-', '-', '2024-07-29 09:23:29', '2024-07-29 09:23:29', NULL),
(4363, '-', '-', '-', '-', '2024-07-29 09:53:30', '2024-07-29 09:53:30', NULL),
(4364, '-', '-', '-', '-', '2024-07-29 10:23:31', '2024-07-29 10:23:31', NULL),
(4365, '-', '-', '-', '-', '2024-07-29 10:53:30', '2024-07-29 10:53:30', NULL),
(4366, '-', '-', '-', '-', '2024-07-29 11:23:31', '2024-07-29 11:23:31', NULL),
(4367, '-', '-', '-', '-', '2024-07-29 11:53:32', '2024-07-29 11:53:32', NULL),
(4368, '-', '-', '-', '-', '2024-07-29 12:23:32', '2024-07-29 12:23:32', NULL),
(4369, '-', '-', '-', '-', '2024-07-29 12:53:33', '2024-07-29 12:53:33', NULL),
(4370, '-', '-', '-', '-', '2024-07-29 13:23:33', '2024-07-29 13:23:33', NULL),
(4371, '-', '-', '-', '-', '2024-07-29 13:53:33', '2024-07-29 13:53:33', NULL),
(4372, '-', '-', '-', '-', '2024-07-29 14:23:33', '2024-07-29 14:23:33', NULL),
(4373, '-', '-', '-', '-', '2024-07-29 14:53:34', '2024-07-29 14:53:34', NULL),
(4374, '-', '-', '-', '-', '2024-07-29 15:23:34', '2024-07-29 15:23:34', NULL),
(4375, '-', '-', '-', '-', '2024-07-29 15:53:35', '2024-07-29 15:53:35', NULL),
(4376, '-', '-', '-', '-', '2024-07-29 16:23:35', '2024-07-29 16:23:35', NULL),
(4377, '-', '-', '-', '-', '2024-07-29 16:53:35', '2024-07-29 16:53:35', NULL),
(4378, '-', '-', '-', '-', '2024-07-29 17:23:36', '2024-07-29 17:23:36', NULL),
(4379, '-', '-', '-', '-', '2024-07-29 17:53:36', '2024-07-29 17:53:36', NULL),
(4380, '-', '-', '-', '-', '2024-07-29 18:23:37', '2024-07-29 18:23:37', NULL),
(4381, '-', '-', '-', '-', '2024-07-29 18:53:37', '2024-07-29 18:53:37', NULL),
(4382, '-', '-', '-', '-', '2024-07-29 19:23:37', '2024-07-29 19:23:37', NULL),
(4383, '-', '-', '-', '-', '2024-07-29 19:53:37', '2024-07-29 19:53:37', NULL),
(4384, '-', '-', '-', '-', '2024-07-29 20:23:38', '2024-07-29 20:23:38', NULL),
(4385, '-', '-', '-', '-', '2024-07-29 20:53:38', '2024-07-29 20:53:38', NULL),
(4386, '-', '-', '-', '-', '2024-07-29 21:23:39', '2024-07-29 21:23:39', NULL),
(4387, '-', '-', '-', '-', '2024-07-29 21:53:40', '2024-07-29 21:53:40', NULL),
(4388, '-', '-', '-', '-', '2024-07-29 21:55:25', '2024-07-29 21:55:25', NULL),
(4389, '-', '-', '-', '-', '2024-07-29 22:01:51', '2024-07-29 22:01:51', NULL),
(4390, '-', '-', '-', '-', '2024-07-29 22:23:39', '2024-07-29 22:23:39', NULL),
(4391, '-', '-', '-', '-', '2024-07-29 22:53:40', '2024-07-29 22:53:40', NULL),
(4392, '-', '-', '-', '-', '2024-07-29 23:23:40', '2024-07-29 23:23:40', NULL),
(4393, '-', '-', '-', '-', '2024-07-29 23:53:40', '2024-07-29 23:53:40', NULL),
(4394, '-', '-', '-', '-', '2024-07-30 00:23:42', '2024-07-30 00:23:42', NULL),
(4395, '-', '-', '-', '-', '2024-07-30 00:31:50', '2024-07-30 00:31:50', NULL),
(4396, '-', '-', '-', '-', '2024-07-30 00:31:52', '2024-07-30 00:31:52', NULL),
(4397, '-', '-', '-', '-', '2024-07-30 00:48:51', '2024-07-30 00:48:51', NULL),
(4398, '-', '-', '-', '-', '2024-07-30 00:48:52', '2024-07-30 00:48:52', NULL),
(4399, '-', '-', '-', '-', '2024-07-30 00:53:42', '2024-07-30 00:53:42', NULL),
(4400, '-', '-', '-', '-', '2024-07-30 01:23:42', '2024-07-30 01:23:42', NULL),
(4401, '-', '-', '-', '-', '2024-07-30 01:53:42', '2024-07-30 01:53:42', NULL),
(4402, '-', '-', '-', '-', '2024-07-30 02:23:43', '2024-07-30 02:23:43', NULL),
(4403, '-', '-', '-', '-', '2024-07-30 02:24:11', '2024-07-30 02:24:11', NULL),
(4404, '-', '-', '-', '-', '2024-07-30 02:46:25', '2024-07-30 02:46:25', NULL),
(4405, '-', '-', '-', '-', '2024-07-30 02:53:43', '2024-07-30 02:53:43', NULL),
(4406, '-', '-', '-', '-', '2024-07-30 03:16:16', '2024-07-30 03:16:16', NULL),
(4407, '-', '-', '-', '-', '2024-07-30 03:23:44', '2024-07-30 03:23:44', NULL),
(4408, '-', '-', '-', '-', '2024-07-30 03:53:45', '2024-07-30 03:53:45', NULL),
(4409, '-', '-', '-', '-', '2024-07-30 04:23:44', '2024-07-30 04:23:44', NULL),
(4410, '-', '-', '-', '-', '2024-07-30 04:28:20', '2024-07-30 04:28:20', NULL),
(4411, '-', '-', '-', '-', '2024-07-30 04:43:06', '2024-07-30 04:43:06', NULL),
(4412, '-', '-', '-', '-', '2024-07-30 04:53:45', '2024-07-30 04:53:45', NULL),
(4413, '-', '-', '-', '-', '2024-07-30 04:56:41', '2024-07-30 04:56:41', NULL),
(4414, '-', '-', '-', '-', '2024-07-30 05:23:45', '2024-07-30 05:23:45', NULL),
(4415, '-', '-', '-', '-', '2024-07-30 05:53:46', '2024-07-30 05:53:46', NULL),
(4416, '-', '-', '-', '-', '2024-07-30 06:23:46', '2024-07-30 06:23:46', NULL),
(4417, '-', '-', '-', '-', '2024-07-30 06:53:47', '2024-07-30 06:53:47', NULL),
(4418, '-', '-', '-', '-', '2024-07-30 07:20:58', '2024-07-30 07:20:58', NULL),
(4419, '-', '-', '-', '-', '2024-07-30 07:21:44', '2024-07-30 07:21:44', NULL),
(4420, '-', '-', '-', '-', '2024-07-30 07:22:58', '2024-07-30 07:22:58', NULL),
(4421, '-', '-', '-', '-', '2024-07-30 07:23:02', '2024-07-30 07:23:02', NULL),
(4422, '-', '-', '-', '-', '2024-07-30 07:23:47', '2024-07-30 07:23:47', NULL),
(4423, '-', '-', '-', '-', '2024-07-30 07:26:35', '2024-07-30 07:26:35', NULL),
(4424, '-', '-', '-', '-', '2024-07-30 07:28:18', '2024-07-30 07:28:18', NULL),
(4425, '-', '-', '-', '-', '2024-07-30 07:28:19', '2024-07-30 07:28:19', NULL),
(4426, '-', '-', '-', '-', '2024-07-30 07:37:08', '2024-07-30 07:37:08', NULL),
(4427, '-', '-', '-', '-', '2024-07-30 07:40:40', '2024-07-30 07:40:40', NULL),
(4428, '-', '-', '-', '-', '2024-07-30 07:53:48', '2024-07-30 07:53:48', NULL),
(4429, '-', '-', '-', '-', '2024-07-30 08:23:48', '2024-07-30 08:23:48', NULL),
(4430, '-', '-', '-', '-', '2024-07-30 08:44:47', '2024-07-30 08:44:47', NULL),
(4431, '-', '-', '-', '-', '2024-07-30 08:44:47', '2024-07-30 08:44:47', NULL),
(4432, '-', '-', '-', '-', '2024-07-30 08:46:51', '2024-07-30 08:46:51', NULL),
(4433, '-', '-', '-', '-', '2024-07-30 08:51:53', '2024-07-30 08:51:53', NULL),
(4434, '-', '-', '-', '-', '2024-07-30 08:52:20', '2024-07-30 08:52:20', NULL),
(4435, '-', '-', '-', '-', '2024-07-30 08:52:20', '2024-07-30 08:52:20', NULL),
(4436, '-', '-', '-', '-', '2024-07-30 08:53:48', '2024-07-30 08:53:48', NULL),
(4437, '-', '-', '-', '-', '2024-07-30 08:55:19', '2024-07-30 08:55:19', NULL),
(4438, '-', '-', '-', '-', '2024-07-30 08:55:20', '2024-07-30 08:55:20', NULL),
(4439, '-', '-', '-', '-', '2024-07-30 09:00:41', '2024-07-30 09:00:41', NULL),
(4440, '-', '-', '-', '-', '2024-07-30 09:00:58', '2024-07-30 09:00:58', NULL),
(4441, '-', '-', '-', '-', '2024-07-30 09:01:04', '2024-07-30 09:01:04', NULL),
(4442, '-', '-', '-', '-', '2024-07-30 09:23:49', '2024-07-30 09:23:49', NULL),
(4443, '-', '-', '-', '-', '2024-07-30 09:53:49', '2024-07-30 09:53:49', NULL),
(4444, '-', '-', '-', '-', '2024-07-30 10:23:51', '2024-07-30 10:23:51', NULL),
(4445, '-', '-', '-', '-', '2024-07-30 10:53:50', '2024-07-30 10:53:50', NULL),
(4446, '-', '-', '-', '-', '2024-07-30 11:20:48', '2024-07-30 11:20:48', NULL),
(4447, '-', '-', '-', '-', '2024-07-30 11:20:49', '2024-07-30 11:20:49', NULL),
(4448, '-', '-', '-', '-', '2024-07-30 11:23:51', '2024-07-30 11:23:51', NULL),
(4449, '-', '-', '-', '-', '2024-07-30 11:53:51', '2024-07-30 11:53:51', NULL),
(4450, '-', '-', '-', '-', '2024-07-30 11:59:37', '2024-07-30 11:59:37', NULL),
(4451, '-', '-', '-', '-', '2024-07-30 12:23:51', '2024-07-30 12:23:51', NULL),
(4452, '-', '-', '-', '-', '2024-07-30 12:54:03', '2024-07-30 12:54:03', NULL),
(4453, '-', '-', '-', '-', '2024-07-30 13:23:52', '2024-07-30 13:23:52', NULL),
(4454, '-', '-', '-', '-', '2024-07-30 13:53:59', '2024-07-30 13:53:59', NULL),
(4455, '-', '-', '-', '-', '2024-07-30 14:23:52', '2024-07-30 14:23:52', NULL),
(4456, '-', '-', '-', '-', '2024-07-30 14:39:26', '2024-07-30 14:39:26', NULL),
(4457, '-', '-', '-', '-', '2024-07-30 14:53:53', '2024-07-30 14:53:53', NULL),
(4458, '-', '-', '-', '-', '2024-07-30 15:23:53', '2024-07-30 15:23:53', NULL),
(4459, '-', '-', '-', '-', '2024-07-30 15:53:54', '2024-07-30 15:53:54', NULL),
(4460, '-', '-', '-', '-', '2024-07-30 16:23:53', '2024-07-30 16:23:53', NULL),
(4461, '-', '-', '-', '-', '2024-07-30 16:53:55', '2024-07-30 16:53:55', NULL),
(4462, '-', '-', '-', '-', '2024-07-30 16:59:58', '2024-07-30 16:59:58', NULL),
(4463, '-', '-', '-', '-', '2024-07-30 17:07:25', '2024-07-30 17:07:25', NULL),
(4464, '-', '-', '-', '-', '2024-07-30 17:08:06', '2024-07-30 17:08:06', NULL),
(4465, '-', '-', '-', '-', '2024-07-30 17:08:18', '2024-07-30 17:08:18', NULL),
(4466, '-', '-', '-', '-', '2024-07-30 17:17:40', '2024-07-30 17:17:40', NULL),
(4467, '-', '-', '-', '-', '2024-07-30 17:19:26', '2024-07-30 17:19:26', NULL),
(4468, '-', '-', '-', '-', '2024-07-30 17:19:58', '2024-07-30 17:19:58', NULL),
(4469, '-', '-', '-', '-', '2024-07-30 17:20:23', '2024-07-30 17:20:23', NULL),
(4470, '-', '-', '-', '-', '2024-07-30 17:20:45', '2024-07-30 17:20:45', NULL),
(4471, '-', '-', '-', '-', '2024-07-30 17:23:55', '2024-07-30 17:23:55', NULL),
(4472, '-', '-', '-', '-', '2024-07-30 17:53:55', '2024-07-30 17:53:55', NULL),
(4473, '-', '-', '-', '-', '2024-07-30 18:20:45', '2024-07-30 18:20:45', NULL),
(4474, '-', '-', '-', '-', '2024-07-30 18:21:42', '2024-07-30 18:21:42', NULL),
(4475, '-', '-', '-', '-', '2024-07-30 18:22:05', '2024-07-30 18:22:05', NULL),
(4476, '-', '-', '-', '-', '2024-07-30 18:22:26', '2024-07-30 18:22:26', NULL),
(4477, '-', '-', '-', '-', '2024-07-30 18:22:48', '2024-07-30 18:22:48', NULL),
(4478, '-', '-', '-', '-', '2024-07-30 18:22:50', '2024-07-30 18:22:50', NULL);
INSERT INTO `tb_visitors` (`id`, `ip_address`, `browser`, `device`, `platform`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4479, '-', '-', '-', '-', '2024-07-30 18:23:56', '2024-07-30 18:23:56', NULL),
(4480, '-', '-', '-', '-', '2024-07-30 18:24:41', '2024-07-30 18:24:41', NULL),
(4481, '-', '-', '-', '-', '2024-07-30 18:25:30', '2024-07-30 18:25:30', NULL),
(4482, '-', '-', '-', '-', '2024-07-30 18:53:56', '2024-07-30 18:53:56', NULL),
(4483, '-', '-', '-', '-', '2024-07-30 19:17:41', '2024-07-30 19:17:41', NULL),
(4484, '-', '-', '-', '-', '2024-07-30 19:17:43', '2024-07-30 19:17:43', NULL),
(4485, '-', '-', '-', '-', '2024-07-30 19:23:56', '2024-07-30 19:23:56', NULL),
(4486, '-', '-', '-', '-', '2024-07-30 19:53:57', '2024-07-30 19:53:57', NULL),
(4487, '-', '-', '-', '-', '2024-07-30 20:23:58', '2024-07-30 20:23:58', NULL),
(4488, '-', '-', '-', '-', '2024-07-30 20:53:57', '2024-07-30 20:53:57', NULL),
(4489, '-', '-', '-', '-', '2024-07-30 21:23:37', '2024-07-30 21:23:37', NULL),
(4490, '-', '-', '-', '-', '2024-07-30 21:23:58', '2024-07-30 21:23:58', NULL),
(4491, '-', '-', '-', '-', '2024-07-30 21:53:59', '2024-07-30 21:53:59', NULL),
(4492, '-', '-', '-', '-', '2024-07-30 22:23:59', '2024-07-30 22:23:59', NULL),
(4493, '-', '-', '-', '-', '2024-07-30 22:47:56', '2024-07-30 22:47:56', NULL),
(4494, '-', '-', '-', '-', '2024-07-30 22:53:59', '2024-07-30 22:53:59', NULL),
(4495, '-', '-', '-', '-', '2024-07-30 22:58:40', '2024-07-30 22:58:40', NULL),
(4496, '-', '-', '-', '-', '2024-07-30 22:59:41', '2024-07-30 22:59:41', NULL),
(4497, '-', '-', '-', '-', '2024-07-30 23:01:08', '2024-07-30 23:01:08', NULL),
(4498, '-', '-', '-', '-', '2024-07-30 23:02:51', '2024-07-30 23:02:51', NULL),
(4499, '-', '-', '-', '-', '2024-07-30 23:06:22', '2024-07-30 23:06:22', NULL),
(4500, '-', '-', '-', '-', '2024-07-30 23:08:33', '2024-07-30 23:08:33', NULL),
(4501, '-', '-', '-', '-', '2024-07-30 23:24:00', '2024-07-30 23:24:00', NULL),
(4502, '-', '-', '-', '-', '2024-07-30 23:33:43', '2024-07-30 23:33:43', NULL),
(4503, '-', '-', '-', '-', '2024-07-30 23:34:19', '2024-07-30 23:34:19', NULL),
(4504, '-', '-', '-', '-', '2024-07-30 23:34:25', '2024-07-30 23:34:25', NULL),
(4505, '-', '-', '-', '-', '2024-07-30 23:35:24', '2024-07-30 23:35:24', NULL),
(4506, '-', '-', '-', '-', '2024-07-30 23:35:25', '2024-07-30 23:35:25', NULL),
(4507, '-', '-', '-', '-', '2024-07-30 23:54:01', '2024-07-30 23:54:01', NULL),
(4508, '-', '-', '-', '-', '2024-07-31 00:24:02', '2024-07-31 00:24:02', NULL),
(4509, '-', '-', '-', '-', '2024-07-31 00:52:01', '2024-07-31 00:52:01', NULL),
(4510, '-', '-', '-', '-', '2024-07-31 00:52:01', '2024-07-31 00:52:01', NULL),
(4511, '-', '-', '-', '-', '2024-07-31 00:52:03', '2024-07-31 00:52:03', NULL),
(4512, '-', '-', '-', '-', '2024-07-31 00:53:25', '2024-07-31 00:53:25', NULL),
(4513, '-', '-', '-', '-', '2024-07-31 00:54:02', '2024-07-31 00:54:02', NULL),
(4514, '-', '-', '-', '-', '2024-07-31 01:24:02', '2024-07-31 01:24:02', NULL),
(4515, '-', '-', '-', '-', '2024-07-31 01:54:02', '2024-07-31 01:54:02', NULL),
(4516, '-', '-', '-', '-', '2024-07-31 02:24:02', '2024-07-31 02:24:02', NULL),
(4517, '-', '-', '-', '-', '2024-07-31 02:54:03', '2024-07-31 02:54:03', NULL),
(4518, '-', '-', '-', '-', '2024-07-31 03:24:03', '2024-07-31 03:24:03', NULL),
(4519, '-', '-', '-', '-', '2024-07-31 03:54:04', '2024-07-31 03:54:04', NULL),
(4520, '-', '-', '-', '-', '2024-07-31 04:24:04', '2024-07-31 04:24:04', NULL),
(4521, '-', '-', '-', '-', '2024-07-31 04:54:05', '2024-07-31 04:54:05', NULL),
(4522, '-', '-', '-', '-', '2024-07-31 05:13:57', '2024-07-31 05:13:57', NULL),
(4523, '-', '-', '-', '-', '2024-07-31 05:24:05', '2024-07-31 05:24:05', NULL),
(4524, '-', '-', '-', '-', '2024-07-31 05:54:06', '2024-07-31 05:54:06', NULL),
(4525, '-', '-', '-', '-', '2024-07-31 06:24:06', '2024-07-31 06:24:06', NULL),
(4526, '-', '-', '-', '-', '2024-07-31 06:54:07', '2024-07-31 06:54:07', NULL),
(4527, '-', '-', '-', '-', '2024-07-31 07:24:07', '2024-07-31 07:24:07', NULL),
(4528, '-', '-', '-', '-', '2024-07-31 07:51:36', '2024-07-31 07:51:36', NULL),
(4529, '-', '-', '-', '-', '2024-07-31 07:51:42', '2024-07-31 07:51:42', NULL),
(4530, '-', '-', '-', '-', '2024-07-31 07:54:07', '2024-07-31 07:54:07', NULL),
(4531, '-', '-', '-', '-', '2024-07-31 08:24:07', '2024-07-31 08:24:07', NULL),
(4532, '-', '-', '-', '-', '2024-07-31 08:54:08', '2024-07-31 08:54:08', NULL),
(4533, '-', '-', '-', '-', '2024-07-31 09:24:09', '2024-07-31 09:24:09', NULL),
(4534, '-', '-', '-', '-', '2024-07-31 09:54:09', '2024-07-31 09:54:09', NULL),
(4535, '-', '-', '-', '-', '2024-07-31 10:24:11', '2024-07-31 10:24:11', NULL),
(4536, '-', '-', '-', '-', '2024-07-31 10:31:23', '2024-07-31 10:31:23', NULL),
(4537, '-', '-', '-', '-', '2024-07-31 10:31:30', '2024-07-31 10:31:30', NULL),
(4538, '-', '-', '-', '-', '2024-07-31 10:54:10', '2024-07-31 10:54:10', NULL),
(4539, '-', '-', '-', '-', '2024-07-31 11:24:10', '2024-07-31 11:24:10', NULL),
(4540, '-', '-', '-', '-', '2024-07-31 11:54:10', '2024-07-31 11:54:10', NULL),
(4541, '-', '-', '-', '-', '2024-07-31 12:24:10', '2024-07-31 12:24:10', NULL),
(4542, '-', '-', '-', '-', '2024-07-31 12:54:12', '2024-07-31 12:54:12', NULL),
(4543, '-', '-', '-', '-', '2024-07-31 13:24:11', '2024-07-31 13:24:11', NULL),
(4544, '-', '-', '-', '-', '2024-07-31 13:54:26', '2024-07-31 13:54:26', NULL),
(4545, '-', '-', '-', '-', '2024-07-31 14:24:12', '2024-07-31 14:24:12', NULL),
(4546, '-', '-', '-', '-', '2024-07-31 14:54:13', '2024-07-31 14:54:13', NULL),
(4547, '-', '-', '-', '-', '2024-07-31 15:24:13', '2024-07-31 15:24:13', NULL),
(4548, '-', '-', '-', '-', '2024-07-31 15:54:13', '2024-07-31 15:54:13', NULL),
(4549, '-', '-', '-', '-', '2024-07-31 16:24:15', '2024-07-31 16:24:15', NULL),
(4550, '-', '-', '-', '-', '2024-07-31 16:54:14', '2024-07-31 16:54:14', NULL),
(4551, '-', '-', '-', '-', '2024-07-31 17:24:15', '2024-07-31 17:24:15', NULL),
(4552, '-', '-', '-', '-', '2024-07-31 17:54:15', '2024-07-31 17:54:15', NULL),
(4553, '-', '-', '-', '-', '2024-07-31 18:24:16', '2024-07-31 18:24:16', NULL),
(4554, '-', '-', '-', '-', '2024-07-31 18:54:16', '2024-07-31 18:54:16', NULL),
(4555, '-', '-', '-', '-', '2024-07-31 19:24:17', '2024-07-31 19:24:17', NULL),
(4556, '-', '-', '-', '-', '2024-07-31 19:54:16', '2024-07-31 19:54:16', NULL),
(4557, '-', '-', '-', '-', '2024-07-31 20:24:18', '2024-07-31 20:24:18', NULL),
(4558, '-', '-', '-', '-', '2024-07-31 20:54:18', '2024-07-31 20:54:18', NULL),
(4559, '-', '-', '-', '-', '2024-07-31 21:24:18', '2024-07-31 21:24:18', NULL),
(4560, '-', '-', '-', '-', '2024-07-31 21:54:19', '2024-07-31 21:54:19', NULL),
(4561, '-', '-', '-', '-', '2024-07-31 22:24:18', '2024-07-31 22:24:18', NULL),
(4562, '-', '-', '-', '-', '2024-07-31 22:54:19', '2024-07-31 22:54:19', NULL),
(4563, '-', '-', '-', '-', '2024-07-31 23:24:19', '2024-07-31 23:24:19', NULL),
(4564, '-', '-', '-', '-', '2024-07-31 23:54:21', '2024-07-31 23:54:21', NULL),
(4565, '-', '-', '-', '-', '2024-08-01 00:24:20', '2024-08-01 00:24:20', NULL),
(4566, '-', '-', '-', '-', '2024-08-01 00:54:21', '2024-08-01 00:54:21', NULL),
(4567, '-', '-', '-', '-', '2024-08-01 01:24:22', '2024-08-01 01:24:22', NULL),
(4568, '-', '-', '-', '-', '2024-08-01 01:54:22', '2024-08-01 01:54:22', NULL),
(4569, '-', '-', '-', '-', '2024-08-01 02:24:23', '2024-08-01 02:24:23', NULL),
(4570, '-', '-', '-', '-', '2024-08-01 02:54:24', '2024-08-01 02:54:24', NULL),
(4571, '-', '-', '-', '-', '2024-08-01 03:24:25', '2024-08-01 03:24:25', NULL),
(4572, '-', '-', '-', '-', '2024-08-01 03:54:23', '2024-08-01 03:54:23', NULL),
(4573, '-', '-', '-', '-', '2024-08-01 04:24:25', '2024-08-01 04:24:25', NULL),
(4574, '-', '-', '-', '-', '2024-08-01 04:54:25', '2024-08-01 04:54:25', NULL),
(4575, '-', '-', '-', '-', '2024-08-01 05:07:24', '2024-08-01 05:07:24', NULL),
(4576, '-', '-', '-', '-', '2024-08-01 05:07:34', '2024-08-01 05:07:34', NULL),
(4577, '-', '-', '-', '-', '2024-08-01 05:09:19', '2024-08-01 05:09:19', NULL),
(4578, '-', '-', '-', '-', '2024-08-01 05:24:25', '2024-08-01 05:24:25', NULL),
(4579, '-', '-', '-', '-', '2024-08-01 05:33:35', '2024-08-01 05:33:35', NULL),
(4580, '-', '-', '-', '-', '2024-08-01 05:54:27', '2024-08-01 05:54:27', NULL),
(4581, '-', '-', '-', '-', '2024-08-01 06:10:59', '2024-08-01 06:10:59', NULL),
(4582, '-', '-', '-', '-', '2024-08-01 06:24:26', '2024-08-01 06:24:26', NULL),
(4583, '-', '-', '-', '-', '2024-08-01 06:54:27', '2024-08-01 06:54:27', NULL),
(4584, '-', '-', '-', '-', '2024-08-01 07:24:27', '2024-08-01 07:24:27', NULL),
(4585, '-', '-', '-', '-', '2024-08-01 07:54:27', '2024-08-01 07:54:27', NULL),
(4586, '-', '-', '-', '-', '2024-08-01 08:24:29', '2024-08-01 08:24:29', NULL),
(4587, '-', '-', '-', '-', '2024-08-01 08:54:28', '2024-08-01 08:54:28', NULL),
(4588, '-', '-', '-', '-', '2024-08-01 09:24:29', '2024-08-01 09:24:29', NULL),
(4589, '-', '-', '-', '-', '2024-08-01 09:54:29', '2024-08-01 09:54:29', NULL),
(4590, '-', '-', '-', '-', '2024-08-01 10:24:34', '2024-08-01 10:24:34', NULL),
(4591, '-', '-', '-', '-', '2024-08-01 10:54:29', '2024-08-01 10:54:29', NULL),
(4592, '-', '-', '-', '-', '2024-08-01 11:24:30', '2024-08-01 11:24:30', NULL),
(4593, '-', '-', '-', '-', '2024-08-01 11:54:30', '2024-08-01 11:54:30', NULL),
(4594, '-', '-', '-', '-', '2024-08-01 12:24:31', '2024-08-01 12:24:31', NULL),
(4595, '-', '-', '-', '-', '2024-08-01 12:54:31', '2024-08-01 12:54:31', NULL),
(4596, '-', '-', '-', '-', '2024-08-01 13:24:31', '2024-08-01 13:24:31', NULL),
(4597, '-', '-', '-', '-', '2024-08-01 13:54:33', '2024-08-01 13:54:33', NULL),
(4598, '-', '-', '-', '-', '2024-08-01 14:24:33', '2024-08-01 14:24:33', NULL),
(4599, '-', '-', '-', '-', '2024-08-01 14:54:33', '2024-08-01 14:54:33', NULL),
(4600, '-', '-', '-', '-', '2024-08-01 15:24:34', '2024-08-01 15:24:34', NULL),
(4601, '-', '-', '-', '-', '2024-08-01 15:54:33', '2024-08-01 15:54:33', NULL),
(4602, '-', '-', '-', '-', '2024-08-01 16:24:33', '2024-08-01 16:24:33', NULL),
(4603, '-', '-', '-', '-', '2024-08-01 16:54:35', '2024-08-01 16:54:35', NULL),
(4604, '-', '-', '-', '-', '2024-08-01 17:24:35', '2024-08-01 17:24:35', NULL),
(4605, '-', '-', '-', '-', '2024-08-01 17:54:36', '2024-08-01 17:54:36', NULL),
(4606, '-', '-', '-', '-', '2024-08-01 18:24:36', '2024-08-01 18:24:36', NULL),
(4607, '-', '-', '-', '-', '2024-08-01 18:27:47', '2024-08-01 18:27:47', NULL),
(4608, '-', '-', '-', '-', '2024-08-01 18:38:14', '2024-08-01 18:38:14', NULL),
(4609, '-', '-', '-', '-', '2024-08-01 18:54:36', '2024-08-01 18:54:36', NULL),
(4610, '-', '-', '-', '-', '2024-08-01 19:24:14', '2024-08-01 19:24:14', NULL),
(4611, '-', '-', '-', '-', '2024-08-01 19:24:36', '2024-08-01 19:24:36', NULL),
(4612, '-', '-', '-', '-', '2024-08-01 19:41:40', '2024-08-01 19:41:40', NULL),
(4613, '-', '-', '-', '-', '2024-08-01 19:46:45', '2024-08-01 19:46:45', NULL),
(4614, '-', '-', '-', '-', '2024-08-01 19:54:37', '2024-08-01 19:54:37', NULL),
(4615, '-', '-', '-', '-', '2024-08-01 19:56:10', '2024-08-01 19:56:10', NULL),
(4616, '-', '-', '-', '-', '2024-08-01 20:24:37', '2024-08-01 20:24:37', NULL),
(4617, '-', '-', '-', '-', '2024-08-01 20:54:38', '2024-08-01 20:54:38', NULL),
(4618, '-', '-', '-', '-', '2024-08-01 21:24:38', '2024-08-01 21:24:38', NULL),
(4619, '-', '-', '-', '-', '2024-08-01 21:45:17', '2024-08-01 21:45:17', NULL),
(4620, '-', '-', '-', '-', '2024-08-01 21:54:39', '2024-08-01 21:54:39', NULL),
(4621, '-', '-', '-', '-', '2024-08-01 22:24:40', '2024-08-01 22:24:40', NULL),
(4622, '-', '-', '-', '-', '2024-08-01 22:54:39', '2024-08-01 22:54:39', NULL),
(4623, '-', '-', '-', '-', '2024-08-01 23:24:40', '2024-08-01 23:24:40', NULL),
(4624, '-', '-', '-', '-', '2024-08-01 23:54:41', '2024-08-01 23:54:41', NULL),
(4625, '-', '-', '-', '-', '2024-08-02 00:24:41', '2024-08-02 00:24:41', NULL),
(4626, '-', '-', '-', '-', '2024-08-02 00:54:41', '2024-08-02 00:54:41', NULL),
(4627, '-', '-', '-', '-', '2024-08-02 01:24:42', '2024-08-02 01:24:42', NULL),
(4628, '-', '-', '-', '-', '2024-08-02 01:34:15', '2024-08-02 01:34:15', NULL),
(4629, '-', '-', '-', '-', '2024-08-02 01:40:44', '2024-08-02 01:40:44', NULL),
(4630, '-', '-', '-', '-', '2024-08-02 01:40:51', '2024-08-02 01:40:51', NULL),
(4631, '-', '-', '-', '-', '2024-08-02 01:40:51', '2024-08-02 01:40:51', NULL),
(4632, '-', '-', '-', '-', '2024-08-02 01:48:25', '2024-08-02 01:48:25', NULL),
(4633, '-', '-', '-', '-', '2024-08-02 01:54:42', '2024-08-02 01:54:42', NULL),
(4634, '-', '-', '-', '-', '2024-08-02 02:24:42', '2024-08-02 02:24:42', NULL),
(4635, '-', '-', '-', '-', '2024-08-02 02:54:43', '2024-08-02 02:54:43', NULL),
(4636, '-', '-', '-', '-', '2024-08-02 03:24:43', '2024-08-02 03:24:43', NULL),
(4637, '-', '-', '-', '-', '2024-08-02 03:25:22', '2024-08-02 03:25:22', NULL),
(4638, '-', '-', '-', '-', '2024-08-02 03:54:44', '2024-08-02 03:54:44', NULL),
(4639, '-', '-', '-', '-', '2024-08-02 04:24:44', '2024-08-02 04:24:44', NULL),
(4640, '-', '-', '-', '-', '2024-08-02 04:54:45', '2024-08-02 04:54:45', NULL),
(4641, '-', '-', '-', '-', '2024-08-02 05:24:45', '2024-08-02 05:24:45', NULL),
(4642, '-', '-', '-', '-', '2024-08-02 05:54:45', '2024-08-02 05:54:45', NULL),
(4643, '-', '-', '-', '-', '2024-08-02 06:24:46', '2024-08-02 06:24:46', NULL),
(4644, '-', '-', '-', '-', '2024-08-02 06:54:46', '2024-08-02 06:54:46', NULL),
(4645, '-', '-', '-', '-', '2024-08-02 07:07:00', '2024-08-02 07:07:00', NULL),
(4646, '-', '-', '-', '-', '2024-08-02 07:20:34', '2024-08-02 07:20:34', NULL),
(4647, '-', '-', '-', '-', '2024-08-02 07:24:46', '2024-08-02 07:24:46', NULL),
(4648, '-', '-', '-', '-', '2024-08-02 07:54:47', '2024-08-02 07:54:47', NULL),
(4649, '-', '-', '-', '-', '2024-08-02 08:24:47', '2024-08-02 08:24:47', NULL),
(4650, '-', '-', '-', '-', '2024-08-02 08:54:48', '2024-08-02 08:54:48', NULL),
(4651, '-', '-', '-', '-', '2024-08-02 09:24:48', '2024-08-02 09:24:48', NULL),
(4652, '-', '-', '-', '-', '2024-08-02 09:54:48', '2024-08-02 09:54:48', NULL),
(4653, '-', '-', '-', '-', '2024-08-02 10:24:50', '2024-08-02 10:24:50', NULL),
(4654, '-', '-', '-', '-', '2024-08-02 10:54:50', '2024-08-02 10:54:50', NULL),
(4655, '-', '-', '-', '-', '2024-08-02 11:24:50', '2024-08-02 11:24:50', NULL),
(4656, '-', '-', '-', '-', '2024-08-02 11:54:50', '2024-08-02 11:54:50', NULL),
(4657, '-', '-', '-', '-', '2024-08-02 12:24:50', '2024-08-02 12:24:50', NULL),
(4658, '-', '-', '-', '-', '2024-08-02 12:54:51', '2024-08-02 12:54:51', NULL),
(4659, '-', '-', '-', '-', '2024-08-02 13:24:51', '2024-08-02 13:24:51', NULL),
(4660, '-', '-', '-', '-', '2024-08-02 13:54:51', '2024-08-02 13:54:51', NULL),
(4661, '-', '-', '-', '-', '2024-08-02 14:24:51', '2024-08-02 14:24:51', NULL),
(4662, '-', '-', '-', '-', '2024-08-02 14:54:52', '2024-08-02 14:54:52', NULL),
(4663, '-', '-', '-', '-', '2024-08-02 15:24:54', '2024-08-02 15:24:54', NULL),
(4664, '-', '-', '-', '-', '2024-08-02 15:54:53', '2024-08-02 15:54:53', NULL),
(4665, '-', '-', '-', '-', '2024-08-02 16:25:02', '2024-08-02 16:25:02', NULL),
(4666, '-', '-', '-', '-', '2024-08-02 16:54:54', '2024-08-02 16:54:54', NULL),
(4667, '-', '-', '-', '-', '2024-08-02 17:24:57', '2024-08-02 17:24:57', NULL),
(4668, '-', '-', '-', '-', '2024-08-02 17:54:54', '2024-08-02 17:54:54', NULL),
(4669, '-', '-', '-', '-', '2024-08-02 18:24:58', '2024-08-02 18:24:58', NULL),
(4670, '-', '-', '-', '-', '2024-08-02 18:54:56', '2024-08-02 18:54:56', NULL),
(4671, '-', '-', '-', '-', '2024-08-02 19:24:56', '2024-08-02 19:24:56', NULL),
(4672, '-', '-', '-', '-', '2024-08-02 19:54:56', '2024-08-02 19:54:56', NULL),
(4673, '-', '-', '-', '-', '2024-08-02 20:24:56', '2024-08-02 20:24:56', NULL),
(4674, '-', '-', '-', '-', '2024-08-02 20:54:57', '2024-08-02 20:54:57', NULL),
(4675, '-', '-', '-', '-', '2024-08-02 21:24:57', '2024-08-02 21:24:57', NULL),
(4676, '-', '-', '-', '-', '2024-08-02 21:54:58', '2024-08-02 21:54:58', NULL),
(4677, '-', '-', '-', '-', '2024-08-02 22:22:42', '2024-08-02 22:22:42', NULL),
(4678, '-', '-', '-', '-', '2024-08-02 22:24:58', '2024-08-02 22:24:58', NULL),
(4679, '-', '-', '-', '-', '2024-08-02 22:39:16', '2024-08-02 22:39:16', NULL),
(4680, '-', '-', '-', '-', '2024-08-02 22:54:58', '2024-08-02 22:54:58', NULL),
(4681, '-', '-', '-', '-', '2024-08-02 23:24:59', '2024-08-02 23:24:59', NULL),
(4682, '-', '-', '-', '-', '2024-08-02 23:55:00', '2024-08-02 23:55:00', NULL),
(4683, '-', '-', '-', '-', '2024-08-03 00:25:00', '2024-08-03 00:25:00', NULL),
(4684, '-', '-', '-', '-', '2024-08-03 00:55:00', '2024-08-03 00:55:00', NULL),
(4685, '-', '-', '-', '-', '2024-08-03 01:25:02', '2024-08-03 01:25:02', NULL),
(4686, '-', '-', '-', '-', '2024-08-03 01:55:02', '2024-08-03 01:55:02', NULL),
(4687, '-', '-', '-', '-', '2024-08-03 01:59:36', '2024-08-03 01:59:36', NULL),
(4688, '-', '-', '-', '-', '2024-08-03 02:00:36', '2024-08-03 02:00:36', NULL),
(4689, '-', '-', '-', '-', '2024-08-03 02:02:00', '2024-08-03 02:02:00', NULL),
(4690, '-', '-', '-', '-', '2024-08-03 02:28:44', '2024-08-03 02:28:44', NULL),
(4691, '-', '-', '-', '-', '2024-08-03 02:29:00', '2024-08-03 02:29:00', NULL),
(4692, '-', '-', '-', '-', '2024-08-03 02:30:28', '2024-08-03 02:30:28', NULL),
(4693, '-', '-', '-', '-', '2024-08-03 02:30:30', '2024-08-03 02:30:30', NULL),
(4694, '-', '-', '-', '-', '2024-08-03 02:30:50', '2024-08-03 02:30:50', NULL),
(4695, '-', '-', '-', '-', '2024-08-03 02:31:23', '2024-08-03 02:31:23', NULL),
(4696, '-', '-', '-', '-', '2024-08-03 02:31:34', '2024-08-03 02:31:34', NULL),
(4697, '-', '-', '-', '-', '2024-08-03 02:31:46', '2024-08-03 02:31:46', NULL),
(4698, '-', '-', '-', '-', '2024-08-03 02:33:02', '2024-08-03 02:33:02', NULL),
(4699, '-', '-', '-', '-', '2024-08-03 02:33:33', '2024-08-03 02:33:33', NULL),
(4700, '-', '-', '-', '-', '2024-08-03 02:53:08', '2024-08-03 02:53:08', NULL),
(4701, '-', '-', '-', '-', '2024-08-03 03:39:04', '2024-08-03 03:39:04', NULL),
(4702, '-', '-', '-', '-', '2024-08-03 04:26:57', '2024-08-03 04:26:57', NULL),
(4703, '-', '-', '-', '-', '2024-08-03 19:41:30', '2024-08-03 19:41:30', NULL),
(4704, '-', '-', '-', '-', '2024-08-03 21:53:23', '2024-08-03 21:53:23', NULL),
(4705, '-', '-', '-', '-', '2024-08-03 22:05:33', '2024-08-03 22:05:33', NULL),
(4706, '-', '-', '-', '-', '2024-08-04 01:14:52', '2024-08-04 01:14:52', NULL),
(4707, '-', '-', '-', '-', '2024-08-04 01:17:34', '2024-08-04 01:17:34', NULL),
(4708, '-', '-', '-', '-', '2024-08-05 03:39:47', '2024-08-05 03:39:47', NULL),
(4709, '-', '-', '-', '-', '2024-08-05 04:51:24', '2024-08-05 04:51:24', NULL),
(4710, '-', '-', '-', '-', '2024-08-05 06:35:20', '2024-08-05 06:35:20', NULL),
(4711, '-', '-', '-', '-', '2024-08-05 06:37:07', '2024-08-05 06:37:07', NULL),
(4712, '-', '-', '-', '-', '2024-08-06 03:43:07', '2024-08-06 03:43:07', NULL),
(4713, '-', '-', '-', '-', '2024-08-06 03:44:51', '2024-08-06 03:44:51', NULL),
(4714, '-', '-', '-', '-', '2024-08-06 03:47:49', '2024-08-06 03:47:49', NULL),
(4715, '-', '-', '-', '-', '2024-08-06 03:48:04', '2024-08-06 03:48:04', NULL),
(4716, '-', '-', '-', '-', '2024-08-06 03:48:30', '2024-08-06 03:48:30', NULL),
(4717, '-', '-', '-', '-', '2024-08-06 03:49:02', '2024-08-06 03:49:02', NULL),
(4718, '-', '-', '-', '-', '2024-08-06 03:49:46', '2024-08-06 03:49:46', NULL),
(4719, '-', '-', '-', '-', '2024-08-06 03:49:58', '2024-08-06 03:49:58', NULL),
(4720, '-', '-', '-', '-', '2024-08-06 03:50:20', '2024-08-06 03:50:20', NULL),
(4721, '-', '-', '-', '-', '2024-08-06 03:50:41', '2024-08-06 03:50:41', NULL),
(4722, '-', '-', '-', '-', '2024-08-06 03:50:42', '2024-08-06 03:50:42', NULL),
(4723, '-', '-', '-', '-', '2024-08-06 03:50:50', '2024-08-06 03:50:50', NULL),
(4724, '-', '-', '-', '-', '2024-08-06 03:51:08', '2024-08-06 03:51:08', NULL),
(4725, '-', '-', '-', '-', '2024-08-06 03:51:24', '2024-08-06 03:51:24', NULL),
(4726, '-', '-', '-', '-', '2024-08-06 03:51:33', '2024-08-06 03:51:33', NULL),
(4727, '-', '-', '-', '-', '2024-08-06 03:51:40', '2024-08-06 03:51:40', NULL),
(4728, '-', '-', '-', '-', '2024-08-06 03:52:02', '2024-08-06 03:52:02', NULL),
(4729, '-', '-', '-', '-', '2024-08-06 03:52:12', '2024-08-06 03:52:12', NULL),
(4730, '-', '-', '-', '-', '2024-08-06 03:52:15', '2024-08-06 03:52:15', NULL),
(4731, '-', '-', '-', '-', '2024-08-06 03:52:37', '2024-08-06 03:52:37', NULL),
(4732, '-', '-', '-', '-', '2024-08-06 03:53:30', '2024-08-06 03:53:30', NULL),
(4733, '-', '-', '-', '-', '2024-08-06 03:54:35', '2024-08-06 03:54:35', NULL),
(4734, '-', '-', '-', '-', '2024-08-06 03:55:12', '2024-08-06 03:55:12', NULL),
(4735, '-', '-', '-', '-', '2024-08-06 03:55:26', '2024-08-06 03:55:26', NULL),
(4736, '-', '-', '-', '-', '2024-08-06 03:55:41', '2024-08-06 03:55:41', NULL),
(4737, '-', '-', '-', '-', '2024-08-06 03:55:55', '2024-08-06 03:55:55', NULL),
(4738, '-', '-', '-', '-', '2024-08-06 03:55:56', '2024-08-06 03:55:56', NULL),
(4739, '-', '-', '-', '-', '2024-08-06 03:55:57', '2024-08-06 03:55:57', NULL),
(4740, '-', '-', '-', '-', '2024-08-06 03:56:43', '2024-08-06 03:56:43', NULL),
(4741, '-', '-', '-', '-', '2024-08-06 03:56:44', '2024-08-06 03:56:44', NULL),
(4742, '-', '-', '-', '-', '2024-08-06 03:56:53', '2024-08-06 03:56:53', NULL),
(4743, '-', '-', '-', '-', '2024-08-06 03:57:15', '2024-08-06 03:57:15', NULL),
(4744, '-', '-', '-', '-', '2024-08-06 04:00:21', '2024-08-06 04:00:21', NULL),
(4745, '-', '-', '-', '-', '2024-08-06 04:00:21', '2024-08-06 04:00:21', NULL),
(4746, '-', '-', '-', '-', '2024-08-06 04:00:22', '2024-08-06 04:00:22', NULL),
(4747, '-', '-', '-', '-', '2024-08-06 04:00:23', '2024-08-06 04:00:23', NULL),
(4748, '-', '-', '-', '-', '2024-08-06 04:00:33', '2024-08-06 04:00:33', NULL),
(4749, '-', '-', '-', '-', '2024-08-06 04:11:52', '2024-08-06 04:11:52', NULL),
(4750, '-', '-', '-', '-', '2024-08-06 04:13:54', '2024-08-06 04:13:54', NULL),
(4751, '-', '-', '-', '-', '2024-08-06 04:14:42', '2024-08-06 04:14:42', NULL),
(4752, '-', '-', '-', '-', '2024-08-06 04:15:03', '2024-08-06 04:15:03', NULL),
(4753, '-', '-', '-', '-', '2024-08-06 04:15:08', '2024-08-06 04:15:08', NULL),
(4754, '-', '-', '-', '-', '2024-08-06 04:15:09', '2024-08-06 04:15:09', NULL),
(4755, '-', '-', '-', '-', '2024-08-06 04:15:25', '2024-08-06 04:15:25', NULL),
(4756, '-', '-', '-', '-', '2024-08-06 04:16:24', '2024-08-06 04:16:24', NULL),
(4757, '-', '-', '-', '-', '2024-08-06 04:17:10', '2024-08-06 04:17:10', NULL),
(4758, '-', '-', '-', '-', '2024-08-06 04:17:26', '2024-08-06 04:17:26', NULL),
(4759, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:18:16', '2024-08-06 04:18:16', NULL),
(4760, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:19:24', '2024-08-06 04:19:24', NULL),
(4761, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:19:47', '2024-08-06 04:19:47', NULL),
(4762, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:19:48', '2024-08-06 04:19:48', NULL),
(4763, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:19:53', '2024-08-06 04:19:53', NULL),
(4764, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:20:11', '2024-08-06 04:20:11', NULL),
(4765, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:20:35', '2024-08-06 04:20:35', NULL),
(4766, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:20:37', '2024-08-06 04:20:37', NULL),
(4767, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:20:38', '2024-08-06 04:20:38', NULL),
(4768, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:20:50', '2024-08-06 04:20:50', NULL),
(4769, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:20:50', '2024-08-06 04:20:50', NULL),
(4770, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:21:04', '2024-08-06 04:21:04', NULL),
(4771, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:21:30', '2024-08-06 04:21:30', NULL),
(4772, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:24:16', '2024-08-06 04:24:16', NULL),
(4773, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:27:07', '2024-08-06 04:27:07', NULL),
(4774, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:33:49', '2024-08-06 04:33:49', NULL),
(4775, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:36:25', '2024-08-06 04:36:25', NULL),
(4776, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:37:20', '2024-08-06 04:37:20', NULL),
(4777, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 04:37:31', '2024-08-06 04:37:31', NULL),
(4778, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 06:25:53', '2024-08-06 06:25:53', NULL),
(4779, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 06:27:35', '2024-08-06 06:27:35', NULL),
(4780, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 06:28:41', '2024-08-06 06:28:41', NULL),
(4781, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 06:28:43', '2024-08-06 06:28:43', NULL),
(4782, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 06:28:45', '2024-08-06 06:28:45', NULL),
(4783, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-06 06:30:09', '2024-08-06 06:30:09', NULL),
(4784, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-07 00:46:03', '2024-08-07 00:46:03', NULL),
(4785, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-07 03:27:19', '2024-08-07 03:27:19', NULL),
(4786, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-07 03:36:30', '2024-08-07 03:36:30', NULL),
(4787, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:04:30', '2024-08-08 06:04:30', NULL),
(4788, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:04:55', '2024-08-08 06:04:55', NULL),
(4789, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:04:55', '2024-08-08 06:04:55', NULL),
(4790, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:05:06', '2024-08-08 06:05:06', NULL),
(4791, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:05:07', '2024-08-08 06:05:07', NULL),
(4792, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:05:13', '2024-08-08 06:05:13', NULL),
(4793, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:05:33', '2024-08-08 06:05:33', NULL),
(4794, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:05:40', '2024-08-08 06:05:40', NULL),
(4795, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:05:55', '2024-08-08 06:05:55', NULL),
(4796, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:05:56', '2024-08-08 06:05:56', NULL),
(4797, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:09:44', '2024-08-08 06:09:44', NULL),
(4798, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:10:32', '2024-08-08 06:10:32', NULL),
(4799, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:10:32', '2024-08-08 06:10:32', NULL),
(4800, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:11:10', '2024-08-08 06:11:10', NULL),
(4801, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:14:18', '2024-08-08 06:14:18', NULL),
(4802, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:15:02', '2024-08-08 06:15:02', NULL),
(4803, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:15:02', '2024-08-08 06:15:02', NULL),
(4804, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:16:05', '2024-08-08 06:16:05', NULL),
(4805, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:16:24', '2024-08-08 06:16:24', NULL),
(4806, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:16:29', '2024-08-08 06:16:29', NULL),
(4807, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:16:30', '2024-08-08 06:16:30', NULL),
(4808, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:16:57', '2024-08-08 06:16:57', NULL),
(4809, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:17:17', '2024-08-08 06:17:17', NULL),
(4810, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:17:19', '2024-08-08 06:17:19', NULL),
(4811, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:17:53', '2024-08-08 06:17:53', NULL),
(4812, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:17:54', '2024-08-08 06:17:54', NULL),
(4813, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:18:02', '2024-08-08 06:18:02', NULL),
(4814, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:18:07', '2024-08-08 06:18:07', NULL),
(4815, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:18:08', '2024-08-08 06:18:08', NULL),
(4816, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:18:20', '2024-08-08 06:18:20', NULL),
(4817, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:18:21', '2024-08-08 06:18:21', NULL),
(4818, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:18:22', '2024-08-08 06:18:22', NULL),
(4819, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:18:28', '2024-08-08 06:18:28', NULL),
(4820, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:18:36', '2024-08-08 06:18:36', NULL),
(4821, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:19:05', '2024-08-08 06:19:05', NULL),
(4822, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:19:08', '2024-08-08 06:19:08', NULL),
(4823, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:19:22', '2024-08-08 06:19:22', NULL),
(4824, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:19:24', '2024-08-08 06:19:24', NULL),
(4825, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:19:28', '2024-08-08 06:19:28', NULL),
(4826, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:19:29', '2024-08-08 06:19:29', NULL),
(4827, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:22:15', '2024-08-08 06:22:15', NULL),
(4828, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:22:59', '2024-08-08 06:22:59', NULL),
(4829, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:23:20', '2024-08-08 06:23:20', NULL),
(4830, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:26:45', '2024-08-08 06:26:45', NULL),
(4831, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:27:12', '2024-08-08 06:27:12', NULL),
(4832, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:27:30', '2024-08-08 06:27:30', NULL),
(4833, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:27:48', '2024-08-08 06:27:48', NULL),
(4834, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:28:21', '2024-08-08 06:28:21', NULL),
(4835, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:32:23', '2024-08-08 06:32:23', NULL),
(4836, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:32:38', '2024-08-08 06:32:38', NULL),
(4837, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:51:09', '2024-08-08 06:51:09', NULL),
(4838, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:53:55', '2024-08-08 06:53:55', NULL),
(4839, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:54:07', '2024-08-08 06:54:07', NULL),
(4840, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:54:30', '2024-08-08 06:54:30', NULL),
(4841, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:54:39', '2024-08-08 06:54:39', NULL),
(4842, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:55:08', '2024-08-08 06:55:08', NULL),
(4843, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:55:18', '2024-08-08 06:55:18', NULL),
(4844, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:55:48', '2024-08-08 06:55:48', NULL),
(4845, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:57:40', '2024-08-08 06:57:40', NULL),
(4846, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-08 06:58:17', '2024-08-08 06:58:17', NULL),
(4847, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:31:08', '2024-08-09 23:31:08', NULL),
(4848, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:33:21', '2024-08-09 23:33:21', NULL),
(4849, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:34:35', '2024-08-09 23:34:35', NULL),
(4850, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:34:49', '2024-08-09 23:34:49', NULL),
(4851, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:35:00', '2024-08-09 23:35:00', NULL),
(4852, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:35:08', '2024-08-09 23:35:08', NULL),
(4853, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:35:14', '2024-08-09 23:35:14', NULL),
(4854, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:35:16', '2024-08-09 23:35:16', NULL),
(4855, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:35:30', '2024-08-09 23:35:30', NULL),
(4856, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:35:40', '2024-08-09 23:35:40', NULL),
(4857, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:36:01', '2024-08-09 23:36:01', NULL),
(4858, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:36:10', '2024-08-09 23:36:10', NULL),
(4859, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:42:51', '2024-08-09 23:42:51', NULL),
(4860, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:43:22', '2024-08-09 23:43:22', NULL),
(4861, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:44:27', '2024-08-09 23:44:27', NULL),
(4862, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:45:49', '2024-08-09 23:45:49', NULL),
(4863, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:46:50', '2024-08-09 23:46:50', NULL),
(4864, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:48:28', '2024-08-09 23:48:28', NULL),
(4865, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:49:01', '2024-08-09 23:49:01', NULL),
(4866, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:49:07', '2024-08-09 23:49:07', NULL),
(4867, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:49:17', '2024-08-09 23:49:17', NULL),
(4868, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:49:33', '2024-08-09 23:49:33', NULL),
(4869, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:49:41', '2024-08-09 23:49:41', NULL),
(4870, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:54:09', '2024-08-09 23:54:09', NULL),
(4871, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:54:17', '2024-08-09 23:54:17', NULL),
(4872, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:54:42', '2024-08-09 23:54:42', NULL),
(4873, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:54:49', '2024-08-09 23:54:49', NULL),
(4874, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:54:57', '2024-08-09 23:54:57', NULL),
(4875, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:55:15', '2024-08-09 23:55:15', NULL),
(4876, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:55:30', '2024-08-09 23:55:30', NULL),
(4877, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:55:47', '2024-08-09 23:55:47', NULL),
(4878, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:57:30', '2024-08-09 23:57:30', NULL),
(4879, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:58:17', '2024-08-09 23:58:17', NULL),
(4880, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:58:46', '2024-08-09 23:58:46', NULL),
(4881, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:59:36', '2024-08-09 23:59:36', NULL),
(4882, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-09 23:59:45', '2024-08-09 23:59:45', NULL),
(4883, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:01:52', '2024-08-10 00:01:52', NULL),
(4884, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:02:01', '2024-08-10 00:02:01', NULL),
(4885, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:02:26', '2024-08-10 00:02:26', NULL),
(4886, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:02:50', '2024-08-10 00:02:50', NULL),
(4887, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:02:55', '2024-08-10 00:02:55', NULL),
(4888, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:03:12', '2024-08-10 00:03:12', NULL),
(4889, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:03:29', '2024-08-10 00:03:29', NULL),
(4890, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:03:36', '2024-08-10 00:03:36', NULL),
(4891, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:03:44', '2024-08-10 00:03:44', NULL),
(4892, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:04:09', '2024-08-10 00:04:09', NULL),
(4893, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:04:15', '2024-08-10 00:04:15', NULL),
(4894, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:05:31', '2024-08-10 00:05:31', NULL),
(4895, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:05:38', '2024-08-10 00:05:38', NULL),
(4896, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:06:01', '2024-08-10 00:06:01', NULL),
(4897, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:06:13', '2024-08-10 00:06:13', NULL),
(4898, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:06:15', '2024-08-10 00:06:15', NULL);
INSERT INTO `tb_visitors` (`id`, `ip_address`, `browser`, `device`, `platform`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4899, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:06:21', '2024-08-10 00:06:21', NULL),
(4900, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:06:46', '2024-08-10 00:06:46', NULL),
(4901, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:06:53', '2024-08-10 00:06:53', NULL),
(4902, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:07:10', '2024-08-10 00:07:10', NULL),
(4903, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:07:16', '2024-08-10 00:07:16', NULL),
(4904, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:07:25', '2024-08-10 00:07:25', NULL),
(4905, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:07:31', '2024-08-10 00:07:31', NULL),
(4906, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:07:54', '2024-08-10 00:07:54', NULL),
(4907, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:08:19', '2024-08-10 00:08:19', NULL),
(4908, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:08:25', '2024-08-10 00:08:25', NULL),
(4909, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:09:04', '2024-08-10 00:09:04', NULL),
(4910, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:09:07', '2024-08-10 00:09:07', NULL),
(4911, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:09:13', '2024-08-10 00:09:13', NULL),
(4912, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:09:29', '2024-08-10 00:09:29', NULL),
(4913, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:09:42', '2024-08-10 00:09:42', NULL),
(4914, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:09:48', '2024-08-10 00:09:48', NULL),
(4915, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:09:56', '2024-08-10 00:09:56', NULL),
(4916, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:10:12', '2024-08-10 00:10:12', NULL),
(4917, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:10:30', '2024-08-10 00:10:30', NULL),
(4918, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:10:55', '2024-08-10 00:10:55', NULL),
(4919, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:11:02', '2024-08-10 00:11:02', NULL),
(4920, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:11:39', '2024-08-10 00:11:39', NULL),
(4921, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:12:16', '2024-08-10 00:12:16', NULL),
(4922, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:12:24', '2024-08-10 00:12:24', NULL),
(4923, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:12:41', '2024-08-10 00:12:41', NULL),
(4924, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:12:46', '2024-08-10 00:12:46', NULL),
(4925, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:12:54', '2024-08-10 00:12:54', NULL),
(4926, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:13:02', '2024-08-10 00:13:02', NULL),
(4927, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:13:17', '2024-08-10 00:13:17', NULL),
(4928, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:13:40', '2024-08-10 00:13:40', NULL),
(4929, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:13:45', '2024-08-10 00:13:45', NULL),
(4930, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:13:52', '2024-08-10 00:13:52', NULL),
(4931, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:14:04', '2024-08-10 00:14:04', NULL),
(4932, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:14:36', '2024-08-10 00:14:36', NULL),
(4933, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:15:21', '2024-08-10 00:15:21', NULL),
(4934, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:15:29', '2024-08-10 00:15:29', NULL),
(4935, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:16:39', '2024-08-10 00:16:39', NULL),
(4936, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:16:44', '2024-08-10 00:16:44', NULL),
(4937, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:18:28', '2024-08-10 00:18:28', NULL),
(4938, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:18:33', '2024-08-10 00:18:33', NULL),
(4939, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:18:37', '2024-08-10 00:18:37', NULL),
(4940, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:18:44', '2024-08-10 00:18:44', NULL),
(4941, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:19:24', '2024-08-10 00:19:24', NULL),
(4942, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:19:58', '2024-08-10 00:19:58', NULL),
(4943, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:20:15', '2024-08-10 00:20:15', NULL),
(4944, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:20:32', '2024-08-10 00:20:32', NULL),
(4945, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:21:22', '2024-08-10 00:21:22', NULL),
(4946, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:21:27', '2024-08-10 00:21:27', NULL),
(4947, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:21:44', '2024-08-10 00:21:44', NULL),
(4948, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:21:49', '2024-08-10 00:21:49', NULL),
(4949, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:21:55', '2024-08-10 00:21:55', NULL),
(4950, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:22:58', '2024-08-10 00:22:58', NULL),
(4951, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:24:24', '2024-08-10 00:24:24', NULL),
(4952, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:24:40', '2024-08-10 00:24:40', NULL),
(4953, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:24:41', '2024-08-10 00:24:41', NULL),
(4954, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:24:48', '2024-08-10 00:24:48', NULL),
(4955, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:25:12', '2024-08-10 00:25:12', NULL),
(4956, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:25:18', '2024-08-10 00:25:18', NULL),
(4957, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:26:00', '2024-08-10 00:26:00', NULL),
(4958, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:26:05', '2024-08-10 00:26:05', NULL),
(4959, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:26:21', '2024-08-10 00:26:21', NULL),
(4960, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:28:51', '2024-08-10 00:28:51', NULL),
(4961, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:29:28', '2024-08-10 00:29:28', NULL),
(4962, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:29:42', '2024-08-10 00:29:42', NULL),
(4963, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:30:01', '2024-08-10 00:30:01', NULL),
(4964, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:30:29', '2024-08-10 00:30:29', NULL),
(4965, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:30:41', '2024-08-10 00:30:41', NULL),
(4966, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:31:18', '2024-08-10 00:31:18', NULL),
(4967, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:31:37', '2024-08-10 00:31:37', NULL),
(4968, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:32:54', '2024-08-10 00:32:54', NULL),
(4969, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:33:08', '2024-08-10 00:33:08', NULL),
(4970, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:33:14', '2024-08-10 00:33:14', NULL),
(4971, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:34:22', '2024-08-10 00:34:22', NULL),
(4972, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:35:10', '2024-08-10 00:35:10', NULL),
(4973, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:35:27', '2024-08-10 00:35:27', NULL),
(4974, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-10 00:36:20', '2024-08-10 00:36:20', NULL),
(4975, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-10 00:37:26', '2024-08-10 00:37:26', NULL),
(4976, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-10 00:37:38', '2024-08-10 00:37:38', NULL),
(4977, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 00:47:10', '2024-08-10 00:47:10', NULL),
(4978, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 01:42:57', '2024-08-10 01:42:57', NULL),
(4979, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 01:55:19', '2024-08-10 01:55:19', NULL),
(4980, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:06:46', '2024-08-10 02:06:46', NULL),
(4981, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:06:47', '2024-08-10 02:06:47', NULL),
(4982, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:07:02', '2024-08-10 02:07:02', NULL),
(4983, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:09:44', '2024-08-10 02:09:44', NULL),
(4984, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:10:17', '2024-08-10 02:10:17', NULL),
(4985, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:10:29', '2024-08-10 02:10:29', NULL),
(4986, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:11:03', '2024-08-10 02:11:03', NULL),
(4987, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:11:19', '2024-08-10 02:11:19', NULL),
(4988, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:11:26', '2024-08-10 02:11:26', NULL),
(4989, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:11:34', '2024-08-10 02:11:34', NULL),
(4990, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:57:47', '2024-08-10 02:57:47', NULL),
(4991, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:58:04', '2024-08-10 02:58:04', NULL),
(4992, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 02:59:32', '2024-08-10 02:59:32', NULL),
(4993, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:00:21', '2024-08-10 03:00:21', NULL),
(4994, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:00:40', '2024-08-10 03:00:40', NULL),
(4995, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:00:52', '2024-08-10 03:00:52', NULL),
(4996, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:01:06', '2024-08-10 03:01:06', NULL),
(4997, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:01:16', '2024-08-10 03:01:16', NULL),
(4998, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:01:27', '2024-08-10 03:01:27', NULL),
(4999, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:02:52', '2024-08-10 03:02:52', NULL),
(5000, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:03:04', '2024-08-10 03:03:04', NULL),
(5001, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:03:12', '2024-08-10 03:03:12', NULL),
(5002, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:03:36', '2024-08-10 03:03:36', NULL),
(5003, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:04:18', '2024-08-10 03:04:18', NULL),
(5004, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:04:32', '2024-08-10 03:04:32', NULL),
(5005, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-10 03:12:02', '2024-08-10 03:12:02', NULL),
(5006, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 05:13:36', '2024-08-14 05:13:36', NULL),
(5007, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 05:13:52', '2024-08-14 05:13:52', NULL),
(5008, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 05:13:59', '2024-08-14 05:13:59', NULL),
(5009, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 05:14:54', '2024-08-14 05:14:54', NULL),
(5010, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 05:15:05', '2024-08-14 05:15:05', NULL),
(5011, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 05:15:20', '2024-08-14 05:15:20', NULL),
(5012, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 05:15:31', '2024-08-14 05:15:31', NULL),
(5013, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 05:16:19', '2024-08-14 05:16:19', NULL),
(5014, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 05:18:31', '2024-08-14 05:18:31', NULL),
(5015, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 06:25:02', '2024-08-14 06:25:02', NULL),
(5016, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 06:27:15', '2024-08-14 06:27:15', NULL),
(5017, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:13:23', '2024-08-14 07:13:23', NULL),
(5018, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:14:25', '2024-08-14 07:14:25', NULL),
(5019, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:15:47', '2024-08-14 07:15:47', NULL),
(5020, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:16:01', '2024-08-14 07:16:01', NULL),
(5021, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:17:58', '2024-08-14 07:17:58', NULL),
(5022, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:18:46', '2024-08-14 07:18:46', NULL),
(5023, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:19:27', '2024-08-14 07:19:27', NULL),
(5024, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:19:43', '2024-08-14 07:19:43', NULL),
(5025, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:20:23', '2024-08-14 07:20:23', NULL),
(5026, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:20:39', '2024-08-14 07:20:39', NULL),
(5027, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:21:32', '2024-08-14 07:21:32', NULL),
(5028, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:21:54', '2024-08-14 07:21:54', NULL),
(5029, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:23:00', '2024-08-14 07:23:00', NULL),
(5030, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:25:15', '2024-08-14 07:25:15', NULL),
(5031, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:28:08', '2024-08-14 07:28:08', NULL),
(5032, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:28:43', '2024-08-14 07:28:43', NULL),
(5033, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:29:28', '2024-08-14 07:29:28', NULL),
(5034, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:31:13', '2024-08-14 07:31:13', NULL),
(5035, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:32:56', '2024-08-14 07:32:56', NULL),
(5036, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-14 07:34:45', '2024-08-14 07:34:45', NULL),
(5037, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-14 07:36:00', '2024-08-14 07:36:00', NULL),
(5038, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-14 07:36:20', '2024-08-14 07:36:20', NULL),
(5039, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-14 07:37:20', '2024-08-14 07:37:20', NULL),
(5040, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-14 07:37:43', '2024-08-14 07:37:43', NULL),
(5041, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-14 07:37:48', '2024-08-14 07:37:48', NULL),
(5042, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-14 07:38:11', '2024-08-14 07:38:11', NULL),
(5043, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:41:37', '2024-08-14 07:41:37', NULL),
(5044, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-14 07:41:48', '2024-08-14 07:41:48', NULL),
(5045, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 05:36:00', '2024-08-15 05:36:00', NULL),
(5046, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 05:36:44', '2024-08-15 05:36:44', NULL),
(5047, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 05:45:01', '2024-08-15 05:45:01', NULL),
(5048, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 05:45:50', '2024-08-15 05:45:50', NULL),
(5049, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 05:46:40', '2024-08-15 05:46:40', NULL),
(5050, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 05:49:39', '2024-08-15 05:49:39', NULL),
(5051, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 05:55:41', '2024-08-15 05:55:41', NULL),
(5052, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:00:30', '2024-08-15 06:00:30', NULL),
(5053, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:13:58', '2024-08-15 06:13:58', NULL),
(5054, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:14:29', '2024-08-15 06:14:29', NULL),
(5055, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:15:18', '2024-08-15 06:15:18', NULL),
(5056, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:15:30', '2024-08-15 06:15:30', NULL),
(5057, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:15:43', '2024-08-15 06:15:43', NULL),
(5058, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:18:38', '2024-08-15 06:18:38', NULL),
(5059, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:20:17', '2024-08-15 06:20:17', NULL),
(5060, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:21:24', '2024-08-15 06:21:24', NULL),
(5061, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:24:21', '2024-08-15 06:24:21', NULL),
(5062, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:24:36', '2024-08-15 06:24:36', NULL),
(5063, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:25:38', '2024-08-15 06:25:38', NULL),
(5064, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:26:17', '2024-08-15 06:26:17', NULL),
(5065, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:26:35', '2024-08-15 06:26:35', NULL),
(5066, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:26:57', '2024-08-15 06:26:57', NULL),
(5067, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:27:17', '2024-08-15 06:27:17', NULL),
(5068, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:27:53', '2024-08-15 06:27:53', NULL),
(5069, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:28:49', '2024-08-15 06:28:49', NULL),
(5070, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:29:59', '2024-08-15 06:29:59', NULL),
(5071, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:30:03', '2024-08-15 06:30:03', NULL),
(5072, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:33:11', '2024-08-15 06:33:11', NULL),
(5073, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:33:44', '2024-08-15 06:33:44', NULL),
(5074, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:34:06', '2024-08-15 06:34:06', NULL),
(5075, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:34:22', '2024-08-15 06:34:22', NULL),
(5076, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:39:19', '2024-08-15 06:39:19', NULL),
(5077, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:39:45', '2024-08-15 06:39:45', NULL),
(5078, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:40:37', '2024-08-15 06:40:37', NULL),
(5079, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:42:44', '2024-08-15 06:42:44', NULL),
(5080, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:43:29', '2024-08-15 06:43:29', NULL),
(5081, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:43:32', '2024-08-15 06:43:32', NULL),
(5082, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:44:50', '2024-08-15 06:44:50', NULL),
(5083, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:45:09', '2024-08-15 06:45:09', NULL),
(5084, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:45:34', '2024-08-15 06:45:34', NULL),
(5085, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:45:55', '2024-08-15 06:45:55', NULL),
(5086, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:46:09', '2024-08-15 06:46:09', NULL),
(5087, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:46:21', '2024-08-15 06:46:21', NULL),
(5088, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:46:30', '2024-08-15 06:46:30', NULL),
(5089, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:46:43', '2024-08-15 06:46:43', NULL),
(5090, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:46:55', '2024-08-15 06:46:55', NULL),
(5091, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:47:08', '2024-08-15 06:47:08', NULL),
(5092, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:47:19', '2024-08-15 06:47:19', NULL),
(5093, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:47:38', '2024-08-15 06:47:38', NULL),
(5094, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:47:46', '2024-08-15 06:47:46', NULL),
(5095, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:49:19', '2024-08-15 06:49:19', NULL),
(5096, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:49:34', '2024-08-15 06:49:34', NULL),
(5097, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:50:52', '2024-08-15 06:50:52', NULL),
(5098, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:51:28', '2024-08-15 06:51:28', NULL),
(5099, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:51:46', '2024-08-15 06:51:46', NULL),
(5100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:52:32', '2024-08-15 06:52:32', NULL),
(5101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:53:32', '2024-08-15 06:53:32', NULL),
(5102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:53:55', '2024-08-15 06:53:55', NULL),
(5103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:54:24', '2024-08-15 06:54:24', NULL),
(5104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:55:10', '2024-08-15 06:55:10', NULL),
(5105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:57:28', '2024-08-15 06:57:28', NULL),
(5106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:57:47', '2024-08-15 06:57:47', NULL),
(5107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:58:04', '2024-08-15 06:58:04', NULL),
(5108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:58:52', '2024-08-15 06:58:52', NULL),
(5109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 06:59:20', '2024-08-15 06:59:20', NULL),
(5110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:00:02', '2024-08-15 07:00:02', NULL),
(5111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:00:35', '2024-08-15 07:00:35', NULL),
(5112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:00:51', '2024-08-15 07:00:51', NULL),
(5113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:01:14', '2024-08-15 07:01:14', NULL),
(5114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:01:30', '2024-08-15 07:01:30', NULL),
(5115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:02:00', '2024-08-15 07:02:00', NULL),
(5116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:02:18', '2024-08-15 07:02:18', NULL),
(5117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:02:35', '2024-08-15 07:02:35', NULL),
(5118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:03:09', '2024-08-15 07:03:09', NULL),
(5119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:03:39', '2024-08-15 07:03:39', NULL),
(5120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:05:15', '2024-08-15 07:05:15', NULL),
(5121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:05:36', '2024-08-15 07:05:36', NULL),
(5122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:06:04', '2024-08-15 07:06:04', NULL),
(5123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:06:20', '2024-08-15 07:06:20', NULL),
(5124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:06:42', '2024-08-15 07:06:42', NULL),
(5125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:06:52', '2024-08-15 07:06:52', NULL),
(5126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:07:12', '2024-08-15 07:07:12', NULL),
(5127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:12:59', '2024-08-15 07:12:59', NULL),
(5128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:13:10', '2024-08-15 07:13:10', NULL),
(5129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:14:15', '2024-08-15 07:14:15', NULL),
(5130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:15:45', '2024-08-15 07:15:45', NULL),
(5131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:16:23', '2024-08-15 07:16:23', NULL),
(5132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '-', '-', '2024-08-15 07:18:01', '2024-08-15 07:18:01', NULL),
(5133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:15:36', '2024-08-27 06:15:36', NULL),
(5134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:15:42', '2024-08-27 06:15:42', NULL),
(5135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:16:10', '2024-08-27 06:16:10', NULL),
(5136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:18:07', '2024-08-27 06:18:07', NULL),
(5137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:18:51', '2024-08-27 06:18:51', NULL),
(5138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:34:02', '2024-08-27 06:34:02', NULL),
(5139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:35:28', '2024-08-27 06:35:28', NULL),
(5140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:36:11', '2024-08-27 06:36:11', NULL),
(5141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:36:16', '2024-08-27 06:36:16', NULL),
(5142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:36:53', '2024-08-27 06:36:53', NULL),
(5143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:40:15', '2024-08-27 06:40:15', NULL),
(5144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:41:03', '2024-08-27 06:41:03', NULL),
(5145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:41:40', '2024-08-27 06:41:40', NULL),
(5146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:41:51', '2024-08-27 06:41:51', NULL),
(5147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:43:07', '2024-08-27 06:43:07', NULL),
(5148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:44:45', '2024-08-27 06:44:45', NULL),
(5149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:45:08', '2024-08-27 06:45:08', NULL),
(5150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:45:28', '2024-08-27 06:45:28', NULL),
(5151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:45:48', '2024-08-27 06:45:48', NULL);
INSERT INTO `tb_visitors` (`id`, `ip_address`, `browser`, `device`, `platform`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:46:26', '2024-08-27 06:46:26', NULL),
(5153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:46:36', '2024-08-27 06:46:36', NULL),
(5154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:46:54', '2024-08-27 06:46:54', NULL),
(5155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:47:05', '2024-08-27 06:47:05', NULL),
(5156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:47:17', '2024-08-27 06:47:17', NULL),
(5157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:47:34', '2024-08-27 06:47:34', NULL),
(5158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:48:01', '2024-08-27 06:48:01', NULL),
(5159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:48:18', '2024-08-27 06:48:18', NULL),
(5160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:54:38', '2024-08-27 06:54:38', NULL),
(5161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:55:05', '2024-08-27 06:55:05', NULL),
(5162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:57:59', '2024-08-27 06:57:59', NULL),
(5163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:58:50', '2024-08-27 06:58:50', NULL),
(5164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:58:55', '2024-08-27 06:58:55', NULL),
(5165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 06:58:57', '2024-08-27 06:58:57', NULL),
(5166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 07:08:11', '2024-08-27 07:08:11', NULL),
(5167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 07:14:10', '2024-08-27 07:14:10', NULL),
(5168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 07:22:16', '2024-08-27 07:22:16', NULL),
(5169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-27 07:22:41', '2024-08-27 07:22:41', NULL),
(5170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:44:28', '2024-08-30 03:44:28', NULL),
(5171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:46:53', '2024-08-30 03:46:53', NULL),
(5172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:47:20', '2024-08-30 03:47:20', NULL),
(5173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:48:54', '2024-08-30 03:48:54', NULL),
(5174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:49:16', '2024-08-30 03:49:16', NULL),
(5175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:49:46', '2024-08-30 03:49:46', NULL),
(5176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:51:42', '2024-08-30 03:51:42', NULL),
(5177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:52:26', '2024-08-30 03:52:26', NULL),
(5178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:53:03', '2024-08-30 03:53:03', NULL),
(5179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:53:21', '2024-08-30 03:53:21', NULL),
(5180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 03:55:04', '2024-08-30 03:55:04', NULL),
(5181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 04:20:16', '2024-08-30 04:20:16', NULL),
(5182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 04:21:21', '2024-08-30 04:21:21', NULL),
(5183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 04:21:37', '2024-08-30 04:21:37', NULL),
(5184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 04:22:03', '2024-08-30 04:22:03', NULL),
(5185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 04:44:45', '2024-08-30 04:44:45', NULL),
(5186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 20:27:49', '2024-08-30 20:27:49', NULL),
(5187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 21:17:50', '2024-08-30 21:17:50', NULL),
(5188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 21:19:28', '2024-08-30 21:19:28', NULL),
(5189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 21:19:38', '2024-08-30 21:19:38', NULL),
(5190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 21:19:46', '2024-08-30 21:19:46', NULL),
(5191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 21:19:58', '2024-08-30 21:19:58', NULL),
(5192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 21:20:06', '2024-08-30 21:20:06', NULL),
(5193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 21:20:34', '2024-08-30 21:20:34', NULL),
(5194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:28:54', '2024-08-30 23:28:54', NULL),
(5195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:47:17', '2024-08-30 23:47:17', NULL),
(5196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:52:28', '2024-08-30 23:52:28', NULL),
(5197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:53:16', '2024-08-30 23:53:16', NULL),
(5198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:53:42', '2024-08-30 23:53:42', NULL),
(5199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:53:51', '2024-08-30 23:53:51', NULL),
(5200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:54:03', '2024-08-30 23:54:03', NULL),
(5201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:55:09', '2024-08-30 23:55:09', NULL),
(5202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:56:19', '2024-08-30 23:56:19', NULL),
(5203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:56:32', '2024-08-30 23:56:32', NULL),
(5204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:56:42', '2024-08-30 23:56:42', NULL),
(5205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:56:50', '2024-08-30 23:56:50', NULL),
(5206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:56:54', '2024-08-30 23:56:54', NULL),
(5207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:56:59', '2024-08-30 23:56:59', NULL),
(5208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:57:02', '2024-08-30 23:57:02', NULL),
(5209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:57:20', '2024-08-30 23:57:20', NULL),
(5210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:57:51', '2024-08-30 23:57:51', NULL),
(5211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:57:57', '2024-08-30 23:57:57', NULL),
(5212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:58:03', '2024-08-30 23:58:03', NULL),
(5213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:58:35', '2024-08-30 23:58:35', NULL),
(5214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:58:41', '2024-08-30 23:58:41', NULL),
(5215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:58:52', '2024-08-30 23:58:52', NULL),
(5216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:58:56', '2024-08-30 23:58:56', NULL),
(5217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:59:16', '2024-08-30 23:59:16', NULL),
(5218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-30 23:59:46', '2024-08-30 23:59:46', NULL),
(5219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:00:02', '2024-08-31 00:00:02', NULL),
(5220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:00:26', '2024-08-31 00:00:26', NULL),
(5221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:00:45', '2024-08-31 00:00:45', NULL),
(5222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:00:53', '2024-08-31 00:00:53', NULL),
(5223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:01:01', '2024-08-31 00:01:01', NULL),
(5224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:03:48', '2024-08-31 00:03:48', NULL),
(5225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:04:45', '2024-08-31 00:04:45', NULL),
(5226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:04:57', '2024-08-31 00:04:57', NULL),
(5227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:05:44', '2024-08-31 00:05:44', NULL),
(5228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:05:54', '2024-08-31 00:05:54', NULL),
(5229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:09:45', '2024-08-31 00:09:45', NULL),
(5230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:10:19', '2024-08-31 00:10:19', NULL),
(5231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:11:19', '2024-08-31 00:11:19', NULL),
(5232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:12:12', '2024-08-31 00:12:12', NULL),
(5233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:17:09', '2024-08-31 00:17:09', NULL),
(5234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:17:40', '2024-08-31 00:17:40', NULL),
(5235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 00:18:01', '2024-08-31 00:18:01', NULL),
(5236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 01:20:00', '2024-08-31 01:20:00', NULL),
(5237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 01:20:16', '2024-08-31 01:20:16', NULL),
(5238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 01:37:07', '2024-08-31 01:37:07', NULL),
(5239, '180.244.138.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 02:39:43', '2024-08-31 02:39:43', NULL),
(5240, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-08-31 02:46:47', '2024-08-31 02:46:47', NULL),
(5241, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-08-31 03:16:46', '2024-08-31 03:16:46', NULL),
(5242, '2001:bc8:701:1e:46a8:42ff:fe1b:942b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.3', '-', '-', '2024-08-31 03:49:01', '2024-08-31 03:49:01', NULL),
(5243, '114.122.73.74', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '-', '-', '2024-08-31 05:16:06', '2024-08-31 05:16:06', NULL),
(5244, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-08-31 05:16:49', '2024-08-31 05:16:49', NULL),
(5245, '180.244.129.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-08-31 06:07:23', '2024-08-31 06:07:23', NULL),
(5246, '104.166.80.166', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 06:07:47', '2024-08-31 06:07:47', NULL),
(5247, '104.166.80.126', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 06:09:00', '2024-08-31 06:09:00', NULL),
(5248, '104.166.80.40', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 08:42:11', '2024-08-31 08:42:11', NULL),
(5249, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-08-31 08:46:52', '2024-08-31 08:46:52', NULL),
(5250, '104.166.80.96', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 09:09:51', '2024-08-31 09:09:51', NULL),
(5251, '104.166.80.36', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 11:38:31', '2024-08-31 11:38:31', NULL),
(5252, '104.166.80.36', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 11:38:33', '2024-08-31 11:38:33', NULL),
(5253, '104.166.80.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 11:40:28', '2024-08-31 11:40:28', NULL),
(5254, '104.166.80.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 11:40:30', '2024-08-31 11:40:30', NULL),
(5255, '193.34.74.179', 'Apache-HttpClient/5.1.4 (Java/11.0.18)', '-', '-', '2024-08-31 14:48:12', '2024-08-31 14:48:12', NULL),
(5256, '52.205.228.79', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '-', '-', '2024-08-31 14:48:20', '2024-08-31 14:48:20', NULL),
(5257, '137.184.25.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-08-31 18:52:05', '2024-08-31 18:52:05', NULL),
(5258, '104.152.52.70', 'curl/7.61.1', '-', '-', '2024-08-31 19:46:31', '2024-08-31 19:46:31', NULL),
(5259, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-08-31 20:17:03', '2024-08-31 20:17:03', NULL),
(5260, '104.166.80.213', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 20:27:11', '2024-08-31 20:27:11', NULL),
(5261, '104.166.80.226', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 20:28:34', '2024-08-31 20:28:34', NULL),
(5262, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-08-31 21:17:03', '2024-08-31 21:17:03', NULL),
(5263, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-08-31 21:47:03', '2024-08-31 21:47:03', NULL),
(5264, '104.166.80.85', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-08-31 23:58:18', '2024-08-31 23:58:18', NULL),
(5265, '104.152.52.64', 'curl/7.61.1', '-', '-', '2024-08-31 23:59:55', '2024-08-31 23:59:55', NULL),
(5266, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 02:47:08', '2024-09-01 02:47:08', NULL),
(5267, '212.70.14.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '-', '-', '2024-09-01 02:54:06', '2024-09-01 02:54:06', NULL),
(5268, '114.122.71.139', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '-', '-', '2024-09-01 03:28:43', '2024-09-01 03:28:43', NULL),
(5269, '114.122.71.139', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '-', '-', '2024-09-01 03:29:01', '2024-09-01 03:29:01', NULL),
(5270, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 05:17:11', '2024-09-01 05:17:11', NULL),
(5271, '104.152.52.61', 'curl/7.61.1', '-', '-', '2024-09-01 06:18:33', '2024-09-01 06:18:33', NULL),
(5272, '104.166.80.5', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-01 06:20:59', '2024-09-01 06:20:59', NULL),
(5273, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 06:47:12', '2024-09-01 06:47:12', NULL),
(5274, '104.166.80.49', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-01 06:48:48', '2024-09-01 06:48:48', NULL),
(5275, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 07:47:13', '2024-09-01 07:47:13', NULL),
(5276, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 08:17:14', '2024-09-01 08:17:14', NULL),
(5277, '104.166.80.113', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-01 08:22:45', '2024-09-01 08:22:45', NULL),
(5278, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 09:17:15', '2024-09-01 09:17:15', NULL),
(5279, '104.166.80.13', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-01 09:20:30', '2024-09-01 09:20:30', NULL),
(5280, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 11:17:18', '2024-09-01 11:17:18', NULL),
(5281, '64.227.66.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-01 11:36:07', '2024-09-01 11:36:07', NULL),
(5282, '64.227.115.240', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-01 11:51:13', '2024-09-01 11:51:13', NULL),
(5283, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 13:17:18', '2024-09-01 13:17:18', NULL),
(5284, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 15:17:21', '2024-09-01 15:17:21', NULL),
(5285, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 17:17:22', '2024-09-01 17:17:22', NULL),
(5286, '191.96.150.222', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/122.0.6261.94 Safari/537.36', '-', '-', '2024-09-01 19:51:07', '2024-09-01 19:51:07', NULL),
(5287, '104.166.80.19', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-01 20:30:15', '2024-09-01 20:30:15', NULL),
(5288, '104.166.80.100', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-01 20:32:18', '2024-09-01 20:32:18', NULL),
(5289, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 20:47:25', '2024-09-01 20:47:25', NULL),
(5290, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 21:47:26', '2024-09-01 21:47:26', NULL),
(5291, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-01 22:17:26', '2024-09-01 22:17:26', NULL),
(5292, '143.198.168.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-01 23:54:33', '2024-09-01 23:54:33', NULL),
(5293, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 00:47:29', '2024-09-02 00:47:29', NULL),
(5294, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 01:17:29', '2024-09-02 01:17:29', NULL),
(5295, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 02:47:31', '2024-09-02 02:47:31', NULL),
(5296, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 03:47:31', '2024-09-02 03:47:31', NULL),
(5297, '104.166.80.64', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-02 06:09:54', '2024-09-02 06:09:54', NULL),
(5298, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 06:17:33', '2024-09-02 06:17:33', NULL),
(5299, '104.166.80.188', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-02 06:26:05', '2024-09-02 06:26:05', NULL),
(5300, '104.166.80.252', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-02 06:56:22', '2024-09-02 06:56:22', NULL),
(5301, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 08:17:43', '2024-09-02 08:17:43', NULL),
(5302, '104.166.80.175', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-02 08:29:12', '2024-09-02 08:29:12', NULL),
(5303, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 08:47:54', '2024-09-02 08:47:54', NULL),
(5304, '104.166.80.62', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-02 08:59:33', '2024-09-02 08:59:33', NULL),
(5305, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 09:47:37', '2024-09-02 09:47:37', NULL),
(5306, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 10:17:38', '2024-09-02 10:17:38', NULL),
(5307, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 11:17:39', '2024-09-02 11:17:39', NULL),
(5308, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 12:47:40', '2024-09-02 12:47:40', NULL),
(5309, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 13:47:40', '2024-09-02 13:47:40', NULL),
(5310, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 14:17:41', '2024-09-02 14:17:41', NULL),
(5311, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 15:47:42', '2024-09-02 15:47:42', NULL),
(5312, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 16:47:44', '2024-09-02 16:47:44', NULL),
(5313, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 18:17:45', '2024-09-02 18:17:45', NULL),
(5314, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 18:47:45', '2024-09-02 18:47:45', NULL),
(5315, '104.166.80.162', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-02 20:38:21', '2024-09-02 20:38:21', NULL),
(5316, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 20:48:09', '2024-09-02 20:48:09', NULL),
(5317, '104.166.80.230', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-02 21:07:12', '2024-09-02 21:07:12', NULL),
(5318, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 21:47:50', '2024-09-02 21:47:50', NULL),
(5319, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 22:17:49', '2024-09-02 22:17:49', NULL),
(5320, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-02 23:17:50', '2024-09-02 23:17:50', NULL),
(5321, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 00:18:10', '2024-09-03 00:18:10', NULL),
(5322, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 00:47:52', '2024-09-03 00:47:52', NULL),
(5323, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-03 01:10:42', '2024-09-03 01:10:42', NULL),
(5324, '205.169.39.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '-', '-', '2024-09-03 01:11:33', '2024-09-03 01:11:33', NULL),
(5325, '103.122.5.3', 'WhatsApp/2.23.20.0', '-', '-', '2024-09-03 01:15:48', '2024-09-03 01:15:48', NULL),
(5326, '103.122.5.3', 'WhatsApp/2.23.20.0', '-', '-', '2024-09-03 01:15:48', '2024-09-03 01:15:48', NULL),
(5327, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-03 01:17:02', '2024-09-03 01:17:02', NULL),
(5328, '104.166.80.83', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-03 01:30:46', '2024-09-03 01:30:46', NULL),
(5329, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 01:36:24', '2024-09-03 01:36:24', NULL),
(5330, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-03 01:43:27', '2024-09-03 01:43:27', NULL),
(5331, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-03 01:44:15', '2024-09-03 01:44:15', NULL),
(5332, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 01:47:53', '2024-09-03 01:47:53', NULL),
(5333, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 02:17:53', '2024-09-03 02:17:53', NULL),
(5334, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 02:47:53', '2024-09-03 02:47:53', NULL),
(5335, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 03:17:54', '2024-09-03 03:17:54', NULL),
(5336, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-03 03:51:16', '2024-09-03 03:51:16', NULL),
(5337, '66.102.7.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-03 04:40:57', '2024-09-03 04:40:57', NULL),
(5338, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 05:47:56', '2024-09-03 05:47:56', NULL),
(5339, '104.166.80.147', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-03 06:31:05', '2024-09-03 06:31:05', NULL),
(5340, '104.166.80.70', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-03 06:31:21', '2024-09-03 06:31:21', NULL),
(5341, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 07:17:58', '2024-09-03 07:17:58', NULL),
(5342, '104.166.80.70', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-03 08:43:17', '2024-09-03 08:43:17', NULL),
(5343, '104.166.80.117', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-03 08:43:32', '2024-09-03 08:43:32', NULL),
(5344, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 09:18:00', '2024-09-03 09:18:00', NULL),
(5345, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 10:18:02', '2024-09-03 10:18:02', NULL),
(5346, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 11:18:02', '2024-09-03 11:18:02', NULL),
(5347, '204.48.23.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-03 11:57:09', '2024-09-03 11:57:09', NULL),
(5348, '46.101.93.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-03 12:48:10', '2024-09-03 12:48:10', NULL),
(5349, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 15:48:06', '2024-09-03 15:48:06', NULL),
(5350, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 17:48:08', '2024-09-03 17:48:08', NULL),
(5351, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 17:58:52', '2024-09-03 17:58:52', NULL),
(5352, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 18:48:10', '2024-09-03 18:48:10', NULL),
(5353, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 19:18:09', '2024-09-03 19:18:09', NULL),
(5354, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 19:25:42', '2024-09-03 19:25:42', NULL),
(5355, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 19:48:09', '2024-09-03 19:48:09', NULL),
(5356, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 20:11:22', '2024-09-03 20:11:22', NULL),
(5357, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 20:18:11', '2024-09-03 20:18:11', NULL),
(5358, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 20:48:11', '2024-09-03 20:48:11', NULL),
(5359, '104.166.80.207', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-03 20:52:37', '2024-09-03 20:52:37', NULL),
(5360, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 21:04:26', '2024-09-03 21:04:26', NULL),
(5361, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 21:18:11', '2024-09-03 21:18:11', NULL),
(5362, '104.166.80.47', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-03 21:22:43', '2024-09-03 21:22:43', NULL),
(5363, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 21:48:11', '2024-09-03 21:48:11', NULL),
(5364, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 21:50:27', '2024-09-03 21:50:27', NULL),
(5365, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 21:51:52', '2024-09-03 21:51:52', NULL),
(5366, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 21:57:35', '2024-09-03 21:57:35', NULL),
(5367, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 21:58:37', '2024-09-03 21:58:37', NULL),
(5368, '202.138.247.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-03 22:46:56', '2024-09-03 22:46:56', NULL),
(5369, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-03 22:48:13', '2024-09-03 22:48:13', NULL),
(5370, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 00:07:15', '2024-09-04 00:07:15', NULL),
(5371, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 00:48:15', '2024-09-04 00:48:15', NULL),
(5372, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 01:41:23', '2024-09-04 01:41:23', NULL),
(5373, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 03:48:18', '2024-09-04 03:48:18', NULL),
(5374, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 04:48:20', '2024-09-04 04:48:20', NULL),
(5375, '104.166.80.215', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 06:47:49', '2024-09-04 06:47:49', NULL),
(5376, '104.166.80.241', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 07:47:44', '2024-09-04 07:47:44', NULL),
(5377, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 08:48:24', '2024-09-04 08:48:24', NULL),
(5378, '104.166.80.151', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 08:48:50', '2024-09-04 08:48:50', NULL),
(5379, '104.166.80.177', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 09:18:42', '2024-09-04 09:18:42', NULL),
(5380, '104.166.80.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 09:43:56', '2024-09-04 09:43:56', NULL),
(5381, '104.166.80.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 09:43:58', '2024-09-04 09:43:58', NULL),
(5382, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 10:18:24', '2024-09-04 10:18:24', NULL),
(5383, '104.166.80.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 10:39:31', '2024-09-04 10:39:31', NULL),
(5384, '104.166.80.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 10:39:34', '2024-09-04 10:39:34', NULL),
(5385, '104.166.80.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 11:37:50', '2024-09-04 11:37:50', NULL),
(5386, '104.166.80.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 11:37:53', '2024-09-04 11:37:53', NULL),
(5387, '104.166.80.36', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14.1; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 11:40:48', '2024-09-04 11:40:48', NULL),
(5388, '104.166.80.36', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14.1; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 11:40:50', '2024-09-04 11:40:50', NULL),
(5389, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 12:18:26', '2024-09-04 12:18:26', NULL),
(5390, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 13:18:27', '2024-09-04 13:18:27', NULL),
(5391, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 13:48:27', '2024-09-04 13:48:27', NULL),
(5392, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 14:18:27', '2024-09-04 14:18:27', NULL),
(5393, '104.166.80.156', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 14:23:14', '2024-09-04 14:23:14', NULL),
(5394, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 14:48:28', '2024-09-04 14:48:28', NULL),
(5395, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 15:18:29', '2024-09-04 15:18:29', NULL),
(5396, '188.165.87.97', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-04 15:28:59', '2024-09-04 15:28:59', NULL),
(5397, '188.165.87.96', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-04 15:32:16', '2024-09-04 15:32:16', NULL),
(5398, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 15:48:29', '2024-09-04 15:48:29', NULL),
(5399, '104.166.80.4', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14.1; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 16:32:11', '2024-09-04 16:32:11', NULL),
(5400, '104.166.80.4', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14.1; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-04 16:32:15', '2024-09-04 16:32:15', NULL),
(5401, '51.254.49.108', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-04 16:46:31', '2024-09-04 16:46:31', NULL),
(5402, '51.254.49.98', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-04 16:52:38', '2024-09-04 16:52:38', NULL),
(5403, '37.187.215.248', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-04 17:17:55', '2024-09-04 17:17:55', NULL),
(5404, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 18:08:08', '2024-09-04 18:08:08', NULL),
(5405, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 18:12:47', '2024-09-04 18:12:47', NULL),
(5406, '34.118.67.60', 'Mozilla/5.0 (iPhone13,2; U; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/15E148 Safari/602.1', '-', '-', '2024-09-04 18:14:39', '2024-09-04 18:14:39', NULL),
(5407, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 18:37:28', '2024-09-04 18:37:28', NULL),
(5408, '51.254.49.110', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-04 19:07:22', '2024-09-04 19:07:22', NULL),
(5409, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 19:18:33', '2024-09-04 19:18:33', NULL),
(5410, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 19:20:33', '2024-09-04 19:20:33', NULL),
(5411, '114.10.147.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 19:40:08', '2024-09-04 19:40:08', NULL),
(5412, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 19:41:09', '2024-09-04 19:41:09', NULL),
(5413, '137.184.94.193', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-04 19:42:24', '2024-09-04 19:42:24', NULL),
(5414, '114.10.147.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 19:45:47', '2024-09-04 19:45:47', NULL),
(5415, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 19:50:13', '2024-09-04 19:50:13', NULL),
(5416, '103.134.213.34', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 19:51:22', '2024-09-04 19:51:22', NULL),
(5417, '103.106.216.68', 'Mozilla/5.0 (Linux; Android 10; M2006C3MG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '-', '-', '2024-09-04 19:51:25', '2024-09-04 19:51:25', NULL),
(5418, '114.10.147.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 19:52:15', '2024-09-04 19:52:15', NULL),
(5419, '114.10.147.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 19:58:26', '2024-09-04 19:58:26', NULL),
(5420, '103.134.213.34', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:02:05', '2024-09-04 20:02:05', NULL),
(5421, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:02:18', '2024-09-04 20:02:18', NULL),
(5422, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:02:20', '2024-09-04 20:02:20', NULL),
(5423, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:03:24', '2024-09-04 20:03:24', NULL),
(5424, '114.10.147.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:04:14', '2024-09-04 20:04:14', NULL),
(5425, '141.148.153.213', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', '-', '-', '2024-09-04 20:06:41', '2024-09-04 20:06:41', NULL),
(5426, '114.10.147.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:15:51', '2024-09-04 20:15:51', NULL),
(5427, '103.134.213.34', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:15:57', '2024-09-04 20:15:57', NULL),
(5428, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:21:17', '2024-09-04 20:21:17', NULL),
(5429, '114.10.147.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:44:33', '2024-09-04 20:44:33', NULL),
(5430, '114.10.147.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:44:43', '2024-09-04 20:44:43', NULL),
(5431, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 20:45:54', '2024-09-04 20:45:54', NULL),
(5432, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 21:02:25', '2024-09-04 21:02:25', NULL),
(5433, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 21:05:06', '2024-09-04 21:05:06', NULL),
(5434, '205.169.39.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '-', '-', '2024-09-04 21:07:58', '2024-09-04 21:07:58', NULL),
(5435, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 21:18:35', '2024-09-04 21:18:35', NULL),
(5436, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 21:42:02', '2024-09-04 21:42:02', NULL),
(5437, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-04 21:43:51', '2024-09-04 21:43:51', NULL);
INSERT INTO `tb_visitors` (`id`, `ip_address`, `browser`, `device`, `platform`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5438, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 22:18:36', '2024-09-04 22:18:36', NULL),
(5439, '139.59.129.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-04 22:24:38', '2024-09-04 22:24:38', NULL),
(5440, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 23:18:37', '2024-09-04 23:18:37', NULL),
(5441, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-04 23:48:37', '2024-09-04 23:48:37', NULL),
(5442, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 00:18:38', '2024-09-05 00:18:38', NULL),
(5443, '180.244.129.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-05 01:02:43', '2024-09-05 01:02:43', NULL),
(5444, '64.23.140.132', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-05 04:18:05', '2024-09-05 04:18:05', NULL),
(5445, '2001:448a:302e:3cb2:35e8:2c97:20b1:c8a8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-05 05:44:43', '2024-09-05 05:44:43', NULL),
(5446, '2001:448a:302e:3cb2:35e8:2c97:20b1:c8a8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-05 05:47:58', '2024-09-05 05:47:58', NULL),
(5447, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 05:48:43', '2024-09-05 05:48:43', NULL),
(5448, '103.119.67.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-05 05:53:15', '2024-09-05 05:53:15', NULL),
(5449, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 06:18:44', '2024-09-05 06:18:44', NULL),
(5450, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 06:48:47', '2024-09-05 06:48:47', NULL),
(5451, '2001:4ba0:cafe:c13::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '-', '-', '2024-09-05 06:52:13', '2024-09-05 06:52:13', NULL),
(5452, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 07:18:49', '2024-09-05 07:18:49', NULL),
(5453, '104.166.80.32', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-05 07:34:43', '2024-09-05 07:34:43', NULL),
(5454, '104.166.80.177', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-05 07:34:50', '2024-09-05 07:34:50', NULL),
(5455, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 08:48:47', '2024-09-05 08:48:47', NULL),
(5456, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 09:18:46', '2024-09-05 09:18:46', NULL),
(5457, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 09:48:46', '2024-09-05 09:48:46', NULL),
(5458, '104.166.80.158', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14.1; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-05 10:34:22', '2024-09-05 10:34:22', NULL),
(5459, '104.166.80.158', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14.1; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-05 10:34:24', '2024-09-05 10:34:24', NULL),
(5460, '104.166.80.254', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-05 10:36:17', '2024-09-05 10:36:17', NULL),
(5461, '104.166.80.254', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-05 10:36:19', '2024-09-05 10:36:19', NULL),
(5462, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 12:48:50', '2024-09-05 12:48:50', NULL),
(5463, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 13:18:51', '2024-09-05 13:18:51', NULL),
(5464, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 13:48:49', '2024-09-05 13:48:49', NULL),
(5465, '3.249.130.90', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '-', '-', '2024-09-05 14:08:05', '2024-09-05 14:08:05', NULL),
(5466, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 15:18:52', '2024-09-05 15:18:52', NULL),
(5467, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 16:48:52', '2024-09-05 16:48:52', NULL),
(5468, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 18:18:54', '2024-09-05 18:18:54', NULL),
(5469, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 18:48:56', '2024-09-05 18:48:56', NULL),
(5470, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 19:48:56', '2024-09-05 19:48:56', NULL),
(5471, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 21:18:57', '2024-09-05 21:18:57', NULL),
(5472, '54.171.42.63', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '-', '-', '2024-09-05 21:57:11', '2024-09-05 21:57:11', NULL),
(5473, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 23:19:00', '2024-09-05 23:19:00', NULL),
(5474, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-05 23:49:02', '2024-09-05 23:49:02', NULL),
(5475, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-06 02:49:03', '2024-09-06 02:49:03', NULL),
(5476, '180.244.129.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 03:47:36', '2024-09-06 03:47:36', NULL),
(5477, '180.244.129.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 03:53:40', '2024-09-06 03:53:40', NULL),
(5478, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:11:49', '2024-09-06 04:11:49', NULL),
(5479, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:28:43', '2024-09-06 04:28:43', NULL),
(5480, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:30:50', '2024-09-06 04:30:50', NULL),
(5481, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:31:07', '2024-09-06 04:31:07', NULL),
(5482, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:31:23', '2024-09-06 04:31:23', NULL),
(5483, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:31:37', '2024-09-06 04:31:37', NULL),
(5484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:31:48', '2024-09-06 04:31:48', NULL),
(5485, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:32:01', '2024-09-06 04:32:01', NULL),
(5486, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:32:09', '2024-09-06 04:32:09', NULL),
(5487, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:32:16', '2024-09-06 04:32:16', NULL),
(5488, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:32:24', '2024-09-06 04:32:24', NULL),
(5489, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:32:33', '2024-09-06 04:32:33', NULL),
(5490, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:32:52', '2024-09-06 04:32:52', NULL),
(5491, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 04:33:06', '2024-09-06 04:33:06', NULL),
(5492, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 23:51:01', '2024-09-06 23:51:01', NULL),
(5493, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 23:53:50', '2024-09-06 23:53:50', NULL),
(5494, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 23:55:30', '2024-09-06 23:55:30', NULL),
(5495, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-06 23:56:26', '2024-09-06 23:56:26', NULL),
(5496, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:00:45', '2024-09-07 00:00:45', NULL),
(5497, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:02:33', '2024-09-07 00:02:33', NULL),
(5498, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:02:54', '2024-09-07 00:02:54', NULL),
(5499, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:03:16', '2024-09-07 00:03:16', NULL),
(5500, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:03:42', '2024-09-07 00:03:42', NULL),
(5501, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:04:04', '2024-09-07 00:04:04', NULL),
(5502, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:04:28', '2024-09-07 00:04:28', NULL),
(5503, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:04:52', '2024-09-07 00:04:52', NULL),
(5504, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:05:22', '2024-09-07 00:05:22', NULL),
(5505, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:06:05', '2024-09-07 00:06:05', NULL),
(5506, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:06:36', '2024-09-07 00:06:36', NULL),
(5507, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:07:21', '2024-09-07 00:07:21', NULL),
(5508, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:07:51', '2024-09-07 00:07:51', NULL),
(5509, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:09:19', '2024-09-07 00:09:19', NULL),
(5510, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:09:35', '2024-09-07 00:09:35', NULL),
(5511, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:10:00', '2024-09-07 00:10:00', NULL),
(5512, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:10:09', '2024-09-07 00:10:09', NULL),
(5513, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:11:32', '2024-09-07 00:11:32', NULL),
(5514, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:12:04', '2024-09-07 00:12:04', NULL),
(5515, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:13:03', '2024-09-07 00:13:03', NULL),
(5516, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:13:36', '2024-09-07 00:13:36', NULL),
(5517, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:13:45', '2024-09-07 00:13:45', NULL),
(5518, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:14:59', '2024-09-07 00:14:59', NULL),
(5519, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:15:23', '2024-09-07 00:15:23', NULL),
(5520, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:17:44', '2024-09-07 00:17:44', NULL),
(5521, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:19:08', '2024-09-07 00:19:08', NULL),
(5522, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:21:19', '2024-09-07 00:21:19', NULL),
(5523, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:22:00', '2024-09-07 00:22:00', NULL),
(5524, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:22:27', '2024-09-07 00:22:27', NULL),
(5525, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:22:48', '2024-09-07 00:22:48', NULL),
(5526, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:22:59', '2024-09-07 00:22:59', NULL),
(5527, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:23:09', '2024-09-07 00:23:09', NULL),
(5528, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:23:28', '2024-09-07 00:23:28', NULL),
(5529, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:23:42', '2024-09-07 00:23:42', NULL),
(5530, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:24:01', '2024-09-07 00:24:01', NULL),
(5531, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 00:42:33', '2024-09-07 00:42:33', NULL),
(5532, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 07:59:28', '2024-09-07 07:59:28', NULL),
(5533, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 07:59:29', '2024-09-07 07:59:29', NULL),
(5534, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:03:00', '2024-09-07 08:03:00', NULL),
(5535, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:03:18', '2024-09-07 08:03:18', NULL),
(5536, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:03:47', '2024-09-07 08:03:47', NULL),
(5537, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:06:01', '2024-09-07 08:06:01', NULL),
(5538, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:06:10', '2024-09-07 08:06:10', NULL),
(5539, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:06:22', '2024-09-07 08:06:22', NULL),
(5540, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:06:31', '2024-09-07 08:06:31', NULL),
(5541, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:06:59', '2024-09-07 08:06:59', NULL),
(5542, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:07:29', '2024-09-07 08:07:29', NULL),
(5543, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:07:55', '2024-09-07 08:07:55', NULL),
(5544, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:10:05', '2024-09-07 08:10:05', NULL),
(5545, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 08:12:13', '2024-09-07 08:12:13', NULL),
(5546, '180.244.129.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-07 09:19:02', '2024-09-07 09:19:02', NULL),
(5547, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 04:19:26', '2024-09-07 04:19:26', NULL),
(5548, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 04:49:27', '2024-09-07 04:49:27', NULL),
(5549, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 06:19:28', '2024-09-07 06:19:28', NULL),
(5550, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 06:49:28', '2024-09-07 06:49:28', NULL),
(5551, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 07:49:30', '2024-09-07 07:49:30', NULL),
(5552, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 08:19:31', '2024-09-07 08:19:31', NULL),
(5553, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 08:49:31', '2024-09-07 08:49:31', NULL),
(5554, '104.166.80.183', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-07 15:59:30', '2024-09-07 15:59:30', NULL),
(5555, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 09:19:31', '2024-09-07 09:19:31', NULL),
(5556, '104.166.80.245', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-07 16:57:41', '2024-09-07 16:57:41', NULL),
(5557, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 10:19:33', '2024-09-07 10:19:33', NULL),
(5558, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 10:49:32', '2024-09-07 10:49:32', NULL),
(5559, '104.166.80.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-07 18:29:05', '2024-09-07 18:29:05', NULL),
(5560, '104.166.80.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-07 18:29:08', '2024-09-07 18:29:08', NULL),
(5561, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 11:49:33', '2024-09-07 11:49:33', NULL),
(5562, '104.166.80.247', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-07 19:51:35', '2024-09-07 19:51:35', NULL),
(5563, '104.166.80.247', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-07 19:51:37', '2024-09-07 19:51:37', NULL),
(5564, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 13:49:35', '2024-09-07 13:49:35', NULL),
(5565, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 15:49:37', '2024-09-07 15:49:37', NULL),
(5566, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 17:49:40', '2024-09-07 17:49:40', NULL),
(5567, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 19:49:41', '2024-09-07 19:49:41', NULL),
(5568, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 20:19:42', '2024-09-07 20:19:42', NULL),
(5569, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 21:49:42', '2024-09-07 21:49:42', NULL),
(5570, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 22:19:44', '2024-09-07 22:19:44', NULL),
(5571, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-07 23:19:44', '2024-09-07 23:19:44', NULL),
(5572, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-08 07:03:56', '2024-09-08 07:03:56', NULL),
(5573, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-08 07:03:58', '2024-09-08 07:03:58', NULL),
(5574, '103.122.5.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-08 07:40:00', '2024-09-08 07:40:00', NULL),
(5575, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 02:19:47', '2024-09-08 02:19:47', NULL),
(5576, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 02:49:48', '2024-09-08 02:49:48', NULL),
(5577, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 03:19:47', '2024-09-08 03:19:47', NULL),
(5578, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 03:49:48', '2024-09-08 03:49:48', NULL),
(5579, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 04:19:49', '2024-09-08 04:19:49', NULL),
(5580, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 05:49:50', '2024-09-08 05:49:50', NULL),
(5581, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 07:49:52', '2024-09-08 07:49:52', NULL),
(5582, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 08:49:53', '2024-09-08 08:49:53', NULL),
(5583, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 09:19:53', '2024-09-08 09:19:53', NULL),
(5584, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 10:19:54', '2024-09-08 10:19:54', NULL),
(5585, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 12:49:56', '2024-09-08 12:49:56', NULL),
(5586, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 14:49:58', '2024-09-08 14:49:58', NULL),
(5587, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 15:19:59', '2024-09-08 15:19:59', NULL),
(5588, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 16:19:59', '2024-09-08 16:19:59', NULL),
(5589, '104.166.80.77', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-08 16:36:10', '2024-09-08 16:36:10', NULL),
(5590, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 18:50:03', '2024-09-08 18:50:03', NULL),
(5591, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 19:50:06', '2024-09-08 19:50:06', NULL),
(5592, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 22:20:07', '2024-09-08 22:20:07', NULL),
(5593, '188.165.87.104', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-08 22:46:36', '2024-09-08 22:46:36', NULL),
(5594, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-08 22:50:05', '2024-09-08 22:50:05', NULL),
(5595, '188.165.87.96', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-08 22:57:18', '2024-09-08 22:57:18', NULL),
(5596, '202.138.247.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-09 06:21:33', '2024-09-09 06:21:33', NULL),
(5597, '202.138.247.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-09 06:22:05', '2024-09-09 06:22:05', NULL),
(5598, '51.254.49.105', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-08 23:49:16', '2024-09-08 23:49:16', NULL),
(5599, '51.254.49.107', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-08 23:58:23', '2024-09-08 23:58:23', NULL),
(5600, '37.187.215.255', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-08 23:58:34', '2024-09-08 23:58:34', NULL),
(5601, '37.187.215.240', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-09 00:03:28', '2024-09-09 00:03:28', NULL),
(5602, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 00:50:08', '2024-09-09 00:50:08', NULL),
(5603, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 01:20:08', '2024-09-09 01:20:08', NULL),
(5604, '51.254.49.97', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '-', '-', '2024-09-09 01:49:21', '2024-09-09 01:49:21', NULL),
(5605, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 03:20:11', '2024-09-09 03:20:11', NULL),
(5606, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 04:20:12', '2024-09-09 04:20:12', NULL),
(5607, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 04:50:11', '2024-09-09 04:50:11', NULL),
(5608, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 05:20:12', '2024-09-09 05:20:12', NULL),
(5609, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 05:50:12', '2024-09-09 05:50:12', NULL),
(5610, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 06:50:16', '2024-09-09 06:50:16', NULL),
(5611, '104.166.80.239', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-09 07:11:14', '2024-09-09 07:11:14', NULL),
(5612, '104.166.80.113', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-09 07:40:22', '2024-09-09 07:40:22', NULL),
(5613, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 07:50:15', '2024-09-09 07:50:15', NULL),
(5614, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 08:50:17', '2024-09-09 08:50:17', NULL),
(5615, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 09:20:18', '2024-09-09 09:20:18', NULL),
(5616, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 09:50:18', '2024-09-09 09:50:18', NULL),
(5617, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 10:50:19', '2024-09-09 10:50:19', NULL),
(5618, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 11:20:19', '2024-09-09 11:20:19', NULL),
(5619, '137.184.172.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-09 12:45:23', '2024-09-09 12:45:23', NULL),
(5620, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 12:50:20', '2024-09-09 12:50:20', NULL),
(5621, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 13:20:21', '2024-09-09 13:20:21', NULL),
(5622, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 13:50:22', '2024-09-09 13:50:22', NULL),
(5623, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 14:50:23', '2024-09-09 14:50:23', NULL),
(5624, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 15:20:24', '2024-09-09 15:20:24', NULL),
(5625, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 16:20:24', '2024-09-09 16:20:24', NULL),
(5626, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 18:20:26', '2024-09-09 18:20:26', NULL),
(5627, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 20:20:29', '2024-09-09 20:20:29', NULL),
(5628, '140.213.24.78', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '-', '-', '2024-09-10 04:02:19', '2024-09-10 04:02:19', NULL),
(5629, '114.10.145.202', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-10 04:02:26', '2024-09-10 04:02:26', NULL),
(5630, '139.195.206.53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 OPR/113.0.0.0', '-', '-', '2024-09-10 04:02:31', '2024-09-10 04:02:31', NULL),
(5631, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 21:20:31', '2024-09-09 21:20:31', NULL),
(5632, '114.10.145.202', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '-', '-', '2024-09-10 04:20:53', '2024-09-10 04:20:53', NULL),
(5633, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 22:20:31', '2024-09-09 22:20:31', NULL),
(5634, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 22:50:32', '2024-09-09 22:50:32', NULL),
(5635, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 23:20:32', '2024-09-09 23:20:32', NULL),
(5636, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-09 23:50:33', '2024-09-09 23:50:33', NULL),
(5637, '161.35.145.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-10 00:39:16', '2024-09-10 00:39:16', NULL),
(5638, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 00:50:33', '2024-09-10 00:50:33', NULL),
(5639, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 01:20:34', '2024-09-10 01:20:34', NULL),
(5640, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 01:50:48', '2024-09-10 01:50:48', NULL),
(5641, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 02:20:43', '2024-09-10 02:20:43', NULL),
(5642, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 03:20:36', '2024-09-10 03:20:36', NULL),
(5643, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 03:50:37', '2024-09-10 03:50:37', NULL),
(5644, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 04:20:38', '2024-09-10 04:20:38', NULL),
(5645, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 04:50:38', '2024-09-10 04:50:38', NULL),
(5646, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 05:20:40', '2024-09-10 05:20:40', NULL),
(5647, '143.198.149.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-10 12:35:20', '2024-09-10 12:35:20', NULL),
(5648, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 06:20:40', '2024-09-10 06:20:40', NULL),
(5649, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 06:50:40', '2024-09-10 06:50:40', NULL),
(5650, '2401:c080:1400:74da:2dd6:11a1:aa04:2c98', 'Mozilla/5.0 (X11; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', '-', '-', '2024-09-10 08:16:10', '2024-09-10 08:16:10', NULL),
(5651, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 08:50:42', '2024-09-10 08:50:42', NULL),
(5652, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 09:20:43', '2024-09-10 09:20:43', NULL),
(5653, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 10:50:44', '2024-09-10 10:50:44', NULL),
(5654, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 12:50:46', '2024-09-10 12:50:46', NULL),
(5655, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 14:50:48', '2024-09-10 14:50:48', NULL),
(5656, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 15:20:48', '2024-09-10 15:20:48', NULL),
(5657, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 15:50:48', '2024-09-10 15:50:48', NULL),
(5658, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 17:20:51', '2024-09-10 17:20:51', NULL),
(5659, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 17:50:50', '2024-09-10 17:50:50', NULL),
(5660, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 18:21:22', '2024-09-10 18:21:22', NULL),
(5661, '103.134.213.130', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-11 02:42:48', '2024-09-11 02:42:48', NULL),
(5662, '104.166.80.192', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-11 04:22:25', '2024-09-11 04:22:25', NULL),
(5663, '104.166.80.8', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-11 04:22:51', '2024-09-11 04:22:51', NULL),
(5664, '64.227.71.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-10 22:49:13', '2024-09-10 22:49:13', NULL),
(5665, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 22:50:56', '2024-09-10 22:50:56', NULL),
(5666, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-10 23:20:57', '2024-09-10 23:20:57', NULL),
(5667, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 00:20:58', '2024-09-11 00:20:58', NULL),
(5668, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 02:21:00', '2024-09-11 02:21:00', NULL),
(5669, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 07:51:07', '2024-09-11 07:51:07', NULL),
(5670, '104.166.80.115', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-11 16:19:32', '2024-09-11 16:19:32', NULL),
(5671, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 09:21:08', '2024-09-11 09:21:08', NULL),
(5672, '104.166.80.188', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-11 16:22:27', '2024-09-11 16:22:27', NULL),
(5673, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 09:51:08', '2024-09-11 09:51:08', NULL),
(5674, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 10:21:09', '2024-09-11 10:21:09', NULL),
(5675, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 10:51:08', '2024-09-11 10:51:08', NULL),
(5676, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 11:51:10', '2024-09-11 11:51:10', NULL),
(5677, '143.198.163.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-11 12:33:58', '2024-09-11 12:33:58', NULL),
(5678, '139.59.18.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-11 12:38:33', '2024-09-11 12:38:33', NULL),
(5679, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 13:21:11', '2024-09-11 13:21:11', NULL),
(5680, '2001:4ba0:cafe:c13::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '-', '-', '2024-09-11 13:56:54', '2024-09-11 13:56:54', NULL),
(5681, '35.87.61.144', 'Mozilla/5.0 (compatible; wpbot/1.1; +https://forms.gle/ajBaxygz9jSR8p8G9)', '-', '-', '2024-09-11 15:00:52', '2024-09-11 15:00:52', NULL),
(5682, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 15:51:14', '2024-09-11 15:51:14', NULL),
(5683, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 16:51:15', '2024-09-11 16:51:15', NULL),
(5684, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 17:21:15', '2024-09-11 17:21:15', NULL),
(5685, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 01:51:46', '2024-09-12 01:51:46', NULL),
(5686, '140.213.98.203', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '-', '-', '2024-09-12 01:53:45', '2024-09-12 01:53:45', NULL),
(5687, '140.213.98.203', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '-', '-', '2024-09-12 01:54:31', '2024-09-12 01:54:31', NULL),
(5688, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 01:54:36', '2024-09-12 01:54:36', NULL),
(5689, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-12 02:03:12', '2024-09-12 02:03:12', NULL),
(5690, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 02:09:44', '2024-09-12 02:09:44', NULL),
(5691, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 02:19:00', '2024-09-12 02:19:00', NULL),
(5692, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 02:19:24', '2024-09-12 02:19:24', NULL),
(5693, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 02:28:52', '2024-09-12 02:28:52', NULL),
(5694, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 02:29:34', '2024-09-12 02:29:34', NULL),
(5695, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 19:51:20', '2024-09-11 19:51:20', NULL),
(5696, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 02:57:07', '2024-09-12 02:57:07', NULL),
(5697, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-12 03:34:57', '2024-09-12 03:34:57', NULL),
(5698, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-11 21:21:21', '2024-09-11 21:21:21', NULL),
(5699, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 07:01:55', '2024-09-12 07:01:55', NULL),
(5700, '178.62.229.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-12 00:25:27', '2024-09-12 00:25:27', NULL),
(5701, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 08:09:32', '2024-09-12 08:09:32', NULL),
(5702, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 08:18:28', '2024-09-12 08:18:28', NULL),
(5703, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 08:52:06', '2024-09-12 08:52:06', NULL),
(5704, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 08:52:06', '2024-09-12 08:52:06', NULL),
(5705, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 08:53:51', '2024-09-12 08:53:51', NULL),
(5706, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 08:56:30', '2024-09-12 08:56:30', NULL),
(5707, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 08:56:46', '2024-09-12 08:56:46', NULL),
(5708, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 08:56:47', '2024-09-12 08:56:47', NULL),
(5709, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 02:21:26', '2024-09-12 02:21:26', NULL),
(5710, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 04:51:29', '2024-09-12 04:51:29', NULL),
(5711, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 05:21:36', '2024-09-12 05:21:36', NULL),
(5712, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 06:21:31', '2024-09-12 06:21:31', NULL),
(5713, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 07:21:31', '2024-09-12 07:21:31', NULL),
(5714, '103.171.150.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 14:49:39', '2024-09-12 14:49:39', NULL),
(5715, '103.171.150.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 14:49:41', '2024-09-12 14:49:41', NULL),
(5716, '103.171.150.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-12 14:52:04', '2024-09-12 14:52:04', NULL),
(5717, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 08:51:33', '2024-09-12 08:51:33', NULL),
(5718, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 09:51:35', '2024-09-12 09:51:35', NULL),
(5719, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 10:21:36', '2024-09-12 10:21:36', NULL),
(5720, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 11:21:36', '2024-09-12 11:21:36', NULL),
(5721, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 11:51:37', '2024-09-12 11:51:37', NULL),
(5722, '2001:448a:3024:28cb:d8e9:2d8:85ad:3300', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '-', '-', '2024-09-12 20:18:15', '2024-09-12 20:18:15', NULL),
(5723, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 13:51:40', '2024-09-12 13:51:40', NULL),
(5724, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 14:51:39', '2024-09-12 14:51:39', NULL),
(5725, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 15:21:39', '2024-09-12 15:21:39', NULL),
(5726, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 15:51:40', '2024-09-12 15:51:40', NULL),
(5727, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 16:21:41', '2024-09-12 16:21:41', NULL),
(5728, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 17:21:42', '2024-09-12 17:21:42', NULL),
(5729, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:16:38', '2024-09-13 01:16:38', NULL),
(5730, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:17:06', '2024-09-13 01:17:06', NULL),
(5731, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 18:21:43', '2024-09-12 18:21:43', NULL),
(5732, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:23:05', '2024-09-13 01:23:05', NULL),
(5733, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:26:25', '2024-09-13 01:26:25', NULL),
(5734, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:27:19', '2024-09-13 01:27:19', NULL),
(5735, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:29:22', '2024-09-13 01:29:22', NULL),
(5736, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:30:58', '2024-09-13 01:30:58', NULL);
INSERT INTO `tb_visitors` (`id`, `ip_address`, `browser`, `device`, `platform`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5737, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:31:21', '2024-09-13 01:31:21', NULL),
(5738, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:34:19', '2024-09-13 01:34:19', NULL),
(5739, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:34:32', '2024-09-13 01:34:32', NULL),
(5740, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:34:54', '2024-09-13 01:34:54', NULL),
(5741, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:35:01', '2024-09-13 01:35:01', NULL),
(5742, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 01:35:43', '2024-09-13 01:35:43', NULL),
(5743, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 01:43:08', '2024-09-13 01:43:08', NULL),
(5744, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 18:51:43', '2024-09-12 18:51:43', NULL),
(5745, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 01:58:44', '2024-09-13 01:58:44', NULL),
(5746, '72.14.199.160', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.113 Mobile Safari/537.36', '-', '-', '2024-09-13 01:58:47', '2024-09-13 01:58:47', NULL),
(5747, '202.138.247.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:05:50', '2024-09-13 02:05:50', NULL),
(5748, '202.138.247.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:08:08', '2024-09-13 02:08:08', NULL),
(5749, '202.138.247.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:08:51', '2024-09-13 02:08:51', NULL),
(5750, '202.138.247.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:09:11', '2024-09-13 02:09:11', NULL),
(5751, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:10:32', '2024-09-13 02:10:32', NULL),
(5752, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:14:16', '2024-09-13 02:14:16', NULL),
(5753, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 19:21:45', '2024-09-12 19:21:45', NULL),
(5754, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:24:07', '2024-09-13 02:24:07', NULL),
(5755, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:24:50', '2024-09-13 02:24:50', NULL),
(5756, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:25:34', '2024-09-13 02:25:34', NULL),
(5757, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:25:49', '2024-09-13 02:25:49', NULL),
(5758, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:30:00', '2024-09-13 02:30:00', NULL),
(5759, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:33:15', '2024-09-13 02:33:15', NULL),
(5760, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 02:34:32', '2024-09-13 02:34:32', NULL),
(5761, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:35:48', '2024-09-13 02:35:48', NULL),
(5762, '103.134.213.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '-', '-', '2024-09-13 02:38:23', '2024-09-13 02:38:23', NULL),
(5763, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:38:48', '2024-09-13 02:38:48', NULL),
(5764, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 02:41:56', '2024-09-13 02:41:56', NULL),
(5765, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:46:30', '2024-09-13 02:46:30', NULL),
(5766, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 02:48:10', '2024-09-13 02:48:10', NULL),
(5767, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 02:54:16', '2024-09-13 02:54:16', NULL),
(5768, '103.134.213.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '-', '-', '2024-09-13 02:54:31', '2024-09-13 02:54:31', NULL),
(5769, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:55:33', '2024-09-13 02:55:33', NULL),
(5770, '140.213.104.254', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-13 02:57:05', '2024-09-13 02:57:05', NULL),
(5771, '2001:448a:3024:28cb:65d0:ac8:8c7c:8540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '-', '-', '2024-09-13 03:00:57', '2024-09-13 03:00:57', NULL),
(5772, '202.138.247.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-13 03:42:18', '2024-09-13 03:42:18', NULL),
(5773, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 22:21:53', '2024-09-12 22:21:53', NULL),
(5774, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 22:51:50', '2024-09-12 22:51:50', NULL),
(5775, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 23:21:49', '2024-09-12 23:21:49', NULL),
(5776, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-12 23:51:49', '2024-09-12 23:51:49', NULL),
(5777, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 01:22:19', '2024-09-13 01:22:19', NULL),
(5778, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 02:21:53', '2024-09-13 02:21:53', NULL),
(5779, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 06:21:57', '2024-09-13 06:21:57', NULL),
(5780, '104.166.80.117', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-13 07:16:32', '2024-09-13 07:16:32', NULL),
(5781, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 07:21:57', '2024-09-13 07:21:57', NULL),
(5782, '104.166.80.147', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '-', '-', '2024-09-13 07:44:51', '2024-09-13 07:44:51', NULL),
(5783, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 08:52:02', '2024-09-13 08:52:02', NULL),
(5784, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 09:22:00', '2024-09-13 09:22:00', NULL),
(5785, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 09:52:02', '2024-09-13 09:52:02', NULL),
(5786, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 11:22:02', '2024-09-13 11:22:02', NULL),
(5787, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 11:52:02', '2024-09-13 11:52:02', NULL),
(5788, '104.236.195.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-13 12:57:06', '2024-09-13 12:57:06', NULL),
(5789, '209.97.133.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-13 13:08:13', '2024-09-13 13:08:13', NULL),
(5790, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 14:22:05', '2024-09-13 14:22:05', NULL),
(5791, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 15:22:05', '2024-09-13 15:22:05', NULL),
(5792, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 15:52:06', '2024-09-13 15:52:06', NULL),
(5793, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 16:52:07', '2024-09-13 16:52:07', NULL),
(5794, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 17:22:08', '2024-09-13 17:22:08', NULL),
(5795, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 17:52:08', '2024-09-13 17:52:08', NULL),
(5796, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 19:52:11', '2024-09-13 19:52:11', NULL),
(5797, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 20:22:12', '2024-09-13 20:22:12', NULL),
(5798, '205.169.39.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '-', '-', '2024-09-13 21:01:52', '2024-09-13 21:01:52', NULL),
(5799, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 22:52:15', '2024-09-13 22:52:15', NULL),
(5800, '180.244.128.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 05:59:42', '2024-09-14 05:59:42', NULL),
(5801, '180.244.128.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 05:59:45', '2024-09-14 05:59:45', NULL),
(5802, '180.244.128.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 06:12:35', '2024-09-14 06:12:35', NULL),
(5803, '180.244.128.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 06:12:49', '2024-09-14 06:12:49', NULL),
(5804, '180.244.128.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 06:16:16', '2024-09-14 06:16:16', NULL),
(5805, '2401:c080:1400:5265:5400:4ff:fe8d:5230', 'Python/3.11 aiohttp/3.9.2', '-', '-', '2024-09-13 23:22:14', '2024-09-13 23:22:14', NULL),
(5806, '64.23.150.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '-', '-', '2024-09-13 23:34:34', '2024-09-13 23:34:34', NULL),
(5807, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 07:59:10', '2024-09-14 07:59:10', NULL),
(5808, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 08:00:20', '2024-09-14 08:00:20', NULL),
(5809, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 08:17:14', '2024-09-14 08:17:14', NULL),
(5810, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 08:17:33', '2024-09-14 08:17:33', NULL),
(5811, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 08:35:59', '2024-09-14 08:35:59', NULL),
(5812, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 08:36:26', '2024-09-14 08:36:26', NULL),
(5813, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 08:36:44', '2024-09-14 08:36:44', NULL),
(5814, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 09:07:10', '2024-09-14 09:07:10', NULL),
(5815, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 09:07:34', '2024-09-14 09:07:34', NULL),
(5816, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 09:07:53', '2024-09-14 09:07:53', NULL),
(5817, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 09:08:14', '2024-09-14 09:08:14', NULL),
(5818, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 09:08:52', '2024-09-14 09:08:52', NULL),
(5819, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 09:09:07', '2024-09-14 09:09:07', NULL),
(5820, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 09:09:46', '2024-09-14 09:09:46', NULL),
(5821, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 09:16:21', '2024-09-14 09:16:21', NULL),
(5822, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 10:09:01', '2024-09-14 10:09:01', NULL),
(5823, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 10:37:15', '2024-09-14 10:37:15', NULL),
(5824, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 10:37:43', '2024-09-14 10:37:43', NULL),
(5825, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '-', '-', '2024-09-14 10:49:56', '2024-09-14 10:49:56', NULL),
(5826, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '-', '-', '2024-09-18 10:51:23', '2024-09-18 10:51:23', NULL),
(5827, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '-', '-', '2024-09-18 11:19:29', '2024-09-18 11:19:29', NULL),
(5828, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '-', '-', '2024-09-18 11:22:35', '2024-09-18 11:22:35', NULL),
(5829, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '-', '-', '2024-09-18 11:50:56', '2024-09-18 11:50:56', NULL),
(5830, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '-', '-', '2024-09-18 11:51:44', '2024-09-18 11:51:44', NULL),
(5831, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '-', '-', '2024-09-18 12:08:40', '2024-09-18 12:08:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wilayahs`
--

CREATE TABLE `tb_wilayahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_wilayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_wilayah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin BKPP', 'dev@gmail.com', NULL, '$2y$10$ZRN0TAwNOAk1iEeO3sMjBe1YHmHlUM5ZwqN9TXM5QF2CuEzPlhj7C', NULL, '2022-10-27 03:11:41', '2024-08-30 04:56:41'),
(2, 'Kidam Kusnandi', 'kidamkusnandi606@gmail.com', NULL, '$2y$10$dPh3T.ZNbmPNliZQGVEoUeKQyHYl/u.kJglDc.hAvDW7/aEYbhZ.6', NULL, '2022-11-15 02:38:12', '2022-11-15 02:38:12'),
(3, 'Novy Safitri', 'novysaf2004@gmail.com', NULL, '$2y$10$YBl6SVt0D9EtlMcosEfmO.TSE0R/2i7AEemiC3w5soWIJT8mPyzOa', NULL, '2022-11-16 00:03:50', '2022-11-16 00:03:50'),
(4, 'Azriel', 'azrilluthfimulyadi@gmail.com', NULL, '$2y$10$sevu5cynStuh0bZfPOF/lOhc4PpeunRZG1LvtGWT6InoTUNwXZJOm', NULL, '2023-04-07 21:19:37', '2023-04-07 21:19:37'),
(6, 'Rezha Ranmark', 'rezharanmark@gmail.com', NULL, '$2y$10$YF7l0XDFnP.YYyeCEjM5GOKVi2PTc5MEXqFugv6LUX820JYboje7y', NULL, '2024-06-28 05:07:43', '2024-06-28 05:07:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base_instagrams`
--
ALTER TABLE `base_instagrams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kalender_kegiatans`
--
ALTER TABLE `kalender_kegiatans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kkid` (`kkid`);

--
-- Indexes for table `kategori_kegiatans`
--
ALTER TABLE `kategori_kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_kegiatans`
--
ALTER TABLE `link_kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_sosials`
--
ALTER TABLE `media_sosials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_texts`
--
ALTER TABLE `module_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sub_forums`
--
ALTER TABLE `sub_forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indexes for table `tb_anggarans`
--
ALTER TABLE `tb_anggarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_anggarans_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_artikels`
--
ALTER TABLE `tb_artikels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_artikels_id_kategori_artikel_foreign` (`id_kategori_artikel`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_kategori_konten` (`id_kategori_konten`);

--
-- Indexes for table `tb_comments`
--
ALTER TABLE `tb_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indexes for table `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ebook`
--
ALTER TABLE `tb_ebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori_ebook` (`id_kategori_ebook`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_kategori_konten_ebook` (`id_kategori_konten_ebook`);

--
-- Indexes for table `tb_galeris`
--
ALTER TABLE `tb_galeris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_galeris_id_kategori_galeri_foreign` (`id_kategori_galeri`);

--
-- Indexes for table `tb_halamans`
--
ALTER TABLE `tb_halamans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_apds`
--
ALTER TABLE `tb_jenis_apds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_kendaraans`
--
ALTER TABLE `tb_jenis_kendaraans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_penyelamatans`
--
ALTER TABLE `tb_jenis_penyelamatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_regulasis`
--
ALTER TABLE `tb_jenis_regulasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_relawans`
--
ALTER TABLE `tb_jenis_relawans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_sops`
--
ALTER TABLE `tb_jenis_sops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_terbakars`
--
ALTER TABLE `tb_jenis_terbakars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori_artikels`
--
ALTER TABLE `tb_kategori_artikels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori_ebook`
--
ALTER TABLE `tb_kategori_ebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori_galeris`
--
ALTER TABLE `tb_kategori_galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori_kegiatans`
--
ALTER TABLE `tb_kategori_kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori_konten`
--
ALTER TABLE `tb_kategori_konten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori_konten_ebook`
--
ALTER TABLE `tb_kategori_konten_ebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kd_jenis_regulasis`
--
ALTER TABLE `tb_kd_jenis_regulasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kd_jenis_sops`
--
ALTER TABLE `tb_kd_jenis_sops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kegiatans`
--
ALTER TABLE `tb_kegiatans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_kegiatans_id_kategori_kegiatan_foreign` (`id_kategori_kegiatan`);

--
-- Indexes for table `tb_kejadian_kebakarans`
--
ALTER TABLE `tb_kejadian_kebakarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_kejadian_kebakarans_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_kejadian_penyelamatans`
--
ALTER TABLE `tb_kejadian_penyelamatans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_kejadian_penyelamatans_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_kelembagaans`
--
ALTER TABLE `tb_kelembagaans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_kelembagaans_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_kerjasama_daerahs`
--
ALTER TABLE `tb_kerjasama_daerahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_kerjasama_daerahs_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_keuntungans`
--
ALTER TABLE `tb_keuntungans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kontens`
--
ALTER TABLE `tb_kontens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_kontens_id_artikel_foreign` (`id_artikel`),
  ADD KEY `tb_kontens_id_kegiatan_foreign` (`id_kegiatan`),
  ADD KEY `tb_kontens_id_halaman_foreign` (`id_halaman`),
  ADD KEY `id_link` (`id_link`),
  ADD KEY `id_kategori_artikel` (`id_kategori_artikel`),
  ADD KEY `id_kategori_ebook` (`id_kategori_ebook`);

--
-- Indexes for table `tb_lelangs`
--
ALTER TABLE `tb_lelangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_links`
--
ALTER TABLE `tb_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penggunas`
--
ALTER TABLE `tb_penggunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_pertanyans`
--
ALTER TABLE `tb_pertanyans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_petas`
--
ALTER TABLE `tb_petas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_petas_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_regulasi_sops`
--
ALTER TABLE `tb_regulasi_sops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_regulasi_sops_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_relawans`
--
ALTER TABLE `tb_relawans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_relawans_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_sarpras`
--
ALTER TABLE `tb_sarpras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_sarpras_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_sdms`
--
ALTER TABLE `tb_sdms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_sdms_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_settings`
--
ALTER TABLE `tb_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_slides`
--
ALTER TABLE `tb_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_spms`
--
ALTER TABLE `tb_spms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_spms_id_wilayah_foreign` (`id_wilayah`);

--
-- Indexes for table `tb_submenus`
--
ALTER TABLE `tb_submenus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_subscribers`
--
ALTER TABLE `tb_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tahuns`
--
ALTER TABLE `tb_tahuns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tahun_anggarans`
--
ALTER TABLE `tb_tahun_anggarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tahun_spms`
--
ALTER TABLE `tb_tahun_spms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tentangs`
--
ALTER TABLE `tb_tentangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_videos`
--
ALTER TABLE `tb_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_visitors`
--
ALTER TABLE `tb_visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_wilayahs`
--
ALTER TABLE `tb_wilayahs`
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
-- AUTO_INCREMENT for table `base_instagrams`
--
ALTER TABLE `base_instagrams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kalender_kegiatans`
--
ALTER TABLE `kalender_kegiatans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kategori_kegiatans`
--
ALTER TABLE `kategori_kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `link_kegiatans`
--
ALTER TABLE `link_kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media_sosials`
--
ALTER TABLE `media_sosials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `module_texts`
--
ALTER TABLE `module_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_forums`
--
ALTER TABLE `sub_forums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_anggarans`
--
ALTER TABLE `tb_anggarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_artikels`
--
ALTER TABLE `tb_artikels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_comments`
--
ALTER TABLE `tb_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `tb_ebook`
--
ALTER TABLE `tb_ebook`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_galeris`
--
ALTER TABLE `tb_galeris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_halamans`
--
ALTER TABLE `tb_halamans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tb_jenis_apds`
--
ALTER TABLE `tb_jenis_apds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jenis_kendaraans`
--
ALTER TABLE `tb_jenis_kendaraans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jenis_penyelamatans`
--
ALTER TABLE `tb_jenis_penyelamatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jenis_regulasis`
--
ALTER TABLE `tb_jenis_regulasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jenis_relawans`
--
ALTER TABLE `tb_jenis_relawans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jenis_sops`
--
ALTER TABLE `tb_jenis_sops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jenis_terbakars`
--
ALTER TABLE `tb_jenis_terbakars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kategori_artikels`
--
ALTER TABLE `tb_kategori_artikels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_kategori_ebook`
--
ALTER TABLE `tb_kategori_ebook`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_kategori_galeris`
--
ALTER TABLE `tb_kategori_galeris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kategori_kegiatans`
--
ALTER TABLE `tb_kategori_kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kategori_konten`
--
ALTER TABLE `tb_kategori_konten`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_kategori_konten_ebook`
--
ALTER TABLE `tb_kategori_konten_ebook`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_kd_jenis_regulasis`
--
ALTER TABLE `tb_kd_jenis_regulasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kd_jenis_sops`
--
ALTER TABLE `tb_kd_jenis_sops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kegiatans`
--
ALTER TABLE `tb_kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kejadian_kebakarans`
--
ALTER TABLE `tb_kejadian_kebakarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kejadian_penyelamatans`
--
ALTER TABLE `tb_kejadian_penyelamatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kelembagaans`
--
ALTER TABLE `tb_kelembagaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kerjasama_daerahs`
--
ALTER TABLE `tb_kerjasama_daerahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_keuntungans`
--
ALTER TABLE `tb_keuntungans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kontens`
--
ALTER TABLE `tb_kontens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tb_lelangs`
--
ALTER TABLE `tb_lelangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_links`
--
ALTER TABLE `tb_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_menus`
--
ALTER TABLE `tb_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_penggunas`
--
ALTER TABLE `tb_penggunas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pertanyans`
--
ALTER TABLE `tb_pertanyans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_petas`
--
ALTER TABLE `tb_petas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_regulasi_sops`
--
ALTER TABLE `tb_regulasi_sops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_relawans`
--
ALTER TABLE `tb_relawans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_sarpras`
--
ALTER TABLE `tb_sarpras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_sdms`
--
ALTER TABLE `tb_sdms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_settings`
--
ALTER TABLE `tb_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_slides`
--
ALTER TABLE `tb_slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_spms`
--
ALTER TABLE `tb_spms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_submenus`
--
ALTER TABLE `tb_submenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tb_subscribers`
--
ALTER TABLE `tb_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tahuns`
--
ALTER TABLE `tb_tahuns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tahun_anggarans`
--
ALTER TABLE `tb_tahun_anggarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tahun_spms`
--
ALTER TABLE `tb_tahun_spms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tentangs`
--
ALTER TABLE `tb_tentangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_videos`
--
ALTER TABLE `tb_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_visitors`
--
ALTER TABLE `tb_visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5832;

--
-- AUTO_INCREMENT for table `tb_wilayahs`
--
ALTER TABLE `tb_wilayahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_forums`
--
ALTER TABLE `sub_forums`
  ADD CONSTRAINT `sub_forums_ibfk_1` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`);

--
-- Constraints for table `tb_anggarans`
--
ALTER TABLE `tb_anggarans`
  ADD CONSTRAINT `tb_anggarans_id_wilayah_foreign` FOREIGN KEY (`id_wilayah`) REFERENCES `tb_wilayahs` (`id`);

--
-- Constraints for table `tb_ebook`
--
ALTER TABLE `tb_ebook`
  ADD CONSTRAINT `tb_ebook_ibfk_1` FOREIGN KEY (`id_kategori_konten_ebook`) REFERENCES `tb_kategori_konten_ebook` (`id`),
  ADD CONSTRAINT `tb_ebook_ibfk_2` FOREIGN KEY (`id_kategori_konten_ebook`) REFERENCES `tb_kategori_konten_ebook` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
