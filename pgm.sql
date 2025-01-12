-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2025 pada 12.31
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity`
--

CREATE TABLE `activity` (
  `id_activity` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `activity` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `delete` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` enum('sekolah','mantan guru','guru baru') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `documents`
--

INSERT INTO `documents` (`id`, `title`, `category`, `file_path`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'yuro', 'mantan guru', 'documents/NrudTlu2zzfr35ufkec9y4dPwEIfjqF4PBEdH0W4.pdf', 26, '2024-11-11 06:58:18', '2024-11-11 06:58:18'),
(2, 'yoga', 'sekolah', 'documents/jqDRz5X2QmsrQ3Pf3BCYZLX4h16h48GEgdkADQgI.pdf', 26, '2024-11-11 06:59:25', '2024-11-11 06:59:25'),
(3, 'epanyyu', 'guru baru', 'documents/kaQ6a6mcu1IpO6mYBynPbpwf4epI2mOth9ZERSYC.pdf', 26, '2024-11-11 19:48:45', '2024-11-11 19:48:45'),
(4, 'gg', 'sekolah', 'documents/5D12I6b3Wsr4SNYCDtc3BtjwJ8NPgI9NutDlHcrE.docx', 26, '2024-11-11 23:18:42', '2024-11-11 23:18:42'),
(5, 'ini kn', 'mantan guru', 'documents/tlRxCjbS1ptDxX1D74AMOcs88PKkxNm4djCse3So.docx', 26, '2024-11-11 23:23:02', '2024-11-11 23:23:02'),
(6, 'osndo', 'mantan guru', 'documents/Wz1y6bWdrZkARWYhx5BNYscACZnQJJuTIV0U38Y1.pdf', 26, '2024-11-11 23:34:57', '2024-11-11 23:34:57'),
(7, ',', 'guru baru', 'documents/Wmqms6mQOxNM3tCANVi5nv3c5MdSXq08NFtlopAK.pdf', 26, '2024-11-11 23:47:31', '2024-11-11 23:47:31'),
(8, 'ikan', 'mantan guru', 'documents/JnY2kDxZxO7HGbu8N6Ie8Jf774Xnki34jmw3U071.pdf', 26, '2024-11-12 04:10:01', '2024-11-12 04:10:01'),
(9, 'ggy', 'mantan guru', 'documents/H4DRqm0bboewsbbDpUSx7SaWC9vo8wGZCv5kagnb.pdf', 26, '2024-11-12 04:16:03', '2024-11-12 04:16:03'),
(10, 'pk yudi', 'mantan guru', 'documents/mantan guru/EMvfZvHJ2kdlWwId41acBcMw8tDB8oxuMBA5YWPV.pdf', 26, '2024-11-12 04:54:43', '2024-11-12 04:54:43'),
(11, 'yo', 'guru baru', 'documents/guru baru/9cw4pJiD4ItU6V9wh9v4tTotAucwtiGYoP5nB58b.pdf', 26, '2024-11-12 05:47:03', '2024-11-12 05:47:03'),
(12, 'jesy', 'mantan guru', 'documents/mantan guru/yJTGUj6MtRorr27Lr7oPECuThjGSaK4w8QaTTsmR.pdf', 26, '2024-11-12 16:56:11', '2024-11-12 16:56:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `incoming_mails`
--

CREATE TABLE `incoming_mails` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `received_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `incoming_mails`
--

INSERT INTO `incoming_mails` (`id`, `subject`, `sender`, `file_path`, `received_by`, `created_at`, `updated_at`) VALUES
(1, 'tinardotay07@gmail.com', 'tawmorgen@gmail.com', 'incoming-mails/NXWhy5E0hgpjlUAkXZSd68PQcSgjHefQOScDzH5Q.pdf', 26, '2024-11-11 07:03:44', '2024-11-11 07:03:44'),
(2, 'tinardotay07@gmail.com', 'tawmorgen@gmail.com', 'incoming-mails/BMVe3nauGQU5XeWmbbp13I9ZY51rjvpzFkxEHv4w.pdf', 26, '2024-11-12 16:56:54', '2024-11-12 16:56:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `role` enum('kepala sekolah','wakil kepala sekolah','guru','orang tua','murid') DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `no_telp`, `role`, `kelas_id`, `created_at`) VALUES
(26, 'if', 'tinardotay07@gmail.com', '+6282280297788', 'murid', 11, '2025-01-11 12:57:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `lelang_id` int(11) NOT NULL,
  `total_penawaran` int(11) DEFAULT NULL,
  `harga_akhir` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lateness_requests`
--

CREATE TABLE `lateness_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `arrival_time` time DEFAULT NULL,
  `lateness_duration` time DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `proof_attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `leave_requests`
--

CREATE TABLE `leave_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_days` int(11) DEFAULT NULL,
  `leave_type` enum('Cuti Tahunan','Cuti Khusus','WFH','Sakit SRT Dokter','Sakit Tanpa SRT Dokter','Izin Tanpa Bayar') NOT NULL,
  `reason` text DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `leave_requests`
--

INSERT INTO `leave_requests` (`id`, `name`, `employee_id`, `position`, `branch`, `application_date`, `start_date`, `end_date`, `total_days`, `leave_type`, `reason`, `contact_address`, `created_at`, `updated_at`) VALUES
(1, 'iphone', '1233', 'yayasan', 'fff', '2024-11-14', '2024-11-15', '2024-11-22', 7, 'Cuti Tahunan', 'hwhehe', 'batam', '2024-11-12 07:07:41', '2024-11-12 07:07:41'),
(2, 'tinardo', '12221', 'sept', 'hqhhq', '2024-10-12', '2024-10-13', '2024-10-15', 10, 'Cuti Khusus', 'kejang coding', 'batam baloi', '2024-11-12 16:58:14', '2024-11-12 16:58:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `nama_web` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`logo_id`, `logo`, `icon`, `nama_web`) VALUES
(1, 'logo.png', 'icon.png', 'sekolah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `outgoing_mails`
--

CREATE TABLE `outgoing_mails` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `sent_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `pengirim_id` int(11) DEFAULT NULL,
  `target` enum('semua','kelas') DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `isi`, `pengirim_id`, `target`, `kelas_id`, `created_at`) VALUES
(1, 'ss', 'qqq', NULL, 'semua', NULL, '2025-01-11 12:37:02'),
(2, 'ss', '11111', NULL, 'semua', NULL, '2025-01-11 12:37:11'),
(3, 'nelson', 'jjjj', NULL, 'semua', NULL, '2025-01-11 12:57:34'),
(4, 'nelson', 'mmmm', NULL, 'semua', NULL, '2025-01-11 12:58:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('laki','perempuan') DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `level` int(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `create_by` int(255) DEFAULT NULL,
  `update_at` varchar(255) DEFAULT NULL,
  `update_by` int(255) DEFAULT NULL,
  `delete_at` varchar(255) DEFAULT NULL,
  `delete_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `level`, `create_at`, `create_by`, `update_at`, `update_by`, `delete_at`, `delete_by`) VALUES
(12, 'admin', '202cb962ac59075b964b07152d234b70', 'clara', 'perempuan', 'lorem ipsum', 1, '2024-08-14 08:34:45', 1, NULL, NULL, NULL, NULL),
(13, 'asep', '202cb962ac59075b964b07152d234b70', 'dd', 'laki', 'tm', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'morgen', '202cb962ac59075b964b07152d234b70', 'morgen taw', 'perempuan', 'orci', 3, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'epan', '202cb962ac59075b964b07152d234b70', 'uu', 'laki', 'aman', 4, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'manda', '202cb962ac59075b964b07152d234b70', 'ee', '', 'balaoi', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'buk alda', '$2y$10$ASqkDY.RiPHIs6wBewj7EeEh5e7aKnDrAczWDk26XE.ZSMEtSrb9e', 'as', 'perempuan', NULL, NULL, '2024-10-11 18:09:20', NULL, '2024-10-11 18:09:20', NULL, NULL, NULL),
(19, 'deren', '6a53c0a2839d37d49a1c3d7546060504', 'oo', 'perempuan', NULL, NULL, '2024-10-11 18:09:37', NULL, '2024-10-11 18:09:37', NULL, NULL, NULL),
(20, 'logi', '$2y$10$Ot08TBFIpVlYMlAHReLli.qyTOAyHQfQjO6x0OFy53pLBFzdQFv9e', 'kobi', 'laki', NULL, NULL, '2024-10-11 18:13:55', NULL, '2024-10-11 18:13:55', NULL, NULL, NULL),
(21, 'user', 'e10adc3949ba59abbe56e057f20f883e', 'rr', 'perempuan', NULL, NULL, '2024-10-11 18:17:40', NULL, '2024-10-11 18:17:40', NULL, NULL, NULL),
(22, 'van', '$2y$10$HVVsAgurtGpGxTCcRm3uDulOSnQnpEeH6YwjN2EtVQ87dUA8.n59m', 'ff', 'laki', NULL, NULL, '2024-10-11 18:35:23', NULL, '2024-10-11 18:35:23', NULL, NULL, NULL),
(23, 'asep', '$2y$10$5anbTGNo6H9C68mT4WHTgORfAgVul35cjOtYuCBfiV9MJBkkMp9Ry', 'pan', 'laki', NULL, NULL, '2024-10-11 18:53:45', NULL, '2024-10-11 18:53:45', NULL, NULL, NULL),
(24, 'asus', '$2y$10$.rqdRVpXHtp0xvcy0LHPKO260nRXM1elwaFh7NW4Y8UvugAD9P5fi', 'as', 'laki', NULL, NULL, '2024-10-11 18:58:27', NULL, '2024-10-11 18:58:27', NULL, NULL, NULL),
(25, 'tin', '202cb962ac59075b964b07152d234b70', 'hsh', 'laki', NULL, NULL, '2024-10-11 19:23:57', NULL, '2024-10-11 19:23:57', NULL, NULL, NULL),
(26, 'pak if', '202cb962ac59075b964b07152d234b70', 'pak if', 'laki', NULL, NULL, '2024-10-12 04:05:32', NULL, '2024-10-12 04:05:32', NULL, NULL, NULL),
(27, 'yoga', '$2y$10$6/8bqWak4BPXSxV0gGLVQOgpJxrUo9q/phyUxqa0HM2BBTZF6kOgW', 'yoga', 'laki', NULL, NULL, '2024-10-12 04:39:25', NULL, '2024-10-12 04:39:25', NULL, NULL, NULL),
(28, 'iphone', '$2y$10$iMb1wAx/TMW9XVZu0b2Wduod9FLB4OcX6zMs.3dekYee4zhkKAp0K', 'asep', 'laki', NULL, NULL, '2024-10-12 04:42:25', NULL, '2024-10-12 04:42:25', NULL, NULL, NULL),
(29, 'uauau', '$2y$10$iJD4HCTb8Qy3SYf388zQTue3SzAgmlYaGQvguP7u998s44pKaoJHW', 'hsh', 'perempuan', NULL, NULL, '2024-10-12 04:45:46', NULL, '2024-10-12 04:45:46', NULL, NULL, NULL),
(30, 'lampu', '202cb962ac59075b964b07152d234b70', 'haha', 'perempuan', NULL, NULL, '2024-10-12 04:48:55', NULL, '2024-10-12 04:48:55', NULL, NULL, NULL),
(31, 'asusvivobook', '$2y$10$7tgFuM1Yp0mUCdLP/fmbsu0M6MYN2EF8e9sLfOW.azHdvaZQnB2uW', 'iphone', 'perempuan', NULL, NULL, '2024-10-12 04:56:28', NULL, '2024-10-12 04:56:28', NULL, NULL, NULL),
(32, 't', 'd9b1d7db4cd6e70935368a1efb10e377', 'aha', 'laki', NULL, NULL, '2024-10-12 05:01:00', NULL, '2024-10-12 05:01:00', NULL, NULL, NULL),
(33, 'kk', 'd9b1d7db4cd6e70935368a1efb10e377', 'as', 'laki', NULL, NULL, '2024-10-12 05:04:18', NULL, '2024-10-12 05:04:18', NULL, NULL, NULL),
(34, 'kbk', 'd9b1d7db4cd6e70935368a1efb10e377', 'uui', 'perempuan', NULL, NULL, '2024-11-13 14:51:15', NULL, '2024-11-13 14:51:15', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id_activity`) USING BTREE;

--
-- Indeks untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indeks untuk tabel `incoming_mails`
--
ALTER TABLE `incoming_mails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `received_by` (`received_by`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lelang_id` (`lelang_id`);

--
-- Indeks untuk tabel `lateness_requests`
--
ALTER TABLE `lateness_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`) USING BTREE;

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `outgoing_mails`
--
ALTER TABLE `outgoing_mails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sent_by` (`sent_by`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity`
--
ALTER TABLE `activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1735;

--
-- AUTO_INCREMENT untuk tabel `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `incoming_mails`
--
ALTER TABLE `incoming_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lateness_requests`
--
ALTER TABLE `lateness_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `outgoing_mails`
--
ALTER TABLE `outgoing_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `incoming_mails`
--
ALTER TABLE `incoming_mails`
  ADD CONSTRAINT `incoming_mails_ibfk_1` FOREIGN KEY (`received_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`lelang_id`) REFERENCES `lelang` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `outgoing_mails`
--
ALTER TABLE `outgoing_mails`
  ADD CONSTRAINT `outgoing_mails_ibfk_1` FOREIGN KEY (`sent_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
