-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2019 pada 12.56
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_desc` text COLLATE utf8mb4_unicode_ci,
  `image_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `image_title`, `image_desc`, `image_src`, `created_at`, `updated_at`) VALUES
(11, 'Practical', 'gina', 'pixel art5.png', '2019-03-29 22:47:20', '2019-03-29 22:47:20'),
(12, 'Practical', 'gina', 'pixel art6.jpg', '2019-03-29 22:47:21', '2019-03-29 22:47:21'),
(13, 'Practical', 'gina', 'pixel art7.jpg', '2019-03-29 22:47:21', '2019-03-29 22:47:21'),
(14, 'Dilan : Dia Adalah Dilanku Tahun 1990', 'Buku yang ditulis Pidi Baiq', 'BD_Dilan.jpg', '2019-03-29 23:00:05', '2019-03-29 23:00:05'),
(15, 'Dear Nathan', 'Buku yang ditulis Erisca Febriani', 'DB_DearNathan.jpg', '2019-03-29 23:03:07', '2019-03-29 23:03:07'),
(21, 'Dear', 'Buku novel', 'DB_DearNathan.jpg', '2019-04-12 23:53:18', '2019-04-12 23:53:18'),
(37, 'Banyak Buku', 'hahahahah', '19.jpg', '2019-04-21 08:01:30', '2019-04-21 08:01:30'),
(38, 'Banyak Buku', 'hahahahah', '20.jpg', '2019-04-21 08:01:30', '2019-04-21 08:01:30'),
(39, 'Banyak Buku', 'hahahahah', '21.jpg', '2019-04-21 08:01:30', '2019-04-21 08:01:30'),
(44, 'Pergi', 'm,mfjkghkjfdhjghkkhsdusdkaj', '21.jpg', '2019-04-25 00:51:40', '2019-04-25 00:51:40'),
(77, 'Dear Nathan', 'Erisca Febrianti', '4.jpg', '2019-04-29 07:01:08', '2019-04-29 07:01:08'),
(78, 'Dear Nathan', 'Erisca Febrianti', '4a.jpg', '2019-04-29 07:01:08', '2019-04-29 07:01:08'),
(79, 'Dear Nathan', 'Erisca Febrianti', '4b.jpg', '2019-04-29 07:01:08', '2019-04-29 07:01:08'),
(80, 'Too Good For You', 'Adeliany Azfar', '17.jpg', '2019-04-29 07:02:06', '2019-04-29 07:02:06'),
(81, 'Too Good For You', 'Adeliany Azfar', '17a.jpg', '2019-04-29 07:02:06', '2019-04-29 07:02:06'),
(82, 'Too Good For You', 'Adeliany Azfar', '17b.jpg', '2019-04-29 07:02:06', '2019-04-29 07:02:06'),
(83, 'Kata', 'Rintik Sedu', '20.jpg', '2019-04-29 07:03:19', '2019-04-29 07:03:19'),
(84, 'Kata', 'Rintik Sedu', '20a.jpg', '2019-04-29 07:03:20', '2019-04-29 07:03:20'),
(85, 'Kata', 'Rintik Sedu', '20b.jpg', '2019-04-29 07:03:20', '2019-04-29 07:03:20'),
(86, 'Catatan Juang', 'Fiersa Besari', '19.jpg', '2019-04-29 07:03:53', '2019-04-29 07:03:53'),
(87, 'Catatan Juang', 'Fiersa Besari', '19a.jpg', '2019-04-29 07:03:54', '2019-04-29 07:03:54'),
(88, 'Catatan Juang', 'Fiersa Besari', '19b.jpg', '2019-04-29 07:03:54', '2019-04-29 07:03:54'),
(92, 'Aroma Karsa', 'Dee Lestari', '6.jpg', '2019-04-29 07:18:52', '2019-04-29 07:18:52'),
(93, 'Aroma Karsa', 'Dee Lestari', '6a.jpg', '2019-04-29 07:18:52', '2019-04-29 07:18:52'),
(94, 'Aroma Karsa', 'Dee Lestari', '6b.jpg', '2019-04-29 07:18:53', '2019-04-29 07:18:53'),
(98, 'Cantik Itu Luka', 'Eka Kurniawan', '7.jpg', '2019-04-29 07:20:44', '2019-04-29 07:20:44'),
(99, 'Cantik Itu Luka', 'Eka Kurniawan', '7a.jpg', '2019-04-29 07:20:45', '2019-04-29 07:20:45'),
(100, 'Cantik Itu Luka', 'Eka Kurniawan', '7b.jpg', '2019-04-29 07:20:45', '2019-04-29 07:20:45'),
(101, 'Distilasi Alkena', 'Wira Negara', '8.jpg', '2019-04-29 07:21:53', '2019-04-29 07:21:53'),
(102, 'Distilasi Alkena', 'Wira Negara', '8a.jpg', '2019-04-29 07:21:53', '2019-04-29 07:21:53'),
(103, 'Distilasi Alkena', 'Wira Negara', '8b.jpg', '2019-04-29 07:21:53', '2019-04-29 07:21:53'),
(104, 'Aku Anak Sehat!', 'Watiek Ideo dan Nindia Maya', '10.jpg', '2019-04-29 07:23:36', '2019-04-29 07:23:36'),
(105, 'Aku Anak Sehat!', 'Watiek Ideo dan Nindia Maya', '10a.png', '2019-04-29 07:23:36', '2019-04-29 07:23:36'),
(106, '365 Bedtime Stories', 'Gramedia', '11.jpg', '2019-04-29 07:24:01', '2019-04-29 07:24:01'),
(107, '365 Bedtime Stories', 'Gramedia', '11a.jpg', '2019-04-29 07:24:01', '2019-04-29 07:24:01'),
(108, '365 Bedtime Stories', 'Gramedia', '11b.jpg', '2019-04-29 07:24:02', '2019-04-29 07:24:02'),
(112, 'Notes From God', 'Abdillah F Hasan', '14.jpg', '2019-04-29 07:27:58', '2019-04-29 07:27:58'),
(113, 'Notes From God', 'Abdillah F Hasan', '14a.jpg', '2019-04-29 07:27:58', '2019-04-29 07:27:58'),
(114, 'Notes From God', 'Abdillah F Hasan', '14b.jpg', '2019-04-29 07:27:59', '2019-04-29 07:27:59'),
(121, 'Dilan 1990', 'Pidi Baiq', '1.png', '2019-04-29 07:33:15', '2019-04-29 07:33:15'),
(122, 'Dilan 1990', 'Pidi Baiq', '1a.jpg', '2019-04-29 07:33:15', '2019-04-29 07:33:15'),
(123, 'Dilan 1990', 'Pidi Baiq', '1b.jpg', '2019-04-29 07:33:16', '2019-04-29 07:33:16'),
(124, 'Why Children Bully?', 'Robert Pereira', '16.jpg', '2019-04-29 17:59:31', '2019-04-29 17:59:31'),
(125, 'Why Children Bully?', 'Robert Pereira', '16a.jpg', '2019-04-29 17:59:31', '2019-04-29 17:59:31'),
(126, 'Why Children Bully?', 'Robert Pereira', '16b.jpg', '2019-04-29 17:59:31', '2019-04-29 17:59:31'),
(130, 'Pergi', 'Tere Liye', '21.jpg', '2019-04-29 18:00:32', '2019-04-29 18:00:32'),
(131, 'Pergi', 'Tere Liye', '21a.jpg', '2019-04-29 18:00:32', '2019-04-29 18:00:32'),
(132, 'Pergi', 'Tere Liye', '21b.jpg', '2019-04-29 18:00:32', '2019-04-29 18:00:32'),
(133, 'Keberangkatan', 'Nurhayati Srihardini', '2.jpg', '2019-04-29 18:50:42', '2019-04-29 18:50:42'),
(134, 'Keberangkatan', 'Nurhayati Srihardini', '2a.jpg', '2019-04-29 18:50:42', '2019-04-29 18:50:42'),
(135, 'Keberangkatan', 'Nurhayati Srihardini', '2b.jpg', '2019-04-29 18:50:42', '2019-04-29 18:50:42'),
(136, 'Surat Kopi', 'Joko Pinurbo', '3.jpg', '2019-04-29 18:54:08', '2019-04-29 18:54:08'),
(137, 'Surat Kopi', 'Joko Pinurbo', '3a.jpg', '2019-04-29 18:54:09', '2019-04-29 18:54:09'),
(138, 'Surat Kopi', 'Joko Pinurbo', '3b.jpg', '2019-04-29 18:54:09', '2019-04-29 18:54:09'),
(139, 'Serendipity', 'Erisca Febrianti', '5.jpg', '2019-05-03 02:27:16', '2019-05-03 02:27:16'),
(140, 'Serendipity', 'Erisca Febrianti', '5a.jpg', '2019-05-03 02:27:16', '2019-05-03 02:27:16'),
(141, 'Serendipity', 'Erisca Febrianti', '5b.jpg', '2019-05-03 02:27:16', '2019-05-03 02:27:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_23_113649_create_products_table', 1),
(4, '2019_03_23_113715_create_carts_table', 1),
(5, '2019_03_23_113729_create_cart_items_table', 1),
(6, '2019_03_23_113737_create_orders_table', 1),
(7, '2019_03_25_104755_create_images_table', 1),
(8, '2019_03_25_104800_create_vidios_table', 1),
(9, '2019_03_29_102232_create_product_images_table', 1),
(10, '2019_04_25_144150_create_order_items_table', 2),
(11, '2019_04_29_130721_create_product_reviews_table', 3),
(12, '2019_04_30_135216_create_order_items_table', 4),
(13, '2019_04_30_143151_create_orders_table', 5),
(14, '2019_04_30_144130_create_orders_table', 6),
(15, '2019_04_30_144509_create_orders_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total_price`, `shipping_address`, `city`, `provinsi`, `rt`, `rw`, `no_hp`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 8, 'PENDING', '11', 'Jalan Tampian No 3 Desa Jatiwangi Kecamatan Jatiwangi', 'Majalengka', 'Jawa Barat', '002', '006', '082240946693', 45454, '2019-04-30 07:46:24', '2019-04-30 07:46:24'),
(4, 2, 'PENDING', '10', 'Jalan Tampian No 3 Desa Jatiwangi Kecamatan Jatiwangi', 'Majalengka', 'Jawa Barat', '002', '006', '082240946396', 45454, '2019-05-03 03:49:15', '2019-05-03 03:49:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 25, 1, 11, '2019-04-30 07:46:24', '2019-04-30 07:46:24'),
(2, 2, 14, 2, 30, '2019-04-30 20:38:55', '2019-04-30 20:38:55'),
(3, 3, 26, 2, 10, '2019-05-03 03:37:21', '2019-05-03 03:37:21'),
(4, 4, 26, 1, 10, '2019-05-03 03:49:15', '2019-05-03 03:49:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vidio_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `price`, `description`, `image_url`, `vidio_url`, `created_at`, `updated_at`) VALUES
(8, 2, 'Serendipity', '20.00', 'Erisca Febrianti', NULL, NULL, '2019-03-29 23:12:25', '2019-04-29 07:18:31'),
(10, 2, 'Aroma Karsa', '12.00', 'Dee Lestari', NULL, NULL, '2019-04-13 01:33:47', '2019-04-29 07:18:52'),
(11, 2, 'Cantik Itu Luka', '18.00', '<h1>Eka Kurniawan</h1>', NULL, NULL, '2019-04-21 05:15:46', '2019-05-03 02:33:33'),
(12, 8, 'Distilasi Alkena', '23.00', 'Wira Negara', NULL, NULL, '2019-04-21 05:18:46', '2019-04-29 07:21:53'),
(13, 8, 'Aku Anak Sehat!', '10.00', 'Watiek Ideo dan Nindia Maya', NULL, NULL, '2019-04-21 05:20:31', '2019-04-29 07:23:35'),
(14, 8, '365 Bedtime Stories', '30.00', 'Gramedia', NULL, NULL, '2019-04-21 05:21:40', '2019-04-29 07:24:01'),
(15, 8, 'Dilan 1990', '21.00', 'Pidi Baiq', NULL, NULL, '2019-04-21 05:33:25', '2019-04-29 07:33:15'),
(16, 8, 'Notes From God', '27.00', 'Abdillah F Hasan', NULL, NULL, '2019-04-21 05:34:31', '2019-04-29 07:27:58'),
(18, 9, 'Dear Nathan', '11.00', 'Erisca Febrianti', NULL, NULL, '2019-04-22 22:00:46', '2019-04-29 07:01:08'),
(19, 9, 'Too Good For You', '28.00', 'Adeliany Azfar', NULL, NULL, '2019-04-23 16:18:03', '2019-04-29 07:02:05'),
(20, 9, 'Kata', '13.00', 'Rintik Sedu', NULL, NULL, '2019-04-23 16:20:16', '2019-04-29 07:03:19'),
(23, 9, 'Catatan Juang', '11.00', 'Fiersa Besari', NULL, NULL, '2019-04-29 07:03:53', '2019-04-29 07:03:53'),
(24, 2, 'Why Children Bully?', '15.00', 'Robert Pereira', NULL, NULL, '2019-04-29 17:59:31', '2019-04-29 17:59:31'),
(25, 2, 'Pergi', '11.00', 'Tere Liye', NULL, NULL, '2019-04-29 18:00:12', '2019-04-29 18:00:12'),
(26, 2, 'Keberangkatan', '10.00', 'Nurhayati Srihardini', NULL, NULL, '2019-04-29 18:50:42', '2019-04-29 18:50:42'),
(27, 2, 'Surat Kopi', '13.00', 'Joko Pinurbo', NULL, NULL, '2019-04-29 18:54:08', '2019-04-29 18:54:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_id`, `created_at`, `updated_at`) VALUES
(77, 18, 77, NULL, NULL),
(78, 18, 78, NULL, NULL),
(79, 18, 79, NULL, NULL),
(80, 19, 80, NULL, NULL),
(81, 19, 81, NULL, NULL),
(82, 19, 82, NULL, NULL),
(83, 20, 83, NULL, NULL),
(84, 20, 84, NULL, NULL),
(85, 20, 85, NULL, NULL),
(86, 23, 86, NULL, NULL),
(87, 23, 87, NULL, NULL),
(88, 23, 88, NULL, NULL),
(92, 10, 92, NULL, NULL),
(93, 10, 93, NULL, NULL),
(94, 10, 94, NULL, NULL),
(98, 11, 98, NULL, NULL),
(99, 11, 99, NULL, NULL),
(100, 11, 100, NULL, NULL),
(101, 12, 101, NULL, NULL),
(102, 12, 102, NULL, NULL),
(103, 12, 103, NULL, NULL),
(104, 13, 104, NULL, NULL),
(105, 13, 105, NULL, NULL),
(106, 14, 106, NULL, NULL),
(107, 14, 107, NULL, NULL),
(108, 14, 108, NULL, NULL),
(112, 16, 112, NULL, NULL),
(113, 16, 113, NULL, NULL),
(114, 16, 114, NULL, NULL),
(121, 15, 121, NULL, NULL),
(122, 15, 122, NULL, NULL),
(123, 15, 123, NULL, NULL),
(124, 24, 124, NULL, NULL),
(125, 24, 125, NULL, NULL),
(126, 24, 126, NULL, NULL),
(130, 25, 130, NULL, NULL),
(131, 25, 131, NULL, NULL),
(132, 25, 132, NULL, NULL),
(133, 26, 133, NULL, NULL),
(134, 26, 134, NULL, NULL),
(135, 26, 135, NULL, NULL),
(136, 27, 136, NULL, NULL),
(137, 27, 137, NULL, NULL),
(138, 27, 138, NULL, NULL),
(139, 8, 139, NULL, NULL),
(140, 8, 140, NULL, NULL),
(141, 8, 141, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `description`, `comen`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 10, 'produkbaik', 'bagus', 1, '2019-04-30 22:29:53', '2019-04-30 22:29:53'),
(2, 2, 10, 'produk baik', 'bagus', 5, '2019-04-30 23:04:53', '2019-04-30 23:04:53'),
(3, 2, 10, 'menarik', 'cepat', 4, '2019-04-30 23:06:49', '2019-04-30 23:06:49'),
(4, 2, 10, 'menarik', 'cepat', 3, '2019-04-30 23:08:46', '2019-04-30 23:08:46'),
(5, 2, 10, 'menarik', 'cepat', 3, '2019-04-30 23:10:13', '2019-04-30 23:10:13'),
(6, 2, 8, '<p>bagus</p>', 'cepat', 3, '2019-05-03 02:24:18', '2019-05-03 02:24:18'),
(7, 2, 8, '<p><em><strong>keren</strong></em></p>', 'sedeng', 4, '2019-05-03 02:25:22', '2019-05-03 02:25:22'),
(8, 2, 16, '<p><strong>cakeeeppp</strong></p>', 'Lumayan', 4, '2019-05-03 03:34:28', '2019-05-03 03:34:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Gina Meilinda', 'ginameilinda2@gmail.com', '2019-03-29 22:25:08', '$2y$10$zu2ziYqnXwHeA/vl61yjSupjOVHsTtKKKKr9PcVC.4xMrjyAyYCTi', 'AMA7cTIl9eP56awpv1SonrNLDn2jWGuyBZ26bdy5IJORo5pQXi0eByXZL7RZ', '2019-03-29 22:09:45', '2019-04-30 20:57:57'),
(5, 'Siti Alawiyah', 'sitialwyh@gmail.com', NULL, '$2y$10$RV6Ch.ost1UWIQVNeiSoOu8SAmRfuj/x9SwIJI9IsZv1Np.vosr3K', NULL, '2019-03-29 23:22:18', '2019-03-29 23:22:18'),
(8, 'Gina', 'gina.meilinda295@gmail.com', '2019-03-29 23:38:18', '$2y$10$IMdEP1Z/U5df1rvkoAMJ/uTfPQwAc8.HhHaRu/4ZX7UEZb96qj.ZG', 'J0r22EKJs3HDlRCvHp3DQCa2gymt8P4OCBh6W8nuESW8iQgcDUE5hPiSGOpZ', '2019-03-29 23:38:02', '2019-03-29 23:38:18'),
(9, 'Miraz Dwi', 'mrazdiw@gmail.com', NULL, '$2y$10$FEODHlg696S6Rya.NDo9IO6hO3K8BEiZ/QE6JxQ2wEZd4h4bbVr2G', 'mYl7XgFxrsaAhpQL39VMOLnqFEdT107sQ78PST9vPgUKA3O0EPdNok652mNY', '2019-04-22 01:32:12', '2019-04-22 01:32:12'),
(10, 'aweu', 'aweu@gmail.com', NULL, '$2y$10$vmbqvxaMZ7KQZY16Ptyq1.UxnsiBygy9xrkiSfsGogvOnEY0O1zRe', NULL, '2019-04-25 05:36:00', '2019-04-25 05:36:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vidios`
--

CREATE TABLE `vidios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vidio_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vidio_desc` text COLLATE utf8mb4_unicode_ci,
  `vidio_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`),
  ADD KEY `product_images_image_id_foreign` (`image_id`);

--
-- Indeks untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `vidios`
--
ALTER TABLE `vidios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `vidios`
--
ALTER TABLE `vidios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
