-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Jan 2020 pada 07.08
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `id_admin` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `admin_lv` varchar(20) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin_tbl`
--

INSERT INTO `admin_tbl` (`id_admin`, `username`, `password`, `nama`, `alamat`, `admin_lv`, `datetime`) VALUES
('01', 'admin', 'admin1', 'gunn', 'petamburan', 'admin', '2020-01-04 23:28:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_tbl`
--

CREATE TABLE `news_tbl` (
  `title` varchar(255) NOT NULL,
  `article` varchar(10000) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news_tbl`
--

INSERT INTO `news_tbl` (`title`, `article`, `image`) VALUES
('artikel_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.', 'img-3x2-02.jpg'),
('artikel_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.', 'img-3x2-03.jpg'),
('artikel_4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.', 'img-3x2-04.jpg'),
('artikel_6', 'edi2 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla ultricies nulla quis ultricies. Curabitur id quam est. Nullam augue quam, lacinia vitae vestibulum condimentum, scelerisque vehicula nisl. Donec vel erat ac nisl rhoncus blandit id eu nulla. Praesent mi quam, gravida id malesuada sit amet, euismod in purus. Aliquam erat volutpat. Proin rutrum risus quam, pretium euismod est elementum non. Donec vulputate venenatis nibh, a placerat felis. Proin vestibulum lacus vitae tellus aliquam porta nec tincidunt sem.', 'One Punch Man 04 1080p.mkv_snapshot_19.21.419.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news_tbl`
--
ALTER TABLE `news_tbl`
  ADD PRIMARY KEY (`title`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
