-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 10:22 PM
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
-- Database: `abc_onlineshop`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `10_best_selling_products`
-- (See below for the actual view)
--
CREATE TABLE `10_best_selling_products` (
`product_id` int(11)
,`product_name` varchar(100)
,`supplier_id` int(11)
,`supplier_name` varchar(100)
,`total_amount` decimal(42,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`) VALUES
(1, 'Sony'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Nike'),
(5, 'Adidas'),
(6, 'Microsoft'),
(7, 'Google'),
(8, 'Amazon'),
(9, 'LG'),
(10, 'Dell'),
(11, 'HP'),
(12, 'Lenova'),
(13, 'Panasonic'),
(14, 'Toshiba'),
(15, 'Puma'),
(16, 'Under Armour'),
(17, 'Reebook'),
(18, 'New Balance'),
(19, 'Asics'),
(20, 'Philips');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home & Kitchen'),
(5, 'Toys & Games');

-- --------------------------------------------------------

--
-- Stand-in structure for view `clothing_products_sold_last_month`
-- (See below for the actual view)
--
CREATE TABLE `clothing_products_sold_last_month` (
`product_id` int(11)
,`product_name` varchar(100)
,`description` text
,`product_price` decimal(10,2)
,`image_url` varchar(250)
,`quantity` int(11)
,`unit_price` decimal(10,2)
,`order_date` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `pass_word` varchar(20) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `last_login`, `pass_word`, `address`, `phone`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '2024-01-01 12:00:00', 'password123', '123 Elm Street, Springfield, IL', '123-456-7890'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2024-01-02 13:00:00', 'password123', '456 Oak Street, Springfield, IL', '123-456-7891'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '2024-01-03 14:00:00', 'password123', '789 Pine Street, Springfield, IL', '123-456-7892'),
(4, 'Mary', 'Brown', 'mary.brown@example.com', '2024-01-04 15:00:00', 'password123', '101 Maple Street, Springfield, IL', '123-456-7893'),
(5, 'James', 'Williams', 'james.williams@example.com', '2024-01-05 16:00:00', 'password123', '202 Birch Street, Springfield, IL', '123-456-7894'),
(16, 'David', 'Clark', 'david.clark@example.com', '2024-01-16 10:00:00', 'password123', '234 Willow Street, Springfield, IL', '234-567-8901'),
(17, 'Emma', 'Lopez', 'emma.lopez@example.com', '2024-01-17 11:00:00', 'password123', '345 Pine Street, Springfield, IL', '234-567-8902'),
(18, 'Daniel', 'Harris', 'daniel.harris@example.com', '2024-01-18 12:00:00', 'password123', '456 Maple Street, Springfield, IL', '234-567-8903'),
(19, 'Sophia', 'Clark', 'sophia.clark@example.com', '2024-01-19 13:00:00', 'password123', '567 Oak Street, Springfield, IL', '234-567-8904'),
(20, 'Oliver', 'Martinez', 'oliver.martinez@example.com', '2024-01-20 14:00:00', 'password123', '678 Cedar Street, Springfield, IL', '234-567-8905'),
(21, 'Amelia', 'Lewis', 'amelia.lewis@example.com', '2024-01-21 15:00:00', 'password123', '789 Birch Street, Springfield, IL', '234-567-8906'),
(22, 'Lucas', 'Walker', 'lucas.walker@example.com', '2024-01-22 16:00:00', 'password123', '890 Walnut Street, Springfield, IL', '234-567-8907'),
(23, 'Mia', 'Hall', 'mia.hall@example.com', '2024-01-23 17:00:00', 'password123', '901 Ash Street, Springfield, IL', '234-567-8908'),
(24, 'Henry', 'Allen', 'henry.allen@example.com', '2024-01-24 18:00:00', 'password123', '101 Redwood Street, Springfield, IL', '234-567-8909'),
(25, 'Isabella', 'Young', 'isabella.young@example.com', '2024-01-25 19:00:00', 'password123', '202 Fir Street, Springfield, IL', '234-567-8910'),
(26, 'Aiden', 'Hernandez', 'aiden.hernandez@example.com', '2024-01-26 20:00:00', 'password123', '303 Spruce Street, Springfield, IL', '234-567-8911'),
(27, 'Liam', 'King', 'liam.king@example.com', '2024-01-27 21:00:00', 'password123', '404 Hemlock Street, Springfield, IL', '234-567-8912'),
(28, 'Emily', 'Scott', 'emily.scott@example.com', '2024-01-28 22:00:00', 'password123', '505 Poplar Street, Springfield, IL', '234-567-8913'),
(29, 'Benjamin', 'Green', 'benjamin.green@example.com', '2024-01-29 23:00:00', 'password123', '606 Cypress Street, Springfield, IL', '234-567-8914'),
(30, 'Sofia', 'Baker', 'sofia.baker@example.com', '2024-01-30 12:00:00', 'password123', '707 Palm Street, Springfield, IL', '234-567-8915'),
(31, 'Ethan', 'Williams', 'ethan.williams@example.com', '2024-01-31 08:30:00', 'password321', '112 Cherry Lane, Springfield, IL', '345-678-9012'),
(32, 'Olivia', 'Jones', 'olivia.jones@example.com', '2024-02-01 09:45:00', 'password321', '223 Pine Hill, Springfield, IL', '345-678-9013'),
(33, 'Mason', 'Brown', 'mason.brown@example.com', '2024-02-02 10:15:00', 'password321', '334 Maple Ave, Springfield, IL', '345-678-9014'),
(34, 'Ava', 'Davis', 'ava.davis@example.com', '2024-02-03 11:20:00', 'password321', '445 Oak Drive, Springfield, IL', '345-678-9015'),
(35, 'Logan', 'Miller', 'logan.miller@example.com', '2024-02-04 12:35:00', 'password321', '556 Cedar Street, Springfield, IL', '345-678-9016'),
(36, 'Sophia', 'Wilson', 'sophia.wilson@example.com', '2024-02-05 13:50:00', 'password321', '667 Birch Road, Springfield, IL', '345-678-9017'),
(37, 'Jacob', 'Moore', 'jacob.moore@example.com', '2024-02-06 14:10:00', 'password321', '778 Walnut Lane, Springfield, IL', '345-678-9018'),
(38, 'Mia', 'Taylor', 'mia.taylor@example.com', '2024-02-07 15:25:00', 'password321', '889 Ash Blvd, Springfield, IL', '345-678-9019'),
(39, 'Lucas', 'Anderson', 'lucas.anderson@example.com', '2024-02-08 16:40:00', 'password321', '990 Redwood Place, Springfield, IL', '345-678-9020'),
(40, 'Isabella', 'Thomas', 'isabella.thomas@example.com', '2024-02-09 17:55:00', 'password321', '101 Spruce Terrace, Springfield, IL', '345-678-9021'),
(41, 'Alexander', 'Jackson', 'alexander.jackson@example.com', '2024-02-10 18:00:00', 'password321', '202 Hemlock Way, Springfield, IL', '345-678-9022'),
(42, 'Charlotte', 'White', 'charlotte.white@example.com', '2024-02-11 19:10:00', 'password321', '303 Poplar Circle, Springfield, IL', '345-678-9023'),
(43, 'James', 'Harris', 'james.harris@example.com', '2024-02-12 20:20:00', 'password321', '404 Cypress Loop, Springfield, IL', '345-678-9024'),
(44, 'Amelia', 'Martin', 'amelia.martin@example.com', '2024-02-13 21:30:00', 'password321', '505 Palm Crest, Springfield, IL', '345-678-9025'),
(45, 'Michael', 'Lee', 'michael.lee@example.com', '2024-02-14 22:40:00', 'password321', '606 Cherry Bend, Springfield, IL', '345-678-9026'),
(46, 'Emma', 'Perez', 'emma.perez@example.com', '2024-02-15 23:50:00', 'password321', '707 Pine Knoll, Springfield, IL', '345-678-9027'),
(47, 'William', 'Thompson', 'william.thompson@example.com', '2024-02-16 08:10:00', 'password321', '808 Maple Ridge, Springfield, IL', '345-678-9028'),
(48, 'Emily', 'Garcia', 'emily.garcia@example.com', '2024-02-17 09:20:00', 'password321', '909 Oak Cliff, Springfield, IL', '345-678-9029'),
(49, 'Benjamin', 'Martinez', 'benjamin.martinez@example.com', '2024-02-18 10:30:00', 'password321', '111 Cedar Cove, Springfield, IL', '345-678-9030'),
(50, 'Harper', 'Robinson', 'harper.robinson@example.com', '2024-02-19 11:40:00', 'password321', '222 Birch Hollow, Springfield, IL', '345-678-9031');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_total_purchases`
-- (See below for the actual view)
--
CREATE TABLE `customer_total_purchases` (
`customer_id` int(11)
,`full_name` varchar(101)
,`total_purchases` decimal(42,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_returned_items.`
-- (See below for the actual view)
--
CREATE TABLE `list_returned_items.` (
`return_id` int(11)
,`order_item_id` int(11)
,`order_id` int(11)
,`product_id` int(11)
,`product_name` varchar(100)
,`return_date` timestamp
,`return_quantity` int(11)
,`reason` text
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `total_amount`) VALUES
(1, 1, '2024-01-01 09:00:00', 100.50),
(2, 2, '2024-01-02 10:00:00', 150.75),
(3, 3, '2024-01-03 11:00:00', 200.00),
(4, 4, '2024-01-04 12:00:00', 250.25),
(5, 5, '2024-01-05 13:00:00', 300.50),
(6, 16, '2024-01-06 14:00:00', 350.75),
(7, 17, '2024-01-07 15:00:00', 400.00),
(8, 18, '2024-01-08 16:00:00', 450.25),
(9, 19, '2024-01-09 17:00:00', 500.50),
(10, 20, '2024-01-10 18:00:00', 550.75),
(11, 21, '2024-01-11 19:00:00', 600.00),
(12, 22, '2024-01-12 20:00:00', 650.25),
(13, 23, '2024-01-13 21:00:00', 700.50),
(14, 24, '2024-01-14 22:00:00', 750.75),
(15, 25, '2024-01-15 07:00:00', 800.00),
(16, 26, '2024-01-16 08:00:00', 850.25),
(17, 27, '2024-01-17 09:00:00', 900.50),
(18, 28, '2024-01-18 10:00:00', 950.75),
(19, 29, '2024-01-19 11:00:00', 1000.00),
(20, 30, '2024-01-20 12:00:00', 1050.25),
(21, 2, '2024-06-01 08:15:00', 75.50),
(22, 3, '2024-06-01 09:30:00', 150.00),
(23, 16, '2024-06-02 10:45:00', 125.75),
(24, 5, '2024-06-03 11:00:00', 200.50),
(25, 17, '2024-06-04 12:15:00', 300.00),
(26, 18, '2024-06-05 13:30:00', 350.25),
(27, 4, '2024-06-06 14:45:00', 175.75),
(28, 19, '2024-06-07 15:00:00', 250.00),
(29, 20, '2024-06-08 16:15:00', 400.50),
(30, 21, '2024-06-09 17:30:00', 450.00),
(31, 1, '2024-06-10 18:45:00', 225.75),
(32, 22, '2024-06-11 19:00:00', 275.00),
(33, 2, '2024-06-12 20:15:00', 125.50),
(34, 3, '2024-06-13 21:30:00', 350.00),
(35, 23, '2024-06-14 06:00:00', 300.25),
(36, 4, '2024-06-15 07:15:00', 275.50),
(37, 24, '2024-06-16 08:30:00', 225.00),
(38, 5, '2024-06-17 09:45:00', 400.75),
(39, 25, '2024-06-18 10:00:00', 175.00),
(40, 26, '2024-06-19 11:15:00', 250.25),
(41, 1, '2024-06-02 08:00:00', 120.00),
(42, 2, '2024-06-05 09:30:00', 250.00),
(43, 3, '2024-06-07 12:45:00', 300.00),
(44, 4, '2024-06-10 14:15:00', 180.00),
(45, 5, '2024-06-12 07:20:00', 90.00),
(46, 16, '2024-06-15 11:50:00', 150.00),
(47, 17, '2024-06-17 06:30:00', 210.00),
(48, 18, '2024-06-20 09:00:00', 330.00),
(49, 19, '2024-06-22 13:10:00', 400.00),
(50, 20, '2024-06-25 15:25:00', 220.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status_order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `status_order_id`, `product_id`, `quantity`, `unit_price`) VALUES
(11, 1, 1, 1, 2, 25.00),
(12, 2, 2, 2, 1, 50.00),
(13, 3, 3, 3, 3, 30.00),
(14, 4, 4, 4, 1, 100.00),
(15, 5, 5, 5, 4, 75.00),
(16, 6, 6, 6, 2, 25.00),
(17, 7, 7, 7, 1, 50.00),
(18, 8, 8, 8, 3, 30.00),
(19, 9, 9, 9, 1, 100.00),
(20, 10, 10, 10, 4, 75.00),
(21, 11, 11, 11, 2, 25.00),
(22, 12, 12, 12, 1, 50.00),
(23, 13, 13, 13, 3, 30.00),
(24, 14, 14, 14, 1, 100.00),
(25, 15, 15, 15, 4, 75.00),
(26, 16, 16, 16, 2, 25.00),
(27, 17, 17, 17, 1, 50.00),
(28, 18, 18, 18, 3, 30.00),
(29, 19, 19, 19, 1, 100.00),
(30, 20, 20, 20, 4, 75.00),
(31, 41, 4, 4, 1, 90.00),
(32, 42, 4, 15, 2, 69.99),
(33, 43, 4, 16, 3, 29.99),
(34, 44, 4, 19, 2, 89.99),
(35, 45, 4, 35, 3, 29.99),
(36, 46, 4, 66, 2, 59.99),
(37, 47, 4, 54, 1, 129.99),
(38, 48, 4, 55, 2, 179.99),
(39, 49, 4, 74, 1, 49.99),
(40, 50, 4, 75, 3, 29.99);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(250) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `supplier_id`, `category_id`, `brand_id`, `description`, `product_price`, `image_url`, `tags`, `comments`) VALUES
(1, 'Sony 4K TV', 1, 1, 1, 'High-quality 4K TV', 499.99, 'https://example.com/image1.jpg', 'TV, 4K, Electronics', 'Best TV ever'),
(2, 'Samsung Galaxy S21', 2, 1, 2, 'Latest smartphone from Samsung', 799.99, 'https://example.com/image2.jpg', 'Smartphone, Electronics', 'Great phone with excellent features'),
(3, 'Apple MacBook Pro', 1, 1, 3, 'Powerful laptop from Apple', 1299.99, 'https://example.com/image3.jpg', 'Laptop, Electronics', 'Highly recommended for professionals'),
(4, 'Nike Running Shoes', 4, 2, 4, 'Comfortable running shoes', 89.99, 'https://example.com/image4.jpg', 'Shoes, Clothing', 'Perfect for running'),
(5, 'Adidas Soccer Ball', 5, 5, 5, 'Durable soccer ball', 29.99, 'https://example.com/image5.jpg', 'Soccer, Toys & Games', 'Great for training'),
(6, 'Microsoft Surface Pro', 1, 1, 6, 'Versatile 2-in-1 laptop', 999.99, 'https://example.com/image6.jpg', 'Laptop, Electronics', 'Excellent for both work and play'),
(7, 'Google Pixel 6', 2, 1, 7, 'Advanced smartphone from Google', 699.99, 'https://example.com/image7.jpg', 'Smartphone, Electronics', 'Amazing camera quality'),
(8, 'Amazon Echo Dot', 3, 1, 8, 'Smart speaker with Alexa', 49.99, 'https://example.com/image8.jpg', 'Smart Home, Electronics', 'Very useful for home automation'),
(9, 'LG Refrigerator', 4, 1, 9, 'Spacious refrigerator', 1099.99, 'https://example.com/image9.jpg', 'Appliance, Home & Kitchen', 'Keeps food fresh'),
(10, 'Dell XPS 13', 5, 1, 10, 'Compact and powerful laptop', 1199.99, 'https://example.com/image10.jpg', 'Laptop, Electronics', 'Perfect for business use'),
(11, 'HP Envy Printer', 1, 1, 11, 'High-quality printer', 199.99, 'https://example.com/image11.jpg', 'Printer, Electronics', 'Fast and reliable'),
(12, 'Lenovo ThinkPad', 2, 1, 12, 'Durable and powerful laptop', 899.99, 'https://example.com/image12.jpg', 'Laptop, Electronics', 'Ideal for business professionals'),
(13, 'Panasonic Microwave', 3, 4, 13, 'Efficient microwave oven', 149.99, 'https://example.com/image13.jpg', 'Appliance, Home & Kitchen', 'Heats food quickly'),
(14, 'Toshiba Hard Drive', 4, 1, 14, 'Reliable external hard drive', 79.99, 'https://example.com/image14.jpg', 'Storage, Electronics', 'Lots of storage space'),
(15, 'Puma Sports Jacket', 5, 2, 15, 'Stylish sports jacket', 69.99, 'https://example.com/image15.jpg', 'Jacket, Clothing', 'Comfortable and stylish'),
(16, 'Under Armour T-Shirt', 1, 2, 16, 'Breathable sports T-shirt', 29.99, 'https://example.com/image16.jpg', 'T-Shirt, Clothing', 'Great for workouts'),
(17, 'Reebok Gym Bag', 2, 2, 17, 'Spacious gym bag', 39.99, 'https://example.com/image17.jpg', 'Bag, Clothing', 'Perfect for carrying gym essentials'),
(18, 'New Balance Sneakers', 3, 2, 18, 'Comfortable and stylish sneakers', 79.99, 'https://example.com/image18.jpg', 'Shoes, Clothing', 'Great for casual wear'),
(19, 'Asics Running Shoes', 4, 2, 19, 'High-performance running shoes', 89.99, 'https://example.com/image19.jpg', 'Shoes, Clothing', 'Perfect for long-distance running'),
(20, 'Philips Headphones', 5, 1, 20, 'High-quality over-ear headphones', 99.99, 'https://example.com/image20.jpg', 'Headphones, Electronics', 'Excellent sound quality'),
(21, 'Sony Bluetooth Speaker', 1, 1, 1, 'Portable Bluetooth speaker', 49.99, 'https://example.com/image21.jpg', 'Speaker, Electronics', 'Great sound in a small package'),
(22, 'Samsung Smartwatch', 2, 1, 2, 'Advanced smartwatch', 199.99, 'https://example.com/image22.jpg', 'Smartwatch, Electronics', 'Tracks fitness and notifications'),
(23, 'Apple iPad', 3, 1, 3, 'Powerful and versatile tablet', 329.99, 'https://example.com/image23.jpg', 'Tablet, Electronics', 'Perfect for media consumption'),
(24, 'Nike Basketball', 4, 5, 4, 'Durable basketball', 29.99, 'https://example.com/image24.jpg', 'Basketball, Toys & Games', 'Great for outdoor and indoor use'),
(25, 'Adidas Track Pants', 5, 2, 5, 'Comfortable track pants', 49.99, 'https://example.com/image25.jpg', 'Pants, Clothing', 'Perfect for training'),
(26, 'Microsoft Xbox Series X', 1, 1, 6, 'Next-gen gaming console', 499.99, 'https://example.com/image26.jpg', 'Console, Electronics', 'Incredible gaming experience'),
(27, 'Google Nest Thermostat', 2, 1, 7, 'Smart thermostat', 129.99, 'https://example.com/image27.jpg', 'Smart Home, Electronics', 'Helps save energy'),
(28, 'Amazon Kindle', 3, 3, 8, 'E-reader with e-ink display', 89.99, 'https://example.com/image28.jpg', 'E-reader, Books', 'Perfect for reading books'),
(29, 'LG OLED TV', 4, 1, 9, 'Stunning OLED display', 1499.99, 'https://example.com/image29.jpg', 'TV, Electronics', 'Best picture quality'),
(30, 'Dell Inspiron Laptop', 5, 1, 10, 'Affordable and reliable laptop', 599.99, 'https://example.com/image30.jpg', 'Laptop, Electronics', 'Great for everyday use'),
(31, 'HP Pavilion Desktop', 1, 1, 11, 'Powerful desktop computer', 799.99, 'https://example.com/image31.jpg', 'Desktop, Electronics', 'Ideal for home and office use'),
(32, 'Lenovo Yoga Tablet', 2, 1, 12, 'Flexible and powerful tablet', 299.99, 'https://example.com/image32.jpg', 'Tablet, Electronics', 'Great for multimedia'),
(33, 'Panasonic Home Theater', 3, 1, 13, 'Complete home theater system', 499.99, 'https://example.com/image33.jpg', 'Home Theater, Electronics', 'Cinema experience at home'),
(34, 'Toshiba Laptop', 4, 1, 14, 'Reliable laptop', 399.99, 'https://example.com/image34.jpg', 'Laptop, Electronics', 'Great for students'),
(35, 'Puma Running Shorts', 5, 2, 15, 'Lightweight running shorts', 29.99, 'https://example.com/image35.jpg', 'Shorts, Clothing', 'Perfect for running'),
(36, 'Under Armour Cap', 1, 2, 16, 'Stylish sports cap', 19.99, 'https://example.com/image36.jpg', 'Cap, Clothing', 'Great for outdoor activities'),
(37, 'Reebok Fitness Tracker', 2, 1, 17, 'Advanced fitness tracker', 79.99, 'https://example.com/image37.jpg', 'Fitness, Electronics', 'Tracks your activity and health'),
(38, 'New Balance Jacket', 3, 2, 18, 'Comfortable and stylish jacket', 89.99, 'https://example.com/image38.jpg', 'Jacket, Clothing', 'Perfect for cool weather'),
(39, 'Asics Yoga Mat', 4, 2, 19, 'Durable yoga mat', 39.99, 'https://example.com/image39.jpg', 'Yoga, Clothing', 'Great for all types of yoga'),
(40, 'Philips Electric Toothbrush', 5, 1, 20, 'Advanced electric toothbrush', 49.99, 'https://example.com/image40.jpg', 'Toothbrush, Electronics', 'Keeps your teeth clean'),
(41, 'Sony Noise Cancelling Headphones', 1, 1, 1, 'High-quality noise-cancelling headphones', 299.99, 'https://example.com/image41.jpg', 'Headphones, Electronics', 'Blocks out all noise'),
(42, 'Samsung 4K Monitor', 2, 1, 2, 'High-resolution 4K monitor', 399.99, 'https://example.com/image42.jpg', 'Monitor, Electronics', 'Great for gaming and work'),
(43, 'Apple AirPods Pro', 3, 1, 3, 'Wireless noise-cancelling earbuds', 249.99, 'https://example.com/image43.jpg', 'Earbuds, Electronics', 'Excellent sound and comfort'),
(44, 'Nike Sports Watch', 4, 1, 4, 'Stylish sports watch', 149.99, 'https://example.com/image44.jpg', 'Watch, Electronics', 'Tracks your fitness activities'),
(45, 'Adidas Backpack', 5, 2, 5, 'Durable and stylish backpack', 59.99, 'https://example.com/image45.jpg', 'Backpack, Clothing', 'Perfect for carrying essentials'),
(46, 'Microsoft Office Suite', 1, 1, 6, 'Comprehensive office software', 149.99, 'https://example.com/image46.jpg', 'Software, Electronics', 'Essential for productivity'),
(47, 'Google Home Hub', 2, 1, 7, 'Smart home hub with display', 99.99, 'https://example.com/image47.jpg', 'Smart Home, Electronics', 'Controls your smart devices'),
(48, 'Amazon Fire TV Stick', 3, 1, 8, 'Streaming media player', 39.99, 'https://example.com/image48.jpg', 'Streaming, Electronics', 'Access all your favorite shows'),
(49, 'LG Washing Machine', 4, 4, 9, 'High-efficiency washing machine', 699.99, 'https://example.com/image49.jpg', 'Appliance, Home & Kitchen', 'Cleans clothes thoroughly'),
(50, 'Dell Ultrasharp Monitor', 5, 1, 10, 'High-resolution monitor', 499.99, 'https://example.com/image50.jpg', 'Monitor, Electronics', 'Perfect for professionals'),
(51, 'Sony PlayStation 5', 1, 1, 1, 'Next-gen gaming console', 499.99, 'https://example.com/image51.jpg', 'Console, Electronics', 'The ultimate gaming experience'),
(52, 'Samsung Galaxy Tab S7', 2, 1, 2, 'High-performance tablet', 649.99, 'https://example.com/image52.jpg', 'Tablet, Electronics', 'Great for productivity and entertainment'),
(53, 'Apple Watch Series 6', 3, 1, 3, 'Advanced smartwatch', 399.99, 'https://example.com/image53.jpg', 'Smartwatch, Electronics', 'Tracks health and fitness'),
(54, 'Nike Air Max 270', 4, 2, 4, 'Comfortable and stylish sneakers', 129.99, 'https://example.com/image54.jpg', 'Shoes, Clothing', 'Perfect for everyday wear'),
(55, 'Adidas Ultraboost', 5, 2, 5, 'High-performance running shoes', 179.99, 'https://example.com/image55.jpg', 'Shoes, Clothing', 'Great for running and training'),
(56, 'Microsoft Surface Laptop 4', 1, 1, 6, 'Powerful and versatile laptop', 1199.99, 'https://example.com/image56.jpg', 'Laptop, Electronics', 'Ideal for work and play'),
(57, 'Google Chromecast', 2, 1, 7, 'Streaming device', 49.99, 'https://example.com/image57.jpg', 'Streaming, Electronics', 'Stream your favorite content'),
(58, 'Amazon Echo Show', 3, 1, 8, 'Smart display with Alexa', 129.99, 'https://example.com/image58.jpg', 'Smart Home, Electronics', 'Controls your smart devices'),
(59, 'LG Washer and Dryer', 4, 4, 9, 'High-efficiency washer and dryer combo', 1599.99, 'https://example.com/image59.jpg', 'Appliance, Home & Kitchen', 'Perfect laundry solution'),
(60, 'Dell G5 Gaming Desktop', 5, 1, 10, 'High-performance gaming desktop', 999.99, 'https://example.com/image60.jpg', 'Desktop, Electronics', 'Built for gaming'),
(61, 'HP Omen Gaming Laptop', 1, 1, 11, 'Powerful gaming laptop', 1399.99, 'https://example.com/image61.jpg', 'Laptop, Electronics', 'Ideal for gamers'),
(62, 'Lenovo Legion Tower 5', 2, 1, 12, 'High-performance gaming desktop', 1199.99, 'https://example.com/image62.jpg', 'Desktop, Electronics', 'Perfect for gaming'),
(63, 'Panasonic Lumix Camera', 3, 1, 13, 'Professional-grade camera', 899.99, 'https://example.com/image63.jpg', 'Camera, Electronics', 'Excellent for photography'),
(64, 'Toshiba Fire TV', 4, 1, 14, 'Smart TV with built-in Fire TV', 349.99, 'https://example.com/image64.jpg', 'TV, Electronics', 'Stream all your favorite shows'),
(65, 'Puma Training Shoes', 5, 2, 15, 'Durable training shoes', 79.99, 'https://example.com/image65.jpg', 'Shoes, Clothing', 'Perfect for workouts'),
(66, 'Under Armour Hoodie', 1, 2, 16, 'Comfortable and stylish hoodie', 59.99, 'https://example.com/image66.jpg', 'Hoodie, Clothing', 'Great for casual wear'),
(67, 'Reebok Running Cap', 2, 2, 17, 'Breathable running cap', 19.99, 'https://example.com/image67.jpg', 'Cap, Clothing', 'Keeps you cool during runs'),
(68, 'New Balance Running Shoes', 3, 2, 18, 'Lightweight running shoes', 99.99, 'https://example.com/image68.jpg', 'Shoes, Clothing', 'Great for long-distance running'),
(69, 'Asics Sports Bra', 4, 2, 19, 'Comfortable sports bra', 29.99, 'https://example.com/image69.jpg', 'Sports Bra, Clothing', 'Provides excellent support'),
(70, 'Philips Air Fryer', 5, 4, 20, 'Healthy cooking with air fryer', 199.99, 'https://example.com/image70.jpg', 'Appliance, Home & Kitchen', 'Cooks food with little to no oil'),
(71, 'Sony WH-1000XM4', 1, 1, 1, 'Noise-cancelling headphones', 349.99, 'https://example.com/image71.jpg', 'Headphones, Electronics', 'Best noise-cancelling headphones'),
(72, 'Samsung QLED TV', 2, 1, 2, 'High-resolution QLED TV', 1299.99, 'https://example.com/image72.jpg', 'TV, Electronics', 'Stunning picture quality'),
(73, 'Apple HomePod Mini', 3, 1, 3, 'Smart speaker with Siri', 99.99, 'https://example.com/image73.jpg', 'Smart Home, Electronics', 'Excellent sound quality'),
(74, 'Nike Yoga Mat', 4, 2, 4, 'Non-slip yoga mat', 49.99, 'https://example.com/image74.jpg', 'Yoga, Clothing', 'Perfect for all types of yoga'),
(75, 'Adidas Running Shorts', 5, 2, 5, 'Lightweight running shorts', 29.99, 'https://example.com/image75.jpg', 'Shorts, Clothing', 'Great for running'),
(76, 'Microsoft Surface Go 2', 1, 1, 6, 'Portable 2-in-1 device', 399.99, 'https://example.com/image76.jpg', 'Tablet, Electronics', 'Great for on-the-go productivity'),
(77, 'Google Pixel Buds', 2, 1, 7, 'Wireless earbuds', 179.99, 'https://example.com/image77.jpg', 'Earbuds, Electronics', 'Excellent sound quality'),
(78, 'Amazon Fire HD 10', 3, 1, 8, 'Affordable tablet with Alexa', 149.99, 'https://example.com/image78.jpg', 'Tablet, Electronics', 'Perfect for media consumption'),
(79, 'LG Smart Refrigerator', 4, 4, 9, 'Smart refrigerator with touchscreen', 2499.99, 'https://example.com/image79.jpg', 'Appliance, Home & Kitchen', 'Keeps food fresh and organized'),
(80, 'Dell Alienware Monitor', 5, 1, 10, 'High-performance gaming monitor', 599.99, 'https://example.com/image80.jpg', 'Monitor, Electronics', 'Ideal for gaming'),
(81, 'HP Spectre x360', 1, 1, 11, 'Convertible laptop', 1499.99, 'https://example.com/image81.jpg', 'Laptop, Electronics', 'Versatile and powerful'),
(82, 'Lenovo IdeaPad', 2, 1, 12, 'Affordable laptop', 499.99, 'https://example.com/image82.jpg', 'Laptop, Electronics', 'Great for everyday use'),
(83, 'Panasonic Cordless Phone', 3, 1, 13, 'Reliable cordless phone', 79.99, 'https://example.com/image83.jpg', 'Phone, Electronics', 'Great for home use'),
(84, 'Toshiba Flash Drive', 4, 1, 14, 'High-capacity flash drive', 29.99, 'https://example.com/image84.jpg', 'Storage, Electronics', 'Portable and reliable'),
(85, 'Puma Sports Bag', 5, 2, 15, 'Spacious sports bag', 49.99, 'https://example.com/image85.jpg', 'Bag, Clothing', 'Perfect for gym and travel'),
(86, 'Under Armour Leggings', 1, 2, 16, 'Comfortable leggings', 39.99, 'https://example.com/image86.jpg', 'Leggings, Clothing', 'Great for workouts'),
(87, 'Reebok Water Bottle', 2, 2, 17, 'Insulated water bottle', 24.99, 'https://example.com/image87.jpg', 'Bottle, Clothing', 'Keeps drinks cold'),
(88, 'New Balance Running Socks', 3, 2, 18, 'Breathable running socks', 12.99, 'https://example.com/image88.jpg', 'Socks, Clothing', 'Keeps your feet comfortable'),
(89, 'Asics Training Gloves', 4, 2, 19, 'Durable training gloves', 19.99, 'https://example.com/image89.jpg', 'Gloves, Clothing', 'Provides excellent grip'),
(90, 'Philips Hue Lightstrip', 5, 1, 20, 'Smart LED lightstrip', 69.99, 'https://example.com/image90.jpg', 'Smart Home, Electronics', 'Customizable lighting for your home');

-- --------------------------------------------------------

--
-- Table structure for table `return_products`
--

CREATE TABLE `return_products` (
  `return_id` int(11) NOT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `return_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `return_quantity` int(11) NOT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_products`
--

INSERT INTO `return_products` (`return_id`, `order_item_id`, `return_date`, `return_quantity`, `reason`) VALUES
(34, 11, '2024-03-01 09:00:00', 1, 'Defective product'),
(35, 12, '2024-03-02 10:00:00', 1, 'Wrong item shipped'),
(36, 13, '2024-03-03 11:00:00', 2, 'Changed mind'),
(37, 14, '2024-03-04 12:00:00', 1, 'Item damaged in transit'),
(38, 15, '2024-03-05 13:00:00', 1, 'Not as described'),
(39, 16, '2024-03-06 14:00:00', 3, 'Better price found elsewhere'),
(40, 17, '2024-03-07 15:00:00', 1, 'Received too late'),
(41, 18, '2024-03-08 16:00:00', 2, 'Incorrect size'),
(42, 19, '2024-03-09 17:00:00', 1, 'Not satisfied with quality'),
(43, 20, '2024-03-10 18:00:00', 1, 'Product expired'),
(44, 21, '2024-03-11 19:00:00', 2, 'Received duplicate items'),
(45, 22, '2024-03-12 20:00:00', 1, 'Allergic reaction'),
(46, 23, '2024-03-13 21:00:00', 1, 'Ordered by mistake'),
(47, 24, '2024-03-14 22:00:00', 1, 'No longer needed'),
(48, 25, '2024-03-15 07:00:00', 2, 'Different from website image');

-- --------------------------------------------------------

--
-- Table structure for table `shippments`
--

CREATE TABLE `shippments` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `charge_card_time` timestamp NULL DEFAULT NULL,
  `packing_time` timestamp NULL DEFAULT NULL,
  `shipping_date` timestamp NULL DEFAULT NULL,
  `estimated_arrival_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shippments`
--

INSERT INTO `shippments` (`order_id`, `product_id`, `charge_card_time`, `packing_time`, `shipping_date`, `estimated_arrival_date`) VALUES
(1, 1, '2024-01-01 11:05:00', '2024-01-01 12:00:00', '2024-01-02 08:00:00', '2024-01-05'),
(2, 2, '2024-01-02 11:05:00', '2024-01-02 12:00:00', '2024-01-03 08:00:00', '2024-01-06'),
(3, 3, '2024-01-03 11:05:00', '2024-01-03 12:00:00', '2024-01-04 08:00:00', '2024-01-07'),
(4, 4, '2024-01-04 11:05:00', '2024-01-04 12:00:00', '2024-01-05 08:00:00', '2024-01-08'),
(5, 5, '2024-01-05 11:05:00', '2024-01-05 12:00:00', '2024-01-06 08:00:00', '2024-01-09'),
(6, 6, '2024-01-06 11:05:00', '2024-01-06 12:00:00', '2024-01-07 08:00:00', '2024-01-10'),
(7, 7, '2024-01-07 11:05:00', '2024-01-07 12:00:00', '2024-01-08 08:00:00', '2024-01-11'),
(8, 8, '2024-01-08 11:05:00', '2024-01-08 12:00:00', '2024-01-09 08:00:00', '2024-01-12'),
(9, 9, '2024-01-09 11:05:00', '2024-01-09 12:00:00', '2024-01-10 08:00:00', '2024-01-13'),
(10, 10, '2024-01-10 11:05:00', '2024-01-10 12:00:00', '2024-01-11 08:00:00', '2024-01-14'),
(11, 11, '2024-01-11 11:05:00', '2024-01-11 12:00:00', '2024-01-12 08:00:00', '2024-01-15'),
(12, 12, '2024-01-12 11:05:00', '2024-01-12 12:00:00', '2024-01-13 08:00:00', '2024-01-16'),
(13, 13, '2024-01-13 11:05:00', '2024-01-13 12:00:00', '2024-01-14 08:00:00', '2024-01-17'),
(14, 14, '2024-01-14 11:05:00', '2024-01-14 12:00:00', '2024-01-15 08:00:00', '2024-01-18'),
(15, 15, '2024-01-15 11:05:00', '2024-01-15 12:00:00', '2024-01-16 08:00:00', '2024-01-19'),
(16, 16, '2024-01-16 11:05:00', '2024-01-16 12:00:00', '2024-01-17 08:00:00', '2024-01-20'),
(17, 17, '2024-01-17 11:05:00', '2024-01-17 12:00:00', '2024-01-18 08:00:00', '2024-01-21'),
(18, 18, '2024-01-18 11:05:00', '2024-01-18 12:00:00', '2024-01-19 08:00:00', '2024-01-22'),
(19, 19, '2024-01-19 11:05:00', '2024-01-19 12:00:00', '2024-01-20 08:00:00', '2024-01-23'),
(20, 20, '2024-01-20 11:05:00', '2024-01-20 12:00:00', '2024-01-21 08:00:00', '2024-01-24'),
(1, 21, '2024-01-21 11:05:00', '2024-01-21 12:00:00', '2024-01-22 08:00:00', '2024-01-25'),
(2, 22, '2024-01-22 11:05:00', '2024-01-22 12:00:00', '2024-01-23 08:00:00', '2024-01-26'),
(3, 23, '2024-01-23 11:05:00', '2024-01-23 12:00:00', '2024-01-24 08:00:00', '2024-01-27'),
(4, 24, '2024-01-24 11:05:00', '2024-01-24 12:00:00', '2024-01-25 08:00:00', '2024-01-28'),
(5, 25, '2024-01-25 11:05:00', '2024-01-25 12:00:00', '2024-01-26 08:00:00', '2024-01-29'),
(6, 26, '2024-01-26 11:05:00', '2024-01-26 12:00:00', '2024-01-27 08:00:00', '2024-01-30'),
(7, 27, '2024-01-27 11:05:00', '2024-01-27 12:00:00', '2024-01-28 08:00:00', '2024-01-31'),
(8, 28, '2024-01-28 11:05:00', '2024-01-28 12:00:00', '2024-01-29 08:00:00', '2024-02-01'),
(9, 29, '2024-01-29 11:05:00', '2024-01-29 12:00:00', '2024-01-30 08:00:00', '2024-02-02'),
(10, 30, '2024-01-30 11:05:00', '2024-01-30 12:00:00', '2024-01-31 08:00:00', '2024-02-03'),
(11, 31, '2024-01-31 11:05:00', '2024-01-31 12:00:00', '2024-02-01 08:00:00', '2024-02-04'),
(12, 32, '2024-02-01 11:05:00', '2024-02-01 12:00:00', '2024-02-02 08:00:00', '2024-02-05'),
(13, 33, '2024-02-02 11:05:00', '2024-02-02 12:00:00', '2024-02-03 08:00:00', '2024-02-06'),
(14, 34, '2024-02-03 11:05:00', '2024-02-03 12:00:00', '2024-02-04 08:00:00', '2024-02-07'),
(15, 35, '2024-02-04 11:05:00', '2024-02-04 12:00:00', '2024-02-05 08:00:00', '2024-02-08'),
(16, 36, '2024-02-05 11:05:00', '2024-02-05 12:00:00', '2024-02-06 08:00:00', '2024-02-09'),
(17, 37, '2024-02-06 11:05:00', '2024-02-06 12:00:00', '2024-02-07 08:00:00', '2024-02-10'),
(18, 38, '2024-02-07 11:05:00', '2024-02-07 12:00:00', '2024-02-08 08:00:00', '2024-02-11'),
(19, 39, '2024-02-08 11:05:00', '2024-02-08 12:00:00', '2024-02-09 08:00:00', '2024-02-12'),
(20, 40, '2024-02-09 11:05:00', '2024-02-09 12:00:00', '2024-02-10 08:00:00', '2024-02-13'),
(1, 41, '2024-02-10 11:05:00', '2024-02-10 12:00:00', '2024-02-11 08:00:00', '2024-02-14'),
(2, 42, '2024-02-11 11:05:00', '2024-02-11 12:00:00', '2024-02-12 08:00:00', '2024-02-15'),
(3, 43, '2024-02-12 11:05:00', '2024-02-12 12:00:00', '2024-02-13 08:00:00', '2024-02-16'),
(4, 44, '2024-02-13 11:05:00', '2024-02-13 12:00:00', '2024-02-14 08:00:00', '2024-02-17'),
(5, 45, '2024-02-14 11:05:00', '2024-02-14 12:00:00', '2024-02-15 08:00:00', '2024-02-18'),
(6, 46, '2024-02-15 11:05:00', '2024-02-15 12:00:00', '2024-02-16 08:00:00', '2024-02-19'),
(7, 47, '2024-02-16 11:05:00', '2024-02-16 12:00:00', '2024-02-17 08:00:00', '2024-02-20'),
(8, 48, '2024-02-17 11:05:00', '2024-02-17 12:00:00', '2024-02-18 08:00:00', '2024-02-21'),
(9, 49, '2024-02-18 11:05:00', '2024-02-18 12:00:00', '2024-02-19 08:00:00', '2024-02-22'),
(10, 50, '2024-02-19 11:05:00', '2024-02-19 12:00:00', '2024-02-20 08:00:00', '2024-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `status_order`
--

CREATE TABLE `status_order` (
  `status_order_id` int(11) NOT NULL,
  `status_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_order`
--

INSERT INTO `status_order` (`status_order_id`, `status_name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Delivered'),
(5, 'Canceled'),
(6, 'Returned'),
(7, 'Refunded'),
(8, 'Awaiting Payment'),
(9, 'Payment Received'),
(10, 'Awaiting Fulfillment'),
(11, 'Awaiting Shipment'),
(12, 'Partially Shipped'),
(13, 'Completed'),
(14, 'On Hold'),
(15, 'Awaiting Pickup'),
(16, 'In Production'),
(17, 'Partially Refunded'),
(18, 'Failed'),
(19, 'Manual Verification '),
(20, 'Backordered');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `address` varchar(300) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `address`, `phone`) VALUES
(1, 'Best Supplies Inc.', '123 Main Street, Springfield, IL', '456-789-0123'),
(2, 'Quality Goods Ltd.', '456 Elm Street, Shelbyville, IL', '234-567-8901'),
(3, 'Tech Distributors', '789 Oak Avenue, Capital City, IL', '123-456-7890'),
(4, 'Fashion Hub', '101 Maple Road, Ogdenville, CA', '567-890-1234'),
(5, 'Book World', '202 Pine Lane, North Haverbrook, NY', '345-678-9012');

-- --------------------------------------------------------

--
-- Stand-in structure for view `suppliers_products`
-- (See below for the actual view)
--
CREATE TABLE `suppliers_products` (
`supplier_id` int(11)
,`supplier_name` varchar(100)
,`phone` varchar(20)
,`address` varchar(300)
,`product_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `10_best_selling_products`
--
DROP TABLE IF EXISTS `10_best_selling_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `10_best_selling_products`  AS SELECT `p`.`product_id` AS `product_id`, `p`.`product_name` AS `product_name`, `p`.`supplier_id` AS `supplier_id`, `s`.`supplier_name` AS `supplier_name`, sum(`oi`.`quantity` * `oi`.`unit_price`) AS `total_amount` FROM ((`products` `p` join `order_items` `oi` on(`p`.`product_id` = `oi`.`product_id`)) join `suppliers` `s` on(`p`.`supplier_id` = `s`.`supplier_id`)) GROUP BY `p`.`product_id`, `p`.`product_name`, `p`.`supplier_id`, `s`.`supplier_name` ORDER BY sum(`oi`.`quantity` * `oi`.`unit_price`) DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Structure for view `clothing_products_sold_last_month`
--
DROP TABLE IF EXISTS `clothing_products_sold_last_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clothing_products_sold_last_month`  AS SELECT `p`.`product_id` AS `product_id`, `p`.`product_name` AS `product_name`, `p`.`description` AS `description`, `p`.`product_price` AS `product_price`, `p`.`image_url` AS `image_url`, `oi`.`quantity` AS `quantity`, `oi`.`unit_price` AS `unit_price`, `o`.`order_date` AS `order_date` FROM (((`products` `p` join `order_items` `oi` on(`p`.`product_id` = `oi`.`product_id`)) join `orders` `o` on(`oi`.`order_id` = `o`.`order_id`)) join `categories` `c` on(`p`.`category_id` = `c`.`category_id`)) WHERE `c`.`category_name` = 'Clothing' AND `o`.`order_date` >= date_format(current_timestamp() - interval 1 month,'%Y-%m-01') AND `o`.`order_date` < date_format(current_timestamp(),'%Y-%m-01') ;

-- --------------------------------------------------------

--
-- Structure for view `customer_total_purchases`
--
DROP TABLE IF EXISTS `customer_total_purchases`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_total_purchases`  AS SELECT `c`.`customer_id` AS `customer_id`, concat(`c`.`first_name`,' ',`c`.`last_name`) AS `full_name`, sum(`oi`.`quantity` * `oi`.`unit_price`) AS `total_purchases` FROM ((`customers` `c` join `orders` `o` on(`c`.`customer_id` = `o`.`customer_id`)) join `order_items` `oi` on(`o`.`order_id` = `oi`.`order_id`)) GROUP BY `c`.`customer_id`, `c`.`first_name`, `c`.`last_name` ORDER BY sum(`oi`.`quantity` * `oi`.`unit_price`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `list_returned_items.`
--
DROP TABLE IF EXISTS `list_returned_items.`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `list_returned_items.`  AS SELECT `rp`.`return_id` AS `return_id`, `rp`.`order_item_id` AS `order_item_id`, `oi`.`order_id` AS `order_id`, `oi`.`product_id` AS `product_id`, `p`.`product_name` AS `product_name`, `rp`.`return_date` AS `return_date`, `rp`.`return_quantity` AS `return_quantity`, `rp`.`reason` AS `reason` FROM ((`return_products` `rp` join `order_items` `oi` on(`rp`.`order_item_id` = `oi`.`order_item_id`)) join `products` `p` on(`oi`.`product_id` = `p`.`product_id`)) ORDER BY `rp`.`return_date` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `suppliers_products`
--
DROP TABLE IF EXISTS `suppliers_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `suppliers_products`  AS SELECT `s`.`supplier_id` AS `supplier_id`, `s`.`supplier_name` AS `supplier_name`, `s`.`phone` AS `phone`, `s`.`address` AS `address`, count(`p`.`product_id`) AS `product_count` FROM (`suppliers` `s` left join `products` `p` on(`s`.`supplier_id` = `p`.`supplier_id`)) GROUP BY `s`.`supplier_id`, `s`.`supplier_name`, `s`.`phone`, `s`.`address` ORDER BY count(`p`.`product_id`) DESC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `status_order_id` (`status_order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `return_products`
--
ALTER TABLE `return_products`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `order_item_id` (`order_item_id`);

--
-- Indexes for table `shippments`
--
ALTER TABLE `shippments`
  ADD PRIMARY KEY (`product_id`,`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `status_order`
--
ALTER TABLE `status_order`
  ADD PRIMARY KEY (`status_order_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `return_products`
--
ALTER TABLE `return_products`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `status_order`
--
ALTER TABLE `status_order`
  MODIFY `status_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`status_order_id`) REFERENCES `status_order` (`status_order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`);

--
-- Constraints for table `return_products`
--
ALTER TABLE `return_products`
  ADD CONSTRAINT `return_products_ibfk_1` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`order_item_id`);

--
-- Constraints for table `shippments`
--
ALTER TABLE `shippments`
  ADD CONSTRAINT `shippments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `shippments_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
