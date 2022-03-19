-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 02:28 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigfoot`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brandid` int(8) NOT NULL,
  `name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brandid`, `name`) VALUES
(1, 'Capezio'),
(2, 'CTM'),
(3, 'LAVRA'),
(4, 'The Highest Heel'),
(5, 'Drew'),
(6, 'Propet'),
(7, 'MyPartyShirt'),
(8, 'Aerosoles'),
(9, 'Softwalk'),
(10, 'Skechers'),
(11, 'Ellie Shoes'),
(12, 'Pleaser'),
(13, 'Simlu'),
(14, 'UGG'),
(15, 'Ariat'),
(16, 'Tanleewa'),
(17, 'WalterDrake'),
(18, 'Alotta Knits'),
(19, 'Dolce Vita'),
(20, 'Yellow Box'),
(21, 'Forever Link'),
(22, 'Miz Mooz'),
(23, 'New Balance'),
(24, 'Steve Madden'),
(25, 'Penny Loves Kenny'),
(26, 'Puma'),
(27, 'Asics'),
(28, 'Lauren Ralph Lauren'),
(29, 'Charles By Charles David'),
(30, 'Lifestride'),
(31, 'Muck Boot Company'),
(32, 'Toms'),
(33, 'Reebok'),
(34, 'SOREL'),
(35, 'Tretorn'),
(36, 'Exotic Identity'),
(37, 'Madden Girl'),
(38, 'Vans'),
(39, 'INC International Concepts'),
(40, 'Avia'),
(41, 'Grasshoppers'),
(42, 'Under Armour'),
(43, 'Mizuno'),
(44, 'THEATRICALS'),
(45, 'Ahnu'),
(46, 'Baretraps'),
(47, 'Trotters'),
(48, 'Ros Hommerson'),
(49, 'SAS'),
(50, 'Easy Street'),
(51, 'easy-street'),
(52, 'Dr. Scholl\'s Shoes'),
(53, 'Palladium'),
(54, 'FRANCO SARTO'),
(55, 'Sperry Top -Sider'),
(56, 'Coach'),
(57, 'ryka'),
(58, 'Carlos by Carlo Santana'),
(59, 'MICHAEL Michael Kors'),
(60, 'TuffRider'),
(61, 'Jambu'),
(62, 'Not Rated'),
(63, 'Unique Bargains'),
(64, 'Corral'),
(65, 'white-mountain'),
(66, 'Brooks'),
(67, 'sperry-top-sider'),
(68, 'Vionic'),
(69, 'Bjorndal'),
(70, 'Beacon Shoes'),
(71, 'Callisto'),
(72, 'Steven by Steve Madden'),
(73, 'Peerage'),
(74, 'Brinley Co.'),
(75, 'Bellini'),
(76, 'Fuzzy'),
(77, 'Fergie Shoes'),
(78, 'Chinese Laundry'),
(79, 'J75'),
(80, 'Twisted X Boots'),
(81, 'Fergalicious'),
(82, 'White Mountain'),
(83, 'Alfani'),
(84, 'Bella Vita'),
(85, 'Rialto'),
(86, 'David Tate'),
(87, 'Giani Bernini'),
(88, 'Soft Style'),
(89, 'Floral'),
(90, 'Indigo Rd.'),
(91, 'Genuine Grip'),
(92, 'Vionic with Orthaheel Technology'),
(93, 'Dr. Comfort'),
(94, 'Timberland PRO'),
(95, 'Aeorosoles'),
(96, 'Dyeables'),
(97, 'Faded Glory'),
(98, 'The Walking Cradle Company'),
(99, 'Marc Joseph New York'),
(100, 'Vaneli'),
(101, 'Easy Spirit'),
(102, 'Vasque'),
(103, 'ARRAY'),
(104, 'Rock Candy'),
(105, 'Style Co.'),
(106, 'A2 by Aerosoles'),
(107, 'Comfortiva'),
(108, 'OwnShoe'),
(109, 'diba-true'),
(110, 'Carlos by Carlos Santana'),
(111, 'Genuine Grip Footwear'),
(112, 'Adidas'),
(113, 'Diba True'),
(114, 'jbu-by-jambu'),
(115, 'Lamo'),
(116, 'Gentle Souls by Kenneth Cole'),
(117, 'Benjamin Walk Dyeables'),
(118, 'Benjamin Walk'),
(119, 'Touch Ups'),
(120, 'Old West'),
(121, 'Dan Post'),
(122, 'Beacon'),
(123, 'Naturalizer'),
(124, 'Michael By Michael Shannon'),
(125, 'Sam Edelman'),
(126, 'Soft Style by Hush Puppies'),
(127, 'Muck'),
(128, 'Call It Spring'),
(129, 'Revelstoke'),
(130, '1.STATE'),
(131, 'Volatile'),
(132, 'Qupid'),
(133, 'Caterpillar'),
(134, 'Naughty Monkey'),
(135, 'Very Volatile'),
(136, 'Delicious'),
(137, 'Wild Diva'),
(138, 'Carter\'s'),
(139, 'FOREVER'),
(140, 'Fitflop'),
(141, 'Haughty'),
(142, 'Fila'),
(143, 'Annie'),
(144, 'Charles David'),
(145, 'MAH'),
(146, 'Carlos'),
(147, 'Bogs'),
(148, 'City Classified'),
(149, 'Soda'),
(150, 'J. Adams'),
(151, 'Liliana'),
(152, 'Breckelle\'s'),
(153, 'Unknown'),
(154, 'Fourever Funky'),
(155, 'Bamboo Brand'),
(156, 'EasySteps'),
(157, 'Sara Z'),
(158, 'K-Swiss'),
(159, 'DBDK'),
(160, 'De Blossom'),
(161, 'Bamboo'),
(162, 'ONLINE'),
(163, 'Charles Albert'),
(164, 'Jack Rogers'),
(165, 'Blowfish'),
(166, 'Khombu'),
(167, 'Sanuk'),
(168, 'Bar III'),
(169, 'Saucony'),
(170, 'Denim ampamp Co.'),
(171, 'Schutz'),
(172, 'LifeStride Shoes'),
(173, 'Circle G'),
(174, 'Top Moda'),
(175, 'Breckelles'),
(176, 'Refresh'),
(177, 'keds'),
(178, 'AXNY'),
(179, 'P.amzbrand'),
(180, 'Diba'),
(181, 'Skechers Work'),
(182, 'Bloch'),
(183, 'Cape Robbin'),
(184, 'Bumper'),
(185, 'Blossom'),
(186, 'Cole Haan'),
(187, 'Bare Traps'),
(188, 'Soho Shoes'),
(189, 'BLUE SUEDE SHOES'),
(190, 'Nature Breeze'),
(191, 'BETANI'),
(192, 'Aldo'),
(193, 'Dirty Laundry'),
(194, 'Shoelala'),
(195, 'Cliffs by White Mountain'),
(196, 'Silent D'),
(197, 'Mark and Maddux'),
(198, 'Glaze'),
(199, 'Sugar'),
(200, 'Victoria K.'),
(201, 'Not Just a Pump'),
(202, 'Answer 2'),
(203, 'Qupidnbsp'),
(204, 'ZIGI SOHO'),
(205, 'Earth Origin'),
(206, 'Ziginy'),
(207, 'Life Stride'),
(208, 'Enimay'),
(209, 'Seven Dials'),
(210, 'DOUBLEP'),
(211, 'Anthony Wang'),
(212, 'Wolverine'),
(213, 'Hi-Tec'),
(214, 'Forever Young'),
(215, 'SNJ'),
(216, 'Wild Rose'),
(217, 'CREVO'),
(218, 'Comfeite'),
(219, 'George'),
(220, 'Time and Tru'),
(221, 'Spring Step'),
(222, 'Karyn\'s Collection'),
(223, 'CityClassified'),
(224, 'Noble Outfitters'),
(225, 'Sbicca'),
(226, 'Sporto'),
(227, 'L4L by Lust for Life'),
(228, 'heal-usa'),
(229, 'IZOD'),
(230, 'DAYA BY ZENDAYA'),
(231, 'Silver Dew'),
(232, 'lauren-by-ralph-lauren'),
(233, 'Earth'),
(234, 'Static Footwear'),
(235, 'Cute to the Core'),
(236, 'lugz'),
(237, 'Brian Atwood'),
(238, 'Kaanas'),
(239, 'Onitsuka Tiger'),
(240, 'NEVADOS'),
(241, 'Thalia Sodi'),
(242, 'durango'),
(243, 'charles-by-charles-david'),
(244, 'Stuart Weitzman'),
(245, 'Guess'),
(246, 'Adriana'),
(247, 'Emeril Lagasse Footwear'),
(248, 'Nomad'),
(249, 'Material Girl'),
(250, 'Bees By Beacon'),
(251, 'Fergie Footwear'),
(252, 'Faux Suede'),
(253, 'Kate Spade New York'),
(254, 'J/SLIDES'),
(255, 'J.Rene'),
(256, 'X2B'),
(257, 'Latigo'),
(258, 'Softspots'),
(259, 'G by Guess'),
(260, 'mobils by Mephisto'),
(261, 'Chaco'),
(262, 'Report'),
(263, 'Apex'),
(264, 'BEARPAW'),
(265, 'BUSSOLA'),
(266, 'JBU'),
(267, 'YOKI'),
(268, 'Melrose Ave'),
(269, 'Old Gringo'),
(270, 'steve-madden'),
(271, 'J. Renee'),
(272, 'XOXO'),
(273, 'Eva Zoe'),
(274, 'XAPPEAL'),
(275, 'Sand Storm'),
(276, 'jack-rogers'),
(277, 'Topo Athletic'),
(278, 'Eddie Bauer'),
(279, 'Aravon'),
(280, 'Impo'),
(281, 'Franco Fortini'),
(282, 'Mark Nason'),
(283, 'CAT'),
(284, 'CAT Footwear'),
(285, 'Soda Shoes'),
(286, 'Sperry'),
(287, 'Premiere Fashion'),
(288, 'Koolaburra by UGG'),
(289, 'bed:Stu'),
(290, 'Born'),
(291, 'Michael Antonio'),
(292, 'Rampage'),
(293, 'Circus by Sam Edelman'),
(294, 'Michael Kors'),
(295, 'ELLIE'),
(296, 'drew-shoe'),
(297, 'Shop Pretty Girl'),
(298, 'Bonnibel'),
(299, 'carlos-by-carlos-santana'),
(300, 'Bella Marie'),
(301, 'Carrini'),
(302, 'MYLEYON'),
(303, 'Sperry Top-Sider'),
(304, 'Shoes of Soul'),
(305, 'SC Home Collection'),
(306, 'Bernie Mev'),
(307, 'miz-mooz'),
(308, 'Bronx'),
(309, 'Alegria by PG Lite'),
(310, 'Flexus'),
(311, 'THPRO'),
(312, 'El Naturalista'),
(313, 'L\'Artiste by Spring Step'),
(314, 'NK FASHION'),
(315, 'Just Bad Ass T Shirts'),
(316, 'American Rag'),
(317, 'Aquatalia'),
(318, 'Sorel Footwear'),
(319, 'Dr. Scholl\'S'),
(320, 'wave'),
(321, 'kees');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(8) NOT NULL,
  `brandid` int(8) NOT NULL,
  `model` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `brandid`, `model`) VALUES
(1, 317, '0'),
(3, 130, 'hufter'),
(4, 130, 'gekkie'),
(5, 112, 'happy'),
(6, 321, 'peter');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(8) NOT NULL,
  `model_id` int(8) NOT NULL,
  `size_id` int(8) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(8) NOT NULL,
  `modelid` int(8) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `modelid`, `size`) VALUES
(3, 6, '9.9');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'banaan38', '1234'),
(2, 'appel123', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brandid`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brandid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_id` (`modelid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brandid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_ibfk_1` FOREIGN KEY (`brandid`) REFERENCES `brands` (`brandid`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Constraints for table `sizes`
--
ALTER TABLE `sizes`
  ADD CONSTRAINT `sizes_ibfk_1` FOREIGN KEY (`modelid`) REFERENCES `models` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
