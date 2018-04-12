-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2018 at 02:59 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slutprojekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `jk_commentmeta`
--

CREATE TABLE `jk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jk_comments`
--

CREATE TABLE `jk_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `jk_comments`
--

INSERT INTO `jk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'En kommentarsförfattare', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-04 14:13:33', '2017-12-04 13:13:33', 'Hej, Det här är en kommentar.\nFör att komma igång med moderering, redigering och radering av kommentarer, besök sidan för kommentarer i adminpanelen.\nKommentarsförfattares visningsbilder kommer från <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jk_links`
--

CREATE TABLE `jk_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jk_options`
--

CREATE TABLE `jk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `jk_options`
--

INSERT INTO `jk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/slutprojekt', 'yes'),
(2, 'home', 'http://localhost/slutprojekt', 'yes'),
(3, 'blogname', 'Slut Projekt', 'yes'),
(4, 'blogdescription', 'En till WordPress-webbplats', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nundssfdfi@hotmail.com', 'yes'),
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
(22, 'posts_per_page', '6', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'Y-m-d H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:18:\"bilar_post_type/?$\";s:35:\"index.php?post_type=bilar_post_type\";s:48:\"bilar_post_type/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=bilar_post_type&feed=$matches[1]\";s:43:\"bilar_post_type/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=bilar_post_type&feed=$matches[1]\";s:35:\"bilar_post_type/page/([0-9]{1,})/?$\";s:53:\"index.php?post_type=bilar_post_type&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"bilar_post_type/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"bilar_post_type/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"bilar_post_type/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"bilar_post_type/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"bilar_post_type/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"bilar_post_type/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"bilar_post_type/(.+?)/embed/?$\";s:48:\"index.php?bilar_post_type=$matches[1]&embed=true\";s:34:\"bilar_post_type/(.+?)/trackback/?$\";s:42:\"index.php?bilar_post_type=$matches[1]&tb=1\";s:54:\"bilar_post_type/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?bilar_post_type=$matches[1]&feed=$matches[2]\";s:49:\"bilar_post_type/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?bilar_post_type=$matches[1]&feed=$matches[2]\";s:42:\"bilar_post_type/(.+?)/page/?([0-9]{1,})/?$\";s:55:\"index.php?bilar_post_type=$matches[1]&paged=$matches[2]\";s:49:\"bilar_post_type/(.+?)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?bilar_post_type=$matches[1]&cpage=$matches[2]\";s:38:\"bilar_post_type/(.+?)(?:/([0-9]+))?/?$\";s:54:\"index.php?bilar_post_type=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:38:\"bilar-post-type/jk-bilar-post-type.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:25:\"fakerpress/fakerpress.php\";i:4;s:41:\"sassy-social-share/sassy-social-share.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:66:\"C:\\MAMP\\htdocs\\slutprojekt/wp-content/themes/slutprojekt/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'slutprojekt', 'yes'),
(41, 'stylesheet', 'slutprojekt', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Kategorier\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Stockholm', 'yes'),
(83, 'page_for_posts', '11', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'jk_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'sv_SE', 'yes'),
(95, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:4:\"Sök\";}i:3;a:1:{s:5:\"title\";s:4:\"Sök\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:5:\"Datum\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:10:\"archives-3\";i:1;s:12:\"categories-3\";i:2;s:7:\"pages-2\";i:3;s:8:\"search-3\";}s:7:\"widget1\";a:4:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:7:\"pages-3\";i:3;s:8:\"search-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:3:{i:2;a:3:{s:5:\"title\";s:5:\"Sidor\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}i:3;a:3:{s:5:\"title\";s:5:\"Sidor\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1515806014;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515849238;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515851007;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1515660803;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:10:\"archives-3\";i:1;s:12:\"categories-3\";i:2;s:7:\"pages-2\";i:3;s:8:\"search-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}}', 'yes'),
(124, 'can_compress_scripts', '0', 'no'),
(134, 'current_theme', 'Slut Projekt', 'yes'),
(135, 'theme_mods_slutprojekt', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1515660799;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:7:\"widget1\";a:4:{i:0;s:10:\"archives-3\";i:1;s:12:\"categories-3\";i:2;s:7:\"pages-2\";i:3;s:8:\"search-3\";}}}}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(186, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(189, 'recently_activated', 'a:0:{}', 'yes'),
(192, 'acf_version', '5.6.3', 'yes'),
(246, 'heateor_sss', 'a:75:{s:24:\"horizontal_sharing_shape\";s:6:\"square\";s:23:\"horizontal_sharing_size\";s:2:\"30\";s:24:\"horizontal_sharing_width\";s:2:\"70\";s:25:\"horizontal_sharing_height\";s:2:\"35\";s:24:\"horizontal_border_radius\";s:1:\"3\";s:29:\"horizontal_font_color_default\";s:0:\"\";s:32:\"horizontal_sharing_replace_color\";s:4:\"#fff\";s:27:\"horizontal_font_color_hover\";s:0:\"\";s:38:\"horizontal_sharing_replace_color_hover\";s:4:\"#fff\";s:27:\"horizontal_bg_color_default\";s:0:\"\";s:25:\"horizontal_bg_color_hover\";s:0:\"\";s:31:\"horizontal_border_width_default\";s:0:\"\";s:31:\"horizontal_border_color_default\";s:0:\"\";s:29:\"horizontal_border_width_hover\";s:1:\"5\";s:29:\"horizontal_border_color_hover\";s:7:\"#aaaaaa\";s:22:\"vertical_sharing_shape\";s:6:\"square\";s:21:\"vertical_sharing_size\";s:2:\"40\";s:22:\"vertical_sharing_width\";s:2:\"80\";s:23:\"vertical_sharing_height\";s:2:\"40\";s:22:\"vertical_border_radius\";s:0:\"\";s:27:\"vertical_font_color_default\";s:0:\"\";s:30:\"vertical_sharing_replace_color\";s:4:\"#fff\";s:25:\"vertical_font_color_hover\";s:0:\"\";s:36:\"vertical_sharing_replace_color_hover\";s:4:\"#fff\";s:25:\"vertical_bg_color_default\";s:0:\"\";s:23:\"vertical_bg_color_hover\";s:0:\"\";s:29:\"vertical_border_width_default\";s:0:\"\";s:29:\"vertical_border_color_default\";s:0:\"\";s:27:\"vertical_border_width_hover\";s:0:\"\";s:27:\"vertical_border_color_hover\";s:0:\"\";s:10:\"hor_enable\";s:1:\"1\";s:21:\"horizontal_target_url\";s:7:\"default\";s:28:\"horizontal_target_url_custom\";s:0:\"\";s:5:\"title\";s:0:\"\";s:18:\"instagram_username\";s:0:\"\";s:20:\"comment_container_id\";s:7:\"respond\";s:23:\"horizontal_re_providers\";a:4:{i:0;s:7:\"twitter\";i:1;s:5:\"email\";i:2;s:8:\"facebook\";i:3;s:11:\"google_plus\";}s:21:\"hor_sharing_alignment\";s:4:\"left\";s:3:\"top\";s:1:\"1\";s:15:\"bilar_post_type\";s:1:\"1\";s:19:\"tweet_count_service\";s:14:\"newsharecounts\";s:15:\"horizontal_more\";s:1:\"1\";s:19:\"vertical_target_url\";s:7:\"default\";s:26:\"vertical_target_url_custom\";s:0:\"\";s:27:\"vertical_instagram_username\";s:0:\"\";s:29:\"vertical_comment_container_id\";s:7:\"respond\";s:21:\"vertical_re_providers\";a:9:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:11:\"google_plus\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:6:\"reddit\";i:6;s:9:\"delicious\";i:7;s:11:\"stumbleupon\";i:8;s:8:\"whatsapp\";}s:11:\"vertical_bg\";s:0:\"\";s:9:\"alignment\";s:4:\"left\";s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:13:\"vertical_home\";s:1:\"1\";s:13:\"vertical_post\";s:1:\"1\";s:13:\"vertical_page\";s:1:\"1\";s:28:\"vertical_tweet_count_service\";s:14:\"newsharecounts\";s:13:\"vertical_more\";s:1:\"1\";s:19:\"hide_mobile_sharing\";s:1:\"1\";s:21:\"vertical_screen_width\";s:3:\"783\";s:21:\"bottom_mobile_sharing\";s:1:\"1\";s:23:\"horizontal_screen_width\";s:3:\"783\";s:23:\"bottom_sharing_position\";s:1:\"0\";s:24:\"bottom_sharing_alignment\";s:4:\"left\";s:29:\"bottom_sharing_position_radio\";s:10:\"responsive\";s:13:\"footer_script\";s:1:\"1\";s:14:\"delete_options\";s:1:\"1\";s:31:\"share_count_cache_refresh_count\";s:2:\"10\";s:30:\"share_count_cache_refresh_unit\";s:7:\"minutes\";s:14:\"bitly_username\";s:0:\"\";s:9:\"bitly_key\";s:0:\"\";s:8:\"language\";s:5:\"sv_SE\";s:16:\"twitter_username\";s:0:\"\";s:15:\"buffer_username\";s:0:\"\";s:10:\"amp_enable\";s:1:\"1\";s:10:\"custom_css\";s:0:\"\";}', 'yes'),
(247, 'heateor_sss_version', '3.1.6', 'yes'),
(248, 'widget_heateor_sss_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(390, 'category_children', 'a:0:{}', 'yes'),
(430, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1515090066;s:7:\"version\";s:5:\"4.9.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(554, 'new_admin_email', 'nundssfdfi@hotmail.com', 'yes'),
(639, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1515663116;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:10:\"archives-3\";i:1;s:12:\"categories-3\";i:2;s:7:\"pages-2\";i:3;s:8:\"search-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(652, '_site_transient_timeout_browser_f4b342427dc93e6e5fd5c14ef1fb74ec', '1516297816', 'no'),
(653, '_site_transient_browser_f4b342427dc93e6e5fd5c14ef1fb74ec', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"57.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(658, 'auto_updater.lock', '1515740552', 'no'),
(660, 'core_updater.lock', '1515740555', 'no'),
(662, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1515783804', 'no'),
(663, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(664, '_transient_timeout_feed_28715d71ac4c9959532fa55dcd9977b7', '1515783806', 'no');
INSERT INTO `jk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(665, '_transient_feed_28715d71ac4c9959532fa55dcd9977b7', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Blog – Svenska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://sv.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Releasearkiv för WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Thu, 07 Dec 2017 17:53:20 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"sv-SE\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-42435\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"WordPress 4.9 ”Tipton” är här!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://sv.wordpress.org/2017/11/16/wordpress-4-9-tipton-ar-har/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://sv.wordpress.org/2017/11/16/wordpress-4-9-tipton-ar-har/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Nov 2017 09:06:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1023\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:366:\"För några timmar sedan släpptes WordPress version 4.9. Bland de större förbättringarna denna gång hittar vi: Ny widget: Galleri. Och dessutom finns det nu en knapp för att enkelt lägga till media i en textwidget! Förbättringar i ”Anpassaren” Det är lättare än någonsin att byta tema: I högre grad än tidigare följer widgetar och andra [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2513:\"<p>För några timmar sedan släpptes WordPress version 4.9.</p>\n<p>Bland de större förbättringarna denna gång hittar vi:</p>\n<ul>\n<li style=\"list-style-type: none\">\n<ul>\n<li>Ny widget: Galleri. Och dessutom finns det nu en knapp för att enkelt lägga till media i en textwidget!</li>\n<li>Förbättringar i ”Anpassaren”\n<ul>\n<li>Det är lättare än någonsin att byta tema: I högre grad än tidigare följer widgetar och andra inställningar med när du byter tema</li>\n<li>Tidsinställda anpassningspaket: Nu kan du via anpassaren ställa in olika ändringar i utseendet hos din webbplats som automatiskt aktiveras &#8211; t.ex. på lucia eller julafton</li>\n<li>Förhandsvisa ändringar i anpassaren till andra personer: Du kan ta fram en speciell länk för att låta någon annan person se en förhandsvisning av webbplatsens nya design!</li>\n<li>Mindre risk att design-anpassningar går förlorade: WordPress ser till att olika personers designanpassningar inte ”skriver över” varandra. Och du får en påminnelse om att spara ”utkast” till designändringar om du är på väg att missa det</li>\n</ul>\n</li>\n<li>Förbättringar för den som skriver kod direkt i WordPress\n<ul>\n<li>Syntaxmarkering av kod: I t.ex. fältet för ”Extra CSS” och i widgeten för anpassad html kommer du att se mycket bättre vad du verkligen skriver, tack vare syntaxmarkering av koden</li>\n<li>Kontroll av kod innan den läggs in i webbplatsen: När du försöker spara ändrad kod kommer WordPress att automatiskt granska koden först. Detta ger inte på långa vägar något hundrprocentigt skydd, men innebär betydligt mindre risk för att du råkar döda din webbplats t.ex. genom att missa ett semikolon någonstans</li>\n</ul>\n</li>\n<li>För utvecklare: Det finns fler godsaker under huven. Kolla in det <a href=\"https://wordpress.org/news/2017/11/tipton/\">officiella inlägget om lanseringen av version 4.9</a> för ytterligare information.</li>\n</ul>\n</li>\n</ul>\n<p>Det är enkelt att skaffa version 4.9!<br />\nOm du redan har WordPress kan du uppdatera via ”Panel – Uppdateringar”.<br />\nOm du vill nyinstallera WordPress kan du ladda ned <a href=\"https://sv.wordpress.org/txt-download/\">det svenska installationspaketet för WordPress 4.9</a>.</p>\n<p>PS! I version 4.9 har hjälpverktyget ”Blogga det här” tagits bort ur WordPress-kärnan. Men du kan enkelt installera <a href=\"https://sv.wordpress.org/plugins/press-this/\">”Press This/Blogga det här” som ett tillägg</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://sv.wordpress.org/2017/11/16/wordpress-4-9-tipton-ar-har/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Viktigt säkerhetsuppdatering av WordPress släppt (4.8.3)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://sv.wordpress.org/2017/10/31/viktigt-sakerhetsuppdatering-av-wordpress-slappt-4-8-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://sv.wordpress.org/2017/10/31/viktigt-sakerhetsuppdatering-av-wordpress-slappt-4-8-3/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Oct 2017 17:03:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1018\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:459:\"Idag, 31 oktober 2017, släpptes WordPress 4.8.3, en viktig säkerhetsuppdatering för WordPress. (Motsvarande säkerhetsuppdatering har även släppts för äldre versioner, ända tillbaks till 3.7.) Med standardinställningarna för WordPress kommer denna säkerhetsuppdatering att utföras automatiskt, men om du av någon anledning har blockerat ”mindre uppdateringar” rekommenderar vi att du så snart som möjligt uppdaterar WordPress. Det [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:486:\"<p>Idag, 31 oktober 2017, släpptes WordPress 4.8.3, en viktig säkerhetsuppdatering för WordPress. (Motsvarande säkerhetsuppdatering har även släppts för äldre versioner, ända tillbaks till 3.7.)<br />\nMed standardinställningarna för WordPress kommer denna säkerhetsuppdatering att utföras automatiskt, men om du av någon anledning har blockerat ”mindre uppdateringar” rekommenderar vi att du så snart som möjligt uppdaterar WordPress. Det tar bara någon minut!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://sv.wordpress.org/2017/10/31/viktigt-sakerhetsuppdatering-av-wordpress-slappt-4-8-3/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Tävla om biljetter till WordCamp Stockholm!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://sv.wordpress.org/2017/10/26/tavla-om-biljetter-till-wordcamp-stockholm/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://sv.wordpress.org/2017/10/26/tavla-om-biljetter-till-wordcamp-stockholm/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Oct 2017 06:51:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1012\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:122:\"Var med och tävla om tre stycken biljetter till WordCamp Stockholm (19-20 november)! Tävlingen öppen t.o.m. 5 november.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:709:\"<p>Nu är det mindre än en månad kvar till WordCamp Stockholm den 19-20 november. Det firar vi med att tävla ut tre stycken biljetter! För att vara med i tävlingen: Skriv en kommentar <a href=\"https://wpsv.se/blogg/tavla-om-biljetter-till-wordcamp-stockholm/\">på detta inlägg på vår community-webbplats wpsv.se</a> och berätta kort (1-2 meningar) om hur WordPress har haft en positiv inverkan på ditt jobb, hobby eller fritid, eller varför du gillar att använda just WordPress för dina webbplatser.</p>\n<p>Tävlingen pågår t.o.m. den 5 November. Lycka till!</p>\n<p>Läs mer om WordCamp Stockholm på: <a href=\"https://2017.stockholm.wordcamp.org/\">https://2017.stockholm.wordcamp.org/</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://sv.wordpress.org/2017/10/26/tavla-om-biljetter-till-wordcamp-stockholm/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"Hela programmet för WordCamp Stockholm klart – Sveriges officiella WordPress-konferens 19–20 november.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:136:\"https://sv.wordpress.org/2017/10/19/hela-programmet-for-wordcamp-stockholm-klart-sveriges-officiella-wordpress-konferens-19-20-november/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:144:\"https://sv.wordpress.org/2017/10/19/hela-programmet-for-wordcamp-stockholm-klart-sveriges-officiella-wordpress-konferens-19-20-november/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 14:57:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1002\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"Nu är hela programmet för WordCamp Stockholm 2017 klart. Läs mer och anmäl dig!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6525:\"<p>WordCamp Stockholm är den officiella WordPress-konferensen i Sverige 2017.</p>\n<h2>”Contributor Day” 19 november</h2>\n<p><figure id=\"attachment_1003\" style=\"max-width: 300px\" class=\"wp-caption alignright\"><img src=\"https://sv.wordpress.org/files/2017/10/Cx9XVvtXUAI3sin.jpg_large-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" class=\"size-medium wp-image-1003\" srcset=\"https://sv.wordpress.org/files/2017/10/Cx9XVvtXUAI3sin.jpg_large-300x225.jpg 300w, https://sv.wordpress.org/files/2017/10/Cx9XVvtXUAI3sin.jpg_large-768x576.jpg 768w, https://sv.wordpress.org/files/2017/10/Cx9XVvtXUAI3sin.jpg_large-1024x768.jpg 1024w, https://sv.wordpress.org/files/2017/10/Cx9XVvtXUAI3sin.jpg_large-440x330.jpg 440w, https://sv.wordpress.org/files/2017/10/Cx9XVvtXUAI3sin.jpg_large.jpg 1200w\" sizes=\"(max-width: 300px) 100vw, 300px\" /><figcaption class=\"wp-caption-text\">Så här såg det ut på Contributor Day i fjol</figcaption></figure><br />\nProgrammet inleds med en så kallad <em>Contributor Day</em> som äger rum söndagen 19 november 2017 klockan 9:30–17:00 i företaget DIBS lokaler i centrala Stockholm.</p>\n<p>Huvudtanken med en Contributor Day (ung. <em>dag för bidrag från deltagare</em>) är att vi under avslappnade former gör en insats för att utveckla WordPress och den omkringliggande gemenskapen.</p>\n<p>Vi kommer att ha tre specialiserade grupper som alla startar med en inledande presentation/introduktion och sedan går över i praktiskt arbete:</p>\n<ul>\n<li>Översättning av WordPress</li>\n<li>WordPress-utveckling baserat på ”Composer”</li>\n<li>Supportforum – att ge och få hjälp</li>\n</ul>\n<p>Dessutom kommer vi att ha ett något mer konferensliknande spår som framför allt kretsar kring WooCommerce, en populär e-handelslösning som bygger på WordPress:</p>\n<ul>\n<li>Easy-Peasy checkout for WooCommerce</li>\n<li>Making WordPress and WooCommerce Fast and Scalable</li>\n<li>WooCommerce – hands-on workshop</li>\n</ul>\n<p>Men viktigast av allt på Contributor Day är nog ändå det <em>sociala</em>: Helt enkelt att träffa andra människor som liksom du använder WordPress på olika sätt. Du kanske bara vill hänga med andra WordPress-intresserade? Eller snitsa till din egen webbplats? Här kommer du att vara omgiven av människor som gärna hjälper dig om du skulle köra fast. Och någon kanske vill sitta med och kolla hur just du får din webbplats bli som du vill ha den.</p>\n<p>För att få ut mesta möjliga av denna dag bör du ta med dig egen dator.<br />\nOm du ännu inte har ett eget konto på WordPress.org är det god idé att skapa ett konto i förväg på https://login.wordpress.org/</p>\n<p>Observera att antalet platser under söndagen är begränsat. Vi kommer att skicka ut information till alla konferensdeltagare om hur man bokar sitt deltagande.</p>\n<h2>WordPress-konferens 20 november</h2>\n<p><figure id=\"attachment_1004\" style=\"max-width: 300px\" class=\"wp-caption alignright\"><img src=\"https://sv.wordpress.org/files/2017/10/header-alt-300x186.jpg\" alt=\"\" width=\"300\" height=\"186\" class=\"size-medium wp-image-1004\" srcset=\"https://sv.wordpress.org/files/2017/10/header-alt-300x186.jpg 300w, https://sv.wordpress.org/files/2017/10/header-alt-768x477.jpg 768w, https://sv.wordpress.org/files/2017/10/header-alt-1024x637.jpg 1024w, https://sv.wordpress.org/files/2017/10/header-alt.jpg 1406w\" sizes=\"(max-width: 300px) 100vw, 300px\" /><figcaption class=\"wp-caption-text\">Bild från WordCamp Sverige 2016</figcaption></figure><br />\nPå måndagen är det sedan dags för själva konferensen, som i år genomförs i samarbete med Internetdagarna. Vi kommer att hålla till på Stockholm Waterfront Conference, precis intill Stockholms centralstation.</p>\n<p>Vi har två parallella WordPress-spår, med föreläsningar och diskussioner inom en lång rad olika ämnen som alla berör WordPress på olika sätt. Här är några exempel:</p>\n<ul>\n<li>GDPR för WordPress-användare</li>\n<li>Hur man använder man s.k. hooks och filters för att på rätt sätt lägga till nya funktioner i WordPress</li>\n<li>Användning av tillägget WooCommerce för välgörenhetsorganisationer</li>\n<li>WordPress och WooCommerce som ett verktyg för att förverkliga en företagardröm</li>\n<li>WordPress-säkerhet</li>\n<li>… och mycket mer</li>\n</ul>\n<p>Ungefär hälften av presentationerna kommer att vara på engelska, och resten på svenska. Schemat är planerat så att man ska kunna välja att gå på endast svenska eller endast engelska föreläsningar.</p>\n<p>I rasterna mellan föreläsningarna kan du träffa våra fina sponsorer och mingla med de andra konferensdeltagarna. Kom ihåg dina visitkort, du kommer att behöva dem!</p>\n<h2>Efterfest!</h2>\n<p><figure id=\"attachment_1005\" style=\"max-width: 300px\" class=\"wp-caption alignright\"><img src=\"https://sv.wordpress.org/files/2017/10/window_view_1280x960-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" class=\"size-medium wp-image-1005\" srcset=\"https://sv.wordpress.org/files/2017/10/window_view_1280x960-300x225.jpg 300w, https://sv.wordpress.org/files/2017/10/window_view_1280x960-768x576.jpg 768w, https://sv.wordpress.org/files/2017/10/window_view_1280x960-1024x768.jpg 1024w, https://sv.wordpress.org/files/2017/10/window_view_1280x960-440x330.jpg 440w, https://sv.wordpress.org/files/2017/10/window_view_1280x960.jpg 1280w\" sizes=\"(max-width: 300px) 100vw, 300px\" /><figcaption class=\"wp-caption-text\">Efterfest på Sky Bar, längst upp i Royal Viking Hotel</figcaption></figure><br />\nPå kvällen måndagen 20 november är du sedan inbjuden av Oderland till efterfest ett par minuters promenad från konferensanläggningen, på <a href=\"https://www.skybarstockholm.se/hem\">Radisson Blu Royal Vikings Sky bar</a>.</p>\n<h2>Vill du bli ”Mikrosponsor”?</h2>\n<p>I samband med biljettköpet kan du välja att låta ditt företag ställa upp som mikrosponsor. Ju fler mikrosponsorer vi får, desto fler subventionerade biljetter kan vi sälja (och desto roligare kommer vi att ha det!)</p>\n<p>För mikrosponsorer publicerar vi deras logga och länk på evenemangets officiella webbplats. Dessutom kommer vi på själva konferensdagen att tacka varje sponsor från podiet för deras bidrag.</p>\n<h2>Pris</h2>\n<p>Tack vare bidragen från våra generösa sponsorer kan vi erbjuda biljetten till WordCamp Stockholm 2017 för endast 600 kronor plus moms (750 kr inkl. moms).</p>\n<h2>Mer information och anmälan</h2>\n<p><a href=\"https://2017.stockholm.wordcamp.org/\">https://2017.stockholm.wordcamp.org/</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:141:\"https://sv.wordpress.org/2017/10/19/hela-programmet-for-wordcamp-stockholm-klart-sveriges-officiella-wordpress-konferens-19-20-november/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Delta i beta-testningen av WordPress 4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://sv.wordpress.org/2017/10/12/delta-i-beta-testningen-av-wordpress-4-9/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://sv.wordpress.org/2017/10/12/delta-i-beta-testningen-av-wordpress-4-9/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 11:02:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://sv.wordpress.org/?p=999\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:406:\"WordPress 4.9 är på väg att ta form och den andra beta-versionen har just gjorts tillgänglig på svenska. Många av nyheterna i WordPress 4.9 kretsar kring anpassaren, men det finns också en lång rad små förbättringar. Hela listan med nyheter finns i inlägget om beta-1 på den centrala bloggen för WordPress: https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/ Prova gärna denna [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1236:\"<p>WordPress 4.9 är på väg att ta form och den andra beta-versionen har just gjorts tillgänglig <a href=\"https://sv.wordpress.org/builds/sv_SE/tags/4.9.1-beta2/wordpress-4.9.1-beta2-sv_SE.zip\">på svenska</a>.</p>\n<p>Många av nyheterna i WordPress 4.9 kretsar kring anpassaren, men det finns också en lång rad små förbättringar.</p>\n<p>Hela listan med nyheter finns i inlägget om beta-1 på den centrala bloggen för WordPress: <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/</a></p>\n<p>Prova gärna denna beta-utgåva, i synnerhet om du har utvecklat något eget tema eller tillägg kan det vara bra att kolla att allting fungerar som det ska. Om du ser något som behöver rättas till, finns det anvisningar för vart du vänder dig i <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-2/\">inlägget om beta-2 på den centrala bloggen</a>.</p>\n<p>Kom ihåg, dock: Beta-paket är till sin natur mindre stabila än en slutlig release, och om ett problem skulle inträffa finns det risk att enda sättet att lösa problemet är att ”rulla tillbaka” till en tidigare reservkopia. Använd dem därför inte på skarpa webbplatser.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://sv.wordpress.org/2017/10/12/delta-i-beta-testningen-av-wordpress-4-9/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Delta på WordPress Translation day lördag 30 september\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://sv.wordpress.org/2017/09/24/delta-pa-wordpress-translation-day-lordag-30-september/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://sv.wordpress.org/2017/09/24/delta-pa-wordpress-translation-day-lordag-30-september/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Sep 2017 13:15:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"Meetups\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://sv.wordpress.org/?p=987\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:169:\"Lördagen 30 september genomförs WPTranslationDay. Lär dig mer om hur WordPress översätts och hjälp till med översättning, på en träff i Stockholm eller online.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2410:\"<p>Nu på lördag 30 september genomförs för tredje gången det globala evenemanget <em>#WPTranslationDay</em>.</p>\n<p>Under ett helt dygn från kl. 00:00 UTC till 23:59 UTC (svensk tid från 02:00 natten mot lördag till 01:59 natten mot söndag) kommer presentationer om översättning av WordPress att streamas.</p>\n<p>Det slutgiltiga programmet presenteras inom ett par dagar på evenemangets egen webbplats <a href=\"https://wptranslationday.org/\">https://wptranslationday.org/</a>.</p>\n<p>Online-programmet kommer bl.a. att innehålla:</p>\n<ul>\n<li>Tips till utvecklare om hur man bäst anpassar sina tillägg och teman för översättning och anpassning till olika språk och kulturer. (i18n – Internationalization). Dessa presentationer kommer att vara på engelska.</li>\n<li>Eventuellt en paneldiskussion om olika lösningar för att skapa flerspråkiga webbplatser med WordPress.</li>\n<li>Introduktion till hur översättning av WordPress går till – på olika språk. Preliminärt kommer en presentation på svenska att streamas kl. 11:30 – 12:00 svensk tid.</li>\n</ul>\n<p>Dagen till ära kommer flera av de svenska översättningsredaktörerna att sitta beredda för att granska och godkänna översättningar, svara på frågor och ge råd. Om du använder något WordPress-tillägg eller -tema som ännu inte är översatt till svenska har du här chansen att ”försvenska” de sista delarna av din webbplats.<br />\nSmidigaste sättet att komma i kontakt med översättningsredaktörerna för WordPress på svenska är att gå med i den svenska <a href=\"https://wpsv.se/wpsv-slack/\">Slack-gruppen</a> och bli medlem i kanalen <a href=\"https://wpsv.slack.com/messages/C0BNUPAHK\" rel=\"noopener\" target=\"_blank\">#translations</a>.</p>\n<p>Om du kommer att vara i Stockholm lördagen den 30 september är du varmt välkommen till den lokala träffen för WordPress-översättning som börjar klockan 11:00. <a href=\"https://www.meetup.com/WordPress-Stockholm/events/242249799/\" target=\"_blank\">Anmäl dig</a> gärna i förväg.</p>\n<p><img src=\"https://sv.wordpress.org/files/2017/09/WPTD3-banner-1024x512.jpg\" alt=\"\" width=\"768\" height=\"384\" class=\"aligncenter size-full wp-image-991\" srcset=\"https://sv.wordpress.org/files/2017/09/WPTD3-banner-1024x512.jpg 768w, https://sv.wordpress.org/files/2017/09/WPTD3-banner-1024x512-300x150.jpg 300w\" sizes=\"(max-width: 768px) 100vw, 768px\" /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://sv.wordpress.org/2017/09/24/delta-pa-wordpress-translation-day-lordag-30-september/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Talare sökes till WordCamp Stockholm\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://sv.wordpress.org/2017/07/21/anmal-dig-som-talare-for-wordcamp-stockholm-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://sv.wordpress.org/2017/07/21/anmal-dig-som-talare-for-wordcamp-stockholm-2017/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Jul 2017 08:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://sv.wordpress.org/?p=975\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:331:\"Teamet bakom årets kommande WordCamp är i full fart med arbete sen det officiellt gick ut med en nyhet om att evenemanget var i planering. WordCamp Stockholm 2017 kommer att äga rum den 20 November 2017 som en del av Internetdagarna. Internetdagarna har i över 17 år varit en given samlingsplats för alla som jobbar [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Marcus Tis?ter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1604:\"<p>Teamet bakom årets kommande WordCamp är i full fart med arbete sen det officiellt gick ut med en <a href=\"https://sv.wordpress.org/2017/05/19/wordcamp2017/\">nyhet </a>om att evenemanget var i planering. WordCamp Stockholm 2017 kommer att äga rum den 20 November 2017 som en del av <a href=\"https://internetdagarna.se/\">Internetdagarna</a>. Internetdagarna har i över 17 år varit en given samlingsplats för alla som jobbar med internet, där tusentals människor samlas för att lära, nätverka och inspireras. Den 19 november genomförs även en s.k. ”Contributor day” där man kan hjälpa WordPress-projektet på olika sätt. Mer info om detta kommer inom kort.</p>\n<p>Nu har du chansen att <a href=\"https://2017.stockholm.wordcamp.org/talare-sokes/\">anmäla dig som talare</a> på årets WordCamp! Vi söker folk från alla bakgrunder – kanske har du designat ett vackert tema, programmerat ett intressant tillägg, byggt en webbutik, översatt WordPress till ett annat språk, lett ett team som bygger WordPress-sajter eller helt enkelt använt WordPress som ett verktyg i ditt arbete. Vi vill höra din historia!</p>\n<p>Sista dagen att anmäla sig som talare är den <strong>31 augusti kl. 23:59</strong>. Vi kommer göra ett urval bland alla anmälningar och återkopplar senast den 4:e september till alla som anmält sig.</p>\n<p>Besök årets WordCamp sajt, <a href=\"https://2017.stockholm.wordcamp.org\">https://2017.stockholm.wordcamp.org</a> och <a href=\"https://2017.stockholm.wordcamp.org/talare-sokes/\" target=\"_blank\" rel=\"noopener\">anmäl dig som talare</a> redan idag!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://sv.wordpress.org/2017/07/21/anmal-dig-som-talare-for-wordcamp-stockholm-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"Gutenberg: Nu kan du bidra med testning och synpunkter på framtidens redigeringsmiljö för WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"https://sv.wordpress.org/2017/06/27/gutenberg-nu-kan-du-bidra-med-testning-och-synpunkter-pa-framtidens-redigeringsmiljo-for-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:143:\"https://sv.wordpress.org/2017/06/27/gutenberg-nu-kan-du-bidra-med-testning-och-synpunkter-pa-framtidens-redigeringsmiljo-for-wordpress/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Jun 2017 19:24:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://sv.wordpress.org/?p=966\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:128:\"Projekt Gutenberg, framtidens redigeringsmiljö för WordPress, vill genom beta-testning få värdefull återkoppling från dig.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1444:\"<p>Sedan en tid tillbaka pågår intensiv utveckling av framtidens redigerare för WordPress. Projektet och den kommande redigeraren går under namnet <a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg</a>.</p>\n<p>Nu har projektet kommit så pass långt att utvecklarna genom beta-testning vill få kommentarer från WordPress-användare om hur de upplever den kommande redigeringsmiljön. Är den lätt att förstå och smidig att använda? Saknas det någon viktig funktion?</p>\n<p>Om du vill provköra Gutenberg och ge återkoppling till utvecklarna, så kan du installera tillägget direkt via din kontrollpanel inuti WordPress genom att söka på &#8221;Gutenberg&#8221;, eller genom att gå till <a href=\"https://wordpress.org/plugins/gutenberg/\">följande länk</a>.</p>\n<p>Mer information hittar du på <a href=\"https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/\">https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/</a>. (Informationen och själva beta-testningen är på engelska.)<br />\n<img class=\"alignright size-full wp-image-968\" src=\"https://sv.wordpress.org/files/2017/06/gutenberg.png\" alt=\"\" width=\"820\" height=\"670\" srcset=\"https://sv.wordpress.org/files/2017/06/gutenberg.png 820w, https://sv.wordpress.org/files/2017/06/gutenberg-300x245.png 300w, https://sv.wordpress.org/files/2017/06/gutenberg-768x628.png 768w\" sizes=\"(max-width: 820px) 100vw, 820px\" /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:140:\"https://sv.wordpress.org/2017/06/27/gutenberg-nu-kan-du-bidra-med-testning-och-synpunkter-pa-framtidens-redigeringsmiljo-for-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Nu kan du uppgradera till WordPress version 4.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://sv.wordpress.org/2017/06/08/nu-kan-du-uppgradera-till-wordpress-version-4-8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://sv.wordpress.org/2017/06/08/nu-kan-du-uppgradera-till-wordpress-version-4-8/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Jun 2017 18:18:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://sv.wordpress.org/?p=960\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:378:\"Idag släpptes WordPress version 4.8 De största nyheterna i version 4.8 är: Smidigare redigering av länkar i visuellt läge Text-widgeten låter dig formatera text lika enkelt som när du redigerar inlägg Nya widget-typer för att enkelt lägga in olika media på sina sidor (bilderr, ljudfiler, video) Information om WordPress-evenemang i din närhet – direkt i [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:804:\"<p>Idag släpptes WordPress version 4.8</p>\n<p>De största nyheterna i version 4.8 är:</p>\n<ul>\n<li>Smidigare redigering av länkar i visuellt läge</li>\n<li>Text-widgeten låter dig formatera text lika enkelt som när du redigerar inlägg</li>\n<li>Nya widget-typer för att enkelt lägga in olika media på sina sidor (bilderr, ljudfiler, video)</li>\n<li>Information om WordPress-evenemang i din närhet – direkt i adminpanelen</li>\n</ul>\n<p>Givetvis finns det fler nyheter. Mer detaljerad information kan du hitta i <a href=\"https://wordpress.org/news/2017/06/evans/\">den engelska nyhetsnotisen</a>.</p>\n<p>Enklast uppgraderar du genom att gå till menyn för uppdateringar och helt enkelt klicka på rätt knapp och sedan vänta ett par minuter.</p>\n<p>Lycka till med ditt fortsatta bloggande!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://sv.wordpress.org/2017/06/08/nu-kan-du-uppgradera-till-wordpress-version-4-8/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Dags att testa release-kandidat 2 för WordPress 4.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://sv.wordpress.org/2017/06/02/dags-att-testa-release-kandidat-1-for-wordpress-4-8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://sv.wordpress.org/2017/06/02/dags-att-testa-release-kandidat-1-for-wordpress-4-8/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Jun 2017 07:50:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://sv.wordpress.org/?p=951\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"Dags att ladda ned och testa release-kandidat 1 för WordPress 4.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1291:\"<p>WordPress 4.8 är nästan färdigt.<br />\nDu kan bidra till kvaliteten i WordPress 4.8 genom att prova detta paket och rapportera eventuella problem du upptäcker.<br />\nEftersom vi inte kan vara säkra på att allt är helt klart för full produktion bör du INTE använda denna version på en webbplats som bara MÅSTE fungera. Gör en provinstallation i stället, och glöm inte att spara säkerhetskopia på hela databasen och alla filer om du installerar paketet på en webbplats som måste gå att återskapa.</p>\n<p>Utvecklare av teman och tillägg:<br />\nPassa på nu och kontrollera att era projekt kommer att fungera bra även när WordPress 4.8 släpps, och glöm inte att stolt uppdatera värdet för ”Tested up to”.</p>\n<p>Det svenska installationspaketet för WordPress <del datetime=\"2017-06-02T07:53:18+00:00\">4.8 RC1</del> 4.8 RC2 finns i två format:</p>\n<ul>\n<li><a href=\"https://sv.wordpress.org/release-archive/sv_SE/wordpress-4.8-rc2-sv_SE.zip\">Ladda ned zip</a></li>\n<li><a href=\"https://sv.wordpress.org/release-archive/sv_SE/wordpress-4.8-rc2-sv_SE.tar.gz\">Ladda ned tar.gz</a></li>\n</ul>\n<p>Mer information finns i den <a href=\"https://wordpress.org/news/2017/06/wordpress-4-8-release-candidate-2/\">internationella bloggposten om RC2</a> (på engelska).</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://sv.wordpress.org/2017/06/02/dags-att-testa-release-kandidat-1-for-wordpress-4-8/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://sv.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Fri, 12 Jan 2018 07:03:24 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 29 Mar 2017 18:18:38 GMT\";s:4:\"link\";s:61:\"<https://sv.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `jk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(666, '_transient_timeout_feed_mod_28715d71ac4c9959532fa55dcd9977b7', '1515783806', 'no'),
(667, '_transient_feed_mod_28715d71ac4c9959532fa55dcd9977b7', '1515740606', 'no'),
(668, '_transient_timeout_dash_v2_deb48e951d337ba449b723bfa93a381d', '1515783806', 'no'),
(669, '_transient_dash_v2_deb48e951d337ba449b723bfa93a381d', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://sv.wordpress.org/2017/11/16/wordpress-4-9-tipton-ar-har/\'>WordPress 4.9 ”Tipton” är här!</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://sv.wordpress.org/2017/11/16/wordpress-4-9-tipton-ar-har/\'>WordPress 4.9 ”Tipton” är här!</a></li><li><a class=\'rsswidget\' href=\'https://sv.wordpress.org/2017/10/31/viktigt-sakerhetsuppdatering-av-wordpress-slappt-4-8-3/\'>Viktigt säkerhetsuppdatering av WordPress släppt (4.8.3)</a></li><li><a class=\'rsswidget\' href=\'https://sv.wordpress.org/2017/10/26/tavla-om-biljetter-till-wordcamp-stockholm/\'>Tävla om biljetter till WordCamp Stockholm!</a></li></ul></div>', 'no'),
(685, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/sv_SE/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"sv_SE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/sv_SE/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.1-partial-0.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:3:\"4.9\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/sv_SE/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"sv_SE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/sv_SE/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1515767438;s:15:\"version_checked\";s:3:\"4.9\";s:12:\"translations\";a:0:{}}', 'no'),
(686, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515767438;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.6.7\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:5:\"0.4.9\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/fakerpress.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:63:\"https://ps.w.org/fakerpress/assets/icon-128x128.png?rev=1129023\";s:2:\"2x\";s:63:\"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1129023\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1698202\";s:7:\"default\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1698202\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";s:7:\"default\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"sassy-social-share/sassy-social-share.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/sassy-social-share\";s:4:\"slug\";s:18:\"sassy-social-share\";s:6:\"plugin\";s:41:\"sassy-social-share/sassy-social-share.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/sassy-social-share/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/sassy-social-share.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:71:\"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723\";s:7:\"default\";s:71:\"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:73:\"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1300723\";s:7:\"default\";s:73:\"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1300723\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(687, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515767438;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(691, '_site_transient_timeout_theme_roots', '1515769238', 'no'),
(692, '_site_transient_theme_roots', 'a:4:{s:15:\"slutprojekt/css\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `jk_postmeta`
--

CREATE TABLE `jk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `jk_postmeta`
--

INSERT INTO `jk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/slutprojekt/'),
(10, 4, '_menu_item_orphaned', '1513086174'),
(23, 7, '_edit_last', '1'),
(24, 7, '_edit_lock', '1515754619:1'),
(25, 9, '_edit_last', '1'),
(26, 9, '_edit_lock', '1515755242:1'),
(27, 11, '_edit_last', '1'),
(28, 11, '_edit_lock', '1515660406:1'),
(29, 13, '_edit_last', '1'),
(30, 13, '_edit_lock', '1515754625:1'),
(31, 15, '_menu_item_type', 'custom'),
(32, 15, '_menu_item_menu_item_parent', '0'),
(33, 15, '_menu_item_object_id', '15'),
(34, 15, '_menu_item_object', 'custom'),
(35, 15, '_menu_item_target', ''),
(36, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 15, '_menu_item_xfn', ''),
(38, 15, '_menu_item_url', 'http://localhost/slutprojekt/'),
(39, 15, '_menu_item_orphaned', '1513086256'),
(40, 16, '_menu_item_type', 'post_type'),
(41, 16, '_menu_item_menu_item_parent', '0'),
(42, 16, '_menu_item_object_id', '7'),
(43, 16, '_menu_item_object', 'page'),
(44, 16, '_menu_item_target', ''),
(45, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 16, '_menu_item_xfn', ''),
(47, 16, '_menu_item_url', ''),
(49, 17, '_menu_item_type', 'post_type'),
(50, 17, '_menu_item_menu_item_parent', '0'),
(51, 17, '_menu_item_object_id', '9'),
(52, 17, '_menu_item_object', 'page'),
(53, 17, '_menu_item_target', ''),
(54, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 17, '_menu_item_xfn', ''),
(56, 17, '_menu_item_url', ''),
(58, 18, '_menu_item_type', 'post_type'),
(59, 18, '_menu_item_menu_item_parent', '0'),
(60, 18, '_menu_item_object_id', '11'),
(61, 18, '_menu_item_object', 'page'),
(62, 18, '_menu_item_target', ''),
(63, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 18, '_menu_item_xfn', ''),
(65, 18, '_menu_item_url', ''),
(67, 19, '_menu_item_type', 'post_type'),
(68, 19, '_menu_item_menu_item_parent', '0'),
(69, 19, '_menu_item_object_id', '13'),
(70, 19, '_menu_item_object', 'page'),
(71, 19, '_menu_item_target', ''),
(72, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 19, '_menu_item_xfn', ''),
(74, 19, '_menu_item_url', ''),
(78, 21, '_edit_last', '1'),
(79, 21, '_edit_lock', '1515767531:1'),
(80, 23, '_wp_attached_file', '2017/12/DSC_8197-e1513091013770.jpg'),
(81, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:888;s:4:\"file\";s:35:\"2017/12/DSC_8197-e1513091013770.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"DSC_8197-e1513091013770-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"DSC_8197-e1513091013770-300x133.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"DSC_8197-e1513091013770-768x341.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"DSC_8197-e1513091013770-1024x455.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:455;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7000\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1505837954\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(82, 24, '_wp_attached_file', '2017/12/DSC_1079-1280x682.jpeg'),
(83, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:682;s:4:\"file\";s:30:\"2017/12/DSC_1079-1280x682.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"DSC_1079-1280x682-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"DSC_1079-1280x682-300x160.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"DSC_1079-1280x682-768x409.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:409;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"DSC_1079-1280x682-1024x546.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:546;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 23, '_wp_attachment_backup_sizes', 'a:6:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:4928;s:6:\"height\";i:2618;s:4:\"file\";s:12:\"DSC_8197.jpg\";}s:18:\"full-1513091013770\";a:3:{s:5:\"width\";i:2000;s:6:\"height\";i:1063;s:4:\"file\";s:27:\"DSC_8197-e1513087483809.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:20:\"DSC_8197-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:20:\"DSC_8197-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:20:\"DSC_8197-768x408.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:21:\"DSC_8197-1024x544.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:544;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(85, 7, 'intro_bild', '23'),
(86, 7, '_intro_bild', 'field_5a2fe1a0a1f53'),
(87, 25, 'intro_bild', '23'),
(88, 25, '_intro_bild', 'field_5a2fe1a0a1f53'),
(89, 7, 'intro_rubrik', 'Bil Företagsnamn'),
(90, 7, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(91, 7, 'intro_text', 'Lorem ipsum'),
(92, 7, '_intro_text', 'field_5a2ff05dcd5f7'),
(93, 28, 'intro_bild', '23'),
(94, 28, '_intro_bild', 'field_5a2fe1a0a1f53'),
(95, 28, 'intro_rubrik', 'Bil Företagsnamn'),
(96, 28, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(97, 28, 'intro_text', 'Lorem ipsum'),
(98, 28, '_intro_text', 'field_5a2ff05dcd5f7'),
(99, 7, 'caption1', 'Lorem ipsum'),
(100, 7, '_caption1', 'field_5a324011ba7f5'),
(101, 31, 'intro_bild', '23'),
(102, 31, '_intro_bild', 'field_5a2fe1a0a1f53'),
(103, 31, 'intro_rubrik', 'Bil Företagsnamn'),
(104, 31, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(105, 31, 'intro_text', 'Lorem ipsum'),
(106, 31, '_intro_text', 'field_5a2ff05dcd5f7'),
(107, 31, 'caption1', 'Lorem ipsum'),
(108, 31, '_caption1', 'field_5a324011ba7f5'),
(109, 32, '_edit_last', '1'),
(110, 32, '_edit_lock', '1515767737:1'),
(111, 42, '_edit_last', '1'),
(112, 42, '_edit_lock', '1515768660:1'),
(113, 42, 'pris', '269000'),
(114, 42, '_pris', 'field_5a324c849b5d1'),
(115, 42, 'arsmodell', '20120104'),
(116, 42, '_arsmodell', 'field_5a324bd39b5cd'),
(117, 42, 'miltal', '9357'),
(118, 42, '_miltal', 'field_5a324c309b5ce'),
(119, 42, 'vaxellada', 'Automat'),
(120, 42, '_vaxellada', 'field_5a324c699b5cf'),
(121, 42, 'drivmedel', 'Bensin'),
(122, 42, '_drivmedel', 'field_5a324c719b5d0'),
(123, 42, 'effekt', '306'),
(124, 42, '_effekt', 'field_5a324cb59b5d2'),
(125, 42, 'drift', 'RWD'),
(126, 42, '_drift', 'field_5a324cd79b5d3'),
(127, 42, 'beskrivning', 'För omgående leverans finns nu en fantastisk fin och välutrustad BMW 335 i SPORT Nyservad med följande utrustning: LEDER DAKOTA, Steering wheel heater, Multifunktionsratt, Sports läderratt, BMW fälg Double Spoke 401, Sport automatväxellåda, Adaptive M fjädring, Variable Sport styrning, Alarm system, Dragkrok, Backkamera, Glastak elektriskt, Tonade rutor, Automatiskt avbländbar innerbackspegel, Elstolar med minne, Sportstolar, Förvaringspaket, Interiörlist i borstad aluminium, Justerbart armstöd fram, Accent strips svart högglans, Parkerinssensorer (PDC), Regnsensor, Xenon strålkastare, Farthållare med bromsfunktion, Ljuspaket, Navigation system Professional, Harman/Kardon Surround Sound system, Music interface for Smartphone, Bluetooth och USB uppkoppling, Antrazit innertak, Sport Line. Levereras med vinterdäck på orginalfälg.'),
(128, 42, '_beskrivning', 'field_5a324d159b5d4'),
(129, 42, 'bild', '52'),
(130, 42, '_bild', 'field_5a324bb79b5cc'),
(134, 45, '_edit_last', '1'),
(135, 45, '_edit_lock', '1515768713:1'),
(136, 46, '_wp_attached_file', '2017/12/6b3442b0-a1a9-470b-bd96-9801324eb22f.jpg'),
(137, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:48:\"2017/12/6b3442b0-a1a9-470b-bd96-9801324eb22f.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"6b3442b0-a1a9-470b-bd96-9801324eb22f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"6b3442b0-a1a9-470b-bd96-9801324eb22f-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"6b3442b0-a1a9-470b-bd96-9801324eb22f-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"6b3442b0-a1a9-470b-bd96-9801324eb22f-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 45, 'pris', '2295000'),
(139, 45, '_pris', 'field_5a324c849b5d1'),
(140, 45, 'arsmodell', '20161201'),
(141, 45, '_arsmodell', 'field_5a324bd39b5cd'),
(142, 45, 'miltal', '569'),
(143, 45, '_miltal', 'field_5a324c309b5ce'),
(144, 45, 'vaxellada', 'Automat'),
(145, 45, '_vaxellada', 'field_5a324c699b5cf'),
(146, 45, 'drivmedel', 'Bensin'),
(147, 45, '_drivmedel', 'field_5a324c719b5d0'),
(148, 45, 'effekt', '670'),
(149, 45, '_effekt', 'field_5a324cb59b5d2'),
(150, 45, 'drift', 'RWD'),
(151, 45, '_drift', 'field_5a324cd79b5d3'),
(152, 45, 'beskrivning', 'Ferrari 488 Spider i absolut toppskick! Klassiska Rosso Corsa kombinerat med Nero Läderklädsel invändigt. Generöst utrustad med bl a. följande: Sportratt i Kolfiber med LED-Indikation, Sportstolar i Nero Läderklädsel, Ferrarihästen i Nackstöden, Avgasutblås i Svartlackerat, Bromsok i Nero, Ferrari 488 Fälgar lackerat i Anthracit, Bi-Xenonstrålkastare, Navigation, Bluetooth för Mobiltelefoni, Streaming av Musik via Bluetooth såsom Spotify, iTunes m.m, 2-Zons Klimatanläggning, Försänkta Scuderia Sköldar på Framskärmar, Parkeringssensorer Fram & Bak, Sportpedaler i Aluminium, Adaptivt Chassi med ”Bumpy Road”, Sömmar i Nero, Utökat Läder i Dörrar m.m, Keyless Start, Varvräknare i Nero, Keramiska Bromsar, Insteg i Stål med Ferrari-logo Med Mera! // Tekniska Data: Längsmonterad 8-cyl V-motor med Dubbelturbo.'),
(153, 45, '_beskrivning', 'field_5a324d159b5d4'),
(154, 45, 'bild', '46'),
(155, 45, '_bild', 'field_5a324bb79b5cc'),
(156, 45, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(157, 42, 'slideshow_halvbredd_0_slideshow_halvbredd_bild', '46'),
(158, 42, '_slideshow_halvbredd_0_slideshow_halvbredd_bild', 'field_5a32a8e17122d'),
(159, 42, 'slideshow_halvbredd', '2'),
(160, 42, '_slideshow_halvbredd', 'field_5a32a8ca7122c'),
(161, 42, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(162, 42, 'slideshow_halvbredd_1_slideshow_halvbredd_bild', '24'),
(163, 42, '_slideshow_halvbredd_1_slideshow_halvbredd_bild', 'field_5a32a8e17122d'),
(164, 42, 'arkiv_bild', '52'),
(165, 42, '_arkiv_bild', 'field_5a379a9be9a9f'),
(166, 45, 'slideshow_halvbredd', ''),
(167, 45, '_slideshow_halvbredd', 'field_5a32a8ca7122c'),
(168, 45, 'arkiv_bild', '46'),
(169, 45, '_arkiv_bild', 'field_5a379a9be9a9f'),
(170, 51, '_menu_item_type', 'custom'),
(171, 51, '_menu_item_menu_item_parent', '0'),
(172, 51, '_menu_item_object_id', '51'),
(173, 51, '_menu_item_object', 'custom'),
(174, 51, '_menu_item_target', ''),
(175, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 51, '_menu_item_xfn', ''),
(177, 51, '_menu_item_url', 'http://localhost/slutprojekt/bilar_post_type/'),
(179, 52, '_wp_attached_file', '2017/12/4db7e063-da87-4f46-b83a-ecda2f2a2415-1.jpg'),
(180, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:682;s:4:\"file\";s:50:\"2017/12/4db7e063-da87-4f46-b83a-ecda2f2a2415-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"4db7e063-da87-4f46-b83a-ecda2f2a2415-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"4db7e063-da87-4f46-b83a-ecda2f2a2415-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"4db7e063-da87-4f46-b83a-ecda2f2a2415-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"4db7e063-da87-4f46-b83a-ecda2f2a2415-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:50:\"4db7e063-da87-4f46-b83a-ecda2f2a2415-1-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 53, '_edit_last', '1'),
(182, 53, '_edit_lock', '1515768818:1'),
(183, 54, '_wp_attached_file', '2017/12/9427818818.jpg'),
(184, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:599;s:4:\"file\";s:22:\"2017/12/9427818818.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"9427818818-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"9427818818-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"9427818818-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"9427818818-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 53, 'pris', '160000'),
(186, 53, '_pris', 'field_5a324c849b5d1'),
(187, 53, 'arsmodell', '20151203'),
(188, 53, '_arsmodell', 'field_5a324bd39b5cd'),
(189, 53, 'miltal', '9021'),
(190, 53, '_miltal', 'field_5a324c309b5ce'),
(191, 53, 'vaxellada', 'Manuell'),
(192, 53, '_vaxellada', 'field_5a324c699b5cf'),
(193, 53, 'drivmedel', 'Diesel'),
(194, 53, '_drivmedel', 'field_5a324c719b5d0'),
(195, 53, 'effekt', '181'),
(196, 53, '_effekt', 'field_5a324cb59b5d2'),
(197, 53, 'drift', 'FWD'),
(198, 53, '_drift', 'field_5a324cd79b5d3'),
(199, 53, 'beskrivning', 'El-infällbara ytterbackspeglar! Nu har vi fått in denna Volvo V70 D4 Momentum Business Edition, dragkrok och bränslevärmare med tidur. Bilen är servad vid följande miltal: 3258-6102-9013. Denna bil är även leasebar för företag.'),
(200, 53, '_beskrivning', 'field_5a324d159b5d4'),
(201, 53, 'bild', '54'),
(202, 53, '_bild', 'field_5a324bb79b5cc'),
(203, 53, 'slideshow_halvbredd_0_slideshow_halvbredd_bild', '54'),
(204, 53, '_slideshow_halvbredd_0_slideshow_halvbredd_bild', 'field_5a32a8e17122d'),
(205, 53, 'slideshow_halvbredd', '1'),
(206, 53, '_slideshow_halvbredd', 'field_5a32a8ca7122c'),
(207, 53, 'arkiv_bild', '54'),
(208, 53, '_arkiv_bild', 'field_5a379a9be9a9f'),
(209, 53, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(210, 1, '_wp_trash_meta_status', 'publish'),
(211, 1, '_wp_trash_meta_time', '1514196516'),
(212, 1, '_wp_desired_post_slug', 'hej-varlden'),
(213, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(214, 56, '_edit_last', '1'),
(215, 56, '_edit_lock', '1515755288:1'),
(217, 56, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(218, 61, '_edit_last', '1'),
(219, 61, '_edit_lock', '1515755273:1'),
(221, 61, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(225, 7, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(226, 7, 'hemsida_del1_rubrik', 'Vad vi är bra på'),
(227, 7, '_hemsida_del1_rubrik', 'field_5a4cf9f4a020e'),
(228, 7, 'hemsida_del1_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(229, 7, '_hemsida_del1_text', 'field_5a4cfa19a020f'),
(230, 67, 'intro_bild', '23'),
(231, 67, '_intro_bild', 'field_5a2fe1a0a1f53'),
(232, 67, 'intro_rubrik', 'Bil Företagsnamn'),
(233, 67, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(234, 67, 'intro_text', 'Lorem ipsum'),
(235, 67, '_intro_text', 'field_5a2ff05dcd5f7'),
(236, 67, 'caption1', 'Lorem ipsum'),
(237, 67, '_caption1', 'field_5a324011ba7f5'),
(238, 67, 'hemsida_del1_rubrik', 'Vad vi är bra på'),
(239, 67, '_hemsida_del1_rubrik', 'field_5a4cf9f4a020e'),
(240, 67, 'hemsida_del1_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(241, 67, '_hemsida_del1_text', 'field_5a4cfa19a020f'),
(242, 7, 'hemsida_del1_bild', '24'),
(243, 7, '_hemsida_del1_bild', 'field_5a4cfe0e3ab49'),
(244, 69, 'intro_bild', '23'),
(245, 69, '_intro_bild', 'field_5a2fe1a0a1f53'),
(246, 69, 'intro_rubrik', 'Bil Företagsnamn'),
(247, 69, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(248, 69, 'intro_text', 'Lorem ipsum'),
(249, 69, '_intro_text', 'field_5a2ff05dcd5f7'),
(250, 69, 'caption1', 'Lorem ipsum'),
(251, 69, '_caption1', 'field_5a324011ba7f5'),
(252, 69, 'hemsida_del1_rubrik', 'Vad vi är bra på'),
(253, 69, '_hemsida_del1_rubrik', 'field_5a4cf9f4a020e'),
(254, 69, 'hemsida_del1_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(255, 69, '_hemsida_del1_text', 'field_5a4cfa19a020f'),
(256, 69, 'hemsida_del1_bild', '24'),
(257, 69, '_hemsida_del1_bild', 'field_5a4cfe0e3ab49'),
(258, 13, '_wp_page_template', 'templates/omOss.php'),
(259, 13, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(260, 71, '_edit_last', '1'),
(261, 71, '_edit_lock', '1515693115:1'),
(262, 75, '_wp_attached_file', '2018/01/Glad-arbetsgrupp-700-394-ingenjorskarriar.png'),
(263, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:394;s:4:\"file\";s:53:\"2018/01/Glad-arbetsgrupp-700-394-ingenjorskarriar.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"Glad-arbetsgrupp-700-394-ingenjorskarriar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"Glad-arbetsgrupp-700-394-ingenjorskarriar-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:53:\"Glad-arbetsgrupp-700-394-ingenjorskarriar-400x225.png\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:53:\"Glad-arbetsgrupp-700-394-ingenjorskarriar-600x338.png\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 13, 'omoss_rubrik', 'Vilka är vi?'),
(265, 13, '_omoss_rubrik', 'field_5a4e5510dc74e'),
(266, 13, 'omoss_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(267, 13, '_omoss_text', 'field_5a4e5527dc74f'),
(268, 13, 'omoss_bild', '75'),
(269, 13, '_omoss_bild', 'field_5a4e5546dc750'),
(270, 76, 'omoss_rubrik', 'Vilka är vi?'),
(271, 76, '_omoss_rubrik', 'field_5a4e5510dc74e'),
(272, 76, 'omoss_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(273, 76, '_omoss_text', 'field_5a4e5527dc74f'),
(274, 76, 'omoss_bild', '75'),
(275, 76, '_omoss_bild', 'field_5a4e5546dc750'),
(278, 13, '4_kolumner_0_4_kolumner_rubrik', 'Emma Emmasson'),
(279, 13, '_4_kolumner_0_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(280, 13, '4_kolumner_0_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(281, 13, '_4_kolumner_0_4_kolumner_text', 'field_5a4e5733a80cd'),
(282, 13, '4_kolumner_0_4_kolumner_bild', '145'),
(283, 13, '_4_kolumner_0_4_kolumner_bild', 'field_5a4e5743a80ce'),
(284, 13, '4_kolumner', '4'),
(285, 13, '_4_kolumner', 'field_5a4e56c7a80cb'),
(286, 82, 'omoss_rubrik', 'Vilka är vi?'),
(287, 82, '_omoss_rubrik', 'field_5a4e5510dc74e'),
(288, 82, 'omoss_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(289, 82, '_omoss_text', 'field_5a4e5527dc74f'),
(290, 82, 'omoss_bild', '75'),
(291, 82, '_omoss_bild', 'field_5a4e5546dc750'),
(292, 82, '4_kolumner_0_4_kolumner_rubrik', 'Gustav Gustavsson'),
(293, 82, '_4_kolumner_0_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(294, 82, '4_kolumner_0_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(295, 82, '_4_kolumner_0_4_kolumner_text', 'field_5a4e5733a80cd'),
(296, 82, '4_kolumner_0_4_kolumner_bild', '81'),
(297, 82, '_4_kolumner_0_4_kolumner_bild', 'field_5a4e5743a80ce'),
(298, 82, '4_kolumner', '1'),
(299, 82, '_4_kolumner', 'field_5a4e56c7a80cb'),
(300, 13, '4_kolumner_1_4_kolumner_rubrik', 'Gustav Gustavsson'),
(301, 13, '_4_kolumner_1_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(302, 13, '4_kolumner_1_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(303, 13, '_4_kolumner_1_4_kolumner_text', 'field_5a4e5733a80cd'),
(304, 13, '4_kolumner_1_4_kolumner_bild', '144'),
(305, 13, '_4_kolumner_1_4_kolumner_bild', 'field_5a4e5743a80ce'),
(306, 83, 'omoss_rubrik', 'Vilka är vi?'),
(307, 83, '_omoss_rubrik', 'field_5a4e5510dc74e'),
(308, 83, 'omoss_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(309, 83, '_omoss_text', 'field_5a4e5527dc74f'),
(310, 83, 'omoss_bild', '75'),
(311, 83, '_omoss_bild', 'field_5a4e5546dc750'),
(312, 83, '4_kolumner_0_4_kolumner_rubrik', 'Gustav Gustavsson'),
(313, 83, '_4_kolumner_0_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(314, 83, '4_kolumner_0_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(315, 83, '_4_kolumner_0_4_kolumner_text', 'field_5a4e5733a80cd'),
(316, 83, '4_kolumner_0_4_kolumner_bild', '81'),
(317, 83, '_4_kolumner_0_4_kolumner_bild', 'field_5a4e5743a80ce'),
(318, 83, '4_kolumner', '2'),
(319, 83, '_4_kolumner', 'field_5a4e56c7a80cb'),
(320, 83, '4_kolumner_1_4_kolumner_rubrik', 'Gustav Gustavsson'),
(321, 83, '_4_kolumner_1_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(322, 83, '4_kolumner_1_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(323, 83, '_4_kolumner_1_4_kolumner_text', 'field_5a4e5733a80cd'),
(324, 83, '4_kolumner_1_4_kolumner_bild', '81'),
(325, 83, '_4_kolumner_1_4_kolumner_bild', 'field_5a4e5743a80ce'),
(326, 13, '4_kolumner_2_4_kolumner_rubrik', 'Hanna Hannasson'),
(327, 13, '_4_kolumner_2_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(328, 13, '4_kolumner_2_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(329, 13, '_4_kolumner_2_4_kolumner_text', 'field_5a4e5733a80cd'),
(330, 13, '4_kolumner_2_4_kolumner_bild', '145'),
(331, 13, '_4_kolumner_2_4_kolumner_bild', 'field_5a4e5743a80ce'),
(332, 13, '4_kolumner_3_4_kolumner_rubrik', 'Joachim Joachimsson'),
(333, 13, '_4_kolumner_3_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(334, 13, '4_kolumner_3_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(335, 13, '_4_kolumner_3_4_kolumner_text', 'field_5a4e5733a80cd'),
(336, 13, '4_kolumner_3_4_kolumner_bild', '144'),
(337, 13, '_4_kolumner_3_4_kolumner_bild', 'field_5a4e5743a80ce'),
(338, 84, 'omoss_rubrik', 'Vilka är vi?'),
(339, 84, '_omoss_rubrik', 'field_5a4e5510dc74e'),
(340, 84, 'omoss_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(341, 84, '_omoss_text', 'field_5a4e5527dc74f'),
(342, 84, 'omoss_bild', '75'),
(343, 84, '_omoss_bild', 'field_5a4e5546dc750'),
(344, 84, '4_kolumner_0_4_kolumner_rubrik', 'Gustav Gustavsson'),
(345, 84, '_4_kolumner_0_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(346, 84, '4_kolumner_0_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(347, 84, '_4_kolumner_0_4_kolumner_text', 'field_5a4e5733a80cd'),
(348, 84, '4_kolumner_0_4_kolumner_bild', '81'),
(349, 84, '_4_kolumner_0_4_kolumner_bild', 'field_5a4e5743a80ce'),
(350, 84, '4_kolumner', '4'),
(351, 84, '_4_kolumner', 'field_5a4e56c7a80cb'),
(352, 84, '4_kolumner_1_4_kolumner_rubrik', 'Örjan Örjansson'),
(353, 84, '_4_kolumner_1_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(354, 84, '4_kolumner_1_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(355, 84, '_4_kolumner_1_4_kolumner_text', 'field_5a4e5733a80cd'),
(356, 84, '4_kolumner_1_4_kolumner_bild', '81'),
(357, 84, '_4_kolumner_1_4_kolumner_bild', 'field_5a4e5743a80ce'),
(358, 84, '4_kolumner_2_4_kolumner_rubrik', 'Hanna Hannasson'),
(359, 84, '_4_kolumner_2_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(360, 84, '4_kolumner_2_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(361, 84, '_4_kolumner_2_4_kolumner_text', 'field_5a4e5733a80cd'),
(362, 84, '4_kolumner_2_4_kolumner_bild', '81'),
(363, 84, '_4_kolumner_2_4_kolumner_bild', 'field_5a4e5743a80ce'),
(364, 84, '4_kolumner_3_4_kolumner_rubrik', 'Joachim Joachimsson'),
(365, 84, '_4_kolumner_3_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(366, 84, '4_kolumner_3_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(367, 84, '_4_kolumner_3_4_kolumner_text', 'field_5a4e5733a80cd'),
(368, 84, '4_kolumner_3_4_kolumner_bild', '81'),
(369, 84, '_4_kolumner_3_4_kolumner_bild', 'field_5a4e5743a80ce'),
(370, 9, '_wp_page_template', 'templates/kontakt.php'),
(371, 9, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(372, 85, '_form', '<label> Ditt namn (obligatorisk)\n    [text* your-name] </label>\n\n<label> Din epost (obligatorisk)\n    [email* your-email] </label>\n\n<label> Ämne\n    [text your-subject] </label>\n\n<label> Ditt meddelande\n    [textarea your-message] </label>\n\n[submit \"Skicka\"]'),
(373, 85, '_mail', 'a:8:{s:7:\"subject\";s:29:\"Slut Projekt \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <nundssfdfi@hotmail.com>\";s:4:\"body\";s:191:\"Från: [your-name] <[your-email]>\nÄmne: [your-subject]\n\nMeddelande:\n[your-message]\n\n-- \nEpost-meddelandet skickades från ett kontaktformulär på Slut Projekt (http://localhost/slutprojekt)\";s:9:\"recipient\";s:22:\"nundssfdfi@hotmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(374, 85, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"Slut Projekt \"[your-subject]\"\";s:6:\"sender\";s:37:\"Slut Projekt <nundssfdfi@hotmail.com>\";s:4:\"body\";s:134:\"Meddelande:\n[your-message]\n\n-- \nEpost-meddelandet skickades från ett kontaktformulär på Slut Projekt (http://localhost/slutprojekt)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:32:\"Reply-To: nundssfdfi@hotmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(375, 85, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:35:\"Tack, ditt meddelande har skickats.\";s:12:\"mail_sent_ng\";s:77:\"Ett fel inträffade när meddelandet skulle skickas. Var god försök senare.\";s:16:\"validation_error\";s:61:\"Ett eller flera fält har fel. Kontrollera och försök igen.\";s:4:\"spam\";s:77:\"Ett fel inträffade när meddelandet skulle skickas. Var god försök senare.\";s:12:\"accept_terms\";s:59:\"Du måste godkänna villkoren innan du skickar meddelandet.\";s:16:\"invalid_required\";s:26:\"Fältet är obligatoriskt.\";s:16:\"invalid_too_long\";s:23:\"Fältet är för långt\";s:17:\"invalid_too_short\";s:22:\"Fältet är för kort.\";}'),
(376, 85, '_additional_settings', NULL),
(377, 85, '_locale', 'sv_SE'),
(378, 86, '_edit_last', '1'),
(379, 86, '_edit_lock', '1515761345:1'),
(380, 9, 'informations_falt_0_falt', 'Adress : Göteborg Företagsvägen15A'),
(381, 9, '_informations_falt_0_falt', 'field_5a4e988c80347'),
(382, 9, 'informations_falt_1_falt', 'Telefon nummer : 0768549613'),
(383, 9, '_informations_falt_1_falt', 'field_5a4e988c80347'),
(384, 9, 'informations_falt_2_falt', 'Öppetider : 10:00-16:30'),
(385, 9, '_informations_falt_2_falt', 'field_5a4e988c80347'),
(386, 9, 'informations_falt', '3'),
(387, 9, '_informations_falt', 'field_5a4e974a80346'),
(388, 89, 'informations_falt_0_falt', 'Adress : Göteborg Företagsvägen15A'),
(389, 89, '_informations_falt_0_falt', 'field_5a4e988c80347'),
(390, 89, 'informations_falt_1_falt', 'Telefon nummer : 0768549613'),
(391, 89, '_informations_falt_1_falt', 'field_5a4e988c80347'),
(392, 89, 'informations_falt_2_falt', 'Öppetider : 10:00-16:30'),
(393, 89, '_informations_falt_2_falt', 'field_5a4e988c80347'),
(394, 89, 'informations_falt', '3'),
(395, 89, '_informations_falt', 'field_5a4e974a80346'),
(396, 9, 'informations_falt_0_fran_dag', 'Måndag-Torsdag'),
(397, 9, '_informations_falt_0_fran_dag', 'field_5a4e988c80347'),
(398, 9, 'informations_falt_0_till_dag', 'Torsdag'),
(399, 9, '_informations_falt_0_till_dag', 'field_5a4e9a94d7067'),
(400, 9, 'informations_falt_0_fran_tid', '10:00:00'),
(401, 9, '_informations_falt_0_fran_tid', 'field_5a4e9ab2d7068'),
(402, 9, 'informations_falt_0_till_tid', '16:30:00'),
(403, 9, '_informations_falt_0_till_tid', 'field_5a4e9b1bd7069'),
(404, 9, 'informations_falt_1_fran_dag', 'Fredag'),
(405, 9, '_informations_falt_1_fran_dag', 'field_5a4e988c80347'),
(406, 9, 'informations_falt_1_till_dag', 'Fredag'),
(407, 9, '_informations_falt_1_till_dag', 'field_5a4e9a94d7067'),
(408, 9, 'informations_falt_1_fran_tid', '10:00:00'),
(409, 9, '_informations_falt_1_fran_tid', 'field_5a4e9ab2d7068'),
(410, 9, 'informations_falt_1_till_tid', '15:00:00'),
(411, 9, '_informations_falt_1_till_tid', 'field_5a4e9b1bd7069'),
(412, 9, 'informations_falt_2_fran_dag', 'Lördag'),
(413, 9, '_informations_falt_2_fran_dag', 'field_5a4e988c80347'),
(414, 9, 'informations_falt_2_till_dag', 'Söndag'),
(415, 9, '_informations_falt_2_till_dag', 'field_5a4e9a94d7067'),
(416, 9, 'informations_falt_2_fran_tid', '11:00:00'),
(417, 9, '_informations_falt_2_fran_tid', 'field_5a4e9ab2d7068'),
(418, 9, 'informations_falt_2_till_tid', '15:00:00'),
(419, 9, '_informations_falt_2_till_tid', 'field_5a4e9b1bd7069'),
(420, 93, 'informations_falt_0_falt', 'Adress : Göteborg Företagsvägen15A'),
(421, 93, '_informations_falt_0_falt', 'field_5a4e988c80347'),
(422, 93, 'informations_falt_1_falt', 'Telefon nummer : 0768549613'),
(423, 93, '_informations_falt_1_falt', 'field_5a4e988c80347'),
(424, 93, 'informations_falt_2_falt', 'Öppetider : 10:00-16:30'),
(425, 93, '_informations_falt_2_falt', 'field_5a4e988c80347'),
(426, 93, 'informations_falt', '3'),
(427, 93, '_informations_falt', 'field_5a4e974a80346'),
(428, 93, 'informations_falt_0_fran_dag', 'Måndag'),
(429, 93, '_informations_falt_0_fran_dag', 'field_5a4e988c80347'),
(430, 93, 'informations_falt_0_till_dag', 'Torsdag'),
(431, 93, '_informations_falt_0_till_dag', 'field_5a4e9a94d7067'),
(432, 93, 'informations_falt_0_fran_tid', '10:00:00'),
(433, 93, '_informations_falt_0_fran_tid', 'field_5a4e9ab2d7068'),
(434, 93, 'informations_falt_0_till_tid', '16:30:00'),
(435, 93, '_informations_falt_0_till_tid', 'field_5a4e9b1bd7069'),
(436, 93, 'informations_falt_1_fran_dag', 'Fredag'),
(437, 93, '_informations_falt_1_fran_dag', 'field_5a4e988c80347'),
(438, 93, 'informations_falt_1_till_dag', 'Fredag'),
(439, 93, '_informations_falt_1_till_dag', 'field_5a4e9a94d7067'),
(440, 93, 'informations_falt_1_fran_tid', '10:00:00'),
(441, 93, '_informations_falt_1_fran_tid', 'field_5a4e9ab2d7068'),
(442, 93, 'informations_falt_1_till_tid', '15:00:00'),
(443, 93, '_informations_falt_1_till_tid', 'field_5a4e9b1bd7069'),
(444, 93, 'informations_falt_2_fran_dag', 'Lördag'),
(445, 93, '_informations_falt_2_fran_dag', 'field_5a4e988c80347'),
(446, 93, 'informations_falt_2_till_dag', 'Söndag'),
(447, 93, '_informations_falt_2_till_dag', 'field_5a4e9a94d7067'),
(448, 93, 'informations_falt_2_fran_tid', '11:00:00'),
(449, 93, '_informations_falt_2_fran_tid', 'field_5a4e9ab2d7068'),
(450, 93, 'informations_falt_2_till_tid', '15:00:00'),
(451, 93, '_informations_falt_2_till_tid', 'field_5a4e9b1bd7069'),
(452, 94, 'informations_falt_0_falt', 'Adress : Göteborg Företagsvägen15A'),
(453, 94, '_informations_falt_0_falt', 'field_5a4e988c80347'),
(454, 94, 'informations_falt_1_falt', 'Telefon nummer : 0768549613'),
(455, 94, '_informations_falt_1_falt', 'field_5a4e988c80347'),
(456, 94, 'informations_falt_2_falt', 'Öppetider : 10:00-16:30'),
(457, 94, '_informations_falt_2_falt', 'field_5a4e988c80347'),
(458, 94, 'informations_falt', '3'),
(459, 94, '_informations_falt', 'field_5a4e974a80346'),
(460, 94, 'informations_falt_0_fran_dag', 'Måndag-Torsdag'),
(461, 94, '_informations_falt_0_fran_dag', 'field_5a4e988c80347'),
(462, 94, 'informations_falt_0_till_dag', 'Torsdag'),
(463, 94, '_informations_falt_0_till_dag', 'field_5a4e9a94d7067'),
(464, 94, 'informations_falt_0_fran_tid', '10:00:00'),
(465, 94, '_informations_falt_0_fran_tid', 'field_5a4e9ab2d7068'),
(466, 94, 'informations_falt_0_till_tid', '16:30:00'),
(467, 94, '_informations_falt_0_till_tid', 'field_5a4e9b1bd7069'),
(468, 94, 'informations_falt_1_fran_dag', 'Fredag'),
(469, 94, '_informations_falt_1_fran_dag', 'field_5a4e988c80347'),
(470, 94, 'informations_falt_1_till_dag', 'Fredag'),
(471, 94, '_informations_falt_1_till_dag', 'field_5a4e9a94d7067'),
(472, 94, 'informations_falt_1_fran_tid', '10:00:00'),
(473, 94, '_informations_falt_1_fran_tid', 'field_5a4e9ab2d7068'),
(474, 94, 'informations_falt_1_till_tid', '15:00:00'),
(475, 94, '_informations_falt_1_till_tid', 'field_5a4e9b1bd7069'),
(476, 94, 'informations_falt_2_fran_dag', 'Lördag'),
(477, 94, '_informations_falt_2_fran_dag', 'field_5a4e988c80347'),
(478, 94, 'informations_falt_2_till_dag', 'Söndag'),
(479, 94, '_informations_falt_2_till_dag', 'field_5a4e9a94d7067'),
(480, 94, 'informations_falt_2_fran_tid', '11:00:00'),
(481, 94, '_informations_falt_2_fran_tid', 'field_5a4e9ab2d7068'),
(482, 94, 'informations_falt_2_till_tid', '15:00:00'),
(483, 94, '_informations_falt_2_till_tid', 'field_5a4e9b1bd7069'),
(484, 9, 'foretagsnamn', 'Företagsnamn'),
(485, 9, '_foretagsnamn', 'field_5a4e9e6698470'),
(486, 9, 'telefon', '0765129613'),
(487, 9, '_telefon', 'field_5a4e9e9c98471'),
(488, 9, 'adress', 'Göteborg Företagsgata'),
(489, 9, '_adress', 'field_5a4e9ea998472'),
(490, 9, 'e-mail', 'mail@gmail.com'),
(491, 9, '_e-mail', 'field_5a4e9eb498473'),
(492, 100, 'informations_falt_0_falt', 'Adress : Göteborg Företagsvägen15A'),
(493, 100, '_informations_falt_0_falt', 'field_5a4e988c80347'),
(494, 100, 'informations_falt_1_falt', 'Telefon nummer : 0768549613'),
(495, 100, '_informations_falt_1_falt', 'field_5a4e988c80347'),
(496, 100, 'informations_falt_2_falt', 'Öppetider : 10:00-16:30'),
(497, 100, '_informations_falt_2_falt', 'field_5a4e988c80347'),
(498, 100, 'informations_falt', '3'),
(499, 100, '_informations_falt', 'field_5a4e974a80346'),
(500, 100, 'informations_falt_0_fran_dag', 'Måndag-Torsdag'),
(501, 100, '_informations_falt_0_fran_dag', 'field_5a4e988c80347'),
(502, 100, 'informations_falt_0_till_dag', 'Torsdag'),
(503, 100, '_informations_falt_0_till_dag', 'field_5a4e9a94d7067'),
(504, 100, 'informations_falt_0_fran_tid', '10:00:00'),
(505, 100, '_informations_falt_0_fran_tid', 'field_5a4e9ab2d7068'),
(506, 100, 'informations_falt_0_till_tid', '16:30:00'),
(507, 100, '_informations_falt_0_till_tid', 'field_5a4e9b1bd7069'),
(508, 100, 'informations_falt_1_fran_dag', 'Fredag'),
(509, 100, '_informations_falt_1_fran_dag', 'field_5a4e988c80347'),
(510, 100, 'informations_falt_1_till_dag', 'Fredag'),
(511, 100, '_informations_falt_1_till_dag', 'field_5a4e9a94d7067'),
(512, 100, 'informations_falt_1_fran_tid', '10:00:00'),
(513, 100, '_informations_falt_1_fran_tid', 'field_5a4e9ab2d7068'),
(514, 100, 'informations_falt_1_till_tid', '15:00:00'),
(515, 100, '_informations_falt_1_till_tid', 'field_5a4e9b1bd7069'),
(516, 100, 'informations_falt_2_fran_dag', 'Lördag'),
(517, 100, '_informations_falt_2_fran_dag', 'field_5a4e988c80347'),
(518, 100, 'informations_falt_2_till_dag', 'Söndag'),
(519, 100, '_informations_falt_2_till_dag', 'field_5a4e9a94d7067'),
(520, 100, 'informations_falt_2_fran_tid', '11:00:00'),
(521, 100, '_informations_falt_2_fran_tid', 'field_5a4e9ab2d7068'),
(522, 100, 'informations_falt_2_till_tid', '15:00:00'),
(523, 100, '_informations_falt_2_till_tid', 'field_5a4e9b1bd7069'),
(524, 100, 'foretagsnamn', 'Företagsnamn'),
(525, 100, '_foretagsnamn', 'field_5a4e9e6698470'),
(526, 100, 'telefon', '0765129613'),
(527, 100, '_telefon', 'field_5a4e9e9c98471'),
(528, 100, 'adress', 'Göteborg Företagsgata'),
(529, 100, '_adress', 'field_5a4e9ea998472'),
(530, 100, 'e-mail', 'mail@gmail.com'),
(531, 100, '_e-mail', 'field_5a4e9eb498473'),
(532, 101, 'informations_falt_0_falt', 'Adress : Göteborg Företagsvägen15A'),
(533, 101, '_informations_falt_0_falt', 'field_5a4e988c80347'),
(534, 101, 'informations_falt_1_falt', 'Telefon nummer : 0768549613'),
(535, 101, '_informations_falt_1_falt', 'field_5a4e988c80347'),
(536, 101, 'informations_falt_2_falt', 'Öppetider : 10:00-16:30'),
(537, 101, '_informations_falt_2_falt', 'field_5a4e988c80347'),
(538, 101, 'informations_falt', '3'),
(539, 101, '_informations_falt', 'field_5a4e974a80346'),
(540, 101, 'informations_falt_0_fran_dag', 'Måndag-Torsdag'),
(541, 101, '_informations_falt_0_fran_dag', 'field_5a4e988c80347'),
(542, 101, 'informations_falt_0_till_dag', 'Torsdag'),
(543, 101, '_informations_falt_0_till_dag', 'field_5a4e9a94d7067'),
(544, 101, 'informations_falt_0_fran_tid', '10:00:00'),
(545, 101, '_informations_falt_0_fran_tid', 'field_5a4e9ab2d7068'),
(546, 101, 'informations_falt_0_till_tid', '16:30:00'),
(547, 101, '_informations_falt_0_till_tid', 'field_5a4e9b1bd7069'),
(548, 101, 'informations_falt_1_fran_dag', 'Fredag'),
(549, 101, '_informations_falt_1_fran_dag', 'field_5a4e988c80347'),
(550, 101, 'informations_falt_1_till_dag', 'Fredag'),
(551, 101, '_informations_falt_1_till_dag', 'field_5a4e9a94d7067'),
(552, 101, 'informations_falt_1_fran_tid', '10:00:00'),
(553, 101, '_informations_falt_1_fran_tid', 'field_5a4e9ab2d7068'),
(554, 101, 'informations_falt_1_till_tid', '15:00:00'),
(555, 101, '_informations_falt_1_till_tid', 'field_5a4e9b1bd7069'),
(556, 101, 'informations_falt_2_fran_dag', 'Lördag'),
(557, 101, '_informations_falt_2_fran_dag', 'field_5a4e988c80347'),
(558, 101, 'informations_falt_2_till_dag', 'Söndag'),
(559, 101, '_informations_falt_2_till_dag', 'field_5a4e9a94d7067'),
(560, 101, 'informations_falt_2_fran_tid', '11:00:00'),
(561, 101, '_informations_falt_2_fran_tid', 'field_5a4e9ab2d7068'),
(562, 101, 'informations_falt_2_till_tid', '15:00:00'),
(563, 101, '_informations_falt_2_till_tid', 'field_5a4e9b1bd7069'),
(564, 101, 'foretagsnamn', 'Företagsnamn'),
(565, 101, '_foretagsnamn', 'field_5a4e9e6698470'),
(566, 101, 'telefon', ''),
(567, 101, '_telefon', 'field_5a4e9e9c98471'),
(568, 101, 'adress', 'Göteborg Företagsgata'),
(569, 101, '_adress', 'field_5a4e9ea998472'),
(570, 101, 'e-mail', 'mail@gmail.com'),
(571, 101, '_e-mail', 'field_5a4e9eb498473'),
(572, 102, 'informations_falt_0_falt', 'Adress : Göteborg Företagsvägen15A'),
(573, 102, '_informations_falt_0_falt', 'field_5a4e988c80347'),
(574, 102, 'informations_falt_1_falt', 'Telefon nummer : 0768549613'),
(575, 102, '_informations_falt_1_falt', 'field_5a4e988c80347'),
(576, 102, 'informations_falt_2_falt', 'Öppetider : 10:00-16:30'),
(577, 102, '_informations_falt_2_falt', 'field_5a4e988c80347'),
(578, 102, 'informations_falt', '3'),
(579, 102, '_informations_falt', 'field_5a4e974a80346'),
(580, 102, 'informations_falt_0_fran_dag', 'Måndag-Torsdag'),
(581, 102, '_informations_falt_0_fran_dag', 'field_5a4e988c80347'),
(582, 102, 'informations_falt_0_till_dag', 'Torsdag'),
(583, 102, '_informations_falt_0_till_dag', 'field_5a4e9a94d7067'),
(584, 102, 'informations_falt_0_fran_tid', '10:00:00'),
(585, 102, '_informations_falt_0_fran_tid', 'field_5a4e9ab2d7068'),
(586, 102, 'informations_falt_0_till_tid', '16:30:00'),
(587, 102, '_informations_falt_0_till_tid', 'field_5a4e9b1bd7069'),
(588, 102, 'informations_falt_1_fran_dag', 'Fredag'),
(589, 102, '_informations_falt_1_fran_dag', 'field_5a4e988c80347'),
(590, 102, 'informations_falt_1_till_dag', 'Fredag'),
(591, 102, '_informations_falt_1_till_dag', 'field_5a4e9a94d7067'),
(592, 102, 'informations_falt_1_fran_tid', '10:00:00'),
(593, 102, '_informations_falt_1_fran_tid', 'field_5a4e9ab2d7068'),
(594, 102, 'informations_falt_1_till_tid', '15:00:00'),
(595, 102, '_informations_falt_1_till_tid', 'field_5a4e9b1bd7069'),
(596, 102, 'informations_falt_2_fran_dag', 'Lördag'),
(597, 102, '_informations_falt_2_fran_dag', 'field_5a4e988c80347'),
(598, 102, 'informations_falt_2_till_dag', 'Söndag'),
(599, 102, '_informations_falt_2_till_dag', 'field_5a4e9a94d7067'),
(600, 102, 'informations_falt_2_fran_tid', '11:00:00'),
(601, 102, '_informations_falt_2_fran_tid', 'field_5a4e9ab2d7068'),
(602, 102, 'informations_falt_2_till_tid', '15:00:00'),
(603, 102, '_informations_falt_2_till_tid', 'field_5a4e9b1bd7069'),
(604, 102, 'foretagsnamn', 'Företagsnamn'),
(605, 102, '_foretagsnamn', 'field_5a4e9e6698470'),
(606, 102, 'telefon', '0765129613'),
(607, 102, '_telefon', 'field_5a4e9e9c98471'),
(608, 102, 'adress', 'Göteborg Företagsgata'),
(609, 102, '_adress', 'field_5a4e9ea998472'),
(610, 102, 'e-mail', 'mail@gmail.com'),
(611, 102, '_e-mail', 'field_5a4e9eb498473'),
(620, 7, '_wp_page_template', 'default'),
(621, 7, 'slideshow_0_slideshow_bild', '125'),
(622, 7, '_slideshow_0_slideshow_bild', 'field_5a32a8e17122d'),
(623, 7, 'slideshow_1_slideshow_bild', '126'),
(624, 7, '_slideshow_1_slideshow_bild', 'field_5a32a8e17122d'),
(625, 7, 'slideshow_2_slideshow_bild', '127'),
(626, 7, '_slideshow_2_slideshow_bild', 'field_5a32a8e17122d'),
(629, 7, 'slideshow', '4'),
(630, 7, '_slideshow', 'field_5a32a8ca7122c'),
(631, 107, 'intro_bild', '23'),
(632, 107, '_intro_bild', 'field_5a2fe1a0a1f53'),
(633, 107, 'intro_rubrik', 'Bil Företagsnamn'),
(634, 107, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(635, 107, 'intro_text', 'Lorem ipsum'),
(636, 107, '_intro_text', 'field_5a2ff05dcd5f7'),
(637, 107, 'caption1', 'Lorem ipsum'),
(638, 107, '_caption1', 'field_5a324011ba7f5'),
(639, 107, 'hemsida_del1_rubrik', 'Vad vi är bra på'),
(640, 107, '_hemsida_del1_rubrik', 'field_5a4cf9f4a020e'),
(641, 107, 'hemsida_del1_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(642, 107, '_hemsida_del1_text', 'field_5a4cfa19a020f'),
(643, 107, 'hemsida_del1_bild', '24'),
(644, 107, '_hemsida_del1_bild', 'field_5a4cfe0e3ab49'),
(645, 107, 'slideshow_0_slideshow_bild', '103'),
(646, 107, '_slideshow_0_slideshow_bild', 'field_5a32a8e17122d'),
(647, 107, 'slideshow_1_slideshow_bild', '104'),
(648, 107, '_slideshow_1_slideshow_bild', 'field_5a32a8e17122d'),
(649, 107, 'slideshow_2_slideshow_bild', '105'),
(650, 107, '_slideshow_2_slideshow_bild', 'field_5a32a8e17122d'),
(651, 107, 'slideshow_3_slideshow_bild', '106'),
(652, 107, '_slideshow_3_slideshow_bild', 'field_5a32a8e17122d'),
(653, 107, 'slideshow', '4'),
(654, 107, '_slideshow', 'field_5a32a8ca7122c'),
(655, 108, 'intro_bild', '23'),
(656, 108, '_intro_bild', 'field_5a2fe1a0a1f53'),
(657, 108, 'intro_rubrik', 'Bil Företagsnamn'),
(658, 108, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(659, 108, 'intro_text', 'Lorem ipsum'),
(660, 108, '_intro_text', 'field_5a2ff05dcd5f7'),
(661, 108, 'caption1', 'Lorem ipsum'),
(662, 108, '_caption1', 'field_5a324011ba7f5'),
(663, 108, 'hemsida_del1_rubrik', 'Vad vi är bra på'),
(664, 108, '_hemsida_del1_rubrik', 'field_5a4cf9f4a020e'),
(665, 108, 'hemsida_del1_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(666, 108, '_hemsida_del1_text', 'field_5a4cfa19a020f'),
(667, 108, 'hemsida_del1_bild', '24'),
(668, 108, '_hemsida_del1_bild', 'field_5a4cfe0e3ab49'),
(669, 108, 'slideshow_0_slideshow_bild', ''),
(670, 108, '_slideshow_0_slideshow_bild', 'field_5a32a8e17122d'),
(671, 108, 'slideshow_1_slideshow_bild', '104'),
(672, 108, '_slideshow_1_slideshow_bild', 'field_5a32a8e17122d'),
(673, 108, 'slideshow_2_slideshow_bild', '105'),
(674, 108, '_slideshow_2_slideshow_bild', 'field_5a32a8e17122d'),
(675, 108, 'slideshow_3_slideshow_bild', '106'),
(676, 108, '_slideshow_3_slideshow_bild', 'field_5a32a8e17122d'),
(677, 108, 'slideshow', '4'),
(678, 108, '_slideshow', 'field_5a32a8ca7122c'),
(679, 109, 'intro_bild', '23'),
(680, 109, '_intro_bild', 'field_5a2fe1a0a1f53'),
(681, 109, 'intro_rubrik', 'Bil Företagsnamn'),
(682, 109, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(683, 109, 'intro_text', 'Lorem ipsum'),
(684, 109, '_intro_text', 'field_5a2ff05dcd5f7'),
(685, 109, 'caption1', 'Lorem ipsum'),
(686, 109, '_caption1', 'field_5a324011ba7f5'),
(687, 109, 'hemsida_del1_rubrik', 'Vad vi är bra på'),
(688, 109, '_hemsida_del1_rubrik', 'field_5a4cf9f4a020e');
INSERT INTO `jk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(689, 109, 'hemsida_del1_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(690, 109, '_hemsida_del1_text', 'field_5a4cfa19a020f'),
(691, 109, 'hemsida_del1_bild', '24'),
(692, 109, '_hemsida_del1_bild', 'field_5a4cfe0e3ab49'),
(693, 109, 'slideshow_0_slideshow_bild', '104'),
(694, 109, '_slideshow_0_slideshow_bild', 'field_5a32a8e17122d'),
(695, 109, 'slideshow_1_slideshow_bild', '105'),
(696, 109, '_slideshow_1_slideshow_bild', 'field_5a32a8e17122d'),
(697, 109, 'slideshow_2_slideshow_bild', '106'),
(698, 109, '_slideshow_2_slideshow_bild', 'field_5a32a8e17122d'),
(699, 109, 'slideshow', '3'),
(700, 109, '_slideshow', 'field_5a32a8ca7122c'),
(701, 111, '_wp_attached_file', '2017/12/9411368173.jpg'),
(702, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:599;s:4:\"file\";s:22:\"2017/12/9411368173.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"9411368173-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"9411368173-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"9411368173-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"9411368173-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"9411368173-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"9411368173-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(703, 112, '_wp_attached_file', '2017/12/9447145284.jpg'),
(704, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:599;s:4:\"file\";s:22:\"2017/12/9447145284.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"9447145284-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"9447145284-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"9447145284-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"9447145284-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"9447145284-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"9447145284-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(705, 113, '_wp_attached_file', '2017/12/9478958732.jpg'),
(706, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:599;s:4:\"file\";s:22:\"2017/12/9478958732.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"9478958732-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"9478958732-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"9478958732-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"9478958732-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"9478958732-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"9478958732-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(707, 53, 'fler_bilder', '3'),
(708, 53, '_fler_bilder', 'field_5a4f5c0d89dd6'),
(711, 115, '_wp_attached_file', '2017/12/6ef02271-09c1-4909-8886-da6b9992d6ca.jpg'),
(712, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:48:\"2017/12/6ef02271-09c1-4909-8886-da6b9992d6ca.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"6ef02271-09c1-4909-8886-da6b9992d6ca-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"6ef02271-09c1-4909-8886-da6b9992d6ca-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"6ef02271-09c1-4909-8886-da6b9992d6ca-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"6ef02271-09c1-4909-8886-da6b9992d6ca-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:48:\"6ef02271-09c1-4909-8886-da6b9992d6ca-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:48:\"6ef02271-09c1-4909-8886-da6b9992d6ca-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:48:\"6ef02271-09c1-4909-8886-da6b9992d6ca-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:48:\"6ef02271-09c1-4909-8886-da6b9992d6ca-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(713, 116, '_wp_attached_file', '2017/12/7d1e701e-c26c-4977-95ac-ef45d40745c6.jpg'),
(714, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:545;s:4:\"file\";s:48:\"2017/12/7d1e701e-c26c-4977-95ac-ef45d40745c6.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"7d1e701e-c26c-4977-95ac-ef45d40745c6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"7d1e701e-c26c-4977-95ac-ef45d40745c6-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"7d1e701e-c26c-4977-95ac-ef45d40745c6-768x409.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:409;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"7d1e701e-c26c-4977-95ac-ef45d40745c6-1024x545.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:48:\"7d1e701e-c26c-4977-95ac-ef45d40745c6-400x213.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:48:\"7d1e701e-c26c-4977-95ac-ef45d40745c6-600x319.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:319;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:48:\"7d1e701e-c26c-4977-95ac-ef45d40745c6-200x106.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:106;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:48:\"7d1e701e-c26c-4977-95ac-ef45d40745c6-400x213.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(715, 117, '_wp_attached_file', '2017/12/baf03249-e654-4a7e-89b9-531a1bc3f7b6.jpg'),
(716, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:48:\"2017/12/baf03249-e654-4a7e-89b9-531a1bc3f7b6.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"baf03249-e654-4a7e-89b9-531a1bc3f7b6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"baf03249-e654-4a7e-89b9-531a1bc3f7b6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"baf03249-e654-4a7e-89b9-531a1bc3f7b6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"baf03249-e654-4a7e-89b9-531a1bc3f7b6-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:48:\"baf03249-e654-4a7e-89b9-531a1bc3f7b6-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:48:\"baf03249-e654-4a7e-89b9-531a1bc3f7b6-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:48:\"baf03249-e654-4a7e-89b9-531a1bc3f7b6-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:48:\"baf03249-e654-4a7e-89b9-531a1bc3f7b6-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(717, 45, 'fler_bilder', '4'),
(718, 45, '_fler_bilder', 'field_5a4f5c0d89dd6'),
(719, 118, '_wp_attached_file', '2017/12/1ab455ec-1a86-4005-a24f-89e01a92928f.jpg'),
(720, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:48:\"2017/12/1ab455ec-1a86-4005-a24f-89e01a92928f.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"1ab455ec-1a86-4005-a24f-89e01a92928f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"1ab455ec-1a86-4005-a24f-89e01a92928f-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"1ab455ec-1a86-4005-a24f-89e01a92928f-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"1ab455ec-1a86-4005-a24f-89e01a92928f-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:48:\"1ab455ec-1a86-4005-a24f-89e01a92928f-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:48:\"1ab455ec-1a86-4005-a24f-89e01a92928f-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:48:\"1ab455ec-1a86-4005-a24f-89e01a92928f-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:48:\"1ab455ec-1a86-4005-a24f-89e01a92928f-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(729, 7, 'slideshow_3_slideshow_bild', '128'),
(730, 7, '_slideshow_3_slideshow_bild', 'field_5a32a8e17122d'),
(731, 123, 'intro_bild', '23'),
(732, 123, '_intro_bild', 'field_5a2fe1a0a1f53'),
(733, 123, 'intro_rubrik', 'Bil Företagsnamn'),
(734, 123, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(735, 123, 'intro_text', 'Lorem ipsum'),
(736, 123, '_intro_text', 'field_5a2ff05dcd5f7'),
(737, 123, 'caption1', 'Lorem ipsum'),
(738, 123, '_caption1', 'field_5a324011ba7f5'),
(739, 123, 'hemsida_del1_rubrik', 'Vad vi är bra på'),
(740, 123, '_hemsida_del1_rubrik', 'field_5a4cf9f4a020e'),
(741, 123, 'hemsida_del1_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(742, 123, '_hemsida_del1_text', 'field_5a4cfa19a020f'),
(743, 123, 'hemsida_del1_bild', '24'),
(744, 123, '_hemsida_del1_bild', 'field_5a4cfe0e3ab49'),
(745, 123, 'slideshow_0_slideshow_bild', '119'),
(746, 123, '_slideshow_0_slideshow_bild', 'field_5a32a8e17122d'),
(747, 123, 'slideshow_1_slideshow_bild', '120'),
(748, 123, '_slideshow_1_slideshow_bild', 'field_5a32a8e17122d'),
(749, 123, 'slideshow_2_slideshow_bild', '121'),
(750, 123, '_slideshow_2_slideshow_bild', 'field_5a32a8e17122d'),
(751, 123, 'slideshow', '4'),
(752, 123, '_slideshow', 'field_5a32a8ca7122c'),
(753, 123, 'slideshow_3_slideshow_bild', '122'),
(754, 123, '_slideshow_3_slideshow_bild', 'field_5a32a8e17122d'),
(755, 124, 'intro_bild', '23'),
(756, 124, '_intro_bild', 'field_5a2fe1a0a1f53'),
(757, 124, 'intro_rubrik', 'Bil Företagsnamn'),
(758, 124, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(759, 124, 'intro_text', 'Lorem ipsum'),
(760, 124, '_intro_text', 'field_5a2ff05dcd5f7'),
(761, 124, 'caption1', 'Lorem ipsum'),
(762, 124, '_caption1', 'field_5a324011ba7f5'),
(763, 124, 'hemsida_del1_rubrik', 'Vad vi är bra på'),
(764, 124, '_hemsida_del1_rubrik', 'field_5a4cf9f4a020e'),
(765, 124, 'hemsida_del1_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(766, 124, '_hemsida_del1_text', 'field_5a4cfa19a020f'),
(767, 124, 'hemsida_del1_bild', '24'),
(768, 124, '_hemsida_del1_bild', 'field_5a4cfe0e3ab49'),
(769, 124, 'slideshow_0_slideshow_bild', '23'),
(770, 124, '_slideshow_0_slideshow_bild', 'field_5a32a8e17122d'),
(771, 124, 'slideshow_1_slideshow_bild', '24'),
(772, 124, '_slideshow_1_slideshow_bild', 'field_5a32a8e17122d'),
(773, 124, 'slideshow_2_slideshow_bild', '46'),
(774, 124, '_slideshow_2_slideshow_bild', 'field_5a32a8e17122d'),
(775, 124, 'slideshow', '4'),
(776, 124, '_slideshow', 'field_5a32a8ca7122c'),
(777, 124, 'slideshow_3_slideshow_bild', '52'),
(778, 124, '_slideshow_3_slideshow_bild', 'field_5a32a8e17122d'),
(779, 125, '_wp_attached_file', '2018/01/67d8123b93da36898929252db228b43c.jpg'),
(780, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:44:\"2018/01/67d8123b93da36898929252db228b43c.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"67d8123b93da36898929252db228b43c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"67d8123b93da36898929252db228b43c-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"67d8123b93da36898929252db228b43c-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"67d8123b93da36898929252db228b43c-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:44:\"67d8123b93da36898929252db228b43c-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:44:\"67d8123b93da36898929252db228b43c-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:44:\"67d8123b93da36898929252db228b43c-200x113.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:44:\"67d8123b93da36898929252db228b43c-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(781, 126, '_wp_attached_file', '2018/01/bmw_325i_e30_white_auto_93276_1920x1080.jpg'),
(782, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:51:\"2018/01/bmw_325i_e30_white_auto_93276_1920x1080.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"bmw_325i_e30_white_auto_93276_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"bmw_325i_e30_white_auto_93276_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"bmw_325i_e30_white_auto_93276_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:52:\"bmw_325i_e30_white_auto_93276_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:51:\"bmw_325i_e30_white_auto_93276_1920x1080-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:51:\"bmw_325i_e30_white_auto_93276_1920x1080-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:51:\"bmw_325i_e30_white_auto_93276_1920x1080-200x113.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:51:\"bmw_325i_e30_white_auto_93276_1920x1080-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(783, 127, '_wp_attached_file', '2018/01/Car-Wallpaper-For-iPad-1920×1080-HD-3.jpg'),
(784, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:50:\"2018/01/Car-Wallpaper-For-iPad-1920×1080-HD-3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Car-Wallpaper-For-iPad-1920×1080-HD-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Car-Wallpaper-For-iPad-1920×1080-HD-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"Car-Wallpaper-For-iPad-1920×1080-HD-3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"Car-Wallpaper-For-iPad-1920×1080-HD-3-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:50:\"Car-Wallpaper-For-iPad-1920×1080-HD-3-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:50:\"Car-Wallpaper-For-iPad-1920×1080-HD-3-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:50:\"Car-Wallpaper-For-iPad-1920×1080-HD-3-200x113.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:50:\"Car-Wallpaper-For-iPad-1920×1080-HD-3-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(785, 128, '_wp_attached_file', '2018/01/classic-car-wallpapers-mobile-For-Desktop-Wallpaper.jpg'),
(786, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:63:\"2018/01/classic-car-wallpapers-mobile-For-Desktop-Wallpaper.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"classic-car-wallpapers-mobile-For-Desktop-Wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"classic-car-wallpapers-mobile-For-Desktop-Wallpaper-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:63:\"classic-car-wallpapers-mobile-For-Desktop-Wallpaper-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:64:\"classic-car-wallpapers-mobile-For-Desktop-Wallpaper-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:63:\"classic-car-wallpapers-mobile-For-Desktop-Wallpaper-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:63:\"classic-car-wallpapers-mobile-For-Desktop-Wallpaper-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:63:\"classic-car-wallpapers-mobile-For-Desktop-Wallpaper-200x113.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:63:\"classic-car-wallpapers-mobile-For-Desktop-Wallpaper-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(787, 129, 'intro_bild', '23'),
(788, 129, '_intro_bild', 'field_5a2fe1a0a1f53'),
(789, 129, 'intro_rubrik', 'Bil Företagsnamn'),
(790, 129, '_intro_rubrik', 'field_5a2ff0497aaf0'),
(791, 129, 'intro_text', 'Lorem ipsum'),
(792, 129, '_intro_text', 'field_5a2ff05dcd5f7'),
(793, 129, 'caption1', 'Lorem ipsum'),
(794, 129, '_caption1', 'field_5a324011ba7f5'),
(795, 129, 'hemsida_del1_rubrik', 'Vad vi är bra på'),
(796, 129, '_hemsida_del1_rubrik', 'field_5a4cf9f4a020e'),
(797, 129, 'hemsida_del1_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(798, 129, '_hemsida_del1_text', 'field_5a4cfa19a020f'),
(799, 129, 'hemsida_del1_bild', '24'),
(800, 129, '_hemsida_del1_bild', 'field_5a4cfe0e3ab49'),
(801, 129, 'slideshow_0_slideshow_bild', '125'),
(802, 129, '_slideshow_0_slideshow_bild', 'field_5a32a8e17122d'),
(803, 129, 'slideshow_1_slideshow_bild', '126'),
(804, 129, '_slideshow_1_slideshow_bild', 'field_5a32a8e17122d'),
(805, 129, 'slideshow_2_slideshow_bild', '127'),
(806, 129, '_slideshow_2_slideshow_bild', 'field_5a32a8e17122d'),
(807, 129, 'slideshow', '4'),
(808, 129, '_slideshow', 'field_5a32a8ca7122c'),
(809, 129, 'slideshow_3_slideshow_bild', '128'),
(810, 129, '_slideshow_3_slideshow_bild', 'field_5a32a8e17122d'),
(822, 136, 'fakerpress_flag', '1'),
(823, 137, 'fakerpress_flag', '1'),
(824, 138, '_wp_attached_file', '2018/01/7b57d6f1-6318-32e3-bb3b-25a11852d191.jpg'),
(825, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4272;s:6:\"height\";i:2848;s:4:\"file\";s:48:\"2018/01/7b57d6f1-6318-32e3-bb3b-25a11852d191.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"7b57d6f1-6318-32e3-bb3b-25a11852d191-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"7b57d6f1-6318-32e3-bb3b-25a11852d191-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"7b57d6f1-6318-32e3-bb3b-25a11852d191-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"7b57d6f1-6318-32e3-bb3b-25a11852d191-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:48:\"7b57d6f1-6318-32e3-bb3b-25a11852d191-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:48:\"7b57d6f1-6318-32e3-bb3b-25a11852d191-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:48:\"7b57d6f1-6318-32e3-bb3b-25a11852d191-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:48:\"7b57d6f1-6318-32e3-bb3b-25a11852d191-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(826, 138, 'fakerpress_flag', '1'),
(827, 137, '_thumbnail_id', '138'),
(828, 139, 'fakerpress_flag', '1'),
(829, 136, '_edit_lock', '1515501899:1'),
(830, 136, '_edit_last', '1'),
(832, 136, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(833, 139, '_edit_lock', '1515502738:1'),
(834, 139, '_edit_last', '1'),
(836, 139, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(837, 143, '_wp_attached_file', '2017/12/cq5dam.resized.img_.1680.large_.time1476319354458.jpg'),
(838, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1680;s:6:\"height\";i:756;s:4:\"file\";s:61:\"2017/12/cq5dam.resized.img_.1680.large_.time1476319354458.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"cq5dam.resized.img_.1680.large_.time1476319354458-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"cq5dam.resized.img_.1680.large_.time1476319354458-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:61:\"cq5dam.resized.img_.1680.large_.time1476319354458-768x346.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:346;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:62:\"cq5dam.resized.img_.1680.large_.time1476319354458-1024x461.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:61:\"cq5dam.resized.img_.1680.large_.time1476319354458-400x180.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:61:\"cq5dam.resized.img_.1680.large_.time1476319354458-600x270.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:60:\"cq5dam.resized.img_.1680.large_.time1476319354458-200x90.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:61:\"cq5dam.resized.img_.1680.large_.time1476319354458-400x180.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(839, 61, '_thumbnail_id', '143'),
(840, 144, '_wp_attached_file', '2018/01/Archetypal-Male-Face-of-Beauty-embargoed-to-00.01hrs-30.03.15.jpg'),
(841, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:509;s:4:\"file\";s:73:\"2018/01/Archetypal-Male-Face-of-Beauty-embargoed-to-00.01hrs-30.03.15.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:73:\"Archetypal-Male-Face-of-Beauty-embargoed-to-00.01hrs-30.03.15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:73:\"Archetypal-Male-Face-of-Beauty-embargoed-to-00.01hrs-30.03.15-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:73:\"Archetypal-Male-Face-of-Beauty-embargoed-to-00.01hrs-30.03.15-400x407.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:73:\"Archetypal-Male-Face-of-Beauty-embargoed-to-00.01hrs-30.03.15-200x204.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:73:\"Archetypal-Male-Face-of-Beauty-embargoed-to-00.01hrs-30.03.15-400x407.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:155:\"The archetypal male face of beauty according to a new scientific study to mark the launch of the Samsung Galaxy S6.  Embargoed to 00.01hrs 30th March 2015.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:64:\"The archetypal male face of beauty according to a new scientific\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(842, 145, '_wp_attached_file', '2018/01/WomanFace.jpg'),
(843, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:497;s:4:\"file\";s:21:\"2018/01/WomanFace.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"WomanFace-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"WomanFace-300x298.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:21:\"WomanFace-400x398.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:21:\"WomanFace-200x199.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:21:\"WomanFace-400x398.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:157:\"The archetypal female face of beauty according to a new scientific study to mark the launch of the Samsung Galaxy S6.  Embargoed to 00.01hrs 30th March 2015.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:64:\"The archetypal female face of beauty according to a new scientif\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(844, 146, 'omoss_rubrik', 'Vilka är vi?'),
(845, 146, '_omoss_rubrik', 'field_5a4e5510dc74e'),
(846, 146, 'omoss_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et diam justo. Integer id justo ut eros molestie molestie in vitae augue. Praesent nibh magna, interdum in viverra vitae, dapibus quis felis. Pellentesque finibus felis tristique quam tempor, non efficitur ex fringilla. Phasellus sit amet tristique ante. Vivamus non lacinia quam. Sed pretium risus a suscipit bibendum. In accumsan turpis egestas metus fermentum dictum. Integer placerat eu dui sed malesuada. Proin quis pellentesque elit. '),
(847, 146, '_omoss_text', 'field_5a4e5527dc74f'),
(848, 146, 'omoss_bild', '75'),
(849, 146, '_omoss_bild', 'field_5a4e5546dc750'),
(850, 146, '4_kolumner_0_4_kolumner_rubrik', 'Emma Emmasson'),
(851, 146, '_4_kolumner_0_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(852, 146, '4_kolumner_0_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(853, 146, '_4_kolumner_0_4_kolumner_text', 'field_5a4e5733a80cd'),
(854, 146, '4_kolumner_0_4_kolumner_bild', '145'),
(855, 146, '_4_kolumner_0_4_kolumner_bild', 'field_5a4e5743a80ce'),
(856, 146, '4_kolumner', '4'),
(857, 146, '_4_kolumner', 'field_5a4e56c7a80cb'),
(858, 146, '4_kolumner_1_4_kolumner_rubrik', 'Gustav Gustavsson'),
(859, 146, '_4_kolumner_1_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(860, 146, '4_kolumner_1_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(861, 146, '_4_kolumner_1_4_kolumner_text', 'field_5a4e5733a80cd'),
(862, 146, '4_kolumner_1_4_kolumner_bild', '144'),
(863, 146, '_4_kolumner_1_4_kolumner_bild', 'field_5a4e5743a80ce'),
(864, 146, '4_kolumner_2_4_kolumner_rubrik', 'Hanna Hannasson'),
(865, 146, '_4_kolumner_2_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(866, 146, '4_kolumner_2_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(867, 146, '_4_kolumner_2_4_kolumner_text', 'field_5a4e5733a80cd'),
(868, 146, '4_kolumner_2_4_kolumner_bild', '145'),
(869, 146, '_4_kolumner_2_4_kolumner_bild', 'field_5a4e5743a80ce'),
(870, 146, '4_kolumner_3_4_kolumner_rubrik', 'Joachim Joachimsson'),
(871, 146, '_4_kolumner_3_4_kolumner_rubrik', 'field_5a4e570da80cc'),
(872, 146, '4_kolumner_3_4_kolumner_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(873, 146, '_4_kolumner_3_4_kolumner_text', 'field_5a4e5733a80cd'),
(874, 146, '4_kolumner_3_4_kolumner_bild', '144'),
(875, 146, '_4_kolumner_3_4_kolumner_bild', 'field_5a4e5743a80ce'),
(876, 148, '_edit_last', '1'),
(877, 148, '_edit_lock', '1515768737:1'),
(878, 149, '_wp_attached_file', '2018/01/2250914257.jpg'),
(879, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:601;s:4:\"file\";s:22:\"2018/01/2250914257.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"2250914257-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"2250914257-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"2250914257-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"2250914257-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"2250914257-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"2250914257-200x134.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"2250914257-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(880, 150, '_wp_attached_file', '2018/01/2266277060.jpg'),
(881, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:601;s:4:\"file\";s:22:\"2018/01/2266277060.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"2266277060-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"2266277060-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"2266277060-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"2266277060-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"2266277060-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"2266277060-200x134.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"2266277060-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(882, 151, '_wp_attached_file', '2018/01/2274204386.jpg'),
(883, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:601;s:4:\"file\";s:22:\"2018/01/2274204386.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"2274204386-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"2274204386-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"2274204386-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"2274204386-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"2274204386-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"2274204386-200x134.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"2274204386-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(884, 152, '_wp_attached_file', '2018/01/7421210370.jpg'),
(885, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:601;s:4:\"file\";s:22:\"2018/01/7421210370.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"7421210370-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"7421210370-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"7421210370-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"7421210370-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"7421210370-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"7421210370-200x134.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"7421210370-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(886, 148, 'pris', '739000'),
(887, 148, '_pris', 'field_5a324c849b5d1'),
(888, 148, 'arsmodell', '20160129'),
(889, 148, '_arsmodell', 'field_5a324bd39b5cd'),
(890, 148, 'miltal', '2935'),
(891, 148, '_miltal', 'field_5a324c309b5ce'),
(892, 148, 'vaxellada', 'Automat'),
(893, 148, '_vaxellada', 'field_5a324c699b5cf'),
(894, 148, 'drivmedel', 'Diesel'),
(895, 148, '_drivmedel', 'field_5a324c719b5d0'),
(896, 148, 'effekt', '306'),
(897, 148, '_effekt', 'field_5a324cb59b5d2'),
(898, 148, 'drift', 'AWD'),
(899, 148, '_drift', 'field_5a324cd79b5d3'),
(900, 148, 'beskrivning', 'PRISSvensksåld Range Rover Sport TDV6 HSE Dynamic med endast 490 Mil, signatur 21 tums aluminiumfälgar svart Oxford läderklädsel Isofixfästen 2 zons Klimatanläggning Elektrisk justerbar ratt Farthållare 4-hjulssystem Navigation Elektrisk baklucka Värme i framrutan Värme i bakrutan Övrig extra utrustning Elektrisk dragkrok Värme i ratten baksätet Värme i stolarna fram och bak Öppningsbart panoramaglastak Keyless entry.'),
(901, 148, '_beskrivning', 'field_5a324d159b5d4'),
(902, 148, 'bild', '151'),
(903, 148, '_bild', 'field_5a324bb79b5cc'),
(904, 148, 'arkiv_bild', '151'),
(905, 148, '_arkiv_bild', 'field_5a379a9be9a9f'),
(906, 148, 'fler_bilder', '3'),
(907, 148, '_fler_bilder', 'field_5a4f5c0d89dd6'),
(908, 148, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(909, 153, '_edit_last', '1'),
(910, 153, '_edit_lock', '1515768641:1'),
(911, 154, '_wp_attached_file', '2018/01/4263880745.jpg'),
(912, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:599;s:4:\"file\";s:22:\"2018/01/4263880745.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"4263880745-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"4263880745-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4263880745-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"4263880745-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"4263880745-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"4263880745-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"4263880745-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(913, 155, '_wp_attached_file', '2018/01/4223543978.jpg'),
(914, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:599;s:4:\"file\";s:22:\"2018/01/4223543978.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"4223543978-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"4223543978-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4223543978-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"4223543978-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"4223543978-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"4223543978-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"4223543978-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(915, 156, '_wp_attached_file', '2018/01/4228103634.jpg'),
(916, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:599;s:4:\"file\";s:22:\"2018/01/4228103634.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"4228103634-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"4228103634-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4228103634-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"4228103634-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"4228103634-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"4228103634-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"4228103634-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `jk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(917, 157, '_wp_attached_file', '2018/01/4251393763.jpg'),
(918, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:599;s:4:\"file\";s:22:\"2018/01/4251393763.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"4251393763-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"4251393763-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4251393763-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"4251393763-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"4251393763-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"4251393763-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"4251393763-400x266.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(919, 153, 'pris', '294000'),
(920, 153, '_pris', 'field_5a324c849b5d1'),
(921, 153, 'arsmodell', '20170108'),
(922, 153, '_arsmodell', 'field_5a324bd39b5cd'),
(923, 153, 'miltal', '3078'),
(924, 153, '_miltal', 'field_5a324c309b5ce'),
(925, 153, 'vaxellada', 'Manuell'),
(926, 153, '_vaxellada', 'field_5a324c699b5cf'),
(927, 153, 'drivmedel', 'Diesel'),
(928, 153, '_drivmedel', 'field_5a324c719b5d0'),
(929, 153, 'effekt', '190'),
(930, 153, '_effekt', 'field_5a324cb59b5d2'),
(931, 153, 'drift', 'FWD'),
(932, 153, '_drift', 'field_5a324cd79b5d3'),
(933, 153, 'beskrivning', 'Farthållare med fartbegränsare, Parkeringsvärmare med fjärrkontroll, Förarinformationssystem med färgdisplay, Anslutningsgaranti 1 år max 90 000 km (ett års extra nybilsgaranti), Nybilsgaranti samt Vagnskadegaranti tom: 2019-06-26, Med reservation för felskrivning, Vid minst 50% finansiering via Audi Finans kan serviceavtal med 2 st fria service köpas till för 4995 kr.'),
(934, 153, '_beskrivning', 'field_5a324d159b5d4'),
(935, 153, 'bild', '154'),
(936, 153, '_bild', 'field_5a324bb79b5cc'),
(937, 153, 'arkiv_bild', '154'),
(938, 153, '_arkiv_bild', 'field_5a379a9be9a9f'),
(939, 153, 'fler_bilder', '3'),
(940, 153, '_fler_bilder', 'field_5a4f5c0d89dd6'),
(941, 153, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(942, 158, '_edit_last', '1'),
(943, 158, '_edit_lock', '1515768771:1'),
(944, 159, '_wp_attached_file', '2018/01/4240957664.jpg'),
(945, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2018/01/4240957664.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"4240957664-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"4240957664-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4240957664-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"4240957664-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"4240957664-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"4240957664-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"4240957664-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(946, 160, '_wp_attached_file', '2018/01/4275050940.jpg'),
(947, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2018/01/4275050940.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"4275050940-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"4275050940-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4275050940-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"4275050940-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"4275050940-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"4275050940-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"4275050940-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(948, 161, '_wp_attached_file', '2018/01/4292097578.jpg'),
(949, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2018/01/4292097578.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"4292097578-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"4292097578-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4292097578-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"4292097578-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"4292097578-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"4292097578-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"4292097578-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(950, 162, '_wp_attached_file', '2018/01/4298341069.jpg'),
(951, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2018/01/4298341069.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"4298341069-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"4298341069-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4298341069-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"arkiv\";a:4:{s:4:\"file\";s:22:\"4298341069-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"del1_bild\";a:4:{s:4:\"file\";s:22:\"4298341069-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"face\";a:4:{s:4:\"file\";s:22:\"4298341069-200x133.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"bilar\";a:4:{s:4:\"file\";s:22:\"4298341069-400x267.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(952, 158, 'pris', '479000'),
(953, 158, '_pris', 'field_5a324c849b5d1'),
(954, 158, 'arsmodell', '20170106'),
(955, 158, '_arsmodell', 'field_5a324bd39b5cd'),
(956, 158, 'miltal', '820'),
(957, 158, '_miltal', 'field_5a324c309b5ce'),
(958, 158, 'vaxellada', 'Automat'),
(959, 158, '_vaxellada', 'field_5a324c699b5cf'),
(960, 158, 'drivmedel', 'Diesel'),
(961, 158, '_drivmedel', 'field_5a324c719b5d0'),
(962, 158, 'effekt', '194'),
(963, 158, '_effekt', 'field_5a324cb59b5d2'),
(964, 158, 'drift', 'RWD'),
(965, 158, '_drift', 'field_5a324cd79b5d3'),
(966, 158, 'beskrivning', 'Mercedes-Benz E 220 d AMG Coupe av senaste modellen. 1 ägare. Utrustning: Webasto fjärrstyrd bränsledriven värmare. AMG interiör och exteriör paket. Panoramatak i glas öppningsbart. 20\" AMG fälgar i multieker design. Sportstolar i Artico läder/Dinamica. Elinfällbara bakspeglar. Aktiv Parkerings Assistent inkl. Parktronic fram & bak. Backkamera. Thermatic 2-zons klimatanläggning. Analog klocka. '),
(967, 158, '_beskrivning', 'field_5a324d159b5d4'),
(968, 158, 'bild', '162'),
(969, 158, '_bild', 'field_5a324bb79b5cc'),
(970, 158, 'arkiv_bild', '162'),
(971, 158, '_arkiv_bild', 'field_5a379a9be9a9f'),
(972, 158, 'fler_bilder', '3'),
(973, 158, '_fler_bilder', 'field_5a4f5c0d89dd6'),
(974, 158, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(975, 137, '_edit_lock', '1515755687:1'),
(976, 137, '_edit_last', '1'),
(978, 137, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(979, 164, '_edit_last', '1'),
(980, 164, '_edit_lock', '1515760294:1'),
(982, 164, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(984, 164, '_wp_trash_meta_status', 'publish'),
(985, 164, '_wp_trash_meta_time', '1515760438'),
(986, 164, '_wp_desired_post_slug', 'ny-post'),
(987, 153, 'fler_bilder_0_fler_bilder_bild', '157'),
(988, 153, '_fler_bilder_0_fler_bilder_bild', 'field_5a58c6b16f50d'),
(989, 153, 'fler_bilder_1_fler_bilder_bild', '156'),
(990, 153, '_fler_bilder_1_fler_bilder_bild', 'field_5a58c6b16f50d'),
(991, 153, 'fler_bilder_2_fler_bilder_bild', '155'),
(992, 153, '_fler_bilder_2_fler_bilder_bild', 'field_5a58c6b16f50d'),
(993, 45, 'fler_bilder_0_fler_bilder_bild', '118'),
(994, 45, '_fler_bilder_0_fler_bilder_bild', 'field_5a58c6b16f50d'),
(995, 45, 'fler_bilder_1_fler_bilder_bild', '117'),
(996, 45, '_fler_bilder_1_fler_bilder_bild', 'field_5a58c6b16f50d'),
(997, 45, 'fler_bilder_2_fler_bilder_bild', '116'),
(998, 45, '_fler_bilder_2_fler_bilder_bild', 'field_5a58c6b16f50d'),
(999, 45, 'fler_bilder_3_fler_bilder_bild', '115'),
(1000, 45, '_fler_bilder_3_fler_bilder_bild', 'field_5a58c6b16f50d'),
(1001, 148, 'fler_bilder_0_fler_bilder_bild', '152'),
(1002, 148, '_fler_bilder_0_fler_bilder_bild', 'field_5a58c6b16f50d'),
(1003, 148, 'fler_bilder_1_fler_bilder_bild', '150'),
(1004, 148, '_fler_bilder_1_fler_bilder_bild', 'field_5a58c6b16f50d'),
(1005, 148, 'fler_bilder_2_fler_bilder_bild', '149'),
(1006, 148, '_fler_bilder_2_fler_bilder_bild', 'field_5a58c6b16f50d'),
(1007, 158, 'fler_bilder_0_fler_bilder_bild', '161'),
(1008, 158, '_fler_bilder_0_fler_bilder_bild', 'field_5a58c6b16f50d'),
(1009, 158, 'fler_bilder_1_fler_bilder_bild', '160'),
(1010, 158, '_fler_bilder_1_fler_bilder_bild', 'field_5a58c6b16f50d'),
(1011, 158, 'fler_bilder_2_fler_bilder_bild', '159'),
(1012, 158, '_fler_bilder_2_fler_bilder_bild', 'field_5a58c6b16f50d'),
(1013, 53, 'fler_bilder_0_fler_bilder_bild', '113'),
(1014, 53, '_fler_bilder_0_fler_bilder_bild', 'field_5a58c6b16f50d'),
(1015, 53, 'fler_bilder_1_fler_bilder_bild', '112'),
(1016, 53, '_fler_bilder_1_fler_bilder_bild', 'field_5a58c6b16f50d'),
(1017, 53, 'fler_bilder_2_fler_bilder_bild', '111'),
(1018, 53, '_fler_bilder_2_fler_bilder_bild', 'field_5a58c6b16f50d');

-- --------------------------------------------------------

--
-- Table structure for table `jk_posts`
--

CREATE TABLE `jk_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `jk_posts`
--

INSERT INTO `jk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-04 14:13:33', '2017-12-04 13:13:33', 'Välkommen till WordPress. Det här är ditt första inlägg. Redigera eller radera det. Sedan kan du börja skriva!', 'Hej världen!', '', 'trash', 'open', 'open', '', 'hej-varlden__trashed', '', '', '2017-12-25 11:08:36', '2017-12-25 10:08:36', '', 0, 'http://localhost/slutprojekt/?p=1', 0, 'post', '', 1),
(4, 1, '2017-12-12 14:42:54', '0000-00-00 00:00:00', '', 'Hem', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-12 14:42:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/slutprojekt/?p=4', 1, 'nav_menu_item', '', 0),
(7, 1, '2017-12-12 14:43:36', '2017-12-12 13:43:36', '', 'Hem', '', 'publish', 'closed', 'closed', '', 'hem', '', '', '2018-01-06 13:11:53', '2018-01-06 12:11:53', '', 0, 'http://localhost/slutprojekt/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-12-12 14:43:36', '2017-12-12 13:43:36', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-12 14:43:36', '2017-12-12 13:43:36', '', 7, 'http://localhost/slutprojekt/2017/12/12/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-12-12 14:43:46', '2017-12-12 13:43:46', '', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2018-01-04 22:49:40', '2018-01-04 21:49:40', '', 0, 'http://localhost/slutprojekt/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-12-12 14:43:46', '2017-12-12 13:43:46', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-12-12 14:43:46', '2017-12-12 13:43:46', '', 9, 'http://localhost/slutprojekt/2017/12/12/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-12-12 14:43:55', '2017-12-12 13:43:55', '', 'Nyheter', '', 'publish', 'closed', 'closed', '', 'nyheter', '', '', '2017-12-12 14:43:55', '2017-12-12 13:43:55', '', 0, 'http://localhost/slutprojekt/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-12-12 14:43:55', '2017-12-12 13:43:55', '', 'Nyheter', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-12-12 14:43:55', '2017-12-12 13:43:55', '', 11, 'http://localhost/slutprojekt/2017/12/12/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-12-12 14:44:10', '2017-12-12 13:44:10', '', 'Om oss', '', 'publish', 'closed', 'closed', '', 'om-oss', '', '', '2018-01-11 10:32:56', '2018-01-11 09:32:56', '', 0, 'http://localhost/slutprojekt/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-12-12 14:44:10', '2017-12-12 13:44:10', '', 'Om oss', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-12 14:44:10', '2017-12-12 13:44:10', '', 13, 'http://localhost/slutprojekt/2017/12/12/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-12-12 14:44:15', '0000-00-00 00:00:00', '', 'Hem', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-12 14:44:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/slutprojekt/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-12-12 14:44:34', '2017-12-12 13:44:34', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2017-12-23 16:48:32', '2017-12-23 15:48:32', '', 0, 'http://localhost/slutprojekt/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2017-12-12 14:44:34', '2017-12-12 13:44:34', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2017-12-23 16:48:32', '2017-12-23 15:48:32', '', 0, 'http://localhost/slutprojekt/?p=17', 5, 'nav_menu_item', '', 0),
(18, 1, '2017-12-12 14:44:34', '2017-12-12 13:44:34', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2017-12-23 16:48:32', '2017-12-23 15:48:32', '', 0, 'http://localhost/slutprojekt/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2017-12-12 14:44:34', '2017-12-12 13:44:34', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2017-12-23 16:48:32', '2017-12-23 15:48:32', '', 0, 'http://localhost/slutprojekt/?p=19', 4, 'nav_menu_item', '', 0),
(21, 1, '2017-12-12 15:03:42', '2017-12-12 14:03:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Hemsida', 'hemsida', 'publish', 'closed', 'closed', '', 'group_5a2fe18ee2e34', '', '', '2018-01-11 18:53:46', '2018-01-11 17:53:46', '', 0, 'http://localhost/slutprojekt/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2017-12-12 15:03:42', '2017-12-12 14:03:42', 'a:16:{s:4:\"type\";s:5:\"image\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Intro Bild', 'intro_bild', 'publish', 'closed', 'closed', '', 'field_5a2fe1a0a1f53', '', '', '2017-12-12 15:07:44', '2017-12-12 14:07:44', '', 21, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(23, 1, '2017-12-12 15:04:11', '2017-12-12 14:04:11', '', 'DSC_8197', '', 'inherit', 'open', 'closed', '', 'dsc_8197', '', '', '2017-12-12 16:03:36', '2017-12-12 15:03:36', '', 7, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/DSC_8197.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2017-12-12 15:04:17', '2017-12-12 14:04:17', '', 'DSC_1079-1280x682', '', 'inherit', 'open', 'closed', '', 'dsc_1079-1280x682', '', '', '2018-01-03 17:00:54', '2018-01-03 16:00:54', '', 7, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/DSC_1079-1280x682.jpeg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2017-12-12 15:04:53', '2017-12-12 14:04:53', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-12 15:04:53', '2017-12-12 14:04:53', '', 7, 'http://localhost/slutprojekt/2017/12/12/7-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-12-12 16:05:56', '2017-12-12 15:05:56', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Intro Rubrik', 'intro_rubrik', 'publish', 'closed', 'closed', '', 'field_5a2ff0497aaf0', '', '', '2017-12-12 16:06:17', '2017-12-12 15:06:17', '', 21, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=26', 1, 'acf-field', '', 0),
(27, 1, '2017-12-12 16:06:17', '2017-12-12 15:06:17', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Intro Text', 'intro_text', 'publish', 'closed', 'closed', '', 'field_5a2ff05dcd5f7', '', '', '2017-12-12 16:06:17', '2017-12-12 15:06:17', '', 21, 'http://localhost/slutprojekt/?post_type=acf-field&p=27', 2, 'acf-field', '', 0),
(28, 1, '2017-12-12 16:07:03', '2017-12-12 15:07:03', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-12 16:07:03', '2017-12-12 15:07:03', '', 7, 'http://localhost/slutprojekt/2017/12/12/7-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-12-14 10:11:09', '2017-12-14 09:11:09', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Caption', 'caption1', 'publish', 'closed', 'closed', '', 'field_5a324011ba7f5', '', '', '2017-12-14 10:11:09', '2017-12-14 09:11:09', '', 21, 'http://localhost/slutprojekt/?post_type=acf-field&p=30', 3, 'acf-field', '', 0),
(31, 1, '2017-12-14 10:11:47', '2017-12-14 09:11:47', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-14 10:11:47', '2017-12-14 09:11:47', '', 7, 'http://localhost/slutprojekt/2017/12/14/7-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"bilar_post_type\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Bil', 'bil', 'publish', 'closed', 'closed', '', 'group_5a324bae0ba12', '', '', '2018-01-12 15:32:00', '2018-01-12 14:32:00', '', 0, 'http://localhost/slutprojekt/?post_type=acf-field-group&#038;p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:13:{s:4:\"type\";s:6:\"number\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Pris', 'pris', 'publish', 'closed', 'closed', '', 'field_5a324c849b5d1', '', '', '2018-01-09 10:28:27', '2018-01-09 09:28:27', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=33', 0, 'acf-field', '', 0),
(34, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:9:{s:4:\"type\";s:11:\"date_picker\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:1:\"Y\";s:13:\"return_format\";s:1:\"Y\";s:9:\"first_day\";i:1;}', 'Årsmodell', 'arsmodell', 'publish', 'closed', 'closed', '', 'field_5a324bd39b5cd', '', '', '2017-12-14 11:06:54', '2017-12-14 10:06:54', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&p=34', 1, 'acf-field', '', 0),
(35, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Miltal', 'miltal', 'publish', 'closed', 'closed', '', 'field_5a324c309b5ce', '', '', '2017-12-14 11:06:54', '2017-12-14 10:06:54', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&p=35', 2, 'acf-field', '', 0),
(36, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:14:{s:4:\"type\";s:6:\"select\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:7:\"Manuell\";s:7:\"Manuell\";s:7:\"Automat\";s:7:\"Automat\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Växellåda', 'vaxellada', 'publish', 'closed', 'closed', '', 'field_5a324c699b5cf', '', '', '2017-12-14 11:25:06', '2017-12-14 10:25:06', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=36', 3, 'acf-field', '', 0),
(37, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:14:{s:4:\"type\";s:6:\"select\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:6:\"Bensin\";s:6:\"Bensin\";s:6:\"Diesel\";s:6:\"Diesel\";s:6:\"Etanol\";s:6:\"Etanol\";s:6:\"Hybrid\";s:6:\"Hybrid\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Drivmedel', 'drivmedel', 'publish', 'closed', 'closed', '', 'field_5a324c719b5d0', '', '', '2017-12-14 11:25:06', '2017-12-14 10:25:06', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=37', 4, 'acf-field', '', 0),
(38, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Effekt', 'effekt', 'publish', 'closed', 'closed', '', 'field_5a324cb59b5d2', '', '', '2017-12-14 11:06:54', '2017-12-14 10:06:54', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&p=38', 5, 'acf-field', '', 0),
(39, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:14:{s:4:\"type\";s:6:\"select\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:3:\"FWD\";s:3:\"FWD\";s:3:\"RWD\";s:3:\"RWD\";s:3:\"AWD\";s:3:\"AWD\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Drift', 'drift', 'publish', 'closed', 'closed', '', 'field_5a324cd79b5d3', '', '', '2017-12-14 11:06:54', '2017-12-14 10:06:54', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&p=39', 6, 'acf-field', '', 0),
(40, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Beskrivning', 'beskrivning', 'publish', 'closed', 'closed', '', 'field_5a324d159b5d4', '', '', '2017-12-14 11:06:54', '2017-12-14 10:06:54', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&p=40', 7, 'acf-field', '', 0),
(41, 1, '2017-12-14 11:06:54', '2017-12-14 10:06:54', 'a:16:{s:4:\"type\";s:5:\"image\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Bild', 'bild', 'publish', 'closed', 'closed', '', 'field_5a324bb79b5cc', '', '', '2017-12-14 15:45:41', '2017-12-14 14:45:41', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=41', 8, 'acf-field', '', 0),
(42, 1, '2017-12-14 11:23:19', '2017-12-14 10:23:19', '', 'BMW 335i', '', 'publish', 'closed', 'closed', '', 'bmw-335', '', '', '2017-12-28 12:01:04', '2017-12-28 11:01:04', '', 0, 'http://localhost/slutprojekt/?post_type=bilar_post_type&#038;p=42', 0, 'bilar_post_type', '', 0),
(43, 1, '2017-12-14 11:26:14', '2017-12-14 10:26:14', '', 'BMW 335i', '', 'inherit', 'closed', 'closed', '', '42-autosave-v1', '', '', '2017-12-14 11:26:14', '2017-12-14 10:26:14', '', 42, 'http://localhost/slutprojekt/2017/12/14/42-autosave-v1/', 0, 'revision', '', 0),
(45, 1, '2017-12-14 17:32:57', '2017-12-14 16:32:57', '', 'Ferrari 488', '', 'publish', 'closed', 'closed', '', 'ferrari-488', '', '', '2018-01-12 15:53:49', '2018-01-12 14:53:49', '', 0, 'http://localhost/slutprojekt/?post_type=bilar_post_type&#038;p=45', 0, 'bilar_post_type', '', 0),
(46, 1, '2017-12-14 17:32:48', '2017-12-14 16:32:48', '', '6b3442b0-a1a9-470b-bd96-9801324eb22f', '', 'inherit', 'open', 'closed', '', '6b3442b0-a1a9-470b-bd96-9801324eb22f', '', '', '2017-12-18 11:40:07', '2017-12-18 10:40:07', '', 45, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/6b3442b0-a1a9-470b-bd96-9801324eb22f.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2017-12-14 17:38:50', '2017-12-14 16:38:50', 'a:11:{s:4:\"type\";s:8:\"repeater\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Fler bilder', 'slideshow', 'publish', 'closed', 'closed', '', 'field_5a32a8ca7122c', '', '', '2018-01-05 11:08:36', '2018-01-05 10:08:36', '', 21, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=47', 9, 'acf-field', '', 0),
(48, 1, '2017-12-14 17:38:50', '2017-12-14 16:38:50', 'a:16:{s:4:\"type\";s:5:\"image\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Bild', 'slideshow_bild', 'publish', 'closed', 'closed', '', 'field_5a32a8e17122d', '', '', '2018-01-05 10:55:41', '2018-01-05 09:55:41', '', 47, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=48', 0, 'acf-field', '', 0),
(49, 1, '2017-12-18 11:38:45', '2017-12-18 10:38:45', 'a:16:{s:4:\"type\";s:5:\"image\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Arkiv bild', 'arkiv_bild', 'publish', 'closed', 'closed', '', 'field_5a379a9be9a9f', '', '', '2018-01-05 12:06:12', '2018-01-05 11:06:12', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=49', 9, 'acf-field', '', 0),
(51, 1, '2017-12-23 16:46:04', '2017-12-23 15:46:04', '', 'Bilar', '', 'publish', 'closed', 'closed', '', 'bilar', '', '', '2017-12-23 16:48:32', '2017-12-23 15:48:32', '', 0, 'http://localhost/slutprojekt/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2017-12-23 17:06:56', '2017-12-23 16:06:56', '', '4db7e063-da87-4f46-b83a-ecda2f2a2415', '', 'inherit', 'open', 'closed', '', '4db7e063-da87-4f46-b83a-ecda2f2a2415-2', '', '', '2018-01-06 12:22:43', '2018-01-06 11:22:43', '', 42, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/4db7e063-da87-4f46-b83a-ecda2f2a2415-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2017-12-23 17:44:04', '2017-12-23 16:44:04', '', 'Volvo V70', '', 'publish', 'closed', 'closed', '', 'volvo-v70', '', '', '2018-01-12 15:55:42', '2018-01-12 14:55:42', '', 0, 'http://localhost/slutprojekt/?post_type=bilar_post_type&#038;p=53', 0, 'bilar_post_type', '', 0),
(54, 1, '2017-12-23 17:43:33', '2017-12-23 16:43:33', '', '9427818818', '', 'inherit', 'open', 'closed', '', '9427818818', '', '', '2017-12-23 17:44:00', '2017-12-23 16:44:00', '', 53, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/9427818818.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2017-12-25 11:08:36', '2017-12-25 10:08:36', 'Välkommen till WordPress. Det här är ditt första inlägg. Redigera eller radera det. Sedan kan du börja skriva!', 'Hej världen!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-25 11:08:36', '2017-12-25 10:08:36', '', 1, 'http://localhost/slutprojekt/2017/12/25/1-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-12-25 11:11:13', '2017-12-25 10:11:13', 'Vi har bilar som passar alla.<!--more-->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vestibulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.\r\n\r\n<img class=\"alignnone wp-image-23 size-large\" src=\"http://localhost/slutprojekt/wp-content/uploads/2017/12/DSC_8197-e1513091013770-1024x455.jpg\" alt=\"\" width=\"1024\" height=\"455\" />', 'Hej och välkommen till oss!', '', 'publish', 'open', 'open', '', 'hej-och-valkommen-till-oss', '', '', '2017-12-27 16:09:50', '2017-12-27 15:09:50', '', 0, 'http://localhost/slutprojekt/?p=56', 0, 'post', '', 0),
(57, 1, '2017-12-25 11:11:13', '2017-12-25 10:11:13', 'Vi har bilar som passar alla.\r\n\r\n<img class=\"alignnone size-medium wp-image-23\" src=\"http://localhost/slutprojekt/wp-content/uploads/2017/12/DSC_8197-e1513091013770-300x133.jpg\" alt=\"\" width=\"300\" height=\"133\" />', 'Hej och välkommen till oss!', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-12-25 11:11:13', '2017-12-25 10:11:13', '', 56, 'http://localhost/slutprojekt/2017/12/25/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-12-25 11:57:41', '2017-12-25 10:57:41', 'Vi har bilar som passar alla.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vestibulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.\n\n<img class=\"alignnone size-medium wp-image-23\" src=\"http://localhost/slutprojekt/wp-content/uploads/2017/12/DSC_8197-e1513091013770-300x133.jpg\" alt=\"\" width=\"300\" height=\"133\" />', 'Hej och välkommen till oss!', '', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2017-12-25 11:57:41', '2017-12-25 10:57:41', '', 56, 'http://localhost/slutprojekt/2017/12/25/56-autosave-v1/', 0, 'revision', '', 0),
(59, 1, '2017-12-25 11:57:43', '2017-12-25 10:57:43', 'Vi har bilar som passar alla.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vestibulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.\r\n\r\n<img class=\"alignnone size-medium wp-image-23\" src=\"http://localhost/slutprojekt/wp-content/uploads/2017/12/DSC_8197-e1513091013770-300x133.jpg\" alt=\"\" width=\"300\" height=\"133\" />', 'Hej och välkommen till oss!', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-12-25 11:57:43', '2017-12-25 10:57:43', '', 56, 'http://localhost/slutprojekt/2017/12/25/56-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-12-25 12:06:03', '2017-12-25 11:06:03', 'Vi har bilar som passar alla.<!--more-->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vestibulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.\r\n\r\n<img class=\"alignnone size-medium wp-image-23\" src=\"http://localhost/slutprojekt/wp-content/uploads/2017/12/DSC_8197-e1513091013770-300x133.jpg\" alt=\"\" width=\"300\" height=\"133\" />', 'Hej och välkommen till oss!', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-12-25 12:06:03', '2017-12-25 11:06:03', '', 56, 'http://localhost/slutprojekt/2017/12/25/56-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-12-27 15:31:47', '2017-12-27 14:31:47', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vesti<!--more-->bulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.\r\n\r\n[kolla]', 'Nya bilar på väg in.', '', 'publish', 'open', 'open', '', 'nya-bilar-pa-vag-in', '', '', '2018-01-10 18:57:14', '2018-01-10 17:57:14', '', 0, 'http://localhost/slutprojekt/?p=61', 0, 'post', '', 0),
(62, 1, '2017-12-27 15:31:47', '2017-12-27 14:31:47', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vestibulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.', 'Nya bilar på väg in.', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-12-27 15:31:47', '2017-12-27 14:31:47', '', 61, 'http://localhost/slutprojekt/2017/12/27/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-12-27 15:32:20', '2017-12-27 14:32:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vesti<!--more-->bulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.', 'Nya bilar på väg in.', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-12-27 15:32:20', '2017-12-27 14:32:20', '', 61, 'http://localhost/slutprojekt/2017/12/27/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-12-27 16:09:50', '2017-12-27 15:09:50', 'Vi har bilar som passar alla.<!--more-->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vestibulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.\r\n\r\n<img class=\"alignnone wp-image-23 size-large\" src=\"http://localhost/slutprojekt/wp-content/uploads/2017/12/DSC_8197-e1513091013770-1024x455.jpg\" alt=\"\" width=\"1024\" height=\"455\" />', 'Hej och välkommen till oss!', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-12-27 16:09:50', '2017-12-27 15:09:50', '', 56, 'http://localhost/slutprojekt/2017/12/27/56-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-01-03 16:43:42', '2018-01-03 15:43:42', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Stycke 1 Rubrik', 'hemsida_del1_rubrik', 'publish', 'closed', 'closed', '', 'field_5a4cf9f4a020e', '', '', '2018-01-03 16:43:42', '2018-01-03 15:43:42', '', 21, 'http://localhost/slutprojekt/?post_type=acf-field&p=65', 4, 'acf-field', '', 0),
(66, 1, '2018-01-03 16:43:42', '2018-01-03 15:43:42', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Stycke 1 Text', 'hemsida_del1_text', 'publish', 'closed', 'closed', '', 'field_5a4cfa19a020f', '', '', '2018-01-03 16:43:42', '2018-01-03 15:43:42', '', 21, 'http://localhost/slutprojekt/?post_type=acf-field&p=66', 5, 'acf-field', '', 0),
(67, 1, '2018-01-03 16:44:50', '2018-01-03 15:44:50', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-01-03 16:44:50', '2018-01-03 15:44:50', '', 7, 'http://localhost/slutprojekt/2018/01/03/7-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-01-03 17:00:30', '2018-01-03 16:00:30', 'a:16:{s:4:\"type\";s:5:\"image\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Stycke 1 Bild', 'hemsida_del1_bild', 'publish', 'closed', 'closed', '', 'field_5a4cfe0e3ab49', '', '', '2018-01-03 17:00:30', '2018-01-03 16:00:30', '', 21, 'http://localhost/slutprojekt/?post_type=acf-field&p=68', 6, 'acf-field', '', 0),
(69, 1, '2018-01-03 17:00:58', '2018-01-03 16:00:58', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-01-03 17:00:58', '2018-01-03 16:00:58', '', 7, 'http://localhost/slutprojekt/2018/01/03/7-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-01-04 17:24:54', '2018-01-04 16:24:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Om oss', 'om-oss', 'publish', 'closed', 'closed', '', 'group_5a4e550abefa5', '', '', '2018-01-11 18:54:15', '2018-01-11 17:54:15', '', 0, 'http://localhost/slutprojekt/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2018-01-04 17:24:54', '2018-01-04 16:24:54', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Rubrik', 'omoss_rubrik', 'publish', 'closed', 'closed', '', 'field_5a4e5510dc74e', '', '', '2018-01-04 17:24:54', '2018-01-04 16:24:54', '', 71, 'http://localhost/slutprojekt/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2018-01-04 17:24:54', '2018-01-04 16:24:54', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text', 'omoss_text', 'publish', 'closed', 'closed', '', 'field_5a4e5527dc74f', '', '', '2018-01-04 17:24:54', '2018-01-04 16:24:54', '', 71, 'http://localhost/slutprojekt/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2018-01-04 17:24:54', '2018-01-04 16:24:54', 'a:16:{s:4:\"type\";s:5:\"image\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Bild', 'omoss_bild', 'publish', 'closed', 'closed', '', 'field_5a4e5546dc750', '', '', '2018-01-04 17:24:54', '2018-01-04 16:24:54', '', 71, 'http://localhost/slutprojekt/?post_type=acf-field&p=74', 2, 'acf-field', '', 0),
(75, 1, '2018-01-04 17:28:45', '2018-01-04 16:28:45', '', 'Glad-arbetsgrupp-700-394-ingenjorskarriar', '', 'inherit', 'open', 'closed', '', 'glad-arbetsgrupp-700-394-ingenjorskarriar', '', '', '2018-01-04 17:28:56', '2018-01-04 16:28:56', '', 13, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/Glad-arbetsgrupp-700-394-ingenjorskarriar.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2018-01-04 17:28:59', '2018-01-04 16:28:59', '', 'Om oss', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-01-04 17:28:59', '2018-01-04 16:28:59', '', 13, 'http://localhost/slutprojekt/2018/01/04/13-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-01-04 17:33:29', '2018-01-04 16:33:29', 'a:11:{s:4:\"type\";s:8:\"repeater\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Personal 4 kolumner', '4_kolumner', 'publish', 'closed', 'closed', '', 'field_5a4e56c7a80cb', '', '', '2018-01-04 17:33:29', '2018-01-04 16:33:29', '', 71, 'http://localhost/slutprojekt/?post_type=acf-field&p=77', 3, 'acf-field', '', 0),
(78, 1, '2018-01-04 17:33:29', '2018-01-04 16:33:29', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Rubrik', '4_kolumner_rubrik', 'publish', 'closed', 'closed', '', 'field_5a4e570da80cc', '', '', '2018-01-04 17:33:29', '2018-01-04 16:33:29', '', 77, 'http://localhost/slutprojekt/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2018-01-04 17:33:29', '2018-01-04 16:33:29', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text', '4_kolumner_text', 'publish', 'closed', 'closed', '', 'field_5a4e5733a80cd', '', '', '2018-01-04 17:33:29', '2018-01-04 16:33:29', '', 77, 'http://localhost/slutprojekt/?post_type=acf-field&p=79', 1, 'acf-field', '', 0),
(80, 1, '2018-01-04 17:33:29', '2018-01-04 16:33:29', 'a:16:{s:4:\"type\";s:5:\"image\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Bild', '4_kolumner_bild', 'publish', 'closed', 'closed', '', 'field_5a4e5743a80ce', '', '', '2018-01-04 17:33:29', '2018-01-04 16:33:29', '', 77, 'http://localhost/slutprojekt/?post_type=acf-field&p=80', 2, 'acf-field', '', 0),
(82, 1, '2018-01-04 17:43:04', '2018-01-04 16:43:04', '', 'Om oss', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-01-04 17:43:04', '2018-01-04 16:43:04', '', 13, 'http://localhost/slutprojekt/2018/01/04/13-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-01-04 17:51:23', '2018-01-04 16:51:23', '', 'Om oss', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-01-04 17:51:23', '2018-01-04 16:51:23', '', 13, 'http://localhost/slutprojekt/2018/01/04/13-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-01-04 18:00:49', '2018-01-04 17:00:49', '', 'Om oss', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-01-04 18:00:49', '2018-01-04 17:00:49', '', 13, 'http://localhost/slutprojekt/2018/01/04/13-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-01-04 18:21:06', '2018-01-04 17:21:06', '<label> Ditt namn (obligatorisk)\n    [text* your-name] </label>\n\n<label> Din epost (obligatorisk)\n    [email* your-email] </label>\n\n<label> Ämne\n    [text your-subject] </label>\n\n<label> Ditt meddelande\n    [textarea your-message] </label>\n\n[submit \"Skicka\"]\nSlut Projekt \"[your-subject]\"\n[your-name] <nundssfdfi@hotmail.com>\nFrån: [your-name] <[your-email]>\nÄmne: [your-subject]\n\nMeddelande:\n[your-message]\n\n-- \nEpost-meddelandet skickades från ett kontaktformulär på Slut Projekt (http://localhost/slutprojekt)\nnundssfdfi@hotmail.com\nReply-To: [your-email]\n\n0\n0\n\nSlut Projekt \"[your-subject]\"\nSlut Projekt <nundssfdfi@hotmail.com>\nMeddelande:\n[your-message]\n\n-- \nEpost-meddelandet skickades från ett kontaktformulär på Slut Projekt (http://localhost/slutprojekt)\n[your-email]\nReply-To: nundssfdfi@hotmail.com\n\n0\n0\nTack, ditt meddelande har skickats.\nEtt fel inträffade när meddelandet skulle skickas. Var god försök senare.\nEtt eller flera fält har fel. Kontrollera och försök igen.\nEtt fel inträffade när meddelandet skulle skickas. Var god försök senare.\nDu måste godkänna villkoren innan du skickar meddelandet.\nFältet är obligatoriskt.\nFältet är för långt\nFältet är för kort.', 'Kontaktformulär 1', '', 'publish', 'closed', 'closed', '', 'kontaktformular-1', '', '', '2018-01-04 18:21:06', '2018-01-04 17:21:06', '', 0, 'http://localhost/slutprojekt/?post_type=wpcf7_contact_form&p=85', 0, 'wpcf7_contact_form', '', 0),
(86, 1, '2018-01-04 22:12:04', '2018-01-04 21:12:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Kontakt', 'kontakt', 'publish', 'closed', 'closed', '', 'group_5a4e9744e22b7', '', '', '2018-01-11 18:53:59', '2018-01-11 17:53:59', '', 0, 'http://localhost/slutprojekt/?post_type=acf-field-group&#038;p=86', 0, 'acf-field-group', '', 0),
(87, 1, '2018-01-04 22:12:04', '2018-01-04 21:12:04', 'a:11:{s:4:\"type\";s:8:\"repeater\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Öppetider', 'informations_falt', 'publish', 'closed', 'closed', '', 'field_5a4e974a80346', '', '', '2018-01-04 22:22:52', '2018-01-04 21:22:52', '', 86, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=87', 0, 'acf-field', '', 0),
(88, 1, '2018-01-04 22:12:04', '2018-01-04 21:12:04', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dagar', 'fran_dag', 'publish', 'closed', 'closed', '', 'field_5a4e988c80347', '', '', '2018-01-04 22:30:30', '2018-01-04 21:30:30', '', 87, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=88', 0, 'acf-field', '', 0),
(89, 1, '2018-01-04 22:17:08', '2018-01-04 21:17:08', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-01-04 22:17:08', '2018-01-04 21:17:08', '', 9, 'http://localhost/slutprojekt/2018/01/04/9-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-01-04 22:22:52', '2018-01-04 21:22:52', 'a:8:{s:4:\"type\";s:11:\"time_picker\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'Från Tid', 'fran_tid', 'publish', 'closed', 'closed', '', 'field_5a4e9ab2d7068', '', '', '2018-01-04 22:29:19', '2018-01-04 21:29:19', '', 87, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=91', 1, 'acf-field', '', 0),
(92, 1, '2018-01-04 22:22:52', '2018-01-04 21:22:52', 'a:8:{s:4:\"type\";s:11:\"time_picker\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'Till Tid', 'till_tid', 'publish', 'closed', 'closed', '', 'field_5a4e9b1bd7069', '', '', '2018-01-04 22:29:19', '2018-01-04 21:29:19', '', 87, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=92', 2, 'acf-field', '', 0),
(93, 1, '2018-01-04 22:25:36', '2018-01-04 21:25:36', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-01-04 22:25:36', '2018-01-04 21:25:36', '', 9, 'http://localhost/slutprojekt/2018/01/04/9-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-01-04 22:31:17', '2018-01-04 21:31:17', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-01-04 22:31:17', '2018-01-04 21:31:17', '', 9, 'http://localhost/slutprojekt/2018/01/04/9-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-01-04 22:39:10', '2018-01-04 21:39:10', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Företagsnamn', 'foretagsnamn', 'publish', 'closed', 'closed', '', 'field_5a4e9e6698470', '', '', '2018-01-04 22:39:10', '2018-01-04 21:39:10', '', 86, 'http://localhost/slutprojekt/?post_type=acf-field&p=96', 1, 'acf-field', '', 0),
(97, 1, '2018-01-04 22:39:10', '2018-01-04 21:39:10', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefon', 'telefon', 'publish', 'closed', 'closed', '', 'field_5a4e9e9c98471', '', '', '2018-01-04 22:39:10', '2018-01-04 21:39:10', '', 86, 'http://localhost/slutprojekt/?post_type=acf-field&p=97', 2, 'acf-field', '', 0),
(98, 1, '2018-01-04 22:39:10', '2018-01-04 21:39:10', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Adress', 'adress', 'publish', 'closed', 'closed', '', 'field_5a4e9ea998472', '', '', '2018-01-04 22:39:10', '2018-01-04 21:39:10', '', 86, 'http://localhost/slutprojekt/?post_type=acf-field&p=98', 3, 'acf-field', '', 0),
(99, 1, '2018-01-04 22:39:10', '2018-01-04 21:39:10', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'E-mail', 'e-mail', 'publish', 'closed', 'closed', '', 'field_5a4e9eb498473', '', '', '2018-01-04 22:39:10', '2018-01-04 21:39:10', '', 86, 'http://localhost/slutprojekt/?post_type=acf-field&p=99', 4, 'acf-field', '', 0),
(100, 1, '2018-01-04 22:43:17', '2018-01-04 21:43:17', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-01-04 22:43:17', '2018-01-04 21:43:17', '', 9, 'http://localhost/slutprojekt/2018/01/04/9-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-01-04 22:45:42', '2018-01-04 21:45:42', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-01-04 22:45:42', '2018-01-04 21:45:42', '', 9, 'http://localhost/slutprojekt/2018/01/04/9-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-01-04 22:49:40', '2018-01-04 21:49:40', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-01-04 22:49:40', '2018-01-04 21:49:40', '', 9, 'http://localhost/slutprojekt/2018/01/04/9-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-01-05 11:10:00', '2018-01-05 10:10:00', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-01-05 11:10:00', '2018-01-05 10:10:00', '', 7, 'http://localhost/slutprojekt/2018/01/05/7-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-01-05 11:54:33', '2018-01-05 10:54:33', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-01-05 11:54:33', '2018-01-05 10:54:33', '', 7, 'http://localhost/slutprojekt/2018/01/05/7-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `jk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(109, 1, '2018-01-05 11:55:03', '2018-01-05 10:55:03', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-01-05 11:55:03', '2018-01-05 10:55:03', '', 7, 'http://localhost/slutprojekt/2018/01/05/7-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-01-05 12:06:12', '2018-01-05 11:06:12', 'a:11:{s:4:\"type\";s:8:\"repeater\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Fler bilder', 'fler_bilder', 'publish', 'closed', 'closed', '', 'field_5a4f5c0d89dd6', '', '', '2018-01-12 15:32:00', '2018-01-12 14:32:00', '', 32, 'http://localhost/slutprojekt/?post_type=acf-field&#038;p=110', 10, 'acf-field', '', 0),
(111, 1, '2018-01-05 12:07:13', '2018-01-05 11:07:13', '', '9411368173', '', 'inherit', 'open', 'closed', '', '9411368173', '', '', '2018-01-12 15:55:39', '2018-01-12 14:55:39', '', 53, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/9411368173.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-01-05 12:07:13', '2018-01-05 11:07:13', '', '9447145284', '', 'inherit', 'open', 'closed', '', '9447145284', '', '', '2018-01-05 12:07:13', '2018-01-05 11:07:13', '', 53, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/9447145284.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2018-01-05 12:07:14', '2018-01-05 11:07:14', '', '9478958732', '', 'inherit', 'open', 'closed', '', '9478958732', '', '', '2018-01-05 12:07:14', '2018-01-05 11:07:14', '', 53, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/9478958732.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2018-01-05 12:17:27', '2018-01-05 11:17:27', '', '6ef02271-09c1-4909-8886-da6b9992d6ca', '', 'inherit', 'open', 'closed', '', '6ef02271-09c1-4909-8886-da6b9992d6ca', '', '', '2018-01-12 15:53:46', '2018-01-12 14:53:46', '', 45, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/6ef02271-09c1-4909-8886-da6b9992d6ca.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2018-01-05 12:17:28', '2018-01-05 11:17:28', '', '7d1e701e-c26c-4977-95ac-ef45d40745c6', '', 'inherit', 'open', 'closed', '', '7d1e701e-c26c-4977-95ac-ef45d40745c6', '', '', '2018-01-05 12:17:28', '2018-01-05 11:17:28', '', 45, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/7d1e701e-c26c-4977-95ac-ef45d40745c6.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2018-01-05 12:17:29', '2018-01-05 11:17:29', '', 'baf03249-e654-4a7e-89b9-531a1bc3f7b6', '', 'inherit', 'open', 'closed', '', 'baf03249-e654-4a7e-89b9-531a1bc3f7b6', '', '', '2018-01-05 12:20:00', '2018-01-05 11:20:00', '', 45, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/baf03249-e654-4a7e-89b9-531a1bc3f7b6.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2018-01-05 12:19:57', '2018-01-05 11:19:57', '', '1ab455ec-1a86-4005-a24f-89e01a92928f', '', 'inherit', 'open', 'closed', '', '1ab455ec-1a86-4005-a24f-89e01a92928f', '', '', '2018-01-05 12:19:57', '2018-01-05 11:19:57', '', 45, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/1ab455ec-1a86-4005-a24f-89e01a92928f.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2018-01-06 12:12:35', '2018-01-06 11:12:35', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-01-06 12:12:35', '2018-01-06 11:12:35', '', 7, 'http://localhost/slutprojekt/2018/01/06/7-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-01-06 12:22:48', '2018-01-06 11:22:48', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-01-06 12:22:48', '2018-01-06 11:22:48', '', 7, 'http://localhost/slutprojekt/2018/01/06/7-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-01-06 13:11:34', '2018-01-06 12:11:34', '', '67d8123b93da36898929252db228b43c', '', 'inherit', 'open', 'closed', '', '67d8123b93da36898929252db228b43c', '', '', '2018-01-06 13:11:40', '2018-01-06 12:11:40', '', 7, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/67d8123b93da36898929252db228b43c.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-01-06 13:11:35', '2018-01-06 12:11:35', '', 'bmw_325i_e30_white_auto_93276_1920x1080', '', 'inherit', 'open', 'closed', '', 'bmw_325i_e30_white_auto_93276_1920x1080', '', '', '2018-01-06 13:11:35', '2018-01-06 12:11:35', '', 7, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/bmw_325i_e30_white_auto_93276_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2018-01-06 13:11:37', '2018-01-06 12:11:37', '', 'Car-Wallpaper-For-iPad-1920×1080-HD-3', '', 'inherit', 'open', 'closed', '', 'car-wallpaper-for-ipad-1920x1080-hd-3', '', '', '2018-01-06 13:11:37', '2018-01-06 12:11:37', '', 7, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/Car-Wallpaper-For-iPad-1920×1080-HD-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-01-06 13:11:38', '2018-01-06 12:11:38', '', 'classic-car-wallpapers-mobile-For-Desktop-Wallpaper', '', 'inherit', 'open', 'closed', '', 'classic-car-wallpapers-mobile-for-desktop-wallpaper', '', '', '2018-01-06 13:11:38', '2018-01-06 12:11:38', '', 7, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/classic-car-wallpapers-mobile-For-Desktop-Wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2018-01-06 13:11:53', '2018-01-06 12:11:53', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-01-06 13:11:53', '2018-01-06 12:11:53', '', 7, 'http://localhost/slutprojekt/2018/01/06/7-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-01-06 13:36:11', '0000-00-00 00:00:00', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-01-06 13:36:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/slutprojekt/?post_type=acf-field-group&p=130', 0, 'acf-field-group', '', 0),
(131, 1, '2018-01-09 10:04:20', '2018-01-09 09:04:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vesti<!--more-->bulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.\r\n\r\n[kolla gärna]', 'Nya bilar på väg in.', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-09 10:04:20', '2018-01-09 09:04:20', '', 61, 'http://localhost/slutprojekt/2018/01/09/61-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-01-09 10:04:49', '2018-01-09 09:04:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vesti<!--more-->bulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.\r\n\r\n[kolla_gärna]', 'Nya bilar på väg in.', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-09 10:04:49', '2018-01-09 09:04:49', '', 61, 'http://localhost/slutprojekt/2018/01/09/61-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-01-09 10:07:06', '2018-01-09 09:07:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed turpis turpis, pharetra ac rhoncus quis, mattis nec neque. Nunc porta iaculis velit sed dignissim. Donec vesti<!--more-->bulum turpis et blandit fermentum. Sed ultrices pulvinar ligula, commodo iaculis eros finibus ut. Ut non placerat ipsum. Integer semper ultricies lorem. Ut finibus rutrum accumsan. Donec quam nisi, auctor id enim id, placerat interdum nulla. Cras ut eros non odio ullamcorper congue eu vitae elit. Sed et hendrerit ante, eu tincidunt eros. Vestibulum malesuada ipsum non elit efficitur mollis. Vestibulum mollis accumsan erat et egestas. Nunc consequat quis justo vitae cursus. Sed tellus orci, sollicitudin at felis ac, tincidunt blandit nibh. Aenean volutpat sem nisl, nec luctus turpis gravida non.\r\n\r\n[kolla]', 'Nya bilar på väg in.', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-09 10:07:06', '2018-01-09 09:07:06', '', 61, 'http://localhost/slutprojekt/2018/01/09/61-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2017-07-16 00:08:23', '2017-07-15 22:08:23', '<h1>Aliquam voluptatibus doloremque cumque et veritatis qui dolores. Eos perspiciatis tempora beatae minus</h1>\r\n<blockquote>Earum labore et omnis accusamus nam. Quam in est dolorem nihil. Sed sequi tenetur praesentium repudiandae iusto quis facere consequatur. Dignissimos et magnam voluptatem asperiores voluptatem harum. Voluptatem cum quae eaque. Vel repellendus laboriosam aut iste totam. Quo suscipit in velit repellendus sed. Rerum dolore nisi ducimus. Soluta eum ut quia facere. Unde ratione quibusdam temporibus accusantium assumenda vitae quis officiis. Ut perferendis ipsam natus praesentium quo. Fuga blanditiis recusandae qui. Debitis possimus eos vero voluptatem distinctio explicabo. Ut aut occaecati rerum dolor et temporibus. Velit explicabo qui vero enim. Illum culpa amet inventore odio voluptates. Nihil facere ut necessitatibus aut. Facilis repellat sed aspernatur sunt qui. Rem iste velit voluptatem voluptatem nemo. Aut aut nesciunt est esse libero.</blockquote>\r\n\r\n<hr />\r\n\r\n&nbsp;\r\n<h2><img class=\"alignnone wp-image-138 size-large\" src=\"http://localhost/slutprojekt/wp-content/uploads/2018/01/7b57d6f1-6318-32e3-bb3b-25a11852d191-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" /></h2>\r\n<h2>Nemo eius quo vero debitis inventore maxime. Tempora inventore veritatis nemo. Et error est non</h2>\r\n<ul>\r\n 	<li>Soluta ratione</li>\r\n 	<li>Rerum natus iusto quaerat autem qui aspernatur</li>\r\n 	<li>Tenetur repellat et dolorem fugiat dicta</li>\r\n 	<li>Placeat</li>\r\n 	<li>Vitae omnis</li>\r\n 	<li>Ipsam</li>\r\n</ul>\r\n<h1>Sint quae occaecati officia eveniet laboriosam et sunt</h1>\r\n&nbsp;\r\n<ul>\r\n 	<li>Et rerum ut</li>\r\n 	<li>Quia et facilis sint qui aut</li>\r\n 	<li>Nemo</li>\r\n 	<li>Totam eos quos excepturi repudiandae</li>\r\n 	<li>Aut aut veniam libero fugiat</li>\r\n 	<li>Soluta dolorem</li>\r\n 	<li>Nam eum et recusandae</li>\r\n 	<li>Vitae minus omnis</li>\r\n</ul>\r\n<!--more-->\r\n\r\n<hr />\r\n\r\n\r\n\r\n<hr />\r\n\r\n<h3>Voluptas impedit in ut eos optio cum optio. Et aliquam et maiores ratione nisi et. Velit quibusdam dicta inventore consequuntur</h3>\r\n<img class=\"alignleft\" src=\"http://localhost/slutprojekt/wp-content/uploads/2018/01/99db9457-47ee-3c78-83e4-73fbf2c75821.jpg\" alt=\"Ducimus eveniet non illum\" />\r\n<h2>Deleniti quibusdam ea laudantium id dolore et. Vitae voluptas adipisci ut. Eligendi corporis sint veritatis aspernatur</h2>\r\n\r\n<hr />\r\n\r\n<blockquote>Architecto occaecati <a title=\"Nemo voluptatum aut non.\" href=\"https://funk.com/ea-iure-pariatur-error-sed.html\">vero eum. Aliquid</a> <a title=\"Voluptatem voluptatem cumque fugiat numquam.\" href=\"http://fay.com/eos-ipsam-et-non-dolores-recusandae-animi-aut\">fugit</a> <a title=\"Reprehenderit.\" href=\"http://www.ondricka.org/accusantium-iste-architecto-velit-deserunt-dicta-rem-ut.html\">aut ut</a> <a title=\"Laudantium velit.\" href=\"https://www.towne.net/mollitia-doloribus-dignissimos-a-soluta-saepe-debitis\">dolor. Sunt</a> voluptatibus modi enim. Ut vitae voluptatem <a title=\"Rerum delectus aut possimus est nam et neque qui.\" href=\"https://mohr.info/provident-totam-et-rerum.html\">magnam beatae. Fuga</a> animi voluptate. Non hic est provident.</blockquote>', 'Dicta libero autem autem', 'Ab dolorem ipsum impedit velit itaque magnam perspiciatis voluptas ut enim et minus repellendus et eum et ipsum inventore ut est perspiciatis doloremque molestiae debitis debitis asperiores maxime itaque cupiditate mollitia possimus voluptas rem quos quibusdam et totam rem ut doloremque qui et praesentium quis fugit quibusdam eveniet.', 'publish', 'open', 'closed', '', 'dicta-libero-autem-autem', '', '', '2018-01-09 13:45:09', '2018-01-09 12:45:09', '', 0, 'http://localhost/slutprojekt/2017/07/16/dicta-libero-autem-autem/', 0, 'post', '', 0),
(137, 1, '2017-11-26 21:25:41', '2017-11-26 20:25:41', '<a title=\"Eius.\" href=\"http://walter.net/\">Autem numquam animi illo delectus sint</a> libero. Omnis doloribus aut accusamus. voluptatibus non quam <a title=\"Rerum et officiis commodi natus quisquam itaque deleniti.\" href=\"http://www.hegmann.biz/\">qui totam.</a> beatae et dolores sint est velit rerum.\r\n<ul>\r\n 	<li>Rem dolor</li>\r\n 	<li>Totam facilis aut odio</li>\r\n</ul>\r\n<img class=\"aligncenter\" alt=\"Magni quia explicabo culpa earum in porro exercitationem veritatis dolor perferendis\" />\r\n<h4>Aut voluptas totam cupiditate et. Est quia ut rem tempora. Ex cumque et et est veritatis. Cumque id facere alias iure</h4>\r\n<img alt=\"Vel velit quod consequuntur nesciunt rerum odio\" />\r\n\r\n<a title=\"Libero est.\" href=\"https://schmeler.org/molestiae-veritatis-eveniet-nam-fugiat-assumenda.html\">In asperiores</a> <a title=\"Molestiae.\" href=\"http://kuphal.biz/sed-aut-mollitia-amet-perferendis-enim-quo-beatae\">officia molestiae</a> <a title=\"Et placeat aperiam deleniti iusto quia repellendus iste.\" href=\"http://www.braun.com/ut-aspernatur-eligendi-et-autem-consectetur.html\">Adipisci praesentium commodi exercitationem</a> <a title=\"Repellat rerum officiis.\" href=\"http://nienow.com/debitis-neque-doloribus-nulla-dolore-enim\">sint reprehenderit</a> Sed tempora aliquam beatae <a title=\"Ratione pariatur est.\" href=\"http://kemmer.com/veniam-sit-consectetur-similique-aliquam-perferendis\">excepturi.</a>\r\n\r\nMinus qui <a title=\"Cupiditate in eum velit blanditiis.\" href=\"https://www.jakubowski.com/omnis-dolores-et-a-voluptatum\">harum iure. Dicta</a> <a title=\"Voluptatibus voluptatem ut perferendis.\" href=\"http://kshlerin.com/\">nemo ea alias</a> optio. Aperiam nihil dignissimos necessitatibus architecto aut Error <a title=\"Modi enim illo voluptatibus sed.\" href=\"http://brakus.info/saepe-nisi-alias-aut-quia-eius-distinctio\">omnis illum nam facilis</a> Ut voluptates molestias voluptatem qui ullam.\r\n<h2>Ea animi sit qui dicta odit delectus. Autem tempora velit autem sint quod</h2>\r\n<ol>\r\n 	<li>Itaque magnam</li>\r\n 	<li>Officiis nobis</li>\r\n 	<li>Ducimus eos</li>\r\n 	<li>Expedita aliquid neque possimus nihil quas</li>\r\n 	<li>Nisi vel dolores rerum beatae facere</li>\r\n 	<li>Veritatis et eum deleniti praesentium</li>\r\n</ol>\r\n<h2>Cupiditate explicabo veniam dolorem. Numquam id commodi nulla qui. Sequi ut odit commodi non est ut saepe veniam. Consequatur sed facilis praesentium dolorem quo est</h2>\r\nTemporibus eum omnis natus illo qui perferendis. Pariatur at architecto eos. Praesentium tempore sint eum repellat. Ad eius doloremque aliquam. explicabo inventore corporis facilis sed. Et dolores <a title=\"Iusto ad eligendi fugiat in sed minima.\" href=\"http://www.klocko.com/\">facere maiores voluptatem alias</a> Sint autem voluptas voluptas. Quia et ut eum sit. id facilis tenetur occaecati Vel quibusdam sapiente temporibus <a title=\"Commodi deserunt.\" href=\"http://hudson.net/error-quaerat-voluptatem-illo-facere-voluptatem-cum-natus\">quo. Suscipit</a> ab sint voluptatem. reprehenderit fuga dolores dolores vero quibusdam repellat Et ducimus aut dignissimos quae saepe temporibus Ipsa tenetur ad sed. Illum autem omnis ratione. Est error in vel qui pariatur. nulla saepe sit aperiam Qui autem eos eos et. At voluptas ipsa. Asperiores autem cum <a title=\"Libero consectetur.\" href=\"http://donnelly.net/aut-consectetur-officia-aut-iure-magni-aspernatur-quisquam\">corrupti veniam cum. Quaerat quia voluptatem illum architecto est</a> ratione. Sunt debitis eum fugiat voluptatem incidunt illum. Autem non in accusamus sint voluptatem Dolores quae deserunt ad. Itaque soluta deleniti voluptate ipsam Delectus repellat dicta in ut. Quo impedit reiciendis facere dolores molestias similique.\r\n<ol>\r\n 	<li>Qui eaque</li>\r\n 	<li>Quisquam facilis quae quis architecto quia sequi</li>\r\n 	<li>Quia vel</li>\r\n 	<li>Ex et</li>\r\n</ol>\r\n<h4>Nemo et hic voluptas consectetur beatae. Est et ipsa ipsa veritatis aut non</h4>\r\n<ol>\r\n 	<li>Consequuntur</li>\r\n 	<li>Possimus ducimus debitis ut aut</li>\r\n 	<li>Sunt vel ea repellat aperiam illum</li>\r\n 	<li>Aperiam sed officiis eos aut repellendus quo</li>\r\n 	<li>Hic voluptatem et eum ut</li>\r\n 	<li>Cumque nesciunt odio quis soluta</li>\r\n</ol>\r\n<h6>Autem et aut eveniet rerum excepturi ratione corrupti recusandae. Voluptate sit distinctio iste earum sit voluptas est. Odio dolorem quia molestiae quasi</h6>\r\n<ul>\r\n 	<li>Doloribus maiores quis explicabo ut accusantium</li>\r\n 	<li>Fuga cum</li>\r\n</ul>\r\n<h1>Quia accusantium aut nobis qui quia. Est aperiam commodi et praesentium et</h1>\r\nAut qui quasi nulla aut. Quam rerum ipsa quasi delectus fugit. Cupiditate error quis pariatur quod voluptatem quae. Voluptatem sit explicabo necessitatibus nesciunt. Doloremque voluptatem et aut. Qui harum minima rerum molestias suscipit accusantium assumenda. Expedita odio unde quia doloremque. Laboriosam ut provident excepturi sit fugiat. Cumque id doloribus incidunt voluptas. Culpa blanditiis sint sunt sint nihil. Nulla doloremque perferendis explicabo qui blanditiis quia voluptatem. Est architecto sequi quae et voluptates quo cum. Quasi ratione laboriosam et tenetur unde. Quisquam hic dolorem et itaque aut enim. Sunt optio tempora quia ea. Aut culpa amet molestiae distinctio distinctio et est. Ducimus autem delectus ipsa repellat. Non dignissimos esse ut et ut. Quae consequatur incidunt aliquam quam qui quas. Quae non et nam quisquam. Sequi aspernatur neque voluptatem iste error ut itaque. Ut cum aut et.\r\n<blockquote>Sit itaque dolores similique ipsum neque. Ut tenetur illum et nulla odio. Impedit maiores doloribus fugit nam <a title=\"Non excepturi dicta iste.\" href=\"https://blick.com/natus-quo-velit-ducimus-libero-aperiam-et-facilis.html\">et. Aspernatur sit</a> tenetur minus excepturi consequatur. Ut aperiam nihil excepturi amet inventore et et. <a title=\"Aliquid.\" href=\"http://hegmann.com/sit-consequuntur-voluptatem-exercitationem-autem-dolorum\">sit</a> aut incidunt quia nemo. Maiores delectus culpa earum et voluptas. ut odio voluptas sed. Quibusdam eveniet sed aperiam laboriosam voluptatem. Et tempore itaque praesentium debitis. minus ea ea iste. sit eius modi <a title=\"Fugit in omnis quia.\" href=\"http://www.keebler.org/reiciendis-nobis-dolor-in\">quisquam. Ducimus praesentium</a> itaque ratione non voluptatem. Quia quia iste exercitationem omnis et Nemo corporis sint non numquam. <a title=\"Error voluptatibus.\" href=\"http://watsica.com/\">assumenda iste quia doloribus</a> officiis. Non rerum repellat iusto minus. Ut autem eius omnis qui temporibus ut. Voluptas voluptatem reprehenderit voluptatum Voluptates quibusdam maiores odio voluptas dolorem. Veniam eum quo <a title=\"Et.\" href=\"http://borer.com/quasi-quia-explicabo-ut-qui-dolorem-est-amet\">distinctio sint. Autem</a> in Deleniti dicta ratione molestiae et fuga.</blockquote>', 'Culpa quidem commodi hic quas', '', 'publish', 'open', 'open', '', 'culpa-quidem-commodi-hic-quas', '', '', '2018-01-12 12:17:06', '2018-01-12 11:17:06', '', 0, 'http://localhost/slutprojekt/2017/11/26/culpa-quidem-commodi-hic-quas/', 0, 'post', '', 0),
(138, 1, '2018-01-09 13:23:14', '2018-01-09 12:23:14', '', '', '', 'inherit', 'open', 'closed', '', '138', '', '', '2018-01-09 13:23:14', '2018-01-09 12:23:14', '', 137, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/7b57d6f1-6318-32e3-bb3b-25a11852d191.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2017-07-19 22:25:14', '2017-07-19 20:25:14', '<h5>Aut consequatur sequi id optio nobis vel</h5>\r\n<ul>\r\n 	<li>Est rerum</li>\r\n 	<li>Sint omnis labore quam nihil pariatur</li>\r\n</ul>\r\n<h3>Dolores debitis in non. Sunt voluptatem alias ipsa tenetur in dicta laboriosam. Quia soluta iure nesciunt voluptatibus et quod cum</h3>\r\n\r\n<hr />\r\n\r\n\r\n\r\n<hr />\r\n\r\n<ol>\r\n 	<li>Doloremque dolorum sunt aliquid</li>\r\n 	<li>Neque qui rerum beatae</li>\r\n 	<li>Sed commodi sit</li>\r\n 	<li>Voluptas ad cupiditate</li>\r\n 	<li>Dignissimos</li>\r\n 	<li>Ullam</li>\r\n</ol>\r\n<img class=\"alignnone wp-image-126 size-large\" src=\"http://localhost/slutprojekt/wp-content/uploads/2018/01/bmw_325i_e30_white_auto_93276_1920x1080-1024x576.jpg\" alt=\"\" width=\"1024\" height=\"576\" />\r\n<h2>Sed eum voluptatem velit quod nihil magnam tenetur. Incidunt neque non cupiditate autem provident dolores qui. Veritatis aliquam consequuntur ab earum assumenda ratione</h2>\r\n<!--more-->\r\n\r\nAut enim quibusdam numquam totam autem deserunt. Ratione eius quos cumque. Dolor id officia ullam. Maiores dolores magni aut. Ea reprehenderit et et voluptatibus Totam facilis et ea distinctio. sit magni non numquam. Ut assumenda dolorem aut fugit et et. Ducimus omnis saepe. quos quod fuga quasi itaque. Explicabo voluptatem totam saepe amet Cumque id nobis perspiciatis et corrupti. Autem et sit aut et harum tempore. Est quis hic <a title=\"Assumenda quis.\" href=\"http://www.hirthe.com/dolorum-dolores-illo-et-placeat-fugit-magni-optio.html\">nesciunt. Dolorum dolores beatae corporis</a> architecto dicta. Ab consequuntur soluta ipsa labore necessitatibus Voluptas in eos ut iure. molestias in esse autem ut Omnis sed ad quo quia similique. qui velit numquam fugit sunt. Necessitatibus aut voluptas a Occaecati autem adipisci molestiae perspiciatis ut. Optio voluptatem ullam harum. Quia sit consequatur dicta occaecati molestiae Necessitatibus qui molestiae ullam. Qui rem est debitis quia cupiditate Non unde aperiam culpa quos. Quia vitae consectetur. Unde voluptatibus facere voluptatem dolor doloremque Pariatur veritatis labore et voluptates nisi Voluptatem nisi vel aut molestiae. Occaecati vitae et quia. sit nemo fugit iste sunt. Et est fugit repellendus iure ab.\r\n\r\nNon ut dignissimos. Ea culpa aliquid. Omnis ut et animi. Inventore consequatur id sint Totam amet ratione nobis ipsum sunt laborum. Facilis non ullam distinctio. Qui animi et. Quam debitis et earum. Animi ex sit adipisci explicabo quo. Numquam error et autem ut officiis. Numquam voluptatem est impedit ab qui. Eius quam voluptatem quae ex. Consequatur aut cum dolor nisi quasi sapiente. Tempora nostrum facere quidem ut. <a title=\"Ut dolorem molestiae eum.\" href=\"http://upton.com/ea-ut-praesentium-veniam-aperiam\">dignissimos commodi</a> eius. quia ut id eaque. dolorem itaque velit iusto accusantium. Aut est quos sed. Autem modi et corporis ipsa soluta delectus. Facere est illum est. Dolore reprehenderit incidunt soluta qui rerum consequatur. libero perspiciatis veritatis quis quibusdam. Dolor voluptatum provident eum. Ea commodi quae aliquam autem maxime dicta. Modi quas adipisci dolore Labore voluptatem atque aut ut quae unde. magnam et voluptas consectetur. Sed repudiandae ut eos cumque. Dolores architecto rerum. quaerat eligendi id adipisci. Sit aliquam blanditiis cumque et incidunt. sed tempore quae\r\n<ol>\r\n 	<li>Ad aut omnis</li>\r\n 	<li>Sit sunt</li>\r\n 	<li>A amet non quaerat nihil</li>\r\n 	<li>In id repudiandae vel</li>\r\n 	<li>Optio dolore temporibus corrupti nesciunt</li>\r\n 	<li>Pariatur quia quia voluptatem ipsa voluptates eum</li>\r\n</ol>\r\n\r\n<hr />\r\n\r\n<ol>\r\n 	<li>Quia ut</li>\r\n 	<li>Rem dolorum mollitia fugiat officiis</li>\r\n 	<li>Laudantium officia culpa necessitatibus</li>\r\n 	<li>Omnis dolore ex eos sed eaque quia</li>\r\n</ol>', 'Blanditiis non magni sit et velit', 'Ipsa atque aliquam tempora quis maxime sit ad blanditiis numquam et eveniet dolor dolores et velit suscipit sapiente nihil corrupti nemo eos non nihil ad eius sequi quas sed sint placeat sit et fuga.\r\n\r\nEt debitis recusandae culpa nobis vel ea officiis sunt quis sapiente dolores consequuntur voluptatibus est vitae dolores optio id impedit dicta aspernatur natus ut praesentium voluptatibus dolorem sint qui quae rem qui quia enim sint necessitatibus ut quibusdam.', 'publish', 'open', 'closed', '', 'blanditiis-non-magni-sit-et-velit', '', '', '2018-01-09 13:48:09', '2018-01-09 12:48:09', '', 0, 'http://localhost/slutprojekt/2017/07/19/blanditiis-non-magni-sit-et-velit/', 0, 'post', '', 0),
(140, 1, '2018-01-09 13:45:02', '2018-01-09 12:45:02', '<h1>Aliquam voluptatibus doloremque cumque et veritatis qui dolores. Eos perspiciatis tempora beatae minus</h1>\n<blockquote>Earum labore et omnis accusamus nam. Quam in est dolorem nihil. Sed sequi tenetur praesentium repudiandae iusto quis facere consequatur. Dignissimos et magnam voluptatem asperiores voluptatem harum. Voluptatem cum quae eaque. Vel repellendus laboriosam aut iste totam. Quo suscipit in velit repellendus sed. Rerum dolore nisi ducimus. Soluta eum ut quia facere. Unde ratione quibusdam temporibus accusantium assumenda vitae quis officiis. Ut perferendis ipsam natus praesentium quo. Fuga blanditiis recusandae qui. Debitis possimus eos vero voluptatem distinctio explicabo. Ut aut occaecati rerum dolor et temporibus. Velit explicabo qui vero enim. Illum culpa amet inventore odio voluptates. Nihil facere ut necessitatibus aut. Facilis repellat sed aspernatur sunt qui. Rem iste velit voluptatem voluptatem nemo. Aut aut nesciunt est esse libero.</blockquote>\n\n<hr />\n\n&nbsp;\n<h2><img class=\"alignnone size-medium wp-image-138\" src=\"http://localhost/slutprojekt/wp-content/uploads/2018/01/7b57d6f1-6318-32e3-bb3b-25a11852d191-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /></h2>\n<h2>Nemo eius quo vero debitis inventore maxime. Tempora inventore veritatis nemo. Et error est non</h2>\n<ul>\n 	<li>Soluta ratione</li>\n 	<li>Rerum natus iusto quaerat autem qui aspernatur</li>\n 	<li>Tenetur repellat et dolorem fugiat dicta</li>\n 	<li>Placeat</li>\n 	<li>Vitae omnis</li>\n 	<li>Ipsam</li>\n</ul>\n<h1>Sint quae occaecati officia eveniet laboriosam et sunt</h1>\n&nbsp;\n<ul>\n 	<li>Et rerum ut</li>\n 	<li>Quia et facilis sint qui aut</li>\n 	<li>Nemo</li>\n 	<li>Totam eos quos excepturi repudiandae</li>\n 	<li>Aut aut veniam libero fugiat</li>\n 	<li>Soluta dolorem</li>\n 	<li>Nam eum et recusandae</li>\n 	<li>Vitae minus omnis</li>\n</ul>\n<!--more-->\n\n<hr />\n\n\n\n<hr />\n\n<h3>Voluptas impedit in ut eos optio cum optio. Et aliquam et maiores ratione nisi et. Velit quibusdam dicta inventore consequuntur</h3>\n<img class=\"alignleft\" src=\"http://localhost/slutprojekt/wp-content/uploads/2018/01/99db9457-47ee-3c78-83e4-73fbf2c75821.jpg\" alt=\"Ducimus eveniet non illum\" />\n<h2>Deleniti quibusdam ea laudantium id dolore et. Vitae voluptas adipisci ut. Eligendi corporis sint veritatis aspernatur</h2>\n\n<hr />\n\n<blockquote>Architecto occaecati <a title=\"Nemo voluptatum aut non.\" href=\"https://funk.com/ea-iure-pariatur-error-sed.html\">vero eum. Aliquid</a> <a title=\"Voluptatem voluptatem cumque fugiat numquam.\" href=\"http://fay.com/eos-ipsam-et-non-dolores-recusandae-animi-aut\">fugit</a> <a title=\"Reprehenderit.\" href=\"http://www.ondricka.org/accusantium-iste-architecto-velit-deserunt-dicta-rem-ut.html\">aut ut</a> <a title=\"Laudantium velit.\" href=\"https://www.towne.net/mollitia-doloribus-dignissimos-a-soluta-saepe-debitis\">dolor. Sunt</a> voluptatibus modi enim. Ut vitae voluptatem <a title=\"Rerum delectus aut possimus est nam et neque qui.\" href=\"https://mohr.info/provident-totam-et-rerum.html\">magnam beatae. Fuga</a> animi voluptate. Non hic est provident.</blockquote>', 'Dicta libero autem autem', 'Ab dolorem ipsum impedit velit itaque magnam perspiciatis voluptas ut enim et minus repellendus et eum et ipsum inventore ut est perspiciatis doloremque molestiae debitis debitis asperiores maxime itaque cupiditate mollitia possimus voluptas rem quos quibusdam et totam rem ut doloremque qui et praesentium quis fugit quibusdam eveniet.', 'inherit', 'closed', 'closed', '', '136-autosave-v1', '', '', '2018-01-09 13:45:02', '2018-01-09 12:45:02', '', 136, 'http://localhost/slutprojekt/2018/01/09/136-autosave-v1/', 0, 'revision', '', 0),
(141, 1, '2018-01-09 13:45:09', '2018-01-09 12:45:09', '<h1>Aliquam voluptatibus doloremque cumque et veritatis qui dolores. Eos perspiciatis tempora beatae minus</h1>\r\n<blockquote>Earum labore et omnis accusamus nam. Quam in est dolorem nihil. Sed sequi tenetur praesentium repudiandae iusto quis facere consequatur. Dignissimos et magnam voluptatem asperiores voluptatem harum. Voluptatem cum quae eaque. Vel repellendus laboriosam aut iste totam. Quo suscipit in velit repellendus sed. Rerum dolore nisi ducimus. Soluta eum ut quia facere. Unde ratione quibusdam temporibus accusantium assumenda vitae quis officiis. Ut perferendis ipsam natus praesentium quo. Fuga blanditiis recusandae qui. Debitis possimus eos vero voluptatem distinctio explicabo. Ut aut occaecati rerum dolor et temporibus. Velit explicabo qui vero enim. Illum culpa amet inventore odio voluptates. Nihil facere ut necessitatibus aut. Facilis repellat sed aspernatur sunt qui. Rem iste velit voluptatem voluptatem nemo. Aut aut nesciunt est esse libero.</blockquote>\r\n\r\n<hr />\r\n\r\n&nbsp;\r\n<h2><img class=\"alignnone wp-image-138 size-large\" src=\"http://localhost/slutprojekt/wp-content/uploads/2018/01/7b57d6f1-6318-32e3-bb3b-25a11852d191-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" /></h2>\r\n<h2>Nemo eius quo vero debitis inventore maxime. Tempora inventore veritatis nemo. Et error est non</h2>\r\n<ul>\r\n 	<li>Soluta ratione</li>\r\n 	<li>Rerum natus iusto quaerat autem qui aspernatur</li>\r\n 	<li>Tenetur repellat et dolorem fugiat dicta</li>\r\n 	<li>Placeat</li>\r\n 	<li>Vitae omnis</li>\r\n 	<li>Ipsam</li>\r\n</ul>\r\n<h1>Sint quae occaecati officia eveniet laboriosam et sunt</h1>\r\n&nbsp;\r\n<ul>\r\n 	<li>Et rerum ut</li>\r\n 	<li>Quia et facilis sint qui aut</li>\r\n 	<li>Nemo</li>\r\n 	<li>Totam eos quos excepturi repudiandae</li>\r\n 	<li>Aut aut veniam libero fugiat</li>\r\n 	<li>Soluta dolorem</li>\r\n 	<li>Nam eum et recusandae</li>\r\n 	<li>Vitae minus omnis</li>\r\n</ul>\r\n<!--more-->\r\n\r\n<hr />\r\n\r\n\r\n\r\n<hr />\r\n\r\n<h3>Voluptas impedit in ut eos optio cum optio. Et aliquam et maiores ratione nisi et. Velit quibusdam dicta inventore consequuntur</h3>\r\n<img class=\"alignleft\" src=\"http://localhost/slutprojekt/wp-content/uploads/2018/01/99db9457-47ee-3c78-83e4-73fbf2c75821.jpg\" alt=\"Ducimus eveniet non illum\" />\r\n<h2>Deleniti quibusdam ea laudantium id dolore et. Vitae voluptas adipisci ut. Eligendi corporis sint veritatis aspernatur</h2>\r\n\r\n<hr />\r\n\r\n<blockquote>Architecto occaecati <a title=\"Nemo voluptatum aut non.\" href=\"https://funk.com/ea-iure-pariatur-error-sed.html\">vero eum. Aliquid</a> <a title=\"Voluptatem voluptatem cumque fugiat numquam.\" href=\"http://fay.com/eos-ipsam-et-non-dolores-recusandae-animi-aut\">fugit</a> <a title=\"Reprehenderit.\" href=\"http://www.ondricka.org/accusantium-iste-architecto-velit-deserunt-dicta-rem-ut.html\">aut ut</a> <a title=\"Laudantium velit.\" href=\"https://www.towne.net/mollitia-doloribus-dignissimos-a-soluta-saepe-debitis\">dolor. Sunt</a> voluptatibus modi enim. Ut vitae voluptatem <a title=\"Rerum delectus aut possimus est nam et neque qui.\" href=\"https://mohr.info/provident-totam-et-rerum.html\">magnam beatae. Fuga</a> animi voluptate. Non hic est provident.</blockquote>', 'Dicta libero autem autem', 'Ab dolorem ipsum impedit velit itaque magnam perspiciatis voluptas ut enim et minus repellendus et eum et ipsum inventore ut est perspiciatis doloremque molestiae debitis debitis asperiores maxime itaque cupiditate mollitia possimus voluptas rem quos quibusdam et totam rem ut doloremque qui et praesentium quis fugit quibusdam eveniet.', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2018-01-09 13:45:09', '2018-01-09 12:45:09', '', 136, 'http://localhost/slutprojekt/2018/01/09/136-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-01-09 13:48:09', '2018-01-09 12:48:09', '<h5>Aut consequatur sequi id optio nobis vel</h5>\r\n<ul>\r\n 	<li>Est rerum</li>\r\n 	<li>Sint omnis labore quam nihil pariatur</li>\r\n</ul>\r\n<h3>Dolores debitis in non. Sunt voluptatem alias ipsa tenetur in dicta laboriosam. Quia soluta iure nesciunt voluptatibus et quod cum</h3>\r\n\r\n<hr />\r\n\r\n\r\n\r\n<hr />\r\n\r\n<ol>\r\n 	<li>Doloremque dolorum sunt aliquid</li>\r\n 	<li>Neque qui rerum beatae</li>\r\n 	<li>Sed commodi sit</li>\r\n 	<li>Voluptas ad cupiditate</li>\r\n 	<li>Dignissimos</li>\r\n 	<li>Ullam</li>\r\n</ol>\r\n<img class=\"alignnone wp-image-126 size-large\" src=\"http://localhost/slutprojekt/wp-content/uploads/2018/01/bmw_325i_e30_white_auto_93276_1920x1080-1024x576.jpg\" alt=\"\" width=\"1024\" height=\"576\" />\r\n<h2>Sed eum voluptatem velit quod nihil magnam tenetur. Incidunt neque non cupiditate autem provident dolores qui. Veritatis aliquam consequuntur ab earum assumenda ratione</h2>\r\n<!--more-->\r\n\r\nAut enim quibusdam numquam totam autem deserunt. Ratione eius quos cumque. Dolor id officia ullam. Maiores dolores magni aut. Ea reprehenderit et et voluptatibus Totam facilis et ea distinctio. sit magni non numquam. Ut assumenda dolorem aut fugit et et. Ducimus omnis saepe. quos quod fuga quasi itaque. Explicabo voluptatem totam saepe amet Cumque id nobis perspiciatis et corrupti. Autem et sit aut et harum tempore. Est quis hic <a title=\"Assumenda quis.\" href=\"http://www.hirthe.com/dolorum-dolores-illo-et-placeat-fugit-magni-optio.html\">nesciunt. Dolorum dolores beatae corporis</a> architecto dicta. Ab consequuntur soluta ipsa labore necessitatibus Voluptas in eos ut iure. molestias in esse autem ut Omnis sed ad quo quia similique. qui velit numquam fugit sunt. Necessitatibus aut voluptas a Occaecati autem adipisci molestiae perspiciatis ut. Optio voluptatem ullam harum. Quia sit consequatur dicta occaecati molestiae Necessitatibus qui molestiae ullam. Qui rem est debitis quia cupiditate Non unde aperiam culpa quos. Quia vitae consectetur. Unde voluptatibus facere voluptatem dolor doloremque Pariatur veritatis labore et voluptates nisi Voluptatem nisi vel aut molestiae. Occaecati vitae et quia. sit nemo fugit iste sunt. Et est fugit repellendus iure ab.\r\n\r\nNon ut dignissimos. Ea culpa aliquid. Omnis ut et animi. Inventore consequatur id sint Totam amet ratione nobis ipsum sunt laborum. Facilis non ullam distinctio. Qui animi et. Quam debitis et earum. Animi ex sit adipisci explicabo quo. Numquam error et autem ut officiis. Numquam voluptatem est impedit ab qui. Eius quam voluptatem quae ex. Consequatur aut cum dolor nisi quasi sapiente. Tempora nostrum facere quidem ut. <a title=\"Ut dolorem molestiae eum.\" href=\"http://upton.com/ea-ut-praesentium-veniam-aperiam\">dignissimos commodi</a> eius. quia ut id eaque. dolorem itaque velit iusto accusantium. Aut est quos sed. Autem modi et corporis ipsa soluta delectus. Facere est illum est. Dolore reprehenderit incidunt soluta qui rerum consequatur. libero perspiciatis veritatis quis quibusdam. Dolor voluptatum provident eum. Ea commodi quae aliquam autem maxime dicta. Modi quas adipisci dolore Labore voluptatem atque aut ut quae unde. magnam et voluptas consectetur. Sed repudiandae ut eos cumque. Dolores architecto rerum. quaerat eligendi id adipisci. Sit aliquam blanditiis cumque et incidunt. sed tempore quae\r\n<ol>\r\n 	<li>Ad aut omnis</li>\r\n 	<li>Sit sunt</li>\r\n 	<li>A amet non quaerat nihil</li>\r\n 	<li>In id repudiandae vel</li>\r\n 	<li>Optio dolore temporibus corrupti nesciunt</li>\r\n 	<li>Pariatur quia quia voluptatem ipsa voluptates eum</li>\r\n</ol>\r\n\r\n<hr />\r\n\r\n<ol>\r\n 	<li>Quia ut</li>\r\n 	<li>Rem dolorum mollitia fugiat officiis</li>\r\n 	<li>Laudantium officia culpa necessitatibus</li>\r\n 	<li>Omnis dolore ex eos sed eaque quia</li>\r\n</ol>', 'Blanditiis non magni sit et velit', 'Ipsa atque aliquam tempora quis maxime sit ad blanditiis numquam et eveniet dolor dolores et velit suscipit sapiente nihil corrupti nemo eos non nihil ad eius sequi quas sed sint placeat sit et fuga.\r\n\r\nEt debitis recusandae culpa nobis vel ea officiis sunt quis sapiente dolores consequuntur voluptatibus est vitae dolores optio id impedit dicta aspernatur natus ut praesentium voluptatibus dolorem sint qui quae rem qui quia enim sint necessitatibus ut quibusdam.', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-01-09 13:48:09', '2018-01-09 12:48:09', '', 139, 'http://localhost/slutprojekt/2018/01/09/139-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-01-10 18:57:04', '2018-01-10 17:57:04', '', 'cq5dam.resized.img.1680.large.time1476319354458', '', 'inherit', 'open', 'closed', '', 'cq5dam-resized-img-1680-large-time1476319354458', '', '', '2018-01-10 18:57:04', '2018-01-10 17:57:04', '', 61, 'http://localhost/slutprojekt/wp-content/uploads/2017/12/cq5dam.resized.img_.1680.large_.time1476319354458.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2018-01-11 09:46:14', '2018-01-11 08:46:14', '', 'The archetypal male face of beauty according to a new scientific', 'The archetypal male face of beauty according to a new scientific study to mark the launch of the Samsung Galaxy S6.  Embargoed to 00.01hrs 30th March 2015.', 'inherit', 'open', 'closed', '', 'the-archetypal-male-face-of-beauty-according-to-a-new-scientific', '', '', '2018-01-11 09:47:20', '2018-01-11 08:47:20', '', 13, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/Archetypal-Male-Face-of-Beauty-embargoed-to-00.01hrs-30.03.15.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-01-11 09:46:18', '2018-01-11 08:46:18', '', 'The archetypal female face of beauty according to a new scientif', 'The archetypal female face of beauty according to a new scientific study to mark the launch of the Samsung Galaxy S6.  Embargoed to 00.01hrs 30th March 2015.', 'inherit', 'open', 'closed', '', 'the-archetypal-female-face-of-beauty-according-to-a-new-scientif', '', '', '2018-01-11 09:47:10', '2018-01-11 08:47:10', '', 13, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/WomanFace.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2018-01-11 09:47:24', '2018-01-11 08:47:24', '', 'Om oss', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-01-11 09:47:24', '2018-01-11 08:47:24', '', 13, 'http://localhost/slutprojekt/2018/01/11/13-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-01-11 18:50:16', '0000-00-00 00:00:00', '', 'Automatiskt utkast', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-11 18:50:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/slutprojekt/?p=147', 0, 'post', '', 0),
(148, 1, '2018-01-12 08:13:20', '2018-01-12 07:13:20', '', 'Land Rover Range Rover', '', 'publish', 'closed', 'closed', '', 'land-rover-range-rover', '', '', '2018-01-12 15:54:36', '2018-01-12 14:54:36', '', 0, 'http://localhost/slutprojekt/?post_type=bilar_post_type&#038;p=148', 0, 'bilar_post_type', '', 0),
(149, 1, '2018-01-12 08:12:31', '2018-01-12 07:12:31', '', '2250914257', '', 'inherit', 'open', 'closed', '', '2250914257', '', '', '2018-01-12 15:54:33', '2018-01-12 14:54:33', '', 148, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/2250914257.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2018-01-12 08:12:35', '2018-01-12 07:12:35', '', '2266277060', '', 'inherit', 'open', 'closed', '', '2266277060', '', '', '2018-01-12 08:12:35', '2018-01-12 07:12:35', '', 148, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/2266277060.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2018-01-12 08:12:36', '2018-01-12 07:12:36', '', '2274204386', '', 'inherit', 'open', 'closed', '', '2274204386', '', '', '2018-01-12 08:12:56', '2018-01-12 07:12:56', '', 148, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/2274204386.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2018-01-12 08:12:37', '2018-01-12 07:12:37', '', '7421210370', '', 'inherit', 'open', 'closed', '', '7421210370', '', '', '2018-01-12 08:12:37', '2018-01-12 07:12:37', '', 148, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/7421210370.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2018-01-12 08:58:28', '2018-01-12 07:58:28', '', 'Audi A4 Avant', '', 'publish', 'closed', 'closed', '', 'audi-a4-avant', '', '', '2018-01-12 15:38:27', '2018-01-12 14:38:27', '', 0, 'http://localhost/slutprojekt/?post_type=bilar_post_type&#038;p=153', 0, 'bilar_post_type', '', 0),
(154, 1, '2018-01-12 08:57:49', '2018-01-12 07:57:49', '', '4263880745', '', 'inherit', 'open', 'closed', '', '4263880745', '', '', '2018-01-12 08:57:59', '2018-01-12 07:57:59', '', 153, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/4263880745.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2018-01-12 08:58:18', '2018-01-12 07:58:18', '', '4223543978', '', 'inherit', 'open', 'closed', '', '4223543978', '', '', '2018-01-12 15:38:23', '2018-01-12 14:38:23', '', 153, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/4223543978.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2018-01-12 08:58:19', '2018-01-12 07:58:19', '', '4228103634', '', 'inherit', 'open', 'closed', '', '4228103634', '', '', '2018-01-12 08:58:19', '2018-01-12 07:58:19', '', 153, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/4228103634.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2018-01-12 08:58:20', '2018-01-12 07:58:20', '', '4251393763', '', 'inherit', 'open', 'closed', '', '4251393763', '', '', '2018-01-12 08:58:20', '2018-01-12 07:58:20', '', 153, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/4251393763.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2018-01-12 09:05:33', '2018-01-12 08:05:33', '', 'Mercedes-Benz E 220 d', '', 'publish', 'closed', 'closed', '', 'mercedes-benz-e-220-d', '', '', '2018-01-12 15:55:13', '2018-01-12 14:55:13', '', 0, 'http://localhost/slutprojekt/?post_type=bilar_post_type&#038;p=158', 0, 'bilar_post_type', '', 0),
(159, 1, '2018-01-12 09:05:07', '2018-01-12 08:05:07', '', '4240957664', '', 'inherit', 'open', 'closed', '', '4240957664', '', '', '2018-01-12 15:55:10', '2018-01-12 14:55:10', '', 158, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/4240957664.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2018-01-12 09:05:08', '2018-01-12 08:05:08', '', '4275050940', '', 'inherit', 'open', 'closed', '', '4275050940', '', '', '2018-01-12 09:05:08', '2018-01-12 08:05:08', '', 158, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/4275050940.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2018-01-12 09:05:09', '2018-01-12 08:05:09', '', '4292097578', '', 'inherit', 'open', 'closed', '', '4292097578', '', '', '2018-01-12 09:05:09', '2018-01-12 08:05:09', '', 158, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/4292097578.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2018-01-12 09:05:10', '2018-01-12 08:05:10', '', '4298341069', '', 'inherit', 'open', 'closed', '', '4298341069', '', '', '2018-01-12 09:05:19', '2018-01-12 08:05:19', '', 158, 'http://localhost/slutprojekt/wp-content/uploads/2018/01/4298341069.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `jk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(163, 1, '2018-01-12 12:14:15', '2018-01-12 11:14:15', '<a title=\"Eius.\" href=\"http://walter.net/\">Autem numquam animi illo delectus sint</a> libero. Omnis doloribus aut accusamus. voluptatibus non quam <a title=\"Rerum et officiis commodi natus quisquam itaque deleniti.\" href=\"http://www.hegmann.biz/\">qui totam.</a> beatae et dolores sint est velit rerum.\r\n<ul>\r\n 	<li>Rem dolor</li>\r\n 	<li>Totam facilis aut odio</li>\r\n</ul>\r\n<img class=\"aligncenter\" alt=\"Magni quia explicabo culpa earum in porro exercitationem veritatis dolor perferendis\" />\r\n<h4>Aut voluptas totam cupiditate et. Est quia ut rem tempora. Ex cumque et et est veritatis. Cumque id facere alias iure</h4>\r\n<img alt=\"Vel velit quod consequuntur nesciunt rerum odio\" />\r\n\r\n<a title=\"Libero est.\" href=\"https://schmeler.org/molestiae-veritatis-eveniet-nam-fugiat-assumenda.html\">In asperiores</a> <a title=\"Molestiae.\" href=\"http://kuphal.biz/sed-aut-mollitia-amet-perferendis-enim-quo-beatae\">officia molestiae</a> <a title=\"Et placeat aperiam deleniti iusto quia repellendus iste.\" href=\"http://www.braun.com/ut-aspernatur-eligendi-et-autem-consectetur.html\">Adipisci praesentium commodi exercitationem</a> <a title=\"Repellat rerum officiis.\" href=\"http://nienow.com/debitis-neque-doloribus-nulla-dolore-enim\">sint reprehenderit</a> Sed tempora aliquam beatae <a title=\"Ratione pariatur est.\" href=\"http://kemmer.com/veniam-sit-consectetur-similique-aliquam-perferendis\">excepturi.</a>\r\n\r\nMinus qui <a title=\"Cupiditate in eum velit blanditiis.\" href=\"https://www.jakubowski.com/omnis-dolores-et-a-voluptatum\">harum iure. Dicta</a> <a title=\"Voluptatibus voluptatem ut perferendis.\" href=\"http://kshlerin.com/\">nemo ea alias</a> optio. Aperiam nihil dignissimos necessitatibus architecto aut Error <a title=\"Modi enim illo voluptatibus sed.\" href=\"http://brakus.info/saepe-nisi-alias-aut-quia-eius-distinctio\">omnis illum nam facilis</a> Ut voluptates molestias voluptatem qui ullam.\r\n<h2>Ea animi sit qui dicta odit delectus. Autem tempora velit autem sint quod</h2>\r\n<ol>\r\n 	<li>Itaque magnam</li>\r\n 	<li>Officiis nobis</li>\r\n 	<li>Ducimus eos</li>\r\n 	<li>Expedita aliquid neque possimus nihil quas</li>\r\n 	<li>Nisi vel dolores rerum beatae facere</li>\r\n 	<li>Veritatis et eum deleniti praesentium</li>\r\n</ol>\r\n<h2>Cupiditate explicabo veniam dolorem. Numquam id commodi nulla qui. Sequi ut odit commodi non est ut saepe veniam. Consequatur sed facilis praesentium dolorem quo est</h2>\r\nTemporibus eum omnis natus illo qui perferendis. Pariatur at architecto eos. Praesentium tempore sint eum repellat. Ad eius doloremque aliquam. explicabo inventore corporis facilis sed. Et dolores <a title=\"Iusto ad eligendi fugiat in sed minima.\" href=\"http://www.klocko.com/\">facere maiores voluptatem alias</a> Sint autem voluptas voluptas. Quia et ut eum sit. id facilis tenetur occaecati Vel quibusdam sapiente temporibus <a title=\"Commodi deserunt.\" href=\"http://hudson.net/error-quaerat-voluptatem-illo-facere-voluptatem-cum-natus\">quo. Suscipit</a> ab sint voluptatem. reprehenderit fuga dolores dolores vero quibusdam repellat Et ducimus aut dignissimos quae saepe temporibus Ipsa tenetur ad sed. Illum autem omnis ratione. Est error in vel qui pariatur. nulla saepe sit aperiam Qui autem eos eos et. At voluptas ipsa. Asperiores autem cum <a title=\"Libero consectetur.\" href=\"http://donnelly.net/aut-consectetur-officia-aut-iure-magni-aspernatur-quisquam\">corrupti veniam cum. Quaerat quia voluptatem illum architecto est</a> ratione. Sunt debitis eum fugiat voluptatem incidunt illum. Autem non in accusamus sint voluptatem Dolores quae deserunt ad. Itaque soluta deleniti voluptate ipsam Delectus repellat dicta in ut. Quo impedit reiciendis facere dolores molestias similique.\r\n<ol>\r\n 	<li>Qui eaque</li>\r\n 	<li>Quisquam facilis quae quis architecto quia sequi</li>\r\n 	<li>Quia vel</li>\r\n 	<li>Ex et</li>\r\n</ol>\r\n<h4>Nemo et hic voluptas consectetur beatae. Est et ipsa ipsa veritatis aut non</h4>\r\n<ol>\r\n 	<li>Consequuntur</li>\r\n 	<li>Possimus ducimus debitis ut aut</li>\r\n 	<li>Sunt vel ea repellat aperiam illum</li>\r\n 	<li>Aperiam sed officiis eos aut repellendus quo</li>\r\n 	<li>Hic voluptatem et eum ut</li>\r\n 	<li>Cumque nesciunt odio quis soluta</li>\r\n</ol>\r\n<h6>Autem et aut eveniet rerum excepturi ratione corrupti recusandae. Voluptate sit distinctio iste earum sit voluptas est. Odio dolorem quia molestiae quasi</h6>\r\n<ul>\r\n 	<li>Doloribus maiores quis explicabo ut accusantium</li>\r\n 	<li>Fuga cum</li>\r\n</ul>\r\n<h1>Quia accusantium aut nobis qui quia. Est aperiam commodi et praesentium et</h1>\r\nAut qui quasi nulla aut. Quam rerum ipsa quasi delectus fugit. Cupiditate error quis pariatur quod voluptatem quae. Voluptatem sit explicabo necessitatibus nesciunt. Doloremque voluptatem et aut. Qui harum minima rerum molestias suscipit accusantium assumenda. Expedita odio unde quia doloremque. Laboriosam ut provident excepturi sit fugiat. Cumque id doloribus incidunt voluptas. Culpa blanditiis sint sunt sint nihil. Nulla doloremque perferendis explicabo qui blanditiis quia voluptatem. Est architecto sequi quae et voluptates quo cum. Quasi ratione laboriosam et tenetur unde. Quisquam hic dolorem et itaque aut enim. Sunt optio tempora quia ea. Aut culpa amet molestiae distinctio distinctio et est. Ducimus autem delectus ipsa repellat. Non dignissimos esse ut et ut. Quae consequatur incidunt aliquam quam qui quas. Quae non et nam quisquam. Sequi aspernatur neque voluptatem iste error ut itaque. Ut cum aut et.\r\n<blockquote>Sit itaque dolores similique ipsum neque. Ut tenetur illum et nulla odio. Impedit maiores doloribus fugit nam <a title=\"Non excepturi dicta iste.\" href=\"https://blick.com/natus-quo-velit-ducimus-libero-aperiam-et-facilis.html\">et. Aspernatur sit</a> tenetur minus excepturi consequatur. Ut aperiam nihil excepturi amet inventore et et. <a title=\"Aliquid.\" href=\"http://hegmann.com/sit-consequuntur-voluptatem-exercitationem-autem-dolorum\">sit</a> aut incidunt quia nemo. Maiores delectus culpa earum et voluptas. ut odio voluptas sed. Quibusdam eveniet sed aperiam laboriosam voluptatem. Et tempore itaque praesentium debitis. minus ea ea iste. sit eius modi <a title=\"Fugit in omnis quia.\" href=\"http://www.keebler.org/reiciendis-nobis-dolor-in\">quisquam. Ducimus praesentium</a> itaque ratione non voluptatem. Quia quia iste exercitationem omnis et Nemo corporis sint non numquam. <a title=\"Error voluptatibus.\" href=\"http://watsica.com/\">assumenda iste quia doloribus</a> officiis. Non rerum repellat iusto minus. Ut autem eius omnis qui temporibus ut. Voluptas voluptatem reprehenderit voluptatum Voluptates quibusdam maiores odio voluptas dolorem. Veniam eum quo <a title=\"Et.\" href=\"http://borer.com/quasi-quia-explicabo-ut-qui-dolorem-est-amet\">distinctio sint. Autem</a> in Deleniti dicta ratione molestiae et fuga.</blockquote>', 'Culpa quidem commodi hic quas', 'Et rerum quis et sint accusantium porro qui commodi repellendus hic officia ducimus corporis deserunt repellendus nihil rem cum aut rerum sed id id aperiam architecto earum et reiciendis aut voluptatem earum ab in sunt veritatis quas unde in ut mollitia illo autem sit ut quis corrupti expedita voluptas velit cumque eos enim quibusdam cum rerum optio nobis aut.', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2018-01-12 12:14:15', '2018-01-12 11:14:15', '', 137, 'http://localhost/slutprojekt/2018/01/12/137-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2018-01-12 12:15:25', '2018-01-12 11:15:25', 'yadad yada yada', 'Ny post', '', 'trash', 'open', 'open', '', 'ny-post__trashed', '', '', '2018-01-12 13:33:58', '2018-01-12 12:33:58', '', 0, 'http://localhost/slutprojekt/?p=164', 0, 'post', '', 0),
(165, 1, '2018-01-12 12:15:25', '2018-01-12 11:15:25', 'yadad yada yada', 'Ny post', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2018-01-12 12:15:25', '2018-01-12 11:15:25', '', 164, 'http://localhost/slutprojekt/2018/01/12/164-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2018-01-12 12:17:06', '2018-01-12 11:17:06', '<a title=\"Eius.\" href=\"http://walter.net/\">Autem numquam animi illo delectus sint</a> libero. Omnis doloribus aut accusamus. voluptatibus non quam <a title=\"Rerum et officiis commodi natus quisquam itaque deleniti.\" href=\"http://www.hegmann.biz/\">qui totam.</a> beatae et dolores sint est velit rerum.\r\n<ul>\r\n 	<li>Rem dolor</li>\r\n 	<li>Totam facilis aut odio</li>\r\n</ul>\r\n<img class=\"aligncenter\" alt=\"Magni quia explicabo culpa earum in porro exercitationem veritatis dolor perferendis\" />\r\n<h4>Aut voluptas totam cupiditate et. Est quia ut rem tempora. Ex cumque et et est veritatis. Cumque id facere alias iure</h4>\r\n<img alt=\"Vel velit quod consequuntur nesciunt rerum odio\" />\r\n\r\n<a title=\"Libero est.\" href=\"https://schmeler.org/molestiae-veritatis-eveniet-nam-fugiat-assumenda.html\">In asperiores</a> <a title=\"Molestiae.\" href=\"http://kuphal.biz/sed-aut-mollitia-amet-perferendis-enim-quo-beatae\">officia molestiae</a> <a title=\"Et placeat aperiam deleniti iusto quia repellendus iste.\" href=\"http://www.braun.com/ut-aspernatur-eligendi-et-autem-consectetur.html\">Adipisci praesentium commodi exercitationem</a> <a title=\"Repellat rerum officiis.\" href=\"http://nienow.com/debitis-neque-doloribus-nulla-dolore-enim\">sint reprehenderit</a> Sed tempora aliquam beatae <a title=\"Ratione pariatur est.\" href=\"http://kemmer.com/veniam-sit-consectetur-similique-aliquam-perferendis\">excepturi.</a>\r\n\r\nMinus qui <a title=\"Cupiditate in eum velit blanditiis.\" href=\"https://www.jakubowski.com/omnis-dolores-et-a-voluptatum\">harum iure. Dicta</a> <a title=\"Voluptatibus voluptatem ut perferendis.\" href=\"http://kshlerin.com/\">nemo ea alias</a> optio. Aperiam nihil dignissimos necessitatibus architecto aut Error <a title=\"Modi enim illo voluptatibus sed.\" href=\"http://brakus.info/saepe-nisi-alias-aut-quia-eius-distinctio\">omnis illum nam facilis</a> Ut voluptates molestias voluptatem qui ullam.\r\n<h2>Ea animi sit qui dicta odit delectus. Autem tempora velit autem sint quod</h2>\r\n<ol>\r\n 	<li>Itaque magnam</li>\r\n 	<li>Officiis nobis</li>\r\n 	<li>Ducimus eos</li>\r\n 	<li>Expedita aliquid neque possimus nihil quas</li>\r\n 	<li>Nisi vel dolores rerum beatae facere</li>\r\n 	<li>Veritatis et eum deleniti praesentium</li>\r\n</ol>\r\n<h2>Cupiditate explicabo veniam dolorem. Numquam id commodi nulla qui. Sequi ut odit commodi non est ut saepe veniam. Consequatur sed facilis praesentium dolorem quo est</h2>\r\nTemporibus eum omnis natus illo qui perferendis. Pariatur at architecto eos. Praesentium tempore sint eum repellat. Ad eius doloremque aliquam. explicabo inventore corporis facilis sed. Et dolores <a title=\"Iusto ad eligendi fugiat in sed minima.\" href=\"http://www.klocko.com/\">facere maiores voluptatem alias</a> Sint autem voluptas voluptas. Quia et ut eum sit. id facilis tenetur occaecati Vel quibusdam sapiente temporibus <a title=\"Commodi deserunt.\" href=\"http://hudson.net/error-quaerat-voluptatem-illo-facere-voluptatem-cum-natus\">quo. Suscipit</a> ab sint voluptatem. reprehenderit fuga dolores dolores vero quibusdam repellat Et ducimus aut dignissimos quae saepe temporibus Ipsa tenetur ad sed. Illum autem omnis ratione. Est error in vel qui pariatur. nulla saepe sit aperiam Qui autem eos eos et. At voluptas ipsa. Asperiores autem cum <a title=\"Libero consectetur.\" href=\"http://donnelly.net/aut-consectetur-officia-aut-iure-magni-aspernatur-quisquam\">corrupti veniam cum. Quaerat quia voluptatem illum architecto est</a> ratione. Sunt debitis eum fugiat voluptatem incidunt illum. Autem non in accusamus sint voluptatem Dolores quae deserunt ad. Itaque soluta deleniti voluptate ipsam Delectus repellat dicta in ut. Quo impedit reiciendis facere dolores molestias similique.\r\n<ol>\r\n 	<li>Qui eaque</li>\r\n 	<li>Quisquam facilis quae quis architecto quia sequi</li>\r\n 	<li>Quia vel</li>\r\n 	<li>Ex et</li>\r\n</ol>\r\n<h4>Nemo et hic voluptas consectetur beatae. Est et ipsa ipsa veritatis aut non</h4>\r\n<ol>\r\n 	<li>Consequuntur</li>\r\n 	<li>Possimus ducimus debitis ut aut</li>\r\n 	<li>Sunt vel ea repellat aperiam illum</li>\r\n 	<li>Aperiam sed officiis eos aut repellendus quo</li>\r\n 	<li>Hic voluptatem et eum ut</li>\r\n 	<li>Cumque nesciunt odio quis soluta</li>\r\n</ol>\r\n<h6>Autem et aut eveniet rerum excepturi ratione corrupti recusandae. Voluptate sit distinctio iste earum sit voluptas est. Odio dolorem quia molestiae quasi</h6>\r\n<ul>\r\n 	<li>Doloribus maiores quis explicabo ut accusantium</li>\r\n 	<li>Fuga cum</li>\r\n</ul>\r\n<h1>Quia accusantium aut nobis qui quia. Est aperiam commodi et praesentium et</h1>\r\nAut qui quasi nulla aut. Quam rerum ipsa quasi delectus fugit. Cupiditate error quis pariatur quod voluptatem quae. Voluptatem sit explicabo necessitatibus nesciunt. Doloremque voluptatem et aut. Qui harum minima rerum molestias suscipit accusantium assumenda. Expedita odio unde quia doloremque. Laboriosam ut provident excepturi sit fugiat. Cumque id doloribus incidunt voluptas. Culpa blanditiis sint sunt sint nihil. Nulla doloremque perferendis explicabo qui blanditiis quia voluptatem. Est architecto sequi quae et voluptates quo cum. Quasi ratione laboriosam et tenetur unde. Quisquam hic dolorem et itaque aut enim. Sunt optio tempora quia ea. Aut culpa amet molestiae distinctio distinctio et est. Ducimus autem delectus ipsa repellat. Non dignissimos esse ut et ut. Quae consequatur incidunt aliquam quam qui quas. Quae non et nam quisquam. Sequi aspernatur neque voluptatem iste error ut itaque. Ut cum aut et.\r\n<blockquote>Sit itaque dolores similique ipsum neque. Ut tenetur illum et nulla odio. Impedit maiores doloribus fugit nam <a title=\"Non excepturi dicta iste.\" href=\"https://blick.com/natus-quo-velit-ducimus-libero-aperiam-et-facilis.html\">et. Aspernatur sit</a> tenetur minus excepturi consequatur. Ut aperiam nihil excepturi amet inventore et et. <a title=\"Aliquid.\" href=\"http://hegmann.com/sit-consequuntur-voluptatem-exercitationem-autem-dolorum\">sit</a> aut incidunt quia nemo. Maiores delectus culpa earum et voluptas. ut odio voluptas sed. Quibusdam eveniet sed aperiam laboriosam voluptatem. Et tempore itaque praesentium debitis. minus ea ea iste. sit eius modi <a title=\"Fugit in omnis quia.\" href=\"http://www.keebler.org/reiciendis-nobis-dolor-in\">quisquam. Ducimus praesentium</a> itaque ratione non voluptatem. Quia quia iste exercitationem omnis et Nemo corporis sint non numquam. <a title=\"Error voluptatibus.\" href=\"http://watsica.com/\">assumenda iste quia doloribus</a> officiis. Non rerum repellat iusto minus. Ut autem eius omnis qui temporibus ut. Voluptas voluptatem reprehenderit voluptatum Voluptates quibusdam maiores odio voluptas dolorem. Veniam eum quo <a title=\"Et.\" href=\"http://borer.com/quasi-quia-explicabo-ut-qui-dolorem-est-amet\">distinctio sint. Autem</a> in Deleniti dicta ratione molestiae et fuga.</blockquote>', 'Culpa quidem commodi hic quas', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2018-01-12 12:17:06', '2018-01-12 11:17:06', '', 137, 'http://localhost/slutprojekt/2018/01/12/137-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2018-01-12 15:32:00', '2018-01-12 14:32:00', 'a:16:{s:4:\"type\";s:5:\"image\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Bild', 'fler_bilder_bild', 'publish', 'closed', 'closed', '', 'field_5a58c6b16f50d', '', '', '2018-01-12 15:32:00', '2018-01-12 14:32:00', '', 110, 'http://localhost/slutprojekt/?post_type=acf-field&p=167', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jk_termmeta`
--

CREATE TABLE `jk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jk_terms`
--

CREATE TABLE `jk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `jk_terms`
--

INSERT INTO `jk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Okategoriserade', 'okategoriserade', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Nyhet', 'nyhet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jk_term_relationships`
--

CREATE TABLE `jk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `jk_term_relationships`
--

INSERT INTO `jk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(51, 2, 0),
(56, 1, 0),
(61, 1, 0),
(61, 3, 0),
(136, 1, 0),
(136, 3, 0),
(137, 1, 0),
(137, 3, 0),
(139, 1, 0),
(139, 3, 0),
(164, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jk_term_taxonomy`
--

CREATE TABLE `jk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `jk_term_taxonomy`
--

INSERT INTO `jk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `jk_usermeta`
--

CREATE TABLE `jk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `jk_usermeta`
--

INSERT INTO `jk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Jonatan@demo'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'jk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'jk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"c36b2e128fdf1c0fa5d0f9fd81a5241aa23979e4c45a363e8f4c900d59ee1e8c\";a:4:{s:10:\"expiration\";i:1515832691;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1515659891;}s:64:\"b92ef76e061aaea5b5d831e79b5073c9c8fcb44daf14639f2fde4e41c8846518\";a:4:{s:10:\"expiration\";i:1515834218;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1515661418;}s:64:\"63f1ab10872aaff7570ab891243bda1e0ac8334ef143f40dedb41b740475a226\";a:4:{s:10:\"expiration\";i:1515865813;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1515693013;}s:64:\"ca7146ac6d64d71b64c9ec3f6d7664d93cee427cc54f83260f16651d0b9cd9f8\";a:4:{s:10:\"expiration\";i:1515913392;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1515740592;}}'),
(17, 1, 'jk_dashboard_quick_press_last_post_id', '147'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'jk_user-settings', 'libraryContent=browse&hidetb=0'),
(22, 1, 'jk_user-settings-time', '1514199959'),
(23, 1, 'closedpostboxes_bilar_post_type', 'a:0:{}'),
(24, 1, 'metaboxhidden_bilar_post_type', 'a:2:{i:0;s:23:\"acf-group_5a2fe18ee2e34\";i:1;s:7:\"slugdiv\";}'),
(25, 1, 'acf_user_settings', 'a:0:{}'),
(26, 1, 'nav_menu_recently_edited', '2'),
(27, 1, 'closedpostboxes_page', 'a:0:{}'),
(28, 1, 'metaboxhidden_page', 'a:7:{i:0;s:23:\"acf-group_5a324bae0ba12\";i:1;s:23:\"acf-group_5a2fe18ee2e34\";i:2;s:23:\"acf-group_5a4e550abefa5\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(29, 1, 'closedpostboxes_post', 'a:0:{}'),
(30, 1, 'metaboxhidden_post', 'a:9:{i:0;s:23:\"acf-group_5a324bae0ba12\";i:1;s:23:\"acf-group_5a2fe18ee2e34\";i:2;s:23:\"acf-group_5a4e9744e22b7\";i:3;s:23:\"acf-group_5a4e550abefa5\";i:4;s:13:\"trackbacksdiv\";i:5;s:16:\"commentstatusdiv\";i:6;s:11:\"commentsdiv\";i:7;s:7:\"slugdiv\";i:8;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `jk_users`
--

CREATE TABLE `jk_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `jk_users`
--

INSERT INTO `jk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Jonatan@demo', '$P$BOYcIAA3St20An76DHpQ69CPBC9dCv.', 'jonatandemo', 'nundssfdfi@hotmail.com', '', '2017-12-04 13:13:33', '', 0, 'Jonatan@demo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jk_commentmeta`
--
ALTER TABLE `jk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jk_comments`
--
ALTER TABLE `jk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `jk_links`
--
ALTER TABLE `jk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `jk_options`
--
ALTER TABLE `jk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `jk_postmeta`
--
ALTER TABLE `jk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jk_posts`
--
ALTER TABLE `jk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `jk_termmeta`
--
ALTER TABLE `jk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jk_terms`
--
ALTER TABLE `jk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `jk_term_relationships`
--
ALTER TABLE `jk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `jk_term_taxonomy`
--
ALTER TABLE `jk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `jk_usermeta`
--
ALTER TABLE `jk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jk_users`
--
ALTER TABLE `jk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jk_commentmeta`
--
ALTER TABLE `jk_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jk_comments`
--
ALTER TABLE `jk_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jk_links`
--
ALTER TABLE `jk_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jk_options`
--
ALTER TABLE `jk_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=693;
--
-- AUTO_INCREMENT for table `jk_postmeta`
--
ALTER TABLE `jk_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;
--
-- AUTO_INCREMENT for table `jk_posts`
--
ALTER TABLE `jk_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `jk_termmeta`
--
ALTER TABLE `jk_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jk_terms`
--
ALTER TABLE `jk_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jk_term_taxonomy`
--
ALTER TABLE `jk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jk_usermeta`
--
ALTER TABLE `jk_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `jk_users`
--
ALTER TABLE `jk_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
