-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 19, 2022 at 01:40 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `block_chain`
--
CREATE DATABASE IF NOT EXISTS `block_chain` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `block_chain`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contactno` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`, `name`, `email`, `contactno`) VALUES
(1, 'admin', 'a01610228fe998f515a72dd730294d87', '2017-09-25 10:21:18', '21-06-2018 08:27:55 PM', 'Admin', 'admin@jamiashop.com', '7865-099897');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'ELECTRONICS', 'A powerful built in subwoofer in the center so you can enjoy deep bass sound', '2021-03-12 13:07:00', '15-03-2021 06:11:02 PM'),
(2, 'APPAREL', 'clothes of a particular type.', '2021-03-12 13:07:24', '15-03-2021 06:32:23 PM'),
(3, 'SPORTS & OUTDOORS', 'Shop for Sports & Outdoors at Walmart.com and browse Basketball, Bikes, Camping, Fan Shop, Fitness, Fishing, Hunting, Trampolines, Water Sports and more.', '2021-03-12 13:07:40', '15-03-2021 06:31:38 PM'),
(4, 'OFFICE SUPPLIES', 'Office supplies are consumables and equipment regularly used in offices by businesses and other organizations.', '2021-03-12 13:09:09', '15-03-2021 06:30:20 PM'),
(5, 'VIDEO GAMES', 'A video game is an electronic game that involves interaction with a user interface or input device.', '2021-03-12 13:09:51', '15-03-2021 06:29:25 PM');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `receivermail` varchar(200) NOT NULL,
  `message` varchar(250) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(17, 7, '4', 1, '2022-07-18 14:20:45', 'M-PESA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `email`) VALUES
(1, 2, 1, 'Male blue shirt', 'China', 4, 5, '<font color="#202124" face="arial, sans-serif"><span style="font-size: 16px;">Male blue T-shirt</span></font>', '16-169029_male-blue-shirt-png-clipart-blue-polo-shirt.png', '16-169029_male-blue-shirt-png-clipart-blue-polo-shirt.png', '16-169029_male-blue-shirt-png-clipart-blue-polo-shirt.png', 200, 'In Stock', '2021-03-12 13:13:45', NULL, ''),
(2, 2, 9, 'Fashion Women Boho ', 'Dawanal', 6, 9, '<h1 class="-fs20 -pts -pbxs" style="box-sizing: border-box; padding: 8px 0px 4px; margin-bottom: 0px; font-weight: 400; font-size: 1.25rem; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif;">Fashion Women Boho Striped Dress Summer Long Sleeveless Strap WOT-black</h1>', '1.jpg', '1.jpg', '1.jpg', 0, 'In Stock', '2021-03-12 13:24:36', NULL, ''),
(3, 1, 2, 'HT306SU', 'Sony', 456, 500, '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;">Liquid Herbal Blood Purifier 200 M<o:p></o:p></span></p>', 'LG-(LHD457)-2.jpg', 'LG-(LHD457)-2.jpg', 'LG-(LHD457)-2.jpg', 500, 'In Stock', '2021-03-12 14:09:39', NULL, ''),
(4, 1, 2, 'Harga Sony BDV-E6100', 'Sony', 7000, 800, '<span style="color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;">A powerful built in subwoofer in the center so you can enjoy deep bass sound.</span><br>', '34856_L_1.jpg', '34856_L_1.jpg', '34856_L_1.jpg', 400, 'In Stock', '2021-03-12 14:15:17', NULL, ''),
(5, 5, 4, 'Intex Inflatable Seat ', 'intel', 7, 8, '<span style="color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px;">Made of PVC, flocked surface Provides Soft Velvety Feel For Added Comfort, Wear-resistant;does not hurt the skin.&nbsp;Closed double-layer valve,the first plug cap is inflated quickly,and the second plug cap is deflated.&nbsp;</span><br>', '1 (4).jpg', '1 (4).jpg', '1 (4).jpg', 200, 'In Stock', '2021-03-12 14:20:40', NULL, ''),
(6, 1, 6, 'Sceptre 32 inches 720p LED TV (2018)', 'Robitussin', 1700, 1800, '<span style="color: rgba(0, 0, 0, 0.87); font-family: Lato, sans-serif; font-size: 14px;">32" LED HDTV 720P resolution 2 x HDMI (HDMI 2 shared with MHL)</span><br style="box-sizing: inherit; font-family: Lato, sans-serif; color: rgba(0, 0, 0, 0.87); font-size: 14px;"><span style="color: rgba(0, 0, 0, 0.87); font-family: Lato, sans-serif; font-size: 14px;">clear QAM tuner escape into a world of splendid color and clarity</span><br style="box-sizing: inherit; font-family: Lato, sans-serif; color: rgba(0, 0, 0, 0.87); font-size: 14px;"><span style="color: rgba(0, 0, 0, 0.87); font-family: Lato, sans-serif; font-size: 14px;">with the X328BV-SRR. Clear QAM tuner is included to make cable</span><br style="box-sizing: inherit; font-family: Lato, sans-serif; color: rgba(0, 0, 0, 0.87); font-size: 14px;"><span style="color: rgba(0, 0, 0, 0.87); font-family: Lato, sans-serif; font-size: 14px;">connection as easy as possible, without an antenna.&nbsp;</span><br>', '41uEInpVhZL.jpg', '41uEInpVhZL.jpg', '41uEInpVhZL.jpg', 500, 'In Stock', '2021-03-12 14:26:11', NULL, ''),
(7, 5, 7, ' Wireless Laser Presenter', 'Flanax', 2, 3, '<h1 class="-fs20 -pts -pbxs" style="box-sizing: border-box; padding: 8px 0px 4px; margin-bottom: 0px; font-weight: 400; font-size: 1.25rem; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif;">Generic USB Wireless Laser Presenter PP-1000.</h1>', '1 (5).jpg', '1 (5).jpg', '1 (5).jpg', 200, 'In Stock', '2021-03-12 14:30:20', NULL, ''),
(8, 5, 8, 'X6 PSP Retro', 'X6', 27, 27, '<h1 class="-fs20 -pts -pbxs" style="box-sizing: border-box; padding: 8px 0px 4px; margin-bottom: 0px; font-weight: 400; font-size: 1.25rem; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif;">Generic X6 PSP Retro Video Game Player Protable Handheld Game Console 4.3"</h1>', '1 (6).jpg', '1 (6).jpg', '1 (6).jpg', 500, 'In Stock', '2021-03-12 14:34:14', NULL, ''),
(9, 2, 9, 'Golf Apparel', 'kenix', 5, 7, 'lLadies&nbsp; Golf Apparel', 'J7WxaCXcI_O0V74xSO0iYDl72eJkfbmt4t8yenImKBVvK0kTmF0xjctABnaLJIm9.jfif', 'J7WxaCXcI_O0V74xSO0iYDl72eJkfbmt4t8yenImKBVvK0kTmF0xjctABnaLJIm9.jfif', 'J7WxaCXcI_O0V74xSO0iYDl72eJkfbmt4t8yenImKBVvK0kTmF0xjctABnaLJIm9.jfif', 200, 'In Stock', '2021-03-12 14:39:35', NULL, ''),
(10, 2, 9, 'Women Autumn Winter', 'kenix', 10, 12, '<h1 class="-fs20 -pts -pbxs" style="box-sizing: border-box; padding: 8px 0px 4px; margin-bottom: 0px; font-weight: 400; font-size: 1.25rem; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif;">Fashion Women Autumn Winter Floral Print Midi Dress Elegant Chiffion Long Sleeve WOT-YSX-A-18</h1>', '1 (1).jpg', '1 (1).jpg', '1 (1).jpg', 300, 'In Stock', '2021-03-12 14:43:52', NULL, ''),
(11, 4, 11, 'MAX STAPLER', 'Max', 4, 5, '<h1 class="bo" style="margin-bottom: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 22px; line-height: 24px; font-family: arial; color: rgb(0, 0, 0);"><span style="color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;; font-size: 25px; font-weight: 400;">MAX STAPLER MAX NO. HD50</span><br></h1>', '10mx002-2.jpeg', '10mx002-2.jpeg', '10mx002-2.jpeg', 200, 'In Stock', '2021-03-12 14:48:08', NULL, ''),
(12, 4, 11, 'DURABLE DURAFRAME', ' DURA', 2, 3, '<h1 class="bo" style="margin-bottom: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 22px; line-height: 24px; font-family: arial; color: rgb(0, 0, 0);"><div class="product-media product media" style="box-sizing: border-box; float: left; padding: 0px 15px; width: 454.5px; color: rgb(140, 140, 140); font-family: &quot;Open Sans&quot;; font-size: 13px; font-weight: 400;"><div class="action-skip-wrapper" style="box-sizing: border-box;"><a class="action skip gallery-prev-area" href="https://www.algurgstationery.com/487101-durable-duraframe-magnetic-a5-size-black-color#gallery-prev-area" style="box-sizing: border-box; color: rgb(51, 51, 51); border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px; outline: none medium !important;"><span style="box-sizing: border-box;">Skip to the beginning of the images gallery</span></a></div><a id="gallery-next-area" tabindex="-1" style="box-sizing: border-box; color: rgb(51, 51, 51); outline: none medium !important;"></a></div><div class="product-info-main product-shop" style="box-sizing: border-box; float: left; padding: 0px 15px; width: 436.312px; color: rgb(140, 140, 140); font-family: &quot;Open Sans&quot;; font-size: 13px; font-weight: 400;"><div class="page-title-wrapper product" style="box-sizing: border-box;"></div></div></h1><h1 class="page-title" style="box-sizing: border-box; font-weight: 400; line-height: 1.42857; font-size: 13px; margin: 0px; color: rgb(67, 67, 67); text-align: left;"><span class="base" data-ui-id="page-title-wrapper" itemprop="name" style="box-sizing: border-box; font-size: 25px; display: block; color: rgb(51, 62, 72); font-weight: 400; line-height: 30px; text-align: left; margin-bottom: 15px;">487101 DURABLE DURAFRAME MAGNETIC, A5 SIZE, BLACK COLOR</span></h1>', '90du038-1_3.jpg', '90du038-1_3.jpg', '90du038-1_3.jpg', 200, 'In Stock', '2021-03-12 14:50:26', NULL, ''),
(13, 4, 11, ' DRYERASE SURFACE', 'Dura', 4, 5, '<h2 class="a-spacing-small a-color-base sims-lpo-header" style="box-sizing: border-box; padding: 0px 0px 4px; line-height: 32px; color: rgb(15, 17, 17); font-family: Arial, sans-serif; margin-bottom: 8px !important;"><div class="product-media product media" style="box-sizing: border-box; float: left; padding: 0px 15px; width: 454.5px; color: rgb(140, 140, 140); font-family: &quot;Open Sans&quot;; font-size: 13px; font-weight: 400;"><div class="action-skip-wrapper" style="box-sizing: border-box;"><a class="action skip gallery-prev-area" href="https://www.algurgstationery.com/3m-post-it-dryerase-surface-90x60-white-def3x2#gallery-prev-area" style="box-sizing: border-box; color: rgb(51, 51, 51); border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px; outline: none medium !important;"><span style="box-sizing: border-box;">Skip to the beginning of the images gallery</span></a></div><a id="gallery-next-area" tabindex="-1" style="box-sizing: border-box; color: rgb(51, 51, 51); outline: none medium !important;"></a></div><div class="product-info-main product-shop" style="box-sizing: border-box; float: left; padding: 0px 15px; width: 436.312px; color: rgb(140, 140, 140); font-family: &quot;Open Sans&quot;; font-size: 13px; font-weight: 400;"><div class="page-title-wrapper product" style="box-sizing: border-box;"></div></div></h2><h1 class="page-title" style="box-sizing: border-box; font-weight: 400; line-height: 1.42857; font-size: 13px; margin: 0px; color: rgb(67, 67, 67); text-align: left;"><span class="base" data-ui-id="page-title-wrapper" itemprop="name" style="box-sizing: border-box; font-size: 25px; display: block; color: rgb(51, 62, 72); font-weight: 400; line-height: 30px; text-align: left; margin-bottom: 15px;">3M POST-IT DRYERASE SURFACE 90x60 WHITE - DEF3X2</span></h1>', '20tm032-1.jpg', '20tm032-1.jpg', '20tm032-1.jpg', 200, 'In Stock', '2021-03-12 14:54:32', NULL, ''),
(14, 3, 12, 'Generic Skating Shoes', 'nike', 21, 25, '<span style="box-sizing: border-box; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Mitr, sans-serif; font-size: 14px;">Generic Skating Shoes + Helmet &amp; Protective Guards.</span><br>', '61hrKNJ8xqL._AC_SY450_.jpg', '61hrKNJ8xqL._AC_SY450_.jpg', '61hrKNJ8xqL._AC_SY450_.jpg', 250, 'In Stock', '2021-03-12 15:00:31', NULL, ''),
(15, 3, 13, 'Football Shirt Uniforms ', 'tecno', 24, 25, '<font color="#676b6d" face="Arial, Helvetica, Arial, Verdana, sans-serif"><span style="font-size: 14px;">Generic Lixada Football Shirt Uniforms Set Short Sleeve Sports Clothing Breathable Ball Jersey Football Sweat T-Shirt</span></font><br>', '1 (2).jpg', '1 (2).jpg', '1 (2).jpg', 300, 'In Stock', '2021-03-12 15:06:08', NULL, ''),
(16, 3, 13, 'Puma Football Boots', 'Puma', 32, 35, '<h1 class="-fs20 -pts -pbxs" style="box-sizing: border-box; padding: 8px 0px 4px; margin-bottom: 0px; font-weight: 400; font-size: 1.25rem; color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif;">Puma Football Boots Adreno Firm Ground Moulded.</h1>', '1 (3).jpg', '1 (3).jpg', '1 (3).jpg', 2, 'In Stock', '2021-03-12 15:09:10', NULL, 'rogy@gmail.com'),
(17, 0, 0, '2021-04-02', '', 0, 0, '', '', '', '', 0, '', '2021-04-02 05:10:52', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 2, 'Mens wear', '2021-03-12 13:10:36', '15-03-2021 07:02:37 PM'),
(2, 1, 'Home Theatre', '2021-03-12 14:03:38', '15-03-2021 06:35:18 PM'),
(3, 1, 'Smart Phones', '2021-03-12 14:13:56', '15-03-2021 08:02:12 PM'),
(4, 5, 'Sports games', '2021-03-12 14:18:25', '15-03-2021 08:04:25 PM'),
(6, 1, 'TV', '2021-03-12 14:24:45', '15-03-2021 08:02:55 PM'),
(7, 5, 'Adventure games', '2021-03-12 14:28:57', '15-03-2021 08:05:03 PM'),
(8, 5, 'Simulation games', '2021-03-12 14:32:22', '15-03-2021 08:05:45 PM'),
(9, 2, 'Ladies wear', '2021-03-12 14:37:41', '15-03-2021 07:14:24 PM'),
(10, 2, 'Children Wear', '2021-03-12 14:42:25', '15-03-2021 08:03:33 PM'),
(11, 4, 'Boards & Easels', '2021-03-12 14:47:01', '15-03-2021 07:39:01 PM'),
(12, 3, 'Skating Shoes', '2021-03-12 14:58:44', '15-03-2021 07:28:09 PM'),
(13, 3, 'jerseys', '2021-03-12 15:05:12', '15-03-2021 07:30:53 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(81, 'kal@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-07-18 13:48:09', '18-07-2022 07:33:39 PM', 1),
(82, 'kal@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-07-18 14:03:56', '18-07-2022 07:35:52 PM', 1),
(83, 'kal@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-07-18 14:20:17', NULL, 1),
(84, 'kal@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-07-19 12:19:50', '19-07-2022 05:54:55 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  `limit_checker` int(11) NOT NULL,
  `shop_name` varchar(200) NOT NULL,
  `shop_location` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`, `limit_checker`, `shop_name`, `shop_location`) VALUES
(7, 'hamda ahrun', 'kal@gmail.com', 712553710, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, '444', 'tu', 'et', 12, '2022-07-18 13:47:47', NULL, 1, 'HK', 'cbd');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
