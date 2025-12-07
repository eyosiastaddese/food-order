-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 09:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--
CREATE DATABASE IF NOT EXISTS `food-order` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `food-order`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(13, 'Eyosias Taddese', 'eyosiast', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizzas', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(5, 'Burgers', 'Food_Category_0.jpg', 'Yes', 'Yes'),
(9, 'Breakfasts', 'Food_Category_309.jpeg', 'No', 'Yes'),
(10, 'Lunch Foods', 'Food_Category_598.jpg', 'No', 'Yes'),
(11, 'Fast Foods', 'Food_Category_466.webp', 'No', 'Yes'),
(12, 'ሸገር Delivery Specials', 'Food_Category_346.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Normal Burger', 'Burger with beef patty, lettuce, tomato, onions, pickles, and ketchup or mustard, all served in a toasted bun.', '250.00', 'Food-Name-6340.jpg', 5, 'No', 'Yes'),
(5, 'Smoky BBQ Pizza', 'Best Firewood Pizza in Town.', '270.00', 'Food-Name-8298.jpg', 4, 'No', 'Yes'),
(9, 'Special Burger', 'A combination of premium ingredients, include a chicken, melted cheese, lettuce, tomatoes, pickles, onions, and special sauces.', '500.00', 'Food-Name-2479.webp', 12, 'Yes', 'Yes'),
(10, 'Special Pizza', 'A special pizza includes a mix of premium toppings like meats, vegetables, and extra cheeses, all on a flavorful crust.', '550.00', 'Food-Name-3398.jpg', 12, 'Yes', 'Yes'),
(11, 'Special Firfir (ስፔሻል ፍርፍር)', 'Made with shredded injera mixed with spicy berbere sauce, vegetables, and often meat. It’s a flavorful, savory dish typically served as breakfast or a hearty meal.', '300.00', 'Food-Name-8463.jpg', 12, 'Yes', 'Yes'),
(12, 'Beef Burger', 'lettuce, tomato, onions, pickles, cheese, and sauces, all in a toasted bun.', '250.00', 'Food-Name-728.jpg', 5, 'No', 'Yes'),
(13, 'Cheese Burger', 'melted cheese, usually served with lettuce, tomato, onions, pickles, and sauces, all in a toasted bun.', '270.00', 'Food-Name-7679.jpg', 5, 'No', 'Yes'),
(14, 'Chicken Burger', 'Chicken patty, often grilled or fried, served with lettuce, tomato, pickles, onions, and sauces, all in a toasted bun.', '350.00', 'Food-Name-2612.jpg', 5, 'No', 'Yes'),
(15, 'Crispy Chicken Pizza', 'crispy chicken pieces, cheese, vegetables, and a savory sauce', '400.00', 'Food-Name-8870.jpg', 4, 'No', 'Yes'),
(16, 'Tuna Delight', 'Crust topped with tuna, cheese, onions, and often vegetables like bell peppers, all drizzled with a savory sauce.', '450.00', 'Food-Name-1474.png', 4, 'Yes', 'Yes'),
(17, 'Spaghetti / Pasta (ፓስታ)', 'A long, thin pasta typically served with a variety of sauces', '250.00', 'Food-Name-3600.jpg', 10, 'No', 'Yes'),
(18, 'Beef Stew', 'Chunks of beef, vegetables like carrots, potatoes, and onions, simmered in a savory broth or gravy until fully cooked and flavorful.', '400.00', 'Food-Name-9698.jpg', 10, 'Yes', 'Yes'),
(19, 'Spicy Chicken', 'Made with chicken cooked in a flavorful, spicy marinade or sauce, often featuring ingredients like chili, garlic, and other bold seasonings for a hot, zesty taste.', '550.00', 'Food-Name-8761.webp', 10, 'Yes', 'Yes'),
(20, 'Enjera Firfir (እንጀራ ፍርፍር)', 'A traditional Ethiopian dish made with shredded injera (a sour flatbread) mixed with spicy berbere sauce', '200.00', 'Food-Name-9407.jpg', 9, 'No', 'Yes'),
(21, 'Chechebsa (ጨጨብሳ)', 'Made with shredded flatbread mixed with spiced butter and honey.', '250.00', 'Food-Name-9175.jpg', 9, 'No', 'Yes'),
(22, 'Chips with Ketchup', 'crispy fried potato chips served with a side of ketchup for dipping.', '150.00', 'Food-Name-4446.jpg', 11, 'No', 'Yes'),
(23, 'Egg Sandwich (እንቁላል ሳንድዊች)', 'A cooked egg (usually scrambled or fried) between two slices of bread.', '150.00', 'Food-Name-249.webp', 11, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Sadeko Momo', '6.00', 3, '18.00', '2020-11-30 03:49:48', 'Cancelled', 'Bradley Farrell', '0912504465', 'zuhafiq@mailinator.com', 'Duis aliqua Qui lor'),
(4, 'Mixed Pizza', '10.00', 2, '20.00', '2024-12-22 11:00:44', 'Delivered', 'Eyosias Taddese', '0919328260', 'Eyosiastaddese12@gmail.com', 'Addis Ababa'),
(5, 'Tuna Delight', '450.00', 1, '450.00', '2024-12-22 09:45:00', 'Delivered', 'Kebede abebe', '09323892938', 'abcde@yahoo.com', 'Addis Ababa\r\nPO.Box 15470');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
