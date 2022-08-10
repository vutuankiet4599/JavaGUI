-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 10, 2022 lúc 05:21 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quyenhan` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`username`, `password`, `quyenhan`) VALUES
('admin', '123456', '1'),
('user', '123456', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidan`
--

CREATE TABLE `nguoidan` (
  `hoten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gioitinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `noisinh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachitt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nghenghiep` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cccd` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaycap` date DEFAULT NULL,
  `chuho` tinyint(1) DEFAULT NULL,
  `quanhechuho` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hokhau` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaychuyendi` date DEFAULT NULL,
  `noichuyendi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghichu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidan`
--

INSERT INTO `nguoidan` (`hoten`, `gioitinh`, `ngaysinh`, `noisinh`, `diachitt`, `nghenghiep`, `cccd`, `ngaycap`, `chuho`, `quanhechuho`, `hokhau`, `ngaychuyendi`, `noichuyendi`, `ghichu`) VALUES
('Pham Huy Hoang', 'Nam', '2001-02-04', 'Thon Vung Tron xa Son Kim 1', 'Quan Hai Ba Trung', 'Sinh vien', '111111111111', '2017-02-04', 1, 'Chu ho', '111111111', '2019-02-04', 'Nha Trang', 'Di du lich'),
('Trinh Huy Bang', 'Nam', '2001-12-04', 'Thon Vung Tron', 'Quan Hai Ba Trung', 'Sinh vien', '222222222222', '2017-12-14', 0, 'Con', '111111111', NULL, NULL, NULL),
('Nguyen TIen Dat', 'Nam', '2001-06-13', 'Vinh Phuc', 'Vinh Phuc', 'Moi sinh', NULL, NULL, 0, 'Con', '111111111', NULL, NULL, 'Moi sinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sohokhau`
--

CREATE TABLE `sohokhau` (
  `tenchuho` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hokhau` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaycap` date DEFAULT NULL,
  `diachi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nhankhau` int(11) DEFAULT NULL,
  `ghichu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sohokhau`
--

INSERT INTO `sohokhau` (`tenchuho`, `hokhau`, `ngaycap`, `diachi`, `nhankhau`, `ghichu`) VALUES
('Pham Huy Hoang', '111111111', '2001-04-02', 'Thon Vung Tron', 4, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nguoidan`
--
ALTER TABLE `nguoidan`
  ADD KEY `fk_hokhau` (`hokhau`);

--
-- Chỉ mục cho bảng `sohokhau`
--
ALTER TABLE `sohokhau`
  ADD UNIQUE KEY `hokhau` (`hokhau`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `nguoidan`
--
ALTER TABLE `nguoidan`
  ADD CONSTRAINT `fk_hokhau` FOREIGN KEY (`hokhau`) REFERENCES `sohokhau` (`hokhau`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
