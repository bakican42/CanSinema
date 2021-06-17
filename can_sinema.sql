-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Haz 2021, 22:10:30
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `can_sinema`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `avmler`
--

CREATE TABLE `avmler` (
  `id` int(10) UNSIGNED NOT NULL,
  `adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `il_id` int(10) UNSIGNED NOT NULL,
  `aktif_mi` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `avmler`
--

INSERT INTO `avmler` (`id`, `adi`, `il_id`, `aktif_mi`, `created_at`, `updated_at`) VALUES
(1, 'Park Adana AVM', 1, 1, '2021-05-29 09:16:27', '2021-06-05 11:46:29'),
(2, 'Adana Optimum AVM', 1, 1, '2021-05-29 09:35:16', '2021-06-05 11:46:49'),
(3, 'Adıyaman Park AVM', 2, 1, '2021-05-29 10:09:37', '2021-06-05 11:47:45'),
(4, 'Confident AVM', 2, 1, '2021-06-05 11:48:19', '2021-06-05 11:48:19'),
(5, 'Park Afyon AVM', 3, 1, '2021-06-05 11:48:56', '2021-06-05 11:48:56'),
(6, 'Afyon Gross AVM', 3, 1, '2021-06-05 11:49:45', '2021-06-05 11:49:45'),
(7, 'Doğubayazıt AVM', 4, 1, '2021-06-05 11:50:29', '2021-06-05 11:50:29'),
(8, 'İdeal AVM', 4, 1, '2021-06-05 11:51:07', '2021-06-05 11:51:07'),
(9, 'Amasya Park AVM', 5, 1, '2021-06-05 12:00:14', '2021-06-05 12:00:14'),
(10, 'Evtaç AVM', 5, 1, '2021-06-05 12:00:28', '2021-06-05 12:00:28'),
(11, 'Ankamall AVM', 6, 1, '2021-06-05 12:00:59', '2021-06-05 12:00:59'),
(12, 'Arcadium AVM', 6, 1, '2021-06-05 12:01:20', '2021-06-05 12:01:20'),
(13, 'Mark Antalya AVM', 7, 1, '2021-06-05 12:01:53', '2021-06-05 12:01:53'),
(14, 'Özdilek Park AVM', 7, 1, '2021-06-05 12:02:10', '2021-06-05 12:02:10'),
(15, 'Artrium AVM', 8, 1, '2021-06-05 12:02:47', '2021-06-05 12:02:47'),
(16, 'Filo AVM', 8, 1, '2021-06-05 12:03:17', '2021-06-05 12:03:17'),
(17, 'Forum Aydın AVM', 9, 1, '2021-06-05 12:03:51', '2021-06-05 12:03:51'),
(18, 'Adü Park AVM', 9, 1, '2021-06-05 12:04:15', '2021-06-05 12:04:15'),
(19, 'Yaylada AVM', 10, 1, '2021-06-05 12:04:43', '2021-06-05 12:04:43'),
(20, '266 AVM', 10, 1, '2021-06-05 12:05:01', '2021-06-05 12:05:01'),
(21, 'Kayı Plaza AVM', 11, 1, '2021-06-05 12:05:33', '2021-06-05 12:05:33'),
(22, 'Erfa AVM', 11, 1, '2021-06-05 12:05:51', '2021-06-05 12:05:51'),
(23, 'Bingöl AVM', 12, 1, '2021-06-05 12:11:20', '2021-06-05 12:12:05'),
(24, 'Altunlar AVM', 12, 1, '2021-06-05 12:11:54', '2021-06-05 12:11:54'),
(25, 'Bitlis AVM', 13, 1, '2021-06-05 12:12:28', '2021-06-05 12:12:28'),
(26, 'Koçmar AVM', 13, 1, '2021-06-05 12:12:39', '2021-06-05 12:12:39'),
(27, '14 Burda AVM', 14, 1, '2021-06-05 12:12:56', '2021-06-05 12:12:56'),
(28, 'Bolu Park AVM', 14, 1, '2021-06-05 12:13:14', '2021-06-05 12:13:14'),
(29, 'Bura AVM', 15, 1, '2021-06-05 12:13:49', '2021-06-05 12:13:49'),
(30, 'Tahta Kale AVM', 15, 1, '2021-06-05 12:14:07', '2021-06-05 12:14:07'),
(31, 'Koru Park AVM', 16, 1, '2021-06-05 12:14:24', '2021-06-05 12:14:24'),
(32, 'Kent Meydanı AVM', 16, 1, '2021-06-05 12:14:36', '2021-06-05 12:14:36'),
(33, '17 Burda AVM', 17, 1, '2021-06-05 12:14:47', '2021-06-05 12:14:47'),
(34, 'Troy Park AVM', 17, 1, '2021-06-05 12:15:01', '2021-06-05 12:15:01'),
(35, 'Çankırı AVM', 18, 1, '2021-06-05 12:15:21', '2021-06-05 12:15:21'),
(36, 'Yunus Park AVM', 18, 1, '2021-06-05 12:15:33', '2021-06-05 12:15:33'),
(37, 'Ahl Park AVM', 19, 1, '2021-06-05 12:16:00', '2021-06-05 12:16:00'),
(38, 'Çorum AVM', 19, 1, '2021-06-05 12:16:15', '2021-06-05 12:16:15'),
(39, 'Forum Çamlık AVM', 20, 1, '2021-06-05 12:16:43', '2021-06-05 12:16:43'),
(40, 'Sinpaş Aquamall AVM', 20, 1, '2021-06-05 12:17:06', '2021-06-05 12:17:06'),
(41, 'Ceylan Karavil Park AVM', 21, 1, '2021-06-05 12:17:43', '2021-06-05 12:17:43'),
(42, 'Forum Diyarbakır AVM', 21, 1, '2021-06-05 12:18:03', '2021-06-05 12:18:03'),
(43, 'Erasta Edirne AVM', 22, 1, '2021-06-05 12:18:26', '2021-06-05 12:18:26'),
(44, 'Edirne Park AVM', 22, 1, '2021-06-05 12:18:39', '2021-06-05 12:18:39'),
(45, 'Park23 AVM', 23, 1, '2021-06-05 12:19:05', '2021-06-05 12:19:05'),
(46, 'Akgün AVM', 23, 1, '2021-06-05 12:19:16', '2021-06-05 12:19:16'),
(47, 'Erzincan Park AVM', 24, 1, '2021-06-05 12:19:38', '2021-06-05 12:19:38'),
(48, 'Er Merkez AVM', 24, 1, '2021-06-05 12:19:55', '2021-06-05 12:19:55'),
(49, 'Forum Erzurum AVM', 25, 1, '2021-06-05 12:20:21', '2021-06-05 12:20:21'),
(50, 'Palerium AVM', 25, 1, '2021-06-05 12:20:38', '2021-06-05 12:20:38'),
(51, 'Es Park AVM', 26, 1, '2021-06-05 12:20:57', '2021-06-05 12:20:57'),
(52, 'Özdilek Eskişehir AVM', 26, 1, '2021-06-05 12:21:12', '2021-06-05 12:21:12'),
(53, 'Primemall AVM', 27, 1, '2021-06-05 12:21:53', '2021-06-05 12:21:53'),
(54, 'Sanko Park AVM', 27, 1, '2021-06-05 12:22:08', '2021-06-05 12:22:08'),
(55, 'G-City AVM', 28, 1, '2021-06-05 12:22:36', '2021-06-05 12:22:36'),
(56, 'Sabah Center AVM', 28, 1, '2021-06-05 12:22:59', '2021-06-05 12:22:59'),
(57, 'Metropol AVM', 29, 1, '2021-06-05 12:23:19', '2021-06-05 12:23:19'),
(58, 'Moda AVM', 29, 1, '2021-06-05 12:23:29', '2021-06-05 12:23:29'),
(59, 'Migmar AVM', 30, 1, '2021-06-05 12:24:02', '2021-06-05 12:24:02'),
(60, 'Ahs AVM', 30, 1, '2021-06-05 12:24:14', '2021-06-05 12:24:14'),
(61, 'Palladium Antakya AVM', 31, 1, '2021-06-05 12:24:44', '2021-06-05 12:24:44'),
(62, 'Primemall Antakya AVM', 31, 1, '2021-06-05 12:25:16', '2021-06-05 12:25:16'),
(63, 'Iyaş Park AVM', 32, 1, '2021-06-05 12:25:46', '2021-06-05 12:25:46'),
(64, 'Centrum Garden AVM', 32, 1, '2021-06-05 12:26:06', '2021-06-05 12:26:06'),
(65, 'Forum Mersin AVM', 33, 1, '2021-06-05 12:26:25', '2021-06-05 12:26:25'),
(66, 'Palm City AVM', 33, 1, '2021-06-05 12:26:39', '2021-06-05 12:26:39'),
(67, 'Hiltown AVM', 34, 1, '2021-06-05 12:34:55', '2021-06-05 12:34:55'),
(68, 'Piazza AVM', 34, 1, '2021-06-05 12:35:09', '2021-06-05 12:35:09'),
(69, 'İzmir Optimum AVM', 35, 1, '2021-06-05 12:36:14', '2021-06-05 12:36:14'),
(70, 'Forum Bornova AVM', 35, 1, '2021-06-05 12:36:33', '2021-06-05 12:36:33'),
(71, 'Marka Park AMV', 36, 1, '2021-06-05 12:37:00', '2021-06-05 12:37:00'),
(72, 'Tem AVM', 36, 1, '2021-06-05 12:37:14', '2021-06-05 12:37:14'),
(73, 'Kastamall AVM', 37, 1, '2021-06-05 12:39:28', '2021-06-05 12:39:28'),
(74, 'Barutçuoğlu AVM', 37, 1, '2021-06-05 12:39:46', '2021-06-05 12:39:46'),
(75, 'Forum Kayseri AVM', 38, 1, '2021-06-05 12:40:21', '2021-06-05 12:40:21'),
(76, 'Kayseri Park AVM', 38, 1, '2021-06-05 12:40:36', '2021-06-05 12:40:36'),
(77, 'Şelale AVM', 39, 1, '2021-06-05 12:41:01', '2021-06-05 12:41:01'),
(78, 'Esme AVM', 39, 1, '2021-06-05 12:41:18', '2021-06-05 12:41:18'),
(79, 'Turka AVM', 40, 1, '2021-06-05 12:42:12', '2021-06-05 12:42:12'),
(80, 'Yön AVM', 40, 1, '2021-06-05 12:42:30', '2021-06-05 12:42:30'),
(81, 'Symbol AVM', 41, 0, '2021-06-05 12:42:59', '2021-06-05 12:42:59'),
(82, 'Ncity AVM', 41, 1, '2021-06-05 12:43:11', '2021-06-05 12:43:11'),
(83, 'Konya Kent Plaza AVM', 42, 1, '2021-06-05 12:43:32', '2021-06-05 12:43:32'),
(84, 'Kule Site AVM', 42, 1, '2021-06-05 12:43:54', '2021-06-05 12:44:06'),
(85, 'Sera Kütahya AVM', 43, 1, '2021-06-05 12:45:00', '2021-06-05 12:45:00'),
(86, 'Kütahya Park AVM', 43, 1, '2021-06-05 12:45:12', '2021-06-05 12:45:12'),
(87, 'Malatya Park AVM', 44, 1, '2021-06-05 12:45:48', '2021-06-05 12:45:48'),
(88, 'Forum Malatya AVM', 44, 1, '2021-06-05 12:46:07', '2021-06-05 12:46:07'),
(89, 'Forum Magnesia AVM', 45, 1, '2021-06-05 12:46:30', '2021-06-05 12:46:30'),
(90, '45 Park AVM', 45, 1, '2021-06-05 12:46:49', '2021-06-05 12:46:49'),
(91, 'Maraş Piazza AVM', 46, 1, '2021-06-05 12:47:13', '2021-06-05 12:47:13'),
(92, 'Maraş AVM', 46, 1, '2021-06-05 12:47:24', '2021-06-05 12:47:24'),
(93, 'Mardin AVM', 47, 1, '2021-06-05 12:47:48', '2021-06-05 12:47:48'),
(94, 'Forum Mardin AVM', 47, 1, '2021-06-05 12:48:06', '2021-06-05 12:48:06'),
(95, 'Festiva AVM', 48, 1, '2021-06-05 12:48:26', '2021-06-05 12:48:26'),
(96, 'Muğla Life AVM', 48, 1, '2021-06-05 12:48:38', '2021-06-05 12:48:38'),
(97, 'Beyaz Saray AVM', 49, 1, '2021-06-05 12:48:57', '2021-06-05 12:48:57'),
(98, 'Ceylan AVM', 49, 1, '2021-06-05 12:49:10', '2021-06-05 12:49:10'),
(99, 'Nissara AVM', 50, 1, '2021-06-05 12:49:40', '2021-06-05 12:49:40'),
(100, 'Forum Kapadokya AVM', 50, 1, '2021-06-05 12:50:03', '2021-06-05 12:50:03'),
(101, 'Yaşam Park AVM', 51, 1, '2021-06-05 12:50:26', '2021-06-05 12:50:26'),
(102, 'Forum Niğde AVM', 51, 1, '2021-06-05 12:50:41', '2021-06-05 12:50:41'),
(103, 'Novada Ordu AVM', 52, 1, '2021-06-05 12:51:03', '2021-06-05 12:51:03'),
(104, 'Soylu AVM', 52, 1, '2021-06-05 12:51:20', '2021-06-05 12:51:20'),
(105, 'Rize Şimal AVM', 53, 1, '2021-06-05 12:51:46', '2021-06-05 12:51:46'),
(106, 'İmece Park AVM', 53, 1, '2021-06-05 12:51:59', '2021-06-05 12:51:59'),
(107, 'Agora AVM', 54, 1, '2021-06-05 12:52:21', '2021-06-05 12:52:21'),
(108, 'Serdivan AVM', 54, 1, '2021-06-05 12:52:33', '2021-06-05 12:52:33'),
(109, 'Piazza Samsun AVM', 55, 1, '2021-06-05 12:52:51', '2021-06-05 12:52:51'),
(110, 'Bulvar AVM', 55, 1, '2021-06-05 12:53:04', '2021-06-05 12:53:04'),
(111, 'Andera Park AVM', 56, 1, '2021-06-05 12:53:31', '2021-06-05 12:53:31'),
(112, 'Siirt Park AVM', 56, 1, '2021-06-05 12:53:45', '2021-06-05 12:53:45'),
(113, 'Metropol Sinop AVM', 57, 1, '2021-06-05 12:54:20', '2021-06-05 12:54:20'),
(114, 'Çarşım AVM', 57, 1, '2021-06-05 12:54:39', '2021-06-05 12:54:39'),
(115, 'Primemall Sivas AVM', 58, 1, '2021-06-05 12:55:13', '2021-06-05 12:55:13'),
(116, 'Forum Sivas AVM', 58, 1, '2021-06-05 12:55:30', '2021-06-05 12:55:30'),
(117, 'Tekira AVM', 59, 1, '2021-06-05 12:56:01', '2021-06-05 12:56:01'),
(118, 'Ysk Center AVM', 59, 1, '2021-06-05 12:56:21', '2021-06-05 12:56:21'),
(119, 'Novada Tokat AVM', 60, 1, '2021-06-05 12:56:46', '2021-06-05 12:56:46'),
(120, 'Tokat Park AVM', 60, 1, '2021-06-05 12:57:00', '2021-06-05 12:57:19'),
(121, '61 Burda AVM', 61, 1, '2021-06-05 12:57:42', '2021-06-05 12:57:42'),
(122, 'Forum Trabzon AVM', 61, 1, '2021-06-05 12:57:54', '2021-06-05 12:57:54'),
(123, 'Çam AVM', 62, 1, '2021-06-05 12:58:04', '2021-06-05 12:58:04'),
(124, 'İkisu AVM', 62, 1, '2021-06-05 12:58:19', '2021-06-05 12:58:19'),
(125, 'Piazza Şanlıurfa AVM', 63, 1, '2021-06-05 12:58:44', '2021-06-05 12:58:44'),
(126, 'Novada Park AVM', 63, 1, '2021-06-05 12:59:03', '2021-06-05 12:59:03'),
(127, 'Özdilek Uşak AVM', 64, 1, '2021-06-05 12:59:41', '2021-06-05 12:59:41'),
(128, 'Flo Festiva AVM', 64, 1, '2021-06-05 12:59:59', '2021-06-05 12:59:59'),
(129, 'Van AVM', 65, 1, '2021-06-05 13:00:53', '2021-06-05 13:00:53'),
(130, 'Metropol Van AVM', 65, 1, '2021-06-05 13:01:06', '2021-06-05 13:01:06'),
(131, 'Novada Yozgat AVM', 66, 1, '2021-06-05 13:01:39', '2021-06-05 13:01:39'),
(132, 'Yimpaş AVM', 66, 1, '2021-06-05 13:02:06', '2021-06-05 13:02:06'),
(133, 'Westa Life AVM', 67, 1, '2021-06-05 13:13:15', '2021-06-05 13:13:15'),
(134, 'Esas 67 AVM', 67, 1, '2021-06-05 13:13:29', '2021-06-05 13:13:29'),
(135, 'Aksaray AVM', 68, 1, '2021-06-05 13:13:47', '2021-06-05 13:13:47'),
(136, 'Historia AVM', 68, 1, '2021-06-05 13:14:03', '2021-06-05 13:14:03'),
(137, 'Bayburt AVM', 69, 1, '2021-06-05 13:14:23', '2021-06-05 13:14:23'),
(138, 'Forum Bayburt AVM', 69, 1, '2021-06-05 13:14:39', '2021-06-05 13:14:39'),
(139, 'Kuşbaşı AVM', 70, 1, '2021-06-05 13:15:02', '2021-06-05 13:15:02'),
(140, 'Park Karaman AVM', 70, 1, '2021-06-05 13:15:13', '2021-06-05 13:15:13'),
(141, 'Podium AVM', 71, 1, '2021-06-05 13:15:32', '2021-06-05 13:15:32'),
(142, 'Forum Kırıkkale AVM', 71, 1, '2021-06-05 13:15:52', '2021-06-05 13:16:21'),
(143, 'Batman AVM', 72, 1, '2021-06-05 13:16:36', '2021-06-05 13:16:36'),
(144, 'Worldmar AVM', 72, 1, '2021-06-05 13:17:01', '2021-06-05 13:17:01'),
(145, 'Cizre Park AVM', 73, 1, '2021-06-05 13:18:15', '2021-06-05 13:18:15'),
(146, 'Şırnak AVM', 73, 1, '2021-06-05 13:18:25', '2021-06-05 13:18:25'),
(147, 'Bartın Park AVM', 74, 1, '2021-06-05 13:18:52', '2021-06-05 13:18:52'),
(148, 'Maksi Bartın AVM', 74, 1, '2021-06-05 13:19:07', '2021-06-05 13:19:07'),
(149, 'Ardahan AVM', 75, 1, '2021-06-05 13:19:20', '2021-06-05 13:19:20'),
(150, 'Özgürler AVM', 75, 1, '2021-06-05 13:19:31', '2021-06-05 13:19:31'),
(151, 'Kipaş AVM', 76, 1, '2021-06-05 13:19:48', '2021-06-05 13:19:48'),
(152, 'Forum Iğdır AVM', 76, 1, '2021-06-05 13:20:02', '2021-06-05 13:20:02'),
(153, 'Yalova Star AVM', 77, 1, '2021-06-05 13:20:15', '2021-06-05 13:20:15'),
(154, 'Forum Yalova AVM', 77, 1, '2021-06-05 13:20:36', '2021-06-05 13:20:36'),
(155, 'Atamerkez AVM', 78, 1, '2021-06-05 13:21:15', '2021-06-05 13:21:15'),
(156, 'Kares AVM', 78, 1, '2021-06-05 13:21:27', '2021-06-05 13:21:27'),
(157, 'Kilis Park AVM', 79, 1, '2021-06-05 13:21:45', '2021-06-05 13:21:45'),
(158, 'Zelzele AVM', 79, 1, '2021-06-05 13:21:55', '2021-06-05 13:21:55'),
(159, 'Park 328 AVM', 80, 1, '2021-06-05 13:22:11', '2021-06-05 13:22:11'),
(160, 'Osmaniye Park AVM', 80, 1, '2021-06-05 13:22:23', '2021-06-05 13:22:23'),
(161, 'Krem Park AVM', 81, 1, '2021-06-05 13:22:41', '2021-06-05 13:22:41'),
(162, 'Özdilek Düzce AVM', 81, 1, '2021-06-05 13:22:53', '2021-06-05 13:22:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filmler`
--

CREATE TABLE `filmler` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `format_id` int(10) UNSIGNED NOT NULL,
  `salon_id` int(10) NOT NULL,
  `dil_id` int(10) UNSIGNED NOT NULL,
  `adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yonetmen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oyuncular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fragman_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aciklama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vizyon_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `bilet_ucreti` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `filmler`
--

INSERT INTO `filmler` (`id`, `kategori_id`, `format_id`, `salon_id`, `dil_id`, `adi`, `yonetmen`, `oyuncular`, `fragman_url`, `sure`, `aciklama`, `vizyon_tarihi`, `bilet_ucreti`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 2, 3, 1, 1, 'Antebellum', 'Gerard Bush, Christopher Renz', 'Jena Malone, Eric Lange, Janelle Monáe', 'https://www.youtube.com/embed/mXcZ7WDsVwk', '150 Dakika', 'Başarılı yazar Veronica Henley, bir kendisini korkunç bir gerçekliğin içinde sıkışmış bulur ve bu akıl almaz gizemi çok geç olmadan çözmek zorundadır. ANTEBELLUM, son yılların en beğenilen korku filmlerinden GET OUT ve US’ın yapımcıları ile çığır açan yönetmenler Gerard Bush ve Christoper Rezn’den dehşet verici bir film.', '2021-06-02 21:00:00', '10.00', '2021-05-30 08:44:56', '2021-06-06 22:12:32', NULL),
(8, 1, 3, 3, 1, 'HellBoy', 'Neil Marshall', 'David Harbour, Ian McShane, Milla Jovovich', 'https://www.youtube.com/embed/dt5g5_1cKVk', '121 Dakika', 'Başrolünde Stranger Things dizisinden tanıdığımız David Harbour’ın yer aldığı, Hellboy filminin yönetmenliğini The Descent ve Doomsday filmlerinden tanıdığımız Neil Marshall\'ın üstleniyor. Mike Mignola‘nın hayal gücü sayesinde ortaya çıkan, cehennemden gelen ünlü çizgi roman karakteri Hellboy’un beyazperdedeki yepyeni macerasının senaryosunu Mignola ile birlikte Andrew Cosby ve Christopher Golden kaleme aldı. Hellboy bu yepyeni macerasında intikam ateşiyle yanıp tutuşan ve insanlığa savaş açan bir büyücüye karşı mücadele ediyor. Filmin oyuncu kadrosunda Harbour ile beraber Ian McShane, Daniel Dae Kim, Sasha Lane gibi isimler yer alırken; Resident Evil serisinden tanıdığımız Milla Jovovich, filmin kötü karakterini canlandırıyor.', '2021-06-07 13:40:44', '15.00', '2021-05-30 09:57:49', '2021-06-07 13:40:44', NULL),
(9, 13, 2, 1, 3, 'Jumanji: Yeni Seviye', 'Jake Kastan', 'Dwayne Johnson, Jack Black, Kevin Hart', 'https://www.youtube.com/embed/9DTXZgyxjYs', '125 dakika', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\">Jumanji: Yeni Seviye, arkadaşlarını kurtarmak için kendilerini yeniden oyunun içinde bulan gençlerin maceralarını konu ediyor. Jumanji maceralarından sağ olarak kurtulmayı başaran dört genç, üniversitenin tatile girmesi ile birlikte New Hampshire Brantford’daki evlerine geri döner. Hayatlarına yeni bir yön vermeye çalışan gençler, arkadaşlarını kurtarabilmek için kendilerini yeniden Jumanji dünyasının içinde bulur. Spencer oyuna yeniden girmek zorunda kaldığında, Martha, Fridge ve Bethany arkadaşlarını kurtarmak için Jumanji\'ye geri döner ve hiçbir şeyin bekledikleri gibi olmadığını fark eder. Jumanji artık değişmiştir ve sadece bir ormandan ibaret değildir. Ekip, daha tehlikeli bir hal alan oyunda karşılarına çıkan korkunç engelleri aşıp, oyundan kaçmanın yolunu bulabilecek midir?</span>', '2019-12-13 21:00:00', '30.00', '2021-06-05 15:58:22', '2021-06-05 15:58:22', NULL),
(11, 2, 2, 16, 2, 'PARAZİT', 'Bong Joon Ho', 'Song Kang-Ho, Woo-sik Choi, Park So-Dam', 'https://www.youtube.com/embed/5xH0HfJHsaY', '135 dakika', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\">Park Ailesi\'yle tanışın: soyla gelen servetin klasik bir tablosu. Diğer yanda ise Kim Ailesi, sokak zekası bakımından zengin ama başka hiçbir zenginliğe sahip değil.&nbsp;Şans veya kader olsun, bu iki ev halkı bir şekilde bir araya gelir ve Kim ailesi altın bir fırsatın varlığını hemen sezer.&nbsp;Kolej çağındaki Ki-woo tarafından manipülasyon konusunda yetiştirilen Kim çocukları, öğretmen ve sanat terapisti görevleriyle kendilerini Park ailesinin arasına çabucak yerleştirir.&nbsp;Kim\'ler “vazgeçilmez” lüks hizmetler sunarken, Parklar ise habersizce evlerindeki her şeyi Kim ailesine kaybetmektedir. Ancak kısa sürede bu düzen bir tehditle karşılaşır.&nbsp;Asalak bir misafir Kim ailesinin yeni keşfettikleri konforu tehdit eder hale geldiğinde, vahşi ve zorlayıcı bir üstünlük mücadelesi patlak verir. Bu mücadele&nbsp;Kim ve Park aileleri arasındaki kırılgan ekosistemi yıkmakla tehdit etmektedir...</span>', '2021-06-07 13:38:44', '20.00', '2021-06-06 11:32:49', '2021-06-07 13:38:44', NULL),
(14, 13, 2, 29, 1, 'Hobbit: Beklenmedik Yolculuk', 'Peter Jackson', 'Andy Serkis, Ian McKellen, Martin Freeman, Richard Armitage', 'https://www.youtube.com/embed/h7XzHzoBgcc', '150 dakika', '<span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Ejder Smaug’dan Erebor’un kayıp Cüce Krallığı’nı geri almak için giriştikleri bu macerada çirkin Goblinler, Orklar, öldürücü Warglar, Devasa Örümcekler ve İnanılmaz Büyücülerle dolu çılgın yollardan geçeceklerdir.</span>', '2021-06-06 21:00:00', '20.00', '2021-06-06 17:48:11', '2021-06-07 13:38:35', NULL),
(15, 4, 2, 36, 3, 'Bay Watch', 'Seth Gordon', 'Alexandra Daddario, Dwayne Johnson, Priyanka Chopra, Zac Efron', 'https://www.youtube.com/embed/eyKOgnaf0BU', '180 dakika', '<span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">2017 yapımı Amerikan komedi ve aksiyon filmi olan&nbsp;</span><strong style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Baywatch</strong><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">, 2 haziran 2017’de ülkemizde vizyona girmiştir. Filmin yönetmenliğini “E-katil”, “The King Of Kong” “Pixels” ve “Freakonomics” filmlerinin yapımcı ve yönetmeni olan Seth Gordon yapmaktadır. Filmin senaryosunu ise Michael Berk, Douglas Schwartz ve Gregory J. Bonann’ın kaleme aldığı orijinal Baywatch filminin senaryosundan esinlenerek Jay Scherick, David Ronn, Thomas Lennon, Robert Ben Grant kaleme almışlardır. Damian Shannon ve Mark Swift yazılan senaryoyu beyaz perdeye uyarlamıştır.</span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Başrollerinde Dwayne Johnson, Zac Efron, Priyanca Chopra, Alexandra Daddario, Kell Rohrbach, Ilfenesh Hadera ve John Bass’ın bulunduğu film Altın Fragmen ödüllerinde en iyi komedi ödülü, Genç Seçimler Ödüllerinde En iyi komedi filmi, Golden Schomes Ödüllerinde ise yılın filmi ödülü ve Alexandra Daddario için yılın oyuncusu ödüllerine aday olmuş ve almıştır.</span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Florida Emrald Körfezinde, Teğmen Mitch Buchanon ve onun sahil güvenlik ekibi sahili ve körfez bölgesini korumaktadır. Kariyeri boyunca 500’ün üzerinde can kurtaran Mitch, sabah koşularından birisi sırasında bir paket uyuşturucu bulur. Huntley Club adlı gece kulübünün yakınlarında bulduğu uyuşturucunun kulüple bir alakası olduğunu düşünür. Gece kulübü Kolombiyalı iş kadını Victoria Leeds tarafından yönetilmektedir ve Victoria meclis üyesi Rodriguez’e yasadışı işlerinin göz ardı edilmesi için bu işlerinden kazandığı paradan payını vermektedir.</span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Mİtch Buchanon görevini yapmak için Florida, Emerald Bay’e gelir ve suda paraşütle sörf yapan bir adam görür. Adam kafasını bir kayaya çarpar ve suda kaybolur. Sahil güvenlik olan Mitch görevini yapmak için suya atlar.</span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Bu olaydan sonra Mitch sabah koşusunu yapmak için Emerald Bay çevresinde dolaşmaya başlar. Koşusu sırasında küçük bir çocuğun yerden bir paket flaka uyuşturucu aldığını görür. Uyuşturucuyu alıp inceleyen Mitch bir şeylerin olması gerektiğinin dışında ilerlediğini düşünür. Uyuşturucunun peşinden gidip gece kulübünün sahibi Leeds’e ulşatığında ise Leeds’in yatı sahile yakın bir yerde yanmaya başlamıştır. Sahil güvenlik ekibi suya atlayıp yatta olanları kurtarmaya çalışsa da meclis üyesi Rodriguez’in cansız bedenine ulaşırlar. Leeds’in teknoloji adamı Dave onu Rodriguez’in ölümü ile konuşmaması için ona şantaj yapar. Uyuşturucu ve cinayet suçunu aydınlatmak sahil güvenliğe kalmıştır.</span>', '2021-06-07 13:38:18', '40.00', '2021-06-06 17:52:48', '2021-06-07 13:38:18', NULL),
(16, 1, 2, 294, 1, 'Hızlı ve Öfkeli 9', 'Justin Lin', 'Vin Diesel, Michelle Rodriguez, Jordana Brewster', 'https://www.youtube.com/embed/b98rYy66Idk', '180 dakika', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\">Dominic Toretto’nun artık tek önceliği oğlu Brian’ı korumaktır. Oğlu ve Letty ile birlikte sakin bir yaşam süren Toretto, istese de geçmişinden kurtulamaz. Bu kez geçmişi ile yüzleşmek zorunda kalan Toretto, siber suçlu Cipher ile birlikte çalışan kardeşi Jakob’a karşı savaşmak zorunda kalır. Serinin 9. filmi olan Fast and Furious 9\'ın oyuncu kadrosunda Vin Diesel, Michelle Rodriguez, Jordana Brewster, Lucas Black, Tyrese Gibson, Lex Elle ve John Cena gibi birçok isim yer alıyor.</span>', '2021-06-07 13:38:02', '35.00', '2021-06-07 13:37:23', '2021-06-07 13:38:02', NULL),
(17, 4, 2, 21, 2, 'Dolittle', 'Stephen Gaghan', 'Robert Downey Jr., Antonio Banderas, Jessie Buckley', 'https://www.youtube.com/embed/FEf412bSPLs', '102 dakika', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\">Dolittle, kraliçenin hastalığına çare bulmak için macera dolu bir yolculuğa çıkan Dr. John Dolittle\'ın hikayesini konu ediyor. Dr. John Dolittle, İngiltere’nin en ünlü doktor ve veterineridir. Yıllar önce karısını kaybeden Dolittle, bunun akabinde kendisini malikanesinin duvarları arasına kapatır. Dış dünya ile bağlantısını kesen Dolittle, genç kraliçenin hastalandığını öğrenince kabuğundan dışarı çıkmaya karar verir. Hastalığa çare aramak için efsanevi bir adaya doğru yola koyulan Dolittle’a bu süreçte genç çırağının yanı sıra endişeli bir goril, kuş beyinli bir ördek, alaycı devekuşu, kutup ayısı ve akıl hocası olan papağan da eşlik eder.</span>', '2020-01-17 21:00:00', '25.00', '2021-06-07 13:47:30', '2021-06-07 13:47:30', NULL),
(18, 3, 2, 31, 2, 'Korku Kapanı: Başlangıç', 'Mike P. Nelson', 'Charlotte Vega, Bill Sage, Emma Dumont', 'https://www.youtube.com/embed/aMVPqpbQ0SM', '110 dakika', '<section class=\"section ovw ovw-synopsis\" id=\"synopsis-details\" style=\"margin-bottom: 3.125rem; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px;\"><div class=\"content-txt \" style=\"font-size: 1rem; line-height: 1.4; color: rgb(51, 51, 51); margin: 0.625rem 0px;\">Wrong Turn: The Foundation, dağ gezisi yapmak için yola koyulan 6 arkadaşın başlarına gelenleri konu ediyor. New York\'ta yaşayan altı arkadaş, Batı Virginia Dağları\'nda yürüyüş yapmak için yola koyulur. Grubun eğlenceli geçen yürüyüşleri, yıllarca dağlarda yaşayan ve The Foundation olarak bilinen vahşi bir tarikata rastlamalarıyla yerini korku dolu anlara bırakır.</div><div id=\"mobile-referrer-atf\"></div></section><section class=\"section ovw\" style=\"margin-bottom: 3.125rem; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px;\"></section>', '2021-06-07 13:54:43', '25.00', '2021-06-07 13:53:56', '2021-06-07 13:54:43', NULL),
(19, 3, 3, 222, 3, 'Spiral: Testere Devam Ediyor', 'Darren Lynn Bousman', 'Chris Rock, Max Minghella, Samuel L. Jackson', 'https://www.youtube.com/embed/vHSOS1er7Xc', '93 dakika', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\">Spiral: Testere Devam Ediyor, şehirde yaşanan dehşet verici cinayetleri araştırmakla görevlendirilen iki dedektife odaklanıyor. Kıdemli bir dedektif olan Zeke Banks ve onun çaylak ortağı olan William Schenk, şehirde yaşanan korkunç cinayetleri soruşturmakla görevlidir. Dehşet veren cinayetlerin gizemini ortaya çıkarmaya çalışan Zeke, soruşturmayı ilerlettikçe kendisini katilin oyununun merkezinde bulur.</span>', '2021-08-19 21:00:00', '30.00', '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(20, 5, 2, 105, 1, 'Tom ve Jerry', 'Tim Story', 'Chloë Grace Moretz, Jerry, Michael Peña, Tom', 'https://www.youtube.com/embed/kP9TfCWaQT4', '101 dakika', '<span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Tom &amp; Jerry, William Hanna ve Joseph Barbera tarafından yaratılan çizgi film karakterlerine ve aynı adlı animasyonlu kısa film serisine dayanan 2021 Amerikan canlı aksiyon / bilgisayar animasyonlu komedi filmidir. Warner Animation Group tarafından prodükte edilmiş ve Warner Bros. Pictures tarafından dağıtılmıştır. Tom bir ev kedisi olarak işini yapamadığı ve uzun süredir rakibiyle birlikte yaşayacak bir yeri olmadığı için sahipleri tarafından evden atılmıştır. Jerry yiyecek kaynağı kalmadığı için kendi isteğiyle ayrılmıştır.</span><span class=\"Apple-converted-space\" style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">&nbsp;&nbsp;</span><strong style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Tom ve Jerry</strong><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">&nbsp;filmini hem Full HD hemde 4k film kalitesinde izlemenin ayrıcalığını sitemizden yaşayabileceğinizi hatırlatıp, filmin konusunu biraz daha anlatmaya devam ediyoruz.</span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Artık evsiz kalan kedi ve fare ikilisi, sokaklarda başıboş bırakılır ve rekabetlerine ateşkes ilan etmeye karar verdikten sonra hayatlarına yeni bir başlangıç ​​yapmak için kendi yollarına giderler. Daha sonra Manhattan, NYC\'de, Jerry\'nin şehrin en büyük, zarif ve en iyi Royal Gate Hotel\'inde ikamet ettiği ve personel Ben (Colin) arasındaki \"yüzyılın düğünü\" için hazırlanırken her türlü soruna neden olan iki kesişme noktası oluşur. Yeni istihdam edilmiş genç bir personel olan Kayla (Chloë Grace Moretz), otel müdürü Bay DuBros (Rob Delaney) tarafından etkinliği planlamak ve Jerry\'den kurtulmakla görevlendirilir. Kayla bir süre sonra Tom\'u bulur ve sonsuz kavgalarını yeniden kıvılcımlandırarak Jerry\'yi tutmasını ister. Bu durum yani kedi ile fare savaşı, düğünü, Kayla\'nın kariyerini ve muhtemelen de otelin kendisini yok etmekle tehdit ettiğinde kaos ortaya çıkar, çünkü kovalamaca yaygın bir kargaşaya neden olur.</span><span class=\"Apple-converted-space\" style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">&nbsp;</span><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"></span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Ancak, otel müdür yardımcısı Terrence\'ın (Michael Peña) dâhil olduğu şeytani bir komployu ortaya çıkardıklarında üçü farklılıklarını bir kenara bırakmak zorunda kalabilecekleri için kısa sürede daha da büyük bir sorun ortaya çıkar. Uzun süredir ilk kez bu ikilinin düşmanlığını bir kenara bırakıp oteli bu tehlikeden kurtarması gerektiğinde sevimli bir çift olurlar.</span><span class=\"Apple-converted-space\" style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">&nbsp;&nbsp;</span><strong style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Tom ve Jerry</strong><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">&nbsp;Kevin Costello tarafından yazılan ve Tim Story tarafından yönetilen bir animasyon, macera ve komedi filmidir.</span>', '2021-02-09 21:00:00', '15.00', '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(21, 5, 3, 325, 2, 'Peter Rabbit: Kaçak Tavşan', 'Will Gluck', 'Rose Byrne, Domhnall Gleeson, David Oyelowo', 'https://www.youtube.com/embed/A7bTCNGQ0to', '94 dakika', '<span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Will Gluck’ın yönetmenliğini üstlendiği ve Patrick Burleigh ile birlikte senaryosunu kaleme aldığı ve sitemizden 4k filmleri ile Türkçe altyazılı filmler sayfalarımıza sizler için eklemiş olduğumuz&nbsp;</span><strong style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Peter Rabbit: Kaçak Tavşan&nbsp;</strong><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">filmi, macera ve komedi türünde bir animasyon filmidir. İlk filmin kaldığı yerden devam eden filmde Thomas ve Bea şimdi evliler ve Peter ve tavşan ailesiyle birlikte yaşıyorlar. Bahçedeki hayattan sıkılan Peter, büyük şehre gider ve burada karanlık ve kötü kalpli karakterlerle tanışır ve sonunda tüm aile için kaos yaratır.</span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">2018 yılında gösterime giren serinin ilk filmi Tavşan Peter’da kırsal bölgeye uzun bir yolculuktan sonra Thomas, Bea\'yi taksiyle ayrılmadan hemen önce durdurur. Thomas yaptıklarından dolayı özür diler ve Peter\'ın ona geri dönmesine yardım ettiğini söyler. Bea, Peter ceketinden patlayıcıyı çıkarıp Bea\'ya verene kadar ona inanmaz. Onu affeder, ancak Thomas eve dönemez çünkü evi bir çift satın almıştır ve bu çift kasabada hırdavatçıda karşılaştığı züppe çiftin aynısıdır. Peter ve arkadaşları, ellerinden gelenin en iyisini yaparlar ve çifti kaçarak göndermek için tuzaklarını kurarlar.</span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Sonunda, Thomas ve Bea bir araya gelir ve Bea\'nin, Peter ve arkadaşları hakkında birkaç hikâye de dâhil olmak üzere çocuk kitapları için illüstrasyonlar yaptığı tavşanlarla Londra\'ya geri döner.</span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">İkinci film ise, Bea (Rose Byrne) ve McGregor\'un (Domhnall Gleeson) düğünü ile açılıyor; McGregor, bahçesindeki ödül domatesleri dışında her şeyi yemesine izin verilen yerel ormanlık yaratıklarla huzursuz bir anlaşmaya ulaşmış gibi görünüyor. McGregor, Peter\'dan şüphelenmeye devam ediyor (James Corden) ve Oyelowo\'nun yayıncısı, Bea\'nin karakterlerini temel alan bir dizi kitap oluşturmak istediğinde ve Peter’ın rolünü \"kötü tohum\" olarak belirlediğinde, Peter ona kötü adam gibi davranılacağına karar veriyor ve artık kötü adam gibi davranmaya başlıyor.</span><br style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\"><span style=\"color: rgb(76, 88, 95); font-family: arial; font-size: 15px; background-color: rgb(234, 240, 241);\">Sonrasında Peter şehre koşar ve babasının eski bir arkadaşı olan yaşlı tavşan Barnabas (Lennie James) ile buluşur. Bu yeni akıl hocası, Peter\'a insanların mutfaklarındaki yiyecekleri yiyebilecek kadar iyi bir evcil hayvan olarak evlat edinilmesinin yollarını gösteriyor ve Peter ile arkadaşlarını bir çiftçi pazarı ve değerli kurutulmuş meyve hazinesini içeren büyük bir soyguna katılmaları için işe alıyor.</span>', '2021-07-22 21:00:00', '15.00', '2021-06-07 14:21:12', '2021-06-07 14:21:12', NULL),
(22, 7, 2, 111, 2, 'Kaçak Yolcu', 'Joe Penna', 'Anna Kendrick, Toni Collette, Daniel Dae Kim', 'https://www.youtube.com/embed/Q2fU94AlPsU', '116 dakika', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\">Mars’a giden bir grup insanın yaşadıklarını konu ediyor. Mars’a giden uzay gemisi Dünya’dan yeterince uzaklaştığında gemide kaçak bir yolcu olduğu keşfedilir. Ekibin gittikçe azalmakta olan kaynakları düşünerek bu kişi ile ilgili bir karar vermesi gerekir. Mürettebattakiler oybirliği ile bir karar verseler de uzay gemisindeki tıbbi araştırmacı onların kararına karşı çıkar ve bu durum beklenmeyen olayları beraberinde getirir.</span>', '2021-04-21 21:00:00', '30.00', '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(23, 7, 3, 320, 3, 'Kaos Yürüyüşü', 'Doug Liman', 'Tom Holland, Daisy Ridley, Demian Bichir', 'https://www.youtube.com/embed/6KjVsLeD6Cw', '109 dakika', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\">Todd Hewitt, insanlık için yeni bir umut olan \"Yeni Dünya\"nın uzak bir gezegeninde yaşamaktadır. İnsanlık için yeni bir umut olması beklenen \"Yeni Dünya\", \"Noise\" adı verilen bir virüs sebebiyle cehenneme döner. Bu virüs ile herkes birbirinin düşüncelerinden parçaları görebilmektedir. Bu virüs pek çok kişiyi getirdiği sonsuz gürültü sebebiyle deliliğe sürüklemiştir.&nbsp;Ancak günün birinde Todd çok önemli bir keşif yapar;&nbsp;Viola isimli bir genç kızla karşılaşır. Viola\'nın yanında virüs etkisiz hale gelmektedir. Bu birbirleri ile pek de alakası olmayan ikili, keşfedilmemiş bir gezegende tehlikeli bir maceraya girerler. Tüm düşüncelerin duyulduğu, tüm hareketlerin görüldüğü bu çevrede kaçmaya ve saklanmaya çalışan Todd ve Viola, geride bıraktıkları hayatları ve yeni dünyaları hakkında birçok gerçeği öğreneceklerdir...</span>', '2021-08-26 21:00:00', '30.00', '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_dilleri`
--

CREATE TABLE `film_dilleri` (
  `id` int(10) UNSIGNED NOT NULL,
  `adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `film_dilleri`
--

INSERT INTO `film_dilleri` (`id`, `adi`, `created_at`, `updated_at`) VALUES
(1, 'Dublajlı', NULL, NULL),
(2, 'Orijinal Versiyon', NULL, NULL),
(3, 'Altyazılı', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_formatlari`
--

CREATE TABLE `film_formatlari` (
  `id` int(10) UNSIGNED NOT NULL,
  `adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `film_formatlari`
--

INSERT INTO `film_formatlari` (`id`, `adi`, `created_at`, `updated_at`) VALUES
(1, '2D', NULL, NULL),
(2, '3D', NULL, NULL),
(3, '4K', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_puanlari`
--

CREATE TABLE `film_puanlari` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `kullanici_id` int(10) UNSIGNED NOT NULL,
  `puan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `film_puanlari`
--

INSERT INTO `film_puanlari` (`id`, `film_id`, `kullanici_id`, `puan`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 5, '2021-05-30 19:43:42', '2021-05-30 19:43:42'),
(3, 7, 1, 4, '2021-05-30 19:53:42', NULL),
(4, 7, 2, 1, '2021-05-30 19:53:55', NULL),
(5, 8, 3, 3, '2021-05-30 20:57:06', '2021-05-30 20:57:06'),
(6, 8, 3, 5, '2021-06-03 18:11:12', '2021-06-03 18:11:12'),
(7, 7, 4, 5, '2021-06-03 19:45:21', '2021-06-03 19:45:21'),
(8, 15, 1, 4, '2021-06-06 17:53:11', '2021-06-06 17:53:11'),
(9, 9, 5, 2, '2021-06-10 00:45:29', '2021-06-10 00:45:29'),
(10, 11, 5, 1, '2021-06-10 00:45:40', '2021-06-10 00:45:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_resimleri`
--

CREATE TABLE `film_resimleri` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `pozisyon` enum('kapak','galeri') COLLATE utf8mb4_unicode_ci NOT NULL,
  `resim_yolu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `film_resimleri`
--

INSERT INTO `film_resimleri` (`id`, `film_id`, `pozisyon`, `resim_yolu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 7, 'kapak', '/uploads/antebellum-kapak-foto.png', '2021-05-30 08:44:57', '2021-05-30 08:44:57', NULL),
(5, 7, 'galeri', '/uploads/antebellum-galeri-foto.png', '2021-05-30 08:44:57', '2021-05-30 08:44:57', NULL),
(7, 8, 'kapak', '/uploads/hellboy-kapak-foto.jpeg', '2021-05-30 09:57:49', '2021-05-30 09:57:49', NULL),
(8, 8, 'galeri', '/uploads/hellboy-galeri-foto76522.jpeg', '2021-05-30 09:57:49', '2021-05-30 09:57:49', NULL),
(9, 8, 'galeri', '/uploads/hellboy-galeri-foto16639.jpeg', '2021-05-30 09:57:49', '2021-05-30 09:57:49', NULL),
(10, 8, 'galeri', '/uploads/hellboy-galeri-foto42302.jpeg', '2021-05-30 09:57:49', '2021-05-30 09:57:49', NULL),
(11, 8, 'galeri', '/uploads/hellboyx-galeri-foto8.jpg', '2021-06-03 17:15:39', '2021-06-03 17:15:39', NULL),
(12, 8, 'galeri', '/uploads/hellboyx-galeri-foto8.jpg', '2021-06-03 17:15:44', '2021-06-03 17:20:46', '2021-06-03 17:20:46'),
(13, 9, 'kapak', '/uploads/jumanji-yeni-seviye-kapak-foto9.jpg', '2021-06-05 20:09:40', '2021-06-05 20:09:40', NULL),
(14, 9, 'galeri', '/uploads/jumanji-yeni-seviye-galeri-foto9.jpg', '2021-06-05 20:12:13', '2021-06-05 20:12:13', NULL),
(15, 14, 'kapak', '/uploads/hobbit-1-kapak-foto.jpg', '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(16, 14, 'galeri', '/uploads/hobbit-1-galeri-foto50332.jpg', '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(17, 11, 'kapak', '/uploads/parazit-kapak-foto11.jpg', '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(18, 11, 'galeri', '/uploads/parazit-galeri-foto11.jpg', '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(19, 15, 'kapak', '/uploads/bay-watch-kapak-foto.jpg', '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(20, 15, 'galeri', '/uploads/bay-watch-galeri-foto59356.jpg', '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(21, 16, 'kapak', '/uploads/hizli-ve-ofkeli-9-kapak-foto.jpg', '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(22, 16, 'galeri', '/uploads/hizli-ve-ofkeli-9-galeri-foto68623.jpg', '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(23, 17, 'kapak', '/uploads/dolittle-kapak-foto.jpg', '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(24, 17, 'galeri', '/uploads/dolittle-galeri-foto84875.jpg', '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(25, 18, 'kapak', '/uploads/korku-kapani-baslangic-kapak-foto.jpg', '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(26, 18, 'galeri', '/uploads/korku-kapani-baslangic-galeri-foto91904.jpg', '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(27, 19, 'kapak', '/uploads/spiral-testere-devam-ediyor-kapak-foto.jpg', '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(28, 19, 'galeri', '/uploads/spiral-testere-devam-ediyor-galeri-foto51494.jpg', '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(29, 20, 'kapak', '/uploads/tom-ve-jerry-kapak-foto.jpg', '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(30, 20, 'galeri', '/uploads/tom-ve-jerry-galeri-foto33081.jpg', '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(31, 21, 'kapak', '/uploads/peter-rabbit-kacak-tavsan-kapak-foto.jpg', '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(32, 21, 'galeri', '/uploads/peter-rabbit-kacak-tavsan-galeri-foto63429.jpg', '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(33, 22, 'kapak', '/uploads/kacak-yolcu-kapak-foto.jpg', '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(34, 22, 'galeri', '/uploads/kacak-yolcu-galeri-foto56661.jpg', '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(35, 23, 'kapak', '/uploads/kaos-yuruyusu-kapak-foto.jpg', '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(36, 23, 'galeri', '/uploads/kaos-yuruyusu-galeri-foto87413.jpg', '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_rezervasyonlari`
--

CREATE TABLE `film_rezervasyonlari` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kullanici_id` int(10) NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `koltuk_adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bos_mu` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `film_rezervasyonlari`
--

INSERT INTO `film_rezervasyonlari` (`id`, `kullanici_id`, `film_id`, `koltuk_adi`, `bos_mu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(496, 0, 7, 'K-1', 1, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(497, 0, 7, 'K-2', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(498, 3, 7, 'K-3', 1, '2021-05-30 08:44:57', '2021-05-30 19:20:41', NULL),
(499, 3, 7, 'K-4', 1, '2021-05-30 08:44:57', '2021-05-30 19:20:41', NULL),
(500, 3, 7, 'K-5', 1, '2021-05-30 08:44:57', '2021-05-30 19:20:41', NULL),
(501, 3, 7, 'K-6', 1, '2021-05-30 08:44:57', '2021-05-30 19:23:04', NULL),
(502, 3, 7, 'K-7', 1, '2021-05-30 08:44:57', '2021-05-30 19:23:04', NULL),
(503, 0, 7, 'K-8', 1, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(504, 0, 7, 'K-9', 1, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(505, 0, 7, 'K-10', 1, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(506, 0, 7, 'K-11', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(507, 0, 7, 'K-12', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(508, 0, 7, 'K-13', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(509, 0, 7, 'K-14', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(510, 0, 7, 'K-15', 1, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(511, 3, 7, 'K-16', 1, '2021-05-30 08:44:57', '2021-05-30 19:24:18', NULL),
(512, 3, 7, 'K-17', 1, '2021-05-30 08:44:57', '2021-05-30 19:24:18', NULL),
(513, 0, 7, 'K-18', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(514, 0, 7, 'K-19', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(515, 0, 7, 'K-20', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(516, 0, 7, 'K-21', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(517, 0, 7, 'K-22', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(518, 0, 7, 'K-23', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(519, 0, 7, 'K-24', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(520, 0, 7, 'K-25', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(521, 0, 7, 'K-26', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(522, 0, 7, 'K-27', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(523, 0, 7, 'K-28', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(524, 0, 7, 'K-29', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(525, 0, 7, 'K-30', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(526, 0, 7, 'K-31', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(527, 0, 7, 'K-32', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(528, 0, 7, 'K-33', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(529, 0, 7, 'K-34', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(530, 0, 7, 'K-35', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(531, 0, 7, 'K-36', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(532, 0, 7, 'K-37', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(533, 0, 7, 'K-38', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(534, 0, 7, 'K-39', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(535, 0, 7, 'K-40', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(536, 0, 7, 'K-41', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(537, 0, 7, 'K-42', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(538, 0, 7, 'K-43', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(539, 3, 7, 'K-44', 1, '2021-05-30 08:44:57', '2021-06-03 18:21:37', NULL),
(540, 3, 7, 'K-45', 1, '2021-05-30 08:44:57', '2021-06-03 18:21:37', NULL),
(541, 3, 7, 'K-46', 1, '2021-05-30 08:44:57', '2021-06-03 18:21:37', NULL),
(542, 3, 7, 'K-47', 1, '2021-05-30 08:44:57', '2021-06-03 18:21:37', NULL),
(543, 0, 7, 'K-48', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(544, 0, 7, 'K-49', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(545, 0, 7, 'K-50', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(546, 0, 7, 'K-51', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(547, 0, 7, 'K-52', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(548, 0, 7, 'K-53', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(549, 0, 7, 'K-54', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(550, 0, 7, 'K-55', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(551, 0, 7, 'K-56', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(552, 0, 7, 'K-57', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(553, 0, 7, 'K-58', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(554, 0, 7, 'K-59', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(555, 0, 7, 'K-60', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(556, 0, 7, 'K-61', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(557, 0, 7, 'K-62', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(558, 0, 7, 'K-63', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(559, 0, 7, 'K-64', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(560, 0, 7, 'K-65', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(561, 0, 7, 'K-66', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(562, 0, 7, 'K-67', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(563, 0, 7, 'K-68', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(564, 0, 7, 'K-69', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(565, 0, 7, 'K-70', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(566, 0, 7, 'K-71', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(567, 0, 7, 'K-72', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(568, 0, 7, 'K-73', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(569, 0, 7, 'K-74', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(570, 0, 7, 'K-75', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(571, 0, 7, 'K-76', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(572, 0, 7, 'K-77', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(573, 0, 7, 'K-78', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(574, 0, 7, 'K-79', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(575, 0, 7, 'K-80', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(576, 0, 7, 'K-81', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(577, 0, 7, 'K-82', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(578, 0, 7, 'K-83', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(579, 0, 7, 'K-84', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(580, 0, 7, 'K-85', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(581, 0, 7, 'K-86', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(582, 0, 7, 'K-87', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(583, 0, 7, 'K-88', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(584, 0, 7, 'K-89', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(585, 0, 7, 'K-90', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(586, 0, 7, 'K-91', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(587, 0, 7, 'K-92', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(588, 0, 7, 'K-93', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(589, 0, 7, 'K-94', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(590, 0, 7, 'K-95', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(591, 0, 7, 'K-96', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(592, 0, 7, 'K-97', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(593, 0, 7, 'K-98', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(594, 0, 7, 'K-99', 0, '2021-05-30 08:44:57', '2021-05-30 18:31:48', NULL),
(595, 0, 8, 'K-1', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(596, 0, 8, 'K-2', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(597, 0, 8, 'K-3', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(598, 1, 8, 'K-4', 1, '2021-05-30 09:57:49', '2021-06-03 19:39:36', NULL),
(599, 0, 8, 'K-5', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(600, 0, 8, 'K-6', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(601, 0, 8, 'K-7', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(602, 0, 8, 'K-8', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(603, 0, 8, 'K-9', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(604, 0, 8, 'K-10', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(605, 0, 8, 'K-11', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(606, 0, 8, 'K-12', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(607, 0, 8, 'K-13', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(608, 0, 8, 'K-14', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(609, 0, 8, 'K-15', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(610, 0, 8, 'K-16', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(611, 0, 8, 'K-17', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(612, 0, 8, 'K-18', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(613, 0, 8, 'K-19', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(614, 0, 8, 'K-20', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(615, 0, 8, 'K-21', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(616, 0, 8, 'K-22', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(617, 0, 8, 'K-23', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(618, 0, 8, 'K-24', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(619, 1, 8, 'K-25', 1, '2021-05-30 09:57:49', '2021-06-03 19:40:12', NULL),
(620, 1, 8, 'K-26', 1, '2021-05-30 09:57:49', '2021-06-03 19:40:12', NULL),
(621, 1, 8, 'K-27', 1, '2021-05-30 09:57:49', '2021-06-03 19:40:12', NULL),
(622, 0, 8, 'K-28', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(623, 0, 8, 'K-29', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(624, 0, 8, 'K-30', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(625, 0, 8, 'K-31', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(626, 0, 8, 'K-32', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(627, 0, 8, 'K-33', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(628, 0, 8, 'K-34', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(629, 0, 8, 'K-35', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(630, 1, 8, 'K-36', 1, '2021-05-30 09:57:49', '2021-06-03 19:40:12', NULL),
(631, 1, 8, 'K-37', 1, '2021-05-30 09:57:49', '2021-06-03 19:40:12', NULL),
(632, 0, 8, 'K-38', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(633, 0, 8, 'K-39', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(634, 0, 8, 'K-40', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(635, 0, 8, 'K-41', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(636, 0, 8, 'K-42', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(637, 0, 8, 'K-43', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(638, 0, 8, 'K-44', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(639, 0, 8, 'K-45', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(640, 0, 8, 'K-46', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(641, 0, 8, 'K-47', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(642, 0, 8, 'K-48', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(643, 0, 8, 'K-49', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(644, 0, 8, 'K-50', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(645, 0, 8, 'K-51', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(646, 0, 8, 'K-52', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(647, 0, 8, 'K-53', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(648, 0, 8, 'K-54', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(649, 0, 8, 'K-55', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(650, 0, 8, 'K-56', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(651, 0, 8, 'K-57', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(652, 0, 8, 'K-58', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(653, 0, 8, 'K-59', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(654, 0, 8, 'K-60', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(655, 0, 8, 'K-61', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(656, 0, 8, 'K-62', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(657, 0, 8, 'K-63', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(658, 0, 8, 'K-64', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(659, 0, 8, 'K-65', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(660, 0, 8, 'K-66', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(661, 0, 8, 'K-67', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(662, 0, 8, 'K-68', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(663, 0, 8, 'K-69', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(664, 0, 8, 'K-70', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(665, 0, 8, 'K-71', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(666, 0, 8, 'K-72', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(667, 0, 8, 'K-73', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(668, 0, 8, 'K-74', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(669, 0, 8, 'K-75', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(670, 0, 8, 'K-76', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(671, 0, 8, 'K-77', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(672, 0, 8, 'K-78', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(673, 0, 8, 'K-79', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(674, 0, 8, 'K-80', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(675, 0, 8, 'K-81', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(676, 0, 8, 'K-82', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(677, 0, 8, 'K-83', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(678, 0, 8, 'K-84', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(679, 0, 8, 'K-85', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(680, 0, 8, 'K-86', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(681, 0, 8, 'K-87', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(682, 0, 8, 'K-88', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(683, 0, 8, 'K-89', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(684, 0, 8, 'K-90', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(685, 0, 8, 'K-91', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(686, 0, 8, 'K-92', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(687, 0, 8, 'K-93', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(688, 0, 8, 'K-94', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(689, 0, 8, 'K-95', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(690, 0, 8, 'K-96', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(691, 0, 8, 'K-97', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(692, 0, 8, 'K-98', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(693, 0, 8, 'K-99', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(694, 0, 8, 'K-100', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(695, 0, 8, 'K-101', 0, '2021-05-30 09:57:49', '2021-05-30 18:32:06', NULL),
(696, 0, 14, 'K-1', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(697, 0, 14, 'K-2', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(698, 0, 14, 'K-3', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(699, 0, 14, 'K-4', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(700, 0, 14, 'K-5', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(701, 0, 14, 'K-6', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(702, 0, 14, 'K-7', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(703, 0, 14, 'K-8', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(704, 0, 14, 'K-9', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(705, 0, 14, 'K-10', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(706, 0, 14, 'K-11', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(707, 0, 14, 'K-12', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(708, 0, 14, 'K-13', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(709, 0, 14, 'K-14', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(710, 0, 14, 'K-15', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(711, 0, 14, 'K-16', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(712, 0, 14, 'K-17', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(713, 0, 14, 'K-18', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(714, 0, 14, 'K-19', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(715, 0, 14, 'K-20', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(716, 0, 14, 'K-21', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(717, 0, 14, 'K-22', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(718, 0, 14, 'K-23', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(719, 0, 14, 'K-24', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(720, 0, 14, 'K-25', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(721, 0, 14, 'K-26', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(722, 0, 14, 'K-27', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(723, 0, 14, 'K-28', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(724, 0, 14, 'K-29', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(725, 0, 14, 'K-30', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(726, 0, 14, 'K-31', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(727, 0, 14, 'K-32', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(728, 0, 14, 'K-33', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(729, 0, 14, 'K-34', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(730, 0, 14, 'K-35', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(731, 0, 14, 'K-36', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(732, 0, 14, 'K-37', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(733, 0, 14, 'K-38', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(734, 0, 14, 'K-39', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(735, 0, 14, 'K-40', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(736, 0, 14, 'K-41', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(737, 0, 14, 'K-42', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(738, 0, 14, 'K-43', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(739, 0, 14, 'K-44', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(740, 0, 14, 'K-45', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(741, 0, 14, 'K-46', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(742, 0, 14, 'K-47', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(743, 0, 14, 'K-48', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(744, 0, 14, 'K-49', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(745, 0, 14, 'K-50', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(746, 0, 14, 'K-51', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(747, 0, 14, 'K-52', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(748, 0, 14, 'K-53', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(749, 0, 14, 'K-54', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(750, 0, 14, 'K-55', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(751, 0, 14, 'K-56', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(752, 0, 14, 'K-57', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(753, 0, 14, 'K-58', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(754, 0, 14, 'K-59', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(755, 0, 14, 'K-60', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(756, 0, 14, 'K-61', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(757, 0, 14, 'K-62', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(758, 0, 14, 'K-63', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(759, 0, 14, 'K-64', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(760, 0, 14, 'K-65', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(761, 0, 14, 'K-66', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(762, 0, 14, 'K-67', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(763, 0, 14, 'K-68', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(764, 0, 14, 'K-69', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(765, 0, 14, 'K-70', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(766, 0, 14, 'K-71', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(767, 0, 14, 'K-72', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(768, 0, 14, 'K-73', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(769, 0, 14, 'K-74', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(770, 0, 14, 'K-75', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(771, 0, 14, 'K-76', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(772, 0, 14, 'K-77', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(773, 0, 14, 'K-78', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(774, 0, 14, 'K-79', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(775, 0, 14, 'K-80', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(776, 0, 14, 'K-81', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(777, 0, 14, 'K-82', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(778, 0, 14, 'K-83', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(779, 0, 14, 'K-84', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(780, 0, 14, 'K-85', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(781, 0, 14, 'K-86', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(782, 0, 14, 'K-87', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(783, 0, 14, 'K-88', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(784, 0, 14, 'K-89', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(785, 0, 14, 'K-90', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(786, 0, 14, 'K-91', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(787, 0, 14, 'K-92', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(788, 0, 14, 'K-93', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(789, 0, 14, 'K-94', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(790, 0, 14, 'K-95', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(791, 0, 14, 'K-96', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(792, 0, 14, 'K-97', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(793, 0, 14, 'K-98', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(794, 0, 14, 'K-99', 0, '2021-06-06 17:48:11', '2021-06-06 17:48:11', NULL),
(795, 0, 11, 'K-1', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(796, 0, 11, 'K-2', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(797, 0, 11, 'K-3', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(798, 0, 11, 'K-4', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(799, 0, 11, 'K-5', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(800, 0, 11, 'K-6', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(801, 0, 11, 'K-7', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(802, 0, 11, 'K-8', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(803, 0, 11, 'K-9', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(804, 0, 11, 'K-10', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(805, 0, 11, 'K-11', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(806, 0, 11, 'K-12', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(807, 0, 11, 'K-13', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(808, 0, 11, 'K-14', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(809, 0, 11, 'K-15', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(810, 0, 11, 'K-16', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(811, 0, 11, 'K-17', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(812, 0, 11, 'K-18', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(813, 0, 11, 'K-19', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(814, 0, 11, 'K-20', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(815, 0, 11, 'K-21', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(816, 0, 11, 'K-22', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(817, 0, 11, 'K-23', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(818, 0, 11, 'K-24', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(819, 0, 11, 'K-25', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(820, 0, 11, 'K-26', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(821, 0, 11, 'K-27', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(822, 0, 11, 'K-28', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(823, 0, 11, 'K-29', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(824, 0, 11, 'K-30', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(825, 0, 11, 'K-31', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(826, 0, 11, 'K-32', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(827, 0, 11, 'K-33', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(828, 0, 11, 'K-34', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(829, 0, 11, 'K-35', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(830, 0, 11, 'K-36', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(831, 0, 11, 'K-37', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(832, 0, 11, 'K-38', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(833, 0, 11, 'K-39', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(834, 0, 11, 'K-40', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(835, 0, 11, 'K-41', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(836, 0, 11, 'K-42', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(837, 0, 11, 'K-43', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(838, 0, 11, 'K-44', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(839, 0, 11, 'K-45', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(840, 0, 11, 'K-46', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(841, 0, 11, 'K-47', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(842, 0, 11, 'K-48', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(843, 0, 11, 'K-49', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(844, 0, 11, 'K-50', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(845, 0, 11, 'K-51', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(846, 0, 11, 'K-52', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(847, 0, 11, 'K-53', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(848, 0, 11, 'K-54', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(849, 0, 11, 'K-55', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(850, 0, 11, 'K-56', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(851, 0, 11, 'K-57', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(852, 0, 11, 'K-58', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(853, 0, 11, 'K-59', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(854, 0, 11, 'K-60', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(855, 0, 11, 'K-61', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(856, 0, 11, 'K-62', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(857, 0, 11, 'K-63', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(858, 0, 11, 'K-64', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(859, 0, 11, 'K-65', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(860, 0, 11, 'K-66', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(861, 0, 11, 'K-67', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(862, 0, 11, 'K-68', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(863, 0, 11, 'K-69', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(864, 0, 11, 'K-70', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(865, 0, 11, 'K-71', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(866, 0, 11, 'K-72', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(867, 0, 11, 'K-73', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(868, 0, 11, 'K-74', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(869, 0, 11, 'K-75', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(870, 0, 11, 'K-76', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(871, 0, 11, 'K-77', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(872, 0, 11, 'K-78', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(873, 0, 11, 'K-79', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(874, 0, 11, 'K-80', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(875, 0, 11, 'K-81', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(876, 0, 11, 'K-82', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(877, 0, 11, 'K-83', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(878, 0, 11, 'K-84', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(879, 0, 11, 'K-85', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(880, 0, 11, 'K-86', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(881, 0, 11, 'K-87', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(882, 0, 11, 'K-88', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(883, 0, 11, 'K-89', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(884, 0, 11, 'K-90', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(885, 0, 11, 'K-91', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(886, 0, 11, 'K-92', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(887, 0, 11, 'K-93', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(888, 0, 11, 'K-94', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(889, 0, 11, 'K-95', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(890, 0, 11, 'K-96', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(891, 0, 11, 'K-97', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(892, 0, 11, 'K-98', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(893, 0, 11, 'K-99', 0, '2021-06-06 17:49:52', '2021-06-06 17:49:52', NULL),
(894, 0, 15, 'K-1', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(895, 0, 15, 'K-2', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(896, 0, 15, 'K-3', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(897, 0, 15, 'K-4', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(898, 0, 15, 'K-5', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(899, 0, 15, 'K-6', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(900, 0, 15, 'K-7', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(901, 0, 15, 'K-8', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(902, 0, 15, 'K-9', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(903, 0, 15, 'K-10', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(904, 0, 15, 'K-11', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(905, 0, 15, 'K-12', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(906, 0, 15, 'K-13', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(907, 0, 15, 'K-14', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(908, 0, 15, 'K-15', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(909, 0, 15, 'K-16', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(910, 0, 15, 'K-17', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(911, 0, 15, 'K-18', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(912, 0, 15, 'K-19', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(913, 0, 15, 'K-20', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(914, 0, 15, 'K-21', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(915, 0, 15, 'K-22', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(916, 0, 15, 'K-23', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(917, 0, 15, 'K-24', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(918, 0, 15, 'K-25', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(919, 0, 15, 'K-26', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(920, 0, 15, 'K-27', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(921, 0, 15, 'K-28', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(922, 0, 15, 'K-29', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(923, 0, 15, 'K-30', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(924, 0, 15, 'K-31', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(925, 0, 15, 'K-32', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(926, 0, 15, 'K-33', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(927, 0, 15, 'K-34', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(928, 0, 15, 'K-35', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(929, 0, 15, 'K-36', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(930, 0, 15, 'K-37', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(931, 0, 15, 'K-38', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(932, 0, 15, 'K-39', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(933, 0, 15, 'K-40', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(934, 0, 15, 'K-41', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(935, 0, 15, 'K-42', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(936, 0, 15, 'K-43', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(937, 0, 15, 'K-44', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(938, 0, 15, 'K-45', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(939, 0, 15, 'K-46', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(940, 0, 15, 'K-47', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(941, 0, 15, 'K-48', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(942, 0, 15, 'K-49', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(943, 0, 15, 'K-50', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(944, 0, 15, 'K-51', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(945, 0, 15, 'K-52', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(946, 0, 15, 'K-53', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(947, 0, 15, 'K-54', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(948, 0, 15, 'K-55', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(949, 0, 15, 'K-56', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(950, 0, 15, 'K-57', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(951, 0, 15, 'K-58', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(952, 0, 15, 'K-59', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(953, 0, 15, 'K-60', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(954, 0, 15, 'K-61', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(955, 0, 15, 'K-62', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(956, 0, 15, 'K-63', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(957, 0, 15, 'K-64', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(958, 0, 15, 'K-65', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(959, 0, 15, 'K-66', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(960, 0, 15, 'K-67', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(961, 0, 15, 'K-68', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(962, 0, 15, 'K-69', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(963, 0, 15, 'K-70', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(964, 0, 15, 'K-71', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(965, 0, 15, 'K-72', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(966, 0, 15, 'K-73', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(967, 0, 15, 'K-74', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(968, 0, 15, 'K-75', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(969, 0, 15, 'K-76', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(970, 0, 15, 'K-77', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(971, 0, 15, 'K-78', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(972, 0, 15, 'K-79', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(973, 0, 15, 'K-80', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(974, 0, 15, 'K-81', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(975, 0, 15, 'K-82', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(976, 0, 15, 'K-83', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(977, 0, 15, 'K-84', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(978, 0, 15, 'K-85', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(979, 0, 15, 'K-86', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(980, 0, 15, 'K-87', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(981, 0, 15, 'K-88', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(982, 0, 15, 'K-89', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(983, 0, 15, 'K-90', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(984, 0, 15, 'K-91', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(985, 0, 15, 'K-92', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(986, 0, 15, 'K-93', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(987, 0, 15, 'K-94', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(988, 0, 15, 'K-95', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(989, 0, 15, 'K-96', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(990, 0, 15, 'K-97', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(991, 0, 15, 'K-98', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(992, 0, 15, 'K-99', 0, '2021-06-06 17:52:48', '2021-06-06 17:52:48', NULL),
(993, 0, 7, 'K-1', 0, '2021-06-06 22:12:30', '2021-06-06 22:12:30', NULL),
(994, 0, 7, 'K-3', 0, '2021-06-06 22:12:30', '2021-06-06 22:12:30', NULL),
(995, 0, 7, 'K-4', 0, '2021-06-06 22:12:30', '2021-06-06 22:12:30', NULL),
(996, 0, 7, 'K-5', 0, '2021-06-06 22:12:30', '2021-06-06 22:12:30', NULL),
(997, 0, 7, 'K-6', 0, '2021-06-06 22:12:30', '2021-06-06 22:12:30', NULL),
(998, 0, 7, 'K-7', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(999, 0, 7, 'K-8', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(1000, 0, 7, 'K-9', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(1001, 0, 7, 'K-10', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(1002, 0, 7, 'K-15', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(1003, 0, 7, 'K-16', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(1004, 0, 7, 'K-17', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(1005, 0, 7, 'K-44', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(1006, 0, 7, 'K-45', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(1007, 0, 7, 'K-46', 0, '2021-06-06 22:12:31', '2021-06-06 22:12:31', NULL),
(1008, 0, 7, 'K-47', 0, '2021-06-06 22:12:32', '2021-06-06 22:12:32', NULL),
(1009, 0, 8, 'K-4', 0, '2021-06-07 10:11:36', '2021-06-07 10:11:36', NULL),
(1010, 0, 8, 'K-25', 0, '2021-06-07 10:11:36', '2021-06-07 10:11:36', NULL),
(1011, 0, 8, 'K-26', 0, '2021-06-07 10:11:36', '2021-06-07 10:11:36', NULL),
(1012, 0, 8, 'K-27', 0, '2021-06-07 10:11:36', '2021-06-07 10:11:36', NULL),
(1013, 0, 8, 'K-36', 0, '2021-06-07 10:11:36', '2021-06-07 10:11:36', NULL),
(1014, 0, 8, 'K-37', 0, '2021-06-07 10:11:36', '2021-06-07 10:11:36', NULL),
(1015, 0, 16, 'K-1', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1016, 0, 16, 'K-2', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1017, 0, 16, 'K-3', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1018, 0, 16, 'K-4', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1019, 0, 16, 'K-5', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1020, 0, 16, 'K-6', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1021, 0, 16, 'K-7', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1022, 0, 16, 'K-8', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1023, 0, 16, 'K-9', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1024, 0, 16, 'K-10', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1025, 0, 16, 'K-11', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1026, 0, 16, 'K-12', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1027, 0, 16, 'K-13', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1028, 0, 16, 'K-14', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1029, 0, 16, 'K-15', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1030, 0, 16, 'K-16', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1031, 0, 16, 'K-17', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1032, 0, 16, 'K-18', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1033, 0, 16, 'K-19', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1034, 0, 16, 'K-20', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1035, 0, 16, 'K-21', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1036, 0, 16, 'K-22', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1037, 0, 16, 'K-23', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1038, 0, 16, 'K-24', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1039, 0, 16, 'K-25', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1040, 0, 16, 'K-26', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1041, 0, 16, 'K-27', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1042, 0, 16, 'K-28', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1043, 0, 16, 'K-29', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1044, 0, 16, 'K-30', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1045, 0, 16, 'K-31', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1046, 0, 16, 'K-32', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1047, 0, 16, 'K-33', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1048, 0, 16, 'K-34', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1049, 0, 16, 'K-35', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1050, 0, 16, 'K-36', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1051, 0, 16, 'K-37', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1052, 0, 16, 'K-38', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1053, 0, 16, 'K-39', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1054, 0, 16, 'K-40', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1055, 0, 16, 'K-41', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1056, 0, 16, 'K-42', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1057, 0, 16, 'K-43', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1058, 0, 16, 'K-44', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1059, 0, 16, 'K-45', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1060, 0, 16, 'K-46', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1061, 0, 16, 'K-47', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1062, 0, 16, 'K-48', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1063, 0, 16, 'K-49', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1064, 0, 16, 'K-50', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1065, 0, 16, 'K-51', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1066, 0, 16, 'K-52', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1067, 0, 16, 'K-53', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1068, 0, 16, 'K-54', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1069, 0, 16, 'K-55', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1070, 0, 16, 'K-56', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1071, 0, 16, 'K-57', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1072, 0, 16, 'K-58', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1073, 0, 16, 'K-59', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1074, 0, 16, 'K-60', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1075, 0, 16, 'K-61', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1076, 0, 16, 'K-62', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1077, 0, 16, 'K-63', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1078, 0, 16, 'K-64', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1079, 0, 16, 'K-65', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1080, 0, 16, 'K-66', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1081, 0, 16, 'K-67', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1082, 0, 16, 'K-68', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1083, 0, 16, 'K-69', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1084, 0, 16, 'K-70', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1085, 0, 16, 'K-71', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1086, 0, 16, 'K-72', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1087, 0, 16, 'K-73', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1088, 0, 16, 'K-74', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1089, 0, 16, 'K-75', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1090, 0, 16, 'K-76', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1091, 0, 16, 'K-77', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1092, 0, 16, 'K-78', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1093, 0, 16, 'K-79', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1094, 0, 16, 'K-80', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1095, 0, 16, 'K-81', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1096, 0, 16, 'K-82', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1097, 0, 16, 'K-83', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1098, 0, 16, 'K-84', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1099, 0, 16, 'K-85', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1100, 0, 16, 'K-86', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1101, 0, 16, 'K-87', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1102, 0, 16, 'K-88', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1103, 0, 16, 'K-89', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1104, 0, 16, 'K-90', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1105, 0, 16, 'K-91', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1106, 0, 16, 'K-92', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1107, 0, 16, 'K-93', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1108, 0, 16, 'K-94', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1109, 0, 16, 'K-95', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1110, 0, 16, 'K-96', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1111, 0, 16, 'K-97', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1112, 0, 16, 'K-98', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1113, 0, 16, 'K-99', 0, '2021-06-07 13:37:23', '2021-06-07 13:37:23', NULL),
(1114, 0, 9, 'K-1', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1115, 0, 9, 'K-2', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1116, 0, 9, 'K-3', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1117, 0, 9, 'K-4', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1118, 0, 9, 'K-5', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1119, 0, 9, 'K-6', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1120, 0, 9, 'K-7', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1121, 0, 9, 'K-8', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1122, 0, 9, 'K-9', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1123, 0, 9, 'K-10', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1124, 0, 9, 'K-11', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1125, 0, 9, 'K-12', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1126, 0, 9, 'K-13', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1127, 0, 9, 'K-14', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1128, 0, 9, 'K-15', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1129, 0, 9, 'K-16', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1130, 0, 9, 'K-17', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1131, 0, 9, 'K-18', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1132, 0, 9, 'K-19', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1133, 0, 9, 'K-20', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1134, 0, 9, 'K-21', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1135, 0, 9, 'K-22', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1136, 0, 9, 'K-23', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1137, 0, 9, 'K-24', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1138, 0, 9, 'K-25', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1139, 0, 9, 'K-26', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1140, 0, 9, 'K-27', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1141, 0, 9, 'K-28', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1142, 0, 9, 'K-29', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1143, 0, 9, 'K-30', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1144, 0, 9, 'K-31', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1145, 0, 9, 'K-32', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1146, 0, 9, 'K-33', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1147, 0, 9, 'K-34', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1148, 0, 9, 'K-35', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1149, 0, 9, 'K-36', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1150, 0, 9, 'K-37', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1151, 0, 9, 'K-38', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1152, 0, 9, 'K-39', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1153, 0, 9, 'K-40', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1154, 0, 9, 'K-41', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1155, 0, 9, 'K-42', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1156, 0, 9, 'K-43', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1157, 6, 9, 'K-44', 1, '2021-06-07 13:38:55', '2021-06-13 13:39:57', NULL),
(1158, 0, 9, 'K-45', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1159, 0, 9, 'K-46', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1160, 0, 9, 'K-47', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1161, 0, 9, 'K-48', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1162, 0, 9, 'K-49', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL);
INSERT INTO `film_rezervasyonlari` (`id`, `kullanici_id`, `film_id`, `koltuk_adi`, `bos_mu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1163, 0, 9, 'K-50', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1164, 0, 9, 'K-51', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1165, 0, 9, 'K-52', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1166, 6, 9, 'K-53', 1, '2021-06-07 13:38:55', '2021-06-13 13:39:57', NULL),
(1167, 6, 9, 'K-54', 1, '2021-06-07 13:38:55', '2021-06-13 13:39:57', NULL),
(1168, 0, 9, 'K-55', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1169, 0, 9, 'K-56', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1170, 0, 9, 'K-57', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1171, 0, 9, 'K-58', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1172, 0, 9, 'K-59', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1173, 0, 9, 'K-60', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1174, 0, 9, 'K-61', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1175, 0, 9, 'K-62', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1176, 0, 9, 'K-63', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1177, 0, 9, 'K-64', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1178, 0, 9, 'K-65', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1179, 0, 9, 'K-66', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1180, 0, 9, 'K-67', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1181, 0, 9, 'K-68', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1182, 0, 9, 'K-69', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1183, 0, 9, 'K-70', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1184, 0, 9, 'K-71', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1185, 0, 9, 'K-72', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1186, 0, 9, 'K-73', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1187, 0, 9, 'K-74', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1188, 0, 9, 'K-75', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1189, 0, 9, 'K-76', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1190, 0, 9, 'K-77', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1191, 0, 9, 'K-78', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1192, 0, 9, 'K-79', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1193, 0, 9, 'K-80', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1194, 0, 9, 'K-81', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1195, 0, 9, 'K-82', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1196, 0, 9, 'K-83', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1197, 0, 9, 'K-84', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1198, 0, 9, 'K-85', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1199, 0, 9, 'K-86', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1200, 0, 9, 'K-87', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1201, 0, 9, 'K-88', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1202, 0, 9, 'K-89', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1203, 0, 9, 'K-90', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1204, 0, 9, 'K-91', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1205, 0, 9, 'K-92', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1206, 0, 9, 'K-93', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1207, 0, 9, 'K-94', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1208, 0, 9, 'K-95', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1209, 0, 9, 'K-96', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1210, 0, 9, 'K-97', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1211, 0, 9, 'K-98', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1212, 0, 9, 'K-99', 0, '2021-06-07 13:38:55', '2021-06-07 13:38:55', NULL),
(1213, 0, 17, 'K-1', 0, '2021-06-07 13:47:30', '2021-06-07 13:47:30', NULL),
(1214, 0, 17, 'K-2', 0, '2021-06-07 13:47:30', '2021-06-07 13:47:30', NULL),
(1215, 0, 17, 'K-3', 0, '2021-06-07 13:47:30', '2021-06-07 13:47:30', NULL),
(1216, 0, 17, 'K-4', 0, '2021-06-07 13:47:30', '2021-06-07 13:47:30', NULL),
(1217, 0, 17, 'K-5', 0, '2021-06-07 13:47:30', '2021-06-07 13:47:30', NULL),
(1218, 0, 17, 'K-6', 0, '2021-06-07 13:47:30', '2021-06-07 13:47:30', NULL),
(1219, 0, 17, 'K-7', 0, '2021-06-07 13:47:30', '2021-06-07 13:47:30', NULL),
(1220, 0, 17, 'K-8', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1221, 0, 17, 'K-9', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1222, 0, 17, 'K-10', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1223, 0, 17, 'K-11', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1224, 0, 17, 'K-12', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1225, 0, 17, 'K-13', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1226, 0, 17, 'K-14', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1227, 0, 17, 'K-15', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1228, 0, 17, 'K-16', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1229, 0, 17, 'K-17', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1230, 0, 17, 'K-18', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1231, 0, 17, 'K-19', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1232, 0, 17, 'K-20', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1233, 0, 17, 'K-21', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1234, 0, 17, 'K-22', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1235, 0, 17, 'K-23', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1236, 0, 17, 'K-24', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1237, 0, 17, 'K-25', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1238, 0, 17, 'K-26', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1239, 0, 17, 'K-27', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1240, 0, 17, 'K-28', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1241, 0, 17, 'K-29', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1242, 0, 17, 'K-30', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1243, 0, 17, 'K-31', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1244, 0, 17, 'K-32', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1245, 0, 17, 'K-33', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1246, 0, 17, 'K-34', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1247, 0, 17, 'K-35', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1248, 0, 17, 'K-36', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1249, 0, 17, 'K-37', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1250, 0, 17, 'K-38', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1251, 0, 17, 'K-39', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1252, 0, 17, 'K-40', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1253, 0, 17, 'K-41', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1254, 0, 17, 'K-42', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1255, 0, 17, 'K-43', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1256, 0, 17, 'K-44', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1257, 0, 17, 'K-45', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1258, 0, 17, 'K-46', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1259, 0, 17, 'K-47', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1260, 0, 17, 'K-48', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1261, 0, 17, 'K-49', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1262, 0, 17, 'K-50', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1263, 0, 17, 'K-51', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1264, 0, 17, 'K-52', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1265, 0, 17, 'K-53', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1266, 0, 17, 'K-54', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1267, 0, 17, 'K-55', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1268, 0, 17, 'K-56', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1269, 0, 17, 'K-57', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1270, 0, 17, 'K-58', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1271, 0, 17, 'K-59', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1272, 0, 17, 'K-60', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1273, 0, 17, 'K-61', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1274, 0, 17, 'K-62', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1275, 0, 17, 'K-63', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1276, 0, 17, 'K-64', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1277, 0, 17, 'K-65', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1278, 0, 17, 'K-66', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1279, 0, 17, 'K-67', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1280, 0, 17, 'K-68', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1281, 0, 17, 'K-69', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1282, 0, 17, 'K-70', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1283, 0, 17, 'K-71', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1284, 0, 17, 'K-72', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1285, 0, 17, 'K-73', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1286, 0, 17, 'K-74', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1287, 0, 17, 'K-75', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1288, 0, 17, 'K-76', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1289, 0, 17, 'K-77', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1290, 0, 17, 'K-78', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1291, 0, 17, 'K-79', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1292, 0, 17, 'K-80', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1293, 0, 17, 'K-81', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1294, 0, 17, 'K-82', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1295, 0, 17, 'K-83', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1296, 0, 17, 'K-84', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1297, 0, 17, 'K-85', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1298, 0, 17, 'K-86', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1299, 0, 17, 'K-87', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1300, 0, 17, 'K-88', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1301, 0, 17, 'K-89', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1302, 0, 17, 'K-90', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1303, 0, 17, 'K-91', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1304, 0, 17, 'K-92', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1305, 0, 17, 'K-93', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1306, 0, 17, 'K-94', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1307, 0, 17, 'K-95', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1308, 0, 17, 'K-96', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1309, 0, 17, 'K-97', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1310, 0, 17, 'K-98', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1311, 0, 17, 'K-99', 0, '2021-06-07 13:47:31', '2021-06-07 13:47:31', NULL),
(1312, 0, 18, 'K-1', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1313, 0, 18, 'K-2', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1314, 0, 18, 'K-3', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1315, 0, 18, 'K-4', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1316, 0, 18, 'K-5', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1317, 0, 18, 'K-6', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1318, 0, 18, 'K-7', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1319, 0, 18, 'K-8', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1320, 0, 18, 'K-9', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1321, 0, 18, 'K-10', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1322, 0, 18, 'K-11', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1323, 0, 18, 'K-12', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1324, 0, 18, 'K-13', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1325, 0, 18, 'K-14', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1326, 0, 18, 'K-15', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1327, 0, 18, 'K-16', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1328, 0, 18, 'K-17', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1329, 0, 18, 'K-18', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1330, 0, 18, 'K-19', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1331, 0, 18, 'K-20', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1332, 0, 18, 'K-21', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1333, 0, 18, 'K-22', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1334, 0, 18, 'K-23', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1335, 0, 18, 'K-24', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1336, 0, 18, 'K-25', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1337, 0, 18, 'K-26', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1338, 0, 18, 'K-27', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1339, 0, 18, 'K-28', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1340, 0, 18, 'K-29', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1341, 0, 18, 'K-30', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1342, 0, 18, 'K-31', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1343, 0, 18, 'K-32', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1344, 0, 18, 'K-33', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1345, 0, 18, 'K-34', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1346, 0, 18, 'K-35', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1347, 0, 18, 'K-36', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1348, 0, 18, 'K-37', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1349, 0, 18, 'K-38', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1350, 0, 18, 'K-39', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1351, 0, 18, 'K-40', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1352, 0, 18, 'K-41', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1353, 0, 18, 'K-42', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1354, 0, 18, 'K-43', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1355, 0, 18, 'K-44', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1356, 0, 18, 'K-45', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1357, 0, 18, 'K-46', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1358, 0, 18, 'K-47', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1359, 0, 18, 'K-48', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1360, 0, 18, 'K-49', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1361, 0, 18, 'K-50', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1362, 0, 18, 'K-51', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1363, 0, 18, 'K-52', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1364, 0, 18, 'K-53', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1365, 0, 18, 'K-54', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1366, 0, 18, 'K-55', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1367, 0, 18, 'K-56', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1368, 0, 18, 'K-57', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1369, 0, 18, 'K-58', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1370, 0, 18, 'K-59', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1371, 0, 18, 'K-60', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1372, 0, 18, 'K-61', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1373, 0, 18, 'K-62', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1374, 0, 18, 'K-63', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1375, 0, 18, 'K-64', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1376, 0, 18, 'K-65', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1377, 0, 18, 'K-66', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1378, 0, 18, 'K-67', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1379, 0, 18, 'K-68', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1380, 0, 18, 'K-69', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1381, 0, 18, 'K-70', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1382, 0, 18, 'K-71', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1383, 0, 18, 'K-72', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1384, 0, 18, 'K-73', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1385, 0, 18, 'K-74', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1386, 0, 18, 'K-75', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1387, 0, 18, 'K-76', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1388, 0, 18, 'K-77', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1389, 0, 18, 'K-78', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1390, 0, 18, 'K-79', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1391, 0, 18, 'K-80', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1392, 0, 18, 'K-81', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1393, 0, 18, 'K-82', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1394, 0, 18, 'K-83', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1395, 0, 18, 'K-84', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1396, 0, 18, 'K-85', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1397, 0, 18, 'K-86', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1398, 0, 18, 'K-87', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1399, 0, 18, 'K-88', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1400, 0, 18, 'K-89', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1401, 0, 18, 'K-90', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1402, 0, 18, 'K-91', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1403, 0, 18, 'K-92', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1404, 0, 18, 'K-93', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1405, 0, 18, 'K-94', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1406, 0, 18, 'K-95', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1407, 0, 18, 'K-96', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1408, 0, 18, 'K-97', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1409, 0, 18, 'K-98', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1410, 0, 18, 'K-99', 0, '2021-06-07 13:53:56', '2021-06-07 13:53:56', NULL),
(1411, 0, 19, 'K-1', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1412, 0, 19, 'K-2', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1413, 0, 19, 'K-3', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1414, 0, 19, 'K-4', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1415, 0, 19, 'K-5', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1416, 0, 19, 'K-6', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1417, 0, 19, 'K-7', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1418, 0, 19, 'K-8', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1419, 0, 19, 'K-9', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1420, 0, 19, 'K-10', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1421, 0, 19, 'K-11', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1422, 0, 19, 'K-12', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1423, 0, 19, 'K-13', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1424, 0, 19, 'K-14', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1425, 0, 19, 'K-15', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1426, 0, 19, 'K-16', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1427, 0, 19, 'K-17', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1428, 0, 19, 'K-18', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1429, 0, 19, 'K-19', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1430, 0, 19, 'K-20', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1431, 0, 19, 'K-21', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1432, 0, 19, 'K-22', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1433, 0, 19, 'K-23', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1434, 0, 19, 'K-24', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1435, 0, 19, 'K-25', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1436, 0, 19, 'K-26', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1437, 0, 19, 'K-27', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1438, 0, 19, 'K-28', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1439, 0, 19, 'K-29', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1440, 0, 19, 'K-30', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1441, 0, 19, 'K-31', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1442, 0, 19, 'K-32', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1443, 0, 19, 'K-33', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1444, 0, 19, 'K-34', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1445, 0, 19, 'K-35', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1446, 0, 19, 'K-36', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1447, 0, 19, 'K-37', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1448, 0, 19, 'K-38', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1449, 0, 19, 'K-39', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1450, 0, 19, 'K-40', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1451, 0, 19, 'K-41', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1452, 0, 19, 'K-42', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1453, 0, 19, 'K-43', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1454, 0, 19, 'K-44', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1455, 0, 19, 'K-45', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1456, 0, 19, 'K-46', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1457, 0, 19, 'K-47', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1458, 0, 19, 'K-48', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1459, 0, 19, 'K-49', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1460, 0, 19, 'K-50', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1461, 0, 19, 'K-51', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1462, 0, 19, 'K-52', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1463, 0, 19, 'K-53', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1464, 0, 19, 'K-54', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1465, 0, 19, 'K-55', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1466, 0, 19, 'K-56', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1467, 0, 19, 'K-57', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1468, 0, 19, 'K-58', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1469, 0, 19, 'K-59', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1470, 0, 19, 'K-60', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1471, 0, 19, 'K-61', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1472, 0, 19, 'K-62', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1473, 0, 19, 'K-63', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1474, 0, 19, 'K-64', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1475, 0, 19, 'K-65', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1476, 0, 19, 'K-66', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1477, 0, 19, 'K-67', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1478, 0, 19, 'K-68', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1479, 0, 19, 'K-69', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1480, 0, 19, 'K-70', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1481, 0, 19, 'K-71', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1482, 0, 19, 'K-72', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1483, 0, 19, 'K-73', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1484, 0, 19, 'K-74', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1485, 0, 19, 'K-75', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1486, 0, 19, 'K-76', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1487, 0, 19, 'K-77', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1488, 0, 19, 'K-78', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1489, 0, 19, 'K-79', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1490, 0, 19, 'K-80', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1491, 0, 19, 'K-81', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1492, 0, 19, 'K-82', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1493, 0, 19, 'K-83', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1494, 0, 19, 'K-84', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1495, 0, 19, 'K-85', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1496, 0, 19, 'K-86', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1497, 0, 19, 'K-87', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1498, 0, 19, 'K-88', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1499, 0, 19, 'K-89', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1500, 0, 19, 'K-90', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1501, 0, 19, 'K-91', 0, '2021-06-07 14:00:01', '2021-06-07 14:00:01', NULL),
(1502, 0, 19, 'K-92', 0, '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(1503, 0, 19, 'K-93', 0, '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(1504, 0, 19, 'K-94', 0, '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(1505, 0, 19, 'K-95', 0, '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(1506, 0, 19, 'K-96', 0, '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(1507, 0, 19, 'K-97', 0, '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(1508, 0, 19, 'K-98', 0, '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(1509, 0, 19, 'K-99', 0, '2021-06-07 14:00:02', '2021-06-07 14:00:02', NULL),
(1510, 0, 20, 'K-1', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1511, 0, 20, 'K-2', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1512, 0, 20, 'K-3', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1513, 0, 20, 'K-4', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1514, 0, 20, 'K-5', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1515, 0, 20, 'K-6', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1516, 0, 20, 'K-7', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1517, 0, 20, 'K-8', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1518, 0, 20, 'K-9', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1519, 0, 20, 'K-10', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1520, 0, 20, 'K-11', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1521, 0, 20, 'K-12', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1522, 0, 20, 'K-13', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1523, 0, 20, 'K-14', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1524, 0, 20, 'K-15', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1525, 0, 20, 'K-16', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1526, 0, 20, 'K-17', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1527, 0, 20, 'K-18', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1528, 0, 20, 'K-19', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1529, 0, 20, 'K-20', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1530, 0, 20, 'K-21', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1531, 0, 20, 'K-22', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1532, 0, 20, 'K-23', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1533, 0, 20, 'K-24', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1534, 0, 20, 'K-25', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1535, 0, 20, 'K-26', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1536, 0, 20, 'K-27', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1537, 0, 20, 'K-28', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1538, 0, 20, 'K-29', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1539, 0, 20, 'K-30', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1540, 0, 20, 'K-31', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1541, 0, 20, 'K-32', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1542, 0, 20, 'K-33', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1543, 0, 20, 'K-34', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1544, 0, 20, 'K-35', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1545, 0, 20, 'K-36', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1546, 0, 20, 'K-37', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1547, 0, 20, 'K-38', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1548, 0, 20, 'K-39', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1549, 0, 20, 'K-40', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1550, 0, 20, 'K-41', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1551, 0, 20, 'K-42', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1552, 0, 20, 'K-43', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1553, 0, 20, 'K-44', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1554, 0, 20, 'K-45', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1555, 0, 20, 'K-46', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1556, 0, 20, 'K-47', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1557, 0, 20, 'K-48', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1558, 0, 20, 'K-49', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1559, 0, 20, 'K-50', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1560, 0, 20, 'K-51', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1561, 0, 20, 'K-52', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1562, 0, 20, 'K-53', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1563, 0, 20, 'K-54', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1564, 0, 20, 'K-55', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1565, 0, 20, 'K-56', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1566, 0, 20, 'K-57', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1567, 0, 20, 'K-58', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1568, 0, 20, 'K-59', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1569, 0, 20, 'K-60', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1570, 0, 20, 'K-61', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1571, 0, 20, 'K-62', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1572, 0, 20, 'K-63', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1573, 0, 20, 'K-64', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1574, 0, 20, 'K-65', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1575, 0, 20, 'K-66', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1576, 0, 20, 'K-67', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1577, 0, 20, 'K-68', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1578, 0, 20, 'K-69', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1579, 0, 20, 'K-70', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1580, 0, 20, 'K-71', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1581, 0, 20, 'K-72', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1582, 0, 20, 'K-73', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1583, 0, 20, 'K-74', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1584, 0, 20, 'K-75', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1585, 0, 20, 'K-76', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1586, 0, 20, 'K-77', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1587, 0, 20, 'K-78', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1588, 0, 20, 'K-79', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1589, 0, 20, 'K-80', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1590, 0, 20, 'K-81', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1591, 0, 20, 'K-82', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1592, 0, 20, 'K-83', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1593, 0, 20, 'K-84', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1594, 0, 20, 'K-85', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1595, 0, 20, 'K-86', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1596, 0, 20, 'K-87', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1597, 0, 20, 'K-88', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1598, 0, 20, 'K-89', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1599, 0, 20, 'K-90', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1600, 0, 20, 'K-91', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1601, 0, 20, 'K-92', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1602, 0, 20, 'K-93', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1603, 0, 20, 'K-94', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1604, 0, 20, 'K-95', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1605, 0, 20, 'K-96', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1606, 0, 20, 'K-97', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1607, 0, 20, 'K-98', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1608, 0, 20, 'K-99', 0, '2021-06-07 14:14:30', '2021-06-07 14:14:30', NULL),
(1609, 0, 21, 'K-1', 0, '2021-06-07 14:21:12', '2021-06-07 14:21:12', NULL),
(1610, 0, 21, 'K-2', 0, '2021-06-07 14:21:12', '2021-06-07 14:21:12', NULL),
(1611, 0, 21, 'K-3', 0, '2021-06-07 14:21:12', '2021-06-07 14:21:12', NULL),
(1612, 0, 21, 'K-4', 0, '2021-06-07 14:21:12', '2021-06-07 14:21:12', NULL),
(1613, 0, 21, 'K-5', 0, '2021-06-07 14:21:12', '2021-06-07 14:21:12', NULL),
(1614, 0, 21, 'K-6', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1615, 0, 21, 'K-7', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1616, 0, 21, 'K-8', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1617, 0, 21, 'K-9', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1618, 0, 21, 'K-10', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1619, 0, 21, 'K-11', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1620, 0, 21, 'K-12', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1621, 0, 21, 'K-13', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1622, 0, 21, 'K-14', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1623, 0, 21, 'K-15', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1624, 0, 21, 'K-16', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1625, 0, 21, 'K-17', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1626, 0, 21, 'K-18', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1627, 0, 21, 'K-19', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1628, 0, 21, 'K-20', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1629, 0, 21, 'K-21', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1630, 0, 21, 'K-22', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1631, 0, 21, 'K-23', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1632, 0, 21, 'K-24', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1633, 0, 21, 'K-25', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1634, 0, 21, 'K-26', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1635, 0, 21, 'K-27', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1636, 0, 21, 'K-28', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1637, 0, 21, 'K-29', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1638, 0, 21, 'K-30', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1639, 0, 21, 'K-31', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1640, 0, 21, 'K-32', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1641, 0, 21, 'K-33', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1642, 0, 21, 'K-34', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1643, 0, 21, 'K-35', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1644, 0, 21, 'K-36', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1645, 0, 21, 'K-37', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1646, 0, 21, 'K-38', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1647, 0, 21, 'K-39', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1648, 0, 21, 'K-40', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1649, 0, 21, 'K-41', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1650, 0, 21, 'K-42', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1651, 0, 21, 'K-43', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1652, 0, 21, 'K-44', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1653, 0, 21, 'K-45', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1654, 0, 21, 'K-46', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1655, 0, 21, 'K-47', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1656, 0, 21, 'K-48', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1657, 0, 21, 'K-49', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1658, 0, 21, 'K-50', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1659, 0, 21, 'K-51', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1660, 0, 21, 'K-52', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1661, 0, 21, 'K-53', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1662, 0, 21, 'K-54', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1663, 0, 21, 'K-55', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1664, 0, 21, 'K-56', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1665, 0, 21, 'K-57', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1666, 0, 21, 'K-58', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1667, 0, 21, 'K-59', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1668, 0, 21, 'K-60', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1669, 0, 21, 'K-61', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1670, 0, 21, 'K-62', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1671, 0, 21, 'K-63', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1672, 0, 21, 'K-64', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1673, 0, 21, 'K-65', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1674, 0, 21, 'K-66', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1675, 0, 21, 'K-67', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1676, 0, 21, 'K-68', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1677, 0, 21, 'K-69', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1678, 0, 21, 'K-70', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1679, 0, 21, 'K-71', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1680, 0, 21, 'K-72', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1681, 0, 21, 'K-73', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1682, 0, 21, 'K-74', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1683, 0, 21, 'K-75', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1684, 0, 21, 'K-76', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1685, 0, 21, 'K-77', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1686, 0, 21, 'K-78', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1687, 0, 21, 'K-79', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1688, 0, 21, 'K-80', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1689, 0, 21, 'K-81', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1690, 0, 21, 'K-82', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1691, 0, 21, 'K-83', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1692, 0, 21, 'K-84', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1693, 0, 21, 'K-85', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1694, 0, 21, 'K-86', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1695, 0, 21, 'K-87', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1696, 0, 21, 'K-88', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1697, 0, 21, 'K-89', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1698, 0, 21, 'K-90', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1699, 0, 21, 'K-91', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1700, 0, 21, 'K-92', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1701, 0, 21, 'K-93', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1702, 0, 21, 'K-94', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1703, 0, 21, 'K-95', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1704, 0, 21, 'K-96', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1705, 0, 21, 'K-97', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1706, 0, 21, 'K-98', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1707, 0, 21, 'K-99', 0, '2021-06-07 14:21:13', '2021-06-07 14:21:13', NULL),
(1708, 0, 22, 'K-1', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1709, 0, 22, 'K-2', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1710, 0, 22, 'K-3', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1711, 0, 22, 'K-4', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1712, 0, 22, 'K-5', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1713, 0, 22, 'K-6', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1714, 0, 22, 'K-7', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1715, 0, 22, 'K-8', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1716, 0, 22, 'K-9', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1717, 0, 22, 'K-10', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1718, 0, 22, 'K-11', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1719, 0, 22, 'K-12', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1720, 0, 22, 'K-13', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1721, 0, 22, 'K-14', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1722, 0, 22, 'K-15', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1723, 0, 22, 'K-16', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1724, 0, 22, 'K-17', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1725, 0, 22, 'K-18', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1726, 0, 22, 'K-19', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1727, 0, 22, 'K-20', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1728, 0, 22, 'K-21', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1729, 0, 22, 'K-22', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1730, 0, 22, 'K-23', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1731, 0, 22, 'K-24', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1732, 0, 22, 'K-25', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1733, 0, 22, 'K-26', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1734, 0, 22, 'K-27', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1735, 0, 22, 'K-28', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1736, 0, 22, 'K-29', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1737, 0, 22, 'K-30', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1738, 0, 22, 'K-31', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1739, 0, 22, 'K-32', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1740, 0, 22, 'K-33', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1741, 0, 22, 'K-34', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1742, 0, 22, 'K-35', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1743, 0, 22, 'K-36', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1744, 0, 22, 'K-37', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1745, 0, 22, 'K-38', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1746, 0, 22, 'K-39', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1747, 0, 22, 'K-40', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1748, 0, 22, 'K-41', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1749, 0, 22, 'K-42', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1750, 0, 22, 'K-43', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1751, 0, 22, 'K-44', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1752, 0, 22, 'K-45', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1753, 0, 22, 'K-46', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1754, 0, 22, 'K-47', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1755, 0, 22, 'K-48', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1756, 0, 22, 'K-49', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1757, 0, 22, 'K-50', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1758, 0, 22, 'K-51', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1759, 0, 22, 'K-52', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1760, 0, 22, 'K-53', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1761, 0, 22, 'K-54', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1762, 0, 22, 'K-55', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1763, 0, 22, 'K-56', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1764, 0, 22, 'K-57', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1765, 0, 22, 'K-58', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1766, 0, 22, 'K-59', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1767, 0, 22, 'K-60', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1768, 0, 22, 'K-61', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1769, 0, 22, 'K-62', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1770, 0, 22, 'K-63', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1771, 0, 22, 'K-64', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1772, 0, 22, 'K-65', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1773, 0, 22, 'K-66', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1774, 0, 22, 'K-67', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1775, 0, 22, 'K-68', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1776, 0, 22, 'K-69', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1777, 0, 22, 'K-70', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1778, 0, 22, 'K-71', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1779, 0, 22, 'K-72', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1780, 0, 22, 'K-73', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1781, 0, 22, 'K-74', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1782, 0, 22, 'K-75', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1783, 0, 22, 'K-76', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1784, 0, 22, 'K-77', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1785, 0, 22, 'K-78', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1786, 0, 22, 'K-79', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1787, 0, 22, 'K-80', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1788, 0, 22, 'K-81', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1789, 0, 22, 'K-82', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1790, 0, 22, 'K-83', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1791, 0, 22, 'K-84', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1792, 0, 22, 'K-85', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1793, 0, 22, 'K-86', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1794, 0, 22, 'K-87', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1795, 0, 22, 'K-88', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1796, 0, 22, 'K-89', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1797, 0, 22, 'K-90', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1798, 0, 22, 'K-91', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1799, 0, 22, 'K-92', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1800, 0, 22, 'K-93', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1801, 0, 22, 'K-94', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1802, 0, 22, 'K-95', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1803, 0, 22, 'K-96', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1804, 0, 22, 'K-97', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1805, 0, 22, 'K-98', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1806, 0, 22, 'K-99', 0, '2021-06-07 15:02:57', '2021-06-07 15:02:57', NULL),
(1807, 0, 23, 'K-1', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1808, 0, 23, 'K-2', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1809, 0, 23, 'K-3', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1810, 0, 23, 'K-4', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1811, 0, 23, 'K-5', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1812, 0, 23, 'K-6', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1813, 0, 23, 'K-7', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1814, 0, 23, 'K-8', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1815, 0, 23, 'K-9', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1816, 0, 23, 'K-10', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1817, 0, 23, 'K-11', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1818, 0, 23, 'K-12', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1819, 0, 23, 'K-13', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL);
INSERT INTO `film_rezervasyonlari` (`id`, `kullanici_id`, `film_id`, `koltuk_adi`, `bos_mu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1820, 0, 23, 'K-14', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1821, 0, 23, 'K-15', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1822, 0, 23, 'K-16', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1823, 0, 23, 'K-17', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1824, 0, 23, 'K-18', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1825, 0, 23, 'K-19', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1826, 0, 23, 'K-20', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1827, 0, 23, 'K-21', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1828, 0, 23, 'K-22', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1829, 0, 23, 'K-23', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1830, 0, 23, 'K-24', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1831, 0, 23, 'K-25', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1832, 0, 23, 'K-26', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1833, 0, 23, 'K-27', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1834, 0, 23, 'K-28', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1835, 0, 23, 'K-29', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1836, 0, 23, 'K-30', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1837, 0, 23, 'K-31', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1838, 0, 23, 'K-32', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1839, 0, 23, 'K-33', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1840, 0, 23, 'K-34', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1841, 0, 23, 'K-35', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1842, 0, 23, 'K-36', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1843, 0, 23, 'K-37', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1844, 0, 23, 'K-38', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1845, 0, 23, 'K-39', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1846, 0, 23, 'K-40', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1847, 0, 23, 'K-41', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1848, 0, 23, 'K-42', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1849, 0, 23, 'K-43', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1850, 0, 23, 'K-44', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1851, 0, 23, 'K-45', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1852, 0, 23, 'K-46', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1853, 0, 23, 'K-47', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1854, 0, 23, 'K-48', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1855, 0, 23, 'K-49', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1856, 0, 23, 'K-50', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1857, 0, 23, 'K-51', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1858, 0, 23, 'K-52', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1859, 0, 23, 'K-53', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1860, 0, 23, 'K-54', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1861, 0, 23, 'K-55', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1862, 0, 23, 'K-56', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1863, 0, 23, 'K-57', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1864, 0, 23, 'K-58', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1865, 0, 23, 'K-59', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1866, 0, 23, 'K-60', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1867, 0, 23, 'K-61', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1868, 0, 23, 'K-62', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1869, 0, 23, 'K-63', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1870, 0, 23, 'K-64', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1871, 0, 23, 'K-65', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1872, 0, 23, 'K-66', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1873, 0, 23, 'K-67', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1874, 0, 23, 'K-68', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1875, 0, 23, 'K-69', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1876, 0, 23, 'K-70', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1877, 0, 23, 'K-71', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1878, 0, 23, 'K-72', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1879, 0, 23, 'K-73', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1880, 0, 23, 'K-74', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1881, 0, 23, 'K-75', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1882, 0, 23, 'K-76', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1883, 0, 23, 'K-77', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1884, 0, 23, 'K-78', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1885, 0, 23, 'K-79', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1886, 0, 23, 'K-80', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1887, 0, 23, 'K-81', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1888, 0, 23, 'K-82', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1889, 0, 23, 'K-83', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1890, 0, 23, 'K-84', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1891, 0, 23, 'K-85', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1892, 0, 23, 'K-86', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1893, 0, 23, 'K-87', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1894, 0, 23, 'K-88', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1895, 0, 23, 'K-89', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1896, 0, 23, 'K-90', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1897, 0, 23, 'K-91', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1898, 0, 23, 'K-92', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1899, 0, 23, 'K-93', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1900, 0, 23, 'K-94', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1901, 0, 23, 'K-95', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1902, 0, 23, 'K-96', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1903, 0, 23, 'K-97', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1904, 0, 23, 'K-98', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL),
(1905, 0, 23, 'K-99', 0, '2021-06-07 15:10:42', '2021-06-07 15:10:42', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_seanslari`
--

CREATE TABLE `film_seanslari` (
  `id` int(10) UNSIGNED NOT NULL,
  `seans_id` int(10) NOT NULL,
  `film_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `film_seanslari`
--

INSERT INTO `film_seanslari` (`id`, `seans_id`, `film_id`, `created_at`, `updated_at`) VALUES
(14, 1, 7, '2021-05-30 08:44:57', '2021-05-30 08:44:57'),
(15, 2, 7, '2021-05-30 08:44:57', '2021-05-30 08:44:57'),
(16, 1, 8, '2021-05-30 09:57:49', '2021-05-30 09:57:49'),
(17, 2, 8, '2021-05-30 09:57:49', '2021-05-30 09:57:49'),
(18, 1, 9, '2021-06-05 20:08:43', '2021-06-05 20:08:43'),
(19, 3, 9, '2021-06-05 20:08:43', '2021-06-05 20:08:43'),
(20, 2, 14, '2021-06-06 17:48:11', '2021-06-06 17:48:11'),
(21, 4, 14, '2021-06-06 17:48:11', '2021-06-06 17:48:11'),
(22, 2, 11, '2021-06-06 17:49:52', '2021-06-06 17:49:52'),
(23, 4, 11, '2021-06-06 17:49:52', '2021-06-06 17:49:52'),
(24, 8, 15, '2021-06-06 17:52:48', '2021-06-06 17:52:48'),
(25, 11, 15, '2021-06-06 17:52:48', '2021-06-06 17:52:48'),
(26, 2, 16, '2021-06-07 13:37:23', '2021-06-07 13:37:23'),
(27, 10, 16, '2021-06-07 13:37:23', '2021-06-07 13:37:23'),
(28, 12, 16, '2021-06-07 13:37:23', '2021-06-07 13:37:23'),
(29, 2, 17, '2021-06-07 13:47:31', '2021-06-07 13:47:31'),
(30, 4, 17, '2021-06-07 13:47:31', '2021-06-07 13:47:31'),
(31, 10, 17, '2021-06-07 13:47:31', '2021-06-07 13:47:31'),
(32, 3, 18, '2021-06-07 13:53:56', '2021-06-07 13:53:56'),
(33, 7, 18, '2021-06-07 13:53:56', '2021-06-07 13:53:56'),
(34, 10, 18, '2021-06-07 13:53:56', '2021-06-07 13:53:56'),
(35, 2, 19, '2021-06-07 14:00:02', '2021-06-07 14:00:02'),
(36, 4, 19, '2021-06-07 14:00:02', '2021-06-07 14:00:02'),
(37, 6, 19, '2021-06-07 14:00:02', '2021-06-07 14:00:02'),
(38, 11, 19, '2021-06-07 14:00:02', '2021-06-07 14:00:02'),
(39, 2, 20, '2021-06-07 14:14:30', '2021-06-07 14:14:30'),
(40, 4, 20, '2021-06-07 14:14:30', '2021-06-07 14:14:30'),
(41, 5, 20, '2021-06-07 14:14:30', '2021-06-07 14:14:30'),
(42, 9, 20, '2021-06-07 14:14:30', '2021-06-07 14:14:30'),
(43, 6, 21, '2021-06-07 14:21:13', '2021-06-07 14:21:13'),
(44, 8, 21, '2021-06-07 14:21:13', '2021-06-07 14:21:13'),
(45, 11, 21, '2021-06-07 14:21:13', '2021-06-07 14:21:13'),
(46, 2, 22, '2021-06-07 15:02:57', '2021-06-07 15:02:57'),
(47, 4, 22, '2021-06-07 15:02:57', '2021-06-07 15:02:57'),
(48, 6, 22, '2021-06-07 15:02:57', '2021-06-07 15:02:57'),
(49, 2, 23, '2021-06-07 15:10:42', '2021-06-07 15:10:42'),
(50, 4, 23, '2021-06-07 15:10:42', '2021-06-07 15:10:42'),
(51, 6, 23, '2021-06-07 15:10:42', '2021-06-07 15:10:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_yorumlari`
--

CREATE TABLE `film_yorumlari` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `kullanici_id` int(10) UNSIGNED NOT NULL,
  `yorum` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif_mi` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `film_yorumlari`
--

INSERT INTO `film_yorumlari` (`id`, `film_id`, `kullanici_id`, `yorum`, `aktif_mi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2021-05-30 13:57:21', '2021-05-30 11:08:25', NULL),
(2, 7, 2, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2021-05-30 13:57:24', '2021-05-30 11:05:58', NULL),
(3, 7, 3, 'adasdadad', 1, '2021-05-30 17:31:21', '2021-05-30 17:32:59', NULL),
(4, 7, 3, 'asdadad', 1, '2021-05-30 17:31:34', '2021-06-03 18:10:46', NULL),
(5, 8, 3, 'selam, bok gibi film', 0, '2021-06-03 18:11:27', '2021-06-03 18:11:49', '2021-06-03 18:11:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iller`
--

CREATE TABLE `iller` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `iller`
--

INSERT INTO `iller` (`id`, `ad`, `created_at`, `updated_at`) VALUES
(1, 'Adana', '2021-05-29 11:39:25', '2021-06-05 11:12:11'),
(2, 'Adıyaman', '2021-05-29 08:58:14', '2021-06-05 11:12:22'),
(3, 'Afyonkarahisar', '2021-06-05 11:12:34', '2021-06-05 11:12:34'),
(4, 'Ağrı', '2021-06-05 11:12:43', '2021-06-05 11:12:43'),
(5, 'Amasya', '2021-06-05 11:13:00', '2021-06-05 11:13:00'),
(6, 'Ankara', '2021-06-05 11:13:09', '2021-06-05 11:13:09'),
(7, 'Antalya', '2021-06-05 11:13:19', '2021-06-05 11:13:19'),
(8, 'Artvin', '2021-06-05 11:13:28', '2021-06-05 11:13:28'),
(9, 'Aydın', '2021-06-05 11:13:37', '2021-06-05 11:13:37'),
(10, 'Balıkesir', '2021-06-05 11:13:47', '2021-06-05 11:13:47'),
(11, 'Bilecik', '2021-06-05 11:13:57', '2021-06-05 11:13:57'),
(12, 'Bingöl', '2021-06-05 11:14:07', '2021-06-05 11:14:07'),
(13, 'Bitlis', '2021-06-05 11:14:16', '2021-06-05 11:14:16'),
(14, 'Bolu', '2021-06-05 11:14:22', '2021-06-05 11:14:22'),
(15, 'Burdur', '2021-06-05 11:14:32', '2021-06-05 11:14:32'),
(16, 'Bursa', '2021-06-05 11:14:37', '2021-06-05 11:14:37'),
(17, 'Çanakkale', '2021-06-05 11:14:50', '2021-06-05 11:14:50'),
(18, 'Çankırı', '2021-06-05 11:15:09', '2021-06-05 11:31:53'),
(19, 'Çorum', '2021-06-05 11:15:19', '2021-06-05 11:32:09'),
(20, 'Denizli', '2021-06-05 11:15:28', '2021-06-05 11:32:20'),
(21, 'Diyarbakır', '2021-06-05 11:15:37', '2021-06-05 11:32:32'),
(22, 'Edirne', '2021-06-05 11:15:42', '2021-06-05 11:32:45'),
(23, 'Elazığ', '2021-06-05 11:15:51', '2021-06-05 11:32:56'),
(24, 'Erzincan', '2021-06-05 11:15:59', '2021-06-05 11:33:06'),
(25, 'Erzurum', '2021-06-05 11:16:09', '2021-06-05 11:33:16'),
(26, 'Eskişehir', '2021-06-05 11:16:33', '2021-06-05 11:33:22'),
(27, 'Gaziantep', '2021-06-05 11:19:40', '2021-06-05 11:33:28'),
(28, 'Giresun', '2021-06-05 11:19:51', '2021-06-05 11:33:36'),
(29, 'Gümüşhane', '2021-06-05 11:20:00', '2021-06-05 11:33:46'),
(30, 'Hakkari', '2021-06-05 11:20:09', '2021-06-05 11:33:55'),
(31, 'Hatay', '2021-06-05 11:20:18', '2021-06-05 11:34:03'),
(32, 'Isparta', '2021-06-05 11:20:29', '2021-06-05 11:34:11'),
(33, 'Mersin', '2021-06-05 11:20:45', '2021-06-05 11:34:17'),
(34, 'İstanbul', '2021-06-05 11:34:44', '2021-06-05 11:34:44'),
(35, 'İzmir', '2021-06-05 11:34:54', '2021-06-05 11:34:54'),
(36, 'Kars', '2021-06-05 11:35:03', '2021-06-05 11:35:03'),
(37, 'Kastamonu', '2021-06-05 11:35:11', '2021-06-05 11:35:11'),
(38, 'Kayseri', '2021-06-05 11:35:20', '2021-06-05 11:35:20'),
(39, 'Kırklareli', '2021-06-05 11:35:33', '2021-06-05 11:35:33'),
(40, 'Kırşehir', '2021-06-05 11:35:39', '2021-06-05 11:35:39'),
(41, 'Kocaeli', '2021-06-05 11:35:51', '2021-06-05 11:35:51'),
(42, 'Konya', '2021-06-05 11:35:58', '2021-06-05 11:35:58'),
(43, 'Kütahya', '2021-06-05 11:36:07', '2021-06-05 11:36:07'),
(44, 'Malatya', '2021-06-05 11:36:31', '2021-06-05 11:36:31'),
(45, 'Manisa', '2021-06-05 11:36:39', '2021-06-05 11:36:39'),
(46, 'Kahramanmaraş', '2021-06-05 11:36:54', '2021-06-05 11:36:54'),
(47, 'Mardin', '2021-06-05 11:37:04', '2021-06-05 11:37:04'),
(48, 'Muğla', '2021-06-05 11:37:09', '2021-06-05 11:37:09'),
(49, 'Muş', '2021-06-05 11:37:14', '2021-06-05 11:37:14'),
(50, 'Nevşehir', '2021-06-05 11:37:25', '2021-06-05 11:37:25'),
(51, 'Niğde', '2021-06-05 11:37:32', '2021-06-05 11:37:32'),
(52, 'Ordu', '2021-06-05 11:37:37', '2021-06-05 11:37:37'),
(53, 'Rize', '2021-06-05 11:37:44', '2021-06-05 11:37:44'),
(54, 'Sakarya', '2021-06-05 11:37:48', '2021-06-05 11:37:48'),
(55, 'Samsun', '2021-06-05 11:37:53', '2021-06-05 11:37:53'),
(56, 'Siirt', '2021-06-05 11:38:01', '2021-06-05 11:38:01'),
(57, 'Sinop', '2021-06-05 11:38:08', '2021-06-05 11:38:08'),
(58, 'Sivas', '2021-06-05 11:38:12', '2021-06-05 11:38:12'),
(59, 'Tekirdağ', '2021-06-05 11:38:26', '2021-06-05 11:38:26'),
(60, 'Tokat', '2021-06-05 11:38:31', '2021-06-05 11:38:31'),
(61, 'Trabzon', '2021-06-05 11:38:40', '2021-06-05 11:38:40'),
(62, 'Tunceli', '2021-06-05 11:38:46', '2021-06-05 11:38:46'),
(63, 'Şanlıurfa', '2021-06-05 11:38:56', '2021-06-05 11:38:56'),
(64, 'Uşak', '2021-06-05 11:39:04', '2021-06-05 11:39:04'),
(65, 'Van', '2021-06-05 11:39:09', '2021-06-05 11:39:09'),
(66, 'Yozgat', '2021-06-05 11:39:31', '2021-06-05 11:39:31'),
(67, 'Zonguldak', '2021-06-05 11:39:41', '2021-06-05 11:39:41'),
(68, 'Aksaray', '2021-06-05 11:39:49', '2021-06-05 11:39:49'),
(69, 'Bayburt', '2021-06-05 11:39:58', '2021-06-05 11:39:58'),
(70, 'Karaman', '2021-06-05 11:40:11', '2021-06-05 11:40:11'),
(71, 'Kırıkkale', '2021-06-05 11:40:20', '2021-06-05 11:40:20'),
(72, 'Batman', '2021-06-05 11:40:28', '2021-06-05 11:40:28'),
(73, 'Şırnak', '2021-06-05 11:40:34', '2021-06-05 11:40:34'),
(74, 'Bartın', '2021-06-05 11:40:42', '2021-06-05 11:40:42'),
(75, 'Ardahan', '2021-06-05 11:40:52', '2021-06-05 11:40:52'),
(76, 'Iğdır', '2021-06-05 11:41:06', '2021-06-05 11:41:06'),
(77, 'Yalova', '2021-06-05 11:41:11', '2021-06-05 11:41:11'),
(78, 'Karabük', '2021-06-05 11:41:20', '2021-06-05 11:41:20'),
(79, 'Kilis', '2021-06-05 11:41:28', '2021-06-05 11:41:28'),
(80, 'Osmaniye', '2021-06-05 11:41:34', '2021-06-05 11:41:34'),
(81, 'Düzce', '2021-06-05 11:41:38', '2021-06-05 11:41:38');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `id` int(10) UNSIGNED NOT NULL,
  `adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif_mi` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `adi`, `aktif_mi`, `created_at`, `updated_at`) VALUES
(1, 'Aksiyon', 1, '2021-05-29 14:55:35', '2021-05-30 10:13:07'),
(2, 'Gerilim', 1, '2021-05-29 14:55:52', NULL),
(3, 'Korku', 1, '2021-05-29 14:55:50', NULL),
(4, 'Komedi', 1, '2021-05-30 10:25:39', '2021-05-30 10:25:39'),
(5, 'Animasyon', 1, '2021-06-05 15:33:56', '2021-06-05 15:33:56'),
(6, 'Belgesel', 1, '2021-06-05 15:34:06', '2021-06-05 15:34:06'),
(7, 'Bilim Kurgu', 1, '2021-06-05 15:34:14', '2021-06-05 15:34:14'),
(8, 'Biyografi', 1, '2021-06-05 15:34:20', '2021-06-05 15:34:20'),
(9, 'Casusluk', 1, '2021-06-05 15:34:27', '2021-06-05 15:34:27'),
(10, 'Çizgi Roman', 1, '2021-06-05 15:34:35', '2021-06-05 15:34:35'),
(11, 'Dini', 1, '2021-06-05 15:34:40', '2021-06-05 15:34:40'),
(12, 'Fantastik', 1, '2021-06-05 15:34:52', '2021-06-05 15:34:52'),
(13, 'Macera', 1, '2021-06-05 15:35:07', '2021-06-05 15:35:07'),
(14, 'Romantik', 1, '2021-06-05 15:35:14', '2021-06-05 15:35:14'),
(15, 'Savaş', 1, '2021-06-05 15:35:21', '2021-06-05 15:35:21'),
(16, 'Spor', 1, '2021-06-05 15:35:26', '2021-06-05 15:35:26'),
(17, 'Tarihi', 1, '2021-06-05 15:35:37', '2021-06-05 15:35:37'),
(18, 'Müzikal', 1, '2021-06-05 15:35:43', '2021-06-05 15:35:43'),
(19, 'Felaket', 1, '2021-06-05 15:35:48', '2021-06-05 15:35:48'),
(20, 'Video Oyun', 1, '2021-06-05 15:36:06', '2021-06-05 15:36:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2021_04_20_191026_create_users_table', 1),
(3, '2021_04_20_192116_create_kategoriler_table', 1),
(4, '2021_04_20_192645_create_film_dilleri_table', 1),
(5, '2021_04_20_192705_create_film_formatlari_table', 1),
(6, '2021_04_20_192901_create_film_seanslari_table', 1),
(7, '2021_04_20_192902_create_iller_table', 1),
(8, '2021_04_20_192921_create_avmler_table', 1),
(9, '2021_04_20_192937_create_salonlar_table', 1),
(14, '2021_04_20_193006_create_filmler_table', 2),
(15, '2021_05_29_141844_create_film_resimleri_table', 2),
(16, '2021_05_29_142841_create_film_puanlari_table', 2),
(17, '2021_05_29_143322_create_film_yorumlari_table', 2),
(19, '2021_05_29_151901_create_seanslar_table', 3),
(20, '2021_05_30_111055_table_film_rezervasyonlari_create', 4),
(21, '2021_05_30_231205_create_slider_table', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `salonlar`
--

CREATE TABLE `salonlar` (
  `id` int(10) UNSIGNED NOT NULL,
  `adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avm_id` int(10) UNSIGNED NOT NULL,
  `aktif_mi` tinyint(1) NOT NULL,
  `kapasite` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `salonlar`
--

INSERT INTO `salonlar` (`id`, `adi`, `avm_id`, `aktif_mi`, `kapasite`, `created_at`, `updated_at`) VALUES
(1, 'Salon-1', 1, 1, 99, '2021-05-29 13:09:53', '2021-06-05 13:28:16'),
(2, 'Salon-2', 1, 1, 99, '2021-05-29 10:31:44', '2021-06-05 13:28:27'),
(3, 'Salon-1', 2, 1, 99, '2021-05-30 10:44:37', '2021-06-05 13:28:46'),
(4, 'Salon-2', 2, 1, 99, '2021-06-05 13:29:05', '2021-06-05 13:29:05'),
(5, 'Salon-1', 3, 1, 99, '2021-06-05 13:29:36', '2021-06-05 13:29:36'),
(6, 'Salon-2', 3, 1, 99, '2021-06-05 13:30:02', '2021-06-05 13:30:02'),
(7, 'Salon-1', 4, 1, 99, '2021-06-05 13:30:16', '2021-06-05 13:30:16'),
(8, 'Salon-2', 4, 1, 99, '2021-06-05 13:30:55', '2021-06-05 13:30:55'),
(9, 'Salon-1', 5, 1, 99, '2021-06-05 13:31:09', '2021-06-05 13:31:09'),
(10, 'Salon-2', 5, 1, 99, '2021-06-05 13:31:16', '2021-06-05 13:31:16'),
(11, 'Salon-1', 6, 1, 99, '2021-06-05 13:31:25', '2021-06-05 13:31:25'),
(12, 'Salon-2', 6, 1, 99, '2021-06-05 13:31:35', '2021-06-05 13:31:35'),
(13, 'Salon-1', 7, 1, 99, '2021-06-05 13:31:53', '2021-06-05 13:31:53'),
(14, 'Salon-2', 7, 1, 99, '2021-06-05 13:32:04', '2021-06-05 13:32:04'),
(15, 'Salon-1', 8, 1, 99, '2021-06-05 13:32:27', '2021-06-05 13:32:27'),
(16, 'Salon-2', 8, 1, 99, '2021-06-05 13:32:33', '2021-06-05 13:32:33'),
(17, 'Salon-1', 9, 1, 99, '2021-06-05 13:32:41', '2021-06-05 13:32:41'),
(18, 'Salon-2', 9, 1, 99, '2021-06-05 13:32:50', '2021-06-05 13:32:50'),
(19, 'Salon-1', 10, 1, 99, '2021-06-05 13:33:04', '2021-06-05 13:33:04'),
(20, 'Salon-2', 10, 1, 99, '2021-06-05 13:33:13', '2021-06-05 13:33:13'),
(21, 'Salon-1', 11, 1, 99, '2021-06-05 13:33:23', '2021-06-05 13:33:23'),
(22, 'Salon-2', 11, 1, 99, '2021-06-05 13:33:31', '2021-06-05 13:33:31'),
(23, 'Salon-1', 12, 1, 99, '2021-06-05 13:33:41', '2021-06-05 13:33:41'),
(24, 'Salon-2', 12, 1, 99, '2021-06-05 13:33:49', '2021-06-05 13:33:49'),
(25, 'Salon-1', 13, 1, 99, '2021-06-05 13:33:59', '2021-06-05 13:33:59'),
(26, 'Salon-2', 13, 1, 99, '2021-06-05 13:34:07', '2021-06-05 13:34:07'),
(27, 'Salon-1', 14, 1, 99, '2021-06-05 13:34:21', '2021-06-05 13:34:21'),
(28, 'Salon-2', 14, 1, 99, '2021-06-05 13:34:29', '2021-06-05 13:34:29'),
(29, 'Salon-1', 15, 1, 99, '2021-06-05 13:34:38', '2021-06-05 13:34:38'),
(30, 'Salon-2', 15, 1, 99, '2021-06-05 13:34:45', '2021-06-05 13:34:45'),
(31, 'Salon-1', 16, 1, 99, '2021-06-05 13:34:55', '2021-06-05 13:34:55'),
(32, 'Salon-2', 16, 1, 99, '2021-06-05 13:35:03', '2021-06-05 13:35:03'),
(33, 'Salon-1', 17, 1, 99, '2021-06-05 13:35:12', '2021-06-05 13:35:12'),
(34, 'Salon-2', 17, 1, 99, '2021-06-05 13:35:20', '2021-06-05 13:35:20'),
(35, 'Salon-1', 18, 1, 99, '2021-06-05 13:35:30', '2021-06-05 13:35:30'),
(36, 'Salon-2', 18, 1, 99, '2021-06-05 13:35:45', '2021-06-05 13:35:45'),
(37, 'Salon-1', 19, 1, 99, '2021-06-05 13:36:02', '2021-06-05 13:36:02'),
(38, 'Salon-2', 19, 1, 99, '2021-06-05 13:36:10', '2021-06-05 13:36:10'),
(39, 'Salon-1', 20, 1, 99, '2021-06-05 13:36:24', '2021-06-05 13:36:24'),
(40, 'Salon-2', 20, 1, 99, '2021-06-05 13:36:34', '2021-06-05 13:36:34'),
(41, 'Salon-1', 21, 1, 99, '2021-06-05 13:36:47', '2021-06-05 13:36:47'),
(42, 'Salon-2', 21, 1, 99, '2021-06-05 13:36:56', '2021-06-05 13:36:56'),
(43, 'Salon-1', 22, 1, 99, '2021-06-05 13:37:38', '2021-06-05 13:37:38'),
(44, 'Salon-2', 22, 1, 99, '2021-06-05 13:37:47', '2021-06-05 13:37:47'),
(45, 'Salon-1', 23, 1, 99, '2021-06-05 13:37:57', '2021-06-05 13:37:57'),
(46, 'Salon-2', 23, 1, 99, '2021-06-05 13:38:08', '2021-06-05 13:38:08'),
(47, 'Salon-1', 24, 1, 99, '2021-06-05 13:38:26', '2021-06-05 13:38:26'),
(48, 'Salon-2', 24, 1, 99, '2021-06-05 13:38:37', '2021-06-05 13:38:37'),
(49, 'Salon-1', 25, 1, 99, '2021-06-05 13:38:49', '2021-06-05 13:38:49'),
(50, 'Salon-2', 25, 1, 99, '2021-06-05 13:39:01', '2021-06-05 13:39:01'),
(51, 'Salon-1', 26, 1, 99, '2021-06-05 13:39:19', '2021-06-05 13:39:19'),
(52, 'Salon-2', 26, 1, 99, '2021-06-05 13:39:28', '2021-06-05 13:39:28'),
(53, 'Salon-1', 27, 1, 99, '2021-06-05 13:39:37', '2021-06-05 13:39:37'),
(54, 'Salon-2', 27, 1, 99, '2021-06-05 13:39:46', '2021-06-05 13:39:46'),
(55, 'Salon-1', 28, 1, 99, '2021-06-05 13:39:58', '2021-06-05 13:39:58'),
(56, 'Salon-2', 28, 1, 99, '2021-06-05 13:40:06', '2021-06-05 13:40:16'),
(57, 'Salon-1', 29, 1, 99, '2021-06-05 13:40:31', '2021-06-05 13:40:31'),
(58, 'Salon-2', 29, 1, 99, '2021-06-05 13:40:41', '2021-06-05 13:40:41'),
(59, 'Salon-1', 30, 1, 99, '2021-06-05 13:40:56', '2021-06-05 13:40:56'),
(60, 'Salon-2', 30, 1, 99, '2021-06-05 13:41:09', '2021-06-05 13:41:09'),
(61, 'Salon-1', 31, 1, 99, '2021-06-05 13:41:22', '2021-06-05 13:41:22'),
(62, 'Salon-2', 31, 1, 99, '2021-06-05 13:41:31', '2021-06-05 13:41:31'),
(63, 'Salon-1', 32, 1, 99, '2021-06-05 13:41:58', '2021-06-05 13:41:58'),
(64, 'Salon-2', 32, 1, 99, '2021-06-05 13:42:07', '2021-06-05 13:42:07'),
(65, 'Salon-1', 33, 1, 99, '2021-06-05 13:42:17', '2021-06-05 13:42:17'),
(66, 'Salon-2', 33, 1, 99, '2021-06-05 13:42:29', '2021-06-05 13:42:29'),
(67, 'Salon-1', 34, 1, 99, '2021-06-05 13:42:40', '2021-06-05 13:42:40'),
(68, 'Salon-2', 34, 1, 99, '2021-06-05 13:43:00', '2021-06-05 13:43:00'),
(69, 'Salon-1', 35, 1, 99, '2021-06-05 13:43:18', '2021-06-05 13:43:18'),
(70, 'Salon-2', 35, 1, 99, '2021-06-05 13:43:26', '2021-06-05 13:43:26'),
(71, 'Salon-1', 36, 1, 99, '2021-06-05 13:43:35', '2021-06-05 13:43:35'),
(72, 'Salon-2', 36, 1, 99, '2021-06-05 13:43:53', '2021-06-05 13:44:00'),
(73, 'Salon-1', 37, 1, 99, '2021-06-05 13:44:16', '2021-06-05 13:44:16'),
(74, 'Salon-2', 37, 1, 99, '2021-06-05 13:44:27', '2021-06-05 13:44:27'),
(75, 'Salon-1', 38, 1, 99, '2021-06-05 13:44:43', '2021-06-05 13:44:43'),
(76, 'Salon-2', 38, 1, 99, '2021-06-05 13:44:56', '2021-06-05 13:44:56'),
(77, 'Salon-1', 39, 1, 99, '2021-06-05 13:45:15', '2021-06-05 13:45:15'),
(78, 'Salon-2', 39, 1, 99, '2021-06-05 13:45:25', '2021-06-05 13:45:25'),
(79, 'Salon-1', 40, 1, 99, '2021-06-05 13:45:39', '2021-06-05 13:45:39'),
(80, 'Salon-2', 40, 1, 99, '2021-06-05 13:45:50', '2021-06-05 13:45:50'),
(81, 'Salon-1', 41, 1, 99, '2021-06-05 13:46:06', '2021-06-05 13:46:06'),
(82, 'Salon-2', 41, 1, 99, '2021-06-05 13:46:22', '2021-06-05 13:46:22'),
(83, 'Salon-1', 42, 1, 99, '2021-06-05 13:47:14', '2021-06-05 13:47:14'),
(84, 'Salon-2', 42, 1, 99, '2021-06-05 13:47:24', '2021-06-05 13:47:24'),
(85, 'Salon-1', 43, 1, 99, '2021-06-05 13:47:37', '2021-06-05 13:47:37'),
(86, 'Salon-2', 43, 1, 99, '2021-06-05 13:47:59', '2021-06-05 13:47:59'),
(87, 'Salon-1', 44, 1, 99, '2021-06-05 13:48:12', '2021-06-05 13:48:12'),
(88, 'Salon-2', 44, 1, 99, '2021-06-05 13:48:25', '2021-06-05 13:48:25'),
(89, 'Salon-1', 45, 1, 99, '2021-06-05 13:48:41', '2021-06-05 13:48:41'),
(90, 'Salon-2', 45, 1, 99, '2021-06-05 13:48:52', '2021-06-05 13:48:52'),
(91, 'Salon-1', 46, 1, 99, '2021-06-05 13:49:26', '2021-06-05 13:49:26'),
(92, 'Salon-2', 46, 1, 99, '2021-06-05 13:50:34', '2021-06-05 13:50:34'),
(93, 'Salon-1', 47, 1, 99, '2021-06-05 13:51:23', '2021-06-05 13:51:23'),
(94, 'Salon-2', 47, 1, 99, '2021-06-05 13:51:33', '2021-06-05 13:51:33'),
(95, 'Salon-1', 48, 1, 99, '2021-06-05 13:51:51', '2021-06-05 13:51:51'),
(96, 'Salon-2', 48, 1, 99, '2021-06-05 13:52:06', '2021-06-05 13:52:06'),
(97, 'Salon-1', 49, 1, 99, '2021-06-05 13:52:19', '2021-06-05 13:52:19'),
(98, 'Salon-2', 49, 1, 99, '2021-06-05 13:52:31', '2021-06-05 13:52:31'),
(99, 'Salon-1', 50, 1, 99, '2021-06-05 13:52:50', '2021-06-05 13:52:50'),
(100, 'Salon-2', 50, 1, 99, '2021-06-05 13:52:59', '2021-06-05 13:52:59'),
(101, 'Salon-1', 51, 1, 99, '2021-06-05 14:00:47', '2021-06-05 14:00:47'),
(102, 'Salon-2', 51, 1, 99, '2021-06-05 14:00:57', '2021-06-05 14:01:09'),
(103, 'Salon-1', 52, 1, 99, '2021-06-05 14:01:21', '2021-06-05 14:01:21'),
(104, 'Salon-2', 52, 1, 99, '2021-06-05 14:01:37', '2021-06-05 14:01:37'),
(105, 'Salon-1', 53, 1, 99, '2021-06-05 14:02:08', '2021-06-05 14:02:08'),
(106, 'Salon-2', 53, 1, 99, '2021-06-05 14:02:21', '2021-06-05 14:02:21'),
(107, 'Salon-1', 54, 1, 99, '2021-06-05 14:02:51', '2021-06-05 14:02:51'),
(108, 'Salon-2', 54, 1, 99, '2021-06-05 14:03:01', '2021-06-05 14:03:01'),
(109, 'Salon-1', 55, 1, 99, '2021-06-05 14:03:11', '2021-06-05 14:03:11'),
(110, 'Salon-2', 55, 1, 99, '2021-06-05 14:03:22', '2021-06-05 14:03:22'),
(111, 'Salon-1', 56, 1, 99, '2021-06-05 14:03:36', '2021-06-05 14:03:36'),
(112, 'Salon-2', 56, 1, 99, '2021-06-05 14:03:47', '2021-06-05 14:03:47'),
(113, 'Salon-1', 57, 1, 99, '2021-06-05 14:03:56', '2021-06-05 14:03:56'),
(114, 'Salon-2', 57, 1, 99, '2021-06-05 14:04:06', '2021-06-05 14:04:06'),
(115, 'Salon-1', 58, 1, 99, '2021-06-05 14:04:17', '2021-06-05 14:04:17'),
(116, 'Salon-2', 58, 1, 99, '2021-06-05 14:04:27', '2021-06-05 14:04:27'),
(117, 'Salon-1', 59, 1, 99, '2021-06-05 14:04:36', '2021-06-05 14:04:36'),
(118, 'Salon-2', 59, 1, 99, '2021-06-05 14:04:52', '2021-06-05 14:04:52'),
(119, 'Salon-1', 60, 1, 99, '2021-06-05 14:05:04', '2021-06-05 14:05:04'),
(120, 'Salon-2', 60, 1, 99, '2021-06-05 14:05:13', '2021-06-05 14:05:13'),
(121, 'Salon-1', 61, 1, 99, '2021-06-05 14:05:21', '2021-06-05 14:05:21'),
(122, 'Salon-2', 61, 1, 99, '2021-06-05 14:05:30', '2021-06-05 14:05:30'),
(123, 'Salon-1', 62, 1, 99, '2021-06-05 14:05:40', '2021-06-05 14:05:40'),
(124, 'Salon-2', 62, 1, 99, '2021-06-05 14:05:48', '2021-06-05 14:05:48'),
(125, 'Salon-1', 63, 1, 99, '2021-06-05 14:05:58', '2021-06-05 14:05:58'),
(126, 'Salon-2', 63, 1, 99, '2021-06-05 14:06:07', '2021-06-05 14:06:07'),
(127, 'Salon-1', 64, 1, 99, '2021-06-05 14:06:38', '2021-06-05 14:06:38'),
(128, 'Salon-2', 64, 1, 99, '2021-06-05 14:06:46', '2021-06-05 14:06:46'),
(129, 'Salon-1', 65, 1, 99, '2021-06-05 14:06:56', '2021-06-05 14:06:56'),
(130, 'Salon-2', 65, 1, 99, '2021-06-05 14:07:12', '2021-06-05 14:07:12'),
(131, 'Salon-1', 66, 1, 99, '2021-06-05 14:07:53', '2021-06-05 14:07:53'),
(132, 'Salon-2', 66, 1, 99, '2021-06-05 14:08:12', '2021-06-05 14:08:12'),
(133, 'Salon-1', 67, 1, 99, '2021-06-05 14:08:25', '2021-06-05 14:08:25'),
(134, 'Salon-2', 67, 1, 99, '2021-06-05 14:08:34', '2021-06-05 14:08:34'),
(135, 'Salon-1', 68, 1, 99, '2021-06-05 14:08:45', '2021-06-05 14:08:45'),
(136, 'Salon-2', 68, 1, 99, '2021-06-05 14:08:58', '2021-06-05 14:08:58'),
(137, 'Salon-1', 69, 1, 99, '2021-06-05 14:09:10', '2021-06-05 14:09:10'),
(138, 'Salon-2', 69, 1, 99, '2021-06-05 14:09:22', '2021-06-05 14:09:22'),
(139, 'Salon-1', 70, 1, 99, '2021-06-05 14:09:31', '2021-06-05 14:09:31'),
(140, 'Salon-2', 70, 1, 99, '2021-06-05 14:09:43', '2021-06-05 14:09:43'),
(141, 'Salon-1', 71, 1, 99, '2021-06-05 14:09:53', '2021-06-05 14:11:00'),
(142, 'Salon-2', 71, 1, 99, '2021-06-05 14:10:05', '2021-06-05 14:11:06'),
(143, 'Salon-1', 72, 1, 99, '2021-06-05 14:11:20', '2021-06-05 14:11:20'),
(144, 'Salon-2', 72, 1, 99, '2021-06-05 14:11:29', '2021-06-05 14:11:29'),
(145, 'Salon-1', 73, 1, 99, '2021-06-05 14:11:42', '2021-06-05 14:11:42'),
(146, 'Salon-2', 73, 1, 99, '2021-06-05 14:11:50', '2021-06-05 14:11:50'),
(147, 'Salon-1', 74, 1, 99, '2021-06-05 14:12:00', '2021-06-05 14:12:00'),
(148, 'Salon-2', 74, 1, 99, '2021-06-05 14:12:11', '2021-06-05 14:12:11'),
(149, 'Salon-1', 75, 1, 99, '2021-06-05 14:12:20', '2021-06-05 14:12:24'),
(150, 'Salon-2', 75, 1, 99, '2021-06-05 14:12:32', '2021-06-05 14:12:49'),
(151, 'Salon-1', 76, 1, 99, '2021-06-05 14:13:02', '2021-06-05 14:13:02'),
(152, 'Salon-2', 76, 1, 99, '2021-06-05 14:13:18', '2021-06-05 14:13:25'),
(153, 'Salon-1', 77, 1, 99, '2021-06-05 14:13:39', '2021-06-05 14:13:39'),
(154, 'Salon-2', 77, 1, 99, '2021-06-05 14:13:54', '2021-06-05 14:13:54'),
(155, 'Salon-1', 78, 1, 99, '2021-06-05 14:14:04', '2021-06-05 14:14:04'),
(156, 'Salon-2', 78, 1, 99, '2021-06-05 14:14:16', '2021-06-05 14:14:16'),
(157, 'Salon-1', 79, 1, 99, '2021-06-05 14:14:25', '2021-06-05 14:14:25'),
(158, 'Salon-2', 79, 1, 99, '2021-06-05 14:14:57', '2021-06-05 14:14:57'),
(159, 'Salon-1', 80, 1, 99, '2021-06-05 14:15:06', '2021-06-05 14:15:06'),
(160, 'Salon-2', 80, 1, 99, '2021-06-05 14:15:13', '2021-06-05 14:15:13'),
(161, 'Salon-1', 81, 1, 99, '2021-06-05 14:15:24', '2021-06-05 14:15:24'),
(162, 'Salon-2', 81, 1, 99, '2021-06-05 14:15:35', '2021-06-05 14:15:40'),
(163, 'Salon-1', 82, 1, 99, '2021-06-05 14:15:50', '2021-06-05 14:15:50'),
(164, 'Salon-2', 82, 1, 99, '2021-06-05 14:16:11', '2021-06-05 14:16:16'),
(165, 'Salon-1', 83, 1, 99, '2021-06-05 14:16:27', '2021-06-05 14:16:27'),
(166, 'Salon-2', 83, 1, 99, '2021-06-05 14:16:38', '2021-06-05 14:16:38'),
(167, 'Salon-1', 84, 1, 99, '2021-06-05 14:16:46', '2021-06-05 14:16:46'),
(168, 'Salon-2', 84, 1, 99, '2021-06-05 14:16:56', '2021-06-05 14:16:56'),
(169, 'Salon-1', 85, 1, 99, '2021-06-05 14:17:06', '2021-06-05 14:17:06'),
(170, 'Salon-2', 85, 1, 99, '2021-06-05 14:17:17', '2021-06-05 14:17:17'),
(171, 'Salon-1', 86, 1, 99, '2021-06-05 14:17:26', '2021-06-05 14:17:26'),
(172, 'Salon-2', 86, 1, 99, '2021-06-05 14:17:36', '2021-06-05 14:17:36'),
(173, 'Salon-1', 87, 1, 99, '2021-06-05 14:17:45', '2021-06-05 14:17:45'),
(174, 'Salon-2', 88, 1, 99, '2021-06-05 14:17:58', '2021-06-05 14:17:58'),
(175, 'Salon-1', 89, 1, 99, '2021-06-05 14:18:45', '2021-06-05 14:18:54'),
(176, 'Salon-2', 89, 1, 99, '2021-06-05 14:19:24', '2021-06-05 14:19:24'),
(177, 'Salon-1', 90, 1, 99, '2021-06-05 14:19:34', '2021-06-05 14:19:34'),
(178, 'Salon-2', 90, 1, 99, '2021-06-05 14:19:42', '2021-06-05 14:19:42'),
(179, 'Salon-1', 91, 1, 99, '2021-06-05 14:19:49', '2021-06-05 14:19:49'),
(180, 'Salon-2', 91, 1, 99, '2021-06-05 14:20:00', '2021-06-05 14:20:00'),
(181, 'Salon-1', 92, 1, 99, '2021-06-05 14:20:09', '2021-06-05 14:20:09'),
(182, 'Salon-2', 92, 1, 99, '2021-06-05 14:20:17', '2021-06-05 14:20:17'),
(183, 'Salon-1', 93, 1, 99, '2021-06-05 14:20:25', '2021-06-05 14:20:25'),
(184, 'Salon-2', 93, 1, 99, '2021-06-05 14:20:34', '2021-06-05 14:20:34'),
(185, 'Salon-1', 94, 1, 99, '2021-06-05 14:20:40', '2021-06-05 14:20:40'),
(186, 'Salon-2', 94, 1, 99, '2021-06-05 14:20:51', '2021-06-05 14:20:51'),
(187, 'Salon-1', 95, 1, 99, '2021-06-05 14:20:58', '2021-06-05 14:20:58'),
(188, 'Salon-2', 95, 1, 99, '2021-06-05 14:21:04', '2021-06-05 14:21:04'),
(189, 'Salon-1', 96, 1, 99, '2021-06-05 14:21:12', '2021-06-05 14:21:12'),
(190, 'Salon-2', 96, 1, 99, '2021-06-05 14:21:23', '2021-06-05 14:21:23'),
(191, 'Salon-1', 97, 1, 99, '2021-06-05 14:21:53', '2021-06-05 14:21:53'),
(192, 'Salon-2', 97, 1, 99, '2021-06-05 14:22:07', '2021-06-05 14:22:07'),
(193, 'Salon-1', 98, 1, 99, '2021-06-05 14:22:16', '2021-06-05 14:22:16'),
(194, 'Salon-2', 98, 1, 99, '2021-06-05 14:22:32', '2021-06-05 14:22:32'),
(195, 'Salon-1', 99, 1, 99, '2021-06-05 14:22:44', '2021-06-05 14:22:44'),
(196, 'Salon-2', 99, 1, 99, '2021-06-05 14:22:52', '2021-06-05 14:22:58'),
(197, 'Salon-1', 100, 1, 99, '2021-06-05 14:23:07', '2021-06-05 14:23:07'),
(198, 'Salon-2', 100, 1, 99, '2021-06-05 14:23:16', '2021-06-05 14:23:16'),
(199, 'Salon-1', 101, 1, 99, '2021-06-05 14:23:26', '2021-06-05 14:23:26'),
(200, 'Salon-2', 101, 1, 99, '2021-06-05 14:23:34', '2021-06-05 14:23:34'),
(201, 'Salon-1', 102, 1, 99, '2021-06-05 14:23:41', '2021-06-05 14:23:41'),
(202, 'Salon-2', 102, 1, 99, '2021-06-05 14:23:52', '2021-06-05 14:23:52'),
(203, 'Salon-1', 103, 1, 99, '2021-06-05 14:24:00', '2021-06-05 14:24:00'),
(204, 'Salon-2', 103, 1, 99, '2021-06-05 14:24:08', '2021-06-05 14:24:08'),
(205, 'Salon-1', 104, 1, 99, '2021-06-05 14:24:15', '2021-06-05 14:24:15'),
(206, 'Salon-2', 104, 1, 99, '2021-06-05 14:24:22', '2021-06-05 14:24:22'),
(207, 'Salon-1', 105, 1, 99, '2021-06-05 14:24:29', '2021-06-05 14:24:29'),
(208, 'Salon-2', 105, 1, 99, '2021-06-05 14:24:35', '2021-06-05 14:24:35'),
(209, 'Salon-1', 106, 1, 99, '2021-06-05 14:24:43', '2021-06-05 14:24:43'),
(210, 'Salon-2', 106, 1, 99, '2021-06-05 14:24:52', '2021-06-05 14:24:52'),
(211, 'Salon-1', 107, 1, 99, '2021-06-05 14:25:32', '2021-06-05 14:25:32'),
(212, 'Salon-2', 107, 1, 99, '2021-06-05 14:25:39', '2021-06-05 14:25:39'),
(213, 'Salon-1', 108, 1, 99, '2021-06-05 14:25:48', '2021-06-05 14:25:48'),
(214, 'Salon-2', 108, 1, 99, '2021-06-05 14:26:03', '2021-06-05 14:26:03'),
(215, 'Salon-1', 109, 1, 99, '2021-06-05 14:26:12', '2021-06-05 14:26:12'),
(216, 'Salon-2', 109, 1, 99, '2021-06-05 14:26:21', '2021-06-05 14:26:21'),
(217, 'Salon-1', 110, 1, 99, '2021-06-05 14:26:29', '2021-06-05 14:26:29'),
(218, 'Salon-2', 110, 1, 99, '2021-06-05 14:27:10', '2021-06-05 14:27:10'),
(219, 'Salon-1', 111, 1, 99, '2021-06-05 14:27:17', '2021-06-05 14:27:17'),
(220, 'Salon-2', 111, 1, 99, '2021-06-05 14:27:26', '2021-06-05 14:27:26'),
(221, 'Salon-1', 112, 1, 99, '2021-06-05 14:27:36', '2021-06-05 14:27:36'),
(222, 'Salon-2', 112, 1, 99, '2021-06-05 14:27:42', '2021-06-05 14:27:46'),
(223, 'Salon-1', 113, 1, 99, '2021-06-05 14:27:54', '2021-06-05 14:27:54'),
(224, 'Salon-2', 113, 1, 99, '2021-06-05 14:28:02', '2021-06-05 14:28:02'),
(225, 'Salon-1', 114, 1, 99, '2021-06-05 14:28:08', '2021-06-05 14:28:08'),
(226, 'Salon-2', 114, 1, 99, '2021-06-05 14:28:15', '2021-06-05 14:28:15'),
(227, 'Salon-1', 115, 1, 99, '2021-06-05 14:28:25', '2021-06-05 14:28:25'),
(228, 'Salon-2', 115, 1, 99, '2021-06-05 14:28:54', '2021-06-05 14:28:54'),
(229, 'Salon-1', 116, 1, 99, '2021-06-05 14:29:02', '2021-06-05 14:29:02'),
(230, 'Salon-2', 116, 1, 99, '2021-06-05 14:29:10', '2021-06-05 14:29:10'),
(231, 'Salon-1', 117, 1, 99, '2021-06-05 14:29:18', '2021-06-05 14:29:18'),
(232, 'Salon-2', 117, 1, 99, '2021-06-05 14:29:25', '2021-06-05 14:29:25'),
(233, 'Salon-1', 118, 1, 99, '2021-06-05 14:29:33', '2021-06-05 14:29:33'),
(234, 'Salon-2', 118, 1, 99, '2021-06-05 14:29:42', '2021-06-05 14:29:42'),
(235, 'Salon-1', 119, 1, 99, '2021-06-05 14:29:51', '2021-06-05 14:29:51'),
(236, 'Salon-2', 119, 1, 99, '2021-06-05 14:30:01', '2021-06-05 14:30:01'),
(237, 'Salon-1', 120, 1, 99, '2021-06-05 14:30:09', '2021-06-05 14:30:09'),
(238, 'Salon-2', 120, 1, 99, '2021-06-05 14:30:16', '2021-06-05 14:30:16'),
(239, 'Salon-1', 121, 1, 99, '2021-06-05 14:30:23', '2021-06-05 14:30:23'),
(240, 'Salon-2', 121, 1, 99, '2021-06-05 14:30:31', '2021-06-05 14:30:31'),
(241, 'Salon-1', 122, 1, 99, '2021-06-05 14:30:38', '2021-06-05 14:30:38'),
(242, 'Salon-2', 122, 1, 99, '2021-06-05 14:30:46', '2021-06-05 14:30:56'),
(243, 'Salon-1', 123, 1, 99, '2021-06-05 14:31:09', '2021-06-05 14:31:09'),
(244, 'Salon-2', 123, 1, 99, '2021-06-05 14:31:16', '2021-06-05 14:31:16'),
(245, 'Salon-1', 124, 1, 99, '2021-06-05 14:31:23', '2021-06-05 14:31:23'),
(246, 'Salon-2', 124, 1, 99, '2021-06-05 14:31:34', '2021-06-05 14:31:34'),
(247, 'Salon-1', 125, 1, 99, '2021-06-05 14:31:42', '2021-06-05 14:31:48'),
(248, 'Salon-2', 125, 1, 99, '2021-06-05 14:32:04', '2021-06-05 14:32:04'),
(249, 'Salon-1', 126, 1, 99, '2021-06-05 14:32:18', '2021-06-05 14:32:18'),
(250, 'Salon-2', 126, 1, 99, '2021-06-05 14:32:31', '2021-06-05 14:32:31'),
(251, 'Salon-1', 127, 1, 99, '2021-06-05 14:32:41', '2021-06-05 14:32:41'),
(252, 'Salon-2', 127, 1, 99, '2021-06-05 14:32:57', '2021-06-05 14:32:57'),
(253, 'Salon-1', 128, 1, 99, '2021-06-05 14:33:15', '2021-06-05 14:33:15'),
(254, 'Salon-2', 128, 1, 99, '2021-06-05 14:33:21', '2021-06-05 14:33:21'),
(255, 'Salon-1', 129, 1, 99, '2021-06-05 14:33:28', '2021-06-05 14:33:28'),
(256, 'Salon-2', 129, 1, 99, '2021-06-05 14:33:34', '2021-06-05 14:33:34'),
(257, 'Salon-1', 130, 1, 99, '2021-06-05 14:33:42', '2021-06-05 14:33:42'),
(258, 'Salon-2', 130, 1, 99, '2021-06-05 14:33:49', '2021-06-05 14:33:49'),
(259, 'Salon-1', 131, 1, 99, '2021-06-05 14:33:58', '2021-06-05 14:33:58'),
(260, 'Salon-2', 131, 1, 99, '2021-06-05 14:34:07', '2021-06-05 14:34:07'),
(261, 'Salon-1', 132, 1, 99, '2021-06-05 14:34:15', '2021-06-05 14:34:15'),
(262, 'Salon-2', 132, 1, 99, '2021-06-05 14:34:31', '2021-06-05 14:34:31'),
(263, 'Salon-1', 133, 1, 99, '2021-06-05 14:34:45', '2021-06-05 14:34:45'),
(264, 'Salon-2', 133, 1, 99, '2021-06-05 14:34:51', '2021-06-05 14:34:51'),
(265, 'Salon-1', 134, 1, 99, '2021-06-05 14:34:58', '2021-06-05 14:34:58'),
(266, 'Salon-2', 134, 1, 99, '2021-06-05 14:35:06', '2021-06-05 14:35:06'),
(267, 'Salon-1', 135, 1, 99, '2021-06-05 14:35:16', '2021-06-05 14:35:16'),
(268, 'Salon-2', 135, 1, 99, '2021-06-05 14:35:23', '2021-06-05 14:35:23'),
(269, 'Salon-1', 136, 1, 99, '2021-06-05 14:35:33', '2021-06-05 14:35:33'),
(270, 'Salon-2', 136, 1, 99, '2021-06-05 14:35:53', '2021-06-05 14:35:53'),
(271, 'Salon-1', 137, 1, 99, '2021-06-05 14:42:04', '2021-06-05 14:42:04'),
(272, 'Salon-2', 137, 1, 99, '2021-06-05 14:42:12', '2021-06-05 14:42:12'),
(273, 'Salon-1', 138, 1, 99, '2021-06-05 14:42:21', '2021-06-05 14:42:21'),
(274, 'Salon-2', 138, 1, 99, '2021-06-05 14:42:29', '2021-06-05 14:42:29'),
(275, 'Salon-1', 139, 1, 99, '2021-06-05 14:42:37', '2021-06-05 14:42:37'),
(276, 'Salon-2', 139, 1, 99, '2021-06-05 14:42:47', '2021-06-05 14:42:47'),
(277, 'Salon-1', 140, 1, 99, '2021-06-05 14:43:04', '2021-06-05 14:43:04'),
(278, 'Salon-2', 140, 1, 99, '2021-06-05 14:43:12', '2021-06-05 14:43:12'),
(279, 'Salon-1', 141, 1, 99, '2021-06-05 14:44:51', '2021-06-05 14:44:51'),
(280, 'Salon-2', 141, 1, 99, '2021-06-05 14:44:59', '2021-06-05 14:44:59'),
(281, 'Salon-1', 142, 1, 99, '2021-06-05 14:45:10', '2021-06-05 14:45:10'),
(282, 'Salon-2', 142, 1, 99, '2021-06-05 14:45:19', '2021-06-05 14:45:19'),
(283, 'Salon-1', 143, 1, 99, '2021-06-05 14:45:38', '2021-06-05 14:45:38'),
(284, 'Salon-2', 143, 1, 99, '2021-06-05 14:45:47', '2021-06-05 14:45:47'),
(285, 'Salon-1', 144, 1, 99, '2021-06-05 14:45:56', '2021-06-05 14:45:56'),
(286, 'Salon-2', 144, 1, 99, '2021-06-05 14:46:15', '2021-06-05 14:46:15'),
(287, 'Salon-1', 145, 1, 99, '2021-06-05 14:46:24', '2021-06-05 14:46:24'),
(288, 'Salon-2', 145, 1, 99, '2021-06-05 14:46:30', '2021-06-05 14:46:30'),
(289, 'Salon-1', 146, 1, 99, '2021-06-05 14:46:38', '2021-06-05 14:46:38'),
(290, 'Salon-2', 146, 1, 99, '2021-06-05 14:46:46', '2021-06-05 14:46:46'),
(291, 'Salon-1', 147, 1, 99, '2021-06-05 14:46:55', '2021-06-05 14:46:55'),
(292, 'Salon-2', 147, 1, 99, '2021-06-05 14:47:05', '2021-06-05 14:47:05'),
(293, 'Salon-1', 148, 1, 99, '2021-06-05 14:47:14', '2021-06-05 14:47:14'),
(294, 'Salon-2', 148, 1, 99, '2021-06-05 14:47:21', '2021-06-05 14:47:21'),
(295, 'Salon-1', 149, 1, 99, '2021-06-05 14:47:34', '2021-06-05 14:47:34'),
(296, 'Salon-2', 149, 1, 99, '2021-06-05 14:47:41', '2021-06-05 14:47:41'),
(297, 'Salon-1', 150, 1, 99, '2021-06-05 14:47:48', '2021-06-05 14:47:48'),
(298, 'Salon-2', 150, 1, 99, '2021-06-05 14:47:56', '2021-06-05 14:47:56'),
(299, 'Salon-1', 151, 1, 99, '2021-06-05 14:48:06', '2021-06-05 14:48:06'),
(300, 'Salon-2', 151, 1, 99, '2021-06-05 14:48:41', '2021-06-05 14:48:41'),
(301, 'Salon-1', 152, 1, 99, '2021-06-05 14:48:49', '2021-06-05 14:48:49'),
(302, 'Salon-2', 152, 1, 99, '2021-06-05 14:48:56', '2021-06-05 14:48:56'),
(303, 'Salon-1', 153, 1, 99, '2021-06-05 14:49:04', '2021-06-05 14:49:04'),
(304, 'Salon-2', 153, 1, 99, '2021-06-05 14:49:12', '2021-06-05 14:49:12'),
(305, 'Salon-1', 155, 1, 99, '2021-06-05 14:49:24', '2021-06-05 14:49:24'),
(306, 'Salon-2', 155, 1, 99, '2021-06-05 14:49:33', '2021-06-05 14:49:33'),
(307, 'Salon-1', 156, 1, 99, '2021-06-05 14:49:43', '2021-06-05 14:49:43'),
(308, 'Salon-2', 156, 1, 99, '2021-06-05 14:49:50', '2021-06-05 14:49:50'),
(309, 'Salon-1', 157, 1, 99, '2021-06-05 14:49:59', '2021-06-05 14:49:59'),
(310, 'Salon-2', 157, 1, 99, '2021-06-05 14:50:06', '2021-06-05 14:50:14'),
(311, 'Salon-1', 158, 1, 99, '2021-06-05 14:50:23', '2021-06-05 14:50:23'),
(312, 'Salon-2', 158, 1, 99, '2021-06-05 14:50:30', '2021-06-05 14:50:30'),
(313, 'Salon-1', 159, 1, 99, '2021-06-05 14:50:38', '2021-06-05 14:50:38'),
(314, 'Salon-2', 159, 1, 99, '2021-06-05 14:50:45', '2021-06-05 14:50:45'),
(315, 'Salon-1', 160, 1, 99, '2021-06-05 14:50:52', '2021-06-05 14:50:52'),
(316, 'Salon-2', 160, 1, 99, '2021-06-05 14:50:59', '2021-06-05 14:50:59'),
(317, 'Salon-1', 161, 1, 99, '2021-06-05 14:51:06', '2021-06-05 14:51:06'),
(318, 'Salon-2', 161, 1, 99, '2021-06-05 14:51:13', '2021-06-05 14:51:13'),
(319, 'Salon-1', 162, 1, 99, '2021-06-05 14:51:23', '2021-06-05 14:51:23'),
(320, 'Salon-2', 162, 1, 99, '2021-06-05 14:51:31', '2021-06-05 14:51:31'),
(322, 'Salon-2', 87, 1, 99, '2021-06-05 15:18:39', '2021-06-05 15:18:39'),
(323, 'Salon-1', 88, 1, 99, '2021-06-05 15:19:20', '2021-06-05 15:19:20'),
(324, 'Salon-1', 154, 1, 99, '2021-06-05 15:20:00', '2021-06-05 15:20:00'),
(325, 'Salon-2', 154, 1, 99, '2021-06-05 15:20:12', '2021-06-05 15:20:12');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seanslar`
--

CREATE TABLE `seanslar` (
  `id` int(10) UNSIGNED NOT NULL,
  `adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `seanslar`
--

INSERT INTO `seanslar` (`id`, `adi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '11:00', '2021-05-30 09:39:45', '2021-06-05 15:28:47', NULL),
(2, '12:00', '2021-05-30 09:39:49', '2021-06-05 15:28:54', NULL),
(3, '13:00', '2021-05-30 10:46:16', '2021-06-05 15:29:02', NULL),
(4, '14:00', '2021-05-30 10:46:30', '2021-06-05 15:29:10', NULL),
(5, '15:00', '2021-06-05 15:29:22', '2021-06-05 15:29:22', NULL),
(6, '16:00', '2021-06-05 15:29:29', '2021-06-05 15:29:29', NULL),
(7, '17:00', '2021-06-05 15:29:35', '2021-06-05 15:29:35', NULL),
(8, '18:00', '2021-06-05 15:29:40', '2021-06-05 15:29:40', NULL),
(9, '19:00', '2021-06-05 15:29:46', '2021-06-05 15:29:46', NULL),
(10, '20:00', '2021-06-05 15:29:51', '2021-06-05 15:29:51', NULL),
(11, '21:00', '2021-06-05 15:29:56', '2021-06-05 15:29:56', NULL),
(12, '22:00', '2021-06-05 15:30:00', '2021-06-05 15:30:00', NULL),
(13, '23:00', '2021-06-05 15:30:07', '2021-06-05 15:30:07', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `resim_yolu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif_mi` tinyint(4) NOT NULL,
  `sira` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`id`, `film_id`, `resim_yolu`, `aktif_mi`, `sira`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, '/uploads/slider-foto4604.jpeg', 1, 2, '2021-05-30 20:32:05', '2021-05-30 20:43:16', NULL),
(2, 7, '/uploads/slider-foto4900.png', 1, 3, '2021-05-30 20:49:45', '2021-06-05 20:18:52', NULL),
(3, 9, '/uploads/slider-foto7719.jpg', 1, 1, '2021-06-05 20:14:20', '2021-06-05 20:14:20', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `rutbe` enum('admin','kullanici') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kullanici_adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cinsiyet` enum('erkek','kadin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'erkek',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dogum_tarihi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `rutbe`, `ad`, `soyad`, `kullanici_adi`, `email`, `cinsiyet`, `password`, `dogum_tarihi`, `tel_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Baki', 'Can', 'bakican', 'baki@cansinema.com', 'erkek', '$2y$10$jU6yNlvbhLwibWB5CMBuruCj7mgMkyTsnEsf5/sJWaJ5rMhvCv.Ku', '19.11.1994', '05347299470', NULL, '2021-06-05 20:04:40', NULL),
(2, 'kullanici', 'Ad4', 'kullanıcı', 'testkull', 'test@kullanici.com', 'erkek', '$2y$10$QwDw5/mGFS4MJ8BIhhT0fuPOQs8FKcYevkX1YlIujUsMMltyrjpx.', NULL, '05551234455', '2021-05-28 13:45:28', '2021-06-05 11:08:27', '2021-06-05 11:08:27'),
(3, 'admin', 'Baki2', 'Can2', 'bakican2', 'bakican2@sinema.com', 'erkek', '$2y$10$L2VY.QbneFn61v0sC1wJk.nLsEZLevf9FLILjecMBlbTs.uNe6cFO', '01-01-1990', '05541123344', '2021-05-30 13:20:11', '2021-06-05 11:06:36', '2021-06-05 11:06:36'),
(4, 'kullanici', 'burak', 'saraç', 'burak12', 'burak@gmail.com', 'erkek', '$2y$10$/g/x2FQyLwJrxk1LPvswleOnMCzHsdNdH3qifxckx0L6OliQp28C2', NULL, '05347299470', '2021-06-03 19:44:08', '2021-06-03 19:44:08', NULL),
(5, 'kullanici', 'necati', 'karakaya', 'necati12', 'necatikarakaya@gmail.com', 'erkek', '$2y$10$FkPcyZn1xBVljeLuXKLzWuVwG.bbDz/gLWNbx72nZzDRlsT9kPWCa', NULL, '05362044421', '2021-06-10 00:11:40', '2021-06-10 00:11:40', NULL),
(6, 'kullanici', 'semih', 'büyükçolak', 'semih12', 'semihcolak@gmail.com', 'erkek', '$2y$10$FLCXS4/sCR/4jiTBHvTY6ek7eKbvBqSTWTBwRazwu2hXCVkiwdug.', NULL, '05348965241', '2021-06-13 13:37:12', '2021-06-13 13:37:12', NULL),
(7, 'kullanici', 'test', 'testt', 'testtt', 'test@test.com', 'erkek', '$2y$10$jjsfszjVsPYb3B4J6hInzet7JylmWw0QNNo8LRMEW3gIkSit0515C', '01.02.2023', '05551234455', '2021-06-17 20:01:13', '2021-06-17 20:01:13', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `avmler`
--
ALTER TABLE `avmler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avmler_il_id_index` (`il_id`);

--
-- Tablo için indeksler `filmler`
--
ALTER TABLE `filmler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filmler_kategori_id_foreign` (`kategori_id`),
  ADD KEY `filmler_format_id_foreign` (`format_id`),
  ADD KEY `filmler_dil_id_foreign` (`dil_id`);

--
-- Tablo için indeksler `film_dilleri`
--
ALTER TABLE `film_dilleri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `film_formatlari`
--
ALTER TABLE `film_formatlari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `film_puanlari`
--
ALTER TABLE `film_puanlari`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_puanlari_film_id_foreign` (`film_id`),
  ADD KEY `film_puanlari_kullanici_id_foreign` (`kullanici_id`);

--
-- Tablo için indeksler `film_resimleri`
--
ALTER TABLE `film_resimleri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_resimleri_film_id_foreign` (`film_id`);

--
-- Tablo için indeksler `film_rezervasyonlari`
--
ALTER TABLE `film_rezervasyonlari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `film_seanslari`
--
ALTER TABLE `film_seanslari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `film_yorumlari`
--
ALTER TABLE `film_yorumlari`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_yorumlari_film_id_foreign` (`film_id`),
  ADD KEY `film_yorumlari_kullanici_id_foreign` (`kullanici_id`);

--
-- Tablo için indeksler `iller`
--
ALTER TABLE `iller`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `salonlar`
--
ALTER TABLE `salonlar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salonlar_avm_id_foreign` (`avm_id`);

--
-- Tablo için indeksler `seanslar`
--
ALTER TABLE `seanslar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_film_id_foreign` (`film_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `avmler`
--
ALTER TABLE `avmler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- Tablo için AUTO_INCREMENT değeri `filmler`
--
ALTER TABLE `filmler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `film_dilleri`
--
ALTER TABLE `film_dilleri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `film_formatlari`
--
ALTER TABLE `film_formatlari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `film_puanlari`
--
ALTER TABLE `film_puanlari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `film_resimleri`
--
ALTER TABLE `film_resimleri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `film_rezervasyonlari`
--
ALTER TABLE `film_rezervasyonlari`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1906;

--
-- Tablo için AUTO_INCREMENT değeri `film_seanslari`
--
ALTER TABLE `film_seanslari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Tablo için AUTO_INCREMENT değeri `film_yorumlari`
--
ALTER TABLE `film_yorumlari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `iller`
--
ALTER TABLE `iller`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `salonlar`
--
ALTER TABLE `salonlar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- Tablo için AUTO_INCREMENT değeri `seanslar`
--
ALTER TABLE `seanslar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `avmler`
--
ALTER TABLE `avmler`
  ADD CONSTRAINT `avmler_il_id_foreign` FOREIGN KEY (`il_id`) REFERENCES `iller` (`id`);

--
-- Tablo kısıtlamaları `filmler`
--
ALTER TABLE `filmler`
  ADD CONSTRAINT `filmler_dil_id_foreign` FOREIGN KEY (`dil_id`) REFERENCES `film_dilleri` (`id`),
  ADD CONSTRAINT `filmler_format_id_foreign` FOREIGN KEY (`format_id`) REFERENCES `film_formatlari` (`id`),
  ADD CONSTRAINT `filmler_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoriler` (`id`);

--
-- Tablo kısıtlamaları `film_puanlari`
--
ALTER TABLE `film_puanlari`
  ADD CONSTRAINT `film_puanlari_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`id`),
  ADD CONSTRAINT `film_puanlari_kullanici_id_foreign` FOREIGN KEY (`kullanici_id`) REFERENCES `users` (`id`);

--
-- Tablo kısıtlamaları `film_resimleri`
--
ALTER TABLE `film_resimleri`
  ADD CONSTRAINT `film_resimleri_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`id`);

--
-- Tablo kısıtlamaları `film_yorumlari`
--
ALTER TABLE `film_yorumlari`
  ADD CONSTRAINT `film_yorumlari_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`id`),
  ADD CONSTRAINT `film_yorumlari_kullanici_id_foreign` FOREIGN KEY (`kullanici_id`) REFERENCES `users` (`id`);

--
-- Tablo kısıtlamaları `salonlar`
--
ALTER TABLE `salonlar`
  ADD CONSTRAINT `salonlar_avm_id_foreign` FOREIGN KEY (`avm_id`) REFERENCES `avmler` (`id`);

--
-- Tablo kısıtlamaları `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `slider_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
