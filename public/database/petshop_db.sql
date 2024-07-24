-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2024 pada 09.00
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `stok`, `gambar`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deskripsi`) VALUES
(1, 'Whiskas Junior', 20000, 85, '1717147441_89d5987a125013513c15.jpeg', 1, '2024-05-31 09:24:01', 1, '2024-05-31 09:49:22', 'Whiskas junior tuna diracik dengan resep yang lezat, serta potongan daging segar dan dilengkapi dengan kandungan air, membuat ketagihan kucingmu! Dimasak dengan metode \'Slow-Cooked\' dan dibungkus dengan kantung  steril dan mudah untuk dibuka serta kandungan daging yang segar dan \'juicy\' akan membuatnya ketagihan dan meningkatkan nafsu makannya.'),
(3, 'Kucing Persia', 15000000, 7, '1717149008_90e272bbff9e9037e3d4.jpeg', 1, '2024-05-31 09:50:08', NULL, NULL, 'Kucing ras asli Persia, umur -+ 1 tahun. Aktif, sehat, bisa menangkap tikus.'),
(7, 'Anjing Chihuahua', 3500000, 3, '1717408743_5e411939b6549fdd27de.jpeg', 3, '2024-06-03 09:59:03', NULL, NULL, 'Anjing chihuahua ras asli, lucu, penurut, bisa disuruh ke warung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_barang` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `komentar` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-05-30-130000', 'App\\Database\\Migrations\\User', 'default', 'App', 1717051608, 1),
(2, '2024-05-30-132200', 'App\\Database\\Migrations\\Barang', 'default', 'App', 1717051608, 1),
(3, '2024-05-30-132900', 'App\\Database\\Migrations\\Transaksi', 'default', 'App', 1717051608, 1),
(4, '2024-05-30-133600', 'App\\Database\\Migrations\\Komentar', 'default', 'App', 1717051608, 1),
(5, '2024-05-30-141800', 'App\\Database\\Migrations\\TransaksiAlterFk', 'default', 'App', 1717053796, 2),
(6, '2024-05-30-142100', 'App\\Database\\Migrations\\KomentarAlterFk', 'default', 'App', 1717053796, 2),
(7, '2024-05-31-184100', 'App\\Database\\Migrations\\TransaksiAlterAlamat', 'default', 'App', 1717155887, 3),
(8, '2024-06-03-162100', 'App\\Database\\Migrations\\TransaksiAlterAlamat', 'default', 'App', 1717406655, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_barang` int(11) UNSIGNED NOT NULL,
  `id_pembeli` int(11) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_barang`, `id_pembeli`, `jumlah`, `total_harga`, `created_by`, `created_date`, `updated_by`, `updated_date`, `alamat`, `ongkir`, `status`) VALUES
(1, 1, 4, 1, 38000, 4, '2024-06-01 03:53:03', NULL, NULL, 'PERUM Metland Cileungsi blok CK1 no. 17', 18000, 0),
(2, 3, 4, 1, 15018000, 4, '2024-06-01 06:21:10', NULL, NULL, 'PERUM Metland Cileungsi blok CK1 no. 17', 18000, 0),
(3, 1, 4, 1, 38000, 4, '2024-06-01 06:27:54', NULL, NULL, 'PERUM Metland Cileungsi blok CK1 no. 17', 18000, 0),
(4, 7, 4, 1, 3518000, 4, '2024-06-04 05:17:58', NULL, NULL, 'PERUM Metland Cileungsi blok CK1 no. 17', 18000, 0),
(5, 1, 4, 4, 98000, 4, '2024-06-15 04:29:01', NULL, NULL, 'PERUM Metland Cileungsi blok CK1 no. 17', 18000, 0),
(6, 3, 4, 1, 15018000, 4, '2024-06-15 10:35:17', NULL, NULL, 'PERUM Metland Cileungsi blok CK1 no. 17', 18000, 0),
(7, 1, 4, 9, 190000, 4, '2024-06-15 14:07:31', NULL, NULL, 'PERUM Metland Cileungsi blok CK1 no. 17', 10000, 0),
(8, 7, 4, 1, 3530000, 4, '2024-06-25 07:55:13', NULL, NULL, 'bekasi', 30000, 0),
(9, 3, 4, 1, 15018000, 4, '2024-06-25 10:59:21', NULL, NULL, 'PERUM Metland Cileungsi blok CK1 no. 17', 18000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `role` int(1) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `avatar`, `role`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(3, 'admin', '695f801e9ccde9a5c14c10f0c16d6930', '6659bae0860c12.89667169', NULL, 0, 0, '2024-05-31 11:56:16', NULL, NULL),
(4, 'user01', '82ddb2002896b8a347192ef57d602932', '6659bafece41b8.21837694', NULL, 1, 0, '2024-05-31 11:56:46', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentar_id_user_foreign` (`id_user`),
  ADD KEY `komentar_id_barang_foreign` (`id_barang`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id_pembeli_foreign` (`id_pembeli`),
  ADD KEY `transaksi_id_barang_foreign` (`id_barang`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_id_pembeli_foreign` FOREIGN KEY (`id_pembeli`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
