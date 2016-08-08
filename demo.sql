-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 08, 2016 at 07:02 PM
-- Server version: 5.5.49-MariaDB-1ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'raka', 'raka123'),
(2, 'admindbc', 'admindbc');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_kategori` int(3) unsigned NOT NULL,
  `judul` varchar(100) NOT NULL,
  `headline` text NOT NULL,
  `isi` text NOT NULL,
  `pengirim` varchar(15) NOT NULL,
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `judul`, `headline`, `isi`, `pengirim`, `tanggal`) VALUES
(1, 1, 'hima baru', 'ketua hima baru', 'pada tahun 2016 sistem informasi telah mendapatkan ketua hmj baru', 'raka', '2016-06-27 17:10:23'),
(2, 2, 'euro', 'inggris telah dikalahkan', 'inggris telah dikalahkan oleh tim kuda hitam yaitu islandia dan inggris harus angkat koper terlebih dahulu', 'rama', '2016-06-28 15:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nm_kategori` varchar(30) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nm_kategori`, `deskripsi`) VALUES
(1, 'pendidikan', 'ini adalah kategori untuk pendidikan'),
(2, 'olahraga', 'ini adalah kategori untuk olahraga'),
(3, 'ekonomi', 'ini adalah kategori ekonomi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` text,
  `pekerjaan` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `pekerjaan`) VALUES
(18, 'Raka', 'Pondok Bahar', 'CEO'),
(19, 'Bagus', 'Villa Meruya', 'Co-Fonder'),
(20, 'Rama', 'Cengkareng', 'Lead Developer'),
(21, 'Dirza', 'Kunciran', 'System Analyst'),
(24, 'Fahrizal', 'Jelambar', 'Programer Python'),
(25, 'Azzfarizul', 'Kunciran', 'IT System Security');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
