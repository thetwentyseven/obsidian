-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2017 at 12:35 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obsidian`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1854, 'WooCommerce', '', '', '', '2017-02-28 11:29:27', '2017-02-28 11:29:27', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(2, 1854, 'Obsidian', 'adrian.vcch@gmail.com', '', '', '2017-02-28 11:31:05', '2017-02-28 11:31:05', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/obsidian', 'yes'),
(2, 'home', 'http://localhost:8080/obsidian', 'yes'),
(3, 'blogname', 'Obsidian', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'adrian.vcch@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:214:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"events/?$";s:26:"index.php?post_type=events";s:39:"events/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=events&feed=$matches[1]";s:34:"events/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=events&feed=$matches[1]";s:26:"events/page/([0-9]{1,})/?$";s:44:"index.php?post_type=events&paged=$matches[1]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:32:"events/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"events/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"events/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"events/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"events/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"events/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"events/(.+?)/embed/?$";s:39:"index.php?events=$matches[1]&embed=true";s:25:"events/(.+?)/trackback/?$";s:33:"index.php?events=$matches[1]&tb=1";s:45:"events/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?events=$matches[1]&feed=$matches[2]";s:40:"events/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?events=$matches[1]&feed=$matches[2]";s:33:"events/(.+?)/page/?([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&paged=$matches[2]";s:40:"events/(.+?)/comment-page-([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&cpage=$matches[2]";s:30:"events/(.+?)/wc-api(/(.*))?/?$";s:47:"index.php?events=$matches[1]&wc-api=$matches[3]";s:36:"events/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:47:"events/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:29:"events/(.+?)(?:/([0-9]+))?/?$";s:45:"index.php?events=$matches[1]&page=$matches[2]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:41:"index.php?&page_id=1776&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:31:"query-monitor/query-monitor.php";i:1;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:2;s:27:"woocommerce/woocommerce.php";i:3;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:66:"C:\\xampp\\htdocs\\obsidian/wp-content/themes/twentysixteen/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'twentysixteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '1776', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"view_query_monitor";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:25:"woocommerce_widget_cart-2";i:1;s:38:"woocommerce_recently_viewed_products-2";i:2;s:26:"woocommerce_price_filter-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:1:{i:0;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:9:{i:1488284445;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1488287356;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1488287367;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1488287677;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1488324045;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1488326400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1488367245;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1488844800;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1485263521;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1488280814;s:7:"checked";a:2:{s:8:"obsidian";s:3:"1.0";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(136, '_transient_twentyseventeen_categories', '1', 'yes'),
(137, 'current_theme', 'Twenty Sixteen', 'yes'),
(138, 'theme_mods_twentysixteen', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:176;}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(158, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.2";s:7:"version";s:5:"4.7.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1488280810;s:15:"version_checked";s:5:"4.7.2";s:12:"translations";a:0:{}}', 'no'),
(159, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"adrian.vcch@gmail.com";s:7:"version";s:5:"4.7.2";s:9:"timestamp";i:1485957477;}', 'no'),
(160, '_site_transient_timeout_browser_3724cf524ce46cd3376f6aebb4c04837', '1486563702', 'no'),
(161, '_site_transient_browser_3724cf524ce46cd3376f6aebb4c04837', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(174, '_transient_timeout_plugin_slugs', '1488367128', 'no'),
(175, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:30:"halloween-plugin/halloween.php";i:2;s:31:"query-monitor/query-monitor.php";i:3;s:41:"wordpress-importer/wordpress-importer.php";}', 'no'),
(201, '_site_transient_timeout_popular_importers_401cc84064394c70ededf2b14c3dcf82', '1486211669', 'no'),
(202, '_site_transient_popular_importers_401cc84064394c70ededf2b14c3dcf82', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:54:"Import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:71:"Convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:10:"wp-cat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:46:"Import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:62:"Import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:28:"Import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:30:"Import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:53:"Import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:96:"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'no'),
(210, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(213, '_site_transient_timeout_available_translations', '1486050868', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(214, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:38:06";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:08";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-01 08:27:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:38";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:07";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:29";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:25";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:59";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.7.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:17";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:21";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 13:41:24";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:51:11";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:30";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 00:40:28";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:07";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:28";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:05";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:56";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:31";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:33";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:24";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:25";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:51";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:32";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:30";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:27";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:07";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:45";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:41";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:13";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:27";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 15:18:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:22";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:17";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:24";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:53";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 07:09:15";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:37";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:49";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.14";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.14/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:31";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:31";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:13";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:48";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:57";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:18";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.14";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.14/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:15";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:53";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:11";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:09:16";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:00";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:04";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:49";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:03";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:55";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:59";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 19:24:08";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:36:52";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:02";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:35";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:55:14";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:55:10";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(373, 'category_children', 'a:0:{}', 'yes'),
(378, 'page_for_posts', '1774', 'yes'),
(392, '_site_transient_timeout_wporg_theme_feature_list', '1486484792', 'no'),
(393, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(421, 'theme_mods_obsidian', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:176;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1488280701;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}s:18:"orphaned_widgets_2";a:1:{i:0;s:6:"meta-2";}}}}', 'yes'),
(424, '_site_transient_timeout_theme_roots', '1488282479', 'no'),
(425, '_site_transient_theme_roots', 'a:2:{s:8:"obsidian";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(427, '_site_transient_timeout_browser_88337cd9fed317d029aaa03191c0be0b', '1488885485', 'no'),
(428, '_site_transient_browser_88337cd9fed317d029aaa03191c0be0b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(432, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1488291558', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(433, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6201";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3805";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3803";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3335";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2902";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2627";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2280";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2254";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2174";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2152";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2113";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2077";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"2018";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1973";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1809";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1702";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1678";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1501";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1415";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1326";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1310";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1181";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1157";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1108";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1046";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1037";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:4:"1005";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:4:"1001";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"994";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"980";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"945";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"921";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"892";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"882";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"881";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"847";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"804";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"804";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"797";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"788";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"782";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"780";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"779";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"767";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"765";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"760";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"750";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"744";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"740";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"734";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"718";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"664";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"662";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"660";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"656";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"642";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"642";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"637";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"629";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"624";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"609";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"608";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"601";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"599";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"596";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"589";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"577";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"567";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"566";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"562";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"555";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"555";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"548";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"546";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"543";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"530";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"524";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"517";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"496";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"492";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"475";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"473";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"473";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"467";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"464";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"459";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"452";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"448";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"446";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"445";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"438";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"437";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"436";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"436";}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";s:3:"436";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"431";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"430";}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";s:3:"427";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"426";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"423";}}', 'no'),
(436, 'woocommerce_default_country', 'GB', 'yes'),
(437, 'woocommerce_allowed_countries', 'all', 'yes'),
(438, 'woocommerce_all_except_countries', '', 'yes'),
(439, 'woocommerce_specific_allowed_countries', '', 'yes'),
(440, 'woocommerce_ship_to_countries', '', 'yes'),
(441, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(442, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(443, 'woocommerce_calc_taxes', 'no', 'yes'),
(444, 'woocommerce_demo_store', 'no', 'yes'),
(445, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(446, 'woocommerce_currency', 'GBP', 'yes'),
(447, 'woocommerce_currency_pos', 'left', 'yes'),
(448, 'woocommerce_price_thousand_sep', ',', 'yes'),
(449, 'woocommerce_price_decimal_sep', '.', 'yes'),
(450, 'woocommerce_price_num_decimals', '2', 'yes'),
(451, 'woocommerce_weight_unit', 'kg', 'yes'),
(452, 'woocommerce_dimension_unit', 'cm', 'yes'),
(453, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(454, 'woocommerce_review_rating_required', 'yes', 'no'),
(455, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(456, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(457, 'woocommerce_shop_page_id', '1797', 'yes'),
(458, 'woocommerce_shop_page_display', '', 'yes'),
(459, 'woocommerce_category_archive_display', '', 'yes'),
(460, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(461, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(462, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(463, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(464, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(465, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(466, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(467, 'woocommerce_manage_stock', 'yes', 'yes'),
(468, 'woocommerce_hold_stock_minutes', '60', 'no'),
(469, 'woocommerce_notify_low_stock', 'yes', 'no'),
(470, 'woocommerce_notify_no_stock', 'yes', 'no'),
(471, 'woocommerce_stock_email_recipient', 'adrian.vcch@gmail.com', 'no'),
(472, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(473, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(474, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(475, 'woocommerce_stock_format', '', 'yes'),
(476, 'woocommerce_file_download_method', 'force', 'no'),
(477, 'woocommerce_downloads_require_login', 'no', 'no'),
(478, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(479, 'woocommerce_prices_include_tax', 'no', 'yes'),
(480, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(481, 'woocommerce_shipping_tax_class', '', 'yes'),
(482, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(483, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(484, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(485, 'woocommerce_tax_display_cart', 'excl', 'no'),
(486, 'woocommerce_price_display_suffix', '', 'yes'),
(487, 'woocommerce_tax_total_display', 'itemized', 'no'),
(488, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(489, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(490, 'woocommerce_ship_to_destination', 'billing', 'no'),
(491, 'woocommerce_enable_coupons', 'yes', 'yes'),
(492, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(493, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(494, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(495, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(496, 'woocommerce_cart_page_id', '1848', 'yes'),
(497, 'woocommerce_checkout_page_id', '1849', 'yes'),
(498, 'woocommerce_terms_page_id', '', 'no'),
(499, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(500, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(501, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(502, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(503, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(504, 'woocommerce_myaccount_page_id', '1850', 'yes'),
(505, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(506, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(507, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(508, 'woocommerce_registration_generate_username', 'yes', 'no'),
(509, 'woocommerce_registration_generate_password', 'no', 'no'),
(510, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(511, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(512, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(513, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(514, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(515, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(516, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(517, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(518, 'woocommerce_email_from_name', 'Obsidian', 'no'),
(519, 'woocommerce_email_from_address', 'adrian.vcch@gmail.com', 'no'),
(520, 'woocommerce_email_header_image', '', 'no'),
(521, 'woocommerce_email_footer_text', 'Obsidian - Powered by WooCommerce', 'no'),
(522, 'woocommerce_email_base_color', '#557da1', 'no'),
(523, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(524, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(525, 'woocommerce_email_text_color', '#505050', 'no'),
(526, 'woocommerce_api_enabled', 'yes', 'yes'),
(530, 'woocommerce_db_version', '2.6.14', 'yes'),
(531, 'woocommerce_version', '2.6.14', 'yes'),
(532, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(534, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(535, 'widget_woocommerce_widget_cart', 'a:2:{i:2;a:2:{s:5:"title";s:4:"Cart";s:13:"hide_if_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(536, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(537, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(538, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:15:"Filter by price";}s:12:"_multiwidget";i:1;}', 'yes'),
(539, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(540, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(541, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(542, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(543, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(544, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(545, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:2;a:2:{s:5:"title";s:24:"Recently Viewed Products";s:6:"number";i:10;}s:12:"_multiwidget";i:1;}', 'yes'),
(546, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(547, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(550, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(551, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:6:"p=1848";i:1;s:6:"/cart/";i:2;s:6:"p=1849";i:3;s:10:"/checkout/";i:4;s:6:"p=1850";i:5;s:12:"/my-account/";}', 'yes'),
(552, '_transient_timeout_geoip_::1', '1488885672', 'no'),
(553, '_transient_geoip_::1', '', 'no'),
(554, '_transient_timeout_external_ip_address_::1', '1488885673', 'no'),
(555, '_transient_external_ip_address_::1', '146.176.228.110', 'no'),
(556, '_transient_timeout_geoip_146.176.228.110', '1488885674', 'no'),
(557, '_transient_geoip_146.176.228.110', 'GB', 'no'),
(558, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(559, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(560, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:21:"adrian.vcch@gmail.com";}', 'yes'),
(561, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(562, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(563, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(564, 'woocommerce_allow_tracking', 'no', 'yes'),
(566, '_transient_shipping-transient-version', '1488280915', 'yes'),
(567, '_transient_timeout_wc_shipping_method_count_0_1488280915', '1490872915', 'no'),
(568, '_transient_wc_shipping_method_count_0_1488280915', '0', 'no'),
(569, 'wc_ppec_version', '1.1.2', 'yes'),
(570, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1488281098;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:53:"http://downloads.wordpress.org/plugin/akismet.3.3.zip";}s:31:"query-monitor/query-monitor.php";O:8:"stdClass":6:{s:2:"id";s:5:"10302";s:4:"slug";s:13:"query-monitor";s:6:"plugin";s:31:"query-monitor/query-monitor.php";s:11:"new_version";s:6:"2.13.3";s:3:"url";s:44:"https://wordpress.org/plugins/query-monitor/";s:7:"package";s:62:"http://downloads.wordpress.org/plugin/query-monitor.2.13.3.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:6:"2.6.14";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"http://downloads.wordpress.org/plugin/woocommerce.2.6.14.zip";}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":6:{s:2:"id";s:5:"70549";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:91:"http://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.1.2.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.3";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:66:"http://downloads.wordpress.org/plugin/wordpress-importer.0.6.3.zip";}}}', 'no'),
(571, '_transient_product_query-transient-version', '1488281105', 'yes'),
(572, '_transient_product-transient-version', '1488281107', 'yes'),
(574, 'product_cat_children', 'a:0:{}', 'yes'),
(575, '_transient_timeout_wc_related_1851', '1488367698', 'no'),
(576, '_transient_wc_related_1851', 'a:0:{}', 'no'),
(577, '_transient_timeout_wc_shipping_method_count_1_1488280915', '1490873306', 'no'),
(578, '_transient_wc_shipping_method_count_1_1488280915', '0', 'no'),
(579, '_transient_orders-transient-version', '1488281467', 'yes'),
(582, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:0;s:3:"all";i:0;s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(583, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(181, 1046, '_menu_item_type', 'custom'),
(182, 1046, '_menu_item_menu_item_parent', '0'),
(183, 1046, '_menu_item_object_id', '1046'),
(184, 1046, '_menu_item_object', 'custom'),
(185, 1046, '_menu_item_target', ''),
(186, 1046, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(187, 1046, '_menu_item_xfn', ''),
(188, 1046, '_menu_item_url', '#'),
(189, 1047, '_menu_item_type', 'custom'),
(190, 1047, '_menu_item_menu_item_parent', '0'),
(191, 1047, '_menu_item_object_id', '1047'),
(192, 1047, '_menu_item_object', 'custom'),
(193, 1047, '_menu_item_target', ''),
(194, 1047, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(195, 1047, '_menu_item_xfn', ''),
(196, 1047, '_menu_item_url', '#'),
(205, 1049, '_menu_item_type', 'taxonomy'),
(206, 1049, '_menu_item_menu_item_parent', '1047'),
(207, 1049, '_menu_item_object_id', '134'),
(208, 1049, '_menu_item_object', 'category'),
(209, 1049, '_menu_item_target', ''),
(210, 1049, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(211, 1049, '_menu_item_xfn', ''),
(212, 1049, '_menu_item_url', ''),
(221, 1051, '_menu_item_type', 'custom'),
(222, 1051, '_menu_item_menu_item_parent', '0'),
(223, 1051, '_menu_item_object_id', '1051'),
(224, 1051, '_menu_item_object', 'custom'),
(225, 1051, '_menu_item_target', ''),
(226, 1051, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(227, 1051, '_menu_item_xfn', ''),
(228, 1051, '_menu_item_url', '#'),
(229, 1052, '_menu_item_type', 'custom'),
(230, 1052, '_menu_item_menu_item_parent', '1051'),
(231, 1052, '_menu_item_object_id', '1052'),
(232, 1052, '_menu_item_object', 'custom'),
(233, 1052, '_menu_item_target', ''),
(234, 1052, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(235, 1052, '_menu_item_xfn', ''),
(236, 1052, '_menu_item_url', '#'),
(237, 1053, '_menu_item_type', 'custom'),
(238, 1053, '_menu_item_menu_item_parent', '1052'),
(239, 1053, '_menu_item_object_id', '1053'),
(240, 1053, '_menu_item_object', 'custom'),
(241, 1053, '_menu_item_target', ''),
(242, 1053, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(243, 1053, '_menu_item_xfn', ''),
(244, 1053, '_menu_item_url', '#'),
(245, 1054, '_menu_item_type', 'custom'),
(246, 1054, '_menu_item_menu_item_parent', '1053'),
(247, 1054, '_menu_item_object_id', '1054'),
(248, 1054, '_menu_item_object', 'custom'),
(249, 1054, '_menu_item_target', ''),
(250, 1054, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 1054, '_menu_item_xfn', ''),
(252, 1054, '_menu_item_url', '#'),
(253, 1055, '_menu_item_type', 'custom'),
(254, 1055, '_menu_item_menu_item_parent', '1054'),
(255, 1055, '_menu_item_object_id', '1055'),
(256, 1055, '_menu_item_object', 'custom'),
(257, 1055, '_menu_item_target', ''),
(258, 1055, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(259, 1055, '_menu_item_xfn', ''),
(260, 1055, '_menu_item_url', '#'),
(261, 1056, '_menu_item_type', 'custom'),
(262, 1056, '_menu_item_menu_item_parent', '1055'),
(263, 1056, '_menu_item_object_id', '1056'),
(264, 1056, '_menu_item_object', 'custom'),
(265, 1056, '_menu_item_target', ''),
(266, 1056, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(267, 1056, '_menu_item_xfn', ''),
(268, 1056, '_menu_item_url', '#'),
(269, 1057, '_menu_item_type', 'custom'),
(270, 1057, '_menu_item_menu_item_parent', '1056'),
(271, 1057, '_menu_item_object_id', '1057'),
(272, 1057, '_menu_item_object', 'custom'),
(273, 1057, '_menu_item_target', ''),
(274, 1057, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(275, 1057, '_menu_item_xfn', ''),
(276, 1057, '_menu_item_url', '#'),
(277, 1058, '_menu_item_type', 'custom'),
(278, 1058, '_menu_item_menu_item_parent', '1057'),
(279, 1058, '_menu_item_object_id', '1058'),
(280, 1058, '_menu_item_object', 'custom'),
(281, 1058, '_menu_item_target', ''),
(282, 1058, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(283, 1058, '_menu_item_xfn', ''),
(284, 1058, '_menu_item_url', '#'),
(285, 1059, '_menu_item_type', 'custom'),
(286, 1059, '_menu_item_menu_item_parent', '1058'),
(287, 1059, '_menu_item_object_id', '1059'),
(288, 1059, '_menu_item_object', 'custom'),
(289, 1059, '_menu_item_target', ''),
(290, 1059, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(291, 1059, '_menu_item_xfn', ''),
(292, 1059, '_menu_item_url', '#'),
(293, 1060, '_menu_item_type', 'custom'),
(294, 1060, '_menu_item_menu_item_parent', '1059'),
(295, 1060, '_menu_item_object_id', '1060'),
(296, 1060, '_menu_item_object', 'custom'),
(297, 1060, '_menu_item_target', ''),
(298, 1060, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(299, 1060, '_menu_item_xfn', ''),
(300, 1060, '_menu_item_url', '#'),
(301, 1061, '_menu_item_type', 'custom'),
(302, 1061, '_menu_item_menu_item_parent', '1060'),
(303, 1061, '_menu_item_object_id', '1061'),
(304, 1061, '_menu_item_object', 'custom'),
(305, 1061, '_menu_item_target', ''),
(306, 1061, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(307, 1061, '_menu_item_xfn', ''),
(308, 1061, '_menu_item_url', '#'),
(309, 1062, '_menu_item_type', 'custom'),
(310, 1062, '_menu_item_menu_item_parent', '0'),
(311, 1062, '_menu_item_object_id', '1062'),
(312, 1062, '_menu_item_object', 'custom'),
(313, 1062, '_menu_item_target', ''),
(314, 1062, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(315, 1062, '_menu_item_xfn', ''),
(316, 1062, '_menu_item_url', '#'),
(317, 1063, '_menu_item_type', 'custom'),
(318, 1063, '_menu_item_menu_item_parent', '0'),
(319, 1063, '_menu_item_object_id', '1063'),
(320, 1063, '_menu_item_object', 'custom'),
(321, 1063, '_menu_item_target', ''),
(322, 1063, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(323, 1063, '_menu_item_xfn', ''),
(324, 1063, '_menu_item_url', '#'),
(325, 1064, '_menu_item_type', 'custom'),
(326, 1064, '_menu_item_menu_item_parent', '1062'),
(327, 1064, '_menu_item_object_id', '1064'),
(328, 1064, '_menu_item_object', 'custom'),
(329, 1064, '_menu_item_target', ''),
(330, 1064, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(331, 1064, '_menu_item_xfn', ''),
(332, 1064, '_menu_item_url', '#'),
(333, 1065, '_menu_item_type', 'custom'),
(334, 1065, '_menu_item_menu_item_parent', '1062'),
(335, 1065, '_menu_item_object_id', '1065'),
(336, 1065, '_menu_item_object', 'custom'),
(337, 1065, '_menu_item_target', ''),
(338, 1065, '_menu_item_classes', 'a:1:{i:0;s:21:"custom-menu-css-class";}'),
(339, 1065, '_menu_item_xfn', ''),
(340, 1065, '_menu_item_url', '#'),
(341, 1066, '_menu_item_type', 'custom'),
(342, 1066, '_menu_item_menu_item_parent', '1062'),
(343, 1066, '_menu_item_object_id', '1066'),
(344, 1066, '_menu_item_object', 'custom'),
(345, 1066, '_menu_item_target', '_blank'),
(346, 1066, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(347, 1066, '_menu_item_xfn', ''),
(348, 1066, '_menu_item_url', 'http://apple.com'),
(351, 1629, '_menu_item_type', 'custom'),
(352, 1629, '_menu_item_menu_item_parent', '0'),
(353, 1629, '_menu_item_object_id', '1629'),
(354, 1629, '_menu_item_object', 'custom'),
(355, 1629, '_menu_item_target', ''),
(356, 1629, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(357, 1629, '_menu_item_xfn', ''),
(358, 1629, '_menu_item_url', 'http://wpthemetestdata.wordpress.com/'),
(1005, 1772, '_edit_last', '1'),
(1006, 1772, '_edit_lock', '1486473058:1'),
(1007, 1774, '_edit_last', '1'),
(1008, 1774, '_edit_lock', '1486473071:1'),
(1009, 1776, '_edit_last', '1'),
(1010, 1776, '_edit_lock', '1487080468:1'),
(1029, 1781, '_edit_last', '1'),
(1030, 1781, '_edit_lock', '1486473254:1'),
(1031, 1783, '_edit_last', '1'),
(1032, 1783, '_edit_lock', '1487079246:1'),
(1033, 1785, '_edit_last', '1'),
(1034, 1785, '_edit_lock', '1486473314:1'),
(1035, 1787, '_edit_last', '1'),
(1036, 1787, '_edit_lock', '1486473353:1'),
(1037, 1789, '_edit_last', '1'),
(1038, 1789, '_edit_lock', '1486473376:1'),
(1039, 1791, '_edit_last', '1'),
(1040, 1791, '_edit_lock', '1486473390:1'),
(1041, 1793, '_edit_last', '1'),
(1042, 1793, '_edit_lock', '1486473410:1'),
(1043, 1795, '_edit_last', '1'),
(1044, 1795, '_edit_lock', '1486473423:1'),
(1045, 1797, '_edit_last', '1'),
(1046, 1797, '_edit_lock', '1486473719:1'),
(1047, 1799, '_menu_item_type', 'post_type'),
(1048, 1799, '_menu_item_menu_item_parent', '0'),
(1049, 1799, '_menu_item_object_id', '1797'),
(1050, 1799, '_menu_item_object', 'page'),
(1051, 1799, '_menu_item_target', ''),
(1052, 1799, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1053, 1799, '_menu_item_xfn', ''),
(1054, 1799, '_menu_item_url', ''),
(1056, 1800, '_menu_item_type', 'post_type'),
(1057, 1800, '_menu_item_menu_item_parent', '0'),
(1058, 1800, '_menu_item_object_id', '1795'),
(1059, 1800, '_menu_item_object', 'page'),
(1060, 1800, '_menu_item_target', ''),
(1061, 1800, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1062, 1800, '_menu_item_xfn', ''),
(1063, 1800, '_menu_item_url', ''),
(1065, 1801, '_menu_item_type', 'post_type'),
(1066, 1801, '_menu_item_menu_item_parent', '0'),
(1067, 1801, '_menu_item_object_id', '1776'),
(1068, 1801, '_menu_item_object', 'page'),
(1069, 1801, '_menu_item_target', ''),
(1070, 1801, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1071, 1801, '_menu_item_xfn', ''),
(1072, 1801, '_menu_item_url', ''),
(1073, 1801, '_menu_item_orphaned', '1486473599'),
(1074, 1802, '_menu_item_type', 'post_type'),
(1075, 1802, '_menu_item_menu_item_parent', '0'),
(1076, 1802, '_menu_item_object_id', '1774'),
(1077, 1802, '_menu_item_object', 'page'),
(1078, 1802, '_menu_item_target', ''),
(1079, 1802, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1080, 1802, '_menu_item_xfn', ''),
(1081, 1802, '_menu_item_url', ''),
(1092, 1804, '_menu_item_type', 'post_type'),
(1093, 1804, '_menu_item_menu_item_parent', '1812'),
(1094, 1804, '_menu_item_object_id', '1793'),
(1095, 1804, '_menu_item_object', 'page'),
(1096, 1804, '_menu_item_target', ''),
(1097, 1804, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1098, 1804, '_menu_item_xfn', ''),
(1099, 1804, '_menu_item_url', ''),
(1101, 1805, '_menu_item_type', 'post_type'),
(1102, 1805, '_menu_item_menu_item_parent', '1812'),
(1103, 1805, '_menu_item_object_id', '1791'),
(1104, 1805, '_menu_item_object', 'page'),
(1105, 1805, '_menu_item_target', ''),
(1106, 1805, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1107, 1805, '_menu_item_xfn', ''),
(1108, 1805, '_menu_item_url', ''),
(1119, 1807, '_menu_item_type', 'post_type'),
(1120, 1807, '_menu_item_menu_item_parent', '1811'),
(1121, 1807, '_menu_item_object_id', '1789'),
(1122, 1807, '_menu_item_object', 'page'),
(1123, 1807, '_menu_item_target', ''),
(1124, 1807, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1125, 1807, '_menu_item_xfn', ''),
(1126, 1807, '_menu_item_url', ''),
(1128, 1808, '_menu_item_type', 'post_type'),
(1129, 1808, '_menu_item_menu_item_parent', '1811'),
(1130, 1808, '_menu_item_object_id', '1787'),
(1131, 1808, '_menu_item_object', 'page'),
(1132, 1808, '_menu_item_target', ''),
(1133, 1808, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1134, 1808, '_menu_item_xfn', ''),
(1135, 1808, '_menu_item_url', ''),
(1137, 1809, '_menu_item_type', 'post_type'),
(1138, 1809, '_menu_item_menu_item_parent', '1811'),
(1139, 1809, '_menu_item_object_id', '1785'),
(1140, 1809, '_menu_item_object', 'page'),
(1141, 1809, '_menu_item_target', ''),
(1142, 1809, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1143, 1809, '_menu_item_xfn', ''),
(1144, 1809, '_menu_item_url', ''),
(1146, 1810, '_menu_item_type', 'post_type'),
(1147, 1810, '_menu_item_menu_item_parent', '1812'),
(1148, 1810, '_menu_item_object_id', '1781'),
(1149, 1810, '_menu_item_object', 'page'),
(1150, 1810, '_menu_item_target', ''),
(1151, 1810, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1152, 1810, '_menu_item_xfn', ''),
(1153, 1810, '_menu_item_url', ''),
(1155, 1811, '_menu_item_type', 'custom'),
(1156, 1811, '_menu_item_menu_item_parent', '1812'),
(1157, 1811, '_menu_item_object_id', '1811'),
(1158, 1811, '_menu_item_object', 'custom'),
(1159, 1811, '_menu_item_target', ''),
(1160, 1811, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1161, 1811, '_menu_item_xfn', ''),
(1162, 1811, '_menu_item_url', '#'),
(1164, 1812, '_menu_item_type', 'custom'),
(1165, 1812, '_menu_item_menu_item_parent', '0'),
(1166, 1812, '_menu_item_object_id', '1812'),
(1167, 1812, '_menu_item_object', 'custom'),
(1168, 1812, '_menu_item_target', ''),
(1169, 1812, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1170, 1812, '_menu_item_xfn', ''),
(1171, 1812, '_menu_item_url', '#'),
(1173, 1813, '_edit_last', '1'),
(1174, 1813, '_edit_lock', '1486473744:1'),
(1176, 1815, '_edit_last', '1'),
(1177, 1815, '_edit_lock', '1486473845:1'),
(1178, 1837, '_edit_last', '1'),
(1179, 1837, '_edit_lock', '1486491489:1'),
(1180, 1838, '_wp_attached_file', '2017/02/world-goes-pop.jpeg'),
(1181, 1838, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:300;s:4:"file";s:27:"2017/02/world-goes-pop.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"world-goes-pop-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"world-goes-pop-300x150.jpeg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1182, 1837, '_thumbnail_id', '1838'),
(1183, 1839, '_edit_last', '1'),
(1184, 1839, '_edit_lock', '1487081511:1'),
(1185, 1839, '_thumbnail_id', '1838'),
(1186, 1841, '_edit_last', '1'),
(1187, 1841, '_edit_lock', '1487079499:1'),
(1188, 1845, '_edit_last', '1'),
(1189, 1845, '_edit_lock', '1487079272:1'),
(1190, 1851, '_edit_last', '1'),
(1191, 1851, '_edit_lock', '1488281032:1'),
(1192, 1852, '_wp_attached_file', '2017/02/Staff_Back.jpg'),
(1193, 1852, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2017/02/Staff_Back.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Staff_Back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Staff_Back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Staff_Back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"Staff_Back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"Staff_Back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"Staff_Back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1194, 1853, '_wp_attached_file', '2017/02/Staff_Front.jpg'),
(1195, 1853, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2017/02/Staff_Front.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Staff_Front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Staff_Front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"Staff_Front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Staff_Front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"Staff_Front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"Staff_Front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1196, 1851, '_visibility', 'visible'),
(1197, 1851, '_stock_status', 'instock'),
(1198, 1851, '_thumbnail_id', '1852'),
(1199, 1851, 'total_sales', '1'),
(1200, 1851, '_downloadable', 'no'),
(1201, 1851, '_virtual', 'no'),
(1202, 1851, '_purchase_note', ''),
(1203, 1851, '_featured', 'no'),
(1204, 1851, '_weight', ''),
(1205, 1851, '_length', ''),
(1206, 1851, '_width', ''),
(1207, 1851, '_height', ''),
(1208, 1851, '_sku', ''),
(1209, 1851, '_product_attributes', 'a:0:{}'),
(1210, 1851, '_regular_price', '35'),
(1211, 1851, '_sale_price', ''),
(1212, 1851, '_sale_price_dates_from', ''),
(1213, 1851, '_sale_price_dates_to', ''),
(1214, 1851, '_price', '35'),
(1215, 1851, '_sold_individually', ''),
(1216, 1851, '_manage_stock', 'no'),
(1217, 1851, '_backorders', 'no'),
(1218, 1851, '_stock', ''),
(1219, 1851, '_upsell_ids', 'a:0:{}'),
(1220, 1851, '_crosssell_ids', 'a:0:{}'),
(1221, 1851, '_product_version', '2.6.14'),
(1222, 1851, '_product_image_gallery', '1852,1853'),
(1223, 1851, '_wc_rating_count', 'a:0:{}'),
(1224, 1851, '_wc_review_count', '0'),
(1225, 1851, '_wc_average_rating', '0'),
(1226, 1854, '_order_key', 'wc_order_58b55f159ddcd'),
(1227, 1854, '_order_currency', 'GBP'),
(1228, 1854, '_prices_include_tax', 'no'),
(1229, 1854, '_customer_ip_address', '::1'),
(1230, 1854, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(1231, 1854, '_customer_user', '1'),
(1232, 1854, '_created_via', 'checkout'),
(1233, 1854, '_cart_hash', 'a9b1bdfd2817813da87a6f6c05673afa'),
(1234, 1854, '_order_version', '2.6.14'),
(1235, 1854, '_billing_first_name', 'Adrian'),
(1236, 1854, '_billing_last_name', 'Camacho'),
(1237, 1854, '_billing_company', ''),
(1238, 1854, '_billing_email', 'adrian.vcch@gmail.com'),
(1239, 1854, '_billing_phone', '07774001976'),
(1240, 1854, '_billing_country', 'GB'),
(1241, 1854, '_billing_address_1', 'Lothian Road 163/1'),
(1242, 1854, '_billing_address_2', ''),
(1243, 1854, '_billing_city', 'Edinburgh'),
(1244, 1854, '_billing_state', 'Edinburgh'),
(1245, 1854, '_billing_postcode', 'EH3 9AA'),
(1246, 1854, '_shipping_first_name', 'Adrian'),
(1247, 1854, '_shipping_last_name', 'Camacho'),
(1248, 1854, '_shipping_company', ''),
(1249, 1854, '_shipping_country', 'GB'),
(1250, 1854, '_shipping_address_1', 'Lothian Road 163/1'),
(1251, 1854, '_shipping_address_2', ''),
(1252, 1854, '_shipping_city', 'Edinburgh'),
(1253, 1854, '_shipping_state', 'Edinburgh'),
(1254, 1854, '_shipping_postcode', 'EH3 9AA'),
(1255, 1854, '_payment_method', 'cod'),
(1256, 1854, '_payment_method_title', 'Cash on Delivery'),
(1257, 1854, '_order_shipping', '0'),
(1258, 1854, '_cart_discount', '0'),
(1259, 1854, '_cart_discount_tax', '0'),
(1260, 1854, '_order_tax', '0'),
(1261, 1854, '_order_shipping_tax', '0'),
(1262, 1854, '_order_total', '35.00'),
(1263, 1854, '_download_permissions_granted', '1'),
(1264, 1854, '_recorded_sales', 'yes'),
(1265, 1854, '_order_stock_reduced', '1'),
(1266, 1854, '_edit_lock', '1488281468:1'),
(1267, 1854, '_edit_last', '1'),
(1268, 1854, '_transaction_id', ''),
(1269, 1854, '_completed_date', '2017-02-28 11:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1046, 1, '2017-02-02 12:36:49', '2017-02-02 12:36:49', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2017-02-02 12:36:49', '2017-02-02 12:36:49', '', 0, 'http://localhost:8080/obsidian/pages/', 2, 'nav_menu_item', '', 0),
(1047, 1, '2017-02-02 12:36:49', '2017-02-02 12:36:49', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2017-02-02 12:36:49', '2017-02-02 12:36:49', '', 0, 'http://localhost:8080/obsidian/categories/', 10, 'nav_menu_item', '', 0),
(1049, 1, '2017-02-02 12:36:51', '2017-02-02 12:36:51', 'Posts in this category test post formats.', '', '', 'publish', 'closed', 'closed', '', '1049', '', '', '2017-02-02 12:36:51', '2017-02-02 12:36:51', '', 0, 'http://localhost:8080/obsidian/', 24, 'nav_menu_item', '', 0),
(1051, 1, '2017-02-02 12:36:52', '2017-02-02 12:36:52', '', 'Depth', '', 'publish', 'closed', 'closed', '', 'depth', '', '', '2017-02-02 12:36:52', '2017-02-02 12:36:52', '', 0, 'http://localhost:8080/obsidian/depth/', 29, 'nav_menu_item', '', 0),
(1052, 1, '2017-02-02 12:36:52', '2017-02-02 12:36:52', '', 'Level 01', '', 'publish', 'closed', 'closed', '', 'level-01', '', '', '2017-02-02 12:36:52', '2017-02-02 12:36:52', '', 0, 'http://localhost:8080/obsidian/level-01/', 30, 'nav_menu_item', '', 0),
(1053, 1, '2017-02-02 12:36:53', '2017-02-02 12:36:53', '', 'Level 02', '', 'publish', 'closed', 'closed', '', 'level-02', '', '', '2017-02-02 12:36:53', '2017-02-02 12:36:53', '', 0, 'http://localhost:8080/obsidian/level-02/', 31, 'nav_menu_item', '', 0),
(1054, 1, '2017-02-02 12:36:53', '2017-02-02 12:36:53', '', 'Level 03', '', 'publish', 'closed', 'closed', '', 'level-03', '', '', '2017-02-02 12:36:53', '2017-02-02 12:36:53', '', 0, 'http://localhost:8080/obsidian/level-03/', 32, 'nav_menu_item', '', 0),
(1055, 1, '2017-02-02 12:36:54', '2017-02-02 12:36:54', '', 'Level 04', '', 'publish', 'closed', 'closed', '', 'level-04', '', '', '2017-02-02 12:36:54', '2017-02-02 12:36:54', '', 0, 'http://localhost:8080/obsidian/level-04/', 33, 'nav_menu_item', '', 0),
(1056, 1, '2017-02-02 12:36:54', '2017-02-02 12:36:54', '', 'Level 05', '', 'publish', 'closed', 'closed', '', 'level-05', '', '', '2017-02-02 12:36:54', '2017-02-02 12:36:54', '', 0, 'http://localhost:8080/obsidian/level-05/', 34, 'nav_menu_item', '', 0),
(1057, 1, '2017-02-02 12:36:55', '2017-02-02 12:36:55', '', 'Level 06', '', 'publish', 'closed', 'closed', '', 'level-06', '', '', '2017-02-02 12:36:55', '2017-02-02 12:36:55', '', 0, 'http://localhost:8080/obsidian/level-06/', 35, 'nav_menu_item', '', 0),
(1058, 1, '2017-02-02 12:36:56', '2017-02-02 12:36:56', '', 'Level 07', '', 'publish', 'closed', 'closed', '', 'level-07', '', '', '2017-02-02 12:36:56', '2017-02-02 12:36:56', '', 0, 'http://localhost:8080/obsidian/level-07/', 36, 'nav_menu_item', '', 0),
(1059, 1, '2017-02-02 12:36:56', '2017-02-02 12:36:56', '', 'Level 08', '', 'publish', 'closed', 'closed', '', 'level-08', '', '', '2017-02-02 12:36:56', '2017-02-02 12:36:56', '', 0, 'http://localhost:8080/obsidian/level-08/', 37, 'nav_menu_item', '', 0),
(1060, 1, '2017-02-02 12:36:57', '2017-02-02 12:36:57', '', 'Level 09', '', 'publish', 'closed', 'closed', '', 'level-09', '', '', '2017-02-02 12:36:57', '2017-02-02 12:36:57', '', 0, 'http://localhost:8080/obsidian/level-09/', 38, 'nav_menu_item', '', 0),
(1061, 1, '2017-02-02 12:36:58', '2017-02-02 12:36:58', '', 'Level 10', '', 'publish', 'closed', 'closed', '', 'level-10', '', '', '2017-02-02 12:36:58', '2017-02-02 12:36:58', '', 0, 'http://localhost:8080/obsidian/level-10/', 39, 'nav_menu_item', '', 0),
(1062, 1, '2017-02-02 12:36:58', '2017-02-02 12:36:58', '', 'Advanced', '', 'publish', 'closed', 'closed', '', 'advanced', '', '', '2017-02-02 12:36:58', '2017-02-02 12:36:58', '', 0, 'http://localhost:8080/obsidian/advanced/', 40, 'nav_menu_item', '', 0),
(1063, 1, '2017-02-02 12:37:00', '2017-02-02 12:37:00', 'Custom Menu Description', 'Menu Description', '', 'publish', 'closed', 'closed', '', 'menu-description', '', '', '2017-02-02 12:37:00', '2017-02-02 12:37:00', '', 0, 'http://localhost:8080/obsidian/menu-description/', 44, 'nav_menu_item', '', 0),
(1064, 1, '2017-02-02 12:37:00', '2017-02-02 12:37:00', '', 'Menu Title Attribute', 'Custom Title Attribute', 'publish', 'closed', 'closed', '', 'menu-title-attribute', '', '', '2017-02-02 12:37:00', '2017-02-02 12:37:00', '', 0, 'http://localhost:8080/obsidian/menu-title-attribute/', 41, 'nav_menu_item', '', 0),
(1065, 1, '2017-02-02 12:37:01', '2017-02-02 12:37:01', '', 'Menu CSS Class', '', 'publish', 'closed', 'closed', '', 'menu-css-class', '', '', '2017-02-02 12:37:01', '2017-02-02 12:37:01', '', 0, 'http://localhost:8080/obsidian/menu-css-class/', 42, 'nav_menu_item', '', 0),
(1066, 1, '2017-02-02 12:37:01', '2017-02-02 12:37:01', '', 'New Window / Tab', '', 'publish', 'closed', 'closed', '', 'new-window-tab', '', '', '2017-02-02 12:37:01', '2017-02-02 12:37:01', '', 0, 'http://localhost:8080/obsidian/new-window-tab/', 43, 'nav_menu_item', '', 0),
(1629, 1, '2017-02-02 12:37:03', '2017-02-02 12:37:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-02-02 12:37:03', '2017-02-02 12:37:03', '', 0, 'http://localhost:8080/obsidian/home/', 1, 'nav_menu_item', '', 0),
(1772, 1, '2017-02-07 13:13:12', '2017-02-07 13:13:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Club', '', 'publish', 'closed', 'closed', '', 'club', '', '', '2017-02-07 13:13:12', '2017-02-07 13:13:12', '', 0, 'http://localhost:8080/obsidian/?page_id=1772', 0, 'page', '', 0),
(1773, 1, '2017-02-07 13:13:12', '2017-02-07 13:13:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Club', '', 'inherit', 'closed', 'closed', '', '1772-revision-v1', '', '', '2017-02-07 13:13:12', '2017-02-07 13:13:12', '', 1772, 'http://localhost:8080/obsidian/1772-revision-v1/', 0, 'revision', '', 0),
(1774, 1, '2017-02-07 13:13:30', '2017-02-07 13:13:30', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-02-07 13:13:30', '2017-02-07 13:13:30', '', 0, 'http://localhost:8080/obsidian/?page_id=1774', 0, 'page', '', 0),
(1775, 1, '2017-02-07 13:13:30', '2017-02-07 13:13:30', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '1774-revision-v1', '', '', '2017-02-07 13:13:30', '2017-02-07 13:13:30', '', 1774, 'http://localhost:8080/obsidian/1774-revision-v1/', 0, 'revision', '', 0),
(1776, 1, '2017-02-07 13:14:08', '2017-02-07 13:14:08', 'Nunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Obsidian', '', 'publish', 'closed', 'closed', '', 'obsidian', '', '', '2017-02-14 13:56:21', '2017-02-14 13:56:21', '', 0, 'http://localhost:8080/obsidian/?page_id=1776', 0, 'page', '', 0),
(1777, 1, '2017-02-07 13:14:08', '2017-02-07 13:14:08', '', 'Obsidian', '', 'inherit', 'closed', 'closed', '', '1776-revision-v1', '', '', '2017-02-07 13:14:08', '2017-02-07 13:14:08', '', 1776, 'http://localhost:8080/obsidian/1776-revision-v1/', 0, 'revision', '', 0),
(1778, 1, '2017-02-07 13:14:12', '2017-02-07 13:14:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Obsidian', '', 'inherit', 'closed', 'closed', '', '1776-revision-v1', '', '', '2017-02-07 13:14:12', '2017-02-07 13:14:12', '', 1776, 'http://localhost:8080/obsidian/1776-revision-v1/', 0, 'revision', '', 0),
(1781, 1, '2017-02-07 13:16:35', '2017-02-07 13:16:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-02-07 13:16:35', '2017-02-07 13:16:35', '', 1772, 'http://localhost:8080/obsidian/?page_id=1781', 0, 'page', '', 0),
(1782, 1, '2017-02-07 13:16:35', '2017-02-07 13:16:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'About', '', 'inherit', 'closed', 'closed', '', '1781-revision-v1', '', '', '2017-02-07 13:16:35', '2017-02-07 13:16:35', '', 1781, 'http://localhost:8080/obsidian/1781-revision-v1/', 0, 'revision', '', 0),
(1783, 1, '2017-02-07 13:16:49', '2017-02-07 13:16:49', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2017-02-07 13:17:27', '2017-02-07 13:17:27', '', 1772, 'http://localhost:8080/obsidian/?page_id=1783', 0, 'page', '', 0),
(1784, 1, '2017-02-07 13:16:49', '2017-02-07 13:16:49', '', 'Events', '', 'inherit', 'closed', 'closed', '', '1783-revision-v1', '', '', '2017-02-07 13:16:49', '2017-02-07 13:16:49', '', 1783, 'http://localhost:8080/obsidian/1783-revision-v1/', 0, 'revision', '', 0),
(1785, 1, '2017-02-07 13:17:12', '2017-02-07 13:17:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'POP', '', 'publish', 'closed', 'closed', '', 'pop', '', '', '2017-02-07 13:17:12', '2017-02-07 13:17:12', '', 1783, 'http://localhost:8080/obsidian/?page_id=1785', 0, 'page', '', 0),
(1786, 1, '2017-02-07 13:17:12', '2017-02-07 13:17:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'POP', '', 'inherit', 'closed', 'closed', '', '1785-revision-v1', '', '', '2017-02-07 13:17:12', '2017-02-07 13:17:12', '', 1785, 'http://localhost:8080/obsidian/1785-revision-v1/', 0, 'revision', '', 0),
(1787, 1, '2017-02-07 13:18:14', '2017-02-07 13:18:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Drum & Bass', '', 'publish', 'closed', 'closed', '', 'drum-bass', '', '', '2017-02-07 13:18:14', '2017-02-07 13:18:14', '', 1783, 'http://localhost:8080/obsidian/?page_id=1787', 0, 'page', '', 0),
(1788, 1, '2017-02-07 13:18:14', '2017-02-07 13:18:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Drum & Bass', '', 'inherit', 'closed', 'closed', '', '1787-revision-v1', '', '', '2017-02-07 13:18:14', '2017-02-07 13:18:14', '', 1787, 'http://localhost:8080/obsidian/1787-revision-v1/', 0, 'revision', '', 0),
(1789, 1, '2017-02-07 13:18:34', '2017-02-07 13:18:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'EDM', '', 'publish', 'closed', 'closed', '', 'edm', '', '', '2017-02-07 13:18:34', '2017-02-07 13:18:34', '', 1783, 'http://localhost:8080/obsidian/?page_id=1789', 0, 'page', '', 0),
(1790, 1, '2017-02-07 13:18:34', '2017-02-07 13:18:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'EDM', '', 'inherit', 'closed', 'closed', '', '1789-revision-v1', '', '', '2017-02-07 13:18:34', '2017-02-07 13:18:34', '', 1789, 'http://localhost:8080/obsidian/1789-revision-v1/', 0, 'revision', '', 0),
(1791, 1, '2017-02-07 13:18:52', '2017-02-07 13:18:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Promotion', '', 'publish', 'closed', 'closed', '', 'promotion', '', '', '2017-02-07 13:18:52', '2017-02-07 13:18:52', '', 1772, 'http://localhost:8080/obsidian/?page_id=1791', 0, 'page', '', 0),
(1792, 1, '2017-02-07 13:18:52', '2017-02-07 13:18:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Promotion', '', 'inherit', 'closed', 'closed', '', '1791-revision-v1', '', '', '2017-02-07 13:18:52', '2017-02-07 13:18:52', '', 1791, 'http://localhost:8080/obsidian/1791-revision-v1/', 0, 'revision', '', 0),
(1793, 1, '2017-02-07 13:19:05', '2017-02-07 13:19:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Media', '', 'publish', 'closed', 'closed', '', 'media', '', '', '2017-02-07 13:19:05', '2017-02-07 13:19:05', '', 1772, 'http://localhost:8080/obsidian/?page_id=1793', 0, 'page', '', 0),
(1794, 1, '2017-02-07 13:19:05', '2017-02-07 13:19:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Media', '', 'inherit', 'closed', 'closed', '', '1793-revision-v1', '', '', '2017-02-07 13:19:05', '2017-02-07 13:19:05', '', 1793, 'http://localhost:8080/obsidian/1793-revision-v1/', 0, 'revision', '', 0),
(1795, 1, '2017-02-07 13:19:24', '2017-02-07 13:19:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-02-07 13:19:24', '2017-02-07 13:19:24', '', 0, 'http://localhost:8080/obsidian/?page_id=1795', 0, 'page', '', 0),
(1796, 1, '2017-02-07 13:19:24', '2017-02-07 13:19:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Contact', '', 'inherit', 'closed', 'closed', '', '1795-revision-v1', '', '', '2017-02-07 13:19:24', '2017-02-07 13:19:24', '', 1795, 'http://localhost:8080/obsidian/1795-revision-v1/', 0, 'revision', '', 0),
(1797, 1, '2017-02-07 13:19:34', '2017-02-07 13:19:34', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-02-07 13:19:34', '2017-02-07 13:19:34', '', 0, 'http://localhost:8080/obsidian/?page_id=1797', 0, 'page', '', 0),
(1798, 1, '2017-02-07 13:19:34', '2017-02-07 13:19:34', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '1797-revision-v1', '', '', '2017-02-07 13:19:34', '2017-02-07 13:19:34', '', 1797, 'http://localhost:8080/obsidian/1797-revision-v1/', 0, 'revision', '', 0),
(1799, 1, '2017-02-07 13:21:34', '2017-02-07 13:21:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1799', '', '', '2017-02-14 14:14:20', '2017-02-14 14:14:20', '', 0, 'http://localhost:8080/obsidian/?p=1799', 9, 'nav_menu_item', '', 0),
(1800, 1, '2017-02-07 13:21:35', '2017-02-07 13:21:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1800', '', '', '2017-02-14 14:14:20', '2017-02-14 14:14:20', '', 0, 'http://localhost:8080/obsidian/?p=1800', 11, 'nav_menu_item', '', 0),
(1801, 1, '2017-02-07 13:19:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-02-07 13:19:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/obsidian/?p=1801', 1, 'nav_menu_item', '', 0),
(1802, 1, '2017-02-07 13:21:35', '2017-02-07 13:21:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1802', '', '', '2017-02-14 14:14:20', '2017-02-14 14:14:20', '', 0, 'http://localhost:8080/obsidian/?p=1802', 10, 'nav_menu_item', '', 0),
(1804, 1, '2017-02-07 13:21:34', '2017-02-07 13:21:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1804', '', '', '2017-02-14 14:14:20', '2017-02-14 14:14:20', '', 1772, 'http://localhost:8080/obsidian/?p=1804', 7, 'nav_menu_item', '', 0),
(1805, 1, '2017-02-07 13:21:33', '2017-02-07 13:21:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1805', '', '', '2017-02-14 14:14:20', '2017-02-14 14:14:20', '', 1772, 'http://localhost:8080/obsidian/?p=1805', 6, 'nav_menu_item', '', 0),
(1807, 1, '2017-02-07 13:21:32', '2017-02-07 13:21:32', ' ', '', '', 'publish', 'closed', 'closed', '', '1807', '', '', '2017-02-14 14:14:19', '2017-02-14 14:14:19', '', 1783, 'http://localhost:8080/obsidian/?p=1807', 4, 'nav_menu_item', '', 0),
(1808, 1, '2017-02-07 13:21:32', '2017-02-07 13:21:32', ' ', '', '', 'publish', 'closed', 'closed', '', '1808', '', '', '2017-02-14 14:14:19', '2017-02-14 14:14:19', '', 1783, 'http://localhost:8080/obsidian/?p=1808', 3, 'nav_menu_item', '', 0),
(1809, 1, '2017-02-07 13:21:33', '2017-02-07 13:21:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1809', '', '', '2017-02-14 14:14:20', '2017-02-14 14:14:20', '', 1783, 'http://localhost:8080/obsidian/?p=1809', 5, 'nav_menu_item', '', 0),
(1810, 1, '2017-02-07 13:21:34', '2017-02-07 13:21:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1810', '', '', '2017-02-14 14:14:20', '2017-02-14 14:14:20', '', 1772, 'http://localhost:8080/obsidian/?p=1810', 8, 'nav_menu_item', '', 0),
(1811, 1, '2017-02-07 13:23:00', '2017-02-07 13:23:00', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2017-02-14 14:14:19', '2017-02-14 14:14:19', '', 0, 'http://localhost:8080/obsidian/?p=1811', 2, 'nav_menu_item', '', 0),
(1812, 1, '2017-02-07 13:24:12', '2017-02-07 13:24:12', '', 'Club', '', 'publish', 'closed', 'closed', '', 'club', '', '', '2017-02-14 14:14:19', '2017-02-14 14:14:19', '', 0, 'http://localhost:8080/obsidian/?p=1812', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1813, 1, '2017-02-07 13:24:43', '2017-02-07 13:24:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'First post', '', 'publish', 'open', 'open', '', 'first-post', '', '', '2017-02-07 13:24:43', '2017-02-07 13:24:43', '', 0, 'http://localhost:8080/obsidian/?p=1813', 0, 'post', '', 0),
(1814, 1, '2017-02-07 13:24:43', '2017-02-07 13:24:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'First post', '', 'inherit', 'closed', 'closed', '', '1813-revision-v1', '', '', '2017-02-07 13:24:43', '2017-02-07 13:24:43', '', 1813, 'http://localhost:8080/obsidian/1813-revision-v1/', 0, 'revision', '', 0),
(1815, 1, '2017-02-07 13:24:56', '2017-02-07 13:24:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Second post', '', 'publish', 'open', 'open', '', 'second-post', '', '', '2017-02-07 13:24:56', '2017-02-07 13:24:56', '', 0, 'http://localhost:8080/obsidian/?p=1815', 0, 'post', '', 0),
(1816, 1, '2017-02-07 13:24:56', '2017-02-07 13:24:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Second post', '', 'inherit', 'closed', 'closed', '', '1815-revision-v1', '', '', '2017-02-07 13:24:56', '2017-02-07 13:24:56', '', 1815, 'http://localhost:8080/obsidian/1815-revision-v1/', 0, 'revision', '', 0),
(1837, 1, '2017-02-07 18:20:22', '2017-02-07 18:20:22', 'Lorem ipsum dolor sit amet, mea veritus probatus facilisi id. Vocibus offendit et vel. Ea labore fastidii duo, oratio dissentiet cu pri. Iusto persequeris eu sea, platonem reformidans liberavisse eu duo. Pro eu inimicus petentium disputationi, cu ius ludus munere definitionem, ex malis voluptaria signiferumque eos.\r\n\r\nHas sumo justo suscipiantur ei, usu harum suscipiantur ex. Numquam fabellas quo te, vim ea mutat habemus, at ignota salutandi dissentiet vis. Eos ipsum rationibus et, solum menandri perpetua usu eu, enim tation pertinacia in ius. Mea altera antiopam elaboraret ea. An labore possim suscipit usu, oblique propriae eu vel.\r\n\r\nNe impetus aliquip mel. At sea accumsan platonem molestiae. Diceret ancillae no vel, eos quaeque patrioque repudiandae eu, te sit utamur denique voluptaria. Convenire reformidans mea ne, at his veri graeci. Purto augue ei qui, id mel apeirian efficiantur.\r\n\r\nQui an omittam ocurreret, quas aeque admodum ex usu. Vis ut autem splendide. Mea no impedit senserit, omnes corpora mediocrem vel id, prompta dolores adolescens te sit. Has tantas causae iisque ad, error audiam cu eum, delenit graecis id est.\r\n\r\nEssent nusquam pro et. An dico argumentum comprehensam vix. Scaevola verterem no usu, vix te aperiri detraxit sadipscing, an unum audiam legendos est. An nihil accusata cum, tacimates assueverit contentiones ad vis, ne pri feugiat hendrerit. No impetus torquatos incorrupte mei. Ferri ullum mucius has eu, iusto feugait suavitate id qui.', 'Amazing event of POP', '', 'publish', 'closed', 'closed', '', 'amazing-event-of-pop', '', '', '2017-02-07 18:20:22', '2017-02-07 18:20:22', '', 0, 'http://localhost:8080/obsidian/?post_type=products&#038;p=1837', 0, 'products', '', 0),
(1838, 1, '2017-02-07 18:20:15', '2017-02-07 18:20:15', '', 'world-goes-pop', '', 'inherit', 'open', 'closed', '', 'world-goes-pop', '', '', '2017-02-07 18:20:15', '2017-02-07 18:20:15', '', 1837, 'http://localhost:8080/obsidian/wp-content/uploads/2017/02/world-goes-pop.jpeg', 0, 'attachment', 'image/jpeg', 0),
(1839, 1, '2017-02-07 18:21:21', '2017-02-07 18:21:21', 'Lorem ipsum dolor sit amet, mea veritus probatus facilisi id. Vocibus offendit et vel. Ea labore fastidii duo, oratio dissentiet cu pri. Iusto persequeris eu sea, platonem reformidans liberavisse eu duo. Pro eu inimicus petentium disputationi, cu ius ludus munere definitionem, ex malis voluptaria signiferumque eos.\r\n\r\nHas sumo justo suscipiantur ei, usu harum suscipiantur ex. Numquam fabellas quo te, vim ea mutat habemus, at ignota salutandi dissentiet vis. Eos ipsum rationibus et, solum menandri perpetua usu eu, enim tation pertinacia in ius. Mea altera antiopam elaboraret ea. An labore possim suscipit usu, oblique propriae eu vel.\r\n\r\nNe impetus aliquip mel. At sea accumsan platonem molestiae. Diceret ancillae no vel, eos quaeque patrioque repudiandae eu, te sit utamur denique voluptaria. Convenire reformidans mea ne, at his veri graeci. Purto augue ei qui, id mel apeirian efficiantur.\r\n\r\nQui an omittam ocurreret, quas aeque admodum ex usu. Vis ut autem splendide. Mea no impedit senserit, omnes corpora mediocrem vel id, prompta dolores adolescens te sit. Has tantas causae iisque ad, error audiam cu eum, delenit graecis id est.\r\n\r\nEssent nusquam pro et. An dico argumentum comprehensam vix. Scaevola verterem no usu, vix te aperiri detraxit sadipscing, an unum audiam legendos est. An nihil accusata cum, tacimates assueverit contentiones ad vis, ne pri feugiat hendrerit. No impetus torquatos incorrupte mei. Ferri ullum mucius has eu, iusto feugait suavitate id qui.', 'Amazing POP event!', '', 'publish', 'closed', 'closed', '', 'amazing-pop-event', '', '', '2017-02-07 18:21:21', '2017-02-07 18:21:21', '', 0, 'http://localhost:8080/obsidian/?post_type=events&#038;p=1839', 0, 'events', '', 0),
(1841, 1, '2017-02-07 18:22:50', '2017-02-07 18:22:50', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2017-02-07 18:22:50', '2017-02-07 18:22:50', '', 0, 'http://localhost:8080/obsidian/?page_id=1841', 0, 'page', '', 0),
(1842, 1, '2017-02-07 18:22:50', '2017-02-07 18:22:50', '', 'Events', '', 'inherit', 'closed', 'closed', '', '1841-revision-v1', '', '', '2017-02-07 18:22:50', '2017-02-07 18:22:50', '', 1841, 'http://localhost:8080/obsidian/1841-revision-v1/', 0, 'revision', '', 0),
(1845, 1, '2017-02-14 13:36:53', '2017-02-14 13:36:53', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2017-02-14 13:36:53', '2017-02-14 13:36:53', '', 0, 'http://localhost:8080/obsidian/?page_id=1845', 0, 'page', '', 0),
(1846, 1, '2017-02-14 13:36:53', '2017-02-14 13:36:53', '', 'Pages', '', 'inherit', 'closed', 'closed', '', '1845-revision-v1', '', '', '2017-02-14 13:36:53', '2017-02-14 13:36:53', '', 1845, 'http://localhost:8080/obsidian/1845-revision-v1/', 0, 'revision', '', 0),
(1847, 1, '2017-02-14 13:56:21', '2017-02-14 13:56:21', 'Nunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Obsidian', '', 'inherit', 'closed', 'closed', '', '1776-revision-v1', '', '', '2017-02-14 13:56:21', '2017-02-14 13:56:21', '', 1776, 'http://localhost:8080/obsidian/1776-revision-v1/', 0, 'revision', '', 0),
(1848, 1, '2017-02-28 11:21:08', '2017-02-28 11:21:08', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-02-28 11:21:08', '2017-02-28 11:21:08', '', 0, 'http://localhost:8080/obsidian/cart/', 0, 'page', '', 0),
(1849, 1, '2017-02-28 11:21:08', '2017-02-28 11:21:08', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-02-28 11:21:08', '2017-02-28 11:21:08', '', 0, 'http://localhost:8080/obsidian/checkout/', 0, 'page', '', 0),
(1850, 1, '2017-02-28 11:21:09', '2017-02-28 11:21:09', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-02-28 11:21:09', '2017-02-28 11:21:09', '', 0, 'http://localhost:8080/obsidian/my-account/', 0, 'page', '', 0),
(1851, 1, '2017-02-28 11:25:04', '2017-02-28 11:25:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec posuere, est a accumsan iaculis, mi nunc aliquet dolor, quis finibus odio ligula nec est. Morbi facilisis vitae lorem aliquam finibus. Integer ligula mi, efficitur nec blandit nec, pharetra porttitor magna. Etiam fringilla laoreet iaculis. Ut ornare purus eget est euismod ullamcorper. Donec turpis nibh, interdum eget euismod sed, varius eu neque. Aliquam erat volutpat. Ut hendrerit odio ac aliquet condimentum.\r\n\r\nSuspendisse sit amet nulla pellentesque, tempor nibh non, ullamcorper leo. Nullam eget tempor neque, eu vehicula augue. Proin eu justo vel massa sodales bibendum at ut augue. Sed posuere elementum mattis. Morbi congue velit at viverra vehicula. Proin tempus pellentesque dui eget condimentum. Vivamus felis turpis, auctor nec orci dapibus, sodales fringilla diam. Aenean faucibus commodo tortor eget rhoncus. Sed egestas suscipit eleifend.', 'T-Shirt Staff Obsidian Black', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec posuere, est a accumsan iaculis, mi nunc aliquet dolor, quis finibus odio ligula nec est. Morbi facilisis vitae lorem aliquam finibus. Integer ligula mi, efficitur nec blandit nec, pharetra porttitor magna. Etiam fringilla laoreet iaculis. Ut ornare purus eget est euismod ullamcorper. Donec turpis nibh, interdum eget euismod sed, varius eu neque. Aliquam erat volutpat. Ut hendrerit odio ac aliquet condimentum.', 'publish', 'open', 'closed', '', 't-shirt-staff-obsidian-black', '', '', '2017-02-28 11:25:04', '2017-02-28 11:25:04', '', 0, 'http://localhost:8080/obsidian/?post_type=product&#038;p=1851', 0, 'product', '', 0),
(1852, 1, '2017-02-28 11:24:32', '2017-02-28 11:24:32', '', 'Staff_Back', '', 'inherit', 'open', 'closed', '', 'staff_back', '', '', '2017-02-28 11:24:32', '2017-02-28 11:24:32', '', 1851, 'http://localhost:8080/obsidian/wp-content/uploads/2017/02/Staff_Back.jpg', 0, 'attachment', 'image/jpeg', 0),
(1853, 1, '2017-02-28 11:24:44', '2017-02-28 11:24:44', '', 'Staff_Front', '', 'inherit', 'open', 'closed', '', 'staff_front', '', '', '2017-02-28 11:24:44', '2017-02-28 11:24:44', '', 1851, 'http://localhost:8080/obsidian/wp-content/uploads/2017/02/Staff_Front.jpg', 0, 'attachment', 'image/jpeg', 0),
(1854, 1, '2017-02-28 11:29:00', '2017-02-28 11:29:00', '', 'Order &ndash; February 28, 2017 @ 11:29 AM', '', 'wc-completed', 'closed', 'closed', 'order_58b55f1576803', 'order-feb-28-2017-1129-am', '', '', '2017-02-28 11:31:03', '2017-02-28 11:31:03', '', 0, 'http://localhost:8080/obsidian/?post_type=shop_order&#038;p=1854', 0, 'shop_order', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(176, 'All Pages', 'all-pages', 0),
(177, 'Short', 'short', 0),
(178, 'All Pages Flat', 'all-pages-flat', 0),
(179, 'Testing Menu', 'testing-menu', 0),
(180, 'Empty Menu', 'empty-menu', 0),
(181, 'Gallery', 'post-format-gallery', 0),
(182, 'Aside', 'post-format-aside', 0),
(183, 'Chat', 'post-format-chat', 0),
(184, 'Link', 'post-format-link', 0),
(185, 'Image', 'post-format-image', 0),
(186, 'Quote', 'post-format-quote', 0),
(187, 'Status', 'post-format-status', 0),
(188, 'Video', 'post-format-video', 0),
(189, 'Audio', 'post-format-audio', 0),
(190, 'simple', 'simple', 0),
(191, 'grouped', 'grouped', 0),
(192, 'variable', 'variable', 0),
(193, 'external', 'external', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1046, 179, 0),
(1047, 179, 0),
(1049, 179, 0),
(1051, 179, 0),
(1052, 179, 0),
(1053, 179, 0),
(1054, 179, 0),
(1055, 179, 0),
(1056, 179, 0),
(1057, 179, 0),
(1058, 179, 0),
(1059, 179, 0),
(1060, 179, 0),
(1061, 179, 0),
(1062, 179, 0),
(1063, 179, 0),
(1064, 179, 0),
(1065, 179, 0),
(1066, 179, 0),
(1629, 177, 0),
(1799, 176, 0),
(1800, 176, 0),
(1802, 176, 0),
(1804, 176, 0),
(1805, 176, 0),
(1807, 176, 0),
(1808, 176, 0),
(1809, 176, 0),
(1810, 176, 0),
(1811, 176, 0),
(1812, 176, 0),
(1813, 1, 0),
(1815, 1, 0),
(1851, 190, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(176, 176, 'nav_menu', '', 0, 11),
(177, 177, 'nav_menu', '', 0, 1),
(178, 178, 'nav_menu', '', 0, 0),
(179, 179, 'nav_menu', '', 0, 19),
(180, 180, 'nav_menu', '', 0, 0),
(181, 181, 'post_format', '', 0, 0),
(182, 182, 'post_format', '', 0, 0),
(183, 183, 'post_format', '', 0, 0),
(184, 184, 'post_format', '', 0, 0),
(185, 185, 'post_format', '', 0, 0),
(186, 186, 'post_format', '', 0, 0),
(187, 187, 'post_format', '', 0, 0),
(188, 188, 'post_format', '', 0, 0),
(189, 189, 'post_format', '', 0, 0),
(190, 190, 'product_type', '', 0, 1),
(191, 191, 'product_type', '', 0, 0),
(192, 192, 'product_type', '', 0, 0),
(193, 193, 'product_type', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Obsidian'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:1:{s:64:"ef568499c3d896cecf5a214661477886d11557d75f90d2b5bd24d4c471e4820b";a:4:{s:10:"expiration";i:1488453483;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1488280683;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '1844'),
(69, 1, 'wp_user-settings', 'editor=tinymce&hidetb=1&posts_list_mode=list&editor_plain_text_paste_warning=2&libraryContent=browse'),
(70, 1, 'wp_user-settings-time', '1486491618'),
(71, 1, 'nav_menu_recently_edited', '176'),
(72, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(73, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(74, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:19:"dashboard_right_now";s:4:"side";s:58:"dashboard_activity,dashboard_primary,dashboard_quick_press";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(75, 1, 'closedpostboxes_dashboard', 'a:3:{i:0;s:17:"dashboard_primary";i:1;s:18:"dashboard_activity";i:2;s:21:"dashboard_quick_press";}'),
(76, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(77, 1, 'edit_post_per_page', '10'),
(78, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(80, 1, 'billing_first_name', 'Adrian'),
(81, 1, 'billing_last_name', 'Camacho'),
(82, 1, 'billing_company', ''),
(83, 1, 'billing_email', 'adrian.vcch@gmail.com'),
(84, 1, 'billing_phone', '07774001976'),
(85, 1, 'billing_country', 'GB'),
(86, 1, 'billing_address_1', 'Lothian Road 163/1'),
(87, 1, 'billing_address_2', ''),
(88, 1, 'billing_city', 'Edinburgh'),
(89, 1, 'billing_state', 'Edinburgh'),
(90, 1, 'billing_postcode', 'EH3 9AA'),
(91, 1, 'paying_customer', '1'),
(94, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"ff1418e8cc993fe8abcfe3ce2003e5c5";a:9:{s:10:"product_id";i:1851;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:35;s:8:"line_tax";i:0;s:13:"line_subtotal";i:35;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BuLjEdzPQayB6Vs9u61ieBjAUWz7un.', 'admin', 'adrian.vcch@gmail.com', '', '2017-01-24 13:09:13', '', 0, 'Obsidian');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_qty', '1'),
(2, 1, '_tax_class', ''),
(3, 1, '_product_id', '1851'),
(4, 1, '_variation_id', '0'),
(5, 1, '_line_subtotal', '35'),
(6, 1, '_line_total', '35'),
(7, 1, '_line_subtotal_tax', '0'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'T-Shirt Staff Obsidian Black', 'line_item', 1854);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(13, '1', 'a:21:{s:21:"removed_cart_contents";s:6:"a:0:{}";s:14:"shipping_total";N;s:21:"chosen_payment_method";s:3:"cod";s:8:"customer";s:467:"a:14:{s:8:"postcode";s:7:"EH3 9AA";s:4:"city";s:9:"Edinburgh";s:9:"address_1";s:18:"Lothian Road 163/1";s:9:"address_2";s:0:"";s:5:"state";s:9:"Edinburgh";s:7:"country";s:2:"GB";s:17:"shipping_postcode";s:7:"EH3 9AA";s:13:"shipping_city";s:9:"Edinburgh";s:18:"shipping_address_1";s:18:"Lothian Road 163/1";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:9:"Edinburgh";s:16:"shipping_country";s:2:"GB";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;}";s:10:"wc_notices";N;s:4:"cart";s:305:"a:1:{s:32:"ff1418e8cc993fe8abcfe3ce2003e5c5";a:9:{s:10:"product_id";i:1851;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:35;s:8:"line_tax";i:0;s:13:"line_subtotal";i:35;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:19:"cart_contents_total";d:35;s:5:"total";d:35;s:8:"subtotal";i:35;s:15:"subtotal_ex_tax";i:35;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1488454097),
(16, '31779b149feeaf0e5029c45998ba9a8e', 'a:20:{s:4:"cart";s:305:"a:1:{s:32:"ff1418e8cc993fe8abcfe3ce2003e5c5";a:9:{s:10:"product_id";i:1851;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:35;s:8:"line_tax";i:0;s:13:"line_subtotal";i:35;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:35;s:5:"total";d:35;s:8:"subtotal";i:35;s:15:"subtotal_ex_tax";i:35;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:3:"cod";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"GB";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"GB";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;}";}', 1488454448);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`(191)),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1270;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1855;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
