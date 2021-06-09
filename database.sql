-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 23, 2021 lúc 03:07 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `atp2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute`
--

CREATE TABLE `attribute` (
  `id_attribute` int(11) NOT NULL,
  `name_attribute` varchar(50) NOT NULL,
  `Category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `attribute`
--

INSERT INTO `attribute` (`id_attribute`, `name_attribute`, `Category`) VALUES
(35, 'Công nghệ CPU', 1),
(36, 'Loại CPU', 1),
(37, 'Tốc độ CPU', 1),
(38, 'Tốc độ tối đa', 1),
(39, 'RAM', 2),
(40, 'Loại RAM', 2),
(41, 'Tốc độ Bus RAM', 2),
(42, 'Hỗ trợ RAM tối đa', 2),
(43, 'Ổ cứng', 3),
(44, 'Hỗ Trợ', 3),
(45, 'Kích thước màn hình', 4),
(46, 'Độ phân giải', 4),
(47, 'Công nghệ màn hình', 4),
(48, 'Màn hình cảm ứng', 4),
(49, 'Thiết kế card', 5),
(50, 'Card đồ họa', 5),
(51, 'Cổng giao tiếp', 6),
(52, 'Kết nối không dây', 6),
(53, 'Khe đọc thẻ nhớ', 6),
(54, 'Webcam', 6),
(55, 'Tính năng khác', 6),
(56, 'Đèn bàn phím', 6),
(57, 'Model Adapter sạc', 8),
(58, 'Model Adapter sạc', 8),
(59, 'Loại PIN', 8),
(61, 'Hệ điều hành', 7),
(62, 'Kích thước', 9),
(63, 'Trọng lượng', 9),
(64, 'Chất liệu', 9),
(69, 'Thời điểm ra mắt', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_detail`
--

CREATE TABLE `attribute_detail` (
  `id_product` int(11) NOT NULL,
  `id_attribute` int(11) NOT NULL,
  `values` varchar(200) NOT NULL,
  `status` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `attribute_detail`
--

INSERT INTO `attribute_detail` (`id_product`, `id_attribute`, `values`, `status`) VALUES
(122, 35, 'Intel Core i3 Tiger Lake', 1),
(122, 36, '1115G4', 1),
(122, 37, '3.00 GHz', 1),
(122, 38, 'Turbo Boost 4.1 GHz', 0),
(122, 39, '4 GB', 1),
(122, 40, 'DDR4 (On board)', 1),
(122, 41, '3200 MHz', 1),
(122, 42, 'Không hỗ trợ nâng cấp', 0),
(122, 43, 'Intel Optane 32GB (H10) SSD 512 GB M.2 PCIe', 1),
(122, 44, 'Hỗ trợ khe cắm SSD M.2 PCIe', 1),
(122, 45, '14 inch', 1),
(122, 46, 'Full HD (1920 x 1080)', 1),
(122, 47, '60Hz Chống chói Anti Glare Tấm nền IPS LED Backlit', 0),
(122, 48, 'Không', 0),
(122, 49, 'Card đồ họa tích hợp', 0),
(122, 50, 'Intel UHD Graphics', 1),
(122, 51, '2 x USB 2.0, USB 3.1, HDMI ,USB Type-C', 1),
(122, 52, 'Wi-Fi 6 - 802.11ax, Bluetooth v5.0', 0),
(122, 53, 'Micro SD', 0),
(122, 54, 'HD webcam', 0),
(122, 55, 'Bảo mật vân tay', 0),
(122, 56, 'Không', 0),
(122, 57, 'AD2087020', 0),
(122, 58, 'PIN liền', 0),
(122, 59, 'Li-Ion 3 cell', 0),
(122, 61, 'Windows 10 Home SL', 1),
(122, 62, 'Dài 324 mm - Rộng 215 mm - Dày 17.9 mm', 0),
(122, 63, '1.4 kg', 0),
(122, 64, 'Vỏ kim loại', 1),
(123, 35, 'Intel Core i5 Tiger Lake', 1),
(123, 36, '1135G7', 1),
(123, 37, '2.40 GHz', 1),
(123, 38, 'Turbo Boost 4.2 GHz', 0),
(123, 39, '8 GB', 1),
(123, 40, 'DDR4 (On board)', 1),
(123, 41, '3200 MHz', 1),
(123, 42, 'Không hỗ trợ nâng cấp', 0),
(123, 43, 'SSD 512 GB M.2 PCIe', 1),
(123, 44, 'Hỗ trợ khe cắm SSD M.2 PCIe', 0),
(123, 45, '14 inch', 0),
(123, 46, 'Full HD (1920 x 1080)', 0),
(123, 47, '60Hz Tấm nền IPS Chống chói Anti Glare LED Backlit', 0),
(123, 48, 'Không', 0),
(123, 49, 'Card đồ họa tích hợp', 0),
(123, 50, 'Intel® Iris® Xe Graphics', 1),
(123, 51, '2 x USB 2.0 USB 3.1 HDMI USB Type-C', 1),
(123, 52, 'Wi-Fi 6 - 802.11ax, Bluetooth v5.0', 0),
(123, 53, 'Micro SD', 0),
(123, 54, 'Bảo mật vân tay', 0),
(123, 55, 'không', 0),
(123, 56, 'không', 0),
(123, 57, 'ADP-65DW Z', 0),
(123, 58, '', 0),
(123, 59, 'PIN liền', 1),
(123, 61, 'Windows 10 Home SL', 1),
(123, 62, 'Dài 324 mm - Rộng 215 mm - Dày 17.9 mm', 1),
(123, 63, '1.4 kg', 0),
(123, 64, 'nhựa', 0),
(146, 35, 'Intel Core i5 Comet Lake', 1),
(146, 36, '10300H', 1),
(146, 37, '2.50 GHz', 1),
(146, 38, 'Turbo Boost 4.5 GHz', 0),
(146, 39, '8 GB', 1),
(146, 40, 'DDR4 (2 khe)', 1),
(146, 41, '2933 MHz', 0),
(146, 42, '32 GB', 0),
(146, 43, 'SSD: 512 GB, M.2 PCIe', 1),
(146, 44, 'Hỗ trợ khe cắm SSD M.2 PCIe', 1),
(146, 45, '15.6 inch', 1),
(146, 46, 'Full HD (1920 x 1080), 144Hz', 1),
(146, 47, 'Chống chói Anti Glare, Tấm nền IPS', 0),
(146, 48, 'có', 0),
(146, 49, 'Card đồ họa rời', 0),
(146, 50, 'NVIDIA GeForce GTX 1650Ti 4GB', 0),
(146, 51, '2 x USB 3.2 HDMI LAN (RJ45) USB 2.0 USB Type-C', 1),
(146, 52, 'Wi-Fi 6 AX201, Bluetooth v5.0', 0),
(146, 53, 'có', 0),
(146, 54, 'HD webcam', 0),
(146, 55, 'Đèn bàn phím chuyển màu RGB', 0),
(146, 56, 'có', 0),
(146, 59, 'PIN liền', 0),
(146, 61, 'Windows 10 Home SL', 1),
(146, 62, 'Dài 359 mm - Rộng 256 mm - Dày 24.9 mm', 1),
(146, 63, '2.3 kg', 0),
(146, 64, 'nhưak', 0),
(147, 35, 'Intel Core i5 Tiger Lake', 1),
(147, 36, '1135G7', 1),
(147, 37, '2.40 GHz', 1),
(147, 38, 'Turbo Boost 4.2 GHz', 0),
(147, 39, '8 GB', 1),
(147, 40, 'LPDDR4X (On board)', 1),
(147, 41, '4266 MHz', 1),
(147, 42, 'Không hỗ trợ nâng cấp', 0),
(147, 43, 'SSD: 512 GB, M.2 PCIe', 1),
(147, 44, 'không', 0),
(147, 45, '14 inch', 1),
(147, 46, 'Full HD (1920 x 1080)', 1),
(147, 47, '60Hz Chống chói Anti Glare Tấm nền IPS LED Backlit', 0),
(147, 48, 'không', 0),
(147, 49, 'Card đồ họa tích hợp', 1),
(147, 50, 'Intel Iris Xe Graphics', 1),
(147, 51, '1 x USB 3.2 2 x Thunderbolt4 USB-C HDMI', 0),
(147, 52, 'Wi-Fi 6 AX201, Bluetooth v5.0', 0),
(147, 53, 'Micro SD', 0),
(147, 54, 'Camera IR, HD webcam', 0),
(147, 55, 'Mở khóa khuôn mặt, Độ bền chuẩn quân đội MLT STD 810G', 0),
(147, 56, 'Có', 0),
(147, 57, 'AD2129021', 0),
(147, 59, 'PIN liền', 1),
(147, 61, 'Windows 10 Home SL', 1),
(147, 62, 'Dài 319 mm - Rộng 208 mm - Dày 13.9 mm', 1),
(147, 63, '1.17 kg', 1),
(147, 64, 'Vỏ kim loại nguyên khối', 0),
(148, 35, 'Intel Core i7 Comet Lake', 1),
(148, 36, '10750H', 1),
(148, 37, '2.60 GHz', 1),
(148, 38, 'urbo Boost 5.0 GHz', 1),
(148, 39, '8 GB', 1),
(148, 40, 'DDR4 (2 khe)', 1),
(148, 41, '2933 MHz', 1),
(148, 42, '32 GB', 1),
(148, 43, 'SSD: 512 GB, M.2 PCIe', 1),
(148, 44, '	Hỗ trợ thêm 2 khe cắm SSD M.2 PCIe', 1),
(148, 45, '15.6 inch', 1),
(148, 46, 'Full HD (1920 x 1080), 144Hz', 1),
(148, 47, 'Tấm nền IPS', 1),
(148, 49, 'Card đồ họa rời', 1),
(148, 50, 'NVIDIA GeForce GTX 1650Ti 4GB', 1),
(148, 51, '3 x USB 3.2 HDMI LAN (RJ45) USB Type-C', 1),
(148, 52, 'Bluetooth 5.1, Wi-Fi 6 AX201', 1),
(148, 53, '	', 1),
(148, 54, 'Không tích hợp', 1),
(148, 55, 'Đèn bàn phím chuyển màu RGB', 1),
(148, 56, 'Có', 1),
(148, 57, 'ADP-150CH B', 1),
(148, 59, 'PIN liền', 1),
(148, 61, 'Windows 10 Home SL', 1),
(148, 62, 'Dài 360 mm - Rộng 275 mm - Dày 25.8 mm', 1),
(148, 63, '2.3 Kg', 1),
(148, 64, 'Vỏ nhựa', 1),
(149, 35, 'Intel Core i5 Comet Lake', 1),
(149, 36, '10300H', 1),
(149, 37, '2.50 GHz', 1),
(149, 38, 'Turbo Boost 4.5 GHz', 1),
(149, 39, '8 GB', 1),
(149, 40, 'DDR4 (2 khe)', 1),
(149, 41, '2933 MHz', 1),
(149, 42, '32 GB', 1),
(149, 43, 'SSD: 512 GB, M.2 PCIe,', 1),
(149, 44, 'Hỗ trợ khe cắm SSD M.2 PCIe', 1),
(149, 45, '15.6 inch', 1),
(149, 46, 'Full HD (1920 x 1080), 144Hz', 1),
(149, 47, 'Chống chói Anti Glare, Tấm nền IPS', 1),
(149, 48, 'không', 1),
(149, 49, 'Card đồ họa rời', 1),
(149, 50, 'NVIDIA GeForce GTX1650 4GB', 1),
(149, 51, '2 x USB 3.2 HDMI LAN (RJ45) USB 2.0 USB Type-C', 1),
(149, 52, 'Wi-Fi 6 AX201, Bluetooth v5.0', 1),
(149, 54, 'HD webcam', 1),
(149, 55, 'Đèn bàn phím chuyển màu RGB', 1),
(149, 56, 'có', 1),
(149, 59, 'PIN liền', 1),
(149, 61, 'Windows 10 Home SL', 1),
(149, 62, 'Dài 359 mm - Rộng 256 mm - Dày 24.9 mm', 1),
(149, 63, '2.3 kg', 1),
(149, 64, 'Vỏ nhựa - nắp lưng bằng kim loại', 1),
(150, 35, 'Intel Core i3 Tiger Lake', 1),
(150, 36, '1115G4', 1),
(150, 37, '3.00 GHz', 1),
(150, 38, 'Turbo Boost 4.1 GHz', 1),
(150, 39, '8 GB', 1),
(150, 40, 'DDR4 (2 khe)', 1),
(150, 41, '3200 MHz', 1),
(150, 42, '16 GB', 1),
(150, 43, 'SSD 256GB NVMe PCIe', 1),
(150, 44, 'Hỗ trợ khe cắm HDD SATA', 1),
(150, 45, '15.6 inch', 1),
(150, 46, 'Full HD (1920 x 1080)', 1),
(150, 47, '60Hz Chống chói Anti Glare WVA LED Backlit', 1),
(150, 48, 'không', 1),
(150, 49, '60Hz Chống chói Anti Glare WVA LED Backlit', 1),
(150, 50, 'Intel UHD Graphics', 1),
(150, 51, ' 2 x USB 3.2 HDMI LAN (RJ45) USB 2.0', 1),
(150, 52, 'Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac', 1),
(150, 53, 'SD', 1),
(150, 54, 'HD webcam', 1),
(150, 55, '	', 1),
(150, 56, 'Không có đèn', 1),
(150, 59, 'PIN liền', 1),
(150, 61, 'Windows 10 Home SL', 1),
(150, 62, 'dài 364 mm - Rộng 249 mm - Dày 19.9 mm', 1),
(150, 63, '1.98 kg', 1),
(150, 64, 'Vỏ nhựa', 1),
(151, 35, 'Intel Core i5 Tiger Lake', 1),
(151, 36, '1135G7', 1),
(151, 37, '2.40 GHz', 1),
(151, 38, 'Turbo Boost 4.2 GHz', 1),
(151, 39, '8 GB', 1),
(151, 40, 'DDR4 (2 khe)', 1),
(151, 41, '3200 MHz', 1),
(151, 42, '16 GB', 1),
(151, 43, 'SSD 256GB NVMe PCIe,', 1),
(151, 44, 'Hỗ trợ khe cắm HDD SATA', 1),
(151, 45, '15.6 inch', 1),
(151, 46, 'Full HD (1920 x 1080)', 1),
(151, 47, 'Chống chói Anti Glare WVA LED Backlight', 1),
(151, 49, 'Card đồ họa rời', 1),
(151, 50, 'NVIDIA GeForce MX330, 2GB', 1),
(151, 51, '2 x USB 3.2 HDMI LAN (RJ45) USB 2.0 USB Type-C', 1),
(151, 52, 'Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac', 1),
(151, 53, 'SD', 1),
(151, 54, 'HD webcam', 1),
(151, 56, 'Không có đèn', 1),
(151, 59, 'PIN liền', 1),
(151, 61, 'Windows 10 Home SL', 1),
(151, 62, 'Dài 363.96 mm - Rộng 249 mm - Dày 19.9 mm', 1),
(151, 63, '1.98 kg', 1),
(151, 64, 'Vỏ nhựa', 1),
(152, 35, 'Intel Core i5 Tiger Lake', 1),
(152, 36, '1135G7', 1),
(152, 37, '2.40 GHz', 1),
(152, 38, 'Turbo Boost 4.2 GHz', 1),
(152, 39, '8 GB', 1),
(152, 40, 'DDR4 (2 khe)', 1),
(152, 41, '3200 MHz', 1),
(152, 42, '32 GB', 1),
(152, 43, 'SSD 256GB NVMe PCIe', 1),
(152, 44, 'Hỗ trợ khe cắm HDD SATA', 1),
(152, 45, '14 inch', 1),
(152, 46, 'Full HD (1920 x 1080)', 1),
(152, 47, 'WVA , 60Hz', 1),
(152, 48, 'không', 1),
(152, 49, 'Card đồ họa rời', 1),
(152, 50, 'NVIDIA GeForce MX330, 2GB', 1),
(152, 51, '2 x USB 3.1 HDMI LAN (RJ45) USB 2.0 USB Type-C', 1),
(152, 52, 'Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac', 1),
(152, 53, 'SD', 1),
(152, 54, 'HD webcam', 1),
(152, 55, '	', 1),
(152, 56, 'Không có đèn', 1),
(152, 59, 'PIN liền', 1),
(152, 61, 'Windows 10 Home SL', 1),
(152, 62, 'Dài 328.7 mm - Rộng 239.5 mm - Dày 19.9 mm', 1),
(152, 63, '1.64 kg', 1),
(152, 64, 'Vỏ nhựa', 1),
(153, 35, 'Intel Core i5 Tiger Lake', 1),
(153, 36, '1135G7', 1),
(153, 37, '2.40 GHz', 1),
(153, 38, 'Turbo Boost 4.2 GHz', 1),
(153, 39, '8 GB', 1),
(153, 40, 'DDR4 (2 khe)', 1),
(153, 41, '	', 1),
(153, 42, '32 GB', 1),
(153, 43, 'SSD: 512 GB, M.2 PCIe', 1),
(153, 44, 'Hỗ trợ khe cắm SSD M.2 PCIe', 1),
(153, 45, '15.6 inch', 1),
(153, 46, 'Full HD (1920 x 1080)', 1),
(153, 47, 'WVA 60Hz Chống chói Anti Glare LED Backlit', 1),
(153, 49, 'Card đồ họa tích hợp', 1),
(153, 50, 'Intel Iris Xe Graphics', 1),
(153, 51, '2 x USB 3.1 HDMI USB Type-C', 1),
(153, 52, 'Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac', 1),
(153, 53, 'Micro SD', 1),
(153, 54, 'HD webcam', 1),
(153, 55, 'Bảo mật vân tay', 1),
(153, 56, 'Có', 1),
(153, 59, 'PIN liền', 1),
(153, 61, 'Windows 10 Home SL', 1),
(153, 62, 'Dài 356.1 mm - Rộng 234.5 mm - Dày 17.9 mm', 1),
(153, 63, '1.7 kg', 1),
(153, 64, 'Vỏ nhựa - nắp lưng bằng kim loại', 1),
(154, 35, 'Intel Core i5 Comet Lake', 1),
(154, 36, '10210U', 1),
(154, 37, '1.60 GHz', 1),
(154, 38, 'Turbo Boost 4.2 GHz', 1),
(154, 39, '8 GB', 1),
(154, 40, 'DDR4 (2 khe)', 1),
(154, 41, '2666 MHz', 1),
(154, 42, '32 GB', 1),
(154, 43, 'SSD: 512 GB, M.2 PCIe', 1),
(154, 44, ' Hỗ trợ khe cắm HDD SATA', 1),
(154, 45, '14 inch', 1),
(154, 46, 'Full HD (1920 x 1080)', 1),
(154, 47, '60Hz Tấm nền IPS Chống chói Anti-Glare', 1),
(154, 49, 'Card đồ họa tích hợp', 1),
(154, 50, 'Intel UHD Graphics', 1),
(154, 51, '3 x USB 3.1 HDMI LAN (RJ45) USB Type-C', 1),
(154, 52, 'Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac', 1),
(154, 53, 'SD', 1),
(154, 54, 'HD webcam', 1),
(154, 55, 'Độ bền chuẩn quân đội MLT STD 810G, Bảo mật vân tay', 1),
(154, 56, 'Không có đèn', 1),
(154, 59, 'PIN liền', 1),
(154, 61, 'Windows 10 Home SL', 1),
(154, 62, 'Dài 324 mm - Rộng 225.9 mm - Dày 19.9 mm', 1),
(154, 63, '1.5 kg', 1),
(154, 64, 'Vỏ nhựa', 1),
(155, 35, 'Intel Core i5 Tiger Lake', 1),
(155, 36, '1135G7', 1),
(155, 37, '2.40 GHz', 1),
(155, 38, 'Turbo Boost 4.2 GHz', 1),
(155, 39, '8 GB', 1),
(155, 40, 'DDR4 (2 khe)', 1),
(155, 41, '3200 MHz', 1),
(155, 42, '32 GB', 1),
(155, 43, 'SSD: 512 GB, M.2 PCIe', 1),
(155, 45, '15.6 inch', 1),
(155, 46, 'Full HD (1920 x 1080)', 1),
(155, 47, '	', 1),
(155, 48, '	', 1),
(155, 49, 'Card đồ họa tích hợp', 1),
(155, 50, 'Intel Iris Xe Graphics', 1),
(155, 51, '2 x USB 3.1 HDMI USB Type-C', 1),
(155, 52, 'Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac', 1),
(155, 53, 'SD', 1),
(155, 54, 'HD webcam', 1),
(155, 56, 'Không có đèn', 1),
(155, 59, 'PIN liền', 1),
(155, 61, 'Windows 10 Home SL', 1),
(155, 62, 'Dài 358.5 mm - Rộng 242 mm - Dày 18 mm', 1),
(155, 63, '1.592 kg', 1),
(155, 64, 'Vỏ nhựa', 1),
(156, 35, 'Intel Core i5 Broadwell', 1),
(156, 36, 'Hãng không công bố', 1),
(156, 37, '1.80 GHz', 1),
(156, 39, '8 GB', 1),
(156, 40, 'DDR3L(On board)', 1),
(156, 43, 'SSD: 128 GB', 1),
(156, 45, '13.3 inch', 1),
(156, 46, 'WXGA+(1440 x 900)', 1),
(156, 47, 'SSD: 128 GB', 1),
(156, 48, '	', 1),
(156, 50, 'Card đồ họa tích hợp', 1),
(156, 51, 'MagSafe 2 2 x USB 3.0 Thunderbolt 2', 1),
(156, 54, '1 MP , HD webcam', 1),
(156, 59, 'PIN liền', 1),
(156, 61, 'Mac OS', 1),
(156, 62, 'Dài 325 mm - Ngang 227 mm - Dày 17 mm', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_category`, `name_category`) VALUES
(1, 'CPU'),
(2, 'RAM'),
(3, 'Ổ cứng'),
(4, 'Màn hình'),
(5, 'Card màn hình'),
(6, 'Cổng kết nối'),
(7, 'Hệ điều hành'),
(8, 'Thiết kế'),
(9, 'Kích thước'),
(13, 'Thời điểm ra mắt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `ID` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Numberphone` int(13) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Img` text DEFAULT NULL,
  `Roles` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`ID`, `Username`, `Password`, `Name`, `Email`, `Numberphone`, `Address`, `Img`, `Roles`) VALUES
(1, 'dong', '22/9', 'ta đinh dong', 'tadinhdong4636@gmail.com', 543534, 'salung', '82569678_597422747719255_7120580302413496320_o.jpg', 0),
(2, 'TẠ VĂN KHANG', 'KHANG1995', 'KHANG', 'tavankhang1995@gmail.com', 1674678432, 'Nam Định', '139600677_248751959981392_6182219304141537372_n.jpg', 1),
(3, 'thao', 'thao123', 'Nguyễn ', 'thuthao0114@gmail.com', 2147483647, 'Thường Tín', 'banner_2.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `BannerID` int(11) NOT NULL,
  `LinkBanner` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_banner`
--

INSERT INTO `tbl_banner` (`BannerID`, `LinkBanner`) VALUES
(2, '800-170-800x170.png'),
(3, '800-170-800x170-8.png'),
(4, '800-170-800x170-51.png'),
(5, '800-170-800x170-53.png'),
(6, '800-170-800x170-55.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_billdetail`
--

CREATE TABLE `tbl_billdetail` (
  `BillID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `OrderQuanity` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_billdetail`
--

INSERT INTO `tbl_billdetail` (`BillID`, `ProductID`, `Name`, `OrderQuanity`, `Price`) VALUES
(54, 123, 'Asus VivoBook A415EA  (EB354T)', 1, 17290000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bills`
--

CREATE TABLE `tbl_bills` (
  `BillID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `PhoneNumber` int(11) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `DateCreateBill` date DEFAULT NULL,
  `TimeCreatBill` time NOT NULL,
  `Status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_bills`
--

INSERT INTO `tbl_bills` (`BillID`, `CustomerID`, `CustomerName`, `PhoneNumber`, `Address`, `DateCreateBill`, `TimeCreatBill`, `Status`) VALUES
(54, 1, 'nguyễn thị thu thảo', 0, '', '2021-03-23', '18:47:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `Gender` tinyint(4) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Img` text DEFAULT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`CustomerID`, `CustomerName`, `Gender`, `Email`, `Username`, `Password`, `Img`, `Status`) VALUES
(1, 'nguyễn thị thu thảo', 1, 'thao1122@gmail.com', 'thao', '12345', 'banner_2.png', 0),
(2, 'đặng thị linh', 1, 'danglinh1402@gmail.com', 'linh', '22222', NULL, 0),
(3, 'phạm ngọc ánh', 0, 'anhham111@gmail.com', 'anh', '111111', NULL, 0),
(4, 'Tạ Đình Động', 0, 'tadinhdong4636@gmail.com', 'ĐỘNG', 'dong', '108103150_704311890363673_1642678537444897520_n.jpg', 0),
(23, 'huyền', 1, 'aa@gmail.com', 'Huyền Bùi ', '1234', NULL, 0),
(24, 'tạ văn khang', 1, 'tadinhdong4636@gmail.com', 'khang', 'khang1995', NULL, 0),
(25, 'đỗ thị hương', 0, 'thao1122@gmail.com', 'hương', 'hương1977', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_img`
--

CREATE TABLE `tbl_img` (
  `ProductID` int(11) NOT NULL,
  `LinkImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_img`
--

INSERT INTO `tbl_img` (`ProductID`, `LinkImg`) VALUES
(122, 'asus-vivobook-a415ea-i3-eb353t-1-1-org - Copy.jpg'),
(122, 'asus-vivobook-a415ea-i3-eb353t-1-1-org.jpg'),
(122, 'asus-vivobook-a415ea-i3-eb353t-2-1-org (1).jpg'),
(122, 'asus-vivobook-a415ea-i3-eb353t-2-1-org.jpg'),
(122, 'asus-vivobook-a415ea-i3-eb353t-4-1-org.jpg'),
(122, 'asus-vivobook-a415ea-i3-eb353t-5-1-org.jpg'),
(122, 'asus-vivobook-a415ea-i3-eb353t-6-1-org.jpg'),
(122, 'asus-vivobook-a415ea-i3-eb353t-7-1-org.jpg'),
(123, 'asus-vivobook-a415ea-i5-eb354t-1-org.jpg'),
(123, 'asus-vivobook-a415ea-i5-eb354t-2-org.jpg'),
(123, 'asus-vivobook-a415ea-i5-eb354t-3-org.jpg'),
(123, 'asus-vivobook-a415ea-i5-eb354t-4-org.jpg'),
(123, 'asus-vivobook-a415ea-i5-eb354t-5-org.jpg'),
(123, 'asus-vivobook-a415ea-i5-eb354t-6-org.jpg'),
(146, 'asus-tuf-gaming-fx506li-i5-hn039t-1-org.jpg'),
(146, 'asus-tuf-gaming-fx506li-i5-hn039t-2-org.jpg'),
(146, 'asus-tuf-gaming-fx506li-i5-hn039t-3-org.jpg'),
(146, 'asus-tuf-gaming-fx506li-i5-hn039t-4-org.jpg'),
(146, 'asus-tuf-gaming-fx506li-i5-hn039t-5-org.jpg'),
(146, 'asus-tuf-gaming-fx506li-i5-hn039t-7-org.jpg'),
(147, 'asus-zenbook-ux425ea-i5-bm069t-1-org.jpg'),
(147, 'asus-zenbook-ux425ea-i5-bm069t-2-org.jpg'),
(147, 'asus-zenbook-ux425ea-i5-bm069t-3-org.jpg'),
(147, 'asus-zenbook-ux425ea-i5-bm069t-4-org.jpg'),
(147, 'asus-zenbook-ux425ea-i5-bm069t-5-org.jpg'),
(147, 'asus-zenbook-ux425ea-i5-bm069t-7-org.jpg'),
(148, 'asus-gaming-rog-strix-g512-i7-ial001t-1-1-180x125.jpg'),
(148, 'asus-gaming-rog-strix-g512-i7-ial001t-2-1-180x125.jpg'),
(148, 'asus-gaming-rog-strix-g512-i7-ial001t-3-1-180x125.jpg'),
(148, 'asus-gaming-rog-strix-g512-i7-ial001t-4-180x125.jpg'),
(148, 'asus-gaming-rog-strix-g512-i7-ial001t-5-180x125.jpg'),
(148, 'asus-gaming-rog-strix-g512-i7-ial001t-7-180x125.jpg'),
(148, 'asus-gaming-rog-strix-g512-i7-ial001t-8-180x125.jpg'),
(149, 'asus-uf-gaming-fx506lh-i5-hn002t-1-180x125.jpg'),
(149, 'asus-uf-gaming-fx506lh-i5-hn002t-2-180x125.jpg'),
(149, 'asus-uf-gaming-fx506lh-i5-hn002t-3-180x125.jpg'),
(149, 'asus-uf-gaming-fx506lh-i5-hn002t-4-180x125.jpg'),
(149, 'asus-uf-gaming-fx506lh-i5-hn002t-5-180x125.jpg'),
(149, 'asus-uf-gaming-fx506lh-i5-hn002t-7-180x125.jpg'),
(149, 'asus-uf-gaming-fx506lh-i5-hn002t-8-180x125.jpg'),
(150, 'dell-vostro-3500-i3-v5i3001w-1-180x125.jpg'),
(150, 'dell-vostro-3500-i3-v5i3001w-14-180x125.jpg'),
(150, 'dell-vostro-3500-i3-v5i3001w-2-180x125.jpg'),
(150, 'dell-vostro-3500-i3-v5i3001w-3-180x125.jpg'),
(150, 'dell-vostro-3500-i3-v5i3001w-4-180x125 (1).jpg'),
(150, 'dell-vostro-3500-i3-v5i3001w-4-180x125.jpg'),
(150, 'dell-vostro-3500-i3-v5i3001w-5-180x125.jpg'),
(150, 'dell-vostro-3500-i3-v5i3001w-7-180x125.jpg'),
(151, 'dell-vostro-3500-i5-v3500b-1-180x125.jpg'),
(151, 'dell-vostro-3500-i5-v3500b-12-180x125.jpg'),
(151, 'dell-vostro-3500-i5-v3500b-2-180x125.jpg'),
(151, 'dell-vostro-3500-i5-v3500b-3-180x125.jpg'),
(151, 'dell-vostro-3500-i5-v3500b-4-180x125.jpg'),
(151, 'dell-vostro-3500-i5-v3500b-5-180x125.jpg'),
(151, 'dell-vostro-3500-i5-v3500b-7-180x125.jpg'),
(151, 'dell-vostro-3500-i5-v3500b-9-180x125.jpg'),
(152, 'Am-thanh-800x444.jpg'),
(152, 'DDNB-800x444.jpg'),
(152, 'Hieu-nang-800x444.jpg'),
(152, 'Man-hinh-800x444.jpg'),
(152, 'NVIDIA-800x444.jpg'),
(152, 'SSD-800x444.jpg'),
(152, 'Thiet-ke-800x444.jpg'),
(153, 'dell-inspiron-5502-i5-1xgr11-1-1-180x125.jpg'),
(153, 'dell-inspiron-5502-i5-1xgr11-14-1-180x125.jpg'),
(153, 'dell-inspiron-5502-i5-1xgr11-2-1-180x125.jpg'),
(153, 'dell-inspiron-5502-i5-1xgr11-3-1-180x125.jpg'),
(153, 'dell-inspiron-5502-i5-1xgr11-4-1-180x125.jpg'),
(153, 'dell-inspiron-5502-i5-1xgr11-5-1-180x125.jpg'),
(153, 'dell-inspiron-5502-i5-1xgr11-7-1-180x125.jpg'),
(154, 'hp-348-g7-i5-9ph06pa-1-180x125.jpg'),
(154, 'hp-348-g7-i5-9ph06pa-10-180x125.jpg'),
(154, 'hp-348-g7-i5-9ph06pa-2-180x125.jpg'),
(154, 'hp-348-g7-i5-9ph06pa-3-180x125.jpg'),
(154, 'hp-348-g7-i5-9ph06pa-4-180x125.jpg'),
(154, 'hp-348-g7-i5-9ph06pa-5-180x125.jpg'),
(154, 'hp-348-g7-i5-9ph06pa-7-180x125 (1).jpg'),
(154, 'hp-348-g7-i5-9ph06pa-7-180x125.jpg'),
(154, 'hp-348-g7-i5-9ph06pa-8-180x125.jpg'),
(155, 'hp-15s-fq2028tu-i5-2q5y5pa-1-180x125.jpg'),
(155, 'hp-15s-fq2028tu-i5-2q5y5pa-12-180x125.jpg'),
(155, 'hp-15s-fq2028tu-i5-2q5y5pa-2-180x125.jpg'),
(155, 'hp-15s-fq2028tu-i5-2q5y5pa-3-180x125.jpg'),
(155, 'hp-15s-fq2028tu-i5-2q5y5pa-4-180x125.jpg'),
(155, 'hp-15s-fq2028tu-i5-2q5y5pa-5-180x125.jpg'),
(155, 'hp-15s-fq2028tu-i5-2q5y5pa-7-180x125.jpg'),
(155, 'hp-15s-fq2028tu-i5-2q5y5pa-9-180x125.jpg'),
(156, 'apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg'),
(156, 'apple-macbook-air-mqd32sa-a-i5-5350u-bac-2-180x125.jpg'),
(156, 'apple-macbook-air-mqd32sa-a-i5-5350u-bac-3-180x125.jpg'),
(156, 'apple-macbook-air-mqd32sa-a-i5-5350u-bac-4-180x125.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_mfname`
--

CREATE TABLE `tbl_mfname` (
  `IdName` int(11) NOT NULL,
  `MfName` varchar(50) DEFAULT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_mfname`
--

INSERT INTO `tbl_mfname` (`IdName`, `MfName`, `Status`) VALUES
(2, 'HP', 0),
(3, 'ASUS', 0),
(4, 'MACBOOK', 0),
(8, 'LENOVO', 0),
(9, 'DELL', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `MfName` int(11) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `PI` text DEFAULT NULL,
  `Img` text DEFAULT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`ProductID`, `ProductName`, `Number`, `MfName`, `Price`, `PI`, `Img`, `Status`) VALUES
(122, 'Laptop Asus VivoBook A415EA  (EB353T)', 7, 3, 14090000, '<h2>Đặc điểm nổi bật của Asus VivoBook A415EA i3 1115G4/4GB/32GB+512GB/Win10 (EB353T)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/230428/Slider/asus-vivobook-a415ea-i3-eb353t-121120-0908470.jpg\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: S&aacute;ch hướng dẫn, Th&ugrave;ng m&aacute;y, Adapter sạc</p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-a415ea-i3-eb353t\" target=\"_blank\">Laptop Asus VivoBook A415EA Intel Core i3 (EB353T)</a>&nbsp;sở hữu vi xử l&yacute; Core i3 thế hệ 11 mới nhất, ổ cứng SSD c&ugrave;ng&nbsp;bộ nhớ Intel Optane 32GB (H10) xử l&yacute; trơn tru c&aacute;c t&aacute;c vụ văn ph&ograve;ng, giải tr&iacute;. Ph&ugrave; hợp với những bạn đang t&igrave;m một chiếc laptop vừa c&oacute; hiệu năng ổn định vừa c&oacute; thiết kế mỏng nhẹ.</h3>\r\n\r\n<h3>Cấu h&igrave;nh ổn định phục vụ tốt cho c&aacute;c c&ocirc;ng việc văn ph&ograve;ng</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus-vivobook\" target=\"_blank\">Laptop Asus VivoBook</a>&nbsp;được trang bị bộ xử l&yacute;&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=core-i3\" target=\"_blank\">Intel Core i3</a>&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-11\" target=\"_blank\">thế hệ 11&nbsp;</a>với xung nhịp trung b&igrave;nh&nbsp;<strong>3.00 GHz</strong>&nbsp;ở c&aacute;c t&aacute;c vụ nhẹ nh&agrave;ng như: Mở tr&igrave;nh duyệt, Word, Excel,... v&agrave; đạt xung nhịp tối đa l&agrave;&nbsp;<strong>4.1 GHz&nbsp;</strong>ở c&aacute;c t&aacute;c vụ n&acirc;ng cao hơn như: Photoshop, chơi game,... nhờ Turbo Boost.&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://www.thegioididong.com/laptop?g=4-gb\" target=\"_blank\">RAM 4 GB</a></strong>&nbsp;mở được c&ugrave;ng l&uacute;c nhiều ứng dụng như vừa nghe nhạc vừa mở ứng dụng Word để l&agrave;m việc.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230428/asus-vivobook-a415ea-i3-eb353t3.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus VivoBook A415EA i3 (EB353T) - cấu hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/230428/asus-vivobook-a415ea-i3-eb353t3.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">Laptop</a>&nbsp;được trang bị ổ cứng&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">SSD 512 GB</a>&nbsp;</strong>kết hợp c&ugrave;ng<strong>&nbsp;bộ nhớ Intel Optane 32GB (H10)​&nbsp;</strong>mang đến tốc độ phản hồi nhanh ch&oacute;ng mở ứng dụng, khởi động m&aacute;y chỉ trong v&agrave;i gi&acirc;y. B&ecirc;n cạnh tốc độ xử l&yacute; nhanh th&igrave; ổ cứng c&ograve;n cung cấp cho bạn một kh&ocirc;ng gian lưu trữ lớn, bạn c&oacute; thể thoải m&aacute;i tải về những bộ phim y&ecirc;u th&iacute;ch m&agrave; kh&ocirc;ng phải lo hết dung lượng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230428/asus-vivobook-a415ea-i3-eb353t5.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus VivoBook A415EA i3 (EB353T) - Ổ cứng SSD\" src=\"https://cdn.tgdd.vn/Products/Images/44/230428/asus-vivobook-a415ea-i3-eb353t5.jpg\" /></a></p>\r\n\r\n<h3>Thiết kế mỏng nhẹ, thời thượng</h3>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop-asus\" target=\"_blank\">laptop Asus</a>&nbsp;n&agrave;y được thiết kế để ph&ugrave; hợp với nhu cầu di chuyển thường xuy&ecirc;n của học sinh sinh vi&ecirc;n v&agrave; d&acirc;n văn ph&ograve;ng, m&aacute;y chỉ nặng&nbsp;<strong>1.4 kg</strong>&nbsp;v&agrave; mỏng&nbsp;<strong>17.9 mm</strong>, laptop c&oacute; k&iacute;ch thước chỉ lớn hơn tờ giấy A4 một ch&uacute;t bạn c&oacute; thể dễ d&agrave;ng để v&agrave;o balo mang theo đến trường hoặc c&ocirc;ng ty.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230428/asus-vivobook-a415ea-i3-eb353t6.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus VivoBook A415EA i3 (EB353T) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/230428/asus-vivobook-a415ea-i3-eb353t6.jpg\" /></a></p>\r\n\r\n<p>M&aacute;y được trang bị bảo mật v&acirc;n tay bạn chỉ cần chạm nhẹ một c&aacute;i để mở m&aacute;y m&agrave; kh&ocirc;ng cần phải nhớ mật khẩu phiền phức v&agrave; kh&ocirc;ng phải lo lắng rằng kẻ gian sẽ đ&aacute;nh cắp mật khẩu để x&acirc;m nhập v&agrave;o m&aacute;y t&iacute;nh để đ&aacute;nh cắp t&agrave;i liệu của bạn.&nbsp;Ph&iacute;m Enter được thiết kế nổi bật với viền v&agrave;ng neon.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230428/asus-vivobook-a415ea-i3-eb353t1.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus VivoBook A415EA i3 (EB353T) - cảm biến vân tay\" src=\"https://cdn.tgdd.vn/Products/Images/44/230428/asus-vivobook-a415ea-i3-eb353t1.jpg\" /></a></p>\r\n\r\n<p>M&aacute;y hỗ trợ đa dạng c&aacute;c cổng kết nối phổ biến như: USB 2.0, USB 3.1, HDMI, USB Type-C gi&uacute;p m&aacute;y t&iacute;nh kết nối với c&aacute;c thiết bị ngoại vi một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230428/asus-vivobook-a415ea-i3-eb353t-103520-023504.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus VivoBook A415EA i3 1115G4 - Cổng kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/230428/asus-vivobook-a415ea-i3-eb353t-103520-023504.jpg\" /></a></p>\r\n\r\n<h3>Trải nghiệm h&igrave;nh ảnh ch&acirc;n thực hơn</h3>\r\n\r\n<p>Laptop sở hữu viền m&agrave;n h&igrave;nh&nbsp;<strong>NanoEdge</strong>&nbsp;si&ecirc;u mỏng, tỷ lệ m&agrave;n h&igrave;nh tr&ecirc;n th&acirc;n m&aacute;y l&agrave;&nbsp;<strong>87%</strong>&nbsp;cho bạn trải nghiệm m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/laptop-14-inch\" target=\"_blank\"><strong>14 inch</strong></a>&nbsp;tr&ecirc;n khung m&aacute;y nhỏ gọn. M&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải<strong>&nbsp;Full HD</strong>&nbsp;hiển thị h&igrave;nh ảnh sắc n&eacute;t, m&agrave;u sắc ch&acirc;n thực hơn.&nbsp;</p>\r\n\r\n<p>Tấm nền<strong>&nbsp;IPS</strong>&nbsp;cho g&oacute;c nh&igrave;n rộng bạn c&oacute; thể theo d&otilde;i m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh ở nhiều g&oacute;c độ kh&aacute;c nhau m&agrave; h&igrave;nh ảnh vẫn kh&ocirc;ng bị biến dạng hay lệch m&agrave;u. M&agrave;n h&igrave;nh c&ograve;n được trang bị th&ecirc;m lớp chống ch&oacute;i&nbsp;<a href=\"https://www.thegioididong.com/laptop-man-hinh-chong-choi\" target=\"_blank\">Anti Glare</a>&nbsp;gi&uacute;p bạn quan s&aacute;t r&otilde; m&agrave;n h&igrave;nh kể cả khi đang ở ngo&agrave;i trời.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230428/asus-vivobook-a415ea-i3-eb353t4.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus VivoBook A415EA i3 (EB353T) - Màn hình 14 inch Full HD\" src=\"https://cdn.tgdd.vn/Products/Images/44/230428/asus-vivobook-a415ea-i3-eb353t4.jpg\" /></a></p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh&nbsp;<strong>Audio by Harman/Kardon&nbsp;</strong>cho &acirc;m thanh ph&aacute;t ra ch&iacute;nh x&aacute;c, mạnh mẽ mang đến những ph&uacute;t gi&acirc;y giải tr&iacute; tuyệt vời.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230428/asus-vivobook-a415ea-i3-eb353t2.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus VivoBook A415EA i3 (EB353T) - Âm thanh to rõ \" src=\"https://cdn.tgdd.vn/Products/Images/44/230428/asus-vivobook-a415ea-i3-eb353t2.jpg\" /></a></p>\r\n\r\n<p>Laptop Asus VivoBook A415EA Intel Core i3 (EB353T) với vẻ ngo&agrave;i bắt mắt, hiệu năng ổn định v&agrave; một số t&iacute;nh năng th&ocirc;ng minh sẽ l&agrave; sự lựa chọn tuyệt vời trong d&ograve;ng laptop học tập - văn ph&ograve;ng.</p>\r\n', 'asus-vivobook-a415ea-i3-eb353t-062320-092323-600x600.jpg', 0),
(123, 'Asus VivoBook A415EA  (EB354T)', 0, 3, 17290000, '<h2><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-a415ea-i5-eb354t\" target=\"_blank\">Asus VivoBook A415EA i5 (EB354T)</a>&nbsp;l&agrave; chiếc laptop 14 inch nhỏ gọn nhưng v&ocirc; c&ugrave;ng mạnh mẽ. Nhờ đ&oacute;, bạn sẽ được tận hưởng hiệu suất cao cho c&ocirc;ng việc tr&ecirc;n chiếc m&aacute;y t&iacute;nh x&aacute;ch tay si&ecirc;u mỏng nhẹ n&agrave;y.</h2>\r\n\r\n<h3>Phong c&aacute;ch thiết kế sang trọng, cao cấp</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus-vivobook\" target=\"_blank\">Laptop Asus VivoBook</a>&nbsp;ngay lập tức mang đến sự thu h&uacute;t cho người d&ugrave;ng nhờ kiểu d&aacute;ng nhỏ gọn, thiết kế tinh tế c&ugrave;ng với m&agrave;u bạc thời trang. Với trọng lượng chỉ vỏn vẹn&nbsp;<strong>1.4 kg&nbsp;</strong>v&agrave; chỉ mỏng&nbsp;<strong>17.9 mm</strong>, bạn sẽ dễ d&agrave;ng mang laptop theo bất cứ nơi đ&acirc;u v&ocirc; c&ugrave;ng tiện lợi.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232445/thiet-ke.jpg\" onclick=\"return false;\"><img alt=\"Asus VivoBook A415EA i5 (EB354T) - thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/232445/thiet-ke.jpg\" /></a></p>\r\n\r\n<p>Tuy nhỏ gọn nhưng&nbsp;<a href=\"https://www.thegioididong.com/laptop-asus\" target=\"_blank\">latop Asus</a>&nbsp;được trang bị v&ocirc; c&ugrave;ng đầy đủ c&aacute;c cổng kết nối như&nbsp;<strong>USB Type-C</strong>,&nbsp;<strong>USB 3.1&nbsp;</strong>cho ph&eacute;p bạn kết nối hai chiều&nbsp;khiến cho việc kết nối c&aacute;c thiết bị trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết. Ngo&agrave;i ra, laptop c&ograve;n c&oacute; 2 cổng&nbsp;<strong>USB 2.0</strong>,&nbsp;<strong>HDMI&nbsp;</strong>v&agrave;&nbsp;đầu đọc thẻ nhớ&nbsp;<strong>Micro SD</strong>&nbsp;gi&uacute;p bạn&nbsp;kết nối với tất cả c&aacute;c thiết bị ngoại vi, m&agrave;n h&igrave;nh v&agrave; m&aacute;y chiếu hết sức nhanh ch&oacute;ng.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, với sự hỗ trợ kết nối kh&ocirc;ng d&acirc;y&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/wi-fi-chuan-80211ax-la-gi-tim-hieu-ve-wi-fi-the-he-1187524\" target=\"_blank\">Wi-Fi 6 - 802.11ax</a>&nbsp;cải thiện tốc độ tải đ&aacute;ng kể v&agrave;&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/bluetooth-50-chuan-bluetooth-danh-cho-thoi-dai-1113891\" target=\"_blank\">Bluetooth v5.0</a>&nbsp;cho tốc độ kết nối cực kỳ cao l&ecirc;n đến&nbsp;<strong>50 Mbps.</strong></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232445/ket-noi.jpg\" onclick=\"return false;\"><img alt=\"Asus VivoBook A415EA i5 (EB354T) - cổng kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/232445/ket-noi.jpg\" /></a></p>\r\n\r\n<h3>Hiệu năng mạnh mẽ gi&uacute;p xử l&yacute; c&ocirc;ng việc mượt m&agrave;</h3>\r\n\r\n<p>Nhờ trang bị chip&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\">Intel Core i5</a>&nbsp;</strong>Tiger Lake 1135G7<strong>&nbsp;</strong>thuộc d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-11\" target=\"_blank\">CPU thế hệ thứ 11</a>&nbsp;được Intel ra mắt v&agrave;o qu&yacute; 3 năm 2020, con chip sở hữu CPU&nbsp;4 nh&acirc;n, 8 luồng,<strong>&nbsp;</strong>c&oacute; xung nhịp cơ bản đạt&nbsp;<strong>2.4 GHz&nbsp;</strong>v&agrave; xung nhịp tối đa l&ecirc;n tới&nbsp;<strong>4.2 GHz,&nbsp;</strong>mang đến xung nhịp vượt trội, hiệu suất đồ họa cao, tiết kiệm pin hiệu quả.</p>\r\n\r\n<p>Đặc biệt, Core i5 - 1135G7 c&ograve;n đi k&egrave;m với card đồ họa&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-card-do-hoa-tich-hop-intel-iris-xe-graphics-1305192\" target=\"_blank\"><strong>Intel Iris Xe Graphics</strong></a>&nbsp;gi&uacute;p&nbsp;đ&aacute;p ứng tốt nhu cầu đồ họa căn bản như Photoshop, dựng video đơn giản v&agrave; chơi c&aacute;c tựa game hot trong năm 2020 như&nbsp;Corruption 2029,&nbsp;Call of Duty: World at War,&nbsp;Dark Soul,... với mức c&agrave;i đặt đồ họa từ thấp đến trung b&igrave;nh m&agrave; thao t&aacute;c v&ocirc; c&ugrave;ng mượt.</p>\r\n\r\n<p>Với&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\">RAM 8 GB</a>&nbsp;chuẩn</strong>&nbsp;<strong>DDR4</strong>, laptop sẽ gi&uacute;p bạn l&agrave;m được nhiều việc hơn nhờ n&acirc;ng cao khả năng đa nhiệm với tốc độ&nbsp;<strong>Bus RAM</strong>&nbsp;l&ecirc;n đến&nbsp;<strong>3200 MHz</strong>. Ngo&agrave;i ra, n&oacute; c&ograve;n cho ph&eacute;p bạn sử dụng c&aacute;c t&aacute;c vụ văn ph&ograve;ng, xử l&yacute; đồ họa mượt m&agrave; hay mở nhiều tab duyệt web c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng lo lag giật.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232445/cau-hinh.jpg\" onclick=\"return false;\"><img alt=\"Asus VivoBook A415EA i5 (EB354T) - cấu hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/232445/cau-hinh.jpg\" /></a></p>\r\n\r\n<p>Kh&ocirc;ng chỉ vậy,&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=ssd-512-gb\" target=\"_blank\"><strong>SSD 512 GB</strong></a>&nbsp;gi&uacute;p tăng tốc to&agrave;n bộ hệ thống, từ khởi động, mở ứng dụng cho đến sao ch&eacute;p dữ liệu, để bạn c&oacute; được trải nghiệm mượt m&agrave; hơn bao giờ hết. Hơn nữa, bạn sẽ c&oacute; một kh&ocirc;ng gian lưu trữ v&ocirc; c&ugrave;ng rộng lớn gi&uacute;p bạn thỏa sức lưu lại những tệp tin, t&agrave;i liệu hay những bức ảnh, video cần thiết.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232445/ssd.jpg\" onclick=\"return false;\"><img alt=\"Asus VivoBook A415EA i5 (EB354T) - ssd\" src=\"https://cdn.tgdd.vn/Products/Images/44/232445/ssd.jpg\" /></a></p>\r\n\r\n<h3>Trải nghiệm h&igrave;nh ảnh v&ocirc; c&ugrave;ng sống động, ch&acirc;n thực</h3>\r\n\r\n<p>Nhờ trang bị c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ips-lcd-la-gi-905752\" target=\"_blank\">IPS</a>,&nbsp;g&oacute;c nh&igrave;n của bạn cũng được mở rộng đến&nbsp;<strong>178 độ&nbsp;</strong>với m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/laptop-14-inch\" target=\"_blank\">14 inch</a>&nbsp;cho độ ph&acirc;n giải&nbsp;<strong>Full HD</strong>, mang đến những cảm gi&aacute;c mới lạ khi xem phim hay giải tr&iacute;.&nbsp;Ngo&agrave;i ra nhờ c&ocirc;ng nghệ chống ch&oacute;i&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-man-hinh-chong-choi-anti-glare-1182688\" target=\"_blank\">Anti Glare</a>, bạn dễ d&agrave;ng ho&agrave;n th&agrave;nh thật tốt c&ocirc;ng việc của m&igrave;nh cho d&ugrave; bạn ở bất kỳ đ&acirc;u, kể cả ngo&agrave;i trời nắng s&aacute;ng.</p>\r\n\r\n<p>Hơn nữa, với sự hỗ trợ của&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cong-nghe-led-backlit-led-backlight-1183188\" target=\"_blank\">LED Backlit</a>,&nbsp;laptop sẽ ti&ecirc;u thụ &iacute;t điện năng hơn, m&agrave;n h&igrave;nh &iacute;t n&oacute;ng hơn. Nhờ vậy, bạn đ&atilde; một phần n&agrave;o gi&uacute;p bảo vệ m&ocirc;i trường do kh&ocirc;ng sử dụng c&aacute;c kim loại nặng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232445/man-hinh.jpg\" onclick=\"return false;\"><img alt=\"Asus VivoBook A415EA i5 (EB354T) - màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/232445/man-hinh.jpg\" /></a></p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/audio-by-harman-la-gi-958471\" target=\"_blank\">Audio by Harman/Kardon</a>&nbsp;sẽ gi&uacute;p bạn đắm ch&igrave;m v&agrave;o những những &acirc;m thanh sống động v&agrave; ch&acirc;n thực. Ch&iacute;nh v&igrave; vậy, bạn sẽ được trải nghiệm &acirc;m thanh l&ecirc;n tầm cao mới.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232445/am-thanh.jpg\" onclick=\"return false;\"><img alt=\"Asus VivoBook A415EA i5 (EB354T) - âm thanh\" src=\"https://cdn.tgdd.vn/Products/Images/44/232445/am-thanh.jpg\" /></a></p>\r\n\r\n<p>Asus trang bị&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/fingerprint-sensor-la-gi-va-co-tac-dung-gi-904389\" target=\"_blank\">cảm biến v&acirc;n tay</a>&nbsp;tr&ecirc;n b&agrave;n di chuột gi&uacute;p người d&ugrave;ng mở m&aacute;y một c&aacute;ch tiện lợi. Đ&acirc;y l&agrave; t&iacute;nh năng hiện đại m&agrave; nhiều bạn trẻ y&ecirc;u th&iacute;ch v&igrave; vừa tiết kiệm thời gian vừa bảo mật an to&agrave;n hơn so với mật khẩu th&ocirc;ng thường. B&ecirc;n cạnh đ&oacute;, với HD webcam,&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;sẽ hỗ trợ cho bạn chất lượng camera khi c&oacute; cuộc họp trực tuyến hay gọi video.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232445/asus-vivobook-a415ea-i5-eb354t-254820-084834.jpg\" onclick=\"return false;\"><img alt=\"Asus VivoBook A415EA i5 (EB354T) - bảo mật\" src=\"https://cdn.tgdd.vn/Products/Images/44/232445/asus-vivobook-a415ea-i5-eb354t-254820-084834.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\">Laptop học tập - văn ph&ograve;ng</a>&nbsp;Asus VivoBook A415EA i5 (EB354T) thật sự rất ph&ugrave; hợp cho sinh vi&ecirc;n hay d&acirc;n văn ph&ograve;ng bởi hiệu năng ổn định v&agrave; thiết kế mỏng nhẹ của m&igrave;nh.</p>\r\n', 'asus-vivobook-a415ea-i5-eb354t-400x400.jpg', 0),
(146, 'Asus TUF Gaming FX506LI i5 10300H (HN039T)', 10, 3, 21990000, '<h2>Đặc điểm nổi bật của Asus TUF Gaming FX506LI i5 10300H/8GB/512GB/144Hz/4GB GTX1650Ti/Win10 (HN039T)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/234613/Slider/DNNB-800x444.jpg\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: D&acirc;y nguồn, S&aacute;ch hướng dẫn, Th&ugrave;ng m&aacute;y, Sạc Laptop Asus</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/laptop/asus-tuf-gaming-fx506li-i5-10300h-8gb-512gb-4gb-gt\" target=\"_blank\">Asus TUF Gaming FX506LI i5 (HN039T)</a>&nbsp;l&agrave; mẫu laptop gaming tầm trung với thiết kế c&aacute; t&iacute;nh mạnh mẽ, hiệu năng cao, m&agrave;n h&igrave;nh hiển thị đẹp. Đ&acirc;y ch&iacute;nh l&agrave; chiếc laptop l&iacute; tưởng cho cả học tập, l&agrave;m việc, thiết kế đồ họa v&agrave; đặc biệt l&agrave; chiến game cực đ&atilde;.</h2>\r\n\r\n<h3>Hiệu năng mạnh mẽ c&acirc;n mọi game hot&nbsp;</h3>\r\n\r\n<p>Chiếc m&aacute;y t&iacute;nh gaming n&agrave;y trang bị con chip Intel&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\">Core i5</a></strong>&nbsp;Comet Lake&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-10\" target=\"_blank\">gen 10</a>&nbsp;d&ograve;ng H cho khả năng xử l&iacute; mạnh v&agrave; ổn định. Kết hợp với&nbsp;<a href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\"><strong>RAM 8 GB</strong></a>&nbsp;sử dụng đa nhiệm mượt m&agrave;, người d&ugrave;ng c&oacute; thể xử l&yacute; c&ugrave;ng l&uacute;c nhiều việc kh&aacute;c nhau m&agrave; kh&ocirc;ng lo lắng việc đơ m&aacute;y. Với cấu h&igrave;nh n&agrave;y, người d&ugrave;ng c&oacute; thể l&agrave;m văn ph&ograve;ng, chiến game thỏa th&iacute;ch hay l&agrave;m đồ họa chuy&ecirc;n nghiệp m&aacute;y đều c&oacute; thể đ&aacute;p ứng tốt. Asus TUF Gaming hỗ trợ khe RAM trống để người d&ugrave;ng n&acirc;ng cấp th&ecirc;m RAM tối đa đến 32 GB nếu c&oacute; nhu cầu.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/234613/ram-8g.jpg\" onclick=\"return false;\"><img alt=\"Asus TUF Gaming FX506LI i5 (HN039T) - ram\" src=\"https://cdn.tgdd.vn/Products/Images/44/234613/ram-8g.jpg\" /></a></p>\r\n\r\n<p><strong><a href=\"https://www.thegioididong.com/laptop-card-do-hoa-roi\" target=\"_blank\">Card đồ họa rời</a></strong>&nbsp;<strong>NVIDIA GeForce GTX 1650Ti 4GB</strong>&nbsp;cho khả năng xử l&yacute; đồ họa ấn tượng, t&aacute;i hiện h&igrave;nh ảnh mượt m&agrave; khi chơi c&aacute;c tựa game y&ecirc;u cầu đồ họa cao như CS:GO, Far Cry 5, Genshin Impact,... đối với mức setting từ cao đến ultra. B&ecirc;n cạnh đ&oacute;, bạn cũng c&oacute; thể d&ugrave;ng m&aacute;y trong việc thiết kế poster, chỉnh sửa h&igrave;nh ảnh chuy&ecirc;n nghiệp tr&ecirc;n Photoshop, AI, dựng ảnh 3D bằng AutoCAD hay dựng video tr&ecirc;n Premiere.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/234613/card.jpg\" onclick=\"return false;\"><img alt=\"Asus TUF Gaming FX506LI i5 (HN039T) - card\" src=\"https://cdn.tgdd.vn/Products/Images/44/234613/card.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-o-cung-ssd\" target=\"_blank\"><strong>Ổ cứng SSD</strong></a>&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=ssd-512-gb\" target=\"_blank\"><strong>512 GB</strong></a>&nbsp;M.2 PCIe cho bạn kh&ocirc;ng gian số rộng lớn thỏa sức lưu phim ảnh hay c&aacute;c tựa game y&ecirc;u th&iacute;ch, c&aacute;c file t&agrave;i liệu nặng m&agrave; kh&ocirc;ng lo đầy bộ nhớ. Ổ cứng n&agrave;y cho tốc độ đọc ghi l&ecirc;n đến&nbsp;<strong>3500 MB/s</strong>&nbsp;để chiếc m&aacute;y t&iacute;nh gaming của bạn vận h&agrave;nh trơn tru, khởi động nhanh ch&oacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/234613/ssd-512.jpg\" onclick=\"return false;\"><img alt=\"Asus TUF Gaming FX506LI i5 (HN039T) - ssd\" src=\"https://cdn.tgdd.vn/Products/Images/44/234613/ssd-512.jpg\" /></a></p>\r\n\r\n<h3>Thiết kế gaming cực chất</h3>\r\n\r\n<p>Thiết kế của&nbsp;<a href=\"https://www.thegioididong.com/laptop-asus-tuf-gaming\" target=\"_blank\">Asus TUF Gaming</a>&nbsp;mang đậm chất gaming gi&uacute;p game thủ thể hiện được phong c&aacute;ch mạnh mẽ, c&aacute; t&iacute;nh. Tuy hầm hố l&agrave; thế nhưng th&acirc;n m&aacute;y được l&agrave;m kh&aacute; mỏng gọn để ph&ugrave; hợp với nhu cầu dịch chuyển nhiều của c&aacute;c bạn trẻ, chiếc m&aacute;y c&oacute; độ d&agrave;y&nbsp;<strong>24.9 mm</strong>, trọng lượng<strong>&nbsp;2.3 kg</strong>&nbsp;dễ d&agrave;ng cho v&agrave;o balo để đem theo v&agrave; kh&ocirc;ng tốn nhiều diện t&iacute;ch khi đặt tr&ecirc;n b&agrave;n l&agrave;m việc.</p>\r\n\r\n<p>Th&acirc;n m&aacute;y được l&agrave;m từ vỏ nhựa, ri&ecirc;ng nắp lưng bằng kim loại tạo cho m&aacute;y vẻ sang trọng v&agrave; cảm gi&aacute;c m&aacute;t tay khi sờ v&agrave;o. Asus TUF Gaming đ&atilde; trải qua c&aacute;c b&agrave;i kiểm tra khắc nghiệt về độ bền n&ecirc;n người d&ugrave;ng ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m khi sử dụng trong thời gian d&agrave;i.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/234613/thiet-ke.jpg\" onclick=\"return false;\"><img alt=\"Asus TUF Gaming FX506LI i5 (HN039T) - thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/234613/thiet-ke.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus\" target=\"_blank\">Laptop Asus</a>&nbsp;Gaming FX506LI trang bị c&ocirc;ng nghệ tản nhiệt HyperCool đem đến 3 t&ugrave;y chỉnh chế độ quạt c&ugrave;ng c&ocirc;ng nghệ Fan Overboost gi&uacute;p m&aacute;y duy tr&igrave; nhiệt độ ổn định để vận h&agrave;nh được hết c&ocirc;ng suất.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/234613/khe-tan-nhiet.jpg\" onclick=\"return false;\"><img alt=\"Asus TUF Gaming FX506LI i5 (HN039T) - tản nhiệt\" src=\"https://cdn.tgdd.vn/Products/Images/44/234613/khe-tan-nhiet.jpg\" /></a></p>\r\n\r\n<p>Phần mềm Gaming Armory Crate chuy&ecirc;n dụng cho ph&eacute;p kiểm so&aacute;t hệ thống, thiết lập chế độ ph&ugrave; hợp. Bạn cũng c&oacute; thể đổi m&agrave;u b&agrave;n ph&iacute;m tr&ecirc;n ứng dụng n&agrave;y.&nbsp;</p>\r\n\r\n<p>Cổng USB 3.2, HDMI, USB 2.0, USB Type-C đa năng hỗ trợ c&ocirc;ng nghệ DisplayPort 1.4 hỗ trợ kết nối m&agrave;n h&igrave;nh chơi game G-SYNC phụ ở độ ph&acirc;n giải l&ecirc;n đến 4K. M&aacute;y c&oacute; chuẩn kết nối kh&ocirc;ng d&acirc;y Wi-Fi 6 - 802.11ax v&agrave; Bluetooth v5.0 cho ph&eacute;p kết nối nhanh, thỏa sức l&agrave;m việc, chơi game online với đường truyền ổn định.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/234613/cong.jpg\" onclick=\"return false;\"><img alt=\"Asus TUF Gaming FX506LI i5 (HN039T) - kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/234613/cong.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">Laptop</a>&nbsp;trang bị đ&egrave;n nền&nbsp;<strong>b&agrave;n ph&iacute;m RGB</strong>&nbsp;gi&uacute;p bạn điều khiển m&agrave;u sắc v&agrave; thể hiện phong c&aacute;ch độc đ&aacute;o cho ri&ecirc;ng m&igrave;nh. Cụm ph&iacute;m WASD được thiết kế nổi bật để bạn dễ thao t&aacute;c khi chơi game.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/234613/den-ban-phim.jpg\" onclick=\"return false;\"><img alt=\"Asus TUF Gaming FX506LI i5 (HN039T) - bàn phím\" src=\"https://cdn.tgdd.vn/Products/Images/44/234613/den-ban-phim.jpg\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh giải tr&iacute; chuẩn gaming&nbsp;</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh k&iacute;ch thước&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-tren-15-inch\" target=\"_blank\">15.6 inch</a>&nbsp;</strong>độ ph&acirc;n giải&nbsp;<strong>Full HD (1920 x 1080)</strong>&nbsp;với tốc độ qu&eacute;t l&ecirc;n đến&nbsp;<strong>144Hz&nbsp;</strong>l&agrave; m&agrave;n h&igrave;nh l&iacute; tưởng cho việc chơi c&aacute;c tựa game tốc độ với h&igrave;nh ảnh r&otilde; n&eacute;t, m&agrave;u sắc rực rỡ, loại bỏ hiện tượng x&eacute; h&igrave;nh.&nbsp;</p>\r\n\r\n<p>Được thiết kế ph&ugrave; hợp với xu hướng hiện đại,&nbsp;<a href=\"https://www.thegioididong.com/laptop-vien-man-hinh-mong\" target=\"_blank\">viền m&agrave;n h&igrave;nh mỏng</a>&nbsp;cả 3 cạnh để đem đến kh&ocirc;ng gian giải tr&iacute; tối đa cho người d&ugrave;ng, kết hợp với&nbsp;<strong>tấm nền IPS</strong>&nbsp;cho khả năng hiển thị r&otilde; n&eacute;t ở mọi g&oacute;c nh&igrave;n. Ngo&agrave;i ra, m&agrave;n h&igrave;nh cũng c&oacute; trang bị c&ocirc;ng nghệ chống ch&oacute;i&nbsp;<strong>Anti Glare</strong>&nbsp;để giảm thiểu t&igrave;nh trạng m&agrave;n h&igrave;nh bị ch&oacute;i khi sử dụng ngo&agrave;i nắng.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/234613/man-hinh.jpg\" onclick=\"return false;\"><img alt=\"Asus TUF Gaming FX506LI i5 (HN039T) - màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/234613/man-hinh.jpg\" /></a></p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh DTS X Ultra Audio cho chất &acirc;m mạnh mẽ uy lực, thể hiện chi tiết từng &acirc;m nhỏ nhất đồng thời giả lập &acirc;m v&ograve;m cho bạn cảm gi&aacute;c như đang thật sự h&ograve;a m&igrave;nh trong game.</p>\r\n\r\n<p>Asus TUF Gaming FX506LI i5 (HN039T) l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\">laptop gaming</a>&nbsp;d&agrave;nh cho c&aacute;c bạn trẻ hiện đại với cấu h&igrave;nh &ldquo;c&acirc;n&rdquo; mọi nhu cầu từ l&agrave;m việc đến giải tr&iacute; v&agrave; được b&aacute;n với mức gi&aacute; phải chăng.&nbsp;</p>\r\n', 'TUF2-600x400.jpg', 0),
(147, 'Asus ZenBook UX425EA i5 1135G7 (BM069T)', 0, 3, 22390000, '<h2>Đặc điểm nổi bật của Asus ZenBook UX425EA i5 1135G7/8GB/512GB/C&aacute;p/T&uacute;i/Win10 (BM069T)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/230351/Slider/asus-zenbook-ux425ea-i5-bm069t-071220-0347280.jpg\" /><img src=\"https://www.thegioididong.com/Content/desktop/images/V4/icon-yt.png\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: D&acirc;y nguồn, S&aacute;ch hướng dẫn, Bao da, Adapter sạc, C&aacute;p ( Type C to 3.5mm ) , Adapter chuyển ( USB to LAN )</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/laptop/asus-zenbook-ux425ea-i5-bm069t\" target=\"_blank\">Si&ecirc;u phẩm Asus ZenBook UX425EA i5 (BM069T)</a>&nbsp;vừa ra mắt đến từ nh&agrave; Asus sở hữu thiết kế đẹp tinh tế, di động tối ưu c&ugrave;ng độ bền chuẩn qu&acirc;n đội. Đặc biệt, chiếc m&aacute;y n&agrave;y sở hữu con chip Intel thế hệ 11 mới nhất đến thời điểm hiện tại đem đến những t&iacute;nh năng hiện đại v&agrave; t&acirc;n tiến nhất.</h2>\r\n\r\n<h3>Mỏng nhẹ hơn bao giờ hết&nbsp;</h3>\r\n\r\n<p>Thiết kế của Asus kh&ocirc;ng bao giờ l&agrave;m người d&ugrave;ng thất vọng, ở phi&ecirc;n bản n&agrave;y,&nbsp;<a href=\"https://www.thegioididong.com/laptop-asus\" target=\"_blank\">laptop Asus</a>&nbsp;ZenBook vẻ ngo&agrave;i gần như ho&agrave;n hảo. Vỏ kim loại sang trọng với v&acirc;n đồng t&acirc;m tr&ecirc;n mặt lưng, logo Asus ZenBook được đặt gọn về một ph&iacute;a. K&iacute;ch thước nhỏ gọn, trọng lượng chỉ&nbsp;<strong>1.17 kg</strong>, độ d&agrave;y&nbsp;<strong>13.9 mm&nbsp;</strong>khiến ZenBook 14 trở th&agrave;nh người bạn đồng h&agrave;nh l&iacute; tưởng d&agrave;nh cho bạn.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094547.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094547.jpg\" /></a></p>\r\n\r\n<p>Tự tin tuy&ecirc;n bố đạt độ bền chuẩn qu&acirc;n đội, ZenBook 14 đ&atilde; được kiểm tra khắc nghiệt như: Thả rơi tự do, c&aacute;c b&agrave;i kiểm tra về nhiệt độ, độ ẩm,... c&aacute;c chỉ số của&nbsp;<a href=\"https://www.thegioididong.com/laptop-asus-zenbook\" target=\"_blank\">Asus ZenBook</a>&nbsp;14 ho&agrave;n to&agrave;n vượt xa những chiếc laptop th&ocirc;ng thường, kh&ocirc;ng sợ hư hại trước những va chạm hằng ng&agrave;y cũng như thoải m&aacute;i đem theo l&ecirc;n m&aacute;y bay để đi c&ocirc;ng t&aacute;c m&agrave; kh&ocirc;ng sợ ch&aacute;y nổ bởi &aacute;p suất.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-300120-010103.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - Độ bền\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-300120-010103.jpg\" /></a></p>\r\n\r\n<h3>Thiết kế hướng đến sự tiện lợi</h3>\r\n\r\n<p>Kết nối linh hoạt ở bất k&igrave; đ&acirc;u với những chuẩn kết nối đầy đủ v&agrave; hiện đại:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/usb-32-la-gi-co-nhung-gi-dac-biet-1261132\" target=\"_blank\">USB 3.2</a>, HDMI, 2 cổng Thunderbolt 4 (USB-C) hỗ trợ sạc nhanh v&agrave; xuất h&igrave;nh ảnh ra m&agrave;n h&igrave;nh 4K. B&ecirc;n cạnh đ&oacute;,&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;cũng giữ lại khe đọc thẻ Micro SD để người d&ugrave;ng tiện cho việc trao đổi dữ liệu, h&igrave;nh ảnh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094525.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - Cổng kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094525.jpg\" /></a></p>\r\n\r\n<p>ZenBook 14 c&oacute; thiết kế b&agrave;n ph&iacute;m s&aacute;t cạnh gi&uacute;p tăng k&iacute;ch thước b&agrave;n ph&iacute;m để g&otilde; thoải m&aacute;i hơn. NumberPad 2.0 được th&iacute;ch hợp tr&ecirc;n b&agrave;n di chuột gi&uacute;p dễ thao t&aacute;c v&agrave; nhập liệu.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-300120-010111.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - NumberPad 2.0\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-300120-010111.jpg\" /></a></p>\r\n\r\n<p>Camera hồng ngoại gi&uacute;p đăng nhập bằng khu&ocirc;n mặt nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng với Windows Hello. N&oacute; thậm ch&iacute; hoạt động trong điều kiện &aacute;nh s&aacute;ng yếu, bạn kh&ocirc;ng cần phải nhập mật khẩu.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-300120-010107.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - Mở khóa bằng khuôn mặt\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-300120-010107.jpg\" /></a></p>\r\n\r\n<p>ZenBook 14 c&oacute; bản lề ErgoLift được chế tạo ch&iacute;nh x&aacute;c gi&uacute;p tự động n&acirc;ng m&aacute;y một g&oacute;c 2.5 độ tạo n&ecirc;n g&oacute;c đ&aacute;nh m&aacute;y tối ưu v&agrave; l&agrave;m m&aacute;t tối ưu cũng như gi&uacute;p n&acirc;ng cao chất lượng &acirc;m thanh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094515.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - Bản lề\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094515.jpg\" /></a></p>\r\n\r\n<h3>Mạnh mẽ, nhanh ch&oacute;ng với vi xử l&iacute; t&acirc;n tiến nhất&nbsp;</h3>\r\n\r\n<p>Bộ vi xử l&yacute; Intel&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\">Core i5</a></strong>&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-11\" target=\"_blank\">thế hệ thứ 11</a>&nbsp;mới nhất gi&uacute;p ZenBook 14 gi&uacute;p xử l&yacute; đa nhiệm, l&agrave;m việc năng suất, được bổ sung bởi đồ họa t&iacute;ch hợp Intel Iris Xe10 mới cho hiệu suất vượt trội. C&aacute;c t&aacute;c vụ văn ph&ograve;ng, ứng dụng doanh nghiệp, ứng dụng đồ họa đều kh&ocirc;ng thể l&agrave;m kh&oacute; được chiếc ZenBook 14 n&agrave;y.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094519.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - Chip Intel\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094519.jpg\" /></a></p>\r\n\r\n<p>ZenBook 14 sở hữu bộ nhớ&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=8-gb\" target=\"_blank\"><strong>RAM 8 GB</strong></a>&nbsp;gi&uacute;p sử dụng được nhiều ứng dụng c&ugrave;ng l&uacute;c, chẳng hạn như vừa lướt web vừa chỉnh sửa ảnh tr&ecirc;n Photoshop.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094538.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - RAM\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094538.jpg\" /></a></p>\r\n\r\n<p>M&aacute;y cũng trang bị&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-o-cung-ssd\" target=\"_blank\">ổ cứng SSD</a></strong>&nbsp;PCIe 512 GB cực nhanh v&agrave; chuẩn WiFi 6 mới nhất cho hiệu suất vượt trội, kết nối kh&ocirc;ng d&acirc;y nhanh ch&oacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094542.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - SSD\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094542.jpg\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh NanoEdge tuyệt đẹp, độ s&aacute;ng đ&aacute;ng kinh ngạc</h3>\r\n\r\n<p>ZenBook 14 c&oacute; m&agrave;n h&igrave;nh&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-14-inch\" target=\"_blank\">14 inch</a></strong>&nbsp;NanoEdge&nbsp;<a href=\"https://www.thegioididong.com/laptop-vien-man-hinh-mong\" target=\"_blank\">viền mỏng</a>&nbsp;bốn cạnh tạo ra tỷ lệ m&agrave;n h&igrave;nh so với th&acirc;n m&aacute;y l&agrave; 90% để c&oacute; trải nghiệm xem đắm ch&igrave;m hơn.</p>\r\n\r\n<p>Độ ph&acirc;n giải&nbsp;<strong>Full HD</strong>&nbsp;kết hợp với tấm nền IPS đem đến h&igrave;nh ảnh sắc n&eacute;t, m&agrave;u sắc trung thực v&agrave; g&oacute;c nh&igrave;n cực rộng. C&ocirc;ng nghệ chống ch&oacute;i v&agrave; độ s&aacute;ng m&agrave;n h&igrave;nh l&ecirc;n đến 400 nits cho h&igrave;nh ảnh r&otilde; n&eacute;t ngay cả khi sử dụng ngo&agrave;i trời nắng.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094510.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094510.jpg\" /></a></p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh Harman Kardon đảm bảo &acirc;m thanh trong trẻo, đắm ch&igrave;m v&agrave; thư gi&atilde;n nhất.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-300020-010054.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - Âm thanh\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-300020-010054.jpg\" /></a></p>\r\n\r\n<p>Với thời lượng pin cực k&igrave; ấn tượng - l&ecirc;n đến&nbsp;<strong>21 giờ</strong>&nbsp;sử dụng. T&iacute;nh năng sạc nhanh của n&oacute; c&oacute; thể kh&ocirc;i phục pin về mức sạc 60% chỉ trong 49 ph&uacute;t gi&uacute;p cho Asus ZenBook lu&ocirc;n ở t&igrave;nh trạng sẵn s&agrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094534.jpg\" onclick=\"return false;\"><img alt=\"Asus ZenBook UX425EA i5 (BM069T) - Pin\" src=\"https://cdn.tgdd.vn/Products/Images/44/230351/asus-zenbook-ux425ea-i5-bm069t-304520-094534.jpg\" /></a></p>\r\n\r\n<p>Với ngoại h&igrave;nh đẹp, cấu h&igrave;nh mạnh mẽ v&agrave; những t&iacute;nh năng hiện đại nhất, Asus ZenBook UX425EA i5 (BM069T) quả thực l&agrave; một &ldquo;đối thủ đ&aacute;ng gờm&rdquo; trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=cao-cap-sang-trong\" target=\"_blank\">laptop cao cấp - sang trọng</a>.</p>\r\n', 'asus-zenbook-ux425ea-i5-bm069t-grey-new-600x600.jpg', 0),
(148, 'Asus Gaming Rog Strix G512 i7 10750H/144Hz (IAL001T)', 19, 3, 28490000, '<h2>Đặc điểm nổi bật của Asus Gaming Rog Strix G512 i7 10750H/8GB/512GB/144Hz/4GB GTX1650Ti/Win10 (IAL001T)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/225687/Slider/vi-vn-asus-gaming-rog-strix-g512-i7-ial001t-thumbvideo.jpg\" /><img src=\"https://www.thegioididong.com/Content/desktop/images/V4/icon-yt.png\" /></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/card-do-hoa-roi-nvidia-geforce-gtx-1650-co-manh-kh-1201415\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-vi-xu-ly-intel-core-the-he-10-1212148\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/ram-lap-top-la-gi-dung-luong-bao-nhieu-la-du-1172167\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: D&acirc;y nguồn, S&aacute;ch hướng dẫn, Th&ugrave;ng m&aacute;y, Sạc Laptop Asus</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/laptop/asus-gaming-rog-strix-g512-i7-ial001t\" target=\"_blank\">Laptop Asus Gaming Rog Strix G512 i7 (IAL001T)</a>&nbsp;l&agrave; chiếc laptop gaming c&oacute; cấu h&igrave;nh mạnh mẽ v&agrave; thiết kế hầm hố đậm chất gaming. M&aacute;y được trang bị chip Intel Core i7 thế hệ mới nhất c&ugrave;ng với m&agrave;n h&igrave;nh cao cấp chuẩn gaming gi&uacute;p bạn thỏa sức chiến những tựa game cực đỉnh.</h2>\r\n\r\n<h3>Thiết kế mạnh mẽ đậm chất gaming</h3>\r\n\r\n<p>Chiếc laptop&nbsp;<a href=\"https://www.thegioididong.com/laptop-asus-rog\" target=\"_blank\">Asus Gaming Rog</a>&nbsp;n&agrave;y c&oacute; thiết kế vỏ nhựa nặng<strong>&nbsp;2.3 kg</strong>&nbsp;kh&aacute; nhẹ so với c&aacute;c d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\">laptop gaming</a>&nbsp;kh&aacute;c.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-183120-043149.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus Gaming Rog Strix G512 i7 (IAL001T) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-183120-043149.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; b&agrave;n ph&iacute;m c&ograve;n được trang bị đ&egrave;n nền chuyển m&agrave;u tạo n&eacute;t độc đ&aacute;o v&agrave; gi&uacute;p bạn c&oacute; thể sử dụng m&aacute;y kể cả khi ở trong b&oacute;ng tối.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-183220-043235.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus Gaming Rog Strix G512 i7 (IAL001T) - Đèn bàn phím\" src=\"https://cdn.tgdd.vn/Products/Images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-183220-043235.jpg\" /></a></p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh, chiến game thả ga</h3>\r\n\r\n<p>Laptop sử dụng bộ vi xử l&yacute;&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=core-i7\" target=\"_blank\">Intel Core i7</a></strong>&nbsp;thế hệ thứ 10 cho bạn hiệu năng tốt hơn so với c&aacute;c d&ograve;ng thế hệ cũ. B&ecirc;n cạnh đ&oacute; m&aacute;y c&ograve;n được trang bị th&ecirc;m&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=8-gb\" target=\"_blank\">RAM 8 GB&nbsp;</a></strong>đ&atilde; nhiệm ổn định, bạn c&oacute; thể mở c&ugrave;ng l&uacute;c nhiều ứng dụng m&agrave; kh&ocirc;ng lo m&aacute;y bị đơ hay giật.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-250820-0949260.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus Gaming Rog Strix G512 i7 (IAL001T) - Cấu hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-250820-0949260.jpg\" /></a></p>\r\n\r\n<p><strong><a href=\"https://www.thegioididong.com/laptop-o-cung-ssd\" target=\"_blank\">Ổ cứng&nbsp;SSD</a>&nbsp;512 GB</strong>&nbsp;cho tốc độ khởi động m&aacute;y, mở ứng dụng cực nhanh chỉ trong v&agrave;i gi&acirc;y. Ngo&agrave;i ra, c&ograve;n hỗ trợ th&ecirc;m 2 khe cắm SSD gi&uacute;p bạn dễ d&agrave;ng n&acirc;ng cấp bộ nhớ cho chiếc laptop của m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-110821-090815.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus Gaming Rog Strix G512 i7 (IAL001T) - SSD\" src=\"https://cdn.tgdd.vn/Products/Images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-110821-090815.jpg\" /></a></p>\r\n\r\n<h3>N&acirc;ng t&acirc;m giải tr&iacute; với card đồ họa mạnh mẽ</h3>\r\n\r\n<p>Với card đồ họa rời&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/card-do-hoa-roi-nvidia-geforce-gtx-1650-co-manh-kh-1201415\" target=\"_blank\"><strong>NVIDIA GeForce GTX 1650Ti 4 GB</strong></a>&nbsp;bạn c&oacute; thể chơi c&aacute;c tựa game c&oacute; cấu h&igrave;nh khủng như: Far Cry 5, Just Cause, Project Cars,... hay sử dụng c&aacute;c phần mềm thiết kế như: Adobe Photoshop, Ai, Premiere,...</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-043020-093006.jpg\" onclick=\"return false;\"><img alt=\"Asus Gaming Rog Strix G512 i7 (IAL001T) - NVIDIA GeForce GTX 1650Ti 4GB\" src=\"https://cdn.tgdd.vn/Products/Images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-043020-093006.jpg\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh lớn, h&igrave;nh ảnh chất lượng cao</h3>\r\n\r\n<p>M&aacute;y được trang bị m&agrave;n h&igrave;nh<strong>&nbsp;<a href=\"https://www.thegioididong.com/laptop-tren-15-inch\" target=\"_blank\">15.6 inch</a></strong>&nbsp;độ ph&acirc;n giải&nbsp;<strong>Full HD</strong>&nbsp;cho h&igrave;nh ảnh hiển thị sắc n&eacute;t n&acirc;ng cao trải nghiệm h&igrave;nh ảnh khi chơi game. C&ocirc;ng nghệ<strong>&nbsp;IPS</strong>&nbsp;cho g&oacute;c nh&igrave;n si&ecirc;u rộng th&aacute;ch thức mọi vị tr&iacute; trong khi chơi game.</p>\r\n\r\n<p>Viền m&agrave;n h&igrave;nh được thiết kế mỏng để c&aacute;c game thủ c&oacute; được trải nghiệm chơi game ch&igrave;m đắm v&agrave; đ&atilde; mắt nhất.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-110921-090945.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus Gaming Rog Strix G512 i7 (IAL001T) - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-110921-090945.jpg\" /></a></p>\r\n\r\n<h3>N&acirc;ng tầm giải tr&iacute; với &acirc;m thanh cực đỉnh</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus\" target=\"_blank\">Laptop Asus</a>&nbsp;sở hữu c&ocirc;ng nghệ &acirc;m thanh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-smart-ampart-amp-tren-laptop-la-gi-1273792\" target=\"_blank\"><strong>Smart AMP</strong></a>&nbsp;đem đến hiệu ứng &acirc;m thanh vang vọng cực kỳ sống động n&acirc;ng cao chất lượng giải tr&iacute; cho bạn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-183220-043207.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus Gaming Rog Strix G512 i7 (IAL001T) - Âm thanh\" src=\"https://cdn.tgdd.vn/Products/Images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-183220-043207.jpg\" /></a></p>\r\n\r\n<h3>Hỗ trợ đa dạng cổng kết nối</h3>\r\n\r\n<p>Chiếc laptop n&agrave;y hỗ trợ c&aacute;c cổng kết nối như:<strong>&nbsp;<a href=\"https://https//www.thegioididong.com/hoi-dap/usb-32-la-gi-co-nhung-gi-dac-biet-1261132\" target=\"_blank\">USB 3.2</a></strong>,<strong>&nbsp;USB Type - C</strong>,<strong>&nbsp;HDMI</strong>,&nbsp;<strong>LAN</strong>&nbsp;gi&uacute;p bạn dễ d&agrave;ng kết nối chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;của m&igrave;nh với c&aacute;c thiết bị kh&aacute;c.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-272120-022128.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus Gaming Rog Strix G512 i7 (IAL001T) - Kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/225687/asus-gaming-rog-strix-g512-i7-ial001t-272120-022128.jpg\" /></a></p>\r\n\r\n<p>Với c&aacute;c t&iacute;nh năng tr&ecirc;n chiếc laptop Asus Gaming Rog Strix G512 i7&nbsp;(IAL001T) n&agrave;y sẽ l&agrave; một sự lựa chọn l&yacute; tưởng cho c&aacute;c game thủ.</p>\r\n', 'asus-gaming-rog-strix-g512-i7-ial001t-272120-022128-225687-600x600.jpg', 0);
INSERT INTO `tbl_products` (`ProductID`, `ProductName`, `Number`, `MfName`, `Price`, `PI`, `Img`, `Status`) VALUES
(149, 'Asus TUF Gaming FX506LH i5 10300H (HN002T)', 3, 3, 20490000, '<h3>Với sự mạnh mẽ, bền bỉ từ thiết kế vẻ ngo&agrave;i lẫn b&ecirc;n trong cấu h&igrave;nh,&nbsp;<a href=\"https://www.thegioididong.com/laptop/asus-uf-gaming-fx506lh-i5-hn002t\" target=\"_blank\">Asus TUF Gaming FX506LH (HN002T)</a>&nbsp;sẽ l&agrave; một trợ thủ đắc lực của bạn trong tr&ograve; chơi y&ecirc;u th&iacute;ch v&agrave; cả những t&aacute;c vụ nặng kh&aacute;c.</h3>\r\n\r\n<h3>Đa nhiệm mượt m&agrave; với Chip Intel Core i5&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-10\" target=\"_blank\">thế hệ 10</a>&nbsp;ti&ecirc;u chuẩn gaming</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus-tuf-gaming\" target=\"_blank\">Asus TUF Gaming</a>&nbsp;được trang bị chip&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-vi-xu-ly-intel-core-the-he-10-1212148\" target=\"_blank\">Intel Comet Lake</a>&nbsp;<strong>10300H</strong>&nbsp;cho hiệu năng ổn định, chiến game cực chất với&nbsp;<strong>4 nh&acirc;n 8 luồng</strong>&nbsp;c&ugrave;ng xung nhịp &eacute;p l&ecirc;n đến&nbsp;<strong>4.5 GHz</strong>&nbsp;nhờ c&ocirc;ng nghệ&nbsp;<strong>Turbo Boost</strong>.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/nen-mua-laptop-co-card-do-hoa-roi-nao-1181568\" target=\"_blank\">Card đồ hoạ rời</a>&nbsp;m&agrave; FX506LH sử dụng l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/card-do-hoa-roi-nvidia-geforce-gtx-1650-co-manh-kh-1201415\" target=\"_blank\">NVIDIA GeForce GTX 1650 4GB</a>. Card được thiết kế theo kiến tr&uacute;c&nbsp;<strong>Turning</strong>&nbsp;ti&ecirc;n tiến, gi&uacute;p c&acirc;n bằng giữa sức mạnh xử l&iacute; h&igrave;nh ảnh v&agrave; điện năng ti&ecirc;u thụ của m&aacute;y cho c&aacute;c game thủ trải nghiệm mượt m&agrave; c&aacute;c tr&ograve; chơi nổi tiếng như PUBG, GTA V, Battlefield,... tr&ecirc;n độ ph&acirc;n giải Full HD hay sử dụng tốt c&aacute;c phần mềm đồ hoạ như: Photoshop, Illustrator, Premiere,...</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/236022/asus-tuf-gaming-fx506lh-4.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus TUF Gaming FX506LH i5 (HN002T) - Cấu hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/236022/asus-tuf-gaming-fx506lh-4.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\">RAM 8 GB</a>&nbsp;loại&nbsp;<strong>DDR4</strong>&nbsp;(2 khe) đảm bảo khả năng đa nhiệm của m&aacute;y ổn định với tốc độ Bus RAM l&ecirc;n đến&nbsp;<strong>2933 MHz</strong>, bạn c&oacute; thể vừa chơi game, vừa ph&aacute;t trực tiếp, vừa xử l&iacute; c&aacute;c t&aacute;c vụ kh&aacute;c m&agrave; kh&ocirc;ng phải lo lắng qu&aacute; nhiều về tốc độ xử l&iacute; của m&aacute;y. Ngo&agrave;i ra, Asus c&ograve;n hỗ trợ n&acirc;ng cấp RAM đến&nbsp;<strong>32 GB</strong>&nbsp;để bạn dễ d&agrave;ng c&oacute; được hiệu năng như &yacute; muốn.</p>\r\n\r\n<p>Ổ cứng&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=ssd-512-gb\" target=\"_blank\">SSD 512 GB</a>&nbsp;chuẩn&nbsp;<strong>M.2 PCle</strong>&nbsp;cho tốc độ khởi động m&aacute;y v&agrave; truy xuất dữ liệu nhanh ch&oacute;ng chỉ từ 5 - 10 gi&acirc;y, đủ kh&ocirc;ng gian lưu trữ để tải về những tựa game v&agrave; phần mềm ưu th&iacute;ch. Ngo&agrave;i ra, m&aacute;y c&ograve;n hỗ trợ khe cắm SSD M.2 PCle kh&aacute;c gi&uacute;p bạn dễ d&agrave;ng n&acirc;ng cấp bộ nhớ của m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/236022/asus-tuf-gaming-fx506lh-05.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus TUF Gaming FX506LH i5 (HN002T) - RAM và SSD\" src=\"https://cdn.tgdd.vn/Products/Images/44/236022/asus-tuf-gaming-fx506lh-05.jpg\" /></a></p>\r\n\r\n<h3>Tối ưu ho&aacute; hiển thị với&nbsp;<a href=\"https://www.thegioididong.com/laptop-tren-15-inch\" target=\"_blank\">m&agrave;n h&igrave;nh 15.6 inch</a>&nbsp;viền&nbsp;<strong>7 mm</strong></h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus\" target=\"_blank\">Laptop Asus</a>&nbsp;chế t&aacute;c m&agrave;n h&igrave;nh viền mỏng&nbsp;mang đến h&igrave;nh ảnh chất lượng với độ ph&acirc;n giải&nbsp;<strong>Full HD</strong>&nbsp;sắc n&eacute;t. Đ&acirc;y l&agrave; m&agrave;n h&igrave;nh c&oacute; tốc độ khung h&igrave;nh&nbsp;<strong>144 Hz</strong>&nbsp;gi&uacute;p h&igrave;nh ảnh trong game chuyển động mượt m&agrave;, tối ưu nhất v&agrave; giảm thiểu hiện tượng bị x&eacute; h&igrave;nh.</p>\r\n\r\n<p>Tấm nền&nbsp;<strong>IPS&nbsp;</strong>cho g&oacute;c nh&igrave;n dễ chịu&nbsp;c&ugrave;ng c&ocirc;ng nghệ chống ch&oacute;i&nbsp;<strong>Anti Glare</strong>&nbsp;đảm bảo h&igrave;nh ảnh hiển thị trong điều kiện &aacute;nh s&aacute;ng n&agrave;o cũng ổn định, đem đến trải nghiệm chơi game, l&agrave;m việc, giải tr&iacute; cực k&igrave; h&agrave;i l&ograve;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/236022/asus-tuf-gaming-fx506lh-6.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus TUF Gaming FX506LH i5 (HN002T) - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/236022/asus-tuf-gaming-fx506lh-6.jpg\" /></a></p>\r\n\r\n<p>C&ocirc;ng nghệ giả lập &acirc;m thanh v&ograve;m&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-am-thanh-dts-tren-laptop-la-gi-1261821#dts-ultra-audio\" target=\"_blank\">DTS X:Ultra Audio</a>&nbsp;gi&uacute;p t&aacute;i tạo &acirc;m thanh giống như thực tế, cho &acirc;m thanh to, ch&acirc;n thực, r&otilde; r&agrave;ng. Nhờ c&ocirc;ng nghệ n&agrave;y m&agrave; bạn ho&agrave;n to&agrave;n c&oacute; thể nghe r&otilde; được tiếng bước ch&acirc;n của người chơi kh&aacute;c trong những tựa game nhập vai v&agrave; dễ d&agrave;ng d&agrave;nh chiến thắng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/236022/asus-tuf-gaming-fx506lh-10.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus TUF Gaming FX506LH i5 (HN002T) - Âm thanh\" src=\"https://cdn.tgdd.vn/Products/Images/44/236022/asus-tuf-gaming-fx506lh-10.jpg\" /></a></p>\r\n\r\n<h3>Kiểu d&aacute;ng mạnh mẽ, c&aacute; t&iacute;nh ph&ugrave; hợp cho c&aacute;c game thủ</h3>\r\n\r\n<p>M&aacute;y c&oacute; lớp vỏ ngo&agrave;i bằng nhựa chắc tay c&ugrave;ng nắp lưng bằng kim loại m&agrave;u x&aacute;m sang trọng c&ugrave;ng với biểu tượng gaming đặc trưng của TUF. Một chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\">laptop gaming</a>&nbsp;nhưng trọng lượng chỉ&nbsp;<strong>2.3 kg</strong>&nbsp;l&agrave; một trong những điểm bạn sẽ bất ngờ khi t&igrave;m hiểu về chiếc m&aacute;y t&iacute;nh n&agrave;y. Bạn sẽ dễ d&agrave;ng cho v&agrave;o balo để mang theo trong những chuyến đi c&ocirc;ng t&aacute;c, c&agrave; ph&ecirc;, họp mặt chiến game c&ugrave;ng bạn b&egrave;,...</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/236022/asus-tuf-gaming-fx506lh-02.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus TUF Gaming FX506LH i5 (HN002T) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/236022/asus-tuf-gaming-fx506lh-02.jpg\" /></a></p>\r\n\r\n<p>C&ocirc;ng nghệ&nbsp;<strong>HyperCool</strong>&nbsp;độc quyền bao gồm hệ thống Anti-Dust Cooling c&oacute; thể tuỳ chỉnh 3 chế độ quạt kh&aacute;c nhau gi&uacute;p tăng cường khả năng tản nhiệt của chiếc laptop n&agrave;y.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/236022/asus-tuf-gaming-fx506lh-9.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus TUF Gaming FX506LH i5 (HN002T) - Tản nhiệt\" src=\"https://cdn.tgdd.vn/Products/Images/44/236022/asus-tuf-gaming-fx506lh-9.jpg\" /></a></p>\r\n\r\n<p>M&aacute;y c&ograve;n đạt chuẩn&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/wi-fi-chuan-80211ax-la-gi-tim-hieu-ve-wi-fi-the-he-thu-6-1187524\" target=\"_blank\">Wi-Fi 6 - 802.11ax</a>&nbsp;cho tốc độ truyền tải đến&nbsp;<strong>10.000 Mbps</strong>&nbsp;v&agrave; chuẩn&nbsp;<strong>Bluetooth v5.0</strong>&nbsp;cho tốc độ kết nối kh&ocirc;ng d&acirc;y ổn định, tải dữ liệu nhanh ch&oacute;ng.</p>\r\n\r\n<p>C&aacute;c cổng kết nối như: USB 3.2, HDMI, LAN (RJ45), USB Type-C, jack sạc, jack tai nghe đều được đặt b&ecirc;n cạnh tr&aacute;i của m&aacute;y gi&uacute;p truyền tải dữ liệu qua c&aacute;c thiết bị ngoại vi thuận tiện m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng đến kh&ocirc;ng gian d&ugrave;ng chuột ph&iacute;a b&ecirc;n tay phải.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/236022/asus-tuf-gaming-fx506lh-11.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus TUF Gaming FX506LH i5 (HN002T) - Cổng kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/236022/asus-tuf-gaming-fx506lh-11.jpg\" /></a></p>\r\n\r\n<h3>Tr&agrave;n đầy cảm hứng chiến game với b&agrave;n ph&iacute;m thiết kế độc đ&aacute;o</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">Laptop</a>&nbsp;c&oacute; h&agrave;nh tr&igrave;nh ph&iacute;m&nbsp;<strong>1.8 mm</strong>, kh&ocirc;ng gian ph&iacute;m rộng r&atilde;i v&agrave; tuổi thọ l&ecirc;n đến&nbsp;<strong>20 triệu</strong>&nbsp;lần nhấn, đủ cho nhiều năm l&agrave;m việc v&agrave; chơi game. C&ocirc;ng nghệ&nbsp;<strong>Overstroke</strong>&nbsp;độc quyền gi&uacute;p r&uacute;t ngắn h&agrave;nh tr&igrave;nh k&iacute;ch hoạt ph&iacute;m, tăng số lượng chuyển động ph&iacute;m mỗi ph&uacute;t, gi&uacute;p th&ocirc;ng tin ghi lại nhanh hơn v&agrave; tiện lợi hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/236022/asus-tuf-gaming-fx506lh-7.jpg\" onclick=\"return false;\"><img alt=\"Laptop Asus TUF Gaming FX506LH i5 (HN002T) - Bàn phím\" src=\"https://cdn.tgdd.vn/Products/Images/44/236022/asus-tuf-gaming-fx506lh-7.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, b&agrave;n ph&iacute;m c&ograve;n sở hữu giải đ&egrave;n&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cach-bat-den-ban-phim-laptop-956550\" target=\"_blank\">Led RGB</a>&nbsp;chuyển m&agrave;u ấn tượng c&ugrave;ng thiết kế cụm ph&iacute;m&nbsp;<strong>WASD</strong>&nbsp;nổi bật so với những ph&iacute;m c&ograve;n lại gi&uacute;p bạn c&oacute; th&ecirc;m hứng th&uacute; để thể hiện những kĩ năng th&agrave;nh thạo tr&ecirc;n game.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/236022/asus-tuf-gaming-fx506lh-08.jpg\" onclick=\"return false;\"><img alt=\"Asus TUF Gaming FX506LH i5 10300H (HN002T) - Đèn LED RGB\" src=\"https://cdn.tgdd.vn/Products/Images/44/236022/asus-tuf-gaming-fx506lh-08.jpg\" /></a></p>\r\n\r\n<p>Nhờ được trang bị chip Core i5 gen 10 v&agrave; card rời GTX 1650 4GB,... Asus TUF Gaming FX506LH c&oacute; hiệu năng mạnh mẽ, chiến game tốt, ph&ugrave; hợp với những bạn trẻ đam m&ecirc; game, c&oacute; nhu cầu giải tr&iacute; c&ugrave;ng bạn b&egrave; sau những giờ l&agrave;m việc căng thẳng. Đối với d&acirc;n thiết kế đồ hoạ đ&ograve;i hỏi cấu h&igrave;nh m&aacute;y cao th&igrave; đ&acirc;y cũng l&agrave; một sự lựa chọn tốt.</p>\r\n', 'asus-uf-gaming-fx506lh-i5-hn002t-600x600.jpg', 0),
(150, 'Dell Vostro 3500 i3 1115G4 (V5I3001W)', 12, 9, 12690000, '<h2>Đặc điểm nổi bật của Dell Vostro 3500 i3 1115G4/8GB/256GB/Win10 (V5I3001W)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/235656/Slider/vi-vn-dell-vostro-3500-i3-v5i3001w-1.jpg\" /></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-bo-xu-ly-intel-core-the-he-thu-11-1304404\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/o-cung-ssd-la-gi-923073\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-fhd-la-gi-956294\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cong-nghe-am-thanh-realtek-high-defini-1181909\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: D&acirc;y nguồn, S&aacute;ch hướng dẫn, Th&ugrave;ng m&aacute;y, Adapter sạc</p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/laptop/dell-vostro-3500-i3-v5i3001w\" target=\"_blank\">Laptop Dell Vostro 3500 i3 (V5I3001W)</a>&nbsp;mang trong m&igrave;nh chip Intel thế hệ 11 ti&ecirc;n tiến, đ&aacute;p ứng tốt nhu cầu văn ph&ograve;ng, học tập, giải tr&iacute; thường ng&agrave;y với một mức gi&aacute; phải chăng.</h3>\r\n\r\n<h3>Trang bị bộ vi xử l&iacute; mạnh mẽ</h3>\r\n\r\n<p>Dell Vostro 3500 được sở hữu bộ chip&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=core-i3\" target=\"_blank\">Intel Core i3</a>&nbsp;<strong>1115G4</strong>&nbsp;thuộc&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-11\" target=\"_blank\">thế hệ 11</a>&nbsp;Tiger Lake cho tốc độ xử l&iacute; c&aacute;c t&aacute;c vụ cơ bản như Office, Zoom, Google Meet,... nhanh ch&oacute;ng, tiết kiệm năng lượng với tốc độ CPU trung b&igrave;nh l&agrave;&nbsp;<strong>3.00 GHz</strong>. C&ocirc;ng nghệ&nbsp;<strong>Turbo Boost</strong>&nbsp;gi&uacute;p m&aacute;y c&oacute; thể &eacute;p xung l&ecirc;n tới&nbsp;<strong>4.1 GHz</strong>&nbsp;khi chạy những ứng dụng nặng.</p>\r\n\r\n<p>Bộ nhớ<a href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\">&nbsp;RAM 8 GB</a>&nbsp;<strong>DDR4</strong>&nbsp;cho laptop c&oacute; khả năng đa nhiệm tốt, xử l&iacute; được nhiều ứng dụng c&ugrave;ng một l&uacute;c, chẳng hạn như bạn c&oacute; thể vừa soạn thảo văn bản, xử l&iacute; file Excel lớn, vừa d&ugrave;ng tr&igrave;nh duyệt web nghe nhạc thư gi&atilde;n m&agrave; kh&ocirc;ng phải lo lắng m&aacute;y bị giật, lag. B&ecirc;n cạnh đ&oacute;, c&oacute; sẵn một khe RAM trống thoải m&aacute;i n&acirc;ng cấp l&ecirc;n đến&nbsp;<strong>16 GB</strong>, ph&ugrave; hợp với nhu cầu của từng người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235656/dell-vostro-3500-i3-v5i3001w-4-1.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i3 (V5I3001W) - Cấu hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/235656/dell-vostro-3500-i3-v5i3001w-4-1.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop?g=ssd-256-gb\" target=\"_blank\">SSD 256 GB</a>&nbsp;<strong>NVMe PCle</strong>&nbsp;mang đến cho m&aacute;y tốc độ đọc, truy xuất dữ liệu ngay tức th&igrave;, khởi động m&aacute;y nhanh ch&oacute;ng đồng thời c&oacute; kh&ocirc;ng gian lưu trữ nhiều t&agrave;i liệu, ứng dụng, phục vụ c&aacute;c nhu cầu l&agrave;m việc, học tập, giải tr&iacute; kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235656/dell-vostro-3500-i3-v5i3001w-5-1.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i3 (V5I3001W) - SSD\" src=\"https://cdn.tgdd.vn/Products/Images/44/235656/dell-vostro-3500-i3-v5i3001w-5-1.jpg\" /></a></p>\r\n\r\n<h3>Thiết kế đặc trưng, thanh lịch</h3>\r\n\r\n<p>Vostro 3400 vẫn giữ thiết kế đặc trưng của&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\">laptop Dell</a>&nbsp;với lớp vỏ nhựa m&agrave;u đen bao bọc v&agrave; những đường n&eacute;t bo cong tỉ mỉ, ph&ugrave; hợp với mọi đối tượng. M&aacute;y c&oacute;&nbsp;<strong>độ d&agrave;y 19.9 mm</strong>&nbsp;v&agrave;&nbsp;<strong>trọng lượng 1.98 kg</strong>&nbsp;c&oacute; thể n&oacute;i l&agrave; kh&aacute; gọn nhẹ trong việc mang theo b&ecirc;n m&igrave;nh đi đến lớp, học nh&oacute;m, c&ocirc;ng t&aacute;c, hội nghị,...</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235656/dell-vostro-3500-i3-v5i3001w-2-1.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i3 (V5I3001W) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/235656/dell-vostro-3500-i3-v5i3001w-2-1.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">Laptop</a>&nbsp;c&oacute; đầy đủ cổng giao tiếp phổ biến hiện nay, bao gồm: 2 cổng&nbsp;<strong>USB 3.2</strong>,&nbsp;<strong>HDMI</strong>,&nbsp;<strong>LAN (RJ45)</strong>,&nbsp;<strong>USB 2.0</strong>,&nbsp;<strong>khẻ the nhớ SD</strong>&nbsp;v&agrave;&nbsp;<strong>USB Type-C</strong>&nbsp;đa năng hiện đại dễ d&agrave;ng kết nối c&aacute;c thiết vị ngoại vi, n&acirc;ng cao hiệu quả c&ocirc;ng việc.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235656/dell-vostro-3500-i3-v5i3001w-8-1.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i3 (V5I3001W) - Cổng kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/235656/dell-vostro-3500-i3-v5i3001w-8-1.jpg\" /></a></p>\r\n\r\n<p>Chuẩn kh&ocirc;ng d&acirc;y&nbsp;<strong>Wi-Fi 802.11 a/b/g/n/ac</strong>&nbsp;v&agrave;&nbsp;<strong>Bluetooth v5.0</strong>&nbsp;với tốc độ kết nối&nbsp;<strong>50 Mbps</strong>&nbsp;cho tốc độ đường truyền ổn định ngay khi đang ở nơi đ&ocirc;ng người.</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh rộng r&atilde;i, h&igrave;nh ảnh chất lượng</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-dell-vostro\" target=\"_blank\">Dell Vostro</a>&nbsp;c&oacute; m&agrave;n h&igrave;nh lớn k&iacute;ch thước&nbsp;<a href=\"https://www.thegioididong.com/laptop-tren-15-inch\" target=\"_blank\">15.6 inch</a>&nbsp;độ ph&acirc;n giải&nbsp;<strong>Full HD (1920 x 1080)</strong>&nbsp;sắc n&eacute;t, mang đến trải nghiệm h&igrave;nh ảnh sống động, độ n&eacute;t cao, kh&ocirc;ng gian l&agrave;m việc rộng r&atilde;i, hiển thị trực quan hơn. M&agrave;n h&igrave;nh mỏng, tiết kiệm điện năng hơn với&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cong-nghe-led-backlit-led-backlight-1183188\" target=\"_blank\">c&ocirc;ng nghệ LED Backlight</a>.</p>\r\n\r\n<p>Nhờ c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/laptop-man-hinh-chong-choi\" target=\"_blank\">chống ch&oacute;i Anti Glare</a>&nbsp;v&agrave; m&agrave;n h&igrave;nh g&oacute;c rộng&nbsp;<strong>WVA</strong>&nbsp;l&ecirc;n đến&nbsp;<strong>178 độ</strong>, gi&uacute;p việc quan s&aacute;t từ nhiều g&oacute;c nh&igrave;n ch&iacute;nh x&aacute;c v&agrave; dễ d&agrave;ng hơn kể cả ở trong điều kiện &aacute;nh s&aacute;ng mạnh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235656/dell-vostro-3500-i3-v5i3001w-06.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i3 (V5I3001W) - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/235656/dell-vostro-3500-i3-v5i3001w-06.jpg\" /></a></p>\r\n\r\n<p>Với c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cong-nghe-am-thanh-realtek-high-defini-1181909\" target=\"_blank\">Realtek High Definition Audio</a>&nbsp;c&ugrave;ng hệ thống loa cho &acirc;m thanh to r&otilde;, ch&acirc;n thực, thoả sức nghe nhạc, xem phim, chơi game.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235656/dell-vostro-3500-i3-v5i3001w-7-1.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i3 (V5I3001W) - Âm thanh\" src=\"https://cdn.tgdd.vn/Products/Images/44/235656/dell-vostro-3500-i3-v5i3001w-7-1.jpg\" /></a></p>\r\n\r\n<p>Với thiết kế tinh tế, kh&ocirc;ng bị lỗi thời c&ugrave;ng hiệu năng ổn định của vi xử l&iacute; Intel thế hệ 11 hiện đại, Dell Vostro 3500 l&agrave; mẫu laptop c&aacute; nh&acirc;n phục vụ tốt nhu cầu&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\">học tập, văn ph&ograve;ng</a>&nbsp;hiện nay.</p>\r\n', 'dell-vostro-3500-i3-v5i3001w-thumb-600x600.jpg', 0),
(151, 'Dell Vostro 3500 i5 1135G7 (P90F006V3500B)', 10, 9, 17690000, '<h2>Đặc điểm nổi bật của Dell Vostro 3500 i5 1135G7/8GB/256GB/2GB MX330/Win10 (P90F006V3500B)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/235540/Slider/dell-vostro-3500-i5-v3500b-010321-0923403.jpg\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: D&acirc;y nguồn, S&aacute;ch hướng dẫn, Th&ugrave;ng m&aacute;y, Sạc Laptop Dell</p>\r\n\r\n<h3>Với cấu h&igrave;nh kết hợp của Intel Core i5 thế hệ thứ 11 v&agrave; card đồ họa rời&nbsp;NVIDIA GeForce MX330,&nbsp;<a href=\"https://thegioididong.com/sp-235540\" target=\"_blank\">Dell Vostro 3500 i5 (P90F006V3500B)</a>&nbsp;sẽ mang đến cho bạn một sản phẩm chơi game mạnh mẽ trong thiết kế kh&aacute; gọn nhẹ.</h3>\r\n\r\n<h3>Hiệu năng mạnh mẽ với card đồ họa rời&nbsp;NVIDIA GeForce MX330</h3>\r\n\r\n<p>Dell đem đến bộ vi xử l&iacute;&nbsp;<a href=\"https://www.dienmayxanh.com/laptop?g=core-i5\" target=\"_blank\"><strong>Core i5</strong></a>&nbsp;Tiger Lake&nbsp;<a href=\"https://www.dienmayxanh.com/laptop?g=cpu-intel-the-he-11-moi\" target=\"_blank\"><strong>thế hệ 11</strong></a>&nbsp;xử l&iacute; tốt c&aacute;c t&aacute;c vụ nặng như thiết kế đồ hoạ, chỉnh sửa h&igrave;nh ảnh, video,... Con chip n&agrave;y đủ sức &ldquo;c&acirc;n&rdquo; mọi ứng dụng văn ph&ograve;ng, học tập phổ biến, l&agrave;m việc trực tuyến lẫn c&aacute;c ứng dụng đồ họa 2D với&nbsp;<strong>4 nh&acirc;n</strong>,&nbsp;<strong>8 luồng&nbsp;</strong>với tốc độ cơ bản l&agrave;&nbsp;<strong>2.40 GHz</strong>&nbsp;v&agrave; được đẩy l&ecirc;n đến tối đa<strong>&nbsp;4.2 GHz&nbsp;</strong>khi &eacute;p xung.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235540/dell-vostro-3500-i5-v3500bcau-hinh.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i5 (P90F006V3500B) - Cấu hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/235540/dell-vostro-3500-i5-v3500bcau-hinh.jpg\" /></a></p>\r\n\r\n<p>Mẫu laptop n&agrave;y của Dell c&ograve;n được trang bị&nbsp;<a href=\"https://www.thegioididong.com/laptop-card-do-hoa-roi\" target=\"_blank\">card đồ hoạ rời</a>&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/nvidia-geforce-mx330-tren-laptop-la-gi-1264163\" target=\"_blank\">NVIDIA GeForce MX330 2GB</a>&nbsp;gi&uacute;p bạn c&oacute; thể chơi tốt mọi game eSports v&agrave; sẵn s&agrave;ng cho c&aacute;c tựa game bom tấn AAA như: Counter-Strike: Global Offensive, Dota 2, Gears Tactics, Nioh 2,... ở mức trung b&igrave;nh hay thoải m&aacute;i&nbsp;thử sức với c&aacute;c t&aacute;c vụ đồ hoạ cơ bản&nbsp;với<strong>&nbsp;kiến tr&uacute;c Turing</strong>&nbsp;c&ugrave;ng<strong>&nbsp;384 nh&acirc;n đồ hoạ.</strong></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235540/dell-vostro-3500-i5-v3500bcard.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i5 (P90F006V3500B) - Card đồ họa\" src=\"https://cdn.tgdd.vn/Products/Images/44/235540/dell-vostro-3500-i5-v3500bcard.jpg\" /></a></p>\r\n\r\n<p>Bộ nhớ&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\">RAM 8 GB</a></strong>&nbsp;cho việc trải nghiệm laptop mượt m&agrave;, thao t&aacute;c được nhiều phần mềm c&ugrave;ng một l&uacute;c như vừa mở phần mềm thiết kế, vừa nghe nhạc, lướt web. M&aacute;y c&ograve;n hỗ trợ n&acirc;ng cấp RAM l&ecirc;n đến&nbsp;<strong>16&nbsp;GB&nbsp;</strong>gi&uacute;p bạn c&oacute; thể n&acirc;ng cấp hiệu năng của m&aacute;y đ&aacute;p ứng nhu cầu c&ocirc;ng việc của m&igrave;nh.</p>\r\n\r\n<p>Nhờ c&oacute;&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-o-cung-ssd\" target=\"_blank\">ổ cứng SSD</a>&nbsp;256 GB</strong>, mọi thao t&aacute;c đều được xử l&iacute; nhanh, mở m&aacute;y chỉ trong gi&acirc;y l&aacute;t. Đi k&egrave;m l&agrave; kh&ocirc;ng gian lưu trữ&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=ssd-256-gb\" target=\"_blank\">256 GB</a></strong>&nbsp;gi&uacute;p bạn thoải m&aacute;i lưu c&aacute;c tựa phim, file Photoshop nặng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235540/dell-vostro-3500-i5-v3500bssd.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i5 (P90F006V3500B) - SSD\" src=\"https://cdn.tgdd.vn/Products/Images/44/235540/dell-vostro-3500-i5-v3500bssd.jpg\" /></a></p>\r\n\r\n<h3>Kiểu d&aacute;ng đơn giản nhưng v&ocirc; c&ugrave;ng mạnh mẽ</h3>\r\n\r\n<p>Thiết kế của&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell-vostro\" target=\"_blank\">laptop Dell Vostro</a>&nbsp;tuy đơn giản nhưng lại đậm c&aacute; t&iacute;nh v&agrave; v&ocirc; c&ugrave;ng mạnh mẽ. Với trọng lượng chỉ&nbsp;<strong>1.98 kg&nbsp;</strong>v&agrave; độ d&agrave;y&nbsp;<strong>19.9 mm,</strong>&nbsp;vỏ ngo&agrave;i bằng nhựa nh&aacute;m, mịn gi&uacute;p cầm m&aacute;y chắc, dễ d&agrave;ng cầm theo b&ecirc;n m&igrave;nh để giải tr&iacute;, chơi game mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235540/dell-vostro-3500-i5-v3500bthiet-ke.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i5 (P90F006V3500B) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/235540/dell-vostro-3500-i5-v3500bthiet-ke.jpg\" /></a></p>\r\n\r\n<p>Tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;c&oacute; đầy đủ những kết nối phục vụ c&ocirc;ng việc v&agrave; hoạt động chơi game của bạn gồm 3 cổng&nbsp;<strong>USB 3.2, HDMI, LAN,&nbsp;USB Type-C,&nbsp;USB 2.0</strong>&nbsp;v&agrave;&nbsp;khe cắm thẻ nhớ&nbsp;<strong>Micro SD</strong>&nbsp;gi&uacute;p bạn truyền dữ liệu nhanh ch&oacute;ng, thỏa sức kết nối với bất kỳ thiết bị ngoại vi n&agrave;o.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235540/dell-vostro-3500-i5-v3500bckn.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i5 (P90F006V3500B) - Cổng kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/235540/dell-vostro-3500-i5-v3500bckn.jpg\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, Dell Vostro c&ograve;n c&oacute; khả năng kết nối kh&ocirc;ng d&acirc;y với Bluetooth v5.0 với tốc độ kết nối l&ecirc;n đến&nbsp;<strong>50 Mbps</strong>&nbsp;v&agrave; Wi-Fi 802.11 a/b/gn/ac cho việc kết nối ổn định, mượt m&agrave;. B&ecirc;n cạnh đ&oacute;, tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\">laptop Dell</a>&nbsp;n&agrave;y được trang bị một&nbsp;<strong>Webcam HD</strong>&nbsp;gi&uacute;p việc gọi điện video, chia sẻ với người th&acirc;n, họp hay học trực tuyến cực kỳ hiệu quả.</p>\r\n\r\n<h3>Đắm ch&igrave;m trong những thước phim với h&igrave;nh ảnh sống động</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh laptop Dell Vostro n&agrave;y c&oacute; k&iacute;ch thước&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-tren-15-inch\" target=\"_blank\">15.6 inch</a></strong>&nbsp;với độ ph&acirc;n giải&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-full-hd\" target=\"_blank\">Full HD</a>&nbsp;</strong>cho h&igrave;nh ảnh sắc n&eacute;t, sống động, đưa bạn đến kh&ocirc;ng gian game m&atilde;n nh&atilde;n, đắm ch&igrave;m trong cuộc phi&ecirc;u lưu ly kỳ, hấp dẫn.&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/wide-viewing-angle-la-gi-uu-nhuoc-diem-1302188\" target=\"_blank\">Wide View Angle (WVA)</a>&nbsp;mang đến cho m&agrave;n h&igrave;nh một g&oacute;c nh&igrave;n rộng l&ecirc;n đến&nbsp;<strong>178 độ</strong>&nbsp;gi&uacute;p bạn c&oacute; sự trải nghiệm h&igrave;nh ảnh kh&ocirc;ng bị biến dạng d&ugrave; quan s&aacute;t m&agrave;n h&igrave;nh ở nhiều vị tr&iacute; kh&aacute;c nhau.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, với c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-man-hinh-chong-choi-anti-glare-1182688\" target=\"_blank\">chống ch&oacute;i Anti-Glare</a>&nbsp;gi&uacute;p bạn l&agrave;m việc thuận tiện trong m&ocirc;i trường nhiều &aacute;nh s&aacute;ng m&agrave; kh&ocirc;ng sợ m&agrave;n h&igrave;nh bị ch&oacute;i l&oacute;a. Hơn nữa&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cong-nghe-led-backlit-led-backlight-1183188\" target=\"_blank\">LED Backlit</a>&nbsp;gi&uacute;p laptop bạn &iacute;t bị ti&ecirc;u thụ điện năng, phần n&agrave;o gi&uacute;p bạn bảo vệ được m&ocirc;i trường xung quanh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235540/dell-vostro-3500-i5-v3500bman-hinh.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i5 (P90F006V3500B) - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/235540/dell-vostro-3500-i5-v3500bman-hinh.jpg\" /></a></p>\r\n\r\n<p>Laptop&nbsp;sử dụng c&ocirc;ng nghệ &acirc;m thanh&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-am-thanh-realtek-high-definition-audio-l-1191434\" target=\"_blank\">Realtek High Definition Audio</a>&nbsp;cung cấp bộ t&ugrave;y chỉnh chuy&ecirc;n s&acirc;u, khuếch đại &acirc;m thanh to r&otilde; nhưng kh&ocirc;ng bị r&egrave;, nhiễu.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235540/dell-vostro-3500-i5-v3500bam-thanh.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Vostro 3500 i5 (P90F006V3500B) - Âm thanh\" src=\"https://cdn.tgdd.vn/Products/Images/44/235540/dell-vostro-3500-i5-v3500bam-thanh.jpg\" /></a></p>\r\n\r\n<p>Dell Vostro 3500 i5 (P90F006V3500B) hứa hẹn sẽ l&agrave; người bạn đồng h&agrave;nh tuyệt vời c&ugrave;ng bạn, c&oacute; sức mạnh đột ph&aacute; mang đến cho bạn trải nghiệm chơi game đỉnh cao trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\">laptop gaming</a>.</p>\r\n', '3-600x600.jpg', 0),
(152, 'Dell Vostro 5402 i5 1135G7 (V4I5003W)', 13, 9, 16990000, '<h2>Đặc điểm nổi bật của Dell Vostro 3400 i5 1135G7/8GB/256GB/2GB MX330/Win10 (YX51W2)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/235373/Slider/DDNB-800x444.jpg\" /></p>\r\n\r\n<h2>Với cấu h&igrave;nh mạnh mẽ c&ugrave;ng sức mạnh đến từ bộ vi xử l&yacute; Intel Core i5 thế hệ 11 c&ugrave;ng thiết kế nhỏ gọn, hiện đại&nbsp;<a href=\"https://www.thegioididong.com/laptop/dell-vostro-3400-i5-yx51w2\" target=\"_blank\">Dell Vostro 3400 i5 (YX51W2)</a>&nbsp;l&agrave; chiếc laptop đ&aacute;p ứng được nhu cầu văn ph&ograve;ng v&agrave; học tập trực tuyến hiện nay.</h2>\r\n\r\n<h3>Hiệu năng mạnh mẽ với chip Intel Core i5 thế hệ 11</h3>\r\n\r\n<p>Laptop Dell Vostro 3400 được sở hữu hiệu năng mạnh mẽ từ chip&nbsp;<strong>Intel&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\">Core i5</a></strong>&nbsp;Tiger Lake&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-11\" target=\"_blank\">thế hệ 11</a>&nbsp;cho tốc độ xử l&iacute; nhanh v&agrave; tiết kiệm năng lượng.&nbsp;Với&nbsp;<strong>4 nh&acirc;n 8 luồng</strong>, laptop n&agrave;y sẽ mang đến cho bạn trải nghiệm mượt m&agrave;, xử l&iacute; c&ocirc;ng việc đa nhiệm cực k&igrave; hiệu quả. CPU của laptop n&agrave;y c&oacute; tốc độ cơ bản l&agrave;&nbsp;<strong>2.40 GHz</strong>&nbsp;v&agrave; được đẩy l&ecirc;n đến tối đa&nbsp;<strong>4.2 GHz</strong>&nbsp;nhờ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/turbo-boost-la-gi-cai-dat-turbo-boost-nhu-the-nao-884498\" target=\"_blank\">Turbo Boost&nbsp;</a>khi xử l&iacute; c&aacute;c t&aacute;c vụ nặng như thiết kế đồ hoạ, chỉnh sửa h&igrave;nh ảnh, video,...</p>\r\n\r\n<p>Mẫu laptop n&agrave;y của Dell c&ograve;n được trang bị&nbsp;<a href=\"https://www.thegioididong.com/laptop-card-do-hoa-roi\" target=\"_blank\">card đồ hoạ rời</a>&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/nvidia-geforce-mx330-tren-laptop-la-gi-1264163\" target=\"_blank\">NVIDIA GeForce MX330 2GB</a>&nbsp;với&nbsp;<strong>384 nh&acirc;n đồ hoạ</strong>&nbsp;(Cuda core), gi&uacute;p bạn c&oacute; thể thoải m&aacute;i thử sức với c&aacute;c t&aacute;c vụ đồ hoạ cơ bản hay giải tr&iacute; với c&aacute;c tựa game đồ hoạ trung b&igrave;nh như PUBG, Li&ecirc;n Minh Huyền Thoại, Fifa,... sau những giờ l&agrave;m việc, học tập căng thẳng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235373/nvidia.jpg\" onclick=\"return false;\"><img alt=\"Dell Vostro 3400 i5 (YX51W2) - chip\" src=\"https://cdn.tgdd.vn/Products/Images/44/235373/nvidia.jpg\" /></a></p>\r\n\r\n<p>Bộ nhớ&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\">RAM 8 GB</a></strong>&nbsp;cho việc trải nghiệm laptop mượt m&agrave;, thao t&aacute;c được nhiều phần mềm c&ugrave;ng một l&uacute;c như vừa mở phần mềm thiết kế, vừa nghe nhạc, lướt web. M&aacute;y c&ograve;n hỗ trợ n&acirc;ng cấp RAM l&ecirc;n đến&nbsp;<strong>32 GB&nbsp;</strong>gi&uacute;p bạn c&oacute; thể n&acirc;ng cấp hiệu năng của m&aacute;y đ&aacute;p ứng nhu cầu c&ocirc;ng việc của m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235373/hieu-nang-1.jpg\" onclick=\"return false;\"><img alt=\"Dell Vostro 3400 i5 (YX51W2) - ram\" src=\"https://cdn.tgdd.vn/Products/Images/44/235373/hieu-nang-1.jpg\" /></a></p>\r\n\r\n<p>Ổ cứng&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=ssd-256-gb\" target=\"_blank\">SSD 256GB</a></strong>&nbsp;<strong>MVMe PCle</strong>&nbsp;gi&uacute;p m&aacute;y c&oacute; kh&ocirc;ng gian lưu trữ dữ liệu tuyệt vời. Ổ cứng của m&aacute;y cho tốc độ truy xuất dữ liệu, khởi động m&aacute;y nhanh. Ngo&agrave;i ra, m&aacute;y c&ograve;n sở hữu một khe cắm HDD SATA c&oacute; thể mở rộng bất cứ khi n&agrave;o, gi&uacute;p bạn c&oacute; thể n&acirc;ng cấp m&aacute;y phục vụ c&ocirc;ng việc của m&igrave;nh tốt hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235373/ssd-1.jpg\" onclick=\"return false;\"><img alt=\"Dell Vostro 3400 i5 (YX51W2) - ssd\" src=\"https://cdn.tgdd.vn/Products/Images/44/235373/ssd-1.jpg\" /></a></p>\r\n\r\n<h3>Thiết kế nhỏ gọn, lịch l&atilde;m</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-dell-vostro\" target=\"_blank\">Laptop Dell Vostro</a>&nbsp;n&agrave;y vẫn giữ cho m&igrave;nh mặt lưng được thiết kế đường v&acirc;n sọc nhằm tr&aacute;nh b&aacute;m v&acirc;n tay, bụi bẩn. Vỏ ngo&agrave;i bằng nhựa nh&aacute;m, mịn gi&uacute;p cầm m&aacute;y chắc chắn hơn. Chiếc laptop n&agrave;y chỉ c&oacute;&nbsp;<strong>độ d&agrave;y 19.9 mm&nbsp;</strong>c&ugrave;ng&nbsp;<strong>trọng lượng 1.64 kg</strong>, kh&aacute; l&agrave; gọn nhẹ, gi&uacute;p bạn dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh để xử l&iacute; c&ocirc;ng việc, học tập trực tuyến mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235373/thiet-ke-1.jpg\" onclick=\"return false;\"><img alt=\"Dell Vostro 3400 i5 (YX51W2) - thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/235373/thiet-ke-1.jpg\" /></a></p>\r\n\r\n<p>Nhắc đến một chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;đa dụng kh&ocirc;ng thể kh&ocirc;ng nhắc đến cổng kết nối, Dell Vostro 3400 được trang bị đầy đủ cổng kết nối, bao gồm:&nbsp;<strong>USB 3.1</strong>,&nbsp;<strong>HDMI</strong>,&nbsp;<strong>LAN</strong>,&nbsp;<strong>USB 2.0</strong>,&nbsp;<strong>USB Type-C</strong>&nbsp;v&agrave;&nbsp;<strong>khe cắm thẻ nhớ SD</strong>&nbsp;gi&uacute;p việc kết nối v&agrave; truyền dữ liệu dễ d&agrave;ng, nhanh ch&oacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235373/ket-noi.jpg\" onclick=\"return false;\"><img alt=\"Dell Vostro 3400 i5 (YX51W2) - kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/235373/ket-noi.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\">laptop Dell</a>&nbsp;n&agrave;y được trang bị một Webcam HD gi&uacute;p việc gọi điện video, chia sẻ với người th&acirc;n, họp, học trực tuyến hiệu quả.</p>\r\n\r\n<p>Ngo&agrave;i ra, Dell Vostro c&ograve;n c&oacute; khả năng kết nối kh&ocirc;ng d&acirc;y với Bluetooth v5.0 với tốc độ kết nối l&ecirc;n đến&nbsp;<strong>50 Mbps</strong>&nbsp;v&agrave; Wi-Fi 802.11 a/b/gn/ac cho việc kết nối ổn định, mượt m&agrave;.</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh giải tr&iacute; viền mỏng, h&igrave;nh ảnh hiển thị sắc n&eacute;t</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh laptop Dell Vostro n&agrave;y c&oacute; k&iacute;ch thước&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-14-inch\" target=\"_blank\">14 inch</a></strong>&nbsp;với độ ph&acirc;n giải&nbsp;<a href=\"https://www.thegioididong.com/laptop-full-hd\" target=\"_blank\"><strong>Full HD</strong>&nbsp;(1920 x 1080)</a>&nbsp;cho h&igrave;nh ảnh hiển thị chất lượng ch&iacute;nh x&aacute;c, sắc n&eacute;t. Chuyển động h&igrave;nh ảnh hiển thị cực k&igrave; sinh động&nbsp;nhờ tốc độ qu&eacute;t&nbsp;<strong>60 Hz</strong>, đ&aacute;p ứng tốt nhu cầu giải tr&iacute;, xem YouTube, Netflix,... của bạn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/wide-viewing-angle-la-gi-uu-nhuoc-diem-1302188\" target=\"_blank\">Wide View Angle (WVA)</a>&nbsp;mang đến cho m&agrave;n h&igrave;nh một g&oacute;c nh&igrave;n rộng l&ecirc;n đến&nbsp;<strong>178 độ</strong>&nbsp;gi&uacute;p bạn c&oacute; sự trải nghiệm h&igrave;nh ảnh kh&ocirc;ng bị biến dạng d&ugrave; quan s&aacute;t m&agrave;n h&igrave;nh ở nhiều vị tr&iacute; kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235373/man-hinh.jpg\" onclick=\"return false;\"><img alt=\"Dell Vostro 3400 i5 (YX51W2) - màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/235373/man-hinh.jpg\" /></a></p>\r\n\r\n<p>Nhu cầu xem phim giải tr&iacute;, nghe nhạc thư gi&atilde;n c&ugrave;ng chiếc laptop n&agrave;y c&ograve;n được hỗ trợ qua c&ocirc;ng nghệ &acirc;m thanh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cong-nghe-am-thanh-realtek-high-defini-1181909\" target=\"_blank\">Realtek High Definition Audio</a>&nbsp;với khả năng khuếch đại &acirc;m thanh sống động, cho chất lượng &acirc;m thanh ph&aacute;t ra ổn định, r&otilde; r&agrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/235373/am-thanh.jpg\" onclick=\"return false;\"><img alt=\"Dell Vostro 3400 i5 (YX51W2) - âm thanh\" src=\"https://cdn.tgdd.vn/Products/Images/44/235373/am-thanh.jpg\" /></a></p>\r\n\r\n<p>Laptop Dell Vostro 3400 i5 (YX51W2) của thương hiệu Dell với vẻ ngo&agrave;i nhỏ gọn, b&ecirc;n trong mạnh mẽ, l&agrave; chiếc laptop ph&ugrave; hợp với người c&oacute; nhu cầu l&agrave;m việc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\">văn ph&ograve;ng, học tập</a>&nbsp;trực tuyến v&agrave; giải tr&iacute; sau những giờ lao động căng thẳng.</p>\r\n', 'dell-vostro-3400-i5-1135g7-8gb-256gb-2gb-mx330-win-600x600.jpg', 0),
(153, 'Dell Inspiron 5502 i5 1135G7 (1XGR11)', 6, 9, 20290000, '<h2>Đặc điểm nổi bật của Dell Inspiron 5502 i5 1135G7/8GB/512GB/Win10 (1XGR11)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/233378/Slider/dell-inspiron-5502-i5-1xgr11-140121-0945520.jpg\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: D&acirc;y nguồn, S&aacute;ch hướng dẫn, Th&ugrave;ng m&aacute;y, Sạc Laptop Dell</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/laptop/dell-inspiron-5502-i5-1xgr11\" target=\"_blank\">Laptop Dell Inspiron 5502 i5 (1XGR11)</a>&nbsp;được trang bị cấu h&igrave;nh mạnh mẽ ổn định nhờ chip Intel Core i5 thế hệ thứ 11 hiện đại c&ugrave;ng thiết kế đẹp mắt, sang trọng ph&ugrave; hợp với nhu cầu sử dụng của sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng.</h2>\r\n\r\n<h3>Thiết kế đẹp mắt, hiện đại</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-dell-inspiron\" target=\"_blank\">Dell Inspiron</a>&nbsp;được bao bọc bởi lớp vỏ nhựa c&ugrave;ng nắp lưng bằng kim loại tạo n&ecirc;n sự cứng c&aacute;p chắc chắn v&agrave; vẻ đẹp thanh lịch cho tổng thể m&aacute;y. Trọng lượng m&aacute;y gọn nhẹ chỉ nặng&nbsp;<strong>1.7 kg</strong>&nbsp;v&agrave; d&agrave;y&nbsp;<strong>17.9 mm</strong>&nbsp;gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh v&agrave; xử l&yacute; c&ocirc;ng việc ở mọi nơi m&agrave; kh&ocirc;ng lo vướng v&iacute;u.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/233378/dell-inspiron-5502-i5-1xgr11-135521-025516.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Inspiron 5502 i5 (1XGR11) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/233378/dell-inspiron-5502-i5-1xgr11-135521-025516.jpg\" /></a></p>\r\n\r\n<p>M&aacute;y t&iacute;nh c&oacute; b&agrave;n ph&iacute;m được bố tr&iacute; dễ nh&igrave;n, c&aacute;c ph&iacute;m rộng hỗ trợ tốt trong c&ocirc;ng việc văn ph&ograve;ng hoặc đ&aacute;nh văn bản.&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cach-bat-den-ban-phim-laptop-956550\" target=\"_blank\">Đ&egrave;n b&agrave;n ph&iacute;m</a>&nbsp;được t&iacute;ch hợp tr&ecirc;n m&aacute;y gi&uacute;p bạn l&agrave;m việc trong điều kiện thiếu &aacute;nh s&aacute;ng hoặc v&agrave;o ban đ&ecirc;m.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/233378/dell-inspiron-5502-i5-1xgr11-135421-025427.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Inspiron 5502 i5 (1XGR11) - Bàn phím\" src=\"https://cdn.tgdd.vn/Products/Images/44/233378/dell-inspiron-5502-i5-1xgr11-135421-025427.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, laptop c&ograve;n sở hữu th&ecirc;m chức năng&nbsp;<strong>cảm biến v&acirc;n tay</strong>&nbsp;gi&uacute;p mở kh&oacute;a thiết bị một c&aacute;ch nhanh ch&oacute;ng chỉ với thao t&aacute;c chạm m&agrave; kh&ocirc;ng cần nhập mật khẩu rườm r&agrave;. Đồng thời, c&aacute;c dữ liệu quan trọng tr&ecirc;n m&aacute;y sẽ được bảo mật an to&agrave;n hơn, tr&aacute;nh người lạ x&acirc;m nhập.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/233378/dell-inspiron-5502-i5-1xgr11-263821-073810.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Inspiron 5502 i5 (1XGR11) - Vân tay\" src=\"https://cdn.tgdd.vn/Products/Images/44/233378/dell-inspiron-5502-i5-1xgr11-263821-073810.jpg\" /></a></p>\r\n\r\n<p>Ưu điểm tiếp theo của chiếc m&aacute;y t&iacute;nh n&agrave;y l&agrave; c&aacute;c cổng kết nối được trang bị đầy đủ v&agrave; tiện lợi như: USB 3.1, HDMI, khe đọc thẻ nhớ Micro SD, USB Type-C cho tốc độ truyền tải tối đa l&ecirc;n tới 10 Gbps, truyền tải điện l&ecirc;n đến 100W v&agrave; hỗ trợ tốt trong việc chia sẻ dữ liệu. Ngo&agrave;i ra, c&ograve;n trang bị th&ecirc;m c&aacute;c kết nối kh&ocirc;ng d&acirc;y như: Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/233378/dell-inspiron-5502-i5-1xgr11-135421-025407.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Inspiron 5502 i5 (1XGR11) - Cổng kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/233378/dell-inspiron-5502-i5-1xgr11-135421-025407.jpg\" /></a></p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ, vi xử l&yacute; thế hệ mới</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\">Laptop Dell</a>&nbsp;Inspiron 5502 i5 sở hữu&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\">chip Intel Core i5</a>&nbsp;Tiger Lake</strong>&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-11\" target=\"_blank\">gen 11</a>&nbsp;hiện đại c&oacute;&nbsp;<strong>4 nh&acirc;n 8 luồng</strong>&nbsp;với mức xung nhịp tối đa l&agrave;&nbsp;<strong>4.2 GHz</strong>&nbsp;nhờ Turbo Boost, gi&uacute;p tiết kiệm năng lượng v&agrave; mang đến khả năng xử l&yacute; đồ họa tốt, chỉnh sửa h&igrave;nh ảnh tr&ecirc;n c&aacute;c ứng dụng như: Ai, Photoshop,... hay chạy mượt m&agrave; c&aacute;c ứng dụng văn ph&ograve;ng như: Word, Excel,... hỗ trợ c&ocirc;ng việc đạt hiệu quả cao.</p>\r\n\r\n<p>Ngo&agrave;i ra, bộ xử l&yacute; c&oacute; th&ecirc;m card đồ họa t&iacute;ch hợp&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-card-do-hoa-tich-hop-intel-iris-xe-graphics-1305192\" target=\"_blank\">Intel Iris Xe Graphics</a>&nbsp;mang đến trải nghiệm chơi game HD ho&agrave;n hảo, sẵn s&agrave;ng chiến c&aacute;c tựa game như: PUBG, LOL,... chỉnh sửa h&igrave;nh ảnh, video mượt hơn, đồng thời mang đến chất lượng h&igrave;nh ảnh sắc n&eacute;t đ&aacute;ng kinh ngạc khi xem phim, giải tr&iacute; c&ugrave;ng khả năng xuất tệp 4K nhanh v&agrave; dễ d&agrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/233378/dell-inspiron-5502-i5-1xgr11-135421-025415.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Inspiron 5502 i5 (1XGR11) - Hiệu năng\" src=\"https://cdn.tgdd.vn/Products/Images/44/233378/dell-inspiron-5502-i5-1xgr11-135421-025415.jpg\" /></a></p>\r\n\r\n<p>Dung lượng&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\">RAM 8 GB</a>&nbsp;</strong>đi k&egrave;m c&oacute; khả năng đa nhiệm tốt, hạn chế t&igrave;nh trạng giật lag khi thao t&aacute;c nhiều t&aacute;c vụ c&ugrave;ng một l&uacute;c như vừa nghe nhạc vừa thiết kế tr&ecirc;n phần mềm Photoshop hoặc mở nhiều tab c&ugrave;ng một l&uacute;c tr&ecirc;n Google. Hỗ trợ RAM tối đa l&ecirc;n đến&nbsp;<strong>32 GB</strong>&nbsp;cho người d&ugrave;ng c&oacute; nhu cầu n&acirc;ng cấp.</p>\r\n\r\n<p><strong><a href=\"https://www.thegioididong.com/laptop?g=ssd-512-gb\" target=\"_blank\">Ổ cứng SSD&nbsp;512 GB</a></strong>&nbsp;<strong>M.2 PCIe</strong>&nbsp;được trang bị tr&ecirc;n m&aacute;y với dung lượng lớn n&ecirc;n bạn c&oacute; thể v&ocirc; tư lưu trữ c&aacute;c dữ liệu học tập, c&ocirc;ng việc hoặc c&aacute;c b&agrave;i h&aacute;t, bộ phim m&igrave;nh y&ecirc;u th&iacute;ch m&agrave; kh&ocirc;ng lo kh&ocirc;ng đủ dung lượng. Ngo&agrave;i ra,&nbsp;thời gian khởi động m&aacute;y nhanh chưa tới 10 gi&acirc;y gi&uacute;p giảm thiểu thời gian chờ, c&ocirc;ng việc được xử l&yacute; kịp thời, nhanh ch&oacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/233378/dell-inspiron-5502-i5-1xgr11-135521-025500.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Inspiron 5502 i5 (1XGR11) - RAM\" src=\"https://cdn.tgdd.vn/Products/Images/44/233378/dell-inspiron-5502-i5-1xgr11-135521-025500.jpg\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh rộng, h&igrave;nh ảnh hiển thị sắc n&eacute;t</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">Laptop</a>&nbsp;sở hữu m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/laptop-tren-15-inch\" target=\"_blank\"><strong>15.6 inch</strong></a>&nbsp;với độ ph&acirc;n giải&nbsp;<strong>Full HD</strong>&nbsp;(1920 x 1080) tạo cảm gi&aacute;c m&agrave;n h&igrave;nh rộng hơn so với k&iacute;ch thước thật, độ ph&acirc;n giải cao gi&uacute;p h&igrave;nh ảnh, văn bản hiển thị r&otilde; n&eacute;t, m&agrave;u sắc ch&acirc;n thực nhờ đ&oacute; mang đến&nbsp;trải nghiệm học tập, l&agrave;m việc v&agrave; giải tr&iacute; tuyệt vời.</p>\r\n\r\n<p>Ngo&agrave;i ra, laptop được trang bị th&ecirc;m c&ocirc;ng nghệ&nbsp;<strong>LED Backlit</strong>&nbsp;cho m&agrave;n h&igrave;nh mỏng,&nbsp;hiển thị m&agrave;u sắc tươi s&aacute;ng hơn, ổn định v&agrave; độ tương phản h&igrave;nh ảnh cao hơn, đồng thời&nbsp;tiết kiệm điện năng hơn v&agrave; &iacute;t ảnh hưởng tới m&ocirc;i trường. C&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-man-hinh-chong-choi-anti-glare-1182688\" target=\"_blank\">chống ch&oacute;i Anti Glare</a>&nbsp;c&oacute; khả năng hấp thụ &aacute;nh s&aacute;ng gi&uacute;p loại bỏ b&oacute;ng gương, hỗ trợ tốt khi phải l&agrave;m việc ngo&agrave;i trời v&agrave; bảo vệ mắt khi nh&igrave;n m&agrave;n h&igrave;nh qu&aacute; l&acirc;u.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/233378/dell-inspiron-5502-i5-1xgr11-135421-025440.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Inspiron 5502 i5 (1XGR11) - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/233378/dell-inspiron-5502-i5-1xgr11-135421-025440.jpg\" /></a></p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cong-nghe-am-thanh-realtek-high-defi-1181909\" target=\"_blank\">Realtek High Definition Audio</a>&nbsp;cho&nbsp;chất lượng &acirc;m thanh ph&aacute;t ra tương đối ổn định, ngo&agrave;i ra c&ograve;n c&oacute; t&iacute;nh năng khuếch đại &acirc;m thanh khi chơi game, xem phim, nghe nhạc,&hellip; đ&aacute;p ứng tốt v&agrave; thỏa m&atilde;n c&aacute;c nhu cầu giải tr&iacute; của bạn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/233378/dell-inspiron-5502-i5-1xgr11-135321-025359.jpg\" onclick=\"return false;\"><img alt=\"Laptop Dell Inspiron 5502 i5 (1XGR11) - Âm thanh\" src=\"https://cdn.tgdd.vn/Products/Images/44/233378/dell-inspiron-5502-i5-1xgr11-135321-025359.jpg\" /></a></p>\r\n\r\n<p>Laptop Dell Inspiron 5502 i5 (1XGR11)&nbsp;l&agrave; chiếc m&aacute;y t&iacute;nh&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\">học tập, văn ph&ograve;ng</a>&nbsp;c&oacute; cấu h&igrave;nh mạnh mẽ đem lại hiệu quả hoạt động tốt c&ugrave;ng thiết kế gọn nhẹ sang trọng, đ&acirc;y sẽ l&agrave; người bạn đồng h&agrave;nh ph&ugrave; hợp cho sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng so với c&aacute;c sản phẩm c&ugrave;ng ph&acirc;n kh&uacute;c.</p>\r\n', 'Thumb-mau-600x400-1.jpg', 0);
INSERT INTO `tbl_products` (`ProductID`, `ProductName`, `Number`, `MfName`, `Price`, `PI`, `Img`, `Status`) VALUES
(154, 'HP 348 G7 i5 10210U (9PH06PA)', 0, 2, 16990000, '<h2>Đặc điểm nổi bật của HP 348 G7 i5 10210U/8GB/512GB/Win10 (9PH06PA)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/218439/Slider/hp-348-g7-i5-9ph06pa-284420-094424.jpg\" /><img src=\"https://www.thegioididong.com/Content/desktop/images/V4/icon-yt.png\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: D&acirc;y nguồn ( 2 d&acirc;y ) , S&aacute;ch hướng dẫn, Th&ugrave;ng m&aacute;y, Adapter sạc</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/laptop/hp-348-g7-i5-10210u-8gb-512gb-win10-9ph06pa\" target=\"_blank\">Laptop HP 348 G7 i5 (9PH06PA)</a>&nbsp;l&agrave; mẫu laptop gi&aacute; mềm, thiết kế đẹp của HP, tập trung v&agrave;o cấu h&igrave;nh v&agrave; c&aacute;c tiện &iacute;ch sử dụng. M&aacute;y ph&ugrave; hợp cho c&aacute;c bạn sinh vi&ecirc;n hay nh&acirc;n vi&ecirc;n văn ph&ograve;ng d&ugrave;ng để xử l&yacute; c&ocirc;ng việc, học tập v&agrave; giải tr&iacute; h&agrave;ng ng&agrave;y.</h2>\r\n\r\n<h3>Hiệu năng mạnh mẽ, tốc độ nhanh ch&oacute;ng</h3>\r\n\r\n<p>Nắm bắt được sự thay đổi về c&ocirc;ng nghệ chiếc laptop HP cũng được trang bị CPU Intel&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\">Core i5</a></strong>&nbsp;thế hệ thứ 10 (vừa ra mắt cuối năm 2019) v&agrave; dung lượng&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\">RAM 8 GB</a></strong>.</p>\r\n\r\n<p>Với cấu h&igrave;nh n&agrave;y, m&aacute;y đủ sức xử l&iacute; mượt m&agrave; c&aacute;c ứng dụng văn ph&ograve;ng từ cơ bản như Word, Exel,... v&agrave; khả năng xử l&iacute; h&igrave;nh ảnh chuy&ecirc;n s&acirc;u hơn với Photoshop, Ai&hellip;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/218439/hp-348-g7-i5-9ph06pa-i5-10.jpg\" onclick=\"return false;\"><img alt=\"CPU Intel Core i5 thế hệ thứ 10 và dung lượng RAM 8 GB\" src=\"https://cdn.tgdd.vn/Products/Images/44/218439/hp-348-g7-i5-9ph06pa-i5-10.jpg\" /></a></p>\r\n\r\n<p>Bạn cũng c&oacute; thể chiến những game th&ocirc;ng dụng như LOL, CS:GO ở mức setting trung b&igrave;nh m&agrave; &iacute;t c&oacute; hiện tượng giật lag.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-vi-xu-ly-intel-core-the-he-10-1212148\" target=\"_blank\">T&igrave;m hiểu về CPU Intel thế hệ thứ 10</a></p>\r\n\r\n<p>Tốc độ phản hồi của m&aacute;y sẽ trở n&ecirc;n nhanh ch&oacute;ng với ổ cứng&nbsp;<a href=\"https://www.thegioididong.com/laptop-hp-compaq-o-cung-ssd\" target=\"_blank\">SSD</a>. Thời gian khởi động m&aacute;y th&ocirc;ng thường chỉ v&agrave;o khoảng 20 gi&acirc;y.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; dung lượng&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=ssd-512-gb\" target=\"_blank\">512 GB</a>&nbsp;</strong>l&agrave; kh&aacute; dư giả ở hiện tại, dung lượng n&agrave;y tương đương với hơn 400 tập phim Full HD 45 ph&uacute;t th&ocirc;ng thường, đảm bảo bạn c&oacute; đủ kh&ocirc;ng gian lưu trữ t&agrave;i liệu, ứng dụng..</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/218439/hp-348-g7-i5-9ph06pa-ssd.jpg\" onclick=\"return false;\"><img alt=\"HP 348 G7 có ổ cứng SSD 512 GB\" src=\"https://cdn.tgdd.vn/Products/Images/44/218439/hp-348-g7-i5-9ph06pa-ssd.jpg\" /></a></p>\r\n\r\n<h3>Chiếc m&aacute;y 14 inch gọn nhẹ kh&ocirc;ng ngờ</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-hp-compaq\" target=\"_blank\">HP</a>&nbsp;348 G7 được thiết kế đặc biệt d&agrave;nh cho đối tượng kh&aacute;ch h&agrave;ng thường xuy&ecirc;n mang chiếc laptop b&ecirc;n cạnh với trọng lượng chỉ&nbsp;<strong>1.5 kg</strong>, lớp vỏ nhựa được gia c&ocirc;ng cứng c&aacute;p gi&uacute;p cho chiếc m&aacute;y trở n&ecirc;n chắc chắn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/218439/hp-348-g7-i5-9ph06pa-kg2.jpg\" onclick=\"return false;\"><img alt=\"Chiếc máy 14 inch gọn nhẹ không ngờ\" src=\"https://cdn.tgdd.vn/Products/Images/44/218439/hp-348-g7-i5-9ph06pa-kg2.jpg\" /></a></p>\r\n\r\n<p>HP thiết kế phần ghề nổi ở ch&iacute;nh giữa m&agrave;n h&igrave;nh gi&uacute;p&nbsp;mở đ&oacute;ng m&aacute;y dễ d&agrave;ng hơn, hạn chế nỗi lo hư bản lề.</p>\r\n\r\n<p>Laptop HP 348 G7 chuẩn qu&acirc;n đội được thiết kế chịu được trường hợp rớt t&igrave;nh cờ,&nbsp;chống va đập, vẫn hoạt động tốt nếu c&oacute; v&ocirc; t&igrave;nh đ&aacute;nh rơi.</p>\r\n\r\n<h3>H&igrave;nh ảnh chất lượng cao</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh<strong>&nbsp;<a href=\"https://www.thegioididong.com/laptop-14-inch\" target=\"_blank\">14 inch</a></strong>, viền mỏng ở 2 b&ecirc;n c&ugrave;ng độ ph&acirc;n giải&nbsp;<strong>Full HD</strong>&nbsp;(1920 x 1080) hiển thị h&igrave;nh ảnh r&otilde; n&eacute;t, đẹp mắt.</p>\r\n\r\n<p>Tấm nền IPS hiển thị m&agrave;u sắc tốt hơn, g&oacute;c nh&igrave;n rộng rất hữu &iacute;ch trong qu&aacute; tr&igrave;nh thiết kế đồ họa hay chia sẻ nội dung với đồng nghiệp, bạn b&egrave; xung quanh. C&ocirc;ng nghệ chống ch&oacute;i Anti-Glare gi&uacute;p th&ocirc;ng tin tr&ecirc;n m&aacute;y vẫn dễ nh&igrave;n trong điều kiện &aacute;nh s&aacute;ng mạnh chiếu v&agrave;o m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/218439/hp-348-g7-i5-9ph06pa-inch.jpg\" onclick=\"return false;\"><img alt=\"Màn hình 14 inch, viền mỏng ở 2 bên\" src=\"https://cdn.tgdd.vn/Products/Images/44/218439/hp-348-g7-i5-9ph06pa-inch.jpg\" /></a></p>\r\n\r\n<h3>Thời lượng pin đủ d&ugrave;ng, v&acirc;n tay, cổng kết nối tiện dụng</h3>\r\n\r\n<p>Được trang bị Pin Li-Ion 3 cell, chiếc m&aacute;y c&oacute; thể hoạt động li&ecirc;n tục 4 giờ đồng hồ, sẵn s&agrave;ng b&ecirc;n bạn trong những cuộc họp hay l&agrave;m việc nh&oacute;m.&nbsp;</p>\r\n\r\n<p>Chỉ với một chạm nhẹ, cảm biến sẽ qu&eacute;t v&acirc;n tay để mở kh&oacute;a thiết bị một c&aacute;ch nhanh ch&oacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/218439/hp-348-g7-i5-9ph06pa-va%CC%82ntay.jpg\" onclick=\"return false;\"><img alt=\"Chỉ với một chạm nhẹ, cảm biến sẽ quét vân tay\" src=\"https://cdn.tgdd.vn/Products/Images/44/218439/hp-348-g7-i5-9ph06pa-va%CC%82ntay.jpg\" /></a></p>\r\n\r\n<p>HP 348 G7 hỗ trợ đầy đủ c&aacute;c cổng kết nối th&ocirc;ng dụng nhất hiện nay như: 3 x USB 3.1, HDMI, LAN (RJ45), USB Type-C. Chiếc m&aacute;y sẽ kết nối tốt với c&aacute;c thiết bị ngoại vi phục vụ nhu cầu học tập, l&agrave;m việc của bạn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/218439/hp-348-g7-i5-9ph06pa-usb.jpg\" onclick=\"return false;\"><img alt=\"HP 348 G7 hỗ trợ đầy đủ các cổng kết nối thông dụng\" src=\"https://cdn.tgdd.vn/Products/Images/44/218439/hp-348-g7-i5-9ph06pa-usb.jpg\" /></a></p>\r\n', 'hp-348-g7-i5-9ph06pa-kg2-1-218439-600x600.jpg', 0),
(155, 'HP 15s fq2028TU i5 1135G7 (2Q5Y5PA)', 2, 2, 16990000, '<h2>Đặc điểm nổi bật của HP 15s fq2028TU i5 1135G7/8GB/512GB/Win10 (2Q5Y5PA)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/232907/Slider/2028-800x444.jpg\" /><img src=\"https://www.thegioididong.com/Content/desktop/images/V4/icon-yt.png\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: D&acirc;y nguồn ( 2 d&acirc;y ) , S&aacute;ch hướng dẫn, Th&ugrave;ng m&aacute;y, Sạc Laptop HP</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/laptop/hp-15s-fq2028tu-i5-2q5y5pa\" target=\"_blank\">HP 15s fq2028TU i5 (2Q5Y5PA)</a>&nbsp;c&oacute; vẻ ngo&agrave;i nổi bật với m&agrave;u bạc thời trang, viền m&agrave;n h&igrave;nh si&ecirc;u mỏng. Cấu h&igrave;nh b&ecirc;n trong của m&aacute;y mới thực sự l&agrave;m bạn bất ngờ khi đ&acirc;y l&agrave; chiếc laptop c&oacute; hiệu năng cực mạnh trong tầm gi&aacute;.</h2>\r\n\r\n<h3>Bộ vi xử l&yacute; mạnh mẽ, đ&aacute;p ứng ho&agrave;n hảo c&ocirc;ng việc văn ph&ograve;ng</h3>\r\n\r\n<p>Sở hữu con chip&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\">Intel Core i5</a>&nbsp;Tiger Lake​&nbsp;1135G7</strong>&nbsp;thuộc d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-11\" target=\"_blank\">CPU thế hệ thứ 11</a>, laptop sẽ mang lại cho bạn một hiệu suất đồ họa cao, cải thiện tuổi thọ pin đ&aacute;ng kể. Con chip sản&nbsp;xuất tr&ecirc;n tiến tr&igrave;nh&nbsp;<strong>10 nm</strong>&nbsp;ti&ecirc;n tiến,&nbsp;với&nbsp;<strong>4 nh&acirc;n 8 luồng&nbsp;</strong>cho xung nhịp cơ sở l&agrave;<strong>&nbsp;2.4 GHz</strong>&nbsp;v&agrave; xung nhịp tối đa&nbsp;<strong>4.2 GHz&nbsp;</strong>nhờ Turbo Boost, gi&uacute;p laptop bạn đủ để chạy tốt những ứng dụng văn ph&ograve;ng, học tập v&agrave; cả những t&aacute;c vụ nặng hơn như chỉnh sửa ảnh, bi&ecirc;n tập video.</p>\r\n\r\n<p>Đi c&ugrave;ng với đ&oacute; l&agrave;&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\">RAM 8 GB</a>&nbsp;</strong>gi&uacute;p bạn l&agrave;m việc với hiệu suất cao hơn v&igrave; tốc độ&nbsp;mở c&aacute;c tập tin lớn nhanh ch&oacute;ng, mở được nhiều ứng dụng c&ugrave;ng l&uacute;c&nbsp;hay mở nhiều tab Chrome cũng kh&ocirc;ng giật lag. Ngo&agrave;i ra, RAM 8 GB c&ograve;n gi&uacute;p laptop thiết kế Photoshop, AI,... cực kỳ ổn định v&agrave; mượt m&agrave;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111121-081121.jpg\" onclick=\"return false;\"><img alt=\"HP 15s fq2028TU i5 (2Q5Y5PA) - Hiệu năng\" src=\"https://cdn.tgdd.vn/Products/Images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111121-081121.jpg\" /></a></p>\r\n\r\n<p>Nhờ ổ cứng&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=ssd-512-gb\" target=\"_blank\">SSD 512 GB</a>&nbsp;M.2 PCIe,&nbsp;</strong>bạn sẽ được tận hưởng sự mượt m&agrave;, nhanh ch&oacute;ng&nbsp;trong việc tăng tốc to&agrave;n diện m&aacute;y t&iacute;nh, cả tốc độ khởi động, mở ứng dụng lẫn truyền dữ liệu. Kh&ocirc;ng chỉ thế, bạn c&ograve;n được sở hữu một kh&ocirc;ng gian lưu trữ cực kỳ rộng lớn gi&uacute;p bạn thỏa sức lưu lại những t&agrave;i liệu học tập, những đoạn video hay bức ảnh qu&yacute; gi&aacute;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111121-081158.jpg\" onclick=\"return false;\"><img alt=\"HP 15s fq2028TU i5 (2Q5Y5PA) - SSD\" src=\"https://cdn.tgdd.vn/Products/Images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111121-081158.jpg\" /></a></p>\r\n\r\n<h3>Thiết kế mỏng nhẹ, tinh tế</h3>\r\n\r\n<p>Với sự tinh tế trong thiết kế của m&igrave;nh,&nbsp;<a href=\"https://www.thegioididong.com/laptop-hp-compaq-co-ban\" target=\"_blank\">HP 15s</a>&nbsp;đ&atilde; mang đến vẻ bề ngo&agrave;i thanh tho&aacute;t v&agrave; cực kỳ hiện đại với m&agrave;u bạc v&ocirc; c&ugrave;ng thời trang, thanh lịch. B&ecirc;n cạnh m&agrave;u sắc đẹp mắt, laptop khiến người d&ugrave;ng ấn tượng bởi trọng lượng chỉ với&nbsp;<strong>1.592 kg</strong>&nbsp;c&ugrave;ng với độ mỏng chỉ&nbsp;<strong>18 mm&nbsp;</strong>mang đến t&iacute;nh di động hơn bao giờ hết.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111221-081206.jpg\" onclick=\"return false;\"><img alt=\"HP 15s fq2028TU i5 (2Q5Y5PA) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111221-081206.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh những kết nối truyền thống như cổng&nbsp;<strong>USB 3.1, HDMI,&nbsp;</strong>khe đọc thẻ nhớ&nbsp;<strong>SD,</strong>&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;c&ograve;n mang tr&ecirc;n m&igrave;nh kết nối&nbsp;<strong>USB Type-C</strong>&nbsp;ti&ecirc;n tiến, sao lưu dữ liệu tốc độ rất cao. Đồng thời kết nối USB Type-C cũng nhỏ gọn, v&ocirc; c&ugrave;ng tiện lợi với 2 đầu cắm.</p>\r\n\r\n<p>Ngo&agrave;i ra,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/wifi-80211-chuan-a-b-g-n-ac-tren-cac-thiet-bi-di-d-734195\" target=\"_blank\">Wi-Fi 802.11 a/b/g/n/ac</a>&nbsp;gi&uacute;p&nbsp;tăng cường tốc độ kết nối Internet của laptop để bạn c&oacute; thể online, lướt web một c&aacute;ch mượt m&agrave;. Cộng với sự hỗ trợ của&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/bluetooth-50-chuan-bluetooth-danh-cho-thoi-dai-kho-1113891\" target=\"_blank\">Bluetooth v5.0</a>, bạn dễ d&agrave;ng&nbsp;kết nối với nhiều thiết bị kh&aacute;c nhau m&agrave; kh&ocirc;ng gặp bất k&igrave; kh&oacute; khăn g&igrave;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111121-081129.jpg\" onclick=\"return false;\"><img alt=\"HP 15s fq2028TU i5 (2Q5Y5PA) - Cổng kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111121-081129.jpg\" /></a></p>\r\n\r\n<h3>Trải nghiệm h&igrave;nh ảnh sắc n&eacute;t, ch&acirc;n thật</h3>\r\n\r\n<p>Nhờ trang bị c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ips-lcd-la-gi-905752\" target=\"_blank\">IPS</a>,&nbsp;g&oacute;c nh&igrave;n của bạn cũng được mở rộng đến&nbsp;<strong>178 độ&nbsp;</strong>với m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/laptop-tren-15-inch\" target=\"_blank\">15,6 inch</a>&nbsp;cho độ ph&acirc;n giải&nbsp;<strong>Full HD</strong>, hiển thị tốt mọi nội dung, mang đến những cảm gi&aacute;c mới lạ khi xem phim hay giải tr&iacute;.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra nhờ c&ocirc;ng nghệ chống ch&oacute;i&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-man-hinh-chong-choi-anti-glare-1182688\" target=\"_blank\">Anti Glare</a>, bạn dễ d&agrave;ng ho&agrave;n th&agrave;nh thật tốt c&ocirc;ng việc của m&igrave;nh d&ugrave; ở ngo&agrave;i trời với &aacute;nh s&aacute;ng ch&oacute;i gắt. Hơn nữa, với sự hỗ trợ của&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-man-hinh-wled-backlit-tren-laptop-la-gi-1263016\" target=\"_blank\">Wled-backlit</a>, c&ocirc;ng nghệ n&agrave;y sẽ gi&uacute;p m&agrave;n h&igrave;nh c&oacute; độ s&aacute;ng cao, m&agrave;u sắc kh&aacute; tốt đ&aacute;p ứng đủ nhu cầu của người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111121-081150.jpg\" onclick=\"return false;\"><img alt=\"HP 15s fq2028TU i5 (2Q5Y5PA) - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/232907/hp-15s-fq2028tu-i5-2q5y5pa-111121-081150.jpg\" /></a></p>\r\n\r\n<p>Hiểu được niềm đam m&ecirc; &acirc;m nhạc của người d&ugrave;ng,&nbsp;<a href=\"https://www.thegioididong.com/laptop-hp-compaq\" target=\"_blank\">laptop HP</a>&nbsp;đ&atilde; tinh tế trang bị c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cong-nghe-am-thanh-realtek-high-defi-1181909\" target=\"_blank\">Realtek High Definition Audio</a>&nbsp;gi&uacute;p tinh chỉnh &acirc;m trong trẻo, sống động hơn, phục vụ nhu cầu nghe nhạc, giải tr&iacute; hay họp online rất tốt.</p>\r\n\r\n<p>Laptop HP 15s fq2028TU i5 (2Q5Y5PA) sở hữu một cấu h&igrave;nh mạnh mẽ trong th&acirc;n m&aacute;y&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=mong-nhe-thoi-trang\" target=\"_blank\">mỏng nhẹ</a>, gi&uacute;p bạn xử l&yacute; gọn những t&aacute;c vụ thường ng&agrave;y, đ&aacute;p ứng trọn vẹn mọi nhu cầu học tập văn ph&ograve;ng.</p>\r\n', 'hp-15s-fq2028tu-i5-1135g7-8gb-512gb-win10-2q5y5pa-600x600.jpg', 0),
(156, 'MacBook Air 2017 128GB (MQD32SA/A)', 0, 4, 19990000, '<h2>Đặc điểm nổi bật của Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/106875/Slider/apple-macbook-air-mqd32sa-a-i5-5350u-221220-0523460.jpg\" /><img src=\"https://www.thegioididong.com/Content/desktop/images/V4/icon-yt.png\" /></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#broadwell\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/o-cung-ssd-la-gi-923073\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/tin-tuc/cac-cong-nghe-hien-thi-tren-man-hinh-laptop-597377#ledbacklit\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/magsafe-2-tren-macbook-la-gi-959220?clearcache=1\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: S&aacute;ch hướng dẫn, Th&ugrave;ng m&aacute;y, Sạc Laptop Apple</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/laptop/apple-macbook-air-mqd32sa-a-i5-5350u\" target=\"_blank\">MacBook Air 2017 i5 128GB</a>&nbsp;l&agrave; mẫu&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\">laptop văn ph&ograve;ng</a>, c&oacute; thiết kế si&ecirc;u mỏng v&agrave; nhẹ, vỏ nh&ocirc;m nguy&ecirc;n khối sang trọng. M&aacute;y c&oacute; hiệu năng ổn định, thời lượng pin cực l&acirc;u 12 giờ, ph&ugrave; hợp cho hầu hết c&aacute;c nhu cầu l&agrave;m việc v&agrave; giải tr&iacute;.&nbsp;</h2>\r\n\r\n<h3>Thiết kế si&ecirc;u mỏng v&agrave; nhẹ&nbsp;</h3>\r\n\r\n<p>Macbook Air 2017 mang những đặc trưng thiết kế của d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook-air\" target=\"_blank\">MacBook Air</a>&nbsp;với trọng lượng v&agrave; độ d&agrave;y của&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop&nbsp;</a>lần lượt l&agrave;&nbsp;<strong>1.7 cm</strong>&nbsp;v&agrave;&nbsp;<strong>1.35 kg</strong>&nbsp;rất tiện lợi v&agrave; dễ d&agrave;ng gi&uacute;p người d&ugrave;ng kh&ocirc;ng cảm thấy bất tiện khi mang tr&ecirc;n vai thường xuy&ecirc;n khi đi học hay đi l&agrave;m.&nbsp;</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\">MacBook ch&iacute;nh h&atilde;ng</a>&nbsp;c&oacute; gi&aacute; rẻ nhất hiện tại, ph&ugrave; hợp với mọi người ti&ecirc;u d&ugrave;ng.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-4.jpg\" onclick=\"return false;\"><img alt=\"Hình mô tả thiết kế Laptop MacBook Air 2017 i5 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-4.jpg\" /></a></p>\r\n\r\n<h3>Hiệu năng mượt m&agrave;</h3>\r\n\r\n<p>Macbook Air MQD32SA/A i5 5350U c&oacute; bộ xử l&yacute; Intel&nbsp;<strong>Core i5</strong>&nbsp;Broadwell hai nh&acirc;n xung nhịp 1.8 GHz, bộ nhớ&nbsp;<strong>RAM 8 GB</strong>&nbsp;thoải m&aacute;i trong việc duyệt web, chơi game, sử dụng mượt m&agrave; c&aacute;c thao t&aacute;c trong phần mềm&nbsp;<a href=\"https://www.thegioididong.com/phan-mem-microsoft-office\" target=\"_blank\">Office</a>, Photoshop, AI&hellip;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-1-1.jpg\" onclick=\"return false;\"><img alt=\"Hiệu năng mượt mà của laptop Macbook Air MQD32SA/A i5 5350U\" src=\"https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-1-1.jpg\" /></a></p>\r\n\r\n<p>Ổ cứng lưu trữ&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-apple-macbook-o-cung-ssd\" target=\"_blank\">SSD</a>&nbsp;128 GB</strong>&nbsp;cho tốc độ cực nhanh, thời gian để bạn khởi động m&aacute;y chỉ khoảng 10-15 gi&acirc;y, dung lượng 128 GB kh&ocirc;ng qu&aacute; dư giả, nhưng vẫn đủ để lưu trữ c&aacute;c t&agrave;i liệu, h&igrave;nh ảnh, ứng dụng thường d&ugrave;ng.</p>\r\n\r\n<h3>Thời lượng pin cực l&acirc;u</h3>\r\n\r\n<p>Macbook Air MQD32SA/A i5 5350U cho thời lượng sử dụng l&ecirc;n đến&nbsp;<strong>12 tiếng</strong>&nbsp;sau một lần sạc đầy khi sử dụng soạn thảo v&agrave; lướt web th&ocirc;ng thường.&nbsp;</p>\r\n\r\n<p>Với c&aacute;c t&aacute;c vụ nặng hơn như Photoshop, lướt web từ 10-20 tab, sử dụng c&aacute;c ứng dụng nhắn tin, gọi video khi l&agrave;m việc th&igrave; chiếc m&aacute;y vẫn trụ được khoảng&nbsp;<strong>5-7 tiếng li&ecirc;n tục</strong>.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u5.jpg\" onclick=\"return false;\"><img alt=\"Laptop Macbook Air MQD32SA/A i5 5350U\" src=\"https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u5.jpg\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh đ&aacute;p ứng nhu cầu sử dụng h&agrave;ng ng&agrave;y</h3>\r\n\r\n<p>Macbook Air MQD32SA/A i5 5350U c&oacute; m&agrave;n h&igrave;nh rộng&nbsp;<strong>13.3 inch</strong>, độ ph&acirc;n giải l&agrave;&nbsp;<strong>1440x900px</strong>.&nbsp;</p>\r\n\r\n<p>Mặc d&ugrave; chưa được n&acirc;ng cấp l&ecirc;n m&agrave;n h&igrave;nh Retina si&ecirc;u n&eacute;t như c&aacute;c d&ograve;ng kh&aacute;c, m&agrave;n h&igrave;nh MacBook Air 2017 vẫn cho ra&nbsp;<strong>m&agrave;u sắc trung thực</strong>, v&agrave; độ&nbsp;<strong>tương phản kh&aacute; tốt</strong>&nbsp;nhờ tấm nền LED Backlit chất lượng cao.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-manhinh.jpg\" onclick=\"return false;\"><img alt=\"Màn hình của laptop Macbook Air MQD32SA/A i5 5350U\" src=\"https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-manhinh.jpg\" /></a></p>\r\n\r\n<h3>Vẫn giữ đầy đủ c&aacute;c cổng kết nối cần thiết</h3>\r\n\r\n<p>Macbook Air MQD32SA/A i5 5350U l&agrave; d&ograve;ng MacBook duy nhất ở hiện tại c&ograve;n trang bị 2 cổng&nbsp;<strong>USB 3.0</strong>,&nbsp;<strong>SD card</strong>&nbsp;gi&uacute;p kh&aacute;ch h&agrave;ng thuận tiện hơn trong việc gắn k&egrave;m phụ kiện như chuột, b&agrave;n ph&iacute;m hay chia sẻ dữ liệu qua USB, thẻ nhớ m&aacute;y ảnh&hellip;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-400-cong-ket-noi.jpg\" onclick=\"return false;\"><img alt=\"Khe cắm của laptop Macbook Air MQD32SA/A i5 5350U\" src=\"https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-400-cong-ket-noi.jpg\" /></a></p>\r\n\r\n<h3>B&agrave;n r&ecirc; cảm ứng mượt m&agrave;, b&agrave;n ph&iacute;m tối ưu sử dụng</h3>\r\n\r\n<p>Macbook Air MQD32SA/A i5 5350U với b&agrave;n r&ecirc; c&oacute; k&iacute;ch thước&nbsp;<strong>lớn&nbsp;</strong>v&agrave; bề mặt&nbsp;<strong>trơn&nbsp;</strong>nhẵn dễ thao t&aacute;c. Trackpad n&agrave;y c&ograve;n hỗ trợ nhiều thao t&aacute;c sử dụng tiện lợi như: Cuộn, thu ph&oacute;ng, chuyển qua lại giữa c&aacute;c ứng dụng, mở khay ứng dụng nhanh ch&oacute;ng...</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cu-chi-thong-minh-voi-trackpad-tren-mac-os-848490\" target=\"_blank\">Tổng hợp c&aacute;c cử chỉ th&ocirc;ng minh với Trackpad tr&ecirc;n MacBook</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-400-track-pad.jpg\" onclick=\"return false;\"><img alt=\"Bàn di chuột lớn trên MacBook Air 2017\" src=\"https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-400-track-pad.jpg\" /></a></p>\r\n\r\n<p>B&agrave;n ph&iacute;m tr&ecirc;n MacBook Air 2017 cũng được trang bị&nbsp;<strong>đ&egrave;n nền</strong>&nbsp;gi&uacute;p bạn dễ d&agrave;ng sử dụng m&aacute;y trong b&oacute;ng tối.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-bac-7-2-org.jpg\" onclick=\"return false;\"><img alt=\"Bàn phím của laptop Macbook Air MQD32SA/A i5 5350U\" src=\"https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-bac-7-2-org.jpg\" /></a></p>\r\n', 'apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id_attribute`),
  ADD KEY `Category` (`Category`);

--
-- Chỉ mục cho bảng `attribute_detail`
--
ALTER TABLE `attribute_detail`
  ADD PRIMARY KEY (`id_product`,`id_attribute`),
  ADD KEY `id_attribute` (`id_attribute`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Chỉ mục cho bảng `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`BannerID`);

--
-- Chỉ mục cho bảng `tbl_billdetail`
--
ALTER TABLE `tbl_billdetail`
  ADD PRIMARY KEY (`BillID`,`ProductID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `tbl_bills`
--
ALTER TABLE `tbl_bills`
  ADD PRIMARY KEY (`BillID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Chỉ mục cho bảng `tbl_img`
--
ALTER TABLE `tbl_img`
  ADD PRIMARY KEY (`ProductID`,`LinkImg`);

--
-- Chỉ mục cho bảng `tbl_mfname`
--
ALTER TABLE `tbl_mfname`
  ADD PRIMARY KEY (`IdName`),
  ADD UNIQUE KEY `MfName` (`MfName`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `mf` (`MfName`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id_attribute` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `BannerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_bills`
--
ALTER TABLE `tbl_bills`
  MODIFY `BillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_mfname`
--
ALTER TABLE `tbl_mfname`
  MODIFY `IdName` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD CONSTRAINT `Category` FOREIGN KEY (`Category`) REFERENCES `category` (`id_category`);

--
-- Các ràng buộc cho bảng `attribute_detail`
--
ALTER TABLE `attribute_detail`
  ADD CONSTRAINT `attribute_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `tbl_products` (`ProductID`),
  ADD CONSTRAINT `attribute_detail_ibfk_2` FOREIGN KEY (`id_attribute`) REFERENCES `attribute` (`id_attribute`);

--
-- Các ràng buộc cho bảng `tbl_billdetail`
--
ALTER TABLE `tbl_billdetail`
  ADD CONSTRAINT `tbl_billdetail_ibfk_1` FOREIGN KEY (`BillID`) REFERENCES `tbl_bills` (`BillID`),
  ADD CONSTRAINT `tbl_billdetail_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `tbl_products` (`ProductID`);

--
-- Các ràng buộc cho bảng `tbl_bills`
--
ALTER TABLE `tbl_bills`
  ADD CONSTRAINT `tbl_bills_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `tbl_customers` (`CustomerID`);

--
-- Các ràng buộc cho bảng `tbl_img`
--
ALTER TABLE `tbl_img`
  ADD CONSTRAINT `tbl_img_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `tbl_products` (`ProductID`);

--
-- Các ràng buộc cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `mf` FOREIGN KEY (`MfName`) REFERENCES `tbl_mfname` (`IdName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
