-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-01-26 01:22:22
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `php_1222_f14`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `voice_table`
--

CREATE TABLE `voice_table` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `content` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `voice_table`
--

INSERT INTO `voice_table` (`id`, `username`, `content`, `created_at`, `updated_at`) VALUES
(5, 'test2', 'はい', '2024-01-26 08:55:02', '2024-01-26 08:55:02'),
(6, 'test2', 'あいうえおかきくけこさしすせそ', '2024-01-26 08:55:16', '2024-01-26 08:55:16'),
(7, 'test2', '機器口座施設', '2024-01-26 08:59:15', '2024-01-26 08:59:15');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `voice_table`
--
ALTER TABLE `voice_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `voice_table`
--
ALTER TABLE `voice_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
