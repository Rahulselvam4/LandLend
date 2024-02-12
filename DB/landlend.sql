-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 12:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landlend`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `image` varchar(250) NOT NULL,
  `Mobile` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Username`, `Password`, `image`, `Mobile`) VALUES
('admin', '12345678', '', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(100) NOT NULL,
  `farmer_id` int(100) NOT NULL,
  `area` varchar(10) NOT NULL,
  `plotnumber` int(150) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Soiltype` varchar(100) NOT NULL,
  `Amount` int(5) NOT NULL,
  `description` varchar(259) NOT NULL,
  `document` varchar(259) NOT NULL,
  `plot_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `farmer_id`, `area`, `plotnumber`, `Location`, `Soiltype`, `Amount`, `description`, `document`, `plot_id`) VALUES
(25, 7, '10000 ', 409, 'usilampatti', 'alluvial soil', 50, 'for cultivating', 'agri1.png', 57),
(26, 7, '10000 ', 409, 'usilampatti', 'alluvial soil', 50, 'for cultivating', 'agri1.png', 57),
(27, 7, '10000 ', 409, 'usilampatti', 'alluvial soil', 50, 'for cultivating', 'agri1.png', 57);

-- --------------------------------------------------------

--
-- Table structure for table `contact_admin`
--

CREATE TABLE `contact_admin` (
  `Mobile` text NOT NULL,
  `Message` varchar(250) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_admin`
--

INSERT INTO `contact_admin` (`Mobile`, `Message`, `Email`) VALUES
('2147483647', 'hi venkatesh', 'farmer@gmail.com'),
('2147483647', 'hi vishwanathan', 'dog@gmail.com'),
('2147483647', 'hi chems', 'provider@gmail.com'),
('8778140971', 'hi aarif', 'provider@gmail.com'),
('1234567898', 'oeu doubt', 'admin@gmail.com'),
('1234567890', 'qweertyu', 'provider@gmail.com'),
('8778140971', 'just checking', 'check@gmail.com'),
('8778233386', 'Hi admin ', 'vishwa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cultiproduct`
--

CREATE TABLE `cultiproduct` (
  `product` varchar(100) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Amount` int(5) NOT NULL,
  `description` varchar(250) NOT NULL,
  `document` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `Mobile` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cultiproduct`
--

INSERT INTO `cultiproduct` (`product`, `quantity`, `Location`, `Amount`, `description`, `document`, `user_id`, `Mobile`) VALUES
('CALIFLOWER', '10kg', 'karur', 700, 'fresh thakkali', 'WIN_20230519_16_49_06_Pro.jpg', 1, 2147483647),
('CALIFLOWER', '10kg', 'mdu', 400, 'super fresh', 'WIN_20230520_17_53_19_Pro.jpg', 1, 2147483647),
('brinjal', '10kg', 'karur', 500, 'fresh products', 'farms.png', 1, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `orderid` int(100) NOT NULL,
  `farmerid` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` int(10) NOT NULL,
  `area` varchar(25) NOT NULL,
  `plotnumber` int(100) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Soiltype` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `Amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `eqname` int(100) NOT NULL,
  `model` varchar(30) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Amount` int(5) NOT NULL,
  `description` varchar(250) NOT NULL,
  `document` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `Mobile` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`eqname`, `model`, `Location`, `Amount`, `description`, `document`, `user_id`, `Mobile`) VALUES
(0, '2011 model', 'karur', 2000, 'swaraj tractor', 'register.jpg', 2, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `plot_id` int(100) NOT NULL,
  `area` varchar(30) NOT NULL,
  `plotnumber` int(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Soiltype` varchar(50) NOT NULL,
  `Amount` int(5) NOT NULL,
  `years` float NOT NULL,
  `description` varchar(250) NOT NULL,
  `document` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `Mobile` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`plot_id`, `area`, `plotnumber`, `Location`, `Soiltype`, `Amount`, `years`, `description`, `document`, `user_id`, `Mobile`) VALUES
(55, '3000', 1, 'csdc', 'red soils', 7000, 2, 'agri', 'register.jpg', 2, 1234567890),
(56, '20 cent', 5, 'karur', 'red soil', 70, 2, 'qwertyu', 'agri1.png', 2, 1234567890),
(57, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', 'agri1.png', 10, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `productsfarmer`
--

CREATE TABLE `productsfarmer` (
  `plot_id` int(100) NOT NULL,
  `area` varchar(30) NOT NULL,
  `plotnumber` int(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Soiltype` varchar(50) NOT NULL,
  `Amount` int(5) NOT NULL,
  `years` float NOT NULL,
  `description` varchar(250) NOT NULL,
  `document` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `Mobile` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productsfarmer`
--

INSERT INTO `productsfarmer` (`plot_id`, `area`, `plotnumber`, `Location`, `Soiltype`, `Amount`, `years`, `description`, `document`, `user_id`, `Mobile`) VALUES
(0, '10000', 409, 'usilampatti', '', 50, 5, 'for cultivating', '', 0, 0),
(0, '10000', 409, 'usilampatti', '', 50, 5, 'for cultivating', '', 0, 0),
(0, '10000', 409, 'usilampatti', '', 50, 5, 'for cultivating', '', 0, 0),
(0, '10000', 409, 'usilampatti', '', 50, 5, 'for cultivating', '', 0, 0),
(0, '10000', 409, 'usilampatti', '', 50, 5, 'for cultivating', '', 0, 0),
(0, '10000', 409, 'usilampatti', '', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', '', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890),
(0, '10000', 409, 'usilampatti', 'alluvial soil', 50, 5, 'for cultivating', '', 7, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Mobile` int(10) NOT NULL,
  `Category` int(3) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Email`, `Password`, `Mobile`, `Category`, `Image`) VALUES
(1, 'farmer', 'farmer@gmail.com', '12345678', 2147483647, 1, ''),
(2, 'provider', 'provider@gmail.com', '12345678', 1234567890, 2, ''),
(3, 'consumer', 'consumer@gmail.com', '12345678', 1234567890, 3, ''),
(4, 'dog', 'dog@gmail.com', '12345678', 1234567890, 1, ''),
(5, 'sat', 'sat@gmail.com', '12345678', 1234567890, 2, ''),
(6, 'sathish', 'satt@gmail.com', '12345678', 1234567890, 1, ''),
(7, 'admin', 'admin@gmail.com', '12345678', 1234567890, 0, ''),
(8, 'land', 'land@gmail.com', '12345678', 1234567890, 2, ''),
(9, 'farm', 'farm@gmail.com', '12345678', 1234567890, 1, ''),
(10, 'vishwa', 'vishwa@gmail.com', '12345678', 2147483647, 2, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`plot_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `plot_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
