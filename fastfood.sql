-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Bulan Mei 2023 pada 04.25
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastfood`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `telepon` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `jenis_kelamin`, `telepon`, `email`, `alamat`) VALUES
(1, 'Johan Wongso', 'Laki-laki', 812345678, 'johan@example.com', 'Jl. ABC No. 123, Surabaya'),
(2, 'Jeni Rasti', 'Perempuan', 823456789, 'jeni@example.com', 'Jl. XYZ No. 456, Surabyaa'),
(3, 'Michael Yudid', 'Laki-laki', 834567890, 'michael@example.com', 'Jl. DEF No. 789, Surabaya'),
(4, 'Sarah Winanti', 'Perempuan', 845678901, 'sarah@example.com', 'Jl. GHI No. 234, Surabaya'),
(5, 'David Lee', 'Laki-laki', 856789012, 'david@example.com', 'Jl. JKL No. 567, Surabaya'),
(6, 'Emily santos', 'Perempuan', 867890123, 'emily@example.com', 'Jl. MNO No. 890, Surabaya'),
(7, 'Daniel Davis', 'Laki-laki', 878901234, 'daniel@example.com', 'Jl. PQR No. 567, Surabaya'),
(8, 'Olivia Wilson', 'Perempuan', 889012345, 'olivia@example.com	', 'Jl. STU No. 901, Surabaya'),
(9, 'Ehsan Millo', 'Laki-laki', 890123456, 'ethan@example.com', 'Jl. VWX No. 234, Surabaya'),
(10, 'Afani Andersan', 'Perempuan', 801234567, 'afa@example.com', 'Jl. YZ No. 567, Surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama`, `kategori`, `harga`, `deskripsi`, `gambar`) VALUES
(1, 'Burger Classic', 'Burger', 99000, 'Burger lezat dengan daging sapi segar, keju cheddar, selada, tomat, dan saus spesial. Disajikan dengan kentang goreng.', ''),
(2, 'Cheeseburger Deluxe', 'Burger', 109000, 'Cheeseburger dengan tambahan daging sapi panggang, keju mozarella meleleh, tomat, bawang, dan saus istimewa. Disajikan dengan kentang goreng.', ''),
(3, 'BBQ Bacon Burger', 'Burger', 119000, 'Burger lezat dengan daging sapi panggang, keju cheddar, potongan bacon renyah, selada, tomat, bawang, dan saus BBQ. Disajikan dengan kentang goreng.', ''),
(4, 'Mushroom Swiss Burge', 'Burger', 109000, 'Burger dengan daging sapi panggang, keju swiss lezat, jamur panggang, selada, tomat, bawang, dan saus spesial. Disajikan dengan kentang goreng.', ''),
(5, 'Spicy Jalapeno Burge', 'Burger', 119000, 'Burger dengan daging sapi panggang, keju pepper jack, irisan jalapeno pedas, selada, tomat, bawang, dan saus pedas. Disajikan dengan kentang goreng.', ''),
(6, 'Veggie Burger', 'Burger', 89000, 'Burger vegetarian dengan patty nabati, keju cheddar, selada, tomat, bawang, dan saus khusus. Disajikan dengan kentang goreng.', ''),
(7, 'Pizza Margherita', 'Pizza', 85000, 'Pizza klasik dengan saus tomat, keju mozzarella, daun basil segar, dan sedikit minyak zaitun. Kesederhanaan yang lezat.', ''),
(8, 'Pizza Pepperoni', 'Pizza', 95000, 'Pizza dengan saus tomat, lapisan pepperoni gurih, dan keju mozzarella yang meleleh. Pilihan sempurna bagi pecinta daging.', ''),
(9, 'Pizza Hawaian', 'Pizza', 105000, 'Pizza dengan saus tomat, potongan ham, irisan nanas manis, dan keju mozzarella. Gabungan manis dan gurih yang menggoda selera.', ''),
(10, 'Pizza Vegetarian', 'Pizza', 90000, 'Pizza berisi beragam sayuran segar seperti paprika, jamur, bawang, zukini, dan keju mozzarella. Pilihan lezat bagi vegetarian.', ''),
(11, 'Pizza BBQ Chicken', 'Pizza', 110000, ' Pizza dengan saus BBQ, potongan daging ayam panggang, bawang merah, keju mozzarella, dan sedikit daun peterseli. Rasakan cita rasa gurih dan manisnya.', ''),
(12, 'Pizza Seafood', 'Pizza', 120000, 'Pizza dengan saus tomat, campuran seafood segar seperti udang, cumi, dan ikan, dilengkapi dengan keju mozzarella. Pengalaman kenikmatan laut di setiap gigitannya.', ''),
(13, 'Pasta Carbonara', 'Pasta', 85000, 'Pasta dengan saus krim lezat, potongan bacon gurih, parmesan, dan telur. Disajikan dengan parsley segar.', ''),
(14, 'Linguine Aglio e Oli', 'Pasta', 82000, 'Linguine dengan bawang putih, cabai merah, minyak zaitun, dan parsley. Disajikan dengan taburan parmesan.', ''),
(15, 'Spaghetti Bolognese', 'Pasta', 79000, 'Spaghetti dengan saus tomat daging sapi yang kaya rasa, bawang, wortel, dan bumbu rempah. Disajikan dengan taburan keju parmesan.', ''),
(16, 'Soda Lemonade', 'Minuman', 20000, 'Minuman berkarbonasi yang segar dengan perpaduan rasa lemon yang asam dan manis. Cocok untuk meredakan dahaga dan memberikan sensasi berkarbonasi.', ''),
(17, 'Matcha Latte', 'Minuman', 30000, 'Minuman yang terbuat dari bubuk matcha berkualitas tinggi dan susu hangat yang lembut. Memberikan rasa teh hijau yang kaya dan menggugah selera.', ''),
(18, 'Strawberry Smoothie', 'Minuman', 35000, 'Smoothie segar yang terbuat dari buah stroberi segar, yogurt, dan es. Memberikan rasa manis dan menyegarkan dengan tekstur yang lembut.', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_customer`, `id_menu`, `tgl_transaksi`, `jumlah`, `total`) VALUES
(1, 1, 3, '2023-05-02', 2, 238000),
(2, 2, 15, '2023-05-03', 1, 79000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_customer` (`id_customer`),
  ADD KEY `fk_menu` (`id_menu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
