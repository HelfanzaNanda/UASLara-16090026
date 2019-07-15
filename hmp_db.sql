-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2019 pada 15.13
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmp_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agamas`
--

CREATE TABLE `agamas` (
  `id` int(10) UNSIGNED NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `agamas`
--

INSERT INTO `agamas` (`id`, `agama`, `created_at`, `updated_at`) VALUES
(1, 'Islam', NULL, NULL),
(2, 'Budha', NULL, '2019-07-06 07:16:24'),
(3, 'Kristen', '2019-07-12 19:59:05', '2019-07-12 19:59:05'),
(4, 'Protestant', '2019-07-12 19:59:23', '2019-07-12 19:59:23'),
(5, 'Hindu', '2019-07-12 19:59:40', '2019-07-12 19:59:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggotas`
--

CREATE TABLE `anggotas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nim` char(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_agama` int(10) UNSIGNED NOT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `id_semester` int(10) UNSIGNED NOT NULL,
  `id_jabatan` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggotas`
--

INSERT INTO `anggotas` (`id`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `id_agama`, `quote`, `filename`, `id_kelas`, `id_semester`, `id_jabatan`, `username`, `password`, `email_verified_at`, `remember_token`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `instagram`, `telephone`) VALUES
(2, '16090033', 'Nanda', 'laki-laki', 'tegal', 1, 'saya suka warna kuning', '1562985458.png', 1, 1, 1, 'nanda@gmail.com', '$2y$10$pBJEjPxe8Q.BWezlmoduBOF61T/Ci5Lm5QjP36yooXFzPz3FrBXgK', NULL, '$2y$10$X.S15alXOOci/c3SZh8J6.Sb5Khyw71ZbFgA/ynq2sKbtihaz/4ru', '1', 'helfanza nanda', 'helfanza nanda', '2019-07-12 19:37:38', '2019-07-12 19:37:38', 'nanda', '893'),
(3, '16090000', 'nandea', 'perempuan', 'brebes', 2, 'biru itu emas', '1562985539.png', 1, 1, 1, 'nandea@gmail.com', '$2y$10$XCyz2MJ9dNFikGS7frLWwuCCSfZfCxTy42tGCYexINe2ThqBiZ3O.', NULL, '$2y$10$VB6aof184cwMPzS78dtcYu4IBog2KnuIacqE9FnUoJtPCv/Edg.eK', '0', 'helfanza nanda', 'helfanza nanda', '2019-07-12 19:38:59', '2019-07-14 18:00:49', 'nandea', '893993'),
(4, '16090026', 'Helfanza Nanda Alfara', 'laki-laki', 'Tegal', 1, 'mawar itu biru', '1563152379.png', 1, 2, 4, 'helfanza@gmail.com', '$2y$10$Q87gSF1ucLvtlUwy/p8DkOdqZnIbM0LoE0ZCOGEJ9l/rs568j7/Nq', NULL, 'bxsSH0EcuG58b1tw2YE2K83aKXin2pq420VxdpUETvtVQyAxYE5WjEjYDR35', '1', 'helfanza nanda', 'helfanza nanda', '2019-07-14 17:58:28', '2019-07-14 17:59:39', 'helfanza', '089663453345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris`
--

CREATE TABLE `inventaris` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_inv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jumlah_terakhir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `inventaris`
--

INSERT INTO `inventaris` (`id`, `nama_inv`, `jumlah`, `filename`, `keterangan`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `jumlah_terakhir`) VALUES
(9, 'Kipas Angin', 8, '1562401541.JPG', 'hijau edit', '0', NULL, NULL, '2019-07-06 01:25:41', '2019-07-06 04:13:27', 9),
(10, 'Kipas Angin', 8, '1562411916.jpg', 'saya', '0', NULL, NULL, '2019-07-06 04:18:36', '2019-07-06 06:20:37', NULL),
(11, 'Kipas Angin', 8, '1562694116.png', 'ada', '1', NULL, NULL, '2019-07-09 10:41:56', '2019-07-09 10:41:56', NULL),
(12, 'zaaz', 6, '1562984277.png', 'sss', '1', 'helfanza nanda', 'helfanza nanda', '2019-07-12 19:17:57', '2019-07-12 19:17:57', NULL),
(13, 'kertas a4', 6, '1563152552.png', 'di pakai 2', '0', 'helfanza nanda', 'helfanza nanda', '2019-07-14 18:02:32', '2019-07-14 18:03:51', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatans`
--

CREATE TABLE `jabatans` (
  `id` int(10) UNSIGNED NOT NULL,
  `jabatan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jabatans`
--

INSERT INTO `jabatans` (`id`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Ketua', NULL, NULL),
(2, 'Wakil Ketua', NULL, NULL),
(3, 'Sekretaris', '2019-07-12 20:07:05', '2019-07-12 20:07:05'),
(4, 'Bendahara', '2019-07-12 20:07:20', '2019-07-12 20:07:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `kelas` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, NULL),
(2, 'B', NULL, NULL),
(3, 'C', '2019-07-12 20:00:03', '2019-07-12 20:00:14'),
(4, 'D', '2019-07-12 20:00:28', '2019-07-12 20:00:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `aktivitas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_05_09_102138_create_anggotas_table', 1),
(4, '2019_05_09_102213_create_inventaris_table', 1),
(5, '2019_05_09_102308_create_rapats_table', 1),
(6, '2019_05_09_102323_create_prokers_table', 1),
(7, '2019_05_09_102344_create_logs_table', 1),
(8, '2019_05_09_102400_create_kelas_table', 1),
(9, '2019_05_09_102416_create_jabatans_table', 1),
(10, '2019_05_09_102509_create_agamas_table', 1),
(11, '2019_05_09_102542_create_semesters_table', 1),
(12, '2019_05_09_103022_add_foreign_key_on_table_anggota', 1),
(13, '2019_06_03_092021_add_column_on_table_anggotas', 2),
(14, '2019_06_04_015237_add_unique_to_ig', 3),
(15, '2019_06_09_111538_change_tipedata_tanggal_in_rapat', 4),
(16, '2019_06_09_114716_add_length_tanggal_in_rapats', 5),
(17, '2019_06_09_132559_add_column_in_rapats', 6),
(18, '2019_06_15_114221_add_column_jumlah_terakhir_on_table_inventaris', 7);

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
-- Struktur dari tabel `prokers`
--

CREATE TABLE `prokers` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_proker` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prokers`
--

INSERT INTO `prokers` (`id`, `nama_proker`, `deskripsi`, `filename`, `judul`, `slug`, `tipe`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'invofest', 'fghbjnfcvgbhnj', '1562563704.jpg', 'invofest 2019 2020', 'invofest-2019-2020', '1', '0', NULL, NULL, '2019-07-07 22:28:24', '2019-07-14 18:31:12'),
(2, 'makrabs', 'makrab 2 hari di sikucing bersama teman teman dan dosen dosen lainnya', '1563154240.jpg', 'makrab 2 hari di sikucing', 'makrab-2-hari-di-sikucing', '1', '1', 'helfanza nanda', 'helfanza nanda', '2019-07-14 18:30:40', '2019-07-14 18:30:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapats`
--

CREATE TABLE `rapats` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_rapat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembahasan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_anggota` int(10) UNSIGNED NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hasil` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rapats`
--

INSERT INTO `rapats` (`id`, `nama_rapat`, `tanggal`, `jam`, `pembahasan`, `id_anggota`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `hasil`) VALUES
(2, 'Invofest', '18.07.2019', '09:00', 'membentuk panitia invofest', 4, '1', 'helfanza nanda', 'helfanza nanda', '2019-07-14 18:32:07', '2019-07-14 18:32:07', NULL),
(3, 'makrab', '31.07.2019', '14:00', 'tentang makrab', 2, '1', 'helfanza nanda', 'helfanza nanda', '2019-07-14 18:37:06', '2019-07-14 18:37:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `semester` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `semesters`
--

INSERT INTO `semesters` (`id`, `semester`, `created_at`, `updated_at`) VALUES
(1, '4', NULL, NULL),
(2, '6', NULL, NULL),
(4, '2', '2019-07-12 20:00:59', '2019-07-12 20:00:59'),
(5, '5', '2019-07-14 17:53:32', '2019-07-14 17:53:48');

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
(1, 'helfanza nanda', 'elvannnd@gmail.com', NULL, '$2y$10$tlxdf82a9RDzdTLFLPLjceq8F/rNZKAFOhCoEm8Z4j.q9qsCqj5Km', NULL, '2019-06-07 23:21:31', '2019-06-07 23:21:31'),
(2, 'admin', 'admin@mail.com', NULL, '$2y$10$lxSTwSsM.cq0/bUlCvO8Au3ulKh8whcqC9ZGpsGxIjGzEY0kWeZse', NULL, '2019-06-20 06:01:48', '2019-06-20 06:01:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `anggotas`
--
ALTER TABLE `anggotas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anggotas_nim_unique` (`nim`),
  ADD UNIQUE KEY `anggotas_username_unique` (`username`),
  ADD UNIQUE KEY `anggotas_instagram_unique` (`instagram`),
  ADD KEY `anggotas_id_agama_foreign` (`id_agama`),
  ADD KEY `anggotas_id_kelas_foreign` (`id_kelas`),
  ADD KEY `anggotas_id_semester_foreign` (`id_semester`),
  ADD KEY `anggotas_id_jabatan_foreign` (`id_jabatan`);

--
-- Indeks untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `prokers`
--
ALTER TABLE `prokers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rapats`
--
ALTER TABLE `rapats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rapats_id_anggota_foreign` (`id_anggota`);

--
-- Indeks untuk tabel `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `anggotas`
--
ALTER TABLE `anggotas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `prokers`
--
ALTER TABLE `prokers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rapats`
--
ALTER TABLE `rapats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggotas`
--
ALTER TABLE `anggotas`
  ADD CONSTRAINT `anggotas_id_agama_foreign` FOREIGN KEY (`id_agama`) REFERENCES `agamas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anggotas_id_jabatan_foreign` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anggotas_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anggotas_id_semester_foreign` FOREIGN KEY (`id_semester`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rapats`
--
ALTER TABLE `rapats`
  ADD CONSTRAINT `rapats_id_anggota_foreign` FOREIGN KEY (`id_anggota`) REFERENCES `anggotas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
