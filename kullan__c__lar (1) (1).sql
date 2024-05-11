-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 May 2024, 09:59:22
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kullanıcılar`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `friends`
--

CREATE TABLE `friends` (
  `user_username` text NOT NULL,
  `friend_username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `groupmembers`
--

CREATE TABLE `groupmembers` (
  `id` int(11) NOT NULL,
  `groupName` text NOT NULL,
  `username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `groupmembers`
--

INSERT INTO `groupmembers` (`id`, `groupName`, `username`) VALUES
(3, 'Naaa', 'tuna'),
(6, 'Naaa', 'nur'),
(7, 'aaaa', 'nur'),
(8, 'adada', 'nur');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `groupmessages`
--

CREATE TABLE `groupmessages` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `groupName` text NOT NULL,
  `message` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `groupmessages`
--

INSERT INTO `groupmessages` (`id`, `username`, `groupName`, `message`, `timestamp`) VALUES
(1, 'nur', 'Naaa', 'What do you Think?', '2024-05-08 20:59:57'),
(2, 'tuna', 'aaaa', 'What do you Think?', '2024-05-08 21:32:27'),
(3, 'tuna', 'aaaa', 'What do you Think?', '2024-05-08 21:32:28'),
(4, 'tuna', 'aaaa', 'What do you Think?', '2024-05-08 21:32:29'),
(7, 'nur', 'Naaa', 'What do you Think?', '2024-05-08 21:46:46'),
(8, 'nur', 'Naaa', 'What do you Think?', '2024-05-08 21:46:52'),
(9, 'tuna', 'Naaa', 'What do you Think?', '2024-05-08 22:11:40'),
(10, 'tuna', 'aaaa', 'What do you Think?', '2024-05-08 22:24:25'),
(11, 'nur', 'aaaa', 'What do you Think?', '2024-05-08 22:48:01'),
(12, 'nur', 'Naaa', 'What do you Think?', '2024-05-09 07:40:39'),
(13, 'nur', 'aaaa', 'What do you Think?', '2024-05-09 07:41:57'),
(14, 'nur', 'aaaa', 'What do you Think?', '2024-05-09 07:42:18'),
(15, 'nur', 'adada', 'What do you Think?', '2024-05-09 16:59:29'),
(16, 'nur', 'aaaa', 'What do you Think?', '2024-05-09 17:00:17'),
(19, 'nur', 'a', 'What do you Think?', '2024-05-10 10:44:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `groups`
--

CREATE TABLE `groups` (
  `groupName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `groups`
--

INSERT INTO `groups` (`groupName`) VALUES
('a'),
('aaaaa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanıcı`
--

CREATE TABLE `kullanıcı` (
  `age` int(11) NOT NULL,
  `name` text NOT NULL,
  `kullanıcıAdı` text NOT NULL,
  `kullanıcıSifre` text NOT NULL,
  `privacy` enum('private','public') DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanıcı`
--

INSERT INTO `kullanıcı` (`age`, `name`, `kullanıcıAdı`, `kullanıcıSifre`, `privacy`) VALUES
(22, 'Tuna ', 'tuna', '123789', 'public'),
(12, 'NUR', 'nur', '123', 'private'),
(16, 'AliKıran', 'BaşKoparan', '12', 'public'),
(12, 'efe', 'EFE', '3169', 'public'),
(31, 'SezginTanrıkulu', 'Szgn', '1234', 'public'),
(12, 'benhur', 'Benhur', '12345', 'public'),
(10, 'efe', 'EFEEEE', '123456', 'public');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_messages`
--

CREATE TABLE `user_messages` (
  `message_id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `user_messages`
--

INSERT INTO `user_messages` (`message_id`, `username`, `message`, `created_at`) VALUES
(10, 'EFE', 'BUGUN PİROM YENİLDİ', '2024-05-05 18:01:43'),
(11, 'EFE', 'ANAAAAAAA', '2024-05-05 18:01:47'),
(14, 'Szgn', 'HER BİJİ AMED', '2024-05-06 19:47:18'),
(15, 'Benhur', 'BENJUR', '2024-05-06 20:52:08'),
(16, 'Benhur', 'aa', '2024-05-06 20:56:29'),
(38, 'tuna', 'sadasd', '2024-05-07 23:06:53'),
(40, 'tuna', 'dasda', '2024-05-08 00:30:01'),
(54, 'nur', 'asdasd', '2024-05-09 17:01:06');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`user_username`(191),`friend_username`(191));

--
-- Tablo için indeksler `groupmembers`
--
ALTER TABLE `groupmembers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `groupmessages`
--
ALTER TABLE `groupmessages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanıcı`
--
ALTER TABLE `kullanıcı`
  ADD UNIQUE KEY `kullanıcıAdı` (`kullanıcıAdı`) USING HASH,
  ADD UNIQUE KEY `kullanıcıSifre` (`kullanıcıSifre`) USING HASH;

--
-- Tablo için indeksler `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `groupmembers`
--
ALTER TABLE `groupmembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `groupmessages`
--
ALTER TABLE `groupmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
