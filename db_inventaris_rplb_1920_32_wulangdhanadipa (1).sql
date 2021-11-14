-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 02:34 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventaris_rplb_1920_32_wulangdhanadipa`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(8) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `spesifikasi` text NOT NULL,
  `lokasi` char(4) NOT NULL,
  `kondisi` varchar(20) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `sumber_dana` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `spesifikasi`, `lokasi`, `kondisi`, `jumlah_barang`, `sumber_dana`) VALUES
('BRG10001', 'Kursi Siswa', 'Bantalan Merah aluminium', 'R001', 'Baik', 36, 'S001'),
('BRG10002', 'Kursi Lipat Siswa', 'Kursi Lipat merk informa Bantalan Hitam', 'R002', 'Baik', 36, 'S001'),
('BRG20001', 'Acer Aspire E1-471', 'Acer Aspire E1-471 Core i3 RAM 4GB HDD 500GB', 'R002', 'Baik', 30, 'S002'),
('BRG20002', 'Laptop Lenovo E550', 'Laptop Lenovo E550 Core i7 RAM 8GB HDD 1TB', 'R002', 'Baik', 23, 'S003'),
('BRG20003', 'PC Rakitan i7', 'Intel Core i7 RAM 16GB SSD 512GB', 'R001', 'Baik', 12, 'S004'),
('BRG20004', 'Camera DLSR Canon D60', 'DSLR Canon D60', 'R005', 'Baik', 16, 'S003'),
('BRG30001', 'Lightning set', 'stand light tronik 2 lightning tronik 2 100watt P...', 'R005', 'Baik', 2, 'S005'),
('BRG30002', 'Tripod Kamera', 'Takara Tripod', 'R005', 'Baik', 4, 'S002');

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang` char(8) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `jml_keluar` int(11) NOT NULL,
  `supplier` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang`, `tgl_keluar`, `jml_keluar`, `supplier`) VALUES
('BRG20001', '2017-11-06', 3, 'SPR005'),
('BRG10001', '2020-11-03', 16, 'SPR005');

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang` char(8) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jml_masuk` int(11) NOT NULL,
  `supplier` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang`, `tgl_masuk`, `jml_masuk`, `supplier`) VALUES
('BRG10001', '2007-08-03', 36, 'SPR001'),
('BRG10002', '2007-08-01', 36, 'SPR002'),
('BRG20001', '2013-07-09', 30, 'SPR004'),
('BRG20002', '2014-03-08', 23, 'SPR003'),
('BRG20003', '2020-11-10', 12, 'SPR004'),
('BRG20004', '2014-04-13', 16, 'SPR005'),
('BRG30001', '2018-04-06', 2, 'SPR005'),
('BRG30002', '2018-04-06', 4, 'SPR005');

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_keluar_masuk_supply`
-- (See below for the actual view)
--
CREATE TABLE `detail_keluar_masuk_supply` (
`nama_supplier` varchar(225)
,`id_barang` char(8)
,`tgl_masuk` date
,`jml_masuk` int(11)
,`tgl_keluar` date
,`jml_keluar` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_penggunaan_barang`
-- (See below for the actual view)
--
CREATE TABLE `detail_penggunaan_barang` (
`nama_barang` varchar(225)
,`nama_lokasi` varchar(225)
,`nama_sumber` varchar(225)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_pinjam`
-- (See below for the actual view)
--
CREATE TABLE `detail_pinjam` (
`id_barang` char(8)
,`id_pinjam` int(11)
,`nama_barang` varchar(225)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_stok`
-- (See below for the actual view)
--
CREATE TABLE `detail_stok` (
`nama_barang` varchar(225)
,`jml_masuk` int(11)
,`jml_keluar` int(11)
,`total_barang` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_user`
-- (See below for the actual view)
--
CREATE TABLE `detail_user` (
`nama` varchar(225)
,`username` varchar(50)
,`id_level` char(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_ruang`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_ruang` (
`jumlah_lokasi` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `left_detail_stok`
-- (See below for the actual view)
--
CREATE TABLE `left_detail_stok` (
`nama_barang` varchar(225)
,`jml_masuk` int(11)
,`jml_keluar` int(11)
,`total_barang` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `level_user`
--

CREATE TABLE `level_user` (
  `id_level` char(3) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level_user`
--

INSERT INTO `level_user` (`id_level`, `nama`, `keterangan`) VALUES
('U01', 'Administrator', ''),
('U02', 'Manajemen', ''),
('U03', 'Peminjam', '');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` char(4) NOT NULL,
  `nama_lokasi` varchar(225) NOT NULL,
  `penanggung_jawab` varchar(225) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`, `penanggung_jawab`, `keterangan`) VALUES
('R001', 'Lab RPL 1', 'Satria Ade Putra', 'Lantai 3'),
('R002', 'Lab RPL 2', 'Satria Ade Putra', 'Lantai 3'),
('R003', 'Lab TKJ 1', 'Supriyadi', 'Lantai 2 Gedung D'),
('R004', 'Lab TKJ 2', 'Supriyadi', 'Lantai 2 Gedung D'),
('R005', 'Lab Multimedia', 'Bayu Setiawan', 'Lantai Multimedia');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam_barang`
--

CREATE TABLE `pinjam_barang` (
  `id_pinjam` int(11) NOT NULL,
  `peminjam` char(8) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `barang_pinjam` char(8) NOT NULL,
  `jml_pinjam` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `kondisi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjam_barang`
--

INSERT INTO `pinjam_barang` (`id_pinjam`, `peminjam`, `tgl_pinjam`, `barang_pinjam`, `jml_pinjam`, `tgl_kembali`, `kondisi`) VALUES
(1, 'USR20001', '2021-06-09', 'BRG20002', 1, '2021-08-21', 'Baik'),
(2, 'USR20002', '2021-06-09', 'BRG20002', 1, '2021-08-21', 'Baik'),
(3, 'USR20004', '2021-08-05', 'BRG20004', 3, '2021-08-21', 'Baik'),
(4, 'USR20004', '2021-08-05', 'BRG30002', 3, '2021-08-21', 'Baik');

-- --------------------------------------------------------

--
-- Stand-in structure for view `right_detail_pinjam`
-- (See below for the actual view)
--
CREATE TABLE `right_detail_pinjam` (
`id_pinjam` int(11)
,`nama_barang` varchar(225)
,`nama` varchar(225)
,`kondisi` varchar(225)
,`jml_pinjam` int(11)
,`tgl_pinjam` date
,`tgl_kembali` date
);

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id_barang` char(8) NOT NULL,
  `jml_masuk` int(11) NOT NULL,
  `jml_keluar` int(11) NOT NULL,
  `total_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id_barang`, `jml_masuk`, `jml_keluar`, `total_barang`) VALUES
('BRG10001', 36, 0, 36),
('BRG10002', 36, 16, 20),
('BRG20001', 30, 3, 29),
('BRG20002', 23, 0, 23),
('BRG20003', 12, 0, 12),
('BRG20004', 16, 0, 16),
('BRG30001', 2, 0, 2),
('BRG30002', 4, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sumber_dana`
--

CREATE TABLE `sumber_dana` (
  `id_sumber` char(4) NOT NULL,
  `nama_sumber` varchar(225) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sumber_dana`
--

INSERT INTO `sumber_dana` (`id_sumber`, `nama_sumber`, `keterangan`) VALUES
('S001', 'Komite 07/09', 'Bantuan Komite 2007/2009'),
('S002', 'Komite 13', 'Bantuan Komite 2013'),
('S003', 'Sed t-vet', 'Bantuan Kerja sama Indonesia Jerman'),
('S004', 'BOPD 2020', 'Bantuan Provinsi Jawa Barat 2020'),
('S005', 'BOSDA 2018', 'Bantuan Operasional Sekolah Daeraj Jawa Barat 2018');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(8) NOT NULL,
  `nama_supplier` varchar(225) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `telp_supplier` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `telp_supplier`) VALUES
('SPR001', 'INFORMA - MALL METROPOLITAN BEKASI', 'Mal Metropolitan, Jl. KH. Noer Ali No. 1, RT008/RW...', '0812-9604-6051'),
('SPR002', 'Mitrakantor.com', 'Alamat Jl. I Gusti Ngurah Rai No.20 RT 1/RW 10,...', '(021)22862086'),
('SPR003', 'bhineka.com', 'Jl. Gn. Sahari No.73C, RT.9/RW.7, Gn Sahari Sel', '(021)29292828'),
('SPR004', 'World Computer', 'Harco Mangga Dua Plaza B3/1, Jalan Arteri Mangga Dua...', '(021)6125266'),
('SPR005', 'Anekafoto Metro Atom', 'Metro Atom Plaza Jalan Samanhudi Blok AKS No.19,...', '(021)3455544');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` char(8) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `level` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
('USR00001', 'Nana Sukmana', 'admin', 'password', 'U01'),
('USR00002', 'Deden Deendi', 'toolman=RPL', 'password', 'U02'),
('USR00003', 'Ilham Kamil', 'toolman=MM', 'password', 'U02'),
('USR00004', 'Abdul Rahman', 'toolman=TKJ', 'password', 'U02'),
('USR20001', 'Dzaki', 'dzaki', 'password', 'U03'),
('USR20002', 'Sulthan', 'sulthan', 'password', 'U03'),
('USR20003', 'Fahru', 'fahru', 'password', 'U03'),
('USR20004', 'Akwan', 'akwan', 'password', 'U03');

-- --------------------------------------------------------

--
-- Structure for view `detail_keluar_masuk_supply`
--
DROP TABLE IF EXISTS `detail_keluar_masuk_supply`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_keluar_masuk_supply`  AS SELECT `s`.`nama_supplier` AS `nama_supplier`, `bm`.`id_barang` AS `id_barang`, `bm`.`tgl_masuk` AS `tgl_masuk`, `bm`.`jml_masuk` AS `jml_masuk`, `bk`.`tgl_keluar` AS `tgl_keluar`, `bk`.`jml_keluar` AS `jml_keluar` FROM ((`supplier` `s` left join `barang_masuk` `bm` on(`s`.`id_supplier` = `bm`.`supplier`)) left join `barang_keluar` `bk` on(`s`.`id_supplier` = `bk`.`supplier`)) ;

-- --------------------------------------------------------

--
-- Structure for view `detail_penggunaan_barang`
--
DROP TABLE IF EXISTS `detail_penggunaan_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_penggunaan_barang`  AS SELECT `b`.`nama_barang` AS `nama_barang`, `l`.`nama_lokasi` AS `nama_lokasi`, `dn`.`nama_sumber` AS `nama_sumber` FROM ((`barang` `b` left join `lokasi` `l` on(`b`.`lokasi` = `l`.`id_lokasi`)) left join `sumber_dana` `dn` on(`b`.`sumber_dana` = `dn`.`id_sumber`)) ;

-- --------------------------------------------------------

--
-- Structure for view `detail_pinjam`
--
DROP TABLE IF EXISTS `detail_pinjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_pinjam`  AS SELECT `b`.`id_barang` AS `id_barang`, `p`.`id_pinjam` AS `id_pinjam`, `b`.`nama_barang` AS `nama_barang` FROM (`barang` `b` join `pinjam_barang` `p` on(`b`.`id_barang` = `p`.`barang_pinjam`)) ;

-- --------------------------------------------------------

--
-- Structure for view `detail_stok`
--
DROP TABLE IF EXISTS `detail_stok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_stok`  AS SELECT `b`.`nama_barang` AS `nama_barang`, `s`.`jml_masuk` AS `jml_masuk`, `s`.`jml_keluar` AS `jml_keluar`, `s`.`total_barang` AS `total_barang` FROM (`stok` `s` join `barang` `b` on(`b`.`id_barang` = `s`.`id_barang`)) ;

-- --------------------------------------------------------

--
-- Structure for view `detail_user`
--
DROP TABLE IF EXISTS `detail_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_user`  AS SELECT `u`.`nama` AS `nama`, `u`.`username` AS `username`, `l`.`id_level` AS `id_level` FROM (`level_user` `l` left join `user` `u` on(`u`.`level` = `l`.`id_level`)) ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_ruang`
--
DROP TABLE IF EXISTS `jumlah_ruang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_ruang`  AS SELECT count(`lokasi`.`nama_lokasi`) AS `jumlah_lokasi` FROM `lokasi` ;

-- --------------------------------------------------------

--
-- Structure for view `left_detail_stok`
--
DROP TABLE IF EXISTS `left_detail_stok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `left_detail_stok`  AS SELECT `b`.`nama_barang` AS `nama_barang`, `s`.`jml_masuk` AS `jml_masuk`, `s`.`jml_keluar` AS `jml_keluar`, `s`.`total_barang` AS `total_barang` FROM (`stok` `s` left join `barang` `b` on(`b`.`id_barang` = `s`.`id_barang`)) ;

-- --------------------------------------------------------

--
-- Structure for view `right_detail_pinjam`
--
DROP TABLE IF EXISTS `right_detail_pinjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `right_detail_pinjam`  AS SELECT `pb`.`id_pinjam` AS `id_pinjam`, `b`.`nama_barang` AS `nama_barang`, `u`.`nama` AS `nama`, `pb`.`kondisi` AS `kondisi`, `pb`.`jml_pinjam` AS `jml_pinjam`, `pb`.`tgl_pinjam` AS `tgl_pinjam`, `pb`.`tgl_kembali` AS `tgl_kembali` FROM (`barang` `b` left join (`user` `u` left join `pinjam_barang` `pb` on(`pb`.`peminjam` = `u`.`id_user`)) on(`pb`.`barang_pinjam` = `b`.`id_barang`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `lokasi` (`lokasi`),
  ADD KEY `sumber_dana` (`sumber_dana`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `supplier` (`supplier`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `supplier` (`supplier`);

--
-- Indexes for table `level_user`
--
ALTER TABLE `level_user`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `pinjam_barang`
--
ALTER TABLE `pinjam_barang`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `barang_pinjam` (`barang_pinjam`),
  ADD KEY `peminjam` (`peminjam`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  ADD PRIMARY KEY (`id_sumber`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `level` (`level`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`lokasi`) REFERENCES `lokasi` (`id_lokasi`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`sumber_dana`) REFERENCES `sumber_dana` (`id_sumber`);

--
-- Constraints for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `barang_keluar_ibfk_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `pinjam_barang`
--
ALTER TABLE `pinjam_barang`
  ADD CONSTRAINT `pinjam_barang_ibfk_1` FOREIGN KEY (`barang_pinjam`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `pinjam_barang_ibfk_2` FOREIGN KEY (`peminjam`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`level`) REFERENCES `level_user` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
