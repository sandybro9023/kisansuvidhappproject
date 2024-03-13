-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 05:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kisaansuvidha`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `aid` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `Reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`aid`, `email`, `pass`, `Reg_date`) VALUES
(2, 'admin', 'admin', '2024-03-05 06:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `categories`, `status`, `created_at`) VALUES
(2, 'cat2', 1, '2024-03-11 04:29:51'),
(13, 'cat4', 1, '2024-03-04 19:13:10'),
(14, 'cat6', 1, '2024-03-03 10:37:05'),
(15, 'cat7', 1, '2024-03-01 17:27:35'),
(16, 'cat8', 1, '2024-03-03 10:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'sunny shukla', 'shuklasunny6363@gmail.com', '9023809530', 'test query', '2024-03-01 20:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `pincode` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `id` int(11) NOT NULL,
  `total price` float NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(15) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_description` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_description` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `product_name`, `mrp`, `price`, `qty`, `image`, `short_description`, `description`, `meta_title`, `meta_description`, `status`, `meta_keyword`) VALUES
(5, 1, 'motor2', 2344, 2000, 12, '320524423_placeholder-2.png', 'test', 'test', 'test', 'test', 1, 'test'),
(9, 14, 'tractor1', 20000, 16000, 10, '981581123_tractor.jpg', 'test', 'test', '', 'test', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `email`, `password`, `mobile`, `added_on`) VALUES
(1, 'anmol sharma', 'anmol12@gmail.com', '0', '9773154961', '2024-03-06 01:37:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
