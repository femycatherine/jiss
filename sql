-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2020 at 07:01 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freewebi_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`) VALUES
(1, '1596211060.'),
(2, '1596212377.'),
(3, '1596213880.');

-- --------------------------------------------------------

--
-- Table structure for table `content_info`
--

CREATE TABLE `content_info` (
  `id` mediumint(9) NOT NULL,
  `contents` text COLLATE utf8_unicode_ci NOT NULL,
  `india_amount` text COLLATE utf8_unicode_ci NOT NULL,
  `qater_amount` text COLLATE utf8_unicode_ci NOT NULL,
  `usa_amount` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content_info`
--

INSERT INTO `content_info` (`id`, `contents`, `india_amount`, `qater_amount`, `usa_amount`) VALUES
(1, 'my_first_course', 'Rs:428.00', '#3213.00', '$300.00'),
(2, 'second_course', 'Rs:400.00', '#300.00', '$200.00');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `emailid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`emailid`, `password`) VALUES
('admin@admin.com', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `money_conversion`
--

CREATE TABLE `money_conversion` (
  `money_conversion_id` int(11) NOT NULL,
  `QAR` double NOT NULL,
  `AED` double NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `added_date` datetime NOT NULL,
  `BHD` double NOT NULL,
  `SAR` double NOT NULL,
  `KWD` double NOT NULL,
  `OMR` double NOT NULL,
  `UAE` double NOT NULL,
  `LBP` double NOT NULL,
  `EGP` double NOT NULL,
  `USD` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money_conversion`
--

INSERT INTO `money_conversion` (`money_conversion_id`, `QAR`, `AED`, `status`, `added_date`, `BHD`, `SAR`, `KWD`, `OMR`, `UAE`, `LBP`, `EGP`, `USD`) VALUES
(5, 11.94, 12.03, 'Y', '2020-06-24 12:23:35', 1.23, 12.28, 1, 1.26, 12.02, 4902.88, 52.31, 3.28);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `usd_amount` int(11) DEFAULT NULL,
  `offer_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `lang_id` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `usd_amount`, `offer_content`, `lang_id`) VALUES
(9, 183, '9 دروس و 22فيديو	', 'ar'),
(10, 107, '10 تطبيقات عملية	', 'ar'),
(11, 48, '5 فقرات للاسئلة الاكثر شيوعا	', 'ar'),
(12, 97, 'فيسبوك قروب خاص بس للي اشترو الدورة	', 'ar'),
(13, 122, 'بنطلع لايف على الفيسبوك قروب كل اسبوعين للاجابة على', 'ar'),
(14, 143, 'قروب خاص للمشتركين بالانستقرام', 'ar'),
(15, 69, 'كتيب مصاحب للدورة	', 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `active`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_info`
--
ALTER TABLE `content_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_conversion`
--
ALTER TABLE `money_conversion`
  ADD PRIMARY KEY (`money_conversion_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content_info`
--
ALTER TABLE `content_info`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `money_conversion`
--
ALTER TABLE `money_conversion`
  MODIFY `money_conversion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
