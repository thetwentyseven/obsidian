-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2017 at 04:05 PM
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
-- Table structure for table `wp_newsletter`
--

CREATE TABLE `wp_newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `surname` varchar(100) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT 'n',
  `status` char(1) NOT NULL DEFAULT 'S',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(50) NOT NULL DEFAULT '',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(4) NOT NULL DEFAULT '',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) NOT NULL DEFAULT '',
  `profile_2` varchar(255) NOT NULL DEFAULT '',
  `profile_3` varchar(255) NOT NULL DEFAULT '',
  `profile_4` varchar(255) NOT NULL DEFAULT '',
  `profile_5` varchar(255) NOT NULL DEFAULT '',
  `profile_6` varchar(255) NOT NULL DEFAULT '',
  `profile_7` varchar(255) NOT NULL DEFAULT '',
  `profile_8` varchar(255) NOT NULL DEFAULT '',
  `profile_9` varchar(255) NOT NULL DEFAULT '',
  `profile_10` varchar(255) NOT NULL DEFAULT '',
  `profile_11` varchar(255) NOT NULL DEFAULT '',
  `profile_12` varchar(255) NOT NULL DEFAULT '',
  `profile_13` varchar(255) NOT NULL DEFAULT '',
  `profile_14` varchar(255) NOT NULL DEFAULT '',
  `profile_15` varchar(255) NOT NULL DEFAULT '',
  `profile_16` varchar(255) NOT NULL DEFAULT '',
  `profile_17` varchar(255) NOT NULL DEFAULT '',
  `profile_18` varchar(255) NOT NULL DEFAULT '',
  `profile_19` varchar(255) NOT NULL DEFAULT '',
  `profile_20` varchar(255) NOT NULL DEFAULT '',
  `referrer` varchar(50) NOT NULL DEFAULT '',
  `http_referer` varchar(255) NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0',
  `flow` tinyint(4) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_emails`
--

CREATE TABLE `wp_newsletter_emails` (
  `id` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `message_text` longtext COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `send_on` int(11) NOT NULL DEFAULT '0',
  `track` tinyint(4) NOT NULL DEFAULT '0',
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_ci,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `open_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `click_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_sent`
--

CREATE TABLE `wp_newsletter_sent` (
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `error` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_stats`
--

CREATE TABLE `wp_newsletter_stats` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` int(11) NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) NOT NULL DEFAULT '',
  `anchor` varchar(200) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(4) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(29, 'rewrite_rules', 'a:194:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"events/?$";s:26:"index.php?post_type=events";s:39:"events/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=events&feed=$matches[1]";s:34:"events/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=events&feed=$matches[1]";s:26:"events/page/([0-9]{1,})/?$";s:44:"index.php?post_type=events&paged=$matches[1]";s:5:"dj/?$";s:22:"index.php?post_type=dj";s:35:"dj/feed/(feed|rdf|rss|rss2|atom)/?$";s:39:"index.php?post_type=dj&feed=$matches[1]";s:30:"dj/(feed|rdf|rss|rss2|atom)/?$";s:39:"index.php?post_type=dj&feed=$matches[1]";s:22:"dj/page/([0-9]{1,})/?$";s:40:"index.php?post_type=dj&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"events/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"events/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"events/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"events/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"events/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"events/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"events/(.+?)/embed/?$";s:39:"index.php?events=$matches[1]&embed=true";s:25:"events/(.+?)/trackback/?$";s:33:"index.php?events=$matches[1]&tb=1";s:45:"events/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?events=$matches[1]&feed=$matches[2]";s:40:"events/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?events=$matches[1]&feed=$matches[2]";s:33:"events/(.+?)/page/?([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&paged=$matches[2]";s:40:"events/(.+?)/comment-page-([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&cpage=$matches[2]";s:30:"events/(.+?)/wc-api(/(.*))?/?$";s:47:"index.php?events=$matches[1]&wc-api=$matches[3]";s:36:"events/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:47:"events/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:29:"events/(.+?)(?:/([0-9]+))?/?$";s:45:"index.php?events=$matches[1]&page=$matches[2]";s:28:"dj/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"dj/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"dj/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"dj/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"dj/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"dj/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:17:"dj/(.+?)/embed/?$";s:35:"index.php?dj=$matches[1]&embed=true";s:21:"dj/(.+?)/trackback/?$";s:29:"index.php?dj=$matches[1]&tb=1";s:41:"dj/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?dj=$matches[1]&feed=$matches[2]";s:36:"dj/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?dj=$matches[1]&feed=$matches[2]";s:29:"dj/(.+?)/page/?([0-9]{1,})/?$";s:42:"index.php?dj=$matches[1]&paged=$matches[2]";s:36:"dj/(.+?)/comment-page-([0-9]{1,})/?$";s:42:"index.php?dj=$matches[1]&cpage=$matches[2]";s:26:"dj/(.+?)/wc-api(/(.*))?/?$";s:43:"index.php?dj=$matches[1]&wc-api=$matches[3]";s:32:"dj/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:43:"dj/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:25:"dj/(.+?)(?:/([0-9]+))?/?$";s:41:"index.php?dj=$matches[1]&page=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:41:"index.php?&page_id=1776&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:31:"query-monitor/query-monitor.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:23:"ml-slider/ml-slider.php";i:4;s:21:"newsletter/plugin.php";i:5;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:6;s:27:"woocommerce/woocommerce.php";i:7;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:66:"C:\\xampp\\htdocs\\obsidian/wp-content/themes/twentysixteen/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'obsidian', 'yes'),
(41, 'stylesheet', 'obsidian', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
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
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:138:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"view_query_monitor";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:18:"wysija_newsletters";b:1;s:18:"wysija_subscribers";b:1;s:13:"wysija_config";b:1;s:16:"wysija_theme_tab";b:1;s:16:"wysija_style_tab";b:1;s:22:"wysija_stats_dashboard";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:7:{s:18:"orphaned_widgets_2";a:1:{i:0;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:14:"footer_right_1";a:1:{i:0;s:25:"newsletterwidgetminimal-3";}s:14:"events_right_1";a:1:{i:0;s:10:"nav_menu-2";}s:12:"shop_right_1";a:3:{i:0;s:28:"woocommerce_product_search-2";i:1;s:25:"woocommerce_widget_cart-2";i:2;s:26:"woocommerce_price_filter-2";}s:12:"blog_right_1";a:2:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:13:"Coming Events";s:8:"nav_menu";i:225;}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:10:{i:1491833112;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1491833350;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1491868800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491871719;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491872956;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491914919;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491916167;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491916477;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1493683200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1485263521;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1491829770;s:7:"checked";a:2:{s:8:"obsidian";s:3:"1.0";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(136, '_transient_twentyseventeen_categories', '1', 'yes'),
(137, 'current_theme', 'Obsidian Theme', 'yes'),
(138, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:176;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1488284947;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:25:"woocommerce_widget_cart-2";i:1;s:38:"woocommerce_recently_viewed_products-2";i:2;s:26:"woocommerce_price_filter-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:1:{i:0;s:6:"meta-2";}}}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(150, 'recently_activated', 'a:1:{s:28:"owl-carousel/owlcarousel.php";i:1491825524;}', 'yes'),
(158, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1491829759;s:15:"version_checked";s:5:"4.7.3";s:12:"translations";a:0:{}}', 'no'),
(159, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"adrian.vcch@gmail.com";s:7:"version";s:5:"4.7.2";s:9:"timestamp";i:1485957477;}', 'no'),
(160, '_site_transient_timeout_browser_3724cf524ce46cd3376f6aebb4c04837', '1486563702', 'no'),
(161, '_site_transient_browser_3724cf524ce46cd3376f6aebb4c04837', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(201, '_site_transient_timeout_popular_importers_401cc84064394c70ededf2b14c3dcf82', '1486211669', 'no'),
(202, '_site_transient_popular_importers_401cc84064394c70ededf2b14c3dcf82', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:54:"Import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:71:"Convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:10:"wp-cat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:46:"Import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:62:"Import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:28:"Import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:30:"Import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:53:"Import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:96:"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'no'),
(210, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:2:{i:0;i:176;i:1;i:225;}}', 'yes'),
(213, '_site_transient_timeout_available_translations', '1486050868', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(214, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:38:06";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:08";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-01 08:27:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:38";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:07";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:29";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:25";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:59";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.7.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:17";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:21";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 13:41:24";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:51:11";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:30";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 00:40:28";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:07";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:28";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:05";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:56";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:31";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:33";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:24";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:25";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:51";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:32";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:30";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:27";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:07";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:45";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:41";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:13";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:27";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 15:18:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:22";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:17";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:24";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:53";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 07:09:15";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:37";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:49";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.14";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.14/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:31";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:31";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:13";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:48";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:57";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:18";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.14";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.14/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:15";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:53";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:11";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:09:16";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:00";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:04";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:49";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:03";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:55";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:59";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 19:24:08";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:36:52";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:02";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:35";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:55:14";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:55:10";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(378, 'page_for_posts', '1774', 'yes'),
(392, '_site_transient_timeout_wporg_theme_feature_list', '1486484792', 'no'),
(393, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(421, 'theme_mods_obsidian', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:176;s:11:"header-menu";i:176;}s:18:"custom_css_post_id";i:-1;s:13:"obsidian_logo";s:86:"http://localhost:8080/obsidian/wp-content/uploads/2017/03/Logo_BlackBG_Clean_300px.png";}', 'yes'),
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
(453, 'woocommerce_enable_review_rating', 'no', 'yes'),
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
(464, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"400";s:6:"height";s:3:"400";s:4:"crop";i:1;}', 'yes'),
(465, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"50";s:6:"height";s:2:"50";s:4:"crop";i:1;}', 'yes'),
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
(481, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(482, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(483, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(484, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(485, 'woocommerce_tax_display_cart', 'excl', 'no'),
(486, 'woocommerce_price_display_suffix', '', 'yes'),
(487, 'woocommerce_tax_total_display', 'itemized', 'no'),
(488, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(489, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(490, 'woocommerce_ship_to_destination', 'billing', 'no'),
(491, 'woocommerce_enable_coupons', 'no', 'yes'),
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
(532, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(534, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(535, 'widget_woocommerce_widget_cart', 'a:2:{i:2;a:2:{s:5:"title";s:4:"Cart";s:13:"hide_if_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(536, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(537, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(538, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:15:"Filter by price";}s:12:"_multiwidget";i:1;}', 'yes'),
(539, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(540, 'widget_woocommerce_product_search', 'a:2:{i:2;a:1:{s:5:"title";s:6:"Search";}s:12:"_multiwidget";i:1;}', 'yes'),
(541, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(542, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(543, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(544, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(545, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(546, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(550, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(558, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(559, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(560, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:21:"adrian.vcch@gmail.com";}', 'yes'),
(561, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(562, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(563, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(564, 'woocommerce_allow_tracking', 'no', 'yes'),
(566, '_transient_shipping-transient-version', '1488280915', 'yes'),
(569, 'wc_ppec_version', '1.2.0', 'yes'),
(571, '_transient_product_query-transient-version', '1491478971', 'yes'),
(572, '_transient_product-transient-version', '1491478971', 'yes'),
(574, 'product_cat_children', 'a:0:{}', 'yes'),
(579, '_transient_orders-transient-version', '1488281467', 'yes'),
(582, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:0;s:3:"all";i:0;s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(629, 'widget_wysija', 'a:2:{i:2;a:2:{s:5:"title";s:27:"Subscribe to our Newsletter";s:4:"form";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(630, 'wysija_post_type_updated', '1488818209', 'yes'),
(631, 'wysija_post_type_created', '1488818209', 'yes'),
(632, 'installation_step', '16', 'yes'),
(633, 'wysija', 'YToxODp7czo5OiJmcm9tX25hbWUiO3M6NToiYWRtaW4iO3M6MTI6InJlcGx5dG9fbmFtZSI7czo1OiJhZG1pbiI7czoxNToiZW1haWxzX25vdGlmaWVkIjtzOjIxOiJhZHJpYW4udmNjaEBnbWFpbC5jb20iO3M6MTA6ImZyb21fZW1haWwiO3M6MTQ6ImluZm9AbG9jYWxob3N0IjtzOjEzOiJyZXBseXRvX2VtYWlsIjtzOjE0OiJpbmZvQGxvY2FsaG9zdCI7czoxNToiZGVmYXVsdF9saXN0X2lkIjtpOjE7czoxNzoidG90YWxfc3Vic2NyaWJlcnMiO3M6MToiMSI7czoxNjoiaW1wb3J0d3BfbGlzdF9pZCI7aToyO3M6MTg6ImNvbmZpcm1fZW1haWxfbGluayI7aToxODYyO3M6MTI6InVwbG9hZGZvbGRlciI7czo1MToiQzpceGFtcHBcaHRkb2NzXG9ic2lkaWFuL3dwLWNvbnRlbnQvdXBsb2Fkc1x3eXNpamFcIjtzOjk6InVwbG9hZHVybCI7czo1NzoiaHR0cDovL2xvY2FsaG9zdDo4MDgwL29ic2lkaWFuL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvIjtzOjE2OiJjb25maXJtX2VtYWlsX2lkIjtpOjI7czo5OiJpbnN0YWxsZWQiO2I6MTtzOjIwOiJtYW5hZ2Vfc3Vic2NyaXB0aW9ucyI7YjoxO3M6MTQ6Imluc3RhbGxlZF90aW1lIjtpOjE0ODg4MTgyMjE7czoxNzoid3lzaWphX2RiX3ZlcnNpb24iO3M6NToiMi43LjgiO3M6MTE6ImRraW1fZG9tYWluIjtzOjE0OiJsb2NhbGhvc3Q6ODA4MCI7czoxNjoid3lzaWphX3doYXRzX25ldyI7czo1OiIyLjcuOCI7fQ==', 'yes'),
(634, 'wysija_reinstall', '0', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(635, 'wysija_schedules', 'a:5:{s:5:"queue";a:3:{s:13:"next_schedule";i:1488821831;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:6:"bounce";a:3:{s:13:"next_schedule";i:1488904631;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:5:"daily";a:3:{s:13:"next_schedule";i:1488904631;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:6:"weekly";a:3:{s:13:"next_schedule";i:1489423031;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:7:"monthly";a:3:{s:13:"next_schedule";i:1491237431;s:13:"prev_schedule";i:0;s:7:"running";b:0;}}', 'yes'),
(636, 'wysija_queries', '', 'no'),
(637, 'wysija_queries_errors', '', 'no'),
(638, 'wysija_msg', '', 'no'),
(641, 'newsletter_logger_secret', 'c2e2be23', 'yes'),
(642, 'newsletter_dismissed', 'a:1:{s:6:"wpmail";i:1;}', 'yes'),
(643, 'newsletter_main_first_install_time', '1488818615', 'no'),
(644, 'newsletter_main', 'a:8:{s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:20:"newsletter@localhost";s:11:"sender_name";s:8:"Obsidian";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:9:"phpmailer";i:0;s:7:"api_key";s:10:"1afd71d059";}', 'yes'),
(645, 'newsletter_extension_versions', 'a:0:{}', 'no'),
(646, 'newsletter_main_smtp', 'a:7:{s:7:"enabled";i:0;s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"port";i:25;s:6:"secure";s:0:"";s:12:"ssl_insecure";i:0;}', 'yes'),
(647, 'newsletter_main_version', '1.2.9', 'yes'),
(648, 'newsletter_subscription_first_install_time', '1488818628', 'no'),
(649, 'newsletter', 'a:19:{s:14:"noconfirmation";i:0;s:12:"profile_text";s:301:"<p>Change your subscription preferences to get what you are most interested in.</p>\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    </p>\n    {profile_form}\n    <p>To cancel your subscription, <a href=''{unsubscription_confirm_url}''>click here</a>.</p>";s:21:"profile_email_changed";s:123:"Your email has been changed, an activation email has been sent. Please follow the instructions to activate the new address.";s:13:"profile_error";s:147:"Your email is not valid or already in use by another subscriber or another generic error has been found. Check your data or contact the site owner.";s:10:"error_text";s:173:"<p>This subscription can''t be completed, sorry. The email address is blocked or already subscribed. You should contact the owner to unlock that email address. Thank you.</p>";s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:263:"<p>You have successfully subscribed to the newsletter. You''ll\nreceive a confirmation email in a few minutes. Please follow the\nlink to confirm your subscription. If the email takes\nmore than 15 minutes to appear in your mailbox, please check\nyour spam folder.</p>";s:20:"confirmation_subject";s:53:"Please confirm subscription - {blog_title} newsletter";s:21:"confirmation_tracking";s:0:"";s:20:"confirmation_message";s:424:"<p>Hi {name},</p>\n<p>A newsletter subscription request for this email address was\nreceived. Please confirm it by <a href="{subscription_confirm_url}"><strong>clicking here</strong></a>. If you cannot\nclick the link, please use the following link:</p>\n\n<p>{subscription_confirm_url}</p>\n\n<p>If you did not make this subscription request, just ignore this\nmessage.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>";s:14:"confirmed_text";s:62:"<p>Your subscription has been confirmed! Thank you {name}!</p>";s:17:"confirmed_subject";s:22:"Welcome aboard, {name}";s:17:"confirmed_message";s:277:"<p>This message confirms your subscription to the {blog_title} newsletter.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>\n<p>To unsubscribe, <a href=''{unsubscription_url}''>click here</a>.  To change subscriber options,\n<a href=''{profile_url}''>click here</a>.</p>";s:18:"confirmed_tracking";s:0:"";s:19:"unsubscription_text";s:111:"<p>Please confirm that you want to unsubscribe by <a href=''{unsubscription_confirm_url}''>clicking here</a>.</p>";s:25:"unsubscription_error_text";s:118:"<p>The subscriber was not found, it probably has already been removed. No further actions are required. Thank you.</p>";s:17:"unsubscribed_text";s:53:"<p>Your subscription has been deleted. Thank you.</p>";s:20:"unsubscribed_subject";s:8:"Goodbye!";s:20:"unsubscribed_message";s:195:"<p>This message confirms that you have unsubscribed from the {blog_title} newsletter.</p>\n<p>You''re welcome to sign up again anytime.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>";}', 'yes'),
(650, 'newsletter_profile', 'a:202:{s:5:"email";s:5:"Email";s:11:"email_error";s:24:"The email is not correct";s:4:"name";s:4:"Name";s:10:"name_error";s:23:"The name is not correct";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:28:"The last name is not correct";s:14:"surname_status";i:0;s:3:"sex";s:3:"I''m";s:7:"privacy";s:51:"Subscribing I accept the privacy rules of this site";s:13:"privacy_error";s:37:"You must accept the privacy statement";s:14:"privacy_status";i:0;s:11:"privacy_url";s:0:"";s:9:"subscribe";s:9:"Subscribe";s:4:"save";s:4:"Save";s:12:"title_female";s:4:"Mrs.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:4:"None";s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;s:16:"profile_1_status";i:0;s:9:"profile_1";s:0:"";s:14:"profile_1_type";s:4:"text";s:21:"profile_1_placeholder";s:0:"";s:15:"profile_1_rules";i:0;s:17:"profile_1_options";s:0:"";s:16:"profile_2_status";i:0;s:9:"profile_2";s:0:"";s:14:"profile_2_type";s:4:"text";s:21:"profile_2_placeholder";s:0:"";s:15:"profile_2_rules";i:0;s:17:"profile_2_options";s:0:"";s:16:"profile_3_status";i:0;s:9:"profile_3";s:0:"";s:14:"profile_3_type";s:4:"text";s:21:"profile_3_placeholder";s:0:"";s:15:"profile_3_rules";i:0;s:17:"profile_3_options";s:0:"";s:16:"profile_4_status";i:0;s:9:"profile_4";s:0:"";s:14:"profile_4_type";s:4:"text";s:21:"profile_4_placeholder";s:0:"";s:15:"profile_4_rules";i:0;s:17:"profile_4_options";s:0:"";s:16:"profile_5_status";i:0;s:9:"profile_5";s:0:"";s:14:"profile_5_type";s:4:"text";s:21:"profile_5_placeholder";s:0:"";s:15:"profile_5_rules";i:0;s:17:"profile_5_options";s:0:"";s:16:"profile_6_status";i:0;s:9:"profile_6";s:0:"";s:14:"profile_6_type";s:4:"text";s:21:"profile_6_placeholder";s:0:"";s:15:"profile_6_rules";i:0;s:17:"profile_6_options";s:0:"";s:16:"profile_7_status";i:0;s:9:"profile_7";s:0:"";s:14:"profile_7_type";s:4:"text";s:21:"profile_7_placeholder";s:0:"";s:15:"profile_7_rules";i:0;s:17:"profile_7_options";s:0:"";s:16:"profile_8_status";i:0;s:9:"profile_8";s:0:"";s:14:"profile_8_type";s:4:"text";s:21:"profile_8_placeholder";s:0:"";s:15:"profile_8_rules";i:0;s:17:"profile_8_options";s:0:"";s:16:"profile_9_status";i:0;s:9:"profile_9";s:0:"";s:14:"profile_9_type";s:4:"text";s:21:"profile_9_placeholder";s:0:"";s:15:"profile_9_rules";i:0;s:17:"profile_9_options";s:0:"";s:17:"profile_10_status";i:0;s:10:"profile_10";s:0:"";s:15:"profile_10_type";s:4:"text";s:22:"profile_10_placeholder";s:0:"";s:16:"profile_10_rules";i:0;s:18:"profile_10_options";s:0:"";s:17:"profile_11_status";i:0;s:10:"profile_11";s:0:"";s:15:"profile_11_type";s:4:"text";s:22:"profile_11_placeholder";s:0:"";s:16:"profile_11_rules";i:0;s:18:"profile_11_options";s:0:"";s:17:"profile_12_status";i:0;s:10:"profile_12";s:0:"";s:15:"profile_12_type";s:4:"text";s:22:"profile_12_placeholder";s:0:"";s:16:"profile_12_rules";i:0;s:18:"profile_12_options";s:0:"";s:17:"profile_13_status";i:0;s:10:"profile_13";s:0:"";s:15:"profile_13_type";s:4:"text";s:22:"profile_13_placeholder";s:0:"";s:16:"profile_13_rules";i:0;s:18:"profile_13_options";s:0:"";s:17:"profile_14_status";i:0;s:10:"profile_14";s:0:"";s:15:"profile_14_type";s:4:"text";s:22:"profile_14_placeholder";s:0:"";s:16:"profile_14_rules";i:0;s:18:"profile_14_options";s:0:"";s:17:"profile_15_status";i:0;s:10:"profile_15";s:0:"";s:15:"profile_15_type";s:4:"text";s:22:"profile_15_placeholder";s:0:"";s:16:"profile_15_rules";i:0;s:18:"profile_15_options";s:0:"";s:17:"profile_16_status";i:0;s:10:"profile_16";s:0:"";s:15:"profile_16_type";s:4:"text";s:22:"profile_16_placeholder";s:0:"";s:16:"profile_16_rules";i:0;s:18:"profile_16_options";s:0:"";s:17:"profile_17_status";i:0;s:10:"profile_17";s:0:"";s:15:"profile_17_type";s:4:"text";s:22:"profile_17_placeholder";s:0:"";s:16:"profile_17_rules";i:0;s:18:"profile_17_options";s:0:"";s:17:"profile_18_status";i:0;s:10:"profile_18";s:0:"";s:15:"profile_18_type";s:4:"text";s:22:"profile_18_placeholder";s:0:"";s:16:"profile_18_rules";i:0;s:18:"profile_18_options";s:0:"";s:17:"profile_19_status";i:0;s:10:"profile_19";s:0:"";s:15:"profile_19_type";s:4:"text";s:22:"profile_19_placeholder";s:0:"";s:16:"profile_19_rules";i:0;s:18:"profile_19_options";s:0:"";s:17:"profile_20_status";i:0;s:10:"profile_20";s:0:"";s:15:"profile_20_type";s:4:"text";s:22:"profile_20_placeholder";s:0:"";s:16:"profile_20_rules";i:0;s:18:"profile_20_options";s:0:"";}', 'yes'),
(651, 'newsletter_subscription_lists', 'a:60:{s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;}', 'yes'),
(652, 'newsletter_subscription_template', 'a:2:{s:7:"enabled";i:0;s:8:"template";s:1846:"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type="text/css" media="all">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n        </style>\n    </head>\n    \n    <!-- KEEP THE TAMPLE SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style="margin: 0;">\n        <!-- Top title with dark background #333, font color #fff, font size 32px -->\n        <table style="background-color: #333; width: 100%; color: #fff; font-size: 32px">\n            <tr>\n                <td style="padding: 25px; text-align: center">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style="background-color: #eee; width: 100%;">\n            <tr>\n                <td align="center"  style="padding: 15px;">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style="background-color: #fff; max-width: 600px; width: 100%; border: 1px solid #ddd;">\n                        <tr>\n                            <td style="padding: 15px; font-size: 16px; font-family: sans-serif">\n                                <!-- The {message} tag is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n                                \n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>";}', 'no'),
(653, 'newsletter_subscription_version', '2.0.3', 'yes'),
(654, 'newsletter_emails_first_install_time', '1488818628', 'no'),
(655, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(656, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(657, 'newsletter_emails_version', '1.1.5', 'yes'),
(658, 'newsletter_users_first_install_time', '1488818655', 'no'),
(659, 'newsletter_users', 'a:0:{}', 'yes'),
(660, 'newsletter_users_version', '1.0.6', 'yes'),
(663, 'newsletter_statistics_first_install_time', '1488818672', 'no'),
(664, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"7549e373a8f8aab6f1758f350da713a9";}', 'yes'),
(668, 'newsletter_statistics_version', '1.1.6', 'yes'),
(669, 'newsletter_lock_first_install_time', '1488818680', 'no'),
(670, 'newsletter_lock', 'a:4:{s:3:"ids";s:0:"";s:3:"url";s:0:"";s:7:"message";s:89:"<p>Subscribe to our newsletter and get access to the full article.</p>[subscription_form]";s:7:"enabled";i:0;}', 'yes'),
(671, 'newsletter_lock_version', '1.0.3', 'yes'),
(672, 'newsletter_wp_first_install_time', '1488818680', 'no'),
(673, 'newsletter_wp', 'a:5:{s:15:"subscribe_label";s:24:"Subscribe our newsletter";s:9:"subscribe";i:0;s:12:"confirmation";i:0;s:7:"welcome";i:0;s:6:"delete";i:0;}', 'yes'),
(674, 'newsletter_wp_version', '1.0.1', 'yes'),
(675, 'widget_newsletterwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(676, 'widget_newsletterwidgetminimal', 'a:2:{i:3;a:2:{s:5:"title";s:0:"";s:6:"button";s:6:"Submit";}s:12:"_multiwidget";i:1;}', 'yes'),
(678, 'newsletter_diagnostic_cron_calls', 'a:100:{i:0;i:1491747708;i:1;i:1491747922;i:2;i:1491748217;i:3;i:1491748585;i:4;i:1491748827;i:5;i:1491749123;i:6;i:1491749491;i:7;i:1491749644;i:8;i:1491749713;i:9;i:1491750039;i:10;i:1491750345;i:11;i:1491750663;i:12;i:1491750957;i:13;i:1491751247;i:14;i:1491751550;i:15;i:1491751814;i:16;i:1491752118;i:17;i:1491752451;i:18;i:1491752720;i:19;i:1491753015;i:20;i:1491753249;i:21;i:1491753318;i:22;i:1491753318;i:23;i:1491753628;i:24;i:1491753917;i:25;i:1491754245;i:26;i:1491754517;i:27;i:1491754821;i:28;i:1491755123;i:29;i:1491755424;i:30;i:1491755713;i:31;i:1491756072;i:32;i:1491756423;i:33;i:1491756701;i:34;i:1491756869;i:35;i:1491756989;i:36;i:1491757321;i:37;i:1491757563;i:38;i:1491757926;i:39;i:1491758122;i:40;i:1491758481;i:41;i:1491758784;i:42;i:1491759016;i:43;i:1491759506;i:44;i:1491759616;i:45;i:1491759963;i:46;i:1491760325;i:47;i:1491762810;i:48;i:1491762920;i:49;i:1491763231;i:50;i:1491763536;i:51;i:1491763820;i:52;i:1491764137;i:53;i:1491764441;i:54;i:1491764800;i:55;i:1491765024;i:56;i:1491765314;i:57;i:1491765985;i:58;i:1491822519;i:59;i:1491822629;i:60;i:1491822947;i:61;i:1491823222;i:62;i:1491823609;i:63;i:1491823849;i:64;i:1491824112;i:65;i:1491824445;i:66;i:1491824727;i:67;i:1491825023;i:68;i:1491825327;i:69;i:1491825661;i:70;i:1491825933;i:71;i:1491826133;i:72;i:1491826215;i:73;i:1491826516;i:74;i:1491826837;i:75;i:1491827132;i:76;i:1491827382;i:77;i:1491827432;i:78;i:1491827713;i:79;i:1491828040;i:80;i:1491828341;i:81;i:1491828608;i:82;i:1491828620;i:83;i:1491828951;i:84;i:1491829270;i:85;i:1491829515;i:86;i:1491829750;i:87;i:1491829756;i:88;i:1491829773;i:89;i:1491829836;i:90;i:1491830100;i:91;i:1491830183;i:92;i:1491830423;i:93;i:1491830734;i:94;i:1491831013;i:95;i:1491831345;i:96;i:1491831831;i:97;i:1491832266;i:98;i:1491832538;i:99;i:1491832835;}', 'no'),
(776, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(817, 'newsletter_diagnostic_cron_data', 'a:3:{s:4:"mean";d:850.26999999999998;s:3:"max";i:56534;s:3:"min";i:6;}', 'no'),
(855, '_site_transient_timeout_browser_88337cd9fed317d029aaa03191c0be0b', '1491911521', 'no'),
(856, '_site_transient_browser_88337cd9fed317d029aaa03191c0be0b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(877, 'core_updater.lock', '1491308050', 'no'),
(920, '_site_transient_timeout_browser_1112e7da2c1e2ca5eb7e4651881e05db', '1492078716', 'no'),
(921, '_site_transient_browser_1112e7da2c1e2ca5eb7e4651881e05db', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"57.0.2987.133";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(986, '_transient_timeout_wc_shipping_method_count_0_1488280915', '1494071151', 'no'),
(987, '_transient_wc_shipping_method_count_0_1488280915', '0', 'no'),
(1035, '_transient_timeout_wc_shipping_method_count_1_1488280915', '1494076635', 'no'),
(1036, '_transient_wc_shipping_method_count_1_1488280915', '0', 'no'),
(1069, '_transient_timeout_wc_related_1864', '1491647340', 'no'),
(1070, '_transient_wc_related_1864', 'a:0:{}', 'no'),
(1127, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(1128, 'woocommerce_version', '3.0.1', 'yes'),
(1130, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(1144, '_transient_timeout_wc_report_sales_by_date', '1491911003', 'no'),
(1145, '_transient_wc_report_sales_by_date', 'a:78:{s:32:"cea24ed24428462fbf4d60149ff006d9";a:0:{}s:32:"7fc45986b489bb2f5642f00dc9901df0";a:0:{}s:32:"e205d4b4161c8ae3fd8526dfb578bf30";a:0:{}s:32:"61d296b3b8f750c5243227048bc86788";a:0:{}s:32:"cb84e5f14214da6f4c731c246b48e5e9";N;s:32:"44f7705ca8cd95d00bc3a5f855b6fda2";a:0:{}s:32:"b27351ddabcf70db2cf39a68849d2269";a:0:{}s:32:"096b9a523bb02ee14dfeaf0dacde7774";a:0:{}s:32:"3a62bfe371d3662879de5ebf18c101b4";a:0:{}s:32:"faf0400c0b2b36596c0546a92caa3408";a:0:{}s:32:"ba6a2b05249bb51dcf39fda4d2e4c64c";a:0:{}s:32:"20707fcd347c93566634917baff4a0cd";N;s:32:"d01456abe6cb2640eddb57c4f0348bd9";a:0:{}s:32:"387988e7c100b2acd22cd093c8106547";a:0:{}s:32:"5ccfba6821f51f470c69427f52c8d36e";a:0:{}s:32:"6db2608fb96c5dce36bcd5ccde9eea22";a:0:{}s:32:"e09740be0bbe54b98cc41a4a53a9a787";a:0:{}s:32:"12e67eb67c16bbc52c9098b1230397fb";a:0:{}s:32:"033701561f744d0a5c47cfedb2951c26";N;s:32:"a5e3559084172f4dc5334d7c0c8b51f1";a:0:{}s:32:"b74af5a963e6c98b412fa8c12d33625d";a:0:{}s:32:"f4cff8b6557aaba3aa958e2a3f8f38cf";a:0:{}s:32:"fe4476cf69e28db0a35ddde78a88f6e0";a:0:{}s:32:"49a8a7041cf73ffef7648398be320106";a:0:{}s:32:"239b860756c366a5be10b4de7d7788e6";a:0:{}s:32:"b1d398046f5c14e0c235aec82247e152";N;s:32:"72a3cf580e9d5e434fed2ee4ee0b396f";a:0:{}s:32:"40fb860a04a26486d56f98312d969628";a:0:{}s:32:"a0c54ed5478e4c9b8f23afe61a6029cd";a:0:{}s:32:"baaa61c5dfa6f282f5edced66f08337f";a:0:{}s:32:"9b21ca08b9136693a21e58b23a8510a8";a:0:{}s:32:"b40eb548ff4cd91dfe2e106867973f0c";a:0:{}s:32:"12353e4275d0858a7760da6a82686f9b";N;s:32:"1e66a3c083e5707fb5254211d49c6cb7";a:0:{}s:32:"b9b3db06795088753deceb49e8a16bd3";a:0:{}s:32:"2d6467ee869164fb9f35f253f9ffe14d";a:0:{}s:32:"e91671ef113a2c3459340fdd44ae5db0";a:0:{}s:32:"221b0bec6d596623879303507b6e05e7";a:0:{}s:32:"01e32cc34039412eaaa9e10c4331963c";a:0:{}s:32:"1c250f27ffc5169684938cdd4c7c87bf";N;s:32:"e5ca3b5a2d854e6d380e9e6a5924a4ce";a:0:{}s:32:"0122b0b6343943c6aaed19f50d685bd2";a:0:{}s:32:"dddc2f4be8574f8120e2de1930da6c93";a:0:{}s:32:"3f9113068106b08c4c08d33817356cec";a:0:{}s:32:"acb127ddac8f60276fb7b6579b4f5b7d";a:0:{}s:32:"d6ab08aae35eb3bb3d571f818889b9d6";a:0:{}s:32:"0149953942b0cc6d1110e0bb8d941ee9";N;s:32:"08a1c4fd4c597f443bdc46bc9e1e3066";a:0:{}s:32:"a62d4ed571f351f57f77e9a0ce4de941";a:0:{}s:32:"607ea646c007b386dd4bc0040ffe5e14";a:0:{}s:32:"a29d2b878465236ed3786cb3802582bc";a:0:{}s:32:"00b1b12b8ef1393d6a2b554127b0e67b";a:0:{}s:32:"8fff30f9a2af83548ed5f3cd70ae7d37";a:0:{}s:32:"dd11e8f16c56f5dde82bc2b16ffda3c4";N;s:32:"2d98e544f68fdce668c09dfed37f6550";a:0:{}s:32:"178c7d158c63fac03a0890d6d189e6e6";a:0:{}s:32:"e8132f3e6bf0e5649ab0e8c17be72882";a:0:{}s:32:"296fb867117db584efd2ef5dc2274eab";a:0:{}s:32:"0dc3f70f1183655d9890fbc565162245";a:0:{}s:32:"25eb325bd88bd440401ddfc4e61acbae";a:0:{}s:32:"8d4a016b162babb63a45a0beb43cb7c2";N;s:32:"aef62351da38795f7e7d4d246df2382b";a:0:{}s:32:"c4819843c44c677334ca84bf0b89cb40";a:0:{}s:32:"e8147b663aa287f87d016df7499e451f";a:0:{}s:32:"e33d8f0deeb69f0deb6a12f9b0be922a";a:0:{}s:32:"8c688ba35e5706b1932dac98bc9179bc";a:0:{}s:32:"3a8d5272018ece3e185250e03e8a792a";a:0:{}s:32:"11e7f6999f926c88f89b097bf43d4310";N;s:32:"da9d85932c8ac622f4a227e44104bc5f";a:0:{}s:32:"46a7ad4572efbb6ad5e7d26d54904c2e";a:0:{}s:32:"fd4857cc0b857b91bc40509f4df899ba";a:0:{}s:32:"74ba3c3d4a45024c6ec1a2a72361b673";a:0:{}s:32:"960f260434c46fea09c34f245a13fd27";a:0:{}s:32:"02dc5f10df1e5f5b15928cb31cb20433";a:0:{}s:32:"9c4817dd223dacc3ff58a638499ea233";N;s:32:"76030077be9aced7e881c43d7e6d8fc3";a:0:{}s:32:"5204d73ac7ee24d95b20ebb55f99f714";a:0:{}s:32:"42a456034fb7743b25e40f9d938195f6";a:0:{}}', 'no'),
(1163, 'woocommerce_db_version', '3.0.1', 'yes'),
(1167, '_transient_timeout_plugin_slugs', '1491912634', 'no'),
(1168, '_transient_plugin_slugs', 'a:10:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:23:"ml-slider/ml-slider.php";i:4;s:21:"newsletter/plugin.php";i:5;s:31:"query-monitor/query-monitor.php";i:6;s:53:"velvet-blues-update-urls/velvet-blues-update-urls.php";i:7;s:27:"woocommerce/woocommerce.php";i:8;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:9;s:41:"wordpress-importer/wordpress-importer.php";}', 'no'),
(1176, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1177, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'no'),
(1178, 'ml-slider_children', 'a:0:{}', 'yes'),
(1198, '_transient_timeout_wc_admin_report', '1491836049', 'no'),
(1199, '_transient_wc_admin_report', 'a:1:{s:32:"127e94a84785147c5192500114a61ddf";a:0:{}}', 'no'),
(1200, '_transient_timeout_wc_low_stock_count', '1494341650', 'no'),
(1201, '_transient_wc_low_stock_count', '0', 'no'),
(1202, '_transient_timeout_wc_outofstock_count', '1494341650', 'no'),
(1203, '_transient_wc_outofstock_count', '0', 'no'),
(1236, 'category_children', 'a:0:{}', 'yes'),
(1273, 'acf_version', '4.4.11', 'yes'),
(1274, '_transient_timeout_external_ip_address_::1', '1492427318', 'no'),
(1275, '_transient_external_ip_address_::1', '146.176.228.86', 'no'),
(1309, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1491836106', 'no'),
(1310, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4325;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2467;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2348;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:1983;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1813;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1567;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1534;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1422;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1321;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1317;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1301;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1266;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1250;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1079;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1037;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1021;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:977;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:901;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:809;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:776;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:774;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:756;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:745;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:663;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:650;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:641;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:636;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:633;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:632;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:607;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:588;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:584;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:583;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:565;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:563;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:559;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:558;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:548;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:537;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:528;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:519;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:516;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:499;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:496;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:488;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:485;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:481;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:472;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:460;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:457;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:455;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:450;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:440;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:428;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:427;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:419;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:415;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:405;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:399;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:398;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:395;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:394;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:390;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:389;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:388;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:373;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:368;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:359;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:356;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:344;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:330;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:329;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:327;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:324;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:319;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:318;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:317;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:316;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:313;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:304;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:303;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:289;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:289;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:283;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:283;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:280;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:278;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:277;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:276;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:275;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:270;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:268;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:264;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:263;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:262;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:261;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:260;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:260;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:260;}}', 'no'),
(1318, 'widget_owl_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1319, 'owl_carousel_wordpress_gallery', 'off', 'yes'),
(1320, 'owl_carousel_orderby', 'post_date', 'yes'),
(1332, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1491829767;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:10:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.3.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.7";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.7.zip";}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"38583";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/ml-slider.3.5.zip";}s:21:"newsletter/plugin.php";O:8:"stdClass":6:{s:2:"id";s:4:"8171";s:4:"slug";s:10:"newsletter";s:6:"plugin";s:21:"newsletter/plugin.php";s:11:"new_version";s:5:"4.8.9";s:3:"url";s:41:"https://wordpress.org/plugins/newsletter/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/newsletter.4.8.9.zip";}s:31:"query-monitor/query-monitor.php";O:8:"stdClass":6:{s:2:"id";s:5:"10302";s:4:"slug";s:13:"query-monitor";s:6:"plugin";s:31:"query-monitor/query-monitor.php";s:11:"new_version";s:6:"2.13.4";s:3:"url";s:44:"https://wordpress.org/plugins/query-monitor/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/query-monitor.2.13.4.zip";}s:53:"velvet-blues-update-urls/velvet-blues-update-urls.php";O:8:"stdClass":6:{s:2:"id";s:4:"4884";s:4:"slug";s:24:"velvet-blues-update-urls";s:6:"plugin";s:53:"velvet-blues-update-urls/velvet-blues-update-urls.php";s:11:"new_version";s:5:"3.2.7";s:3:"url";s:55:"https://wordpress.org/plugins/velvet-blues-update-urls/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/velvet-blues-update-urls.3.2.7.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":7:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.0.1";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.0.1.zip";s:14:"upgrade_notice";s:130:"3.0 is a major update. It is important that you make backups and ensure themes and extensions are 3.0 compatible before upgrading.";}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":6:{s:2:"id";s:5:"70549";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.2.0";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.2.0.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.3";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.3.zip";}}}', 'no'),
(1333, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.7";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1491826233;s:7:"version";s:3:"4.7";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(1343, 'woocommerce_gateway_order', 'a:5:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;s:11:"ppec_paypal";i:4;}', 'yes'),
(1344, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:6:"p=1848";i:1;s:6:"/cart/";i:2;s:6:"p=1849";i:3;s:10:"/checkout/";i:4;s:6:"p=1850";i:5;s:12:"/my-account/";}', 'yes'),
(1352, '_transient_timeout_wc_related_1865', '1491917745', 'no'),
(1353, '_transient_wc_related_1865', 'a:0:{}', 'no'),
(1376, '_site_transient_timeout_theme_roots', '1491831563', 'no'),
(1377, '_site_transient_theme_roots', 'a:2:{s:8:"obsidian";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(1395, '_transient_timeout_wc_related_1851', '1491917493', 'no'),
(1396, '_transient_wc_related_1851', 'a:0:{}', 'no');

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
(1005, 1772, '_edit_last', '1'),
(1006, 1772, '_edit_lock', '1486473058:1'),
(1007, 1774, '_edit_last', '1'),
(1008, 1774, '_edit_lock', '1486473071:1'),
(1009, 1776, '_edit_last', '1'),
(1010, 1776, '_edit_lock', '1488287789:1'),
(1029, 1781, '_edit_last', '1'),
(1030, 1781, '_edit_lock', '1486473254:1'),
(1031, 1783, '_edit_last', '1'),
(1032, 1783, '_edit_lock', '1487079246:1'),
(1033, 1785, '_edit_last', '1'),
(1034, 1785, '_edit_lock', '1491764905:1'),
(1035, 1787, '_edit_last', '1'),
(1036, 1787, '_edit_lock', '1491832700:1'),
(1037, 1789, '_edit_last', '1'),
(1038, 1789, '_edit_lock', '1491764775:1'),
(1039, 1791, '_edit_last', '1'),
(1040, 1791, '_edit_lock', '1491832629:1'),
(1041, 1793, '_edit_last', '1'),
(1042, 1793, '_edit_lock', '1486473410:1'),
(1043, 1795, '_edit_last', '1'),
(1044, 1795, '_edit_lock', '1491826657:1'),
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
(1156, 1811, '_menu_item_menu_item_parent', '0'),
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
(1184, 1839, '_edit_lock', '1488291639:1'),
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
(1266, 1854, '_edit_lock', '1488284787:1'),
(1267, 1854, '_edit_last', '1'),
(1268, 1854, '_transaction_id', ''),
(1269, 1854, '_completed_date', '2017-02-28 11:31:06'),
(1276, 1860, '_wp_attached_file', '2017/03/Logo_BlackBG_Clean_300px.png'),
(1277, 1860, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:95;s:4:"file";s:36:"2017/03/Logo_BlackBG_Clean_300px.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Logo_BlackBG_Clean_300px-150x95.png";s:5:"width";i:150;s:6:"height";i:95;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"Logo_BlackBG_Clean_300px-300x95.png";s:5:"width";i:300;s:6:"height";i:95;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"Logo_BlackBG_Clean_300px-180x95.png";s:5:"width";i:180;s:6:"height";i:95;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"Logo_BlackBG_Clean_300px-300x95.png";s:5:"width";i:300;s:6:"height";i:95;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1280, 1864, '_edit_last', '1'),
(1281, 1864, '_edit_lock', '1491478814:1'),
(1282, 1864, '_visibility', 'visible'),
(1283, 1864, '_stock_status', 'instock'),
(1284, 1864, '_thumbnail_id', '1852'),
(1285, 1864, '_downloadable', 'no'),
(1286, 1864, '_virtual', 'no'),
(1287, 1864, '_purchase_note', ''),
(1288, 1864, '_featured', 'no'),
(1289, 1864, '_weight', ''),
(1290, 1864, '_length', ''),
(1291, 1864, '_width', ''),
(1292, 1864, '_height', ''),
(1293, 1864, '_product_attributes', 'a:0:{}'),
(1294, 1864, '_regular_price', '35'),
(1295, 1864, '_sale_price', ''),
(1296, 1864, '_sale_price_dates_from', ''),
(1297, 1864, '_sale_price_dates_to', ''),
(1298, 1864, '_price', '35'),
(1299, 1864, '_sold_individually', ''),
(1300, 1864, '_manage_stock', 'no'),
(1301, 1864, '_backorders', 'no'),
(1302, 1864, '_stock', ''),
(1303, 1864, '_upsell_ids', 'a:0:{}'),
(1304, 1864, '_crosssell_ids', 'a:0:{}'),
(1305, 1864, '_product_version', '2.6.14'),
(1306, 1864, '_product_image_gallery', '1852,1853'),
(1311, 1864, 'total_sales', '0'),
(1312, 1864, '_sku', ''),
(1313, 1865, '_edit_last', '1'),
(1314, 1865, '_edit_lock', '1491492317:1'),
(1315, 1865, '_visibility', 'visible'),
(1316, 1865, '_stock_status', 'instock'),
(1317, 1865, '_thumbnail_id', '1852'),
(1318, 1865, '_downloadable', 'no'),
(1319, 1865, '_virtual', 'no'),
(1320, 1865, '_purchase_note', ''),
(1321, 1865, '_featured', 'no'),
(1322, 1865, '_weight', ''),
(1323, 1865, '_length', ''),
(1324, 1865, '_width', ''),
(1325, 1865, '_height', ''),
(1326, 1865, '_product_attributes', 'a:0:{}'),
(1327, 1865, '_regular_price', '35'),
(1328, 1865, '_sale_price', ''),
(1329, 1865, '_sale_price_dates_from', ''),
(1330, 1865, '_sale_price_dates_to', ''),
(1331, 1865, '_price', '35'),
(1332, 1865, '_sold_individually', ''),
(1333, 1865, '_manage_stock', 'no'),
(1334, 1865, '_backorders', 'no'),
(1335, 1865, '_stock', ''),
(1336, 1865, '_upsell_ids', 'a:0:{}'),
(1337, 1865, '_crosssell_ids', 'a:0:{}'),
(1338, 1865, '_product_version', '2.6.14'),
(1339, 1865, '_product_image_gallery', '1852,1853'),
(1344, 1865, 'total_sales', '0'),
(1345, 1865, '_sku', ''),
(1346, 1865, '_wc_rating_count', 'a:0:{}'),
(1347, 1865, '_wc_average_rating', '0'),
(1348, 1864, '_wc_rating_count', 'a:0:{}'),
(1349, 1864, '_wc_average_rating', '0'),
(1350, 1865, '_wc_review_count', '0'),
(1351, 1864, '_wc_review_count', '0'),
(1352, 1787, '_wp_page_template', 'page_events.php'),
(1353, 1789, '_wp_page_template', 'page_events.php'),
(1354, 1785, '_wp_page_template', 'page_events.php'),
(1355, 1866, 'ml-slider_settings', 'a:35:{s:4:"type";s:10:"responsive";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:4:"1400";s:6:"height";s:3:"450";s:3:"spw";s:1:"7";s:3:"sph";s:1:"5";s:5:"delay";s:4:"3000";s:6:"sDelay";s:2:"30";s:7:"opacity";s:1:"0";s:10:"titleSpeed";s:3:"500";s:6:"effect";s:4:"fade";s:10:"navigation";s:5:"false";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";s:2:"15";s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:5:"false";s:12:"smoothHeight";s:5:"false";}'),
(1356, 1867, '_wp_attached_file', '2017/04/slider_promotion_1.jpg'),
(1357, 1867, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:450;s:4:"file";s:30:"2017/04/slider_promotion_1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"slider_promotion_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"slider_promotion_1-300x96.jpg";s:5:"width";i:300;s:6:"height";i:96;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"slider_promotion_1-768x247.jpg";s:5:"width";i:768;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"slider_promotion_1-1024x329.jpg";s:5:"width";i:1024;s:6:"height";i:329;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"slider_promotion_1-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"slider_promotion_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"slider_promotion_1-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:36:"Copyright 2014. All rights reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1358, 1868, '_wp_attached_file', '2017/04/slider_promotion_2.jpg'),
(1359, 1868, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:450;s:4:"file";s:30:"2017/04/slider_promotion_2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"slider_promotion_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"slider_promotion_2-300x96.jpg";s:5:"width";i:300;s:6:"height";i:96;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"slider_promotion_2-768x247.jpg";s:5:"width";i:768;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"slider_promotion_2-1024x329.jpg";s:5:"width";i:1024;s:6:"height";i:329;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"slider_promotion_2-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"slider_promotion_2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"slider_promotion_2-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:36:"Copyright 2014. All rights reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1360, 1869, '_wp_attached_file', '2017/04/slider_promotion_3.jpg'),
(1361, 1869, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:450;s:4:"file";s:30:"2017/04/slider_promotion_3.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"slider_promotion_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"slider_promotion_3-300x96.jpg";s:5:"width";i:300;s:6:"height";i:96;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"slider_promotion_3-768x247.jpg";s:5:"width";i:768;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"slider_promotion_3-1024x329.jpg";s:5:"width";i:1024;s:6:"height";i:329;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"slider_promotion_3-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"slider_promotion_3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"slider_promotion_3-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:36:"Copyright 2014. All rights reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1362, 1870, '_thumbnail_id', '1867'),
(1363, 1870, 'ml-slider_type', 'image'),
(1364, 1871, '_thumbnail_id', '1868'),
(1365, 1871, 'ml-slider_type', 'image'),
(1366, 1872, '_thumbnail_id', '1869'),
(1367, 1872, 'ml-slider_type', 'image'),
(1368, 1867, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:79:"C:xampphtdocsobsidian/wp-content/uploads/2017/04/slider_promotion_1-700x300.jpg";s:4:"file";s:30:"slider_promotion_1-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(1369, 1868, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:79:"C:xampphtdocsobsidian/wp-content/uploads/2017/04/slider_promotion_2-700x300.jpg";s:4:"file";s:30:"slider_promotion_2-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(1370, 1869, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:79:"C:xampphtdocsobsidian/wp-content/uploads/2017/04/slider_promotion_3-700x300.jpg";s:4:"file";s:30:"slider_promotion_3-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(1371, 1870, 'ml-slider_crop_position', 'center-center'),
(1372, 1870, '_wp_attachment_image_alt', ''),
(1373, 1870, 'ml-slider_new_window', 'true'),
(1374, 1871, 'ml-slider_crop_position', 'center-center'),
(1375, 1871, '_wp_attachment_image_alt', ''),
(1376, 1871, 'ml-slider_new_window', 'true'),
(1377, 1872, 'ml-slider_crop_position', 'center-center'),
(1378, 1872, '_wp_attachment_image_alt', ''),
(1379, 1872, 'ml-slider_new_window', 'true'),
(1380, 1873, '_edit_last', '1'),
(1381, 1873, '_edit_lock', '1491825998:1'),
(1382, 1874, '_wp_attached_file', '2017/04/dj1.jpg'),
(1383, 1874, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:203;s:4:"file";s:15:"2017/04/dj1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"dj1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"dj1-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1384, 1875, '_wp_attached_file', '2017/04/dj2.jpg'),
(1385, 1875, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:201;s:4:"file";s:15:"2017/04/dj2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"dj2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"dj2-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1386, 1876, '_wp_attached_file', '2017/04/dj3.jpg'),
(1387, 1876, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:15:"2017/04/dj3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"dj3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"dj3-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1388, 1877, '_wp_attached_file', '2017/04/dj4.jpg'),
(1389, 1877, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:15:"2017/04/dj4.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"dj4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"dj4-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1390, 1878, '_wp_attached_file', '2017/04/dj6.jpg'),
(1391, 1878, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:15:"2017/04/dj6.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"dj6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"dj6-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1392, 1879, '_wp_attached_file', '2017/04/dj5.jpg'),
(1393, 1879, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:15:"2017/04/dj5.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"dj5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"dj5-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1394, 1873, '_thumbnail_id', '1879'),
(1395, 1880, '_edit_last', '1'),
(1396, 1880, '_edit_lock', '1491753675:1'),
(1397, 1880, '_thumbnail_id', '1874'),
(1398, 1881, '_edit_last', '1'),
(1399, 1881, '_edit_lock', '1491753802:1'),
(1400, 1881, '_thumbnail_id', '1875'),
(1401, 1882, '_edit_last', '1'),
(1402, 1882, '_edit_lock', '1491753715:1'),
(1403, 1882, '_thumbnail_id', '1877'),
(1404, 1883, '_edit_last', '1'),
(1405, 1883, '_edit_lock', '1491753765:1'),
(1406, 1883, '_thumbnail_id', '1876'),
(1407, 1884, '_edit_last', '1'),
(1408, 1884, '_edit_lock', '1491754856:1'),
(1409, 1884, '_thumbnail_id', '1878'),
(1410, 1888, '_edit_last', '1'),
(1411, 1888, 'field_58ea613470864', 'a:14:{s:3:"key";s:19:"field_58ea613470864";s:5:"label";s:13:"Facebook Link";s:4:"name";s:13:"facebook_link";s:4:"type";s:4:"text";s:12:"instructions";s:31:"Please insert the Facebook link";s:8:"required";s:1:"0";s:13:"default_value";s:39:"https://www.facebook.com/mediaobsidian/";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1412, 1888, 'field_58ea616770865', 'a:14:{s:3:"key";s:19:"field_58ea616770865";s:5:"label";s:12:"Twitter Link";s:4:"name";s:12:"twitter_link";s:4:"type";s:4:"text";s:12:"instructions";s:30:"Please insert the Twitter link";s:8:"required";s:1:"0";s:13:"default_value";s:33:"https://twitter.com/MediaObsidian";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1414, 1888, 'position', 'normal'),
(1415, 1888, 'layout', 'no_box'),
(1416, 1888, 'hide_on_screen', ''),
(1417, 1888, '_edit_lock', '1491759521:1'),
(1424, 1888, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:2:"dj";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1425, 1889, '_edit_last', '1'),
(1426, 1889, '_edit_lock', '1491826008:1'),
(1427, 1890, '_wp_attached_file', '2017/04/drum_and_bass.jpg'),
(1428, 1890, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:298;s:6:"height";i:420;s:4:"file";s:25:"2017/04/drum_and_bass.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"drum_and_bass-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"drum_and_bass-213x300.jpg";s:5:"width";i:213;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"drum_and_bass-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"drum_and_bass-298x300.jpg";s:5:"width";i:298;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"drum_and_bass-298x400.jpg";s:5:"width";i:298;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1429, 1891, '_wp_attached_file', '2017/04/edm.jpg'),
(1430, 1891, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:298;s:6:"height";i:420;s:4:"file";s:15:"2017/04/edm.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"edm-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"edm-213x300.jpg";s:5:"width";i:213;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"edm-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"edm-298x300.jpg";s:5:"width";i:298;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"edm-298x400.jpg";s:5:"width";i:298;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1431, 1892, '_wp_attached_file', '2017/04/pop.jpg'),
(1432, 1892, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:298;s:6:"height";i:420;s:4:"file";s:15:"2017/04/pop.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"pop-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"pop-213x300.jpg";s:5:"width";i:213;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"pop-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"pop-298x300.jpg";s:5:"width";i:298;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"pop-298x400.jpg";s:5:"width";i:298;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1433, 1889, '_thumbnail_id', '1891'),
(1434, 1839, '_wp_trash_meta_status', 'publish'),
(1435, 1839, '_wp_trash_meta_time', '1491763322'),
(1436, 1839, '_wp_desired_post_slug', 'amazing-pop-event'),
(1437, 1893, '_edit_last', '1'),
(1438, 1893, '_edit_lock', '1491763255:1'),
(1439, 1893, '_thumbnail_id', '1890'),
(1440, 1894, '_edit_last', '1'),
(1441, 1894, '_edit_lock', '1491763780:1'),
(1442, 1894, '_thumbnail_id', '1892'),
(1443, 1789, '_thumbnail_id', '1891'),
(1444, 1787, '_thumbnail_id', '1890'),
(1445, 1785, '_thumbnail_id', '1892'),
(1446, 1895, '_menu_item_type', 'post_type'),
(1447, 1895, '_menu_item_menu_item_parent', '0'),
(1448, 1895, '_menu_item_object_id', '1894'),
(1449, 1895, '_menu_item_object', 'events'),
(1450, 1895, '_menu_item_target', ''),
(1451, 1895, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1452, 1895, '_menu_item_xfn', ''),
(1453, 1895, '_menu_item_url', ''),
(1455, 1896, '_menu_item_type', 'post_type'),
(1456, 1896, '_menu_item_menu_item_parent', '0'),
(1457, 1896, '_menu_item_object_id', '1893'),
(1458, 1896, '_menu_item_object', 'events'),
(1459, 1896, '_menu_item_target', ''),
(1460, 1896, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1461, 1896, '_menu_item_xfn', ''),
(1462, 1896, '_menu_item_url', ''),
(1464, 1897, '_menu_item_type', 'post_type'),
(1465, 1897, '_menu_item_menu_item_parent', '0'),
(1466, 1897, '_menu_item_object_id', '1889'),
(1467, 1897, '_menu_item_object', 'events'),
(1468, 1897, '_menu_item_target', ''),
(1469, 1897, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1470, 1897, '_menu_item_xfn', ''),
(1471, 1897, '_menu_item_url', ''),
(1472, 1899, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(1473, 1899, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:28:"Obsidian Web"[your-subject]"";s:6:"sender";s:35:"[your-name] <adrian.vcch@gmail.com>";s:9:"recipient";s:23:"media@theobsidian.co.uk";s:4:"body";s:152:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Obsidian Website";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:1;s:13:"exclude_blank";b:0;}'),
(1474, 1899, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:25:"Obsidian "[your-subject]"";s:6:"sender";s:32:"Obsidian <adrian.vcch@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:119:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Obsidian (http://localhost:8080/obsidian)";s:18:"additional_headers";s:31:"Reply-To: adrian.vcch@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1475, 1899, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(1476, 1899, '_additional_settings', ''),
(1477, 1899, '_locale', 'en_US'),
(1478, 1795, '_wp_page_template', 'default'),
(1479, 1904, '_wp_attached_file', '2017/02/DRINKS_MENU-1.jpg'),
(1480, 1904, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:595;s:6:"height";i:842;s:4:"file";s:25:"2017/02/DRINKS_MENU-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"DRINKS_MENU-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"DRINKS_MENU-1-212x300.jpg";s:5:"width";i:212;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"DRINKS_MENU-1-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"DRINKS_MENU-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"DRINKS_MENU-1-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1481, 1791, '_thumbnail_id', '1904'),
(1482, 1791, '_wp_page_template', 'default');

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
(1785, 1, '2017-02-07 13:17:12', '2017-02-07 13:17:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'POP', '', 'publish', 'closed', 'closed', '', 'pop', '', '', '2017-04-09 19:10:33', '2017-04-09 19:10:33', '', 1783, 'http://localhost:8080/obsidian/?page_id=1785', 0, 'page', '', 0),
(1786, 1, '2017-02-07 13:17:12', '2017-02-07 13:17:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'POP', '', 'inherit', 'closed', 'closed', '', '1785-revision-v1', '', '', '2017-02-07 13:17:12', '2017-02-07 13:17:12', '', 1785, 'http://localhost:8080/obsidian/1785-revision-v1/', 0, 'revision', '', 0),
(1787, 1, '2017-02-07 13:18:14', '2017-02-07 13:18:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Drum & Bass', '', 'publish', 'closed', 'closed', '', 'drum-bass', '', '', '2017-04-09 19:09:18', '2017-04-09 19:09:18', '', 1783, 'http://localhost:8080/obsidian/?page_id=1787', 0, 'page', '', 0),
(1788, 1, '2017-02-07 13:18:14', '2017-02-07 13:18:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Drum & Bass', '', 'inherit', 'closed', 'closed', '', '1787-revision-v1', '', '', '2017-02-07 13:18:14', '2017-02-07 13:18:14', '', 1787, 'http://localhost:8080/obsidian/1787-revision-v1/', 0, 'revision', '', 0),
(1789, 1, '2017-02-07 13:18:34', '2017-02-07 13:18:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'EDM', '', 'publish', 'closed', 'closed', '', 'edm', '', '', '2017-04-09 19:08:33', '2017-04-09 19:08:33', '', 1783, 'http://localhost:8080/obsidian/?page_id=1789', 0, 'page', '', 0),
(1790, 1, '2017-02-07 13:18:34', '2017-02-07 13:18:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'EDM', '', 'inherit', 'closed', 'closed', '', '1789-revision-v1', '', '', '2017-02-07 13:18:34', '2017-02-07 13:18:34', '', 1789, 'http://localhost:8080/obsidian/1789-revision-v1/', 0, 'revision', '', 0),
(1791, 1, '2017-02-07 13:18:52', '2017-02-07 13:18:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Promotion', '', 'publish', 'closed', 'closed', '', 'promotion', '', '', '2017-04-10 13:53:46', '2017-04-10 13:53:46', '', 1772, 'http://localhost:8080/obsidian/?page_id=1791', 0, 'page', '', 0),
(1792, 1, '2017-02-07 13:18:52', '2017-02-07 13:18:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Promotion', '', 'inherit', 'closed', 'closed', '', '1791-revision-v1', '', '', '2017-02-07 13:18:52', '2017-02-07 13:18:52', '', 1791, 'http://localhost:8080/obsidian/1791-revision-v1/', 0, 'revision', '', 0),
(1793, 1, '2017-02-07 13:19:05', '2017-02-07 13:19:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Media', '', 'publish', 'closed', 'closed', '', 'media', '', '', '2017-02-07 13:19:05', '2017-02-07 13:19:05', '', 1772, 'http://localhost:8080/obsidian/?page_id=1793', 0, 'page', '', 0),
(1794, 1, '2017-02-07 13:19:05', '2017-02-07 13:19:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Media', '', 'inherit', 'closed', 'closed', '', '1793-revision-v1', '', '', '2017-02-07 13:19:05', '2017-02-07 13:19:05', '', 1793, 'http://localhost:8080/obsidian/1793-revision-v1/', 0, 'revision', '', 0),
(1795, 1, '2017-02-07 13:19:24', '2017-02-07 13:19:24', 'Nunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\n<img class="alignnone size-medium wp-image-1860" src="http://localhost:8080/obsidian/wp-content/uploads/2017/03/Logo_BlackBG_Clean_300px-300x95.png" alt="" width="300" height="95" />', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-04-10 12:19:56', '2017-04-10 12:19:56', '', 0, 'http://localhost:8080/obsidian/?page_id=1795', 0, 'page', '', 0),
(1796, 1, '2017-02-07 13:19:24', '2017-02-07 13:19:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Contact', '', 'inherit', 'closed', 'closed', '', '1795-revision-v1', '', '', '2017-02-07 13:19:24', '2017-02-07 13:19:24', '', 1795, 'http://localhost:8080/obsidian/1795-revision-v1/', 0, 'revision', '', 0),
(1797, 1, '2017-02-07 13:19:34', '2017-02-07 13:19:34', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-02-07 13:19:34', '2017-02-07 13:19:34', '', 0, 'http://localhost:8080/obsidian/?page_id=1797', 0, 'page', '', 0),
(1798, 1, '2017-02-07 13:19:34', '2017-02-07 13:19:34', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '1797-revision-v1', '', '', '2017-02-07 13:19:34', '2017-02-07 13:19:34', '', 1797, 'http://localhost:8080/obsidian/1797-revision-v1/', 0, 'revision', '', 0),
(1799, 1, '2017-02-07 13:21:34', '2017-02-07 13:21:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1799', '', '', '2017-04-04 11:52:43', '2017-04-04 11:52:43', '', 0, 'http://localhost:8080/obsidian/?p=1799', 9, 'nav_menu_item', '', 0),
(1800, 1, '2017-02-07 13:21:35', '2017-02-07 13:21:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1800', '', '', '2017-04-04 11:52:43', '2017-04-04 11:52:43', '', 0, 'http://localhost:8080/obsidian/?p=1800', 11, 'nav_menu_item', '', 0),
(1802, 1, '2017-02-07 13:21:35', '2017-02-07 13:21:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1802', '', '', '2017-04-04 11:52:43', '2017-04-04 11:52:43', '', 0, 'http://localhost:8080/obsidian/?p=1802', 10, 'nav_menu_item', '', 0),
(1804, 1, '2017-02-07 13:21:34', '2017-02-07 13:21:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1804', '', '', '2017-04-04 11:52:42', '2017-04-04 11:52:42', '', 1772, 'http://localhost:8080/obsidian/?p=1804', 3, 'nav_menu_item', '', 0),
(1805, 1, '2017-02-07 13:21:33', '2017-02-07 13:21:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1805', '', '', '2017-04-04 11:52:42', '2017-04-04 11:52:42', '', 1772, 'http://localhost:8080/obsidian/?p=1805', 2, 'nav_menu_item', '', 0),
(1807, 1, '2017-02-07 13:21:32', '2017-02-07 13:21:32', ' ', '', '', 'publish', 'closed', 'closed', '', '1807', '', '', '2017-04-04 11:52:43', '2017-04-04 11:52:43', '', 1783, 'http://localhost:8080/obsidian/?p=1807', 7, 'nav_menu_item', '', 0),
(1808, 1, '2017-02-07 13:21:32', '2017-02-07 13:21:32', ' ', '', '', 'publish', 'closed', 'closed', '', '1808', '', '', '2017-04-04 11:52:43', '2017-04-04 11:52:43', '', 1783, 'http://localhost:8080/obsidian/?p=1808', 6, 'nav_menu_item', '', 0),
(1809, 1, '2017-02-07 13:21:33', '2017-02-07 13:21:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1809', '', '', '2017-04-04 11:52:43', '2017-04-04 11:52:43', '', 1783, 'http://localhost:8080/obsidian/?p=1809', 8, 'nav_menu_item', '', 0),
(1810, 1, '2017-02-07 13:21:34', '2017-02-07 13:21:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1810', '', '', '2017-04-04 11:52:42', '2017-04-04 11:52:42', '', 1772, 'http://localhost:8080/obsidian/?p=1810', 4, 'nav_menu_item', '', 0),
(1811, 1, '2017-02-07 13:23:00', '2017-02-07 13:23:00', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2017-04-04 11:52:42', '2017-04-04 11:52:42', '', 0, 'http://localhost:8080/obsidian/?p=1811', 5, 'nav_menu_item', '', 0),
(1812, 1, '2017-02-07 13:24:12', '2017-02-07 13:24:12', '', 'Club', '', 'publish', 'closed', 'closed', '', 'club', '', '', '2017-04-04 11:52:42', '2017-04-04 11:52:42', '', 0, 'http://localhost:8080/obsidian/?p=1812', 1, 'nav_menu_item', '', 0),
(1813, 1, '2017-02-07 13:24:43', '2017-02-07 13:24:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'First post', '', 'publish', 'open', 'open', '', 'first-post', '', '', '2017-02-07 13:24:43', '2017-02-07 13:24:43', '', 0, 'http://localhost:8080/obsidian/?p=1813', 0, 'post', '', 0),
(1814, 1, '2017-02-07 13:24:43', '2017-02-07 13:24:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'First post', '', 'inherit', 'closed', 'closed', '', '1813-revision-v1', '', '', '2017-02-07 13:24:43', '2017-02-07 13:24:43', '', 1813, 'http://localhost:8080/obsidian/1813-revision-v1/', 0, 'revision', '', 0),
(1815, 1, '2017-02-07 13:24:56', '2017-02-07 13:24:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Second post', '', 'publish', 'open', 'open', '', 'second-post', '', '', '2017-02-07 13:24:56', '2017-02-07 13:24:56', '', 0, 'http://localhost:8080/obsidian/?p=1815', 0, 'post', '', 0),
(1816, 1, '2017-02-07 13:24:56', '2017-02-07 13:24:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar dignissim ullamcorper. Phasellus in ullamcorper ex, nec imperdiet mi. Praesent in lorem sed neque tincidunt pellentesque. Nullam nisl nibh, porttitor non augue tempus, malesuada sagittis nisl. Praesent porta iaculis tellus, euismod aliquet urna euismod at. Sed nisi mauris, eleifend id ex a, dignissim consequat lectus. Nunc sit amet odio elementum, sodales ipsum sit amet, volutpat ipsum. Donec nec tellus at mi congue blandit. Nulla urna neque, ullamcorper vel consectetur in, suscipit eget nisi. Mauris ac risus non purus tincidunt tincidunt ac nec erat. Ut a nibh sem. Etiam facilisis, turpis vel pretium egestas, nisi mauris pharetra metus, at pretium orci mi ut nibh. Sed vel feugiat lacus. Praesent egestas lectus sit amet interdum congue.\r\n\r\nNunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\nCurabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper. Pellentesque consequat mi sit amet purus aliquam vulputate. Proin vitae nisl eget libero venenatis interdum eu quis leo. Proin eget mauris scelerisque sem scelerisque placerat. Praesent vestibulum nibh nec dui iaculis, vel varius ante dictum. Nam nulla mauris, egestas a sapien nec, hendrerit commodo neque. Vivamus finibus sit amet mi id gravida. Proin tristique bibendum massa sed tempus. Ut convallis sit amet ipsum vitae elementum. Aenean lacus leo, bibendum sit amet efficitur at, venenatis quis erat.', 'Second post', '', 'inherit', 'closed', 'closed', '', '1815-revision-v1', '', '', '2017-02-07 13:24:56', '2017-02-07 13:24:56', '', 1815, 'http://localhost:8080/obsidian/1815-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1837, 1, '2017-02-07 18:20:22', '2017-02-07 18:20:22', 'Lorem ipsum dolor sit amet, mea veritus probatus facilisi id. Vocibus offendit et vel. Ea labore fastidii duo, oratio dissentiet cu pri. Iusto persequeris eu sea, platonem reformidans liberavisse eu duo. Pro eu inimicus petentium disputationi, cu ius ludus munere definitionem, ex malis voluptaria signiferumque eos.\r\n\r\nHas sumo justo suscipiantur ei, usu harum suscipiantur ex. Numquam fabellas quo te, vim ea mutat habemus, at ignota salutandi dissentiet vis. Eos ipsum rationibus et, solum menandri perpetua usu eu, enim tation pertinacia in ius. Mea altera antiopam elaboraret ea. An labore possim suscipit usu, oblique propriae eu vel.\r\n\r\nNe impetus aliquip mel. At sea accumsan platonem molestiae. Diceret ancillae no vel, eos quaeque patrioque repudiandae eu, te sit utamur denique voluptaria. Convenire reformidans mea ne, at his veri graeci. Purto augue ei qui, id mel apeirian efficiantur.\r\n\r\nQui an omittam ocurreret, quas aeque admodum ex usu. Vis ut autem splendide. Mea no impedit senserit, omnes corpora mediocrem vel id, prompta dolores adolescens te sit. Has tantas causae iisque ad, error audiam cu eum, delenit graecis id est.\r\n\r\nEssent nusquam pro et. An dico argumentum comprehensam vix. Scaevola verterem no usu, vix te aperiri detraxit sadipscing, an unum audiam legendos est. An nihil accusata cum, tacimates assueverit contentiones ad vis, ne pri feugiat hendrerit. No impetus torquatos incorrupte mei. Ferri ullum mucius has eu, iusto feugait suavitate id qui.', 'Amazing event of POP', '', 'publish', 'closed', 'closed', '', 'amazing-event-of-pop', '', '', '2017-02-07 18:20:22', '2017-02-07 18:20:22', '', 0, 'http://localhost:8080/obsidian/?post_type=products&#038;p=1837', 0, 'products', '', 0),
(1838, 1, '2017-02-07 18:20:15', '2017-02-07 18:20:15', '', 'world-goes-pop', '', 'inherit', 'open', 'closed', '', 'world-goes-pop', '', '', '2017-02-07 18:20:15', '2017-02-07 18:20:15', '', 1837, 'http://localhost:8080/obsidian/wp-content/uploads/2017/02/world-goes-pop.jpeg', 0, 'attachment', 'image/jpeg', 0),
(1839, 1, '2017-02-07 18:21:21', '2017-02-07 18:21:21', 'Lorem ipsum dolor sit amet, mea veritus probatus facilisi id. Vocibus offendit et vel. Ea labore fastidii duo, oratio dissentiet cu pri. Iusto persequeris eu sea, platonem reformidans liberavisse eu duo. Pro eu inimicus petentium disputationi, cu ius ludus munere definitionem, ex malis voluptaria signiferumque eos.\r\n\r\nHas sumo justo suscipiantur ei, usu harum suscipiantur ex. Numquam fabellas quo te, vim ea mutat habemus, at ignota salutandi dissentiet vis. Eos ipsum rationibus et, solum menandri perpetua usu eu, enim tation pertinacia in ius. Mea altera antiopam elaboraret ea. An labore possim suscipit usu, oblique propriae eu vel.\r\n\r\nNe impetus aliquip mel. At sea accumsan platonem molestiae. Diceret ancillae no vel, eos quaeque patrioque repudiandae eu, te sit utamur denique voluptaria. Convenire reformidans mea ne, at his veri graeci. Purto augue ei qui, id mel apeirian efficiantur.\r\n\r\nQui an omittam ocurreret, quas aeque admodum ex usu. Vis ut autem splendide. Mea no impedit senserit, omnes corpora mediocrem vel id, prompta dolores adolescens te sit. Has tantas causae iisque ad, error audiam cu eum, delenit graecis id est.\r\n\r\nEssent nusquam pro et. An dico argumentum comprehensam vix. Scaevola verterem no usu, vix te aperiri detraxit sadipscing, an unum audiam legendos est. An nihil accusata cum, tacimates assueverit contentiones ad vis, ne pri feugiat hendrerit. No impetus torquatos incorrupte mei. Ferri ullum mucius has eu, iusto feugait suavitate id qui.', 'Amazing POP event!', '', 'trash', 'closed', 'closed', '', 'amazing-pop-event__trashed', '', '', '2017-04-09 18:42:02', '2017-04-09 18:42:02', '', 0, 'http://localhost:8080/obsidian/?post_type=events&#038;p=1839', 0, 'events', '', 0),
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
(1854, 1, '2017-02-28 11:29:00', '2017-02-28 11:29:00', '', 'Order &ndash; February 28, 2017 @ 11:29 AM', '', 'wc-completed', 'closed', 'closed', 'order_58b55f1576803', 'order-feb-28-2017-1129-am', '', '', '2017-02-28 11:31:03', '2017-02-28 11:31:03', '', 0, 'http://localhost:8080/obsidian/?post_type=shop_order&#038;p=1854', 0, 'shop_order', '', 2),
(1860, 1, '2017-03-06 13:27:07', '2017-03-06 13:27:07', '', 'Logo_BlackBG_Clean_300px', '', 'inherit', 'open', 'closed', '', 'logo_blackbg_clean_300px', '', '', '2017-04-10 12:19:55', '2017-04-10 12:19:55', '', 1795, 'http://localhost:8080/obsidian/wp-content/uploads/2017/03/Logo_BlackBG_Clean_300px.png', 0, 'attachment', 'image/png', 0),
(1862, 1, '2017-03-06 16:37:00', '2017-03-06 16:37:00', '[wysija_page]', 'Subscription confirmation', '', 'publish', 'closed', 'closed', '', 'subscriptions', '', '', '2017-03-06 16:37:00', '2017-03-06 16:37:00', '', 0, 'http://localhost:8080/obsidian/?wysijap=subscriptions', 0, 'wysijap', '', 0),
(1863, 1, '2017-04-04 11:52:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-04 11:52:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/obsidian/?p=1863', 0, 'post', '', 0),
(1864, 1, '2017-04-06 11:42:17', '2017-04-06 11:42:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec posuere, est a accumsan iaculis, mi nunc aliquet dolor, quis finibus odio ligula nec est. Morbi facilisis vitae lorem aliquam finibus. Integer ligula mi, efficitur nec blandit nec, pharetra porttitor magna. Etiam fringilla laoreet iaculis. Ut ornare purus eget est euismod ullamcorper. Donec turpis nibh, interdum eget euismod sed, varius eu neque. Aliquam erat volutpat. Ut hendrerit odio ac aliquet condimentum.\r\n\r\nSuspendisse sit amet nulla pellentesque, tempor nibh non, ullamcorper leo. Nullam eget tempor neque, eu vehicula augue. Proin eu justo vel massa sodales bibendum at ut augue. Sed posuere elementum mattis. Morbi congue velit at viverra vehicula. Proin tempus pellentesque dui eget condimentum. Vivamus felis turpis, auctor nec orci dapibus, sodales fringilla diam. Aenean faucibus commodo tortor eget rhoncus. Sed egestas suscipit eleifend.', 'T-Shirt Staff Obsidian White', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec posuere, est a accumsan iaculis, mi nunc aliquet dolor, quis finibus odio ligula nec est. Morbi facilisis vitae lorem aliquam finibus. Integer ligula mi, efficitur nec blandit nec, pharetra porttitor magna. Etiam fringilla laoreet iaculis. Ut ornare purus eget est euismod ullamcorper. Donec turpis nibh, interdum eget euismod sed, varius eu neque. Aliquam erat volutpat. Ut hendrerit odio ac aliquet condimentum.', 'publish', 'open', 'closed', '', 't-shirt-staff-obsidian-white', '', '', '2017-04-06 11:42:30', '2017-04-06 11:42:30', '', 0, 'http://localhost:8080/obsidian/product/t-shirt-staff-obsidian-white/', 0, 'product', '', 0),
(1865, 1, '2017-04-06 11:42:42', '2017-04-06 11:42:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec posuere, est a accumsan iaculis, mi nunc aliquet dolor, quis finibus odio ligula nec est. Morbi facilisis vitae lorem aliquam finibus. Integer ligula mi, efficitur nec blandit nec, pharetra porttitor magna. Etiam fringilla laoreet iaculis. Ut ornare purus eget est euismod ullamcorper. Donec turpis nibh, interdum eget euismod sed, varius eu neque. Aliquam erat volutpat. Ut hendrerit odio ac aliquet condimentum.\r\n\r\nSuspendisse sit amet nulla pellentesque, tempor nibh non, ullamcorper leo. Nullam eget tempor neque, eu vehicula augue. Proin eu justo vel massa sodales bibendum at ut augue. Sed posuere elementum mattis. Morbi congue velit at viverra vehicula. Proin tempus pellentesque dui eget condimentum. Vivamus felis turpis, auctor nec orci dapibus, sodales fringilla diam. Aenean faucibus commodo tortor eget rhoncus. Sed egestas suscipit eleifend.', 'T-Shirt Staff Obsidian Red', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec posuere, est a accumsan iaculis, mi nunc aliquet dolor, quis finibus odio ligula nec est. Morbi facilisis vitae lorem aliquam finibus. Integer ligula mi, efficitur nec blandit nec, pharetra porttitor magna. Etiam fringilla laoreet iaculis. Ut ornare purus eget est euismod ullamcorper. Donec turpis nibh, interdum eget euismod sed, varius eu neque. Aliquam erat volutpat. Ut hendrerit odio ac aliquet condimentum.', 'publish', 'open', 'closed', '', 't-shirt-staff-obsidian-red', '', '', '2017-04-06 11:42:51', '2017-04-06 11:42:51', '', 0, 'http://localhost:8080/obsidian/product/t-shirt-staff-obsidian-red/', 0, 'product', '', 0),
(1866, 1, '2017-04-09 14:24:18', '2017-04-09 14:24:18', '', 'New Slider', '', 'publish', 'closed', 'closed', '', 'new-slider', '', '', '2017-04-09 14:34:15', '2017-04-09 14:34:15', '', 0, 'http://localhost:8080/obsidian/?post_type=ml-slider&#038;p=1866', 0, 'ml-slider', '', 0),
(1867, 1, '2017-04-09 14:26:06', '2017-04-09 14:26:06', '', 'slider_promotion_1', '', 'inherit', 'open', 'closed', '', 'slider_promotion_1', '', '', '2017-04-09 14:26:06', '2017-04-09 14:26:06', '', 0, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/slider_promotion_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1868, 1, '2017-04-09 14:26:08', '2017-04-09 14:26:08', '', 'slider_promotion_2', '', 'inherit', 'open', 'closed', '', 'slider_promotion_2', '', '', '2017-04-09 14:26:08', '2017-04-09 14:26:08', '', 0, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/slider_promotion_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1869, 1, '2017-04-09 14:26:09', '2017-04-09 14:26:09', '', 'slider_promotion_3', '', 'inherit', 'open', 'closed', '', 'slider_promotion_3', '', '', '2017-04-09 14:26:09', '2017-04-09 14:26:09', '', 0, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/slider_promotion_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(1870, 1, '2017-04-09 14:26:12', '2017-04-09 14:26:12', '', 'Slider 1866 - image', '', 'publish', 'closed', 'closed', '', 'slider-1866-image', '', '', '2017-04-09 14:34:15', '2017-04-09 14:34:15', '', 0, 'http://localhost:8080/obsidian/?post_type=ml-slide&#038;p=1870', 0, 'ml-slide', '', 0),
(1871, 1, '2017-04-09 14:26:13', '2017-04-09 14:26:13', '', 'Slider 1866 - image', '', 'publish', 'closed', 'closed', '', 'slider-1866-image-2', '', '', '2017-04-09 14:34:16', '2017-04-09 14:34:16', '', 0, 'http://localhost:8080/obsidian/?post_type=ml-slide&#038;p=1871', 1, 'ml-slide', '', 0),
(1872, 1, '2017-04-09 14:26:14', '2017-04-09 14:26:14', '', 'Slider 1866 - image', '', 'publish', 'closed', 'closed', '', 'slider-1866-image-3', '', '', '2017-04-09 14:34:16', '2017-04-09 14:34:16', '', 0, 'http://localhost:8080/obsidian/?post_type=ml-slide&#038;p=1872', 2, 'ml-slide', '', 0),
(1873, 1, '2017-04-09 15:01:04', '2017-04-09 15:01:04', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</blockquote>', 'DJ ADE', '', 'publish', 'closed', 'closed', '', 'dj-ade', '', '', '2017-04-09 16:03:26', '2017-04-09 16:03:26', '', 0, 'http://localhost:8080/obsidian/?post_type=dj&#038;p=1873', 0, 'dj', '', 0),
(1874, 1, '2017-04-09 15:00:43', '2017-04-09 15:00:43', '', 'dj1', '', 'inherit', 'open', 'closed', '', 'dj1', '', '', '2017-04-09 15:00:43', '2017-04-09 15:00:43', '', 1873, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/dj1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1875, 1, '2017-04-09 15:00:45', '2017-04-09 15:00:45', '', 'dj2', '', 'inherit', 'open', 'closed', '', 'dj2', '', '', '2017-04-09 15:00:45', '2017-04-09 15:00:45', '', 1873, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/dj2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1876, 1, '2017-04-09 15:00:46', '2017-04-09 15:00:46', '', 'dj3', '', 'inherit', 'open', 'closed', '', 'dj3', '', '', '2017-04-09 15:00:46', '2017-04-09 15:00:46', '', 1873, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/dj3.jpg', 0, 'attachment', 'image/jpeg', 0),
(1877, 1, '2017-04-09 15:00:47', '2017-04-09 15:00:47', '', 'dj4', '', 'inherit', 'open', 'closed', '', 'dj4', '', '', '2017-04-09 15:00:47', '2017-04-09 15:00:47', '', 1873, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/dj4.jpg', 0, 'attachment', 'image/jpeg', 0),
(1878, 1, '2017-04-09 15:00:49', '2017-04-09 15:00:49', '', 'dj6', '', 'inherit', 'open', 'closed', '', 'dj6', '', '', '2017-04-09 15:00:49', '2017-04-09 15:00:49', '', 1873, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/dj6.jpg', 0, 'attachment', 'image/jpeg', 0),
(1879, 1, '2017-04-09 15:00:50', '2017-04-09 15:00:50', '', 'dj5', '', 'inherit', 'open', 'closed', '', 'dj5', '', '', '2017-04-09 15:00:50', '2017-04-09 15:00:50', '', 1873, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/dj5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1880, 1, '2017-04-09 15:01:33', '2017-04-09 15:01:33', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</blockquote>', 'DJ ADRIAN', '', 'publish', 'closed', 'closed', '', 'dj-adrian', '', '', '2017-04-09 16:03:32', '2017-04-09 16:03:32', '', 0, 'http://localhost:8080/obsidian/?post_type=dj&#038;p=1880', 0, 'dj', '', 0),
(1881, 1, '2017-04-09 15:02:05', '2017-04-09 15:02:05', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</blockquote>', 'DJ JACINT', '', 'publish', 'closed', 'closed', '', 'dj-jacint', '', '', '2017-04-09 16:05:38', '2017-04-09 16:05:38', '', 0, 'http://localhost:8080/obsidian/?post_type=dj&#038;p=1881', 0, 'dj', '', 0),
(1882, 1, '2017-04-09 15:02:31', '2017-04-09 15:02:31', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</blockquote>', 'DJ BARKER', '', 'publish', 'closed', 'closed', '', 'dj-barker', '', '', '2017-04-09 16:04:10', '2017-04-09 16:04:10', '', 0, 'http://localhost:8080/obsidian/?post_type=dj&#038;p=1882', 0, 'dj', '', 0),
(1883, 1, '2017-04-09 15:03:01', '2017-04-09 15:03:01', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</blockquote>', 'DJ DIMITRUS', '', 'publish', 'closed', 'closed', '', 'dj-dimitrus', '', '', '2017-04-09 16:04:49', '2017-04-09 16:04:49', '', 0, 'http://localhost:8080/obsidian/?post_type=dj&#038;p=1883', 0, 'dj', '', 0),
(1884, 1, '2017-04-09 15:03:24', '2017-04-09 15:03:24', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</blockquote>', 'MC VIKKI', '', 'publish', 'closed', 'closed', '', 'mc-vikki', '', '', '2017-04-09 16:06:39', '2017-04-09 16:06:39', '', 0, 'http://localhost:8080/obsidian/?post_type=dj&#038;p=1884', 0, 'dj', '', 0),
(1885, 1, '2017-04-09 15:30:46', '2017-04-09 15:30:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'DJ ADRIAN', '', 'inherit', 'closed', 'closed', '', '1880-autosave-v1', '', '', '2017-04-09 15:30:46', '2017-04-09 15:30:46', '', 1880, 'http://localhost:8080/obsidian/1880-autosave-v1/', 0, 'revision', '', 0),
(1886, 1, '2017-04-09 15:30:50', '2017-04-09 15:30:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'DJ DIMITRUS', '', 'inherit', 'closed', 'closed', '', '1883-autosave-v1', '', '', '2017-04-09 15:30:50', '2017-04-09 15:30:50', '', 1883, 'http://localhost:8080/obsidian/1883-autosave-v1/', 0, 'revision', '', 0),
(1887, 1, '2017-04-09 16:05:48', '2017-04-09 16:05:48', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</blockquote>', 'MC VIKKI', '', 'inherit', 'closed', 'closed', '', '1884-autosave-v1', '', '', '2017-04-09 16:05:48', '2017-04-09 16:05:48', '', 1884, 'http://localhost:8080/obsidian/1884-autosave-v1/', 0, 'revision', '', 0),
(1888, 1, '2017-04-09 16:30:25', '2017-04-09 16:30:25', '', 'DJ - Social', '', 'publish', 'closed', 'closed', '', 'acf_dj-social', '', '', '2017-04-09 16:49:36', '2017-04-09 16:49:36', '', 0, 'http://localhost:8080/obsidian/?post_type=acf&#038;p=1888', 0, 'acf', '', 0),
(1889, 1, '2017-04-09 18:41:38', '2017-04-09 18:41:38', 'asjdhasjdhas', 'EDM - Thursday @27 April 2017', '', 'publish', 'closed', 'closed', '', 'edm-thursday-27-april-2017', '', '', '2017-04-10 11:12:07', '2017-04-10 11:12:07', '', 0, 'http://localhost:8080/obsidian/?post_type=events&#038;p=1889', 0, 'events', '', 0),
(1890, 1, '2017-04-09 18:41:26', '2017-04-09 18:41:26', '', 'drum_and_bass', '', 'inherit', 'open', 'closed', '', 'drum_and_bass', '', '', '2017-04-09 18:41:26', '2017-04-09 18:41:26', '', 1889, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/drum_and_bass.jpg', 0, 'attachment', 'image/jpeg', 0),
(1891, 1, '2017-04-09 18:41:28', '2017-04-09 18:41:28', '', 'edm', '', 'inherit', 'open', 'closed', '', 'edm-2', '', '', '2017-04-09 18:41:28', '2017-04-09 18:41:28', '', 1889, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/edm.jpg', 0, 'attachment', 'image/jpeg', 0),
(1892, 1, '2017-04-09 18:41:29', '2017-04-09 18:41:29', '', 'pop', '', 'inherit', 'open', 'closed', '', 'pop-2', '', '', '2017-04-09 18:41:29', '2017-04-09 18:41:29', '', 1889, 'http://localhost:8080/obsidian/wp-content/uploads/2017/04/pop.jpg', 0, 'attachment', 'image/jpeg', 0),
(1893, 1, '2017-04-09 18:42:35', '2017-04-09 18:42:35', '', 'D&B - Friday @28 April 2017', '', 'publish', 'closed', 'closed', '', 'db-friday-28-april-2017', '', '', '2017-04-09 18:42:51', '2017-04-09 18:42:51', '', 0, 'http://localhost:8080/obsidian/?post_type=events&#038;p=1893', 0, 'events', '', 0),
(1894, 1, '2017-04-09 18:43:46', '2017-04-09 18:43:46', '', 'POP - Saturday @29 April 2017', '', 'publish', 'closed', 'closed', '', 'pop-saturday-29-april-2017', '', '', '2017-04-09 18:43:46', '2017-04-09 18:43:46', '', 0, 'http://localhost:8080/obsidian/?post_type=events&#038;p=1894', 0, 'events', '', 0),
(1895, 1, '2017-04-09 19:12:11', '2017-04-09 19:12:11', '', 'POP – Saturday @29 April 2017', '', 'publish', 'closed', 'closed', '', 'pop-saturday-29-april-2017', '', '', '2017-04-09 19:15:53', '2017-04-09 19:15:53', '', 0, 'http://localhost:8080/obsidian/?p=1895', 3, 'nav_menu_item', '', 0),
(1896, 1, '2017-04-09 19:12:12', '2017-04-09 19:12:12', '', 'D&B – Friday @28 April 2017', '', 'publish', 'closed', 'closed', '', 'db-friday-28-april-2017', '', '', '2017-04-09 19:15:52', '2017-04-09 19:15:52', '', 0, 'http://localhost:8080/obsidian/?p=1896', 2, 'nav_menu_item', '', 0),
(1897, 1, '2017-04-09 19:12:12', '2017-04-09 19:12:12', '', 'EDM – Thursday @27 April 2017', '', 'publish', 'closed', 'closed', '', 'edm-thursday-27-april-2017', '', '', '2017-04-09 19:15:52', '2017-04-09 19:15:52', '', 0, 'http://localhost:8080/obsidian/?p=1897', 1, 'nav_menu_item', '', 0),
(1898, 1, '2017-04-10 11:58:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-10 11:58:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/obsidian/?post_type=owl-carousel&p=1898', 0, 'owl-carousel', '', 0),
(1899, 1, '2017-04-10 12:10:32', '2017-04-10 12:10:32', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit "Send"]\n1\nObsidian Web"[your-subject]"\n[your-name] <adrian.vcch@gmail.com>\nmedia@theobsidian.co.uk\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Obsidian Website\nReply-To: [your-email]\n\n1\n\n\nObsidian "[your-subject]"\nObsidian <adrian.vcch@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Obsidian (http://localhost:8080/obsidian)\nReply-To: adrian.vcch@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-04-10 12:13:14', '2017-04-10 12:13:14', '', 0, 'http://localhost:8080/obsidian/?post_type=wpcf7_contact_form&#038;p=1899', 0, 'wpcf7_contact_form', '', 0),
(1900, 1, '2017-04-10 12:13:50', '2017-04-10 12:13:50', 'Nunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\n[contact-form-7 id="1899" title="Contact Us"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '1795-revision-v1', '', '', '2017-04-10 12:13:50', '2017-04-10 12:13:50', '', 1795, 'http://localhost:8080/obsidian/1795-revision-v1/', 0, 'revision', '', 0),
(1901, 1, '2017-04-10 12:15:45', '2017-04-10 12:15:45', 'Nunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.', 'Contact', '', 'inherit', 'closed', 'closed', '', '1795-revision-v1', '', '', '2017-04-10 12:15:45', '2017-04-10 12:15:45', '', 1795, 'http://localhost:8080/obsidian/1795-revision-v1/', 0, 'revision', '', 0),
(1902, 1, '2017-04-10 12:19:49', '2017-04-10 12:19:49', 'Nunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\n\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '1795-autosave-v1', '', '', '2017-04-10 12:19:49', '2017-04-10 12:19:49', '', 1795, 'http://localhost:8080/obsidian/1795-autosave-v1/', 0, 'revision', '', 0),
(1903, 1, '2017-04-10 12:19:56', '2017-04-10 12:19:56', 'Nunc egestas ultricies justo id dapibus. Vestibulum dignissim eget diam sed ornare. Aenean semper, mi a consequat condimentum, lectus diam porta nulla, ut auctor augue eros non purus. Curabitur eu nulla id mi feugiat luctus et et lectus. Quisque blandit elit in lorem dapibus, et ullamcorper risus mattis. Praesent erat felis, semper a nulla id, facilisis dignissim justo. Aenean ut auctor leo. In eu elit metus. Cras nec finibus lorem, quis sagittis felis.\r\n\r\n<img class="alignnone size-medium wp-image-1860" src="http://localhost:8080/obsidian/wp-content/uploads/2017/03/Logo_BlackBG_Clean_300px-300x95.png" alt="" width="300" height="95" />', 'Contact', '', 'inherit', 'closed', 'closed', '', '1795-revision-v1', '', '', '2017-04-10 12:19:56', '2017-04-10 12:19:56', '', 1795, 'http://localhost:8080/obsidian/1795-revision-v1/', 0, 'revision', '', 0),
(1904, 1, '2017-04-10 13:53:41', '2017-04-10 13:53:41', '', 'DRINKS_MENU', '', 'inherit', 'open', 'closed', '', 'drinks_menu', '', '', '2017-04-10 13:53:41', '2017-04-10 13:53:41', '', 1791, 'http://localhost:8080/obsidian/wp-content/uploads/2017/02/DRINKS_MENU-1.jpg', 0, 'attachment', 'image/jpeg', 0);

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
(176, 'Main Menu', 'main-menu', 0),
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
(193, 'external', 'external', 0),
(194, 'exclude-from-search', 'exclude-from-search', 0),
(195, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(196, 'featured', 'featured', 0),
(197, 'outofstock', 'outofstock', 0),
(198, 'rated-1', 'rated-1', 0),
(199, 'rated-2', 'rated-2', 0),
(200, 'rated-3', 'rated-3', 0),
(201, 'rated-4', 'rated-4', 0),
(202, 'rated-5', 'rated-5', 0),
(203, '1866', '1866', 0),
(204, 'EDM', 'edm', 0),
(205, 'DRUM&amp;BASS', 'drumbass', 0),
(206, 'POP', 'pop', 0),
(207, 'beautiful', 'beautiful', 0),
(208, 'clean', 'clean', 0),
(209, 'lyrical', 'lyrical', 0),
(210, 'fresh', 'fresh', 0),
(211, 'instrumental', 'instrumental', 0),
(212, 'synthetic', 'synthetic', 0),
(213, 'fluid', 'fluid', 0),
(214, 'polished', 'polished', 0),
(215, 'unpredictable', 'unpredictable', 0),
(216, 'thrilling', 'thrilling', 0),
(217, 'progressive', 'progressive', 0),
(218, 'feel-good', 'feel-good', 0),
(219, 'talented', 'talented', 0),
(220, 'radical', 'radical', 0),
(221, 'conceptual', 'conceptual', 0),
(222, 'unique', 'unique', 0),
(223, 'danceable', 'danceable', 0),
(224, 'perfect', 'perfect', 0),
(225, 'Events', 'events', 0);

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
(1851, 190, 0),
(1864, 190, 0),
(1865, 190, 0),
(1870, 203, 0),
(1871, 203, 0),
(1872, 203, 0),
(1873, 204, 0),
(1873, 207, 0),
(1873, 208, 0),
(1873, 209, 0),
(1880, 204, 0),
(1880, 210, 0),
(1880, 211, 0),
(1880, 212, 0),
(1881, 205, 0),
(1881, 219, 0),
(1881, 220, 0),
(1881, 221, 0),
(1882, 205, 0),
(1882, 213, 0),
(1882, 214, 0),
(1882, 215, 0),
(1883, 206, 0),
(1883, 216, 0),
(1883, 217, 0),
(1883, 218, 0),
(1884, 206, 0),
(1884, 222, 0),
(1884, 223, 0),
(1884, 224, 0),
(1895, 225, 0),
(1896, 225, 0),
(1897, 225, 0);

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
(181, 181, 'post_format', '', 0, 0),
(182, 182, 'post_format', '', 0, 0),
(183, 183, 'post_format', '', 0, 0),
(184, 184, 'post_format', '', 0, 0),
(185, 185, 'post_format', '', 0, 0),
(186, 186, 'post_format', '', 0, 0),
(187, 187, 'post_format', '', 0, 0),
(188, 188, 'post_format', '', 0, 0),
(189, 189, 'post_format', '', 0, 0),
(190, 190, 'product_type', '', 0, 3),
(191, 191, 'product_type', '', 0, 0),
(192, 192, 'product_type', '', 0, 0),
(193, 193, 'product_type', '', 0, 0),
(194, 194, 'product_visibility', '', 0, 0),
(195, 195, 'product_visibility', '', 0, 0),
(196, 196, 'product_visibility', '', 0, 0),
(197, 197, 'product_visibility', '', 0, 0),
(198, 198, 'product_visibility', '', 0, 0),
(199, 199, 'product_visibility', '', 0, 0),
(200, 200, 'product_visibility', '', 0, 0),
(201, 201, 'product_visibility', '', 0, 0),
(202, 202, 'product_visibility', '', 0, 0),
(203, 203, 'ml-slider', '', 0, 3),
(204, 204, 'category', '', 0, 2),
(205, 205, 'category', '', 0, 2),
(206, 206, 'category', '', 0, 2),
(207, 207, 'post_tag', '', 0, 1),
(208, 208, 'post_tag', '', 0, 1),
(209, 209, 'post_tag', '', 0, 1),
(210, 210, 'post_tag', '', 0, 1),
(211, 211, 'post_tag', '', 0, 1),
(212, 212, 'post_tag', '', 0, 1),
(213, 213, 'post_tag', '', 0, 1),
(214, 214, 'post_tag', '', 0, 1),
(215, 215, 'post_tag', '', 0, 1),
(216, 216, 'post_tag', '', 0, 1),
(217, 217, 'post_tag', '', 0, 1),
(218, 218, 'post_tag', '', 0, 1),
(219, 219, 'post_tag', '', 0, 1),
(220, 220, 'post_tag', '', 0, 1),
(221, 221, 'post_tag', '', 0, 1),
(222, 222, 'post_tag', '', 0, 1),
(223, 223, 'post_tag', '', 0, 1),
(224, 224, 'post_tag', '', 0, 1),
(225, 225, 'nav_menu', '', 0, 3);

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
(15, 1, 'session_tokens', 'a:1:{s:64:"da712de194c87810f369c4ad7c4bc8170df53d09d1fed6250764031886250bc6";a:4:{s:10:"expiration";i:1492516318;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1491306718;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '1863'),
(69, 1, 'wp_user-settings', 'editor=tinymce&hidetb=1&posts_list_mode=list&editor_plain_text_paste_warning=2&libraryContent=browse'),
(70, 1, 'wp_user-settings-time', '1491763294'),
(71, 1, 'nav_menu_recently_edited', '225'),
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
(94, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:2:{s:32:"ff1418e8cc993fe8abcfe3ce2003e5c5";a:9:{s:10:"product_id";i:1851;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:10:"line_total";d:70;s:8:"line_tax";d:0;s:13:"line_subtotal";d:70;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"69d1fc78dbda242c43ad6590368912d4";a:9:{s:10:"product_id";i:1865;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:35;s:8:"line_tax";d:0;s:13:"line_subtotal";d:35;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(95, 1, 'wysija_pref', 'YTowOnt9');

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
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
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
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
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
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(36, '1', 'a:20:{s:4:"cart";s:604:"a:2:{s:32:"ff1418e8cc993fe8abcfe3ce2003e5c5";a:9:{s:10:"product_id";i:1851;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:10:"line_total";d:70;s:8:"line_tax";d:0;s:13:"line_subtotal";d:70;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"69d1fc78dbda242c43ad6590368912d4";a:9:{s:10:"product_id";i:1865;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:35;s:8:"line_tax";d:0;s:13:"line_subtotal";d:35;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:105;s:5:"total";d:105;s:8:"subtotal";i:105;s:15:"subtotal_ex_tax";i:105;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:8:"customer";s:809:"a:24:{s:8:"postcode";s:7:"EH3 9AA";s:4:"city";s:9:"Edinburgh";s:9:"address_1";s:18:"Lothian Road 163/1";s:7:"address";s:18:"Lothian Road 163/1";s:9:"address_2";s:0:"";s:5:"state";s:9:"Edinburgh";s:7:"country";s:2:"GB";s:17:"shipping_postcode";s:7:"EH3 9AA";s:13:"shipping_city";s:9:"Edinburgh";s:18:"shipping_address_1";s:18:"Lothian Road 163/1";s:16:"shipping_address";s:18:"Lothian Road 163/1";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:9:"Edinburgh";s:16:"shipping_country";s:2:"GB";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;s:10:"first_name";s:6:"Adrian";s:9:"last_name";s:7:"Camacho";s:7:"company";s:0:"";s:5:"phone";s:11:"07774001976";s:5:"email";s:21:"adrian.vcch@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:21:"chosen_payment_method";s:3:"cod";}', 1491915052);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_campaign`
--

CREATE TABLE `wp_wysija_campaign` (
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_campaign`
--

INSERT INTO `wp_wysija_campaign` (`campaign_id`, `name`, `description`) VALUES
(1, '5 Minute User Guide', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_campaign_list`
--

CREATE TABLE `wp_wysija_campaign_list` (
  `list_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `filter` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_campaign_list`
--

INSERT INTO `wp_wysija_campaign_list` (`list_id`, `campaign_id`, `filter`) VALUES
(1, 1, NULL),
(2, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_custom_field`
--

CREATE TABLE `wp_wysija_custom_field` (
  `id` mediumint(9) NOT NULL,
  `name` tinytext NOT NULL,
  `type` tinytext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email`
--

CREATE TABLE `wp_wysija_email` (
  `email_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `body` longtext,
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `modified_at` int(10) UNSIGNED DEFAULT NULL,
  `sent_at` int(10) UNSIGNED DEFAULT NULL,
  `from_email` varchar(250) DEFAULT NULL,
  `from_name` varchar(250) DEFAULT NULL,
  `replyto_email` varchar(250) DEFAULT NULL,
  `replyto_name` varchar(250) DEFAULT NULL,
  `attachments` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `number_sent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_opened` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_clicked` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_unsub` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_bounce` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_forward` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text,
  `wj_data` longtext,
  `wj_styles` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_email`
--

INSERT INTO `wp_wysija_email` (`email_id`, `campaign_id`, `subject`, `body`, `created_at`, `modified_at`, `sent_at`, `from_email`, `from_name`, `replyto_email`, `replyto_name`, `attachments`, `status`, `type`, `number_sent`, `number_opened`, `number_clicked`, `number_unsub`, `number_bounce`, `number_forward`, `params`, `wj_data`, `wj_styles`) VALUES
(1, 1, '5 Minute User Guide', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml"  >\n<head>\n    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />\n    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>\n    <title>5 Minute User Guide</title>\n    <style type="text/css">body {\n        width:100% !important;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        margin:0;\n        padding:0;\n    }\n\n    body,table,td,p,a,li,blockquote{\n        -ms-text-size-adjust:100%;\n        -webkit-text-size-adjust:100%;\n    }\n\n    .ReadMsgBody{\n        width:100%;\n    }.ExternalClass {width:100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}#backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important; background:#e8e8e8;}img {\n        outline:none;\n        text-decoration:none;\n        -ms-interpolation-mode: bicubic;\n    }\n    a img {border:none;}\n    .image_fix {display:block;}p {\n        font-family: "Arial";\n        font-size: 16px;\n        line-height: 150%;\n        margin: 1em 0;\n        padding: 0;\n    }h1,h2,h3,h4,h5,h6{\n        margin:0;\n        padding:0;\n    }h1 {\n        color:#000000 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:40px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h2 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:30px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h3 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:24px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }table td {border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt;}table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }a {\n        color:#4a91b0;\n        word-wrap:break-word;\n    }\n    #outlook a {padding:0;}\n    .yshortcuts { color:#4a91b0; }\n\n    #wysija_wrapper {\n        background:#e8e8e8;\n        color:#000000;\n        font-family:"Arial";\n        font-size:16px;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        \n    }\n\n    .wysija_header_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_block {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        background:#ffffff;\n    }\n\n    .wysija_footer_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_viewbrowser_container, .wysija_viewbrowser_container a {\n        font-family: "Arial" !important;\n        font-size: 12px !important;\n        color: #000000 !important;\n    }\n    .wysija_unsubscribe_container, .wysija_unsubscribe_container a {\n        text-align:center;\n        color: #000000 !important;\n        font-size:12px;\n    }\n    .wysija_viewbrowser_container a, .wysija_unsubscribe_container a {\n        text-decoration:underline;\n    }\n    .wysija_list_item {\n        margin:0;\n    }@media only screen and (max-device-width: 480px), screen and (max-width: 480px) {a[href^="tel"], a[href^="sms"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }body, table, td, p, a, li, blockquote { -webkit-text-size-adjust:none !important; }body{ width:100% !important; min-width:100% !important; }\n    }@media only screen and (min-device-width: 768px) and (max-device-width: 1024px), screen and (min-width: 768px) and (max-width: 1024px) {a[href^="tel"],\n        a[href^="sms"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }\n    }\n\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\n    }@media only screen and (-webkit-device-pixel-ratio:.75){}\n    @media only screen and (-webkit-device-pixel-ratio:1){}\n    @media only screen and (-webkit-device-pixel-ratio:1.5){}</style><!--[if IEMobile 7]>\n<style type="text/css">\n\n</style>\n<![endif]--><!--[if gte mso 9]>\n<style type="text/css">.wysija_image_container {\n        padding-top:0 !important;\n    }\n    .wysija_image_placeholder {\n        mso-text-raise:0;\n        mso-table-lspace:0;\n        mso-table-rspace:0;\n        margin-bottom: 0 !important;\n    }\n    .wysija_block .wysija_image_placeholder {\n        margin:2px 1px 0 1px !important;\n    }\n    p {\n        line-height: 110% !important;\n    }\n    h1, h2, h3 {\n        line-height: 110% !important;\n        margin:0 !important;\n        padding: 0 !important;\n    }\n</style>\n<![endif]-->\n\n<!--[if gte mso 15]>\n<style type="text/css">table { font-size:1px; mso-line-height-alt:0; line-height:0; mso-margin-top-alt:0; }\n    tr { font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px; }\n</style>\n<![endif]-->\n\n</head>\n<body bgcolor="#e8e8e8" yahoo="fix">\n    <span style="margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;display:block;background:#e8e8e8;">\n    <table width="100%" cellpadding="0" cellspacing="0" border="0" id="wysija_wrapper">\n        <tr>\n            <td valign="top" align="center">\n                <table width="600" cellpadding="0" cellspacing="0" border="0" align="center">\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"   >\n                            <p class="wysija_viewbrowser_container" style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;" >Display problems? <a style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;" href="[view_in_browser_link]" target="_blank">View this newsletter in your browser.</a></p>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center">\n                            \n<table class="wysija_header" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n <td height="1" align="center" class="wysija_header_container" style="font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;" >\n \n <img width="600" height="72" src="http://localhost:8080/obsidian/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/header.png" border="0" alt="" class="image_fix" style="width:600px; height:72px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="left">\n                            \n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container center" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 1:</strong> hey, click on this text!</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">To edit, simply click on this block of text.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://localhost:8080/obsidian/wp-content/uploads/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container center" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 2:</strong> play with this image</h2></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n \n \n <table style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;" width="1%" height="190" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td class="wysija_image_container left" style="border: 0;border-collapse: collapse;border: 1px solid #ffffff;display: block;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 10px;padding-bottom: 0;padding-left: 0;" width="1%" height="190" valign="top">\n <div align="left" class="wysija_image_placeholder left" style="height:190px;width:281px;border: 0;display: block;margin-top: 0;margin-right: 10px;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;" >\n \n <img width="281" height="190" src="http://localhost:8080/obsidian/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/pigeon.png" border="0" alt="" class="image_fix" style="width:281px; height:190px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n </table>\n\n <div class="wysija_text_container"><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Position your mouse over the image to the left.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://localhost:8080/obsidian/wp-content/uploads/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container center" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 3:</strong> drop content here</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Drag and drop <strong>text, posts, dividers.</strong> Look on the right!</p><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">You can even <strong>social bookmarks</strong> like these:</p></div>\n </td>\n \n </tr>\n</table>\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n <td class="wysija_gallery_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" >\n <table class="wysija_gallery_table center" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;text-align: center;margin-top: 0;margin-right: auto;margin-bottom: 0;margin-left: auto;" width="184" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="http://www.facebook.com/mailpoetplugin"><img src="http://localhost:8080/obsidian/wp-content/uploads/wysija/bookmarks/medium/02/facebook.png" border="0" alt="Facebook" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="http://www.twitter.com/mail_poet"><img src="http://localhost:8080/obsidian/wp-content/uploads/wysija/bookmarks/medium/02/twitter.png" border="0" alt="Twitter" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="https://plus.google.com/+Mailpoet"><img src="http://localhost:8080/obsidian/wp-content/uploads/wysija/bookmarks/medium/02/google.png" border="0" alt="Google" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n </tr>\n </table>\n </td>\n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://localhost:8080/obsidian/wp-content/uploads/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container center" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 4:</strong> and the footer?</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Change the footer''s content in MailPoet''s <strong>Settings</strong> page.</p></div>\n </td>\n \n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"   >\n                            \n<table class="wysija_footer" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n <td height="1" align="center" class="wysija_footer_container" style="font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;" >\n \n <img width="600" height="46" src="http://localhost:8080/obsidian/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/footer.png" border="0" alt="" class="image_fix" style="width:600px; height:46px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"  >\n                            <p class="wysija_unsubscribe_container" style="font-family: Verdana, Geneva, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;" ><a style="color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;" href="[unsubscribe_link]" target="_blank">Unsubscribe</a>&nbsp;-&nbsp;<a style="color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;" href="[subscriptions_link]" target="_blank">Edit your subscription</a><br /><br /></p>\n                        </td>\n                    </tr>\n                    \n                </table>\n            </td>\n        </tr>\n    </table>\n    </span>\n</body>\n</html>', 1488818219, 1488818345, NULL, 'info@localhost', 'admin', 'info@localhost', 'admin', NULL, 0, 2, 0, 0, 0, 0, 0, 0, 'YToyOntzOjE0OiJxdWlja3NlbGVjdGlvbiI7YToxOntzOjY6IndwLTMwMSI7YTo1OntzOjEwOiJpZGVudGlmaWVyIjtzOjY6IndwLTMwMSI7czo1OiJ3aWR0aCI7aToyODE7czo2OiJoZWlnaHQiO2k6MTkwO3M6MzoidXJsIjtzOjExMzoiaHR0cDovL2xvY2FsaG9zdDo4MDgwL29ic2lkaWFuL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL3BpZ2Vvbi5wbmciO3M6OToidGh1bWJfdXJsIjtzOjEyMToiaHR0cDovL2xvY2FsaG9zdDo4MDgwL29ic2lkaWFuL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL3BpZ2Vvbi0xNTB4MTUwLnBuZyI7fX1zOjY6ImF1dG9ubCI7YToxMTp7czo1OiJldmVudCI7czoxMjoibmV3LWFydGljbGVzIjtzOjEyOiJ3aGVuLWFydGljbGUiO3M6NToiZGFpbHkiO3M6MTU6InN1YnNjcmliZXRvbGlzdCI7czoxOiIxIjtzOjU6InJvbGVzIjtzOjM6ImFueSI7czoxMToibnVtYmVyYWZ0ZXIiO3M6MDoiIjtzOjEyOiJudW1iZXJvZndoYXQiO3M6OToiaW1tZWRpYXRlIjtzOjg6ImRheWV2ZXJ5IjtzOjE6IjEiO3M6NzoiZGF5bmFtZSI7czo2OiJtb25kYXkiO3M6OToiZGF5bnVtYmVyIjtzOjE6IjEiO3M6NDoidGltZSI7czo4OiIwMDowMDowMCI7czo4OiJuZXh0U2VuZCI7aToxNDg4ODQ0ODAwO319', 'YTo0OntzOjc6InZlcnNpb24iO3M6MzoiMi4zIjtzOjY6ImhlYWRlciI7YTo1OntzOjQ6InRleHQiO047czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMTM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9vYnNpZGlhbi93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9oZWFkZXIucG5nIjtzOjU6IndpZHRoIjtpOjYwMDtzOjY6ImhlaWdodCI7aTo3MjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6Njoic3RhdGljIjtiOjA7fXM6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDtzOjQ6InR5cGUiO3M6NjoiaGVhZGVyIjt9czo0OiJib2R5IjthOjk6e3M6NzoiYmxvY2stMSI7YTo3OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czoxNDg6IlBHZ3lQanh6ZEhKdmJtYytVM1JsY0NBeE9qd3ZjM1J5YjI1blBpQm9aWGtzSUdOc2FXTnJJRzl1SUhSb2FYTWdkR1Y0ZENFOEwyZ3lQanh3UGxSdklHVmthWFFzSUhOcGJYQnNlU0JqYkdsamF5QnZiaUIwYUdseklHSnNiMk5ySUc5bUlIUmxlSFF1UEM5d1BnPT0iO31zOjU6ImltYWdlIjtOO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDtzOjg6InBvc2l0aW9uIjtpOjE7czo0OiJ0eXBlIjtzOjc6ImNvbnRlbnQiO3M6MTY6ImJhY2tncm91bmRfY29sb3IiO047fXM6NzoiYmxvY2stMiI7YTo2OntzOjM6InNyYyI7czo3NToiaHR0cDovL2xvY2FsaG9zdDo4MDgwL29ic2lkaWFuL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvZGl2aWRlcnMvc29saWQuanBnIjtzOjU6IndpZHRoIjtpOjU2NDtzOjY6ImhlaWdodCI7aToxO3M6ODoicG9zaXRpb24iO2k6MjtzOjQ6InR5cGUiO3M6NzoiZGl2aWRlciI7czoxNjoiYmFja2dyb3VuZF9jb2xvciI7Tjt9czo3OiJibG9jay0zIjthOjc6e3M6NDoidGV4dCI7YToxOntzOjU6InZhbHVlIjtzOjcyOiJQR2d5UGp4emRISnZibWMrVTNSbGNDQXlPand2YzNSeWIyNW5QaUJ3YkdGNUlIZHBkR2dnZEdocGN5QnBiV0ZuWlR3dmFESSsiO31zOjU6ImltYWdlIjtOO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDtzOjg6InBvc2l0aW9uIjtpOjM7czo0OiJ0eXBlIjtzOjc6ImNvbnRlbnQiO3M6MTY6ImJhY2tncm91bmRfY29sb3IiO047fXM6NzoiYmxvY2stNCI7YTo3OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czo3MjoiUEhBK1VHOXphWFJwYjI0Z2VXOTFjaUJ0YjNWelpTQnZkbVZ5SUhSb1pTQnBiV0ZuWlNCMGJ5QjBhR1VnYkdWbWRDNDhMM0ErIjt9czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMTM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9vYnNpZGlhbi93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9waWdlb24ucG5nIjtzOjU6IndpZHRoIjtpOjI4MTtzOjY6ImhlaWdodCI7aToxOTA7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo2OiJzdGF0aWMiO2I6MDt9czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo2OiJzdGF0aWMiO2I6MDtzOjg6InBvc2l0aW9uIjtpOjQ7czo0OiJ0eXBlIjtzOjc6ImNvbnRlbnQiO3M6MTY6ImJhY2tncm91bmRfY29sb3IiO047fXM6NzoiYmxvY2stNSI7YTo2OntzOjM6InNyYyI7czo3NToiaHR0cDovL2xvY2FsaG9zdDo4MDgwL29ic2lkaWFuL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvZGl2aWRlcnMvc29saWQuanBnIjtzOjU6IndpZHRoIjtpOjU2NDtzOjY6ImhlaWdodCI7aToxO3M6ODoicG9zaXRpb24iO2k6NTtzOjQ6InR5cGUiO3M6NzoiZGl2aWRlciI7czoxNjoiYmFja2dyb3VuZF9jb2xvciI7Tjt9czo3OiJibG9jay02IjthOjc6e3M6NDoidGV4dCI7YToxOntzOjU6InZhbHVlIjtzOjI2MDoiUEdneVBqeHpkSEp2Ym1jK1UzUmxjQ0F6T2p3dmMzUnliMjVuUGlCa2NtOXdJR052Ym5SbGJuUWdhR1Z5WlR3dmFESStQSEErUkhKaFp5QmhibVFnWkhKdmNDQThjM1J5YjI1blBuUmxlSFFzSUhCdmMzUnpMQ0JrYVhacFpHVnljeTQ4TDNOMGNtOXVaejRnVEc5dmF5QnZiaUIwYUdVZ2NtbG5hSFFoUEM5d1BqeHdQbGx2ZFNCallXNGdaWFpsYmlBOGMzUnliMjVuUG5OdlkybGhiQ0JpYjI5cmJXRnlhM004TDNOMGNtOXVaejRnYkdsclpTQjBhR1Z6WlRvOEwzQSsiO31zOjU6ImltYWdlIjtOO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDtzOjg6InBvc2l0aW9uIjtpOjY7czo0OiJ0eXBlIjtzOjc6ImNvbnRlbnQiO3M6MTY6ImJhY2tncm91bmRfY29sb3IiO047fXM6NzoiYmxvY2stNyI7YTo2OntzOjU6IndpZHRoIjtpOjE4NDtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NToiaXRlbXMiO2E6Mzp7aTowO2E6Nzp7czozOiJzcmMiO3M6ODk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9vYnNpZGlhbi93cC1jb250ZW50L3VwbG9hZHMvd3lzaWphL2Jvb2ttYXJrcy9tZWRpdW0vMDIvZmFjZWJvb2sucG5nIjtzOjU6IndpZHRoIjtpOjMyO3M6NjoiaGVpZ2h0IjtpOjMyO3M6MzoidXJsIjtzOjM4OiJodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9tYWlscG9ldHBsdWdpbiI7czozOiJhbHQiO3M6ODoiRmFjZWJvb2siO3M6OToiY2VsbFdpZHRoIjtpOjYxO3M6MTA6ImNlbGxIZWlnaHQiO2k6MzI7fWk6MTthOjc6e3M6Mzoic3JjIjtzOjg4OiJodHRwOi8vbG9jYWxob3N0OjgwODAvb2JzaWRpYW4vd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9ib29rbWFya3MvbWVkaXVtLzAyL3R3aXR0ZXIucG5nIjtzOjU6IndpZHRoIjtpOjMyO3M6NjoiaGVpZ2h0IjtpOjMyO3M6MzoidXJsIjtzOjMyOiJodHRwOi8vd3d3LnR3aXR0ZXIuY29tL21haWxfcG9ldCI7czozOiJhbHQiO3M6NzoiVHdpdHRlciI7czo5OiJjZWxsV2lkdGgiO2k6NjE7czoxMDoiY2VsbEhlaWdodCI7aTozMjt9aToyO2E6Nzp7czozOiJzcmMiO3M6ODc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9vYnNpZGlhbi93cC1jb250ZW50L3VwbG9hZHMvd3lzaWphL2Jvb2ttYXJrcy9tZWRpdW0vMDIvZ29vZ2xlLnBuZyI7czo1OiJ3aWR0aCI7aTozMjtzOjY6ImhlaWdodCI7aTozMjtzOjM6InVybCI7czozMzoiaHR0cHM6Ly9wbHVzLmdvb2dsZS5jb20vK01haWxwb2V0IjtzOjM6ImFsdCI7czo2OiJHb29nbGUiO3M6OToiY2VsbFdpZHRoIjtpOjYxO3M6MTA6ImNlbGxIZWlnaHQiO2k6MzI7fX1zOjg6InBvc2l0aW9uIjtpOjc7czo0OiJ0eXBlIjtzOjc6ImdhbGxlcnkiO3M6MTY6ImJhY2tncm91bmRfY29sb3IiO047fXM6NzoiYmxvY2stOCI7YTo2OntzOjM6InNyYyI7czo3NToiaHR0cDovL2xvY2FsaG9zdDo4MDgwL29ic2lkaWFuL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvZGl2aWRlcnMvc29saWQuanBnIjtzOjU6IndpZHRoIjtpOjU2NDtzOjY6ImhlaWdodCI7aToxO3M6ODoicG9zaXRpb24iO2k6ODtzOjQ6InR5cGUiO3M6NzoiZGl2aWRlciI7czoxNjoiYmFja2dyb3VuZF9jb2xvciI7Tjt9czo3OiJibG9jay05IjthOjc6e3M6NDoidGV4dCI7YToxOntzOjU6InZhbHVlIjtzOjE3MjoiUEdneVBqeHpkSEp2Ym1jK1UzUmxjQ0EwT2p3dmMzUnliMjVuUGlCaGJtUWdkR2hsSUdadmIzUmxjajg4TDJneVBqeHdQa05vWVc1blpTQjBhR1VnWm05dmRHVnlKM01nWTI5dWRHVnVkQ0JwYmlCTllXbHNVRzlsZENkeklEeHpkSEp2Ym1jK1UyVjBkR2x1WjNNOEwzTjBjbTl1Wno0Z2NHRm5aUzQ4TDNBKyI7fXM6NToiaW1hZ2UiO047czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6OTtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7czoxNjoiYmFja2dyb3VuZF9jb2xvciI7Tjt9fXM6NjoiZm9vdGVyIjthOjU6e3M6NDoidGV4dCI7TjtzOjU6ImltYWdlIjthOjU6e3M6Mzoic3JjIjtzOjExMzoiaHR0cDovL2xvY2FsaG9zdDo4MDgwL29ic2lkaWFuL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL2Zvb3Rlci5wbmciO3M6NToid2lkdGgiO2k6NjAwO3M6NjoiaGVpZ2h0IjtpOjQ2O3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDt9czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjY6InN0YXRpYyI7YjowO3M6NDoidHlwZSI7czo2OiJmb290ZXIiO319', 'YToxMDp7czo0OiJodG1sIjthOjE6e3M6MTA6ImJhY2tncm91bmQiO3M6NjoiZThlOGU4Ijt9czo2OiJoZWFkZXIiO2E6MTp7czoxMDoiYmFja2dyb3VuZCI7czo2OiJlOGU4ZTgiO31zOjQ6ImJvZHkiO2E6NDp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjU6IkFyaWFsIjtzOjQ6InNpemUiO2k6MTY7czoxMDoiYmFja2dyb3VuZCI7czo2OiJmZmZmZmYiO31zOjY6ImZvb3RlciI7YToxOntzOjEwOiJiYWNrZ3JvdW5kIjtzOjY6ImU4ZThlOCI7fXM6MjoiaDEiO2E6Mzp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjEyOiJUcmVidWNoZXQgTVMiO3M6NDoic2l6ZSI7aTo0MDt9czoyOiJoMiI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjQyNDI0MiI7czo2OiJmYW1pbHkiO3M6MTI6IlRyZWJ1Y2hldCBNUyI7czo0OiJzaXplIjtpOjMwO31zOjI6ImgzIjthOjM6e3M6NToiY29sb3IiO3M6NjoiNDI0MjQyIjtzOjY6ImZhbWlseSI7czoxMjoiVHJlYnVjaGV0IE1TIjtzOjQ6InNpemUiO2k6MjQ7fXM6MToiYSI7YToyOntzOjU6ImNvbG9yIjtzOjY6IjRhOTFiMCI7czo5OiJ1bmRlcmxpbmUiO2I6MDt9czoxMToidW5zdWJzY3JpYmUiO2E6MTp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO31zOjExOiJ2aWV3YnJvd3NlciI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjAwMDAwMCI7czo2OiJmYW1pbHkiO3M6NToiQXJpYWwiO3M6NDoic2l6ZSI7aToxMjt9fQ=='),
(2, 0, 'Confirm your subscription to Obsidian', 'Hello!\n\nHurray! You''ve subscribed to our site.\nWe need you to activate your subscription to the list(s): [lists_to_confirm] by clicking the link below: \n\n[activation_link]Click here to confirm your subscription.[/activation_link]\n\nThank you,\n\n The team!\n', 1488818221, 1488818221, NULL, 'info@localhost', 'admin', 'info@localhost', 'admin', NULL, 99, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email_user_stat`
--

CREATE TABLE `wp_wysija_email_user_stat` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `email_id` int(10) UNSIGNED NOT NULL,
  `sent_at` int(10) UNSIGNED NOT NULL,
  `opened_at` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email_user_url`
--

CREATE TABLE `wp_wysija_email_user_url` (
  `email_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `url_id` int(10) UNSIGNED NOT NULL,
  `clicked_at` int(10) UNSIGNED DEFAULT NULL,
  `number_clicked` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_form`
--

CREATE TABLE `wp_wysija_form` (
  `form_id` int(10) UNSIGNED NOT NULL,
  `name` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `styles` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `subscribed` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_form`
--

INSERT INTO `wp_wysija_form` (`form_id`, `name`, `data`, `styles`, `subscribed`) VALUES
(1, 'Subscribe to our Newsletter', 'YTo0OntzOjc6InZlcnNpb24iO3M6MzoiMC40IjtzOjg6InNldHRpbmdzIjthOjQ6e3M6MTA6Im9uX3N1Y2Nlc3MiO3M6NzoibWVzc2FnZSI7czoxNToic3VjY2Vzc19tZXNzYWdlIjtzOjY1OiJDaGVjayB5b3VyIGluYm94IG9yIHNwYW0gZm9sZGVyIG5vdyB0byBjb25maXJtIHlvdXIgc3Vic2NyaXB0aW9uLiI7czo1OiJsaXN0cyI7YToxOntpOjA7czoxOiIxIjt9czoxNzoibGlzdHNfc2VsZWN0ZWRfYnkiO3M6NToiYWRtaW4iO31zOjQ6ImJvZHkiO2E6Mjp7aTowO2E6NDp7czo0OiJuYW1lIjtzOjU6IkVtYWlsIjtzOjQ6InR5cGUiO3M6NToiaW5wdXQiO3M6NToiZmllbGQiO3M6NToiZW1haWwiO3M6NjoicGFyYW1zIjthOjI6e3M6NToibGFiZWwiO3M6NToiRW1haWwiO3M6ODoicmVxdWlyZWQiO2I6MTt9fWk6MTthOjQ6e3M6NDoibmFtZSI7czo2OiJTdWJtaXQiO3M6NDoidHlwZSI7czo2OiJzdWJtaXQiO3M6NToiZmllbGQiO3M6Njoic3VibWl0IjtzOjY6InBhcmFtcyI7YToxOntzOjU6ImxhYmVsIjtzOjEwOiJTdWJzY3JpYmUhIjt9fX1zOjc6ImZvcm1faWQiO2k6MTt9', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_list`
--

CREATE TABLE `wp_wysija_list` (
  `list_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `namekey` varchar(255) DEFAULT NULL,
  `description` text,
  `unsub_mail_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `welcome_mail_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_enabled` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_public` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `ordering` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_list`
--

INSERT INTO `wp_wysija_list` (`list_id`, `name`, `namekey`, `description`, `unsub_mail_id`, `welcome_mail_id`, `is_enabled`, `is_public`, `created_at`, `ordering`) VALUES
(1, 'My first list', 'my-first-list', 'The list created automatically on install of the MailPoet.', 0, 0, 1, 1, 1488818218, 0),
(2, 'WordPress Users', 'users', 'The list created automatically on import of the plugin''s subscribers : "WordPress', 0, 0, 0, 0, 1488818219, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_queue`
--

CREATE TABLE `wp_wysija_queue` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `email_id` int(10) UNSIGNED NOT NULL,
  `send_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `number_try` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_url`
--

CREATE TABLE `wp_wysija_url` (
  `url_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_url_mail`
--

CREATE TABLE `wp_wysija_url_mail` (
  `email_id` int(11) NOT NULL,
  `url_id` int(10) UNSIGNED NOT NULL,
  `unique_clicked` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_clicked` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user`
--

CREATE TABLE `wp_wysija_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `wpuser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL,
  `confirmed_ip` varchar(100) NOT NULL DEFAULT '0',
  `confirmed_at` int(10) UNSIGNED DEFAULT NULL,
  `last_opened` int(10) UNSIGNED DEFAULT NULL,
  `last_clicked` int(10) UNSIGNED DEFAULT NULL,
  `keyuser` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `domain` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user`
--

INSERT INTO `wp_wysija_user` (`user_id`, `wpuser_id`, `email`, `firstname`, `lastname`, `ip`, `confirmed_ip`, `confirmed_at`, `last_opened`, `last_clicked`, `keyuser`, `created_at`, `status`, `domain`) VALUES
(1, 1, 'adrian.vcch@gmail.com', 'Obsidian', '', '', '0', NULL, NULL, NULL, '429472ad77a75bda27b18dc59ff1b61d', 1488818220, 1, 'gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_field`
--

CREATE TABLE `wp_wysija_user_field` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `column_name` varchar(250) NOT NULL DEFAULT '',
  `type` tinyint(3) UNSIGNED DEFAULT '0',
  `values` text,
  `default` varchar(250) NOT NULL DEFAULT '',
  `is_required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `error_message` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user_field`
--

INSERT INTO `wp_wysija_user_field` (`field_id`, `name`, `column_name`, `type`, `values`, `default`, `is_required`, `error_message`) VALUES
(1, 'First name', 'firstname', 0, NULL, '', 0, 'Please enter first name'),
(2, 'Last name', 'lastname', 0, NULL, '', 0, 'Please enter last name');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_history`
--

CREATE TABLE `wp_wysija_user_history` (
  `history_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email_id` int(10) UNSIGNED DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT '',
  `details` text,
  `executed_at` int(10) UNSIGNED DEFAULT NULL,
  `executed_by` int(10) UNSIGNED DEFAULT NULL,
  `source` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_list`
--

CREATE TABLE `wp_wysija_user_list` (
  `list_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sub_date` int(10) UNSIGNED DEFAULT '0',
  `unsub_date` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user_list`
--

INSERT INTO `wp_wysija_user_list` (`list_id`, `user_id`, `sub_date`, `unsub_date`) VALUES
(1, 1, 1488818218, 0),
(2, 1, 1488818220, 0);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_newsletter_sent`
--
ALTER TABLE `wp_newsletter_sent`
  ADD PRIMARY KEY (`email_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `user_id` (`user_id`);

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
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

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
  ADD KEY `tax_rate_country` (`tax_rate_country`),
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
-- Indexes for table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `wp_wysija_campaign_list`
--
ALTER TABLE `wp_wysija_campaign_list`
  ADD PRIMARY KEY (`list_id`,`campaign_id`);

--
-- Indexes for table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `wp_wysija_email_user_stat`
--
ALTER TABLE `wp_wysija_email_user_stat`
  ADD PRIMARY KEY (`user_id`,`email_id`);

--
-- Indexes for table `wp_wysija_email_user_url`
--
ALTER TABLE `wp_wysija_email_user_url`
  ADD PRIMARY KEY (`user_id`,`email_id`,`url_id`);

--
-- Indexes for table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `wp_wysija_queue`
--
ALTER TABLE `wp_wysija_queue`
  ADD PRIMARY KEY (`user_id`,`email_id`),
  ADD KEY `SENT_AT_INDEX` (`send_at`);

--
-- Indexes for table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
  ADD PRIMARY KEY (`url_id`);

--
-- Indexes for table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
  ADD PRIMARY KEY (`email_id`,`url_id`);

--
-- Indexes for table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `EMAIL_UNIQUE` (`email`);

--
-- Indexes for table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `wp_wysija_user_list`
--
ALTER TABLE `wp_wysija_user_list`
  ADD PRIMARY KEY (`list_id`,`user_id`);

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
-- AUTO_INCREMENT for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1412;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1483;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1905;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
  MODIFY `campaign_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
  MODIFY `email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
  MODIFY `form_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
  MODIFY `list_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
  MODIFY `url_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
  MODIFY `field_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
