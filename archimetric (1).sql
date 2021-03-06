-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2016 at 12:14 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `archimetric`
--

-- --------------------------------------------------------

--
-- Table structure for table `gal_gallery`
--

CREATE TABLE IF NOT EXISTS `gal_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `orientation` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `image2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `gal_gallery`
--

INSERT INTO `gal_gallery` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `city`, `harga`, `orientation`, `color`, `image2`) VALUES
(6, 1, '82868-project-1.jpg', 1, '2016-05-25 15:00:09', '2016-05-25 15:00:29', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(7, 2, 'c196a-project-2.jpg', 1, '2016-05-25 15:01:04', '2016-05-25 15:01:21', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(8, 3, 'd1e27-project-3.jpg', 1, '2016-05-25 15:01:23', '2016-05-25 15:01:38', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(9, 4, '500b1-project-4.jpg', 1, '2016-05-25 15:01:41', '2016-05-25 15:01:57', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(10, 5, 'ba0b6-project-5.jpg', 1, '2016-05-25 15:02:01', '2016-05-25 15:02:18', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(11, 6, 'da20e-project-6.jpg', 1, '2016-05-25 15:02:21', '2016-05-25 15:02:39', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(12, 1, '02996-project-7.jpg', 1, '2016-05-25 15:02:43', '2016-05-25 15:04:27', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(13, 1, '7705b-project-8.jpg', 1, '2016-05-25 15:03:03', '2016-05-25 15:04:32', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(14, 1, '91f02-project-9.jpg', 1, '2016-05-25 15:03:23', '2016-05-25 15:03:38', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(15, 1, 'acd7e-project-10.jpg', 1, '2016-05-25 15:03:41', '2016-05-25 15:03:56', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gal_gallery_description`
--

CREATE TABLE IF NOT EXISTS `gal_gallery_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `sub_title_2` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `gal_gallery_description`
--

INSERT INTO `gal_gallery_description` (`id`, `gallery_id`, `language_id`, `title`, `sub_title`, `sub_title_2`, `content`) VALUES
(62, 6, 2, 'Project 1', '', '', ''),
(63, 7, 2, 'Project 2', '', '', ''),
(64, 8, 2, 'Project 3', '', '', ''),
(65, 9, 2, 'Project 4', '', '', ''),
(66, 10, 2, 'Project 5', '', '', ''),
(67, 11, 2, 'Project 6', '', '', ''),
(72, 12, 2, 'Project 7', '', '', ''),
(73, 13, 2, 'Project 8', '', '', ''),
(70, 14, 2, 'Project 9', '', '', ''),
(71, 15, 2, 'Project 10', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gal_gallery_image`
--

CREATE TABLE IF NOT EXISTS `gal_gallery_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`gallery_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `gal_gallery_image`
--

INSERT INTO `gal_gallery_image` (`id`, `gallery_id`, `image`) VALUES
(28, 6, '82868-project-1.jpg'),
(29, 7, 'c196a-project-2.jpg'),
(30, 8, 'd1e27-project-3.jpg'),
(31, 9, '500b1-project-4.jpg'),
(32, 10, 'ba0b6-project-5.jpg'),
(33, 11, 'da20e-project-6.jpg'),
(38, 12, '02996-project-7.jpg'),
(39, 13, '7705b-project-8.jpg'),
(36, 14, '91f02-project-9.jpg'),
(37, 15, 'acd7e-project-10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `code`, `sort`, `status`) VALUES
(2, 'English', 'en', 1, '1'),
(3, 'Indonesia', 'id', 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `leader`
--

CREATE TABLE IF NOT EXISTS `leader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `leader`
--

INSERT INTO `leader` (`id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`) VALUES
(1, '60b9c-ir-jimmy.jpg', 1, '2016-05-24 17:07:58', '2016-05-24 17:07:58', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(2, '45f70-ir-yusuf.jpg', 1, '2016-05-24 17:08:22', '2016-05-24 17:08:22', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(3, '1bc18-ir-pius.jpg', 1, '2016-05-24 17:08:47', '2016-05-24 17:08:47', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(4, '12ab8-ir-ratna.jpg', 1, '2016-05-24 17:09:05', '2016-05-24 17:09:05', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `leader_description`
--

CREATE TABLE IF NOT EXISTS `leader_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leader_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `leader_description`
--

INSERT INTO `leader_description` (`id`, `leader_id`, `language_id`, `title`, `content`) VALUES
(1, 1, 2, 'Ir. Jimmy Priatman, M.Arch., IAI ', '<p>\r\n	As the founder of Archimetric, he currently serves as the Director of  Design and Planning as well as the principal architect. He is involved  in most of the firm''s projects and responsible for the firm''s  commissions. Three of his works, Graha Pangeran, Grha Wonokoyo, and Holy  Stadium receive the ASEAN Energy Awards in 2002, 2006, and 2009  respectively, for being the best performing buildings in terms of energy  efficiency in Indonesia and ASEAN. Mr. Priatman is also a recipient of  the prestigious Kalyanakretya Utama Award in 2002 from the President of  the Republic of Indonesia and the Ministry of Research and Technology  for his dedication in applied architectural technology.\r\n</p>'),
(2, 2, 2, 'Ir. Jusuf Wikono, HAKI', '<p>\r\n	Jusuf Wikono serves as the Director of Technical Services, with a  primary responsibility in the area of Construction Management and  Supervision Services. He received his Civil Engineering degree from  Petra Christian University Surabaya in 1982, and had received a number  of certifications for further courses in civil engineering.\r\n</p>\r\n<p>\r\n	During his years of practice, he has an extensive  experience in leading teams on a wide variety of projects which focuses  on construction management services. He is a professional member of the  Indonesian Society of Civil and Structural Engineers.\r\n</p>'),
(3, 3, 2, 'Ir. Pius A.S. Atmadja, M.T., IAI', '<p>\r\n	Pius A.S. Atmadja serves as the Director of Operations and is  responsible for Construction Management and Supervision Services. He  received his degree in Architecture in 1982 and Master degree in  Construction Management in 2000 from Petra Christian University  Surabaya.\r\n</p>\r\n<p>\r\n	He has been involved in a wide variety of projects with  emphasis on supervision services. He is a registered architect and  member of the Indonesian Institute of Architects.\r\n</p>'),
(4, 4, 2, 'Ir. Ratna S. Alifen, M.C.E , HAKI', '<p>\r\n	Ratna S. Alifen is a structural engineer and serves as Director of  Finance since 1988. She graduated from Petra Christian University  Surabaya in 1978 and received her Master of Civil Engineering degree  from Illinois Institute of Technology, Chicago in 1996. She has been  involved in various projects of the firm and her professional area of  expertise is structural engineering and construction management.\r\n</p>\r\n<p>\r\n	She is a professional member of the Indonesian Society  of Civil and Structural Engineers and also lectures at Petra Christian  University Surabaya.\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(1, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-05-25 11:07:10'),
(2, 'deoryzpandu@gmail.com', 'Slide Controller Create 16', '2016-05-25 11:29:31'),
(3, 'deoryzpandu@gmail.com', 'Slide Controller Create 17', '2016-05-25 11:30:33'),
(4, 'deoryzpandu@gmail.com', 'Slide Controller Create 18', '2016-05-25 11:30:48'),
(5, 'deoryzpandu@gmail.com', 'Slide Controller Create 19', '2016-05-25 11:31:03'),
(6, 'deoryzpandu@gmail.com', 'Slide Controller Create 20', '2016-05-25 11:31:18'),
(7, 'deoryzpandu@gmail.com', 'Slide Controller Create 21', '2016-05-25 11:31:30'),
(8, 'deoryzpandu@gmail.com', 'Slide Controller Create 22', '2016-05-25 11:31:46'),
(9, 'deoryzpandu@gmail.com', 'Slide Controller Create 23', '2016-05-25 11:32:02'),
(10, 'deoryzpandu@gmail.com', 'Slide Controller Create 24', '2016-05-25 11:32:18'),
(11, 'deoryzpandu@gmail.com', 'Slide Controller Create 25', '2016-05-25 11:32:35'),
(12, 'deoryzpandu@gmail.com', 'Slide Controller Create 26', '2016-05-25 11:32:55'),
(13, 'deoryzpandu@gmail.com', 'Slide Controller Create 27', '2016-05-25 11:34:07'),
(14, 'deoryzpandu@gmail.com', 'Slide Controller Create 28', '2016-05-25 12:04:29'),
(15, 'deoryzpandu@gmail.com', 'Slide Controller Create 29', '2016-05-25 12:04:49'),
(16, 'deoryzpandu@gmail.com', 'Slide Controller Create 30', '2016-05-25 12:05:35'),
(17, 'deoryzpandu@gmail.com', 'Slide Controller Create 31', '2016-05-25 12:05:48'),
(18, 'deoryzpandu@gmail.com', 'Gallery Controller Create 6', '2016-05-25 15:00:29'),
(19, 'deoryzpandu@gmail.com', 'Gallery Controller Create 7', '2016-05-25 15:01:21'),
(20, 'deoryzpandu@gmail.com', 'Gallery Controller Create 8', '2016-05-25 15:01:38'),
(21, 'deoryzpandu@gmail.com', 'Gallery Controller Create 9', '2016-05-25 15:01:57'),
(22, 'deoryzpandu@gmail.com', 'Gallery Controller Create 10', '2016-05-25 15:02:18'),
(23, 'deoryzpandu@gmail.com', 'Gallery Controller Create 11', '2016-05-25 15:02:39'),
(24, 'deoryzpandu@gmail.com', 'Gallery Controller Create 12', '2016-05-25 15:03:01'),
(25, 'deoryzpandu@gmail.com', 'Gallery Controller Create 13', '2016-05-25 15:03:21'),
(26, 'deoryzpandu@gmail.com', 'Gallery Controller Create 14', '2016-05-25 15:03:38'),
(27, 'deoryzpandu@gmail.com', 'Gallery Controller Create 15', '2016-05-25 15:03:56'),
(28, 'deoryzpandu@gmail.com', 'GalleryController Update 12', '2016-05-25 15:04:27'),
(29, 'deoryzpandu@gmail.com', 'GalleryController Update 13', '2016-05-25 15:04:32'),
(30, 'deoryzpandu@gmail.com', 'Setting Update', '2016-05-25 15:54:51'),
(31, 'deoryzpandu@gmail.com', 'Setting Update', '2016-05-25 15:55:06'),
(32, 'deoryzpandu@gmail.com', 'Setting Update', '2016-05-25 16:04:24'),
(33, 'deoryzpandu@gmail.com', 'ServiceController Update 1', '2016-05-25 16:14:11'),
(34, 'deoryzpandu@gmail.com', 'ServiceController Update 3', '2016-05-25 16:14:33'),
(35, 'deoryzpandu@gmail.com', 'Setting Update', '2016-05-25 16:16:15'),
(36, 'deoryzpandu@gmail.com', 'Setting Update', '2016-05-25 16:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `prd_brand`
--

CREATE TABLE IF NOT EXISTS `prd_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `prd_brand`
--


-- --------------------------------------------------------

--
-- Table structure for table `prd_brand_description`
--

CREATE TABLE IF NOT EXISTS `prd_brand_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `prd_brand_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `prd_category`
--

CREATE TABLE IF NOT EXISTS `prd_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `prd_category`
--

INSERT INTO `prd_category` (`id`, `parent_id`, `sort`, `image`, `type`, `data`) VALUES
(1, 0, 1, '', 'category', ''),
(2, 0, 2, '', 'category', ''),
(3, 0, 3, '', 'category', ''),
(4, 0, 4, '', 'category', ''),
(5, 0, 5, '', 'category', ''),
(6, 0, 6, '', 'category', '');

-- --------------------------------------------------------

--
-- Table structure for table `prd_category_description`
--

CREATE TABLE IF NOT EXISTS `prd_category_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `prd_category_description`
--

INSERT INTO `prd_category_description` (`id`, `category_id`, `language_id`, `name`, `data`) VALUES
(1, 1, 2, 'COMMERCIAL', ''),
(2, 2, 2, 'EDUCATION', ''),
(3, 3, 2, 'HEALTHCARE', ''),
(4, 4, 2, 'INDUSTRIAL', ''),
(5, 5, 2, 'RELIGIOUS', ''),
(6, 6, 2, 'RESIDENTIAL', '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`) VALUES
(1, '2e970-icon-architecture.png', 1, '0000-00-00 00:00:00', '2016-05-25 16:14:11', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(2, '79a56-icon-structural-engineering.png', 1, '2016-05-24 16:51:25', '2016-05-24 16:51:25', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(3, '894c6-icon-construction-enginering.png', 1, '0000-00-00 00:00:00', '2016-05-25 16:14:33', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(4, 'f13f1-icon-mechanical-enginering.png', 1, '0000-00-00 00:00:00', '2016-05-24 16:52:44', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `service_description`
--

CREATE TABLE IF NOT EXISTS `service_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `service_description`
--

INSERT INTO `service_description` (`id`, `service_id`, `language_id`, `title`, `content`) VALUES
(7, 1, 2, 'Architecture', '<p>\r\n	 Architectural design is our primary service. We design buildings  according to our clients` specific needs in a creative and innovative  process using the latest technology in building science, with an  emphasis for design excellence, environmental consciousness, and energy  efficiency. Our services include conceptual design, design development,  construction documents, bidding or negotiating, and construction  administration. We conduct thorough research as part of our process in  ensuring our clients with solutions of the utmost quality.\r\n</p>'),
(2, 2, 2, 'Structural Engineering', '<p>\r\n	Our experience involves virtually all sizes and types of structures. Our  structural design team is capable of the design of conventional wood,  structural steel, and reinforced concrete structures as well as advanced  design of high strength concrete, pre-stressed and pre-cast concrete  composite construction, and space framed steel structure.\r\n</p>'),
(8, 3, 2, 'Construction Management', '<p>\r\n	 We provide Construction Management services to guarantee the delivery of  a successful project. This field of service has become increasingly  important given that quality is our focus. Construction managers are  needed to ensure that the work performed in the construction site is  according to our plans and specifications. We provide full-time site  supervision during construction to serve as quality control of the  contractor`s work and to manage construction according to budget and  schedule.\r\n</p>'),
(6, 4, 2, 'Mechanical, Electrical, and Civil Engineering', '<p>\r\n	  Our collaborative approach to projects often includes engineers in the  beginning phases of the projects, rather than at the last stage. We  believe this is the best approach to creating integrated building  solutions.\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `hide` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `dual_language` enum('n','y') NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `label`, `value`, `type`, `hide`, `group`, `dual_language`, `sort`) VALUES
(1, 'default_meta_title', 'Title', '', 'text', 0, 'default_meta', 'y', 1),
(2, 'default_meta_keywords', 'Keywords', '', 'textarea', 0, 'default_meta', 'y', 2),
(3, 'default_meta_description', 'Description', '', 'textarea', 0, 'default_meta', 'y', 3),
(4, 'google_tools_webmaster', 'Google Webmaster Code', '', 'textarea', 0, 'google_tools', 'n', 4),
(5, 'google_tools_analytic', 'Google Analytic Code', '', 'textarea', 0, 'google_tools', 'n', 5),
(6, 'purechat_status', 'Show Hide Widget', '', 'select', 0, 'purechat', 'n', 1),
(7, 'purechat_code', 'PureChat Code', '', 'textarea', 0, 'purechat', 'n', 1),
(8, 'invoice_start_number', 'Invoice Start Number', '1000', 'text', 0, 'invoice', 'n', 0),
(9, 'invoice_increment', 'Invoice Increment', '5', 'text', 0, 'invoice', 'n', 0),
(10, 'invoice_auto_cancel_after', 'Invoice Auto Cancel After', '72', 'text', 0, 'invoice', 'n', 0),
(11, 'lang_deff', 'Language Default', 'en', 'text', 0, 'data', 'n', 0),
(12, 'email', 'email', 'sales@dvcomputers.com.au', 'text', 0, 'contact', 'n', 1),
(13, 'tax', 'Tax', '11', 'text', 0, 'data', 'n', 1),
(14, 'url_facebook', 'Facebook URL', '#', 'text', 0, 'data', 'n', 1),
(15, 'url_twitter', 'Twitter URL', '#', 'text', 0, 'data', 'n', 1),
(16, 'url_instagram', 'Instagram', '#', 'text', 0, 'data', 'n', 1),
(81, 'career_image', 'Image', '8330d630b3ill-career.jpg', 'image', 0, 'data', 'n', 1),
(82, 'career_content', 'Content', '', 'text', 0, 'data', 'y', 1),
(83, 'contact_name', 'Name', '', 'text', 0, 'data', 'y', 1),
(84, 'contact_alamat', 'Alamat', '', 'text', 0, 'data', 'y', 1),
(85, 'contact_telp', 'Telp', '62 31 5946980, 59933339 ', 'text', 0, 'data', 'n', 1),
(86, 'contact_fax', 'FAX', '62 31 5940671', 'text', 0, 'data', 'n', 1),
(87, 'contact_email', 'Telp', 'info@archimetric.co.id', 'text', 0, 'data', 'n', 1),
(88, 'about_title', 'Title', '', 'text', 0, 'data', 'y', 1),
(89, 'about_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 1),
(90, 'about_short_content', 'Short Content', '', 'text', 0, 'data', 'y', 1),
(91, 'about_content', 'Content', '', 'text', 0, 'data', 'y', 1),
(92, 'about_image_1', 'Image', 'bf7e4e75fdabout-1.jpg', 'image', 0, 'data', 'n', 1),
(93, 'about_section_title_1', 'Title', '', 'text', 0, 'data', 'y', 1),
(94, 'about_section_content_1', 'Content', '', 'text', 0, 'data', 'y', 1),
(95, 'about_section_image_1', 'Image', '666cbbba94about-2.jpg', 'image', 0, 'data', 'n', 1),
(96, 'about_section_title_2', 'Title', '', 'text', 0, 'data', 'y', 1),
(97, 'about_section_content_2', 'Content', '', 'text', 0, 'data', 'y', 1),
(98, 'about_section_image_2', 'Image', '2276a14f04about-3.jpg', 'image', 0, 'data', 'n', 1),
(99, 'about_section_quote', 'Quote', '', 'text', 0, 'data', 'y', 1),
(100, 'about_image_2', 'Image', '95a9de299eabout-4.jpg', 'image', 0, 'data', 'n', 1),
(101, 'about_image_2_title', 'Title', '', 'text', 0, 'data', 'y', 1),
(102, 'about_image_2_content', 'Content', '', 'text', 0, 'data', 'y', 1),
(103, 'about_section_contentsmall_2', 'Content Small', '', 'text', 0, 'data', 'y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting_description`
--

CREATE TABLE IF NOT EXISTS `setting_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `setting_description`
--

INSERT INTO `setting_description` (`id`, `setting_id`, `language_id`, `value`) VALUES
(1, 1, 2, 'Trisensa Ceramics'),
(2, 2, 2, 'Trisensa Ceramics'),
(3, 3, 2, 'Trisensa Ceramics'),
(74, 88, 2, 'About Us'),
(75, 89, 2, 'We''re driven to create something extra-ordinary.'),
(76, 90, 2, 'Archimetric is a collaborative professional practice specializing in architecture, engineering, building science, and construction management offering an integrated service for clients in both the public and private sectors.'),
(77, 91, 2, '<p>\r\n	          Archimetric was founded as a small design studio in 1988 in Surabaya,  Indonesia by Jimmy Priatman with his partners Jusuf Wikono, Ratna  Alifen, and Pius Atmadja, but has since grown in scope and expertise to  become one of the nation`s most distinguished practices, with a grade 4  qualification - the highest - from the LPJK (Lembaga Pengembangan Jasa  Konstruksi). With a portfolio that extends over a period of more than  two decades, we have worked on a wide range of projects from corporate  offices and commercial spaces to hotels, multi-family residential  buildings and educational facilities to industrial facilities.\r\n</p>\r\n<p>\r\n	          The core of our practice lies upon our commitment  to the betterment of the built environment through an integrated design  approach to achieve design excellence and sustainability.\r\n</p>'),
(78, 93, 2, 'Our Social Responsibility'),
(79, 94, 2, 'We are committed in providing our clients a thorough service that creates buildings and spaces that not only respond to our clients` needs but also to context and to the environment.'),
(80, 99, 2, 'Archimetric has earned a reputation to being on the forefront of\r\nenergy efficient design as shown by the many awards'),
(81, 96, 2, 'Energy Efficient Warrior'),
(82, 97, 2, 'Archimetric has earned a reputation to being on the forefront of energy efficient design as shown by the many awards and publication that we have received for our accomplishments in this field.'),
(83, 101, 2, 'The Team'),
(84, 102, 2, 'Our individual experience ranges from newly-graduated to over 20 years. By working together and combining our strengths, we strive to create projects that are creative, innovative, and of the highest quality at once.'),
(85, 83, 2, 'PT. ARCHIMETRIC'),
(86, 84, 2, 'Jl. Raya Manyar Tirtomoyo 7\r\nSurabaya 60118, Indonesia'),
(87, 82, 2, '<p>\r\n	 We are always looking for talented professionals in the fields of  architecture, engineering, building science, and construction management  to join our multidisciplinary team. Whether you are seeking internship  or a fresh graduate or someone that has been practicing for years, if  you are interested to join us, please send your CV and portfolio (for  architectural position) to <a href="mailto:career@archimetric.co.id">career@archimetric.co.id</a>\r\n</p>\r\n<p>\r\n	 You may also forward your application to:\r\n</p>\r\n<h4>PT. ARCHIMETRIC <br />\r\n  HRD Department</h4>\r\n<p>\r\n	 Jl. Raya Manyar Tirtomoyo 7 <br />\r\n	  Surabaya 60118, Indonesia\r\n</p>'),
(88, 103, 2, 'We have received three ASEAN Energy Awards for our projects, Kalyanakretya Utama from the President of Republic of Indonesia, among many more. Grha Wonokoyo (ASEAN Energy Awards 2006), a corporate office building built in 2003, was proven to use 55% less electricity than the ASEAN Energy Efficiency benchmark, an achievement unequalled by any building of this type in Indonesia.');

-- --------------------------------------------------------

--
-- Table structure for table `sl_slide`
--

CREATE TABLE IF NOT EXISTS `sl_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `sl_slide`
--

INSERT INTO `sl_slide` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `sort`) VALUES
(17, 0, 'c66f9-arch-slide-50f600.jpg', 1, '2016-05-25 11:30:33', '2016-05-25 11:30:33', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(16, 0, '85188-arch-slide-c0537b.jpg', 1, '2016-05-25 11:29:31', '2016-05-25 11:29:31', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(18, 0, 'c7a91-arch-slide-06045e.jpg', 1, '2016-05-25 11:30:48', '2016-05-25 11:30:48', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(19, 0, 'c53db-arch-slide-71397a.jpg', 1, '2016-05-25 11:31:03', '2016-05-25 11:31:03', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(20, 0, '16d6c-arch-slide-81730d.jpg', 1, '2016-05-25 11:31:18', '2016-05-25 11:31:18', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(21, 0, '4f160-arch-slide-729791.jpg', 1, '2016-05-25 11:31:30', '2016-05-25 11:31:30', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(22, 0, '465c3-arch-slide-b5593b.jpg', 1, '2016-05-25 11:31:46', '2016-05-25 11:31:46', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(23, 0, '24188-fcs-1.jpg', 1, '2016-05-25 11:32:02', '2016-05-25 11:32:02', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(24, 0, '3de3f-kakuu-slide-1c47f7.jpg', 1, '2016-05-25 11:32:18', '2016-05-25 11:32:18', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(25, 0, 'd5357-kakuu-slide-78e29a.jpg', 1, '2016-05-25 11:32:35', '2016-05-25 11:32:35', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(26, 0, '87925-kakuu-slide-726e47.jpg', 1, '2016-05-25 11:32:55', '2016-05-25 11:32:55', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(27, 0, 'fdda9-kakuu-slide-795d95.jpg', 1, '2016-05-25 11:34:07', '2016-05-25 11:34:07', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(28, 0, 'cb213-kakuu-slide-c072ed.jpg', 1, '2016-05-25 12:04:29', '2016-05-25 12:04:29', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(29, 0, '0eb6e-kakuu-slide-d3c3d5.jpg', 1, '2016-05-25 12:04:49', '2016-05-25 12:04:49', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(30, 0, 'f4e49-kakuu-slide-e0a03c.jpg', 1, '2016-05-25 12:05:35', '2016-05-25 12:05:35', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0),
(31, 0, 'e72c4-kakuu-slide-f54750.jpg', 1, '2016-05-25 12:05:48', '2016-05-25 12:05:48', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sl_slide_description`
--

CREATE TABLE IF NOT EXISTS `sl_slide_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `sl_slide_description`
--

INSERT INTO `sl_slide_description` (`id`, `slide_id`, `language_id`, `title`, `content`, `url`) VALUES
(43, 14, 2, 'slide 1', '', ''),
(44, 15, 2, 'slide 2', '', ''),
(45, 16, 2, 'fcs 1', '', ''),
(46, 17, 2, 'fcs 2', '', ''),
(47, 18, 2, 'fcs 3', '', ''),
(48, 19, 2, 'fcs 4', '', ''),
(49, 20, 2, 'fcs 5', '', ''),
(50, 21, 2, 'fcs 6', '', ''),
(51, 22, 2, 'fcs 7', '', ''),
(52, 23, 2, 'fcs 8', '', ''),
(53, 24, 2, 'fcs 9', '', ''),
(54, 25, 2, 'fcs 10', '', ''),
(55, 26, 2, 'fcs 11', '', ''),
(56, 27, 2, 'fcs 12', '', ''),
(57, 28, 2, 'fcs 14', '', ''),
(58, 29, 2, 'fcs 15', '', ''),
(59, 30, 2, 'fcs 16', '', ''),
(60, 31, 2, 'fcs 17', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_group`
--

CREATE TABLE IF NOT EXISTS `tb_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL,
  `akses` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tb_group`
--

INSERT INTO `tb_group` (`id`, `group`, `aktif`, `akses`) VALUES
(8, 'Administrator', 1, 0x613a33373a7b693a303b733a31363a2261646d696e2e757365722e696e646578223b693a313b733a31373a2261646d696e2e757365722e637265617465223b693a323b733a31373a2261646d696e2e757365722e757064617465223b693a333b733a31373a2261646d696e2e757365722e64656c657465223b693a343b733a31373a2261646d696e2e736c6964652e696e646578223b693a353b733a31383a2261646d696e2e736c6964652e637265617465223b693a363b733a31383a2261646d696e2e736c6964652e757064617465223b693a373b733a31383a2261646d696e2e736c6964652e64656c657465223b693a383b733a31363a2261646d696e2e62616e6b2e696e646578223b693a393b733a31373a2261646d696e2e62616e6b2e637265617465223b693a31303b733a31373a2261646d696e2e62616e6b2e757064617465223b693a31313b733a31373a2261646d696e2e62616e6b2e64656c657465223b693a31323b733a31393a2261646d696e2e73657474696e672e696e646578223b693a31333b733a31383a2261646d696e2e6d656d6265722e696e646578223b693a31343b733a31393a2261646d696e2e6d656d6265722e637265617465223b693a31353b733a31393a2261646d696e2e6d656d6265722e757064617465223b693a31363b733a31393a2261646d696e2e6d656d6265722e64656c657465223b693a31373b733a31373a2261646d696e2e6f726465722e696e646578223b693a31383b733a31383a2261646d696e2e6f726465722e637265617465223b693a31393b733a31383a2261646d696e2e6f726465722e757064617465223b693a32303b733a31383a2261646d696e2e6f726465722e64656c657465223b693a32313b733a31373a2261646d696e2e6f726465722e7072696e74223b693a32323b733a32313a2261646d696e2e73657474696e672e636f6e74616374223b693a32333b733a31393a2261646d696e2e73657474696e672e61626f7574223b693a32343b733a32303a2261646d696e2e63617465676f72792e696e646578223b693a32353b733a32313a2261646d696e2e63617465676f72792e637265617465223b693a32363b733a32313a2261646d696e2e63617465676f72792e757064617465223b693a32373b733a32313a2261646d696e2e63617465676f72792e64656c657465223b693a32383b733a31393a2261646d696e2e73657474696e672e686f77746f223b693a32393b733a31393a2261646d696e2e70726f647563742e696e646578223b693a33303b733a32303a2261646d696e2e70726f647563742e637265617465223b693a33313b733a32303a2261646d696e2e70726f647563742e757064617465223b693a33323b733a32303a2261646d696e2e70726f647563742e64656c657465223b693a33333b733a32303a2261646d696e2e64656c69766572792e696e646578223b693a33343b733a32313a2261646d696e2e64656c69766572792e637265617465223b693a33353b733a32313a2261646d696e2e64656c69766572792e757064617465223b693a33363b733a32313a2261646d696e2e64656c69766572792e64656c657465223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `user_input` varchar(200) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `initial` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `email`, `nama`, `pass`, `type`, `group_id`, `login_terakhir`, `aktivasi`, `aktif`, `user_input`, `tanggal_input`, `initial`, `image`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory Pandu', '564fda17f517ae04a86734c2b2341327ed4fd565', 'root', 0, '2014-07-02 13:45:01', 0, 1, '', '2014-02-09 21:17:36', 'deory', ''),
(30, 'info@markdesign.net', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'root', 8, '2014-06-16 13:09:32', 0, 1, '', '0000-00-00 00:00:00', 'Admin', ''),
(35, 'info@chromaticinnovations.com.au', 'info Chromatic', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'root', 0, '2016-02-17 13:32:02', 0, 1, '', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tt_text`
--

CREATE TABLE IF NOT EXISTS `tt_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `tt_text`
--

INSERT INTO `tt_text` (`id`, `category`, `message`) VALUES
(1, 'admin', 'Produk'),
(2, 'admin', 'Pages'),
(3, 'admin', 'Orders'),
(4, 'admin', 'Customers'),
(5, 'admin', 'Promotions'),
(6, 'admin', 'Reports'),
(7, 'admin', 'General Setting'),
(8, 'admin', 'Data Edited'),
(9, 'admin', 'New Orders'),
(10, 'admin', 'New Customers'),
(11, 'admin', 'Payment Confirmation'),
(12, 'admin', 'Edit Profile'),
(13, 'admin', 'Change Password'),
(14, 'admin', 'Sign Out'),
(15, 'admin', 'Gallery'),
(16, 'admin', 'Slide Home'),
(17, 'admin', 'Toko'),
(18, 'admin', 'Slides'),
(19, 'admin', 'Product'),
(20, 'admin', 'Products'),
(21, 'admin', 'About Us'),
(22, 'admin', 'Contact Us'),
(23, 'admin', 'Trip'),
(24, 'admin', 'Trips'),
(25, 'admin', 'Slide'),
(26, 'admin', 'Healty'),
(27, 'admin', 'ge-ma'),
(28, 'admin', 'Our Services'),
(29, 'admin', 'Services Content'),
(30, 'admin', 'Projects'),
(31, 'admin', 'Peojects'),
(32, 'admin', 'Home Page'),
(33, 'admin', 'Our Service'),
(34, 'admin', 'About'),
(35, 'admin', 'Contact'),
(36, 'admin', 'Footer'),
(37, 'front', 'home'),
(38, 'front', 'our products'),
(39, 'front', 'Customer Service'),
(40, 'front', 'READ MORE'),
(41, 'front', 'CRAFTING EXCELLENCE'),
(42, 'front', 'Contact our representative at'),
(43, 'front', 'or email us at'),
(44, 'front', 'All'),
(45, 'front', 'Back to category selection'),
(46, 'front', 'Telephone'),
(47, 'front', 'Fax'),
(48, 'front', 'E-mail'),
(49, 'front', 'Branch Office'),
(50, 'front', 'For any enquiries, please fill out the form below, we will respond immediately.<br /> Thank you'),
(51, 'front', 'Name'),
(52, 'front', 'Email'),
(53, 'front', 'Phone'),
(54, 'front', 'Company'),
(55, 'front', 'Address'),
(56, 'front', 'Country'),
(57, 'front', 'Message'),
(58, 'front', 'The Quality Process of Trisensa ceramics'),
(59, 'admin', 'Homepage'),
(60, 'admin', 'OEM'),
(61, 'admin', 'Quality Statement'),
(62, 'admin', 'Dealer'),
(63, 'admin', 'Route of Shippings'),
(64, 'admin', 'Administrator'),
(65, 'admin', 'Route'),
(66, 'admin', 'Project'),
(67, 'admin', 'Career');

-- --------------------------------------------------------

--
-- Structure for view `view_category`
--
DROP TABLE IF EXISTS `view_category`;

CREATE VIEW `view_category` AS select `prd_category`.`id` AS `id`,`prd_category`.`parent_id` AS `parent_id`,`prd_category`.`sort` AS `sort`,`prd_category`.`image` AS `image`,`prd_category`.`type` AS `type`,`prd_category`.`data` AS `data`,`prd_category_description`.`id` AS `id2`,`prd_category_description`.`category_id` AS `category_id`,`prd_category_description`.`language_id` AS `language_id`,`prd_category_description`.`name` AS `name`,`prd_category_description`.`data` AS `data2` from (`prd_category` join `prd_category_description` on((`prd_category`.`id` = `prd_category_description`.`category_id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_gallery`
--
DROP TABLE IF EXISTS `view_gallery`;

CREATE VIEW `view_gallery` AS select `gal_gallery`.`id` AS `id`,`gal_gallery`.`topik_id` AS `topik_id`,`gal_gallery`.`image` AS `image`,`gal_gallery`.`image2` AS `image2`,`gal_gallery`.`active` AS `active`,`gal_gallery`.`date_input` AS `date_input`,`gal_gallery`.`date_update` AS `date_update`,`gal_gallery`.`insert_by` AS `insert_by`,`gal_gallery`.`last_update_by` AS `last_update_by`,`gal_gallery`.`writer` AS `writer`,`gal_gallery`.`city` AS `city`,`gal_gallery`.`harga` AS `harga`,`gal_gallery`.`color` AS `color`,`gal_gallery`.`orientation` AS `orientation`,`gal_gallery_description`.`id` AS `id2`,`gal_gallery_description`.`gallery_id` AS `gallery_id`,`gal_gallery_description`.`language_id` AS `language_id`,`gal_gallery_description`.`title` AS `title`,`gal_gallery_description`.`sub_title` AS `sub_title`,`gal_gallery_description`.`sub_title_2` AS `sub_title_2`,`gal_gallery_description`.`content` AS `content` from (`gal_gallery` join `gal_gallery_description` on((`gal_gallery`.`id` = `gal_gallery_description`.`gallery_id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_leader`
--
DROP TABLE IF EXISTS `view_leader`;

CREATE VIEW `view_leader` AS select `leader`.`id` AS `id`,`leader`.`image` AS `image`,`leader`.`active` AS `active`,`leader`.`date_input` AS `date_input`,`leader`.`date_update` AS `date_update`,`leader`.`insert_by` AS `insert_by`,`leader`.`last_update_by` AS `last_update_by`,`leader_description`.`id` AS `id2`,`leader_description`.`leader_id` AS `leader_id`,`leader_description`.`language_id` AS `language_id`,`leader_description`.`title` AS `title`,`leader_description`.`content` AS `content` from (`leader` join `leader_description` on((`leader_description`.`leader_id` = `leader`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_service`
--
DROP TABLE IF EXISTS `view_service`;

CREATE VIEW `view_service` AS select `service`.`id` AS `id`,`service`.`image` AS `image`,`service`.`active` AS `active`,`service`.`date_input` AS `date_input`,`service`.`date_update` AS `date_update`,`service`.`insert_by` AS `insert_by`,`service`.`last_update_by` AS `last_update_by`,`service_description`.`id` AS `id2`,`service_description`.`service_id` AS `service_id`,`service_description`.`language_id` AS `language_id`,`service_description`.`title` AS `title`,`service_description`.`content` AS `content` from (`service` join `service_description` on((`service_description`.`service_id` = `service`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_slide`
--
DROP TABLE IF EXISTS `view_slide`;

CREATE VIEW `view_slide` AS select `sl_slide`.`id` AS `id`,`sl_slide`.`topik_id` AS `topik_id`,`sl_slide`.`image` AS `image`,`sl_slide`.`active` AS `active`,`sl_slide`.`date_input` AS `date_input`,`sl_slide`.`date_update` AS `date_update`,`sl_slide`.`insert_by` AS `insert_by`,`sl_slide`.`last_update_by` AS `last_update_by`,`sl_slide`.`writer` AS `writer`,`sl_slide_description`.`id` AS `id2`,`sl_slide_description`.`slide_id` AS `slide_id`,`sl_slide_description`.`language_id` AS `language_id`,`sl_slide_description`.`title` AS `title`,`sl_slide_description`.`content` AS `content`,`sl_slide_description`.`url` AS `url`,`sl_slide`.`sort` AS `sort` from (`sl_slide` join `sl_slide_description` on((`sl_slide_description`.`slide_id` = `sl_slide`.`id`)));
