-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 23 Oca 2023, 12:30:08
-- Sunucu sürümü: 8.0.31-cll-lve
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `tgatechs_academic`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `degrees`
--

CREATE TABLE `degrees` (
  `id` bigint UNSIGNED NOT NULL,
  `degreeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `degrees`
--

INSERT INTO `degrees` (`id`, `degreeName`, `created_at`, `updated_at`) VALUES
(1, 'Lisans', NULL, NULL),
(2, 'On Lisans', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint UNSIGNED NOT NULL,
  `lesson_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `AKTS` int NOT NULL,
  `lesson_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TUL` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_name_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `lessons`
--

INSERT INTO `lessons` (`id`, `lesson_name`, `lesson_id`, `AKTS`, `lesson_type`, `TUL`, `program_name_id`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Veri Yapıları', 'TBP1003', 2, 'Z', '2/0/0', '1', '1/4', NULL, NULL),
(2, 'Web Tasarımının Temelleri', 'TBP1004', 3, 'Z', '2/0/0', '1', '1/4', NULL, NULL),
(3, 'Fizik I', 'TBP1907', 4, 'Z', '2/0/0', '1', '1/4', NULL, NULL),
(4, 'Bilgisayara Giriş I', 'BİL1001', 4, 'Z', '4/0/0', '1', '1/4', NULL, NULL),
(5, 'Temel Matematik I', 'MBT4001', 5, 'Z', '2/0/2', '1', '1/4', NULL, NULL),
(6, 'Algoritma ve Programlama Temelleri', 'TBP1001', 3, 'Z', '2/0/2', '1', '1/4', NULL, NULL),
(7, 'Veri Tabanı ve Yönetimi', 'TBP1002', 2, 'Z', '2/0/0', '1', '1/4', NULL, NULL),
(8, 'Atatürk İlkeleri ve İnkılap Tarihi I', 'ATA1001', 2, 'Z', '2/0/0', '1', '1/4', NULL, NULL),
(9, 'Türkçe I', 'TR1001', 2, 'Z', '2/0/0', '1', '1/4', NULL, NULL),
(10, 'Nesne Tabanlı Programlama', 'TBP2001', 3, 'Z', '2/1/0', '1', '2/4', NULL, NULL),
(11, 'Veri Tabanı Programlama', 'TBP2002', 2, 'Z', '2/0/0', '1', '2/4', NULL, NULL),
(12, 'Fizik II', 'TBP2907', 4, 'Z', '2/2/0', '1', '2/4', NULL, NULL),
(13, 'Temel Matematik II', 'MBT4002', 5, 'Z', '2/2/0', '1', '2/4', NULL, NULL),
(14, 'Bilgisayara Giriş II', 'BİL2001', 4, 'Z', '4/0/0', '1', '2/4', NULL, NULL),
(15, 'Atatürk İlkeleri ve İnkılap Tarihi II', 'ATA2001', 2, 'Z', '2/0/0', '1', '2/4', NULL, NULL),
(16, 'Türkçe II', 'TR2001', 2, 'Z', '2/0/0', '1', '2/4', NULL, NULL),
(17, 'İstatistik ve Olasılık', 'TBP3916', 3, 'Z', '2/1/0', '1', '3/4', NULL, NULL),
(18, 'Mesleki Yabancı Dil I', 'TBP3919', 4, 'Z', '2/2/0', '1', '3/4', NULL, NULL),
(19, 'İnternet Programcılığı', 'TBP3002', 3, 'Z', '2/1/0', '1', '3/4', NULL, NULL),
(20, 'Görsel Programlama', 'TBP3001', 3, 'Z', '2/1/0', '1', '3/4', NULL, NULL),
(21, 'Mesleki Yabancı Dil II', 'TBP4919', 4, 'Z', '2/2/0', '1', '4/4', NULL, NULL),
(22, 'Mobil Programlama', 'TBP4001', 3, 'Z', '2/1/0', '1', '4/4', NULL, NULL),
(23, 'Açık Kaynak İşletim Sistemi', 'TBP4002', 3, 'Z', '2/1/0', '1', '4/4', NULL, NULL),
(24, 'Bitirme Projesi', 'TBP4903', 4, 'Z', '2/2/0', '1', '4/4', NULL, NULL),
(25, 'İşyeri Uygulamaları', 'TBP4918', 8, 'Z', '0/8/0', '1', '4/4', NULL, NULL),
(26, 'Atatürk İlkeleri ve İnkılap Tarihi I', 'ATA1001', 2, 'Z', '2/0/0', '2', '1/4', NULL, NULL),
(27, 'Yabancı Dil I', 'YDI1001', 3, 'Z', '3/0/0', '2', '1/4', NULL, NULL),
(28, 'Türkçe I', 'TR1001', 2, 'Z', '2/0/0', '2', '1/4', NULL, NULL),
(29, 'Temel Sanat Eğitimi I', 'MGT1930', 4, 'Z', '2/2/0', '2', '1/4', NULL, NULL),
(30, 'Grafik Tasarım I', 'MGT1001', 4, 'Z', '2/2/0', '2', '1/4', NULL, NULL),
(31, 'Yazı ve Tipografi I', 'MGT1002', 4, 'Z', '2/2/0', '2', '1/4', NULL, NULL),
(32, 'Özgün Baskı I', 'MGT1003', 3, 'Z', '2/1/0', '2', '1/4', NULL, NULL),
(33, 'Fotoğrafçılık I', 'MGT1004', 4, 'Z', '2/2/0', '2', '1/4', NULL, NULL),
(34, 'Sanat Tarihi I', 'MGT1005', 2, 'Z', '2/0/0', '2', '1/4', NULL, NULL),
(35, 'Atatürk İlkeleri ve İnkılap Tarihi I', 'ATA1001', 2, 'Z', '2/0/0', '2', '1/4', NULL, NULL),
(36, 'Türkçe I', 'TR1001', 2, 'Z', '2/0/0', '2', '1/4', NULL, NULL),
(37, 'Atatürk İlkeleri ve İnkılap Tarihi II', 'ATA2001', 2, 'Z', '2/0/0', '2', '2/4', NULL, NULL),
(38, 'Yabancı Dil II', 'YDI2001', 3, 'Z', '3/0/0', '2', '2/4', NULL, NULL),
(39, 'Türkçe II', 'TR2001', 2, 'Z', '2/0/0', '2', '2/4', NULL, NULL),
(40, 'Temel Sanat Eğitimi II', 'MGT2930', 4, 'Z', '2/2/0', '2', '2/4', NULL, NULL),
(41, 'Özgün Baskı II', 'MGT2004', 3, 'Z', '2/1/0', '2', '2/4', NULL, NULL),
(42, 'Grafik Tasarım II', 'MGT2002', 4, 'Z', '2/2/0', '2', '2/4', NULL, NULL),
(43, 'Yazı ve Tipografi II', 'MGT2003', 4, 'Z', '2/2/0', '2', '2/4', NULL, NULL),
(44, 'İş Yeri Uygulaması', 'MGT2918', 6, 'Z', '0/3/0', '2', '2/4', NULL, NULL),
(45, 'Atatürk İlkeleri ve İnkılap Tarihi II', 'ATA2001', 2, 'Z', '2/0/0', '2', '2/4', NULL, NULL),
(46, 'Türkçe II', 'TR2001', 2, 'Z', '2/0/0', '2', '2/4', NULL, NULL),
(47, 'Yayın Grafiği I', 'MGT3004', 4, 'Z', '2/2/0', '2', '3/4', NULL, NULL),
(48, 'Grafik Animasyon', 'MGT3002', 4, 'Z', '2/2/0', '2', '3/4', NULL, NULL),
(49, 'Reklam Grafiği I', 'MGT3001', 4, 'Z', '2/2/0', '2', '3/4', NULL, NULL),
(50, 'Semiyotik Tasarım I', 'MGT3003', 3, 'Z', '1/2/0', '2', '3/4', NULL, NULL),
(51, 'Reklam Grafiği II', 'YGT4111', 5, 'Z', '2/3/0', '2', '4/4', NULL, NULL),
(52, 'Yayın Grafiği II', 'YGT4112', 5, 'Z', '2/3/0', '2', '4/4', NULL, NULL),
(53, 'İş Yeri Uygulaması', 'IMY4003', 6, 'Z', '0/3/0', '2', '4/4', NULL, NULL),
(65, 'Temel Hukuk Bilgisi I', 'AMY1001', 3, 'Z', '2/0/0', '3', '1/4', NULL, NULL),
(66, 'Anayasa Hukuku Bilgisi', 'AMY1002', 3, 'Z', '2/0/0', '3', '1/4', NULL, NULL),
(67, 'Medeni Hukuk Bilgisi I', 'AMY1003', 3, 'Z', '2/0/0', '3', '1/4', NULL, NULL),
(68, 'Ceza Hukuku Bilgisi I', 'AMY1004', 3, 'Z', '2/0/0', '3', '1/4', NULL, NULL),
(69, 'Klavye Kullanımı I', 'AMY1005', 5, 'Z', '0/4/0', '3', '1/4', NULL, NULL),
(70, 'Atatürk İlkeleri ve İnkılap Tarihi I', 'ATA1001', 2, 'Z', '2/0/0', '3', '1/4', NULL, NULL),
(71, 'Temel Hukuk Bilgisi II', 'AMY2001', 3, 'Z', '2/0/0', '3', '2/4', NULL, NULL),
(72, 'Medeni Hukuk Bilgisi II', 'AMY2002', 3, 'Z', '2/0/0', '3', '2/4', NULL, NULL),
(73, 'Ceza Hukuku Bilgisi II', 'AMY2003', 3, 'Z', '2/0/0', '3', '2/4', NULL, NULL),
(74, 'Klavye Kullanımı II', 'AMY2005', 5, 'Z', '0/4/0', '3', '2/4', NULL, NULL),
(75, 'Atatürk İlkeleri ve İnkılap Tarihi II', 'ATA2001', 2, 'Z', '2/0/0', '3', '2/4', NULL, NULL),
(76, 'Türkçe II', 'TR2001', 2, 'Z', '2/0/0', '3', '2/4', NULL, NULL),
(77, 'Medeni Usul Hukuku Bilgisi I', 'AMY3001', 3, 'Z', '2/0/0', '3', '3/4', NULL, NULL),
(78, 'Medeni Hukuk Bilgisi III', 'AMY3002', 3, 'Z', '2/0/0', '3', '3/4', NULL, NULL),
(79, 'Ceza Usul Hukuku Bilgisi I', 'AMY3003', 3, 'Z', '2/0/0', '3', '3/4', NULL, NULL),
(80, 'İcra ve İflas Hukuku Bilgisi l', 'AMY3004', 3, 'Z', '2/0/0', '3', '3/4', NULL, NULL),
(81, 'Klavye Kullanımı lll', 'AMY3005', 4, 'Z', '0/3/0', '3', '3/4', NULL, NULL),
(82, 'İdare ve İdari Yargılama Hukuku Bilgisi I', 'AMY3006', 2, 'Z', '2/0/0', '3', '3/4', NULL, NULL),
(83, 'Hukuk Dili ve Adli Yazışma l', 'AMY3007', 3, 'Z', '2/0/0', '3', '3/4', NULL, NULL),
(84, 'Medeni Usul Hukuku Bilgisi II', 'AMY4001', 3, 'Z', '2/0/0', '3', '4/4', NULL, NULL),
(85, 'Medeni Hukuk Bilgisi IV', 'AMY4002', 3, 'Z', '2/0/0', '3', '4/4', NULL, NULL),
(86, 'Ceza Usul Hukuku Bilgisi II', 'AMY4003', 3, 'Z', '2/0/0', '3', '4/4', NULL, NULL),
(87, 'İcra ve İflas Hukuku Bilgisi II', 'AMY4004', 3, 'Z', '2/0/0', '3', '4/4', NULL, NULL),
(88, 'Klavye Kullanımı IV', 'AMY4005', 4, 'Z', '0/3/0', '3', '4/4', NULL, NULL),
(89, 'İdare ve İdari Yargılama Hukuku Bilgisi II', 'AMY4006', 3, 'Z', '2/0/0', '3', '4/4', NULL, NULL),
(90, 'Hukuk Dili ve Adli Yazışma II', 'AMY 4007', 3, 'Z', '2/0/0', '3', '4/4', NULL, NULL),
(91, 'Bilgisayar Mühendisliği için Akademik İngilizce I', 'CSE1101', 3, 'Z', '3/0/0', '4', '1/8', NULL, NULL),
(92, 'Programlama I', 'CSE1001', 8, 'Z', '2/0/2', '4', '1/8', NULL, NULL),
(93, 'Bilgisayar Mühendisliğine Giriş', 'CSE1003', 5, 'Z', '2/0/2', '4', '1/8', NULL, NULL),
(94, 'Fizik I', 'PHY1001 -', 7, 'Z', '2/0/2', '4', '1/8', NULL, NULL),
(95, 'Matematik I', 'MCB1001 -', 7, 'Z', '4/0/0', '4', '1/8', NULL, NULL),
(96, 'Atatürk İlkeleri ve İnkılap Tarihi I', 'ATA1001', 2, 'Z', '2/0/0', '4', '1/8', NULL, NULL),
(97, 'Türkçe I', 'TR1001', 2, 'Z', '2/0/0', '4', '1/8', NULL, NULL),
(98, ' Akademik İngilizce II', 'CSE2102', 3, 'Z', '3/0/0', '4', '2/8', NULL, NULL),
(99, 'Programlama II', 'CSE2002', 8, 'Z', '2/0/2', '4', '2/8', NULL, NULL),
(100, 'Kimya', 'CSE2094', 5, 'Z', '2/0/2', '4', '2/8', NULL, NULL),
(101, 'Fizik II', 'PHY2001 -', 7, 'Z', '2/0/2', '4', '2/8', NULL, NULL),
(102, 'Matematik II', 'MCB1002 -', 7, 'Z', '4/0/0', '4', '2/8', NULL, NULL),
(103, 'Atatürk İlkeleri ve İnkılap Tarihi II', 'ATA2001', 2, 'Z', '2/0/0', '4', '2/8', NULL, NULL),
(104, 'Türkçe II', 'TR2001', 2, 'Z', '2/0/0', '4', '2/8', NULL, NULL),
(105, 'Sayısal Tasarım I', 'CSE3021', 6, 'Z', '2/0/2', '4', '3/8', NULL, NULL),
(106, 'Ayrık Yapılar', 'CSE3013', 9, 'Z', '2/0/2', '4', '3/8', NULL, NULL),
(107, 'Akademik Yazma I (İngilizce)', 'CSE3209', 3, 'Z', '2/0/0', '4', '3/8', NULL, NULL),
(108, 'Lineer Cebir', 'MCB1004 -', 6, 'Z', '4/0/0', '4', '3/8', NULL, NULL),
(109, 'Nesneye Dayalı Programlama', 'CSE3003', 8, 'Z', '2/0/2', '4', '3/8', NULL, NULL),
(110, 'Sistem Analizi ve İnsan Bilgisayar Etkileşimi Tasarımı', 'CSE4061', 5, 'Z', '2/2/0', '4', '4/8', NULL, NULL),
(111, 'Mikroişlemciler', 'CSE4024', 5, 'Z', '2/0/2', '4', '4/8', NULL, NULL),
(112, 'Veri Yapıları ve Algoritmalar I', 'CSE4014', 8, 'Z', '2/0/2', '4', '4/8', NULL, NULL),
(113, 'Bilgisayar Organizasyonu', 'CSE4023', 5, 'Z', '2/0/2', '4', '4/8', NULL, NULL),
(114, 'Bilgisayar Mühendisleri için Sinyaller ve Sistemler', 'CSE4050', 5, 'Z', '2/0/2', '4', '4/8', NULL, NULL),
(115, 'Olasılık Teorisi ve İstatistiğe Giriş', 'MCB1007 -', 6, 'Z', '4/0/0', '4', '5/8', NULL, NULL),
(116, 'Web Programlama', 'CSE5001', 6, 'Z', '2/0/2', '4', '5/8', NULL, NULL),
(117, 'Staj I', 'CSE5091', 2, 'Z', '0/0/0', '4', '5/8', NULL, NULL),
(118, 'İşletim Sistemleri', 'CSE5031', 5, 'Z', '2/0/2', '4', '5/8', NULL, NULL),
(119, 'Veritabanı Tasarımı ve Geliştirme', 'CSE5041', 6, 'Z', '2/0/2', '4', '5/8', NULL, NULL),
(120, 'Bilgisayar Ağları', 'CSE6032', 7, 'Z', '2/0/2', '4', '6/8', NULL, NULL),
(121, 'Yazılım Mühendisliği', 'CSE6064', 6, 'Z', '2/0/2', '4', '6/8', NULL, NULL),
(122, 'Nümerik Analiz', 'MCB1008', 6, 'Z', '2/2/0', '4', '6/8', NULL, NULL),
(123, 'Staj II', 'CSE7092', 2, 'Z', '0/0/0', '4', '7/8', NULL, NULL),
(124, 'Mühendislik Ekonomisi', 'CSE7093', 2, 'Z', '2/0/0', '4', '7/8', NULL, NULL),
(125, 'Sunum Teknikleri (İngilizce)', 'CSE7311', 2, 'Z', '2/0/0', '4', '7/8', NULL, NULL),
(126, 'Bitirme Projesi', 'CSE8090', 12, 'Z', '2/8/0', '4', '8/8', NULL, NULL),
(127, 'Matematik I', 'MCB1001', 7, 'Z', '4/0/0', '5', '1/8', NULL, NULL),
(128, 'Fizik I', 'PHY1001', 7, 'Z', '2/0/2', '5', '1/8', NULL, NULL),
(129, 'Mühendisler için Programlama', 'EE1021', 6, 'Z', '2/0/2', '5', '1/8', NULL, NULL),
(130, 'Lineer Cebir', 'MCB1004', 6, 'Z', '4/0/0', '5', '1/8', NULL, NULL),
(131, 'Elektrik-Elektronik Mühendisleri için Akademik İngilizce I', 'EE1011', 3, 'Z', '3/0/0', '5', '1/8', NULL, NULL),
(132, 'Atatürk İlkeleri ve İnkılap Tarihi I', 'ATA1001', 2, 'Z', '2/0/0', '5', '1/8', NULL, NULL),
(133, 'Türkçe I', 'TR1001', 2, 'Z', '2/0/0', '5', '1/8', NULL, NULL),
(134, 'Kimya', 'EE2021', 6, 'Z', '2/0/2', '5', '2/8', NULL, NULL),
(135, 'Matematik II', 'MCB1002', 7, 'Z', '4/0/0', '5', '2/8', NULL, NULL),
(136, 'Diferansiyel Denklemler', 'MCB1005', 6, 'Z', '4/0/0', '5', '2/8', NULL, NULL),
(137, 'Elektrik Devrelerine Giriş', 'EE2221', 6, 'Z', '2/2/0', '5', '2/8', NULL, NULL),
(138, 'Elektrik Devreleri Laboratuvarı', 'EE2202', 3, 'Z', '0/0/2', '5', '2/8', NULL, NULL),
(139, 'Elektrik-Elektronik Mühendisleri için Akademik İngilizce II', 'EE2011', 3, 'Z', '3/0/0', '5', '2/8', NULL, NULL),
(140, 'Atatürk İlkeleri ve İnkılap Tarihi II', 'ATA2001', 2, 'Z', '2/0/0', '5', '2/8', NULL, NULL),
(141, 'Türkçe II', 'TR2001', 2, 'Z', '2/0/0', '5', '2/8', NULL, NULL),
(142, 'Devre Analizi', 'EE3221', 6, 'Z', '2/2/0', '5', '3/8', NULL, NULL),
(143, 'Mantık Devreleri', 'EE3222', 6, 'Z', '2/2/0', '5', '3/8', NULL, NULL),
(144, 'Mantık Devreleri Laboratuvarı', 'EE3203', 3, 'Z', '0/0/2', '5', '3/8', NULL, NULL),
(145, 'Elektromanyetik Teorinin Temelleri', 'EE3301', 5, 'Z', '2/2/0', '5', '3/8', NULL, NULL),
(146, 'Sinyaller ve Sistemler', 'EE3421', 6, 'Z', '2/2/0', '5', '3/8', NULL, NULL),
(147, 'Sayısal Yöntemler', 'MCB1008', 6, 'Z', '4/0/0', '5', '3/8', NULL, NULL),
(148, 'Rastgele Sinyallere Giriş', 'EE4121', 5, 'Z', '2/2/0', '5', '4/8', NULL, NULL),
(149, 'Elektromanyetik Alan Teorisi', 'EE4321', 6, 'Z', '2/2/0', '5', '4/8', NULL, NULL),
(150, 'Elektronik Devreler I', 'EE4201', 6, 'Z', '2/2/0', '5', '4/8', NULL, NULL),
(151, 'Elektronik Devreler I Laboratuvarı', 'EE4202', 3, 'Z', '0/0/2', '5', '4/8', NULL, NULL),
(152, 'Haberleşmeye Giriş', 'EE4401', 6, 'Z', '2/2/0', '5', '4/8', NULL, NULL),
(153, 'Haberleşme Laboratuvarı', 'EE4402', 3, 'Z', '0/0/2', '5', '4/8', NULL, NULL),
(154, 'Staj I', 'EE5021', 3, 'Z', '0/0/3', '5', '5/8', NULL, NULL),
(155, 'Elektronik Devreler II', 'EE5221', 5, 'Z', '2/2/0', '5', '5/8', NULL, NULL),
(156, 'Elektronik Devreler II Laboratuvarı', 'EE5202', 3, 'Z', '0/0/2', '5', '5/8', NULL, NULL),
(157, 'Elektromanyetik Dalga Teorisi', 'EE5321', 5, 'Z', '2/2/0', '5', '5/8', NULL, NULL),
(158, 'Mikroişlemciler', 'EE5203', 5, 'Z', '2/0/2', '5', '5/8', NULL, NULL),
(159, 'Sayısal İşaret İşleme', 'EE5401', 5, 'Z', '2/2/0', '5', '5/8', NULL, NULL),
(160, 'Malzeme Bilimi', 'EE6023', 3, 'Z', '2/0/0', '5', '6/8', NULL, NULL),
(161, 'Elektromekanik Enerji Dönüşümü', 'EE6025', 5, 'Z', '2/2/0', '5', '6/8', NULL, NULL),
(162, 'Teknik Yazı ve Sunum', 'EE6021', 4, 'Z', '2/2/0', '5', '6/8', NULL, NULL),
(163, 'Mühendislik Oryantasyonu', 'ENC1001', 2, 'Z', '2/0/0', '5', '7/8', NULL, NULL),
(164, 'Staj II', 'EE7021', 3, 'Z', '0/0/3', '5', '7/8', NULL, NULL),
(165, 'Bitirme Projesi', 'EE0800', 12, 'Z', '2/8/0', '5', '8/8', NULL, NULL),
(166, 'Fizik I', 'FZT1001', 7, 'Z', '2/0/2', '6', '1/8', NULL, NULL),
(167, 'Genel Kimya', 'INS1001', 5, 'Z', '2/0/2', '6', '1/8', NULL, NULL),
(168, 'Matematik I', 'MBT1001', 7, 'Z', '4/0/0', '6', '1/8', NULL, NULL),
(169, 'Atatürk İlkeleri ve İnkılap Tarihi I', 'ATA1001', 2, 'Z', '2/0/0', '6', '1/8', NULL, NULL),
(170, 'Türkçe I', 'TR1001', 2, 'Z', '2/0/0', '6', '1/8', NULL, NULL),
(171, 'Matematik II', 'MBT1002', 7, 'Z', '4/0/0', '6', '2/8', NULL, NULL),
(172, 'Sayısal Yöntemler', 'MBT1008', 6, 'Z', '4/0/0', '6', '2/8', NULL, NULL),
(173, 'Fizik II', 'FZT2001', 7, 'Z', '2/0/2', '6', '2/8', NULL, NULL),
(174, 'Mühendislikte Çizim', 'INS2802', 4, 'Z', '2/2/0', '6', '2/8', NULL, NULL),
(175, 'Atatürk İlkeleri ve İnkılap Tarihi II', 'ATA2001', 2, 'Z', '2/0/0', '6', '2/8', NULL, NULL),
(176, 'Türkçe II', 'TR2001', 2, 'Z', '2/0/0', '6', '2/8', NULL, NULL),
(177, 'Olasılık ve İstatistiğe Giriş', 'MBT1007', 6, 'Z', '4/0/0', '6', '3/8', NULL, NULL),
(178, 'Matematik III', 'MBT1003', 7, 'Z', '4/0/0', '6', '3/8', NULL, NULL),
(179, 'Malzeme Bilgisi', 'INS3701', 4, 'Z', '2/0/0', '6', '3/8', NULL, NULL),
(180, 'Mühendislik Mekaniği', 'INS3101', 6, 'Z', '4/2/0', '6', '3/8', NULL, NULL),
(181, 'Mühendislik Etiği', 'INS4801', 2, 'Z', '2/0/0', '6', '4/8', NULL, NULL),
(182, 'Yapı Malzemesi', 'INS4701', 4, 'Z', '2/2/0', '6', '4/8', NULL, NULL),
(183, 'Mukavemet I', 'INS4101', 7, 'Z', '4/2/0', '6', '4/8', NULL, NULL),
(184, 'Ölçme Teknikleri', 'INS4601', 5, 'Z', '2/2/0', '6', '4/8', NULL, NULL),
(185, 'Lineer Cebir', 'MBT1004', 6, 'Z', '4/0/0', '6', '4/8', NULL, NULL),
(186, 'Diferansiyel Denklemler', 'MBT1005', 6, 'Z', '4/0/0', '6', '4/8', NULL, NULL),
(187, 'Mukavemet II', 'INS5102', 3, 'Z', '2/2/0', '6', '5/8', NULL, NULL),
(188, 'Zemin Mekaniği I', 'INS5201', 7, 'Z', '3/2/0', '6', '5/8', NULL, NULL),
(189, 'Yapı Statiği I', 'INS5101', 7, 'Z', '3/2/0', '6', '5/8', NULL, NULL),
(190, 'Akışkanlar Mekaniği', 'INS5301', 5, 'Z', '2/2/0', '6', '5/8', NULL, NULL),
(191, 'Yapım Yönetimi', 'INS5501', 4, 'Z', '3/0/0', '6', '5/8', NULL, NULL),
(192, 'Ulaştırma Mühendisliği', 'INS6401', 4, 'Z', '2/2/0', '6', '6/8', NULL, NULL),
(193, 'Çelik Yapılar', 'INS6103', 4, 'Z', '2/2/0', '6', '6/8', NULL, NULL),
(194, 'Yapı Statiği II', 'INS6101', 4, 'Z', '3/2/0', '6', '6/8', NULL, NULL),
(195, 'Betonarme I', 'INS6102', 6, 'Z', '3/2/0', '6', '6/8', NULL, NULL),
(196, 'Hidrolik', 'INS6301', 4, 'Z', '2/2/0', '6', '6/8', NULL, NULL),
(197, 'Temeller', 'INS7201', 5, 'Z', '2/2/0', '6', '7/8', NULL, NULL),
(198, 'Betonarme II', 'INS7101', 5, 'Z', '2/2/0', '6', '7/8', NULL, NULL),
(199, 'Staj I', 'INS7901', 3, 'Z', '0/0/0', '6', '7/8', NULL, NULL),
(200, 'Yapı Dinamiği', 'INS7102', 5, 'Z', '2/2/0', '6', '7/8', NULL, NULL),
(201, 'Staj II', 'INS8901', 3, 'Z', '0/0/0', '6', '8/8', NULL, NULL),
(202, 'Bitirme Projesi', 'INS8802', 8, 'Z', '2/6/0', '6', '8/8', NULL, NULL),
(203, 'Su Temini ve Atıksuların Uzaklaştırılması', 'INS8301', 3, 'Z', '3/0/0', '6', '8/8', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `programs`
--

CREATE TABLE `programs` (
  `id` bigint UNSIGNED NOT NULL,
  `program_name_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `programs`
--

INSERT INTO `programs` (`id`, `program_name_id`, `degree_id`, `created_at`, `updated_at`) VALUES
(1, '1', '2', NULL, NULL),
(2, '2', '2', NULL, NULL),
(3, '3', '2', NULL, NULL),
(4, '4', '1', NULL, NULL),
(5, '5', '1', NULL, NULL),
(6, '6', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `program_names`
--

CREATE TABLE `program_names` (
  `id` bigint UNSIGNED NOT NULL,
  `program_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_leader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program_purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `program_names`
--

INSERT INTO `program_names` (`id`, `program_name`, `program_leader`, `telephone`, `email`, `program_purpose`, `created_at`, `updated_at`) VALUES
(1, 'Bilgisayar Programcılığı', 'Erdem Yücesan', '0212 498 46 89', 'e.yucesan@iku.edu.tr', 'Amacımız yazılım, web tasarım, veri tabanı, donanım gibi çeşitli alanlarında görev alabilecek yeterli bilgi, beceri ve çalışma disiplini ile donatılmış, etik değerleri özümsemiş, sorumluluk aldığı görevlerinin yanında dünyadaki gelişmeleri de takip eden ve öğrenmenin sürekliliğine inanmış yeni teknolojilere açık çağdaş programcılar yetiştirmektir.', NULL, NULL),
(2, 'Grafik Tasarım', 'Öğr. Gör. Emin Sansarcı', '0212 498 49 38', 'e.sansarci@iku.edu.tr', 'Grafik tasarımı konusunda bilgi ve beceri ile donanmış, dünyanın güncel yapısıyla iletişim kurabilecek nitelikte grafik tasarımcı adayları yetiştirmektir.', NULL, NULL),
(3, 'Adalet', NULL, '0212 498 45 15', 'amyo@iku.edu.tr', 'İstanbul Kültür Üniversitesi Adalet Meslek Yüksekokulu’nun kuruluş amacı, Adalet Bakanlığı’nın çeşitli birimlerinde ihtiyaç duyulan nitelikli ara insan gücünün yetiştirilmesi ve Bakanlık Teşkilatı’nda görev almış personele hizmet içi eğitim sağlanmasıdır.  Ülkemizde adliye teşkilatında çalışan, hakimlik ve savcılık birimlerinde “kalem” olarak adlandırılan birimlerde, hukuk eğitimi almış adalet meslek yüksek okulu mezunlarıyla işler daha çabuk, daha düzgün ilerleyecektir.  Adalet Meslek Yüksekokulumuz, çağdaş ve evrensel değerler ışığında, yargı örgütü başta olmak üzere tüm sektörlerin temel hukuk bilgisine sahip, teorik altyapısı olan, uygulamayı bilen, teknolojiyi takip eden, demokratik ve sosyal bir hukuk devletinin gereği olan insan haklarına saygılı ve devletimizin temel değerlerini gözeterek hareket eden nitelikli bireyler yetiştirmek suretiyle ülkemizde adaletin gerçekleşmesine katkıda bulunmayı hedeflemektedir.', NULL, NULL),
(4, 'Bilgisayar Mühendisliği', '	Doç. Dr. Akhan AKBULUT', '212 498 4217', 'a.akbulut@iku.edu.tr', 'T.C. İstanbul Kültür Üniversitesi, toplumun ihtiyaçlarına en iyi şekilde hizmet etmeye adamış, öğrenme ve öğretme odaklı bir kurumdur. Bu kapsamda,Bilgisayar Mühendisliği Bölümü, üç şekilde Üniversite misyonuna katkıda bulunmayı amaclamaktadır. İlk olarak, lisans ve lisansüstü eğitim programları ile bilgisayar mühendisliği bölümü, modern toplumun karmaşık teknolojik sorunlarına çözüm sunmak için gerekli temel ilkeleri sağlayarak okul sonrası yaşam için gerekli alt yapının oluşturulmasında öğrencileri bilimsel ve uygulamali olarak hazırlamaktir. İkinci olarak, araştırma ve profesyonel faaliyet beklentileri olan bu bölümde, farklı alanlarla işbirliği yaparak toplum ihtiyaçlarına çözüm olabilecek teorik veya uygulamalı yenilikçi, yaratıcı çözümler sunmaktır. Son olarakta bölüm, öğretim, araştırma, ve hizmetlerin daha iyi verilebilmesi için kurumsal ve endüstriyel ilişkilerin gelistirilmesini benimseyen bir vizyon taşımaktadır.', NULL, NULL),
(5, 'Elektrik Elektronik Mühendisliği', 'Sibel Çelebioğlu(Bölüm Sekreteri)', '90 212 498 4203', ' s.celebioglu@iku.edu.tr', 'Elektrik ve elektronik mühendisliği sektöründe hizmet veren veya bilişim teknolojileri ile ilgili alanlarda faaliyet gösteren firmalarda kariyerlerine devam eden mühendisler yetiştirmektir. Alternatif olarak mezunlarımız lisansüstü öğrenimlerine de devam ederek kariyerlerini planlayabilirler.', NULL, NULL),
(6, 'İnşaat Mühendisliği(Türkçe)', 'Sibel Çelebioğlu(Bölüm Sekreteri)', '90 212 498 4203', 's.celebioglu@iku.edu.tr', '  inşaat mühendisliği ile ilgili konularda analiz ve tasarım yapabilecek,           mesleği ile ilgili ulusal ve uluslararası gelişmeleri takip eden ve ilgili yazılım ve donanımları kullanabilen,            bireysel ve grup çalışmasına yatkın, sorumluluk duygusu gelişmiş ve mesleki etik bilinci kazanmış olan,             iletişim yönü güçlü ve öz güven sahibi,  mühendisler yetiştirmektir.', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `program_names`
--
ALTER TABLE `program_names`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- Tablo için AUTO_INCREMENT değeri `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `program_names`
--
ALTER TABLE `program_names`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
