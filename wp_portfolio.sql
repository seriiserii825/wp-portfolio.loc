-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 21 2018 г., 14:36
-- Версия сервера: 5.7.20
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp_portfolio`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
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
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-20 10:16:26', '2018-04-20 07:16:26', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp-portfolio.loc', 'yes'),
(2, 'home', 'http://wp-portfolio.loc', 'yes'),
(3, 'blogname', 'portfolio', 'yes'),
(4, 'blogdescription', 'I´M A 30 YEAR OLD UI/UX WEB DESIGNER BASED in NEW YORK CITY', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'seriiburduja@gmail.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'portfolio', 'yes'),
(41, 'stylesheet', 'portfolio', 'yes'),
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
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '310', 'yes'),
(59, 'thumbnail_size_h', '238', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '600', 'yes'),
(62, 'medium_size_h', '461', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1030', 'yes'),
(65, 'large_size_h', '562', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1524338187;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524381398;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524383971;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1524208987;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1524304314;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1524304321;s:7:\"checked\";a:4:{s:9:\"portfolio\";s:3:\"1.9\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_efc56fe28520bcd166ef136f44025003', '1524813399', 'no'),
(122, '_site_transient_browser_efc56fe28520bcd166ef136f44025003', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(137, 'current_theme', 'Portfolio', 'yes'),
(138, 'theme_mods_portfolio', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"header\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(143, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(157, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1524304321;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(158, 'acf_version', '4.4.12', 'yes'),
(164, 'new_admin_email', 'seriiburduja@gmail.com', 'yes'),
(173, '_site_transient_timeout_theme_roots', '1524306121', 'no'),
(174, '_site_transient_theme_roots', 'a:4:{s:9:\"portfolio\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(177, '_transient_timeout_plugin_slugs', '1524392594', 'no'),
(178, '_transient_plugin_slugs', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:9:\"hello.php\";}', 'no'),
(181, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://wp-portfolio.loc/'),
(10, 4, '_menu_item_orphaned', '1524211135'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1524211135'),
(20, 6, '_edit_last', '1'),
(21, 6, '_edit_lock', '1524211057:1'),
(22, 8, '_menu_item_type', 'custom'),
(23, 8, '_menu_item_menu_item_parent', '0'),
(24, 8, '_menu_item_object_id', '8'),
(25, 8, '_menu_item_object', 'custom'),
(26, 8, '_menu_item_target', ''),
(27, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 8, '_menu_item_xfn', ''),
(29, 8, '_menu_item_url', 'http://wp-portfolio.loc/'),
(31, 9, '_menu_item_type', 'post_type'),
(32, 9, '_menu_item_menu_item_parent', '0'),
(33, 9, '_menu_item_object_id', '6'),
(34, 9, '_menu_item_object', 'page'),
(35, 9, '_menu_item_target', ''),
(36, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 9, '_menu_item_xfn', ''),
(38, 9, '_menu_item_url', ''),
(40, 10, '_menu_item_type', 'post_type'),
(41, 10, '_menu_item_menu_item_parent', '0'),
(42, 10, '_menu_item_object_id', '2'),
(43, 10, '_menu_item_object', 'page'),
(44, 10, '_menu_item_target', ''),
(45, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 10, '_menu_item_xfn', ''),
(47, 10, '_menu_item_url', ''),
(48, 10, '_menu_item_orphaned', '1524211206'),
(65, 19, '_edit_last', '1'),
(66, 19, 'field_5ad9b55182ef3', 'a:13:{s:3:\"key\";s:19:\"field_5ad9b55182ef3\";s:5:\"label\";s:30:\"Интро на главной\";s:4:\"name\";s:11:\"index_intro\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(68, 19, 'position', 'normal'),
(69, 19, 'layout', 'no_box'),
(70, 19, 'hide_on_screen', ''),
(71, 19, '_edit_lock', '1524219156:1'),
(72, 19, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"3\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(73, 21, '_edit_last', '1'),
(74, 21, '_edit_lock', '1524217925:1'),
(76, 22, 'index_intro', 'I´M A 30 YEAR OLD UI/UX WEB DESIGNER BASED in NEW YORK CITY'),
(77, 22, '_index_intro', 'field_5ad9b55182ef3'),
(78, 21, 'index_intro', 'Привет, мне 30 лет, я верстаю, работаю с wordpress и живу в Кишиневе'),
(79, 21, '_index_intro', 'field_5ad9b55182ef3'),
(81, 23, 'index_intro', 'Мне 30 лет, я верстальщик и живу в Кишиневе'),
(82, 23, '_index_intro', 'field_5ad9b55182ef3'),
(84, 24, 'index_intro', 'Привет, мне 30 лет, я верстаю, работаю с wordpress и живу в Кишиневе'),
(85, 24, '_index_intro', 'field_5ad9b55182ef3'),
(86, 25, '_edit_last', '1'),
(87, 25, '_edit_lock', '1524307385:1'),
(89, 27, '_edit_last', '1'),
(90, 27, 'field_5ad9bde7e56a1', 'a:10:{s:3:\"key\";s:19:\"field_5ad9bde7e56a1\";s:5:\"label\";s:19:\"Миниатюра \";s:4:\"name\";s:11:\"index_thumb\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:36:\"Добавьте миниатюру \";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(91, 27, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"4\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(92, 27, 'position', 'normal'),
(93, 27, 'layout', 'no_box'),
(94, 27, 'hide_on_screen', ''),
(95, 27, '_edit_lock', '1524220472:1'),
(96, 1, '_wp_trash_meta_status', 'publish'),
(97, 1, '_wp_trash_meta_time', '1524219493'),
(98, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(99, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(103, 29, 'index_thumb', '11'),
(104, 29, '_index_thumb', 'field_5ad9bde7e56a1'),
(105, 25, 'index_thumb', '30'),
(106, 25, '_index_thumb', 'field_5ad9bde7e56a1'),
(113, 32, 'index_thumb', '30'),
(114, 32, '_index_thumb', 'field_5ad9bde7e56a1'),
(115, 33, '_edit_last', '1'),
(116, 33, '_edit_lock', '1524307904:1'),
(123, 36, 'index_thumb', '30'),
(124, 36, '_index_thumb', 'field_5ad9bde7e56a1'),
(125, 33, 'index_thumb', '34'),
(126, 33, '_index_thumb', 'field_5ad9bde7e56a1'),
(128, 37, 'index_thumb', '34'),
(129, 37, '_index_thumb', 'field_5ad9bde7e56a1'),
(130, 38, '_edit_last', '1'),
(131, 38, '_edit_lock', '1524307750:1'),
(138, 41, 'index_thumb', '39'),
(139, 41, '_index_thumb', 'field_5ad9bde7e56a1'),
(140, 38, 'index_thumb', '39'),
(141, 38, '_index_thumb', 'field_5ad9bde7e56a1'),
(142, 42, '_edit_last', '1'),
(143, 42, '_edit_lock', '1524309332:1'),
(146, 43, 'index_thumb', '39'),
(147, 43, '_index_thumb', 'field_5ad9bde7e56a1'),
(148, 42, 'index_thumb', '44'),
(149, 42, '_index_thumb', 'field_5ad9bde7e56a1'),
(155, 46, 'index_thumb', '44'),
(156, 46, '_index_thumb', 'field_5ad9bde7e56a1'),
(157, 27, '_wp_trash_meta_status', 'publish'),
(158, 27, '_wp_trash_meta_time', '1524305945'),
(159, 27, '_wp_desired_post_slug', 'acf_%d0%bf%d0%be%d1%81%d1%82%d1%8b-%d0%bd%d0%b0-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9'),
(160, 19, '_wp_trash_meta_status', 'publish'),
(161, 19, '_wp_trash_meta_time', '1524305949'),
(162, 19, '_wp_desired_post_slug', 'acf_%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f'),
(163, 47, '_edit_last', '1'),
(164, 47, 'field_5adb114a4a753', 'a:14:{s:3:\"key\";s:19:\"field_5adb114a4a753\";s:5:\"label\";s:36:\"Ссылка на портфолио\";s:4:\"name\";s:14:\"portfolio_link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:53:\"Добавьте ссылку на портфолио\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(165, 47, 'field_5adb117f4a754', 'a:11:{s:3:\"key\";s:19:\"field_5adb117f4a754\";s:5:\"label\";s:18:\"Миниатюра\";s:4:\"name\";s:9:\"small-img\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:62:\"Добавьте миниатюру размером 150 х 82\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(167, 47, 'position', 'normal'),
(168, 47, 'layout', 'no_box'),
(169, 47, 'hide_on_screen', ''),
(170, 47, '_edit_lock', '1524307936:1'),
(171, 48, '_wp_attached_file', '2018/04/slider-4.jpg'),
(172, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1395;s:6:\"height\";i:761;s:4:\"file\";s:20:\"2018/04/slider-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-4-310x238.jpg\";s:5:\"width\";i:310;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider-4-600x327.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:327;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider-4-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider-4-1100x600.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 25, '_thumbnail_id', '48'),
(175, 49, 'portfolio_link', 'http://test.host1670806.hostland.pro/Bargain/index.html'),
(176, 49, '_portfolio_link', 'field_5adb114a4a753'),
(177, 49, '_', 'field_5adb117f4a754'),
(178, 25, 'portfolio_link', 'http://test.host1670806.hostland.pro/Bargain/index.html'),
(179, 25, '_portfolio_link', 'field_5adb114a4a753'),
(180, 25, '_', 'field_5adb117f4a754'),
(182, 50, '_wp_attached_file', '2018/04/slider-4-1.jpg'),
(183, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:82;s:4:\"file\";s:22:\"2018/04/slider-4-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 51, 'portfolio_link', 'http://test.host1670806.hostland.pro/Bargain/index.html'),
(186, 51, '_portfolio_link', 'field_5adb114a4a753'),
(187, 51, 'small-img', '50'),
(188, 51, '_small-img', 'field_5adb117f4a754'),
(189, 25, 'small-img', '50'),
(190, 25, '_small-img', 'field_5adb117f4a754'),
(192, 52, '_wp_attached_file', '2018/04/slider-5.jpg'),
(193, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:82;s:4:\"file\";s:20:\"2018/04/slider-5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 53, '_wp_attached_file', '2018/04/slider-5-1.jpg'),
(195, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1413;s:6:\"height\";i:771;s:4:\"file\";s:22:\"2018/04/slider-5-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"slider-5-1-310x238.jpg\";s:5:\"width\";i:310;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"slider-5-1-600x327.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:327;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"slider-5-1-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"slider-5-1-1100x600.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 38, '_thumbnail_id', '53'),
(198, 54, 'portfolio_link', 'http://test.host1670806.hostland.pro/Website/build/index.html'),
(199, 54, '_portfolio_link', 'field_5adb114a4a753'),
(200, 54, 'small-img', '52'),
(201, 54, '_small-img', 'field_5adb117f4a754'),
(202, 38, 'portfolio_link', 'http://test.host1670806.hostland.pro/Website/build/index.html'),
(203, 38, '_portfolio_link', 'field_5adb114a4a753'),
(204, 38, 'small-img', '52'),
(205, 38, '_small-img', 'field_5adb117f4a754'),
(207, 55, '_wp_attached_file', '2018/04/slider-1.jpg'),
(208, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1319;s:6:\"height\";i:719;s:4:\"file\";s:20:\"2018/04/slider-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-1-310x238.jpg\";s:5:\"width\";i:310;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider-1-600x327.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:327;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider-1-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider-1-1101x600.jpg\";s:5:\"width\";i:1101;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 56, '_wp_attached_file', '2018/04/slider-6.jpg'),
(210, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1398;s:6:\"height\";i:763;s:4:\"file\";s:20:\"2018/04/slider-6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-6-310x238.jpg\";s:5:\"width\";i:310;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider-6-600x327.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:327;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider-6-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider-6-1099x600.jpg\";s:5:\"width\";i:1099;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 57, '_wp_attached_file', '2018/04/slider-7.jpg'),
(212, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1419;s:6:\"height\";i:774;s:4:\"file\";s:20:\"2018/04/slider-7.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-7-310x238.jpg\";s:5:\"width\";i:310;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider-7-600x327.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:327;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider-7-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider-7-1100x600.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 58, '_wp_attached_file', '2018/04/slider-1-1.jpg'),
(214, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:82;s:4:\"file\";s:22:\"2018/04/slider-1-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 59, '_wp_attached_file', '2018/04/slider-6-1.jpg'),
(216, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:82;s:4:\"file\";s:22:\"2018/04/slider-6-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 60, '_wp_attached_file', '2018/04/slider-7-1.jpg'),
(218, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:82;s:4:\"file\";s:22:\"2018/04/slider-7-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 33, '_thumbnail_id', '55'),
(221, 61, 'portfolio_link', 'http://test.host1670806.hostland.pro/Transcargo/build/index.html'),
(222, 61, '_portfolio_link', 'field_5adb114a4a753'),
(223, 61, 'small-img', '58'),
(224, 61, '_small-img', 'field_5adb117f4a754'),
(225, 33, 'portfolio_link', 'http://test.host1670806.hostland.pro/Transcargo/build/index.html'),
(226, 33, '_portfolio_link', 'field_5adb114a4a753'),
(227, 33, 'small-img', '58'),
(228, 33, '_small-img', 'field_5adb117f4a754'),
(229, 47, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"3\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(230, 21, '_wp_trash_meta_status', 'publish'),
(231, 21, '_wp_trash_meta_time', '1524308138'),
(232, 21, '_wp_desired_post_slug', 'intro'),
(235, 63, '_wp_attached_file', '2018/04/City-fence-small.jpg'),
(236, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:169;s:6:\"height\";i:88;s:4:\"file\";s:28:\"2018/04/City-fence-small.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(239, 64, 'portfolio_link', 'http://test.host1670806.hostland.pro/City-fence/index.html'),
(240, 64, '_portfolio_link', 'field_5adb114a4a753'),
(241, 64, 'small-img', '63'),
(242, 64, '_small-img', 'field_5adb117f4a754'),
(243, 42, 'portfolio_link', 'http://test.host1670806.hostland.pro/City-fence/index.html'),
(244, 42, '_portfolio_link', 'field_5adb114a4a753'),
(245, 42, 'small-img', '63'),
(246, 42, '_small-img', 'field_5adb117f4a754'),
(250, 66, '_wp_attached_file', '2018/04/City-fence-big.jpg'),
(251, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1030;s:6:\"height\";i:562;s:4:\"file\";s:26:\"2018/04/City-fence-big.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"City-fence-big-310x238.jpg\";s:5:\"width\";i:310;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"City-fence-big-600x327.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:327;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"City-fence-big-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(252, 42, '_thumbnail_id', '66'),
(254, 67, '_edit_last', '1'),
(255, 67, '_edit_lock', '1524309659:1'),
(256, 67, '_thumbnail_id', '57'),
(258, 68, 'portfolio_link', 'http://test.host1670806.hostland.pro/Design-group/build/index.html'),
(259, 68, '_portfolio_link', 'field_5adb114a4a753'),
(260, 68, 'small-img', '60'),
(261, 68, '_small-img', 'field_5adb117f4a754'),
(262, 67, 'portfolio_link', 'http://test.host1670806.hostland.pro/Design-group/build/index.html'),
(263, 67, '_portfolio_link', 'field_5adb114a4a753'),
(264, 67, 'small-img', '60'),
(265, 67, '_small-img', 'field_5adb117f4a754'),
(266, 69, '_edit_last', '1'),
(267, 69, '_edit_lock', '1524309955:1'),
(268, 70, '_wp_attached_file', '2018/04/Eventidy.jpg'),
(269, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1030;s:6:\"height\";i:562;s:4:\"file\";s:20:\"2018/04/Eventidy.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Eventidy-310x238.jpg\";s:5:\"width\";i:310;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Eventidy-600x327.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:327;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Eventidy-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(270, 71, '_wp_attached_file', '2018/04/Eventidy-small.jpg'),
(271, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:169;s:6:\"height\";i:88;s:4:\"file\";s:26:\"2018/04/Eventidy-small.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(272, 69, '_thumbnail_id', '70'),
(274, 72, 'portfolio_link', 'http://test.host1670806.hostland.pro/Eventidy/build/index.html'),
(275, 72, '_portfolio_link', 'field_5adb114a4a753'),
(276, 72, 'small-img', '71'),
(277, 72, '_small-img', 'field_5adb117f4a754'),
(278, 69, 'portfolio_link', 'http://test.host1670806.hostland.pro/Eventidy/build/index.html'),
(279, 69, '_portfolio_link', 'field_5adb114a4a753'),
(280, 69, 'small-img', '71'),
(281, 69, '_small-img', 'field_5adb117f4a754'),
(282, 73, '_edit_last', '1'),
(283, 73, '_edit_lock', '1524310345:1'),
(284, 74, '_wp_attached_file', '2018/04/Marselle.jpg'),
(285, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1030;s:6:\"height\";i:652;s:4:\"file\";s:20:\"2018/04/Marselle.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Marselle-310x238.jpg\";s:5:\"width\";i:310;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Marselle-600x380.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Marselle-768x486.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"Marselle-888x562.jpg\";s:5:\"width\";i:888;s:6:\"height\";i:562;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(286, 75, '_wp_attached_file', '2018/04/Marselle-small.jpg'),
(287, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:169;s:6:\"height\";i:88;s:4:\"file\";s:26:\"2018/04/Marselle-small.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(288, 73, '_thumbnail_id', '74'),
(290, 76, 'portfolio_link', 'http://test.host1670806.hostland.pro/Marselle/build/index.html'),
(291, 76, '_portfolio_link', 'field_5adb114a4a753'),
(292, 76, 'small-img', '75'),
(293, 76, '_small-img', 'field_5adb117f4a754'),
(294, 73, 'portfolio_link', 'http://test.host1670806.hostland.pro/Marselle/build/index.html'),
(295, 73, '_portfolio_link', 'field_5adb114a4a753'),
(296, 73, 'small-img', '75'),
(297, 73, '_small-img', 'field_5adb117f4a754');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-20 10:16:26', '2018-04-20 07:16:26', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2018-04-20 13:18:13', '2018-04-20 10:18:13', '', 0, 'http://wp-portfolio.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-20 10:16:26', '2018-04-20 07:16:26', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://wp-portfolio.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-20 10:16:26', '2018-04-20 07:16:26', '', 0, 'http://wp-portfolio.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-20 10:16:39', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-20 10:16:39', '0000-00-00 00:00:00', '', 0, 'http://wp-portfolio.loc/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-20 10:58:55', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-20 10:58:55', '0000-00-00 00:00:00', '', 0, 'http://wp-portfolio.loc/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2018-04-20 10:58:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-20 10:58:55', '0000-00-00 00:00:00', '', 0, 'http://wp-portfolio.loc/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2018-04-20 10:59:46', '2018-04-20 07:59:46', '', 'Обо мне', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%b1%d0%be-%d0%bc%d0%bd%d0%b5', '', '', '2018-04-20 10:59:46', '2018-04-20 07:59:46', '', 0, 'http://wp-portfolio.loc/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-04-20 10:59:46', '2018-04-20 07:59:46', '', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-20 10:59:46', '2018-04-20 07:59:46', '', 6, 'http://wp-portfolio.loc/2018/04/20/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-20 11:00:40', '2018-04-20 08:00:40', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2018-04-20 11:00:46', '2018-04-20 08:00:46', '', 0, 'http://wp-portfolio.loc/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2018-04-20 11:00:40', '2018-04-20 08:00:40', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2018-04-20 11:00:46', '2018-04-20 08:00:46', '', 0, 'http://wp-portfolio.loc/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2018-04-20 11:00:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-20 11:00:06', '0000-00-00 00:00:00', '', 0, 'http://wp-portfolio.loc/?p=10', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-04-20 12:40:32', '2018-04-20 09:40:32', '', 'Главная', '', 'trash', 'closed', 'closed', '', 'acf_%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f__trashed', '', '', '2018-04-21 13:19:09', '2018-04-21 10:19:09', '', 0, 'http://wp-portfolio.loc/?post_type=acf&#038;p=19', 0, 'acf', '', 0),
(20, 1, '2018-04-20 12:40:58', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-20 12:40:58', '0000-00-00 00:00:00', '', 0, 'http://wp-portfolio.loc/?p=20', 0, 'post', '', 0),
(21, 1, '2018-04-20 12:43:32', '2018-04-20 09:43:32', '', 'Intro', '', 'trash', 'open', 'open', '', 'intro__trashed', '', '', '2018-04-21 13:55:38', '2018-04-21 10:55:38', '', 0, 'http://wp-portfolio.loc/?p=21', 0, 'post', '', 0),
(22, 1, '2018-04-20 12:43:32', '2018-04-20 09:43:32', '', 'Intro', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-04-20 12:43:32', '2018-04-20 09:43:32', '', 21, 'http://wp-portfolio.loc/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-04-20 12:51:21', '2018-04-20 09:51:21', '', 'Intro', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-04-20 12:51:21', '2018-04-20 09:51:21', '', 21, 'http://wp-portfolio.loc/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-04-20 12:53:01', '2018-04-20 09:53:01', '', 'Intro', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-04-20 12:53:01', '2018-04-20 09:53:01', '', 21, 'http://wp-portfolio.loc/21-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-04-20 13:02:08', '2018-04-20 10:02:08', '', 'Bargain - landing', 'Сайт состоит из четырех блоков. Используется анимированная навигации при скролле. Подключена google maps. На сайте присутствуют анимированные эффекты.', 'publish', 'open', 'open', '', 'bargain-landing', '', '', '2018-04-21 13:45:12', '2018-04-21 10:45:12', '', 0, 'http://wp-portfolio.loc/?p=25', 0, 'post', '', 0),
(26, 1, '2018-04-20 13:02:08', '2018-04-20 10:02:08', '', 'Bargain - landing', 'Сайт состоит из четырех блоков. Используется анимированная навигации при скролле. Подключена google maps. На сайте присутствуют анимированные эффекты.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-20 13:02:08', '2018-04-20 10:02:08', '', 25, 'http://wp-portfolio.loc/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-04-20 13:17:11', '2018-04-20 10:17:11', '', 'Посты на главной', '', 'trash', 'closed', 'closed', '', 'acf_%d0%bf%d0%be%d1%81%d1%82%d1%8b-%d0%bd%d0%b0-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9__trashed', '', '', '2018-04-21 13:19:05', '2018-04-21 10:19:05', '', 0, 'http://wp-portfolio.loc/?post_type=acf&#038;p=27', 0, 'acf', '', 0),
(28, 1, '2018-04-20 13:18:13', '2018-04-20 10:18:13', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-20 13:18:13', '2018-04-20 10:18:13', '', 1, 'http://wp-portfolio.loc/1-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-04-20 13:19:05', '2018-04-20 10:19:05', '', 'Bargain - landing', 'Сайт состоит из четырех блоков. Используется анимированная навигации при скролле. Подключена google maps. На сайте присутствуют анимированные эффекты.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-20 13:19:05', '2018-04-20 10:19:05', '', 25, 'http://wp-portfolio.loc/25-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-04-20 13:32:45', '2018-04-20 10:32:45', '', 'Bargain - landing', 'Сайт состоит из четырех блоков. Используется анимированная навигации при скролле. Подключена google maps. На сайте присутствуют анимированные эффекты.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-20 13:32:45', '2018-04-20 10:32:45', '', 25, 'http://wp-portfolio.loc/25-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-04-20 13:39:30', '2018-04-20 10:39:30', '', 'Transcargo - multilanding', 'Главная страница состоит из блоков, которые являются ссылками на другие страницы. На сайте присутствует анимация.', 'publish', 'open', 'open', '', 'transcargo-multilanding', '', '', '2018-04-21 13:53:43', '2018-04-21 10:53:43', '', 0, 'http://wp-portfolio.loc/?p=33', 0, 'post', '', 0),
(36, 1, '2018-04-20 13:39:30', '2018-04-20 10:39:30', '', 'Transcargo - multilanding', 'Главная страница состоит из блоков, которые являются ссылками на другие страницы. На сайте присутствует анимация.', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-20 13:39:30', '2018-04-20 10:39:30', '', 33, 'http://wp-portfolio.loc/33-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-04-20 13:40:06', '2018-04-20 10:40:06', '', 'Transcargo - multilanding', 'Главная страница состоит из блоков, которые являются ссылками на другие страницы. На сайте присутствует анимация.', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-20 13:40:06', '2018-04-20 10:40:06', '', 33, 'http://wp-portfolio.loc/33-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-04-20 13:58:28', '2018-04-20 10:58:28', 'Сайт landing-page с анимированным меню. Легкий, удобный для небольшой коммерческой фирмы.', 'Website - landing-page', '', 'publish', 'open', 'open', '', 'website-landing-page', '', '', '2018-04-21 13:51:04', '2018-04-21 10:51:04', '', 0, 'http://wp-portfolio.loc/?p=38', 0, 'post', '', 0),
(41, 1, '2018-04-20 13:58:28', '2018-04-20 10:58:28', 'Сайт landing-page с анимированным меню. Легкий, удобный для небольшой коммерческой фирмы.', 'Website - landing-page', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-04-20 13:58:28', '2018-04-20 10:58:28', '', 38, 'http://wp-portfolio.loc/38-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-04-20 14:00:17', '2018-04-20 11:00:17', '', 'Город заборов', 'Сайт с 4 страницами для продажи различных типов заборов. На сайте есть небольшое портфолио и анимированный сайдбар.', 'publish', 'open', 'open', '', '%d0%b3%d0%be%d1%80%d0%be%d0%b4-%d0%b7%d0%b0%d0%b1%d0%be%d1%80%d0%be%d0%b2', '', '', '2018-04-21 14:17:10', '2018-04-21 11:17:10', '', 0, 'http://wp-portfolio.loc/?p=42', 0, 'post', '', 0),
(43, 1, '2018-04-20 14:00:17', '2018-04-20 11:00:17', '', 'Город заборов', 'Сайт с 4 страницами для продажи различных типов заборов. На сайте есть небольшое портфолио и анимированный сайдбар.', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-04-20 14:00:17', '2018-04-20 11:00:17', '', 42, 'http://wp-portfolio.loc/42-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-04-20 14:00:50', '2018-04-20 11:00:50', '', 'Город заборов', 'Сайт с 4 страницами для продажи различных типов заборов. На сайте есть небольшое портфолио и анимированный сайдбар.', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-04-20 14:00:50', '2018-04-20 11:00:50', '', 42, 'http://wp-portfolio.loc/42-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-04-21 13:25:15', '2018-04-21 10:25:15', '', 'Слайдер', '', 'publish', 'closed', 'closed', '', 'acf_%d1%81%d0%bb%d0%b0%d0%b9%d0%b4%d0%b5%d1%80', '', '', '2018-04-21 13:54:33', '2018-04-21 10:54:33', '', 0, 'http://wp-portfolio.loc/?post_type=acf&#038;p=47', 0, 'acf', '', 0),
(48, 1, '2018-04-21 13:29:25', '2018-04-21 10:29:25', '', 'slider-4', '', 'inherit', 'open', 'closed', '', 'slider-4', '', '', '2018-04-21 13:29:25', '2018-04-21 10:29:25', '', 25, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-04-21 13:34:32', '2018-04-21 10:34:32', '', 'Bargain - landing', 'Сайт состоит из четырех блоков. Используется анимированная навигации при скролле. Подключена google maps. На сайте присутствуют анимированные эффекты.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-21 13:34:32', '2018-04-21 10:34:32', '', 25, 'http://wp-portfolio.loc/25-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-04-21 13:39:05', '2018-04-21 10:39:05', '', 'slider-4', '', 'inherit', 'open', 'closed', '', 'slider-4-2', '', '', '2018-04-21 13:39:05', '2018-04-21 10:39:05', '', 25, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-04-21 13:39:10', '2018-04-21 10:39:10', '', 'Bargain - landing', 'Сайт состоит из четырех блоков. Используется анимированная навигации при скролле. Подключена google maps. На сайте присутствуют анимированные эффекты.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-21 13:39:10', '2018-04-21 10:39:10', '', 25, 'http://wp-portfolio.loc/25-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-04-21 13:49:02', '2018-04-21 10:49:02', '', 'slider-5', '', 'inherit', 'open', 'closed', '', 'slider-5', '', '', '2018-04-21 13:49:02', '2018-04-21 10:49:02', '', 38, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-04-21 13:49:30', '2018-04-21 10:49:30', '', 'slider-5', '', 'inherit', 'open', 'closed', '', 'slider-5-2', '', '', '2018-04-21 13:49:30', '2018-04-21 10:49:30', '', 38, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-04-21 13:50:56', '2018-04-21 10:50:56', 'Сайт landing-page с анимированным меню. Легкий, удобный для небольшой коммерческой фирмы.', 'Website - landing-page', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-04-21 13:50:56', '2018-04-21 10:50:56', '', 38, 'http://wp-portfolio.loc/38-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-04-21 13:52:47', '2018-04-21 10:52:47', '', 'slider-1', '', 'inherit', 'open', 'closed', '', 'slider-1', '', '', '2018-04-21 13:52:47', '2018-04-21 10:52:47', '', 33, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-04-21 13:52:48', '2018-04-21 10:52:48', '', 'slider-6', '', 'inherit', 'open', 'closed', '', 'slider-6', '', '', '2018-04-21 13:52:48', '2018-04-21 10:52:48', '', 33, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-04-21 13:52:49', '2018-04-21 10:52:49', '', 'slider-7', '', 'inherit', 'open', 'closed', '', 'slider-7', '', '', '2018-04-21 13:52:49', '2018-04-21 10:52:49', '', 33, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-04-21 13:53:18', '2018-04-21 10:53:18', '', 'slider-1', '', 'inherit', 'open', 'closed', '', 'slider-1-2', '', '', '2018-04-21 13:53:18', '2018-04-21 10:53:18', '', 33, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-04-21 13:53:19', '2018-04-21 10:53:19', '', 'slider-6', '', 'inherit', 'open', 'closed', '', 'slider-6-2', '', '', '2018-04-21 13:53:19', '2018-04-21 10:53:19', '', 33, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-04-21 13:53:19', '2018-04-21 10:53:19', '', 'slider-7', '', 'inherit', 'open', 'closed', '', 'slider-7-2', '', '', '2018-04-21 13:53:19', '2018-04-21 10:53:19', '', 33, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/slider-7-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-04-21 13:53:43', '2018-04-21 10:53:43', '', 'Transcargo - multilanding', 'Главная страница состоит из блоков, которые являются ссылками на другие страницы. На сайте присутствует анимация.', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-21 13:53:43', '2018-04-21 10:53:43', '', 33, 'http://wp-portfolio.loc/33-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-04-21 14:04:58', '2018-04-21 11:04:58', '', 'City-fence-small', '', 'inherit', 'open', 'closed', '', 'city-fence-small', '', '', '2018-04-21 14:04:58', '2018-04-21 11:04:58', '', 42, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/City-fence-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-04-21 14:06:18', '2018-04-21 11:06:18', '', 'Город заборов', 'Сайт с 4 страницами для продажи различных типов заборов. На сайте есть небольшое портфолио и анимированный сайдбар.', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-04-21 14:06:18', '2018-04-21 11:06:18', '', 42, 'http://wp-portfolio.loc/42-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-04-21 14:17:06', '2018-04-21 11:17:06', '', 'City-fence-big', '', 'inherit', 'open', 'closed', '', 'city-fence-big', '', '', '2018-04-21 14:17:06', '2018-04-21 11:17:06', '', 42, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/City-fence-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-04-21 14:21:28', '2018-04-21 11:21:28', '', 'Design-group', '', 'publish', 'open', 'open', '', 'design-group', '', '', '2018-04-21 14:21:28', '2018-04-21 11:21:28', '', 0, 'http://wp-portfolio.loc/?p=67', 0, 'post', '', 0),
(68, 1, '2018-04-21 14:21:28', '2018-04-21 11:21:28', '', 'Design-group', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-21 14:21:28', '2018-04-21 11:21:28', '', 67, 'http://wp-portfolio.loc/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-04-21 14:28:14', '2018-04-21 11:28:14', '', 'Eventidy', '', 'publish', 'open', 'open', '', 'eventidy', '', '', '2018-04-21 14:28:14', '2018-04-21 11:28:14', '', 0, 'http://wp-portfolio.loc/?p=69', 0, 'post', '', 0),
(70, 1, '2018-04-21 14:27:58', '2018-04-21 11:27:58', '', 'Eventidy', '', 'inherit', 'open', 'closed', '', 'eventidy', '', '', '2018-04-21 14:27:58', '2018-04-21 11:27:58', '', 69, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/Eventidy.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-04-21 14:27:59', '2018-04-21 11:27:59', '', 'Eventidy-small', '', 'inherit', 'open', 'closed', '', 'eventidy-small', '', '', '2018-04-21 14:27:59', '2018-04-21 11:27:59', '', 69, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/Eventidy-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-04-21 14:28:14', '2018-04-21 11:28:14', '', 'Eventidy', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-04-21 14:28:14', '2018-04-21 11:28:14', '', 69, 'http://wp-portfolio.loc/69-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-04-21 14:32:24', '2018-04-21 11:32:24', '', 'Marselle', '', 'publish', 'open', 'open', '', 'marselle', '', '', '2018-04-21 14:32:24', '2018-04-21 11:32:24', '', 0, 'http://wp-portfolio.loc/?p=73', 0, 'post', '', 0),
(74, 1, '2018-04-21 14:32:12', '2018-04-21 11:32:12', '', 'Marselle', '', 'inherit', 'open', 'closed', '', 'marselle', '', '', '2018-04-21 14:32:12', '2018-04-21 11:32:12', '', 73, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/Marselle.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-04-21 14:32:13', '2018-04-21 11:32:13', '', 'Marselle-small', '', 'inherit', 'open', 'closed', '', 'marselle-small', '', '', '2018-04-21 14:32:13', '2018-04-21 11:32:13', '', 73, 'http://wp-portfolio.loc/wp-content/uploads/2018/04/Marselle-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-04-21 14:32:24', '2018-04-21 11:32:24', '', 'Marselle', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2018-04-21 14:32:24', '2018-04-21 11:32:24', '', 73, 'http://wp-portfolio.loc/73-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Меню в шапке', '%d0%bc%d0%b5%d0%bd%d1%8e-%d0%b2-%d1%88%d0%b0%d0%bf%d0%ba%d0%b5', 0),
(3, 'Slider', 'slider', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 2, 0),
(21, 3, 0),
(25, 3, 0),
(33, 3, 0),
(38, 3, 0),
(42, 3, 0),
(67, 3, 0),
(69, 3, 0),
(73, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'category', '', 0, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'serii'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"1e5bf7b0ff6dae9fd5a9cbed71c4b17a093b0c31971ad3061de4a8deacd41d16\";a:4:{s:10:\"expiration\";i:1525418198;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524208598;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'closedpostboxes_post', 'a:2:{i:0;s:11:\"postexcerpt\";i:1;s:10:\"postcustom\";}'),
(24, 1, 'metaboxhidden_post', 'a:9:{i:0;s:16:\"tagsdiv-post_tag\";i:1;s:12:\"revisionsdiv\";i:2;s:11:\"postexcerpt\";i:3;s:13:\"trackbacksdiv\";i:4;s:10:\"postcustom\";i:5;s:16:\"commentstatusdiv\";i:6;s:11:\"commentsdiv\";i:7;s:7:\"slugdiv\";i:8;s:9:\"authordiv\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1524219254'),
(27, 1, 'wp_media_library_mode', 'list');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'serii', '$P$BCFigQHWefVjWMzWnqVaHjThMOgICy0', 'serii', 'seriiburduja@gmail.com', '', '2018-04-20 07:16:26', '', 0, 'serii');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
