-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 01:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `rent` int(10) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_id`, `inventory_id`, `price`, `quantity`, `date_created`, `rent`) VALUES
(128, 6, 7, 300, 1, '2023-03-03 15:35:06', 100);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Educational', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ultrices tortor. Sed at ligula non lectus tempor bibendum a nec ante. Maecenas iaculis vitae nisi eu dictum. Duis sit amet enim arcu. Etiam blandit vulputate magna, non lobortis velit pharetra vel. Morbi sollicitudin lorem sed augue suscipit, eu commodo tortor vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent eleifend interdum est, at gravida erat molestie in. Vestibulum et consectetur dui, ac luctus arcu. Curabitur et viverra elit. Cras ac eleifend ipsum, ac suscipit leo. Vivamus porttitor ac risus eu ultricies. Morbi malesuada mi vel luctus sagittis. Ut vestibulum porttitor est, id rutrum libero. Mauris at lacus vehicula, aliquam purus quis, pharetra lorem.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Proin consectetur massa ut quam molestie porta. Donec sit amet ligula odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi ex sapien, pulvinar ac arcu at, luctus scelerisque nibh. In dolor velit, pellentesque eu blandit a, mollis ac neque. Fusce tortor lectus, aliquam et eleifend id, aliquet ut libero. Nunc scelerisque vulputate turpis quis volutpat. Vivamus malesuada sem in dapibus aliquam. Vestibulum imperdiet, nulla vitae pharetra pretium, magna felis placerat libero, quis tincidunt felis diam nec nisi. Sed scelerisque ullamcorper cursus. Suspendisse posuere, velit nec rhoncus cursus, urna sapien consectetur est, et lacinia odio leo nec massa. Nam vitae nunc vitae tortor vestibulum consequat ac quis risus. Sed finibus pharetra orci, id vehicula tellus eleifend sit amet.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Morbi id ante vel velit mollis egestas. Suspendisse pretium sem urna, vitae placerat turpis cursus faucibus. Ut dignissim molestie blandit. Phasellus pulvinar, eros id ultricies mollis, lectus velit viverra mi, at venenatis velit purus id nisi. Duis eu massa lorem. Curabitur sed nibh felis. Donec faucibus, nulla at faucibus blandit, mi justo efficitur dui, non mattis nisl purus non lacus. Maecenas vel congue tellus, in convallis nisi. Curabitur faucibus interdum massa, eu facilisis ligula pretium quis. Nunc eleifend orci nec volutpat tincidunt.&lt;/p&gt;', 1, '2021-07-16 09:08:44'),
(2, 'Fiction', '&lt;p&gt;Sample 102&lt;/p&gt;', 1, '2021-07-16 09:09:25'),
(3, 'Novels', '&lt;p&gt;Sample 103&lt;/p&gt;', 1, '2021-07-16 09:09:46'),
(4, 'Documentary', '&lt;p&gt;Sample Category 104&lt;/p&gt;', 1, '2021-07-16 11:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'John', 'Smith', 'Male', '091023456789', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'Sample Address', '2021-07-16 10:34:48'),
(2, 'Akash', 'Pokharel', 'Male', '456123789', '076bct029.pralahad@sagarmatha.edu.np', '202cb962ac59075b964b07152d234b70', 'Kathmandu', '2023-02-19 15:58:01'),
(3, 'Akash', 'Pokharel', 'Male', '12456789', '12345', '81dc9bdb52d04dc20036dbd8313ed055', '146', '2023-02-23 19:52:31'),
(4, 'sahil', 'koirala', 'Male', '91234567878', 'qax@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'bhaktapur', '2023-03-03 13:27:47'),
(5, 'ASSD', 'SSD', 'Male', '123456', 'adfad@gmail.com', '64e53cd3b5a3731960538d75f5367903', '', '2023-03-03 14:34:51'),
(6, 'hello', 'orld', 'Male', '123456789', 'qaxq@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'jpt', '2023-03-03 15:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(1, 1, 50, 2500, '2021-07-16 10:02:39', NULL),
(2, 2, 20, 3500, '2021-07-16 10:09:08', NULL),
(3, 3, 10, 2500, '2021-07-16 12:05:54', NULL),
(4, 4, 50, 1999.99, '2021-07-16 13:12:10', NULL),
(5, 5, 50, 400, '2023-03-03 11:24:51', NULL),
(6, 12, 20, 200, '2023-03-03 14:30:27', NULL),
(7, 11, 20, 300, '2023-03-03 14:30:41', NULL),
(8, 9, 20, 400, '2023-03-03 14:30:53', NULL),
(9, 10, 30, 450, '2023-03-03 14:31:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL DEFAULT 1,
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(85, 4, 'bhaktapur', 'cod', 2, 400, 0, 0, '2023-03-03 13:55:09', NULL),
(86, 4, 'bhaktapur', 'cod', 2, 400, 0, 0, '2023-03-03 14:17:22', NULL),
(87, 5, '', 'cod', 2, 400, 2, 0, '2023-03-03 14:35:30', '2023-03-03 14:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(62, 95, 2, 1, 3500, 3500),
(63, 95, 4, 1, 1999.99, 1999.99),
(64, 96, 4, 1, 1999.99, 1999.99),
(65, 97, 2, 1, 3500, 3500),
(66, 98, 3, 1, 2500, 2500),
(67, 99, 5, 1, 400, 400),
(69, 85, 5, 1, 400, 400),
(70, 100, 5, 1, 400, 400),
(71, 101, 5, 1, 400, 400),
(72, 102, 5, 1, 400, 400),
(73, 104, 5, 1, 400, 400),
(74, 105, 5, 1, 400, 400),
(75, 106, 5, 1, 400, 400),
(76, 86, 5, 1, 400, 400),
(77, 107, 5, 1, 400, 400),
(78, 87, 9, 1, 400, 400);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title`, `author`, `description`, `status`, `date_created`) VALUES
(9, 3, 5, 'It Ends With Us', 'Collen Hoover', '&lt;div class=\\&quot;wp-block-media-text alignwide is-stacked-on-mobile\\&quot; style=\\&quot;color: rgb(102, 102, 102); font-family: lora, serif; font-size: 14px; letter-spacing: 1px; grid-template-columns: 15% auto;\\&quot;&gt;&lt;div class=\\&quot;wp-block-media-text__content\\&quot;&gt;&lt;p style=\\&quot;margin-right: 0px; margin-bottom: 26px; margin-left: 0px; padding: 0px;\\&quot;&gt;&lt;mark class=\\&quot;has-inline-color has-black-color\\&quot; style=\\&quot;background: rgba(0, 0, 0, 0);\\&quot;&gt;&lt;span style=\\&quot;font-family: &amp;quot;Segoe UI&amp;quot;;\\&quot;&gt;Sometimes it is the one who loves you who hurts you the most.&lt;/span&gt;&lt;/mark&gt;&lt;/p&gt;&lt;p style=\\&quot;margin-right: 0px; margin-bottom: 26px; margin-left: 0px; padding: 0px;\\&quot;&gt;&lt;mark class=\\&quot;has-inline-color has-black-color\\&quot; style=\\&quot;background: rgba(0, 0, 0, 0);\\&quot;&gt;&lt;span style=\\&quot;font-family: &amp;quot;Segoe UI&amp;quot;;\\&quot;&gt;Lily hasn&rsquo;t always had it easy, but that&rsquo;s never stopped her from working hard for the life she wants. She&rsquo;s come a long way from the small town in Maine where she grew up&mdash;she graduated from college, moved to Boston, and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily&rsquo;s life suddenly seems almost too good to be true.&lt;/span&gt;&lt;/mark&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=\\&quot;has-text-align-left\\&quot; style=\\&quot;margin-right: 0px; margin-bottom: 26px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: lora, serif; font-size: 14px; letter-spacing: 1px;\\&quot;&gt;&lt;mark class=\\&quot;has-inline-color has-black-color\\&quot; style=\\&quot;background: rgba(0, 0, 0, 0);\\&quot;&gt;&lt;span style=\\&quot;font-family: &amp;quot;Segoe UI&amp;quot;;\\&quot;&gt;Ryle is assertive, stubborn, maybe even a little arrogant. He&rsquo;s also sensitive, brilliant, and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn&rsquo;t hurt. Lily can&rsquo;t get him out of her head. But Ryle&rsquo;s complete aversion to relationships is disturbing. Even as Lily finds herself becoming the exception to his &ldquo;no dating&rdquo; rule, she can&rsquo;t help but wonder what made him that way in the first place.&lt;/span&gt;&lt;/mark&gt;&lt;/p&gt;&lt;p class=\\&quot;has-text-align-left has-black-color has-text-color\\&quot; style=\\&quot;margin-right: 0px; margin-bottom: 26px; margin-left: 0px; padding: 0px; font-family: lora, serif; font-size: 14px; letter-spacing: 1px; color: var(--wp--preset--color--black)  !important;\\&quot;&gt;&lt;span style=\\&quot;font-family: &amp;quot;Segoe UI&amp;quot;;\\&quot;&gt;As questions about her new relationship overwhelm her, so do thoughts of Atlas Corrigan&mdash;her first love and a link to the past she left behind. He was her kindred spirit, her protector. When Atlas suddenly reappears, everything Lily has built with Ryle is threatened.&lt;/span&gt;&lt;/p&gt;&lt;p class=\\&quot;has-text-align-left has-black-color has-text-color\\&quot; style=\\&quot;margin-right: 0px; margin-bottom: 26px; margin-left: 0px; padding: 0px; font-family: lora, serif; font-size: 14px; letter-spacing: 1px; color: var(--wp--preset--color--black)  !important;\\&quot;&gt;&lt;span style=\\&quot;font-family: &amp;quot;Segoe UI&amp;quot;;\\&quot;&gt;With this bold and deeply personal novel, Colleen Hoover delivers a heart-wrenching story that breaks exciting new ground for her as a writer. Combining a captivating romance with a cast of all-too-human characters, It Ends With Us is an unforgettable tale of love that comes at the ultimate price.&lt;/span&gt;&lt;/p&gt;', 1, '2023-03-03 11:44:08'),
(10, 1, 2, 'The Blue Book of Grammar and Punctuation', ' Jane Straus and Lester Kaufman\r\n', '&lt;p&gt;&lt;i style=\\&quot;color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 13px;\\&quot;&gt;&lt;span style=\\&quot;font-family: &amp;quot;Segoe UI&amp;quot;; font-size: 14px;\\&quot;&gt;The Blue Book of Grammar and Punctuation&lt;/span&gt;&lt;/i&gt;&lt;span style=\\&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Segoe UI&amp;quot;; font-size: 14px;\\&quot;&gt;&amp;nbsp;is a concise, entertaining workbook and guide to English grammar, punctuation, and usage. This user-friendly resource includes simple explanations of grammar, punctuation, and usage; scores of helpful examples; dozens of reproducible worksheets; and pre- and post-tests to help teach grammar to students of all ages. Appropriate for virtually any age range, this authoritative guide makes learning English grammar and usage simple and fun. This updated&amp;nbsp;&lt;/span&gt;&lt;i style=\\&quot;color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 13px;\\&quot;&gt;&lt;span style=\\&quot;font-family: &amp;quot;Segoe UI&amp;quot;; font-size: 14px;\\&quot;&gt;Eleventh Edition&lt;/span&gt;&lt;/i&gt;&lt;span style=\\&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Segoe UI&amp;quot;; font-size: 14px;\\&quot;&gt;&amp;nbsp;reflects the latest updates to English usage and grammar and features a fully revised two-color design and lay-flat binding for easy photocopying&lt;/span&gt;&lt;span style=\\&quot;font-family: &amp;quot;Segoe UI&amp;quot;; font-size: 14px;\\&quot;&gt;&iuml;&raquo;&iquest;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-03-03 11:55:34'),
(11, 1, 1, 'C Programming', 'Brian W. Kernighan and Dennis M. Ritchie', '&lt;p&gt;&lt;span style=\\&quot;color: rgb(15, 17, 17); font-family: &amp;quot;Segoe UI&amp;quot;; font-size: 14px;\\&quot;&gt;The authors present the complete guide to ANSI standard C language programming. Written by the developers of C, this new version helps readers keep up with the finalized ANSI standard for C while showing how to take advantage of C\\&#039;s rich set of operators, economy of expression, improved control flow, and data structures. The 2/E has been completely rewritten with additional examples and problem sets to clarify the implementation of difficult language constructs. For years, C programmers have let K&amp;amp;R guide them to building well-structured and efficient programs. Now this same help is available to those working with ANSI compilers. Includes detailed coverage of the C language plus the official C language reference manual for at-a-glance help with syntax notation, declarations, ANSI changes, scope rules, and the list goes on and on.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-03-03 12:31:23'),
(12, 4, 7, 'Blue Hope: Exploring and Caring for Earth\\\'s Magnificent Ocean', 'Sylvia A. Earle ', '&lt;p&gt;&lt;span style=\\&quot;color: rgb(15, 17, 17); font-family: &amp;quot;Segoe UI&amp;quot;; font-size: 14px;\\&quot;&gt;Dazzling photographs combine with inspiring insights from international ocean icon Sylvia Earle and other notable ocean advocates, paying a poignant tribute to the beauty and magic of the ocean and shedding light on its abundant gifts to the planet. This lyrical ode to the ocean marries the insights and inspiration of ocean advocate Sylvia Earle, and other experts and celebrities, with the world\\&#039;s most stunning photographs of beaches, coral reefs, and underwater life. All combine to express Earle\\&#039;s passionate message: Life depends on the ocean, and to save it we must love it. In seven essays, she recounts the milestones of a life spent pioneering and protecting the ocean. Supporting facts and maps bolster this book\\&#039;s clear and hopeful message: We can all play a role in keeping the heart of our planet alive&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-03-03 12:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL DEFAULT 100,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `due_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`id`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`, `due_date`) VALUES
(63, 3, '146', 'cod', 2, 875, 0, 1, '2023-02-26 22:32:15', '2023-03-03 14:14:50', '2023-03-05 22:32:15'),
(64, 3, '146', 'cod', 2, 625, 0, 1, '2023-02-26 22:44:31', '2023-03-03 14:14:50', '2023-03-05 22:44:31'),
(65, 3, '146', 'cod', 2, 625, 0, 0, '2023-02-26 22:45:27', '2023-03-03 14:14:50', '2023-03-05 22:45:27'),
(66, 3, '146', 'cod', 2, 625, 0, 0, '2023-02-26 22:45:50', '2023-03-03 14:14:50', '2023-03-05 22:45:50'),
(67, 3, '146', 'cod', 2, 625, 0, 0, '2023-02-26 23:12:02', '2023-03-03 14:14:50', '2023-03-05 23:12:02'),
(68, 3, '146', 'cod', 2, 875, 0, 0, '2023-02-27 10:57:54', '2023-03-03 14:14:50', '2023-03-06 10:57:54'),
(69, 3, '146', 'cod', 2, 875, 0, 0, '2023-02-27 10:58:36', '2023-03-03 14:14:50', '2023-03-06 10:58:36'),
(70, 3, '146', 'cod', 2, 875, 0, 0, '2023-02-27 11:00:17', '2023-03-03 14:14:50', '2023-03-06 11:00:17'),
(71, 3, '146', 'cod', 2, 875, 0, 0, '2023-02-27 11:02:45', '2023-03-03 14:14:50', '2023-03-06 11:02:45'),
(72, 3, '146', 'cod', 2, 875, 0, 0, '2023-02-27 11:13:08', '2023-03-03 14:14:50', '2023-03-06 11:13:08'),
(73, 3, '146', 'cod', 2, 625, 0, 0, '2023-02-27 11:13:57', '2023-03-03 14:14:50', '2023-03-06 11:13:57'),
(74, 3, '146', 'cod', 2, 499.9975, 0, 1, '2023-02-27 11:15:02', '2023-03-03 14:14:50', '2023-03-06 11:15:02'),
(75, 3, '146', 'cod', 2, 875, 0, 0, '2023-02-27 11:16:38', '2023-03-03 14:14:50', '2023-03-06 11:16:38'),
(76, 3, 'sdsdd', 'cod', 0, 875, 0, 0, '2023-02-27 11:46:36', '2023-03-03 14:14:50', '2023-03-06 11:46:36'),
(77, 3, '146', 'cod', 0, 875, 0, 0, '2023-02-27 11:47:51', '2023-03-03 14:14:50', '2023-03-06 11:47:51'),
(78, 3, '146', 'cod', 0, 625, 0, 0, '2023-02-27 11:48:22', '2023-03-03 14:14:50', '2023-03-06 11:48:22'),
(79, 3, '146', 'cod', 2, 0, 0, 0, '2023-02-27 12:02:41', '2023-03-03 14:14:50', '2023-03-06 12:02:41'),
(80, 3, '146', 'cod', 1, 625, 0, 0, '2023-02-27 12:06:40', '2023-03-03 14:14:50', '2023-03-06 12:06:40'),
(81, 3, '146', 'cod', 2, 1250, 0, 0, '2023-02-27 12:09:53', '2023-03-03 14:14:50', '2023-03-06 12:09:53'),
(82, 3, '146', 'cod', 2, 875, 0, 0, '2023-02-28 13:23:55', '2023-03-03 14:14:50', '2023-03-07 13:23:55'),
(83, 3, '146', 'cod', 2, 1500, 0, 0, '2023-02-28 13:26:29', '2023-03-03 14:14:50', '2023-03-07 13:26:29'),
(84, 3, '146', 'cod', 2, 625, 0, 0, '2023-02-28 13:28:27', '2023-03-03 14:14:50', '2023-03-07 13:28:27'),
(85, 3, '146', 'cod', 2, 1124.9975, 0, 0, '2023-02-28 13:42:12', '2023-03-03 14:14:50', '2023-03-07 13:42:12'),
(86, 3, '146', 'cod', 2, 499.9975, 0, 0, '2023-02-28 13:44:27', '2023-03-03 14:14:50', '2023-03-07 13:44:27'),
(87, 3, '146', 'cod', 2, 875, 0, 0, '2023-02-28 13:50:40', '2023-03-03 14:14:50', '2023-03-07 13:50:40'),
(88, 3, '146', 'cod', 2, 625, 0, 0, '2023-02-28 13:59:40', '2023-03-03 14:14:50', '2023-03-07 13:59:40'),
(89, 3, '146', 'cod', 2, 875, 0, 0, '2023-02-28 14:02:04', '2023-03-03 14:14:50', '2023-03-07 14:02:04'),
(90, 3, '146', 'cod', 2, 625, 0, 0, '2023-02-28 14:02:35', '2023-03-03 14:14:50', '2023-03-07 14:02:35'),
(91, 3, '146', 'cod', 2, 1124.9975, 0, 1, '2023-02-28 14:03:26', '2023-03-03 14:14:50', '2023-03-07 14:03:26'),
(92, 3, '146', 'cod', 2, 499.9975, 0, 0, '2023-02-28 14:07:10', '2023-03-03 14:14:50', '2023-03-07 14:07:10'),
(93, 3, '146', 'cod', 2, 625, 0, 0, '2023-02-28 14:16:17', '2023-03-03 14:14:50', '2023-03-07 14:16:17'),
(94, 3, '146', 'cod', 2, 625, 0, 1, '2023-02-28 14:16:47', '2023-03-03 14:14:50', '2023-03-07 14:16:47'),
(95, 3, '146', 'cod', 2, 1374.9975, 0, 1, '2023-02-28 14:18:15', '2023-03-03 14:14:50', '2023-03-07 14:18:15'),
(96, 3, '146', 'cod', 2, 499.9975, 0, 1, '2023-02-28 14:18:29', '2023-03-03 14:14:50', '2023-03-07 14:18:29'),
(97, 3, '146', 'cod', 2, 875, 0, 0, '2023-03-01 22:39:48', '2023-03-03 14:14:50', '2023-03-08 22:39:48'),
(98, 3, '146', 'cod', 2, 625, 0, 0, '2023-03-02 21:08:00', '2023-03-03 14:14:50', '2023-03-09 21:08:00'),
(99, 1, 'vbnj', 'cod', 1, 100, 0, 0, '2023-03-03 13:24:19', '2023-03-03 14:14:50', '2023-03-10 13:24:19'),
(100, 4, 'bhaktapur', 'cod', 0, 100, 0, 0, '2023-03-03 14:11:46', '2023-03-03 14:14:50', '2023-03-10 14:11:46'),
(101, 4, 'bhaktapur', 'cod', 1, 100, 0, 0, '2023-03-03 14:13:01', '2023-03-03 14:14:50', '2023-03-10 14:13:01'),
(102, 4, 'bhaktapur', 'cod', 0, 100, 0, 0, '2023-03-03 14:13:45', '2023-03-03 14:14:50', '2023-03-10 14:13:45'),
(103, 4, 'bhaktapur', 'cod', 1, 0, 0, 0, '2023-03-03 14:14:13', '2023-03-03 14:14:50', '2023-03-10 14:14:13'),
(104, 4, 'bhaktapur', 'cod', 0, 100, 0, 0, '2023-03-03 14:14:27', '2023-03-03 14:14:50', '2023-03-10 14:14:27'),
(105, 4, 'bhaktapur', 'cod', 0, 100, 0, 0, '2023-03-03 14:16:22', '2023-03-03 14:16:26', '2023-03-10 14:16:22'),
(106, 4, 'bhaktapur', 'cod', 0, 100, 0, 0, '2023-03-03 14:17:08', '2023-03-03 14:18:12', '2023-03-10 14:17:08'),
(107, 4, 'bhaktapur', 'cod', 0, 100, 0, 0, '2023-03-03 14:18:02', '2023-03-03 14:18:12', '2023-03-10 14:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `rent_list`
--

CREATE TABLE `rent_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rent_list`
--

INSERT INTO `rent_list` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(32, 72, 1, 1, 2500, 625),
(33, 73, 1, 1, 2500, 625),
(34, 38, 3, 1, 2500, 625),
(35, 39, 2, 1, 3500, 875),
(36, 40, 2, 1, 3500, 875),
(37, 41, 2, 1, 3500, 875),
(38, 43, 3, 1, 2500, 625),
(39, 46, 3, 1, 2500, 625),
(40, 47, 3, 1, 2500, 625),
(41, 49, 1, 1, 2500, 625),
(42, 50, 3, 1, 2500, 625),
(43, 52, 3, 1, 2500, 625),
(44, 53, 2, 1, 3500, 875),
(45, 60, 4, 1, 1999.99, 499.9975),
(46, 61, 3, 1, 2500, 625),
(47, 62, 2, 1, 3500, 875),
(48, 63, 2, 1, 3500, 875),
(49, 64, 3, 1, 2500, 625),
(50, 65, 3, 1, 2500, 625),
(51, 67, 3, 1, 2500, 625),
(52, 68, 2, 1, 3500, 875),
(53, 70, 2, 1, 3500, 875),
(54, 71, 2, 1, 3500, 875),
(55, 72, 2, 1, 3500, 875),
(56, 73, 1, 1, 2500, 625),
(57, 74, 4, 1, 1999.99, 499.9975),
(58, 75, 2, 1, 3500, 875),
(59, 76, 2, 1, 3500, 875),
(60, 77, 2, 1, 3500, 875),
(61, 78, 3, 1, 2500, 625),
(62, 80, 3, 1, 2500, 625),
(63, 81, 1, 2, 2500, 1250),
(64, 82, 2, 1, 3500, 875),
(65, 83, 1, 1, 2500, 625),
(66, 83, 2, 1, 3500, 875),
(67, 85, 1, 1, 2500, 625),
(68, 85, 4, 1, 1999.99, 499.9975),
(69, 86, 4, 1, 1999.99, 499.9975),
(70, 0, 2, 1, 3500, 875),
(71, 0, 3, 1, 2500, 625),
(72, 87, 2, 1, 3500, 875),
(73, 88, 1, 1, 2500, 625),
(74, 90, 3, 1, 2500, 2500),
(75, 91, 3, 1, 2500, 2500),
(76, 91, 4, 1, 1999.99, 1999.99);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(33, 60, 3500, '2023-02-26 19:37:37'),
(34, 61, 3500, '2023-02-26 19:38:11'),
(35, 62, 625, '2023-02-26 19:52:06'),
(36, 63, 875, '2023-02-26 19:55:50'),
(37, 64, 499.9975, '2023-02-26 19:56:53'),
(38, 65, 2500, '2023-02-26 19:57:17'),
(39, 66, 499.9975, '2023-02-26 19:59:19'),
(40, 67, 625, '2023-02-26 20:02:32'),
(41, 68, 625, '2023-02-26 20:06:29'),
(42, 69, 2500, '2023-02-26 20:14:23'),
(44, 71, 1999.99, '2023-02-26 20:19:44'),
(45, 72, 2500, '2023-02-26 20:25:50'),
(46, 73, 2500, '2023-02-26 20:26:35'),
(47, 38, 2500, '2023-02-26 20:28:03'),
(48, 39, 875, '2023-02-26 20:36:13'),
(49, 40, 3500, '2023-02-26 20:38:58'),
(50, 41, 875, '2023-02-26 20:59:57'),
(51, 43, 625, '2023-02-26 21:13:48'),
(52, 46, 625, '2023-02-26 21:25:43'),
(53, 47, 625, '2023-02-26 21:29:30'),
(54, 49, 625, '2023-02-26 21:36:00'),
(55, 74, 2500, '2023-02-26 21:44:51'),
(56, 50, 625, '2023-02-26 21:47:23'),
(57, 52, 625, '2023-02-26 22:04:51'),
(58, 53, 875, '2023-02-26 22:06:11'),
(59, 60, 499.9975, '2023-02-26 22:08:46'),
(60, 61, 625, '2023-02-26 22:10:08'),
(61, 62, 875, '2023-02-26 22:22:32'),
(62, 63, 875, '2023-02-26 22:32:15'),
(63, 64, 625, '2023-02-26 22:44:31'),
(64, 65, 625, '2023-02-26 22:45:27'),
(65, 67, 625, '2023-02-26 23:12:02'),
(66, 68, 875, '2023-02-27 10:57:54'),
(67, 70, 875, '2023-02-27 11:00:17'),
(68, 71, 875, '2023-02-27 11:02:45'),
(69, 72, 875, '2023-02-27 11:13:08'),
(70, 73, 625, '2023-02-27 11:13:57'),
(71, 75, 3500, '2023-02-27 11:14:45'),
(72, 74, 499.9975, '2023-02-27 11:15:02'),
(73, 75, 875, '2023-02-27 11:16:38'),
(74, 76, 875, '2023-02-27 11:46:36'),
(75, 77, 875, '2023-02-27 11:47:51'),
(76, 78, 625, '2023-02-27 11:48:22'),
(77, 76, 2500, '2023-02-27 11:49:54'),
(78, 77, 2500, '2023-02-27 11:53:31'),
(79, 79, 3500, '2023-02-27 12:05:29'),
(80, 80, 625, '2023-02-27 12:06:40'),
(81, 81, 1250, '2023-02-27 12:09:53'),
(82, 80, 2500, '2023-02-28 13:20:11'),
(83, 82, 875, '2023-02-28 13:23:55'),
(84, 83, 1500, '2023-02-28 13:26:29'),
(86, 85, 1124.9975, '2023-02-28 13:42:12'),
(87, 86, 499.9975, '2023-02-28 13:44:27'),
(88, 0, 875, '2023-02-28 13:46:05'),
(89, 0, 625, '2023-02-28 13:47:13'),
(90, 87, 875, '2023-02-28 13:50:40'),
(91, 88, 625, '2023-02-28 13:59:40'),
(92, 81, 625, '2023-02-28 14:01:22'),
(93, 89, 875, '2023-02-28 14:02:04'),
(94, 90, 625, '2023-02-28 14:02:35'),
(95, 91, 1124.9975, '2023-02-28 14:03:26'),
(96, 92, 499.9975, '2023-02-28 14:07:10'),
(97, 82, 2500, '2023-02-28 14:07:39'),
(98, 83, 2500, '2023-02-28 14:11:37'),
(99, 93, 625, '2023-02-28 14:16:17'),
(100, 94, 625, '2023-02-28 14:16:47'),
(101, 95, 1374.9975, '2023-02-28 14:18:15'),
(102, 96, 499.9975, '2023-02-28 14:18:29'),
(103, 97, 875, '2023-03-01 22:39:48'),
(104, 98, 625, '2023-03-02 21:08:00'),
(105, 99, 100, '2023-03-03 13:24:19'),
(107, 85, 400, '2023-03-03 13:55:09'),
(108, 100, 100, '2023-03-03 14:11:47'),
(109, 101, 100, '2023-03-03 14:13:01'),
(110, 102, 100, '2023-03-03 14:13:45'),
(111, 104, 100, '2023-03-03 14:14:27'),
(112, 105, 100, '2023-03-03 14:16:22'),
(113, 106, 100, '2023-03-03 14:17:08'),
(114, 86, 400, '2023-03-03 14:17:22'),
(115, 107, 100, '2023-03-03 14:18:02'),
(116, 87, 400, '2023-03-03 14:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `selling_form`
--

CREATE TABLE `selling_form` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `seller_email` varchar(255) NOT NULL,
  `paid` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `selling_form`
--

INSERT INTO `selling_form` (`id`, `title`, `author`, `description`, `price`, `image_url`, `seller_name`, `seller_email`, `paid`) VALUES
(4, 'ABC', 'XYZ', 'OK', '500.00', '5Y4A7201.jpg', 'MAndil', 'eshopnepal100000@gmail.com', 0),
(9, 'bjm n,m', 'hkn m,', 'nkjmlk', '78.00', '', ' mm', 'eshopnepal100@gmail.com', 0),
(12, 'ABC', 'mmm', 'OKOKOK', '100.00', '', 'Pralad', 'eshopnepal100@gmail.com', 0),
(13, 'sdf', 'sd', 'sd', '5.00', '', 'sd', 'eshopnepal100@gmail.com', 0),
(14, 'dfghjkl', 'asd', 'as', '952.00', '5Y4A7202.jpg', 'as', 'eshopnepal100@gmail.com', 0),
(15, 'sdccxc', 'aaa', 'zd', '44.00', '5Y4A7055.jpg', 'zsdz', 'eshopnepal100@gmail.com', 0),
(16, 'ok', 'ok', 'ok', '100.00', '5Y4A7222.jpg', 'ok', 'eshopnepal100@gmail.com', 0),
(17, 'ok', 'ok', 'ok', '100.00', '5Y4A7222.jpg', 'ok', 'eshopnepal100@gmail.com', 0),
(18, 'ok', 'ok', 'ok', '100.00', '', 'ok', 'eshopnepal100@gmail.com', 0),
(19, 'test', 'tester', 'TestingDone', '1000.00', 'seller_uploads/5Y4A7656.jpg', 'testing', 'eshopnepal100@gmail.com', 0),
(20, 'test', 'tester', 'TestingDone', '1000.00', 'seller_uploads/5Y4A7656.jpg', 'testing', 'eshopnepal100@gmail.com', 0),
(21, 'pokemon', 'pikachu', 'OkOKoKOK', '1000.00', 'seller_uploads/5Y4A7202.jpg', 'Pralad Sapkota', 'eshopnepal100@gmail.com', 0),
(22, 'hjk', 'as', 'wsx', '45.00', 'seller_uploads/5Y4A7066.jpg', 'asx', 'eshopnepal100@gmail.com', 0),
(23, 'hjk', 'as', 'wsx', '45.00', 'seller_uploads/5Y4A7066.jpg', 'asx', 'eshopnepal100@gmail.com', 0),
(24, 'hjk', 'as', 'wsx', '45.00', 'seller_uploads/5Y4A7066.jpg', 'asx', 'eshopnepal100@gmail.com', 0),
(25, 'v', 'n', 'l', '1.00', 'seller_uploads/5Y4A7065.jpg', 'k', 'eshopnepal100@gmail.com', 0),
(26, 'v', 'n', 'l', '1.00', 'seller_uploads/5Y4A7065.jpg', 'k', 'eshopnepal100@gmail.com', 0),
(27, 'l', 'l', 'l', '5.00', 'seller_uploads/5Y4A7065.jpg', 'l', 'eshopnepal100@gmail.com', 0),
(28, 'l', 'l', 'l', '5.00', 'seller_uploads/5Y4A7065.jpg', 'l', 'eshopnepal100@gmail.com', 0),
(29, 'pp', 'pp', 'pppp', '522.00', 'seller_uploads/5Y4A7658.jpg', 'ppp', 'eshopnepal100@gmail.com', 0),
(30, 'dsds', 'asdas', 'sdasxa', '444.00', 'seller_uploads/book6.jpg', 'dww', 'asdcs@gmail.com', 0),
(31, 'dasdassadassa', 'sasd', 'dssss', '444.00', 'seller_uploads/book8.jpg', 'adxs', 'asdcs@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Programming', '&lt;p&gt;Sample Sub Category&lt;/p&gt;', 1, '2021-07-16 09:10:44'),
(2, 1, 'Grammar', '&lt;p&gt;Sample Sub 102&lt;/p&gt;', 1, '2021-07-16 09:11:05'),
(3, 2, 'Literary', '&lt;p&gt;Sample Sub 103&lt;/p&gt;', 1, '2021-07-16 09:11:36'),
(4, 2, 'Historical', '&lt;p&gt;Sample 104&lt;/p&gt;', 1, '2021-07-16 09:12:51'),
(5, 3, 'Fantasy', '&lt;p&gt;Sample Sub 105&lt;/p&gt;', 1, '2021-07-16 09:13:28'),
(6, 3, 'Action and Adventure', '&lt;p&gt;Sample Sub 106&lt;/p&gt;', 1, '2021-07-16 09:13:49'),
(7, 4, 'Sub Cat 101', '&lt;p&gt;Sample Sub 107&lt;/p&gt;', 1, '2021-07-16 11:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Kitab-Hut'),
(6, 'short_name', 'Kitab-Hut'),
(11, 'logo', 'uploads/1677821340_Logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1677823260_banner.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'KItab', 'Hut', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2023-03-03 11:22:01'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_list`
--
ALTER TABLE `rent_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selling_form`
--
ALTER TABLE `selling_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `rent_list`
--
ALTER TABLE `rent_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `selling_form`
--
ALTER TABLE `selling_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
