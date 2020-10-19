/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 19/10/2020 19:45:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for __testFrom
-- ----------------------------
DROP TABLE IF EXISTS `__testFrom`;
CREATE TABLE `__testFrom` (
  `name` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of __testFrom
-- ----------------------------
BEGIN;
INSERT INTO `__testFrom` VALUES ('Bernie', 10000, '0000-00-00 00:00:00', 'Bernie');
INSERT INTO `__testFrom` VALUES ('Amy', 100000, '12-10-2020 19:00', 'Test');
INSERT INTO `__testFrom` VALUES ('Cindy', 2000, '04-10-2020 19:00', 'Loan');
INSERT INTO `__testFrom` VALUES ('Devin', 10000, '01-10-2020 19:30', 'This is a test record.');
INSERT INTO `__testFrom` VALUES ('Test', 10000, '06-10-2020 19:30', '');
INSERT INTO `__testFrom` VALUES ('Tony', 200, '12-10-2020 19:30', 'Loan');
INSERT INTO `__testFrom` VALUES ('Test1', 1111, '05-10-2020 19:30', '');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_action_log_config
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_action_log_config`;
CREATE TABLE `bak_srvig_action_log_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_action_log_config
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_action_log_config` VALUES (1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `bak_srvig_action_log_config` VALUES (19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_action_logs
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_action_logs`;
CREATE TABLE `bak_srvig_action_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_action_logs
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_action_logs` VALUES (1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"76\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=76\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-19 20:50:11', 'com_users', 76, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `bak_srvig_action_logs` VALUES (2, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"76\",\"userid\":\"76\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=76\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-19 20:52:56', 'com_users', 76, 76, 'COM_ACTIONLOGS_DISABLED');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_action_logs_extensions
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_action_logs_extensions`;
CREATE TABLE `bak_srvig_action_logs_extensions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_action_logs_extensions
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (1, 'com_banners');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (2, 'com_cache');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (3, 'com_categories');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (4, 'com_config');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (5, 'com_contact');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (6, 'com_content');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (7, 'com_installer');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (8, 'com_media');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (9, 'com_menus');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (10, 'com_messages');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (11, 'com_modules');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (12, 'com_newsfeeds');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (13, 'com_plugins');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (14, 'com_redirect');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (15, 'com_tags');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (16, 'com_templates');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (17, 'com_users');
INSERT INTO `bak_srvig_action_logs_extensions` VALUES (18, 'com_checkin');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_action_logs_users
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_action_logs_users`;
CREATE TABLE `bak_srvig_action_logs_users` (
  `user_id` int unsigned NOT NULL,
  `notify` tinyint unsigned NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_assets
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_assets`;
CREATE TABLE `bak_srvig_assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_assets
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_assets` VALUES (1, 0, 0, 113, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}');
INSERT INTO `bak_srvig_assets` VALUES (3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (6, 1, 11, 12, 1, 'com_config', 'com_config', '{}');
INSERT INTO `bak_srvig_assets` VALUES (7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (8, 1, 17, 20, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `bak_srvig_assets` VALUES (10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `bak_srvig_assets` VALUES (11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (12, 1, 27, 28, 1, 'com_login', 'com_login', '{}');
INSERT INTO `bak_srvig_assets` VALUES (13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}');
INSERT INTO `bak_srvig_assets` VALUES (14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}');
INSERT INTO `bak_srvig_assets` VALUES (15, 1, 33, 34, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (16, 1, 35, 38, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (18, 1, 41, 78, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (19, 1, 79, 82, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (20, 1, 83, 84, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (21, 1, 85, 86, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (22, 1, 87, 88, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (23, 1, 89, 90, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (24, 1, 91, 94, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (26, 1, 95, 96, 1, 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `bak_srvig_assets` VALUES (27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}');
INSERT INTO `bak_srvig_assets` VALUES (28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}');
INSERT INTO `bak_srvig_assets` VALUES (29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}');
INSERT INTO `bak_srvig_assets` VALUES (30, 19, 80, 81, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}');
INSERT INTO `bak_srvig_assets` VALUES (32, 24, 92, 93, 2, 'com_users.category.7', 'Uncategorised', '{}');
INSERT INTO `bak_srvig_assets` VALUES (33, 1, 97, 98, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `bak_srvig_assets` VALUES (34, 1, 99, 100, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}');
INSERT INTO `bak_srvig_assets` VALUES (35, 1, 101, 102, 1, 'com_tags', 'com_tags', '{}');
INSERT INTO `bak_srvig_assets` VALUES (36, 1, 103, 104, 1, 'com_contenthistory', 'com_contenthistory', '{}');
INSERT INTO `bak_srvig_assets` VALUES (37, 1, 105, 106, 1, 'com_ajax', 'com_ajax', '{}');
INSERT INTO `bak_srvig_assets` VALUES (38, 1, 107, 108, 1, 'com_postinstall', 'com_postinstall', '{}');
INSERT INTO `bak_srvig_assets` VALUES (39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{}');
INSERT INTO `bak_srvig_assets` VALUES (40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{}');
INSERT INTO `bak_srvig_assets` VALUES (41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{}');
INSERT INTO `bak_srvig_assets` VALUES (42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{}');
INSERT INTO `bak_srvig_assets` VALUES (43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{}');
INSERT INTO `bak_srvig_assets` VALUES (44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{}');
INSERT INTO `bak_srvig_assets` VALUES (45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{}');
INSERT INTO `bak_srvig_assets` VALUES (46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{}');
INSERT INTO `bak_srvig_assets` VALUES (47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{}');
INSERT INTO `bak_srvig_assets` VALUES (48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{}');
INSERT INTO `bak_srvig_assets` VALUES (49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{}');
INSERT INTO `bak_srvig_assets` VALUES (50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{}');
INSERT INTO `bak_srvig_assets` VALUES (51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{}');
INSERT INTO `bak_srvig_assets` VALUES (52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{}');
INSERT INTO `bak_srvig_assets` VALUES (53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{}');
INSERT INTO `bak_srvig_assets` VALUES (54, 16, 36, 37, 2, 'com_menus.menu.1', 'Main Menu', '{}');
INSERT INTO `bak_srvig_assets` VALUES (55, 18, 72, 73, 2, 'com_modules.module.87', 'Sample Data', '{}');
INSERT INTO `bak_srvig_assets` VALUES (56, 1, 109, 110, 1, 'com_privacy', 'com_privacy', '{}');
INSERT INTO `bak_srvig_assets` VALUES (57, 1, 111, 112, 1, 'com_actionlogs', 'com_actionlogs', '{}');
INSERT INTO `bak_srvig_assets` VALUES (58, 18, 74, 75, 2, 'com_modules.module.88', 'Latest Actions', '{}');
INSERT INTO `bak_srvig_assets` VALUES (59, 18, 76, 77, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_associations
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_associations`;
CREATE TABLE `bak_srvig_associations` (
  `id` int NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_banner_clients
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_banner_clients`;
CREATE TABLE `bak_srvig_banner_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_banner_tracks
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_banner_tracks`;
CREATE TABLE `bak_srvig_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int unsigned NOT NULL,
  `banner_id` int unsigned NOT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_banners
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_banners`;
CREATE TABLE `bak_srvig_banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int NOT NULL DEFAULT '0',
  `impmade` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_categories
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_categories`;
CREATE TABLE `bak_srvig_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_categories
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_categories` VALUES (1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 76, '2020-10-19 20:49:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bak_srvig_categories` VALUES (2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 76, '2020-10-19 20:49:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bak_srvig_categories` VALUES (3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 76, '2020-10-19 20:49:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bak_srvig_categories` VALUES (4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 76, '2020-10-19 20:49:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bak_srvig_categories` VALUES (5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 76, '2020-10-19 20:49:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bak_srvig_categories` VALUES (7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 76, '2020-10-19 20:49:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_contact_details
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_contact_details`;
CREATE TABLE `bak_srvig_contact_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `catid` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_content
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_content`;
CREATE TABLE `bak_srvig_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_content_frontpage
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_content_frontpage`;
CREATE TABLE `bak_srvig_content_frontpage` (
  `content_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_content_rating
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_content_rating`;
CREATE TABLE `bak_srvig_content_rating` (
  `content_id` int NOT NULL DEFAULT '0',
  `rating_sum` int unsigned NOT NULL DEFAULT '0',
  `rating_count` int unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_content_types
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_content_types`;
CREATE TABLE `bak_srvig_content_types` (
  `type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_content_types
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_content_types` VALUES (1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `bak_srvig_content_types` VALUES (2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `bak_srvig_content_types` VALUES (3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `bak_srvig_content_types` VALUES (4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', '');
INSERT INTO `bak_srvig_content_types` VALUES (5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `bak_srvig_content_types` VALUES (6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `bak_srvig_content_types` VALUES (7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `bak_srvig_content_types` VALUES (8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `bak_srvig_content_types` VALUES (9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `bak_srvig_content_types` VALUES (10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `bak_srvig_content_types` VALUES (11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `bak_srvig_content_types` VALUES (12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `bak_srvig_content_types` VALUES (13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_contentitem_tag_map
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_contentitem_tag_map`;
CREATE TABLE `bak_srvig_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- ----------------------------
-- Table structure for bak_srvig_core_log_searches
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_core_log_searches`;
CREATE TABLE `bak_srvig_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_extensions
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_extensions`;
CREATE TABLE `bak_srvig_extensions` (
  `extension_id` int NOT NULL AUTO_INCREMENT,
  `package_id` int NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int DEFAULT '0',
  `state` int DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_extensions
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_extensions` VALUES (1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"6ba350ed6f23e32a16113f672d0b412c\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `bak_srvig_extensions` VALUES (403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `bak_srvig_extensions` VALUES (408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `bak_srvig_extensions` VALUES (409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `bak_srvig_extensions` VALUES (410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.56.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `bak_srvig_extensions` VALUES (412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2020\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `bak_srvig_extensions` VALUES (413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `bak_srvig_extensions` VALUES (415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `bak_srvig_extensions` VALUES (416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `bak_srvig_extensions` VALUES (417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `bak_srvig_extensions` VALUES (424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0);
INSERT INTO `bak_srvig_extensions` VALUES (425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `bak_srvig_extensions` VALUES (426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `bak_srvig_extensions` VALUES (427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `bak_srvig_extensions` VALUES (428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `bak_srvig_extensions` VALUES (429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `bak_srvig_extensions` VALUES (430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `bak_srvig_extensions` VALUES (431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `bak_srvig_extensions` VALUES (433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0);
INSERT INTO `bak_srvig_extensions` VALUES (437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `bak_srvig_extensions` VALUES (441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `bak_srvig_extensions` VALUES (444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `bak_srvig_extensions` VALUES (445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `bak_srvig_extensions` VALUES (447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1603140555}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `bak_srvig_extensions` VALUES (456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `bak_srvig_extensions` VALUES (457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `bak_srvig_extensions` VALUES (458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1603140556}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"October 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.22\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, 'false', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"October 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.22\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_srvig_extensions` VALUES (802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"October 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.22.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_fields
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_fields`;
CREATE TABLE `bak_srvig_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_fields_categories
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_fields_categories`;
CREATE TABLE `bak_srvig_fields_categories` (
  `field_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_fields_groups
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_fields_groups`;
CREATE TABLE `bak_srvig_fields_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_fields_values
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_fields_values`;
CREATE TABLE `bak_srvig_fields_values` (
  `field_id` int unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_filters
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_filters`;
CREATE TABLE `bak_srvig_finder_filters` (
  `filter_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL,
  `created_by_alias` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_general_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links`;
CREATE TABLE `bak_srvig_finder_links` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(400) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int DEFAULT '1',
  `access` int DEFAULT '0',
  `language` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms0
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms0`;
CREATE TABLE `bak_srvig_finder_links_terms0` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms1
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms1`;
CREATE TABLE `bak_srvig_finder_links_terms1` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms2
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms2`;
CREATE TABLE `bak_srvig_finder_links_terms2` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms3
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms3`;
CREATE TABLE `bak_srvig_finder_links_terms3` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms4
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms4`;
CREATE TABLE `bak_srvig_finder_links_terms4` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms5
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms5`;
CREATE TABLE `bak_srvig_finder_links_terms5` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms6
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms6`;
CREATE TABLE `bak_srvig_finder_links_terms6` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms7
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms7`;
CREATE TABLE `bak_srvig_finder_links_terms7` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms8
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms8`;
CREATE TABLE `bak_srvig_finder_links_terms8` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_terms9
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_terms9`;
CREATE TABLE `bak_srvig_finder_links_terms9` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_termsa
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_termsa`;
CREATE TABLE `bak_srvig_finder_links_termsa` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_termsb
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_termsb`;
CREATE TABLE `bak_srvig_finder_links_termsb` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_termsc
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_termsc`;
CREATE TABLE `bak_srvig_finder_links_termsc` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_termsd
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_termsd`;
CREATE TABLE `bak_srvig_finder_links_termsd` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_termse
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_termse`;
CREATE TABLE `bak_srvig_finder_links_termse` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_links_termsf
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_links_termsf`;
CREATE TABLE `bak_srvig_finder_links_termsf` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_taxonomy`;
CREATE TABLE `bak_srvig_finder_taxonomy` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `state` tinyint unsigned NOT NULL DEFAULT '1',
  `access` tinyint unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of bak_srvig_finder_taxonomy
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_finder_taxonomy` VALUES (1, 0, 'ROOT', 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_finder_taxonomy_map
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_taxonomy_map`;
CREATE TABLE `bak_srvig_finder_taxonomy_map` (
  `link_id` int unsigned NOT NULL,
  `node_id` int unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_terms
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_terms`;
CREATE TABLE `bak_srvig_finder_terms` (
  `term_id` int unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `stem` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `links` int NOT NULL DEFAULT '0',
  `language` char(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_terms_common
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_terms_common`;
CREATE TABLE `bak_srvig_finder_terms_common` (
  `term` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `language` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of bak_srvig_finder_terms_common
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('a', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('about', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('after', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('ago', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('all', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('am', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('an', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('and', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('any', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('are', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('aren\'t', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('as', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('at', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('be', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('but', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('by', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('for', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('from', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('get', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('go', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('how', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('if', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('in', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('into', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('is', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('isn\'t', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('it', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('its', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('me', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('more', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('most', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('must', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('my', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('new', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('no', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('none', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('not', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('nothing', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('of', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('off', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('often', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('old', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('on', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('onc', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('once', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('only', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('or', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('other', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('our', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('ours', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('out', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('over', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('page', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('she', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('should', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('small', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('so', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('some', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('than', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('thank', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('that', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('the', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('their', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('theirs', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('them', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('then', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('there', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('these', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('they', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('this', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('those', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('thus', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('time', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('times', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('to', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('too', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('true', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('under', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('until', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('up', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('upon', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('use', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('user', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('users', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('version', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('very', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('via', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('want', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('was', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('way', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('were', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('what', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('when', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('where', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('which', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('who', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('whom', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('whose', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('why', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('wide', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('will', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('with', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('within', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('without', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('would', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('yes', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('yet', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('you', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('your', 'en');
INSERT INTO `bak_srvig_finder_terms_common` VALUES ('yours', 'en');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_finder_tokens
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_tokens`;
CREATE TABLE `bak_srvig_finder_tokens` (
  `term` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `stem` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `language` char(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_tokens_aggregate
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_tokens_aggregate`;
CREATE TABLE `bak_srvig_finder_tokens_aggregate` (
  `term_id` int unsigned NOT NULL,
  `map_suffix` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `term` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `stem` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_finder_types
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_finder_types`;
CREATE TABLE `bak_srvig_finder_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for bak_srvig_languages
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_languages`;
CREATE TABLE `bak_srvig_languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_languages
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_languages` VALUES (1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_menu
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_menu`;
CREATE TABLE `bak_srvig_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_menu
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_menu` VALUES (1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 43, 0, '*', 0);
INSERT INTO `bak_srvig_menu` VALUES (2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1);
INSERT INTO `bak_srvig_menu` VALUES (21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1);
INSERT INTO `bak_srvig_menu` VALUES (101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_menu_types
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_menu_types`;
CREATE TABLE `bak_srvig_menu_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_menu_types
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_menu_types` VALUES (1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_messages
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_messages`;
CREATE TABLE `bak_srvig_messages` (
  `message_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int unsigned NOT NULL DEFAULT '0',
  `user_id_to` int unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_messages_cfg
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_messages_cfg`;
CREATE TABLE `bak_srvig_messages_cfg` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_modules
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_modules`;
CREATE TABLE `bak_srvig_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_modules
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_modules` VALUES (1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*');
INSERT INTO `bak_srvig_modules` VALUES (2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*');
INSERT INTO `bak_srvig_modules` VALUES (17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*');
INSERT INTO `bak_srvig_modules` VALUES (79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (88, 58, 'Latest Actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{}', 1, '*');
INSERT INTO `bak_srvig_modules` VALUES (89, 59, 'Privacy Dashboard', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_privacy_dashboard', 6, 1, '{}', 1, '*');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_modules_menu
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_modules_menu`;
CREATE TABLE `bak_srvig_modules_menu` (
  `moduleid` int NOT NULL DEFAULT '0',
  `menuid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_modules_menu
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_modules_menu` VALUES (1, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (2, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (3, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (4, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (6, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (7, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (8, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (9, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (10, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (12, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (13, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (14, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (15, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (16, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (17, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (79, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (86, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (87, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (88, 0);
INSERT INTO `bak_srvig_modules_menu` VALUES (89, 0);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_newsfeeds
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_newsfeeds`;
CREATE TABLE `bak_srvig_newsfeeds` (
  `catid` int NOT NULL DEFAULT '0',
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int unsigned NOT NULL DEFAULT '1',
  `cache_time` int unsigned NOT NULL DEFAULT '3600',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int NOT NULL DEFAULT '0',
  `rtl` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_overrider
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_overrider`;
CREATE TABLE `bak_srvig_overrider` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_postinstall_messages
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_postinstall_messages`;
CREATE TABLE `bak_srvig_postinstall_messages` (
  `postinstall_message_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_postinstall_messages
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_postinstall_messages` VALUES (1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1);
INSERT INTO `bak_srvig_postinstall_messages` VALUES (2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);
INSERT INTO `bak_srvig_postinstall_messages` VALUES (3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);
INSERT INTO `bak_srvig_postinstall_messages` VALUES (4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);
INSERT INTO `bak_srvig_postinstall_messages` VALUES (5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1);
INSERT INTO `bak_srvig_postinstall_messages` VALUES (6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);
INSERT INTO `bak_srvig_postinstall_messages` VALUES (7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);
INSERT INTO `bak_srvig_postinstall_messages` VALUES (8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1);
INSERT INTO `bak_srvig_postinstall_messages` VALUES (9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_privacy_consents
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_privacy_consents`;
CREATE TABLE `bak_srvig_privacy_consents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_privacy_requests
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_privacy_requests`;
CREATE TABLE `bak_srvig_privacy_requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_redirect_links
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_redirect_links`;
CREATE TABLE `bak_srvig_redirect_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_schemas
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_schemas`;
CREATE TABLE `bak_srvig_schemas` (
  `extension_id` int NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_schemas
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_schemas` VALUES (700, '3.9.22-2020-09-16');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_session
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_session`;
CREATE TABLE `bak_srvig_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint unsigned DEFAULT NULL,
  `guest` tinyint unsigned DEFAULT '1',
  `time` int NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_session
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_session` VALUES (0x373865346C306D3564366A723471636E677470736561356B6F75, 1, 1, 1603140776, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYwMzE0MDc3NjtzOjQ6Imxhc3QiO2k6MTYwMzE0MDc3NjtzOjM6Im5vdyI7aToxNjAzMTQwNzc2O31zOjU6InRva2VuIjtzOjMyOiJFa1FOQURhSm9yR3YyNm5oTVBUNHJpclZSbjMwY1o2eCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, '');
INSERT INTO `bak_srvig_session` VALUES (0x6F3269756866396E6D696D3376676565666F6737647230633463, 0, 1, 1603140758, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYwMzE0MDU1NTtzOjQ6Imxhc3QiO2k6MTYwMzE0MDc1NjtzOjM6Im5vdyI7aToxNjAzMTQwNzU4O31zOjU6InRva2VuIjtzOjMyOiJSVnRrcjJKakZ6dzFHZUNpbldUd09ZWTV0UXpiRWhpZCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, '');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_tags
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_tags`;
CREATE TABLE `bak_srvig_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_tags
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_tags` VALUES (1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 76, '2020-10-19 20:49:08', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_template_styles
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_template_styles`;
CREATE TABLE `bak_srvig_template_styles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_template_styles
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_template_styles` VALUES (4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `bak_srvig_template_styles` VALUES (5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `bak_srvig_template_styles` VALUES (7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `bak_srvig_template_styles` VALUES (8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_ucm_base
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_ucm_base`;
CREATE TABLE `bak_srvig_ucm_base` (
  `ucm_id` int unsigned NOT NULL,
  `ucm_item_id` int NOT NULL,
  `ucm_type_id` int NOT NULL,
  `ucm_language_id` int NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_ucm_content
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_ucm_content`;
CREATE TABLE `bak_srvig_ucm_content` (
  `core_content_id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int unsigned NOT NULL DEFAULT '0',
  `core_access` int unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci,
  `core_urls` text COLLATE utf8mb4_unicode_ci,
  `core_hits` int unsigned NOT NULL DEFAULT '0',
  `core_version` int unsigned NOT NULL DEFAULT '1',
  `core_ordering` int NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci,
  `core_catid` int unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- ----------------------------
-- Table structure for bak_srvig_ucm_history
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_ucm_history`;
CREATE TABLE `bak_srvig_ucm_history` (
  `version_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int unsigned NOT NULL,
  `ucm_type_id` int unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int unsigned NOT NULL DEFAULT '0',
  `character_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_update_sites
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_update_sites`;
CREATE TABLE `bak_srvig_update_sites` (
  `update_site_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int DEFAULT '0',
  `last_check_timestamp` bigint DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

-- ----------------------------
-- Records of bak_srvig_update_sites
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_update_sites` VALUES (1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1603140556, '');
INSERT INTO `bak_srvig_update_sites` VALUES (2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1603140612, '');
INSERT INTO `bak_srvig_update_sites` VALUES (3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1603140612, '');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_update_sites_extensions
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_update_sites_extensions`;
CREATE TABLE `bak_srvig_update_sites_extensions` (
  `update_site_id` int NOT NULL DEFAULT '0',
  `extension_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

-- ----------------------------
-- Records of bak_srvig_update_sites_extensions
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_update_sites_extensions` VALUES (1, 700);
INSERT INTO `bak_srvig_update_sites_extensions` VALUES (2, 802);
INSERT INTO `bak_srvig_update_sites_extensions` VALUES (3, 28);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_updates
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_updates`;
CREATE TABLE `bak_srvig_updates` (
  `update_id` int NOT NULL AUTO_INCREMENT,
  `update_site_id` int DEFAULT '0',
  `extension_id` int DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- ----------------------------
-- Records of bak_srvig_updates
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_updates` VALUES (1, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (2, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (3, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (4, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (5, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (6, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (7, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (8, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (9, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (10, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (11, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (12, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.9.19.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.9.11.2', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (19, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.9.22.2', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (24, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (25, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (26, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (27, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (28, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (29, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (30, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (31, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (32, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (33, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (34, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (35, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.9.13.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (36, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (37, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (38, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (39, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (40, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (41, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (42, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (43, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (44, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (45, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (46, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (47, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (48, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (49, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (50, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (51, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (52, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (53, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (54, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (55, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (56, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (57, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (58, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (59, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (60, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (61, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (62, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (63, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (64, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (65, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (66, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.3', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (67, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (68, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (69, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (70, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (71, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (72, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (73, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (74, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (75, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (76, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');
INSERT INTO `bak_srvig_updates` VALUES (77, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', '');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_user_keys
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_user_keys`;
CREATE TABLE `bak_srvig_user_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_user_notes
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_user_notes`;
CREATE TABLE `bak_srvig_user_notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for bak_srvig_user_profiles
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_user_profiles`;
CREATE TABLE `bak_srvig_user_profiles` (
  `user_id` int NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- ----------------------------
-- Table structure for bak_srvig_user_usergroup_map
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_user_usergroup_map`;
CREATE TABLE `bak_srvig_user_usergroup_map` (
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_user_usergroup_map
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_user_usergroup_map` VALUES (76, 8);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_usergroups
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_usergroups`;
CREATE TABLE `bak_srvig_usergroups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_usergroups
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_usergroups` VALUES (1, 0, 1, 18, 'Public');
INSERT INTO `bak_srvig_usergroups` VALUES (2, 1, 8, 15, 'Registered');
INSERT INTO `bak_srvig_usergroups` VALUES (3, 2, 9, 14, 'Author');
INSERT INTO `bak_srvig_usergroups` VALUES (4, 3, 10, 13, 'Editor');
INSERT INTO `bak_srvig_usergroups` VALUES (5, 4, 11, 12, 'Publisher');
INSERT INTO `bak_srvig_usergroups` VALUES (6, 1, 4, 7, 'Manager');
INSERT INTO `bak_srvig_usergroups` VALUES (7, 6, 5, 6, 'Administrator');
INSERT INTO `bak_srvig_usergroups` VALUES (8, 1, 16, 17, 'Super Users');
INSERT INTO `bak_srvig_usergroups` VALUES (9, 1, 2, 3, 'Guest');
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_users
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_users`;
CREATE TABLE `bak_srvig_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint NOT NULL DEFAULT '0',
  `sendEmail` tinyint DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_users
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_users` VALUES (76, 'Super User', 'pye3', 'pye3@wpi.edu', '$2y$10$E/ea/jhdRDonO1KUm9TtLO/CdX0psWDcEbTsnZ4HRaZ6KOKC3sNbC', 0, 1, '2020-10-19 20:49:08', '2020-10-19 20:52:56', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_utf8_conversion
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_utf8_conversion`;
CREATE TABLE `bak_srvig_utf8_conversion` (
  `converted` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_utf8_conversion
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_utf8_conversion` VALUES (5);
COMMIT;

-- ----------------------------
-- Table structure for bak_srvig_viewlevels
-- ----------------------------
DROP TABLE IF EXISTS `bak_srvig_viewlevels`;
CREATE TABLE `bak_srvig_viewlevels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bak_srvig_viewlevels
-- ----------------------------
BEGIN;
INSERT INTO `bak_srvig_viewlevels` VALUES (1, 'Public', 0, '[1]');
INSERT INTO `bak_srvig_viewlevels` VALUES (2, 'Registered', 2, '[6,2,8]');
INSERT INTO `bak_srvig_viewlevels` VALUES (3, 'Special', 3, '[6,3,8]');
INSERT INTO `bak_srvig_viewlevels` VALUES (5, 'Guest', 1, '[9]');
INSERT INTO `bak_srvig_viewlevels` VALUES (6, 'Super Users', 4, '[8]');
COMMIT;

-- ----------------------------
-- Table structure for srvig_action_log_config
-- ----------------------------
DROP TABLE IF EXISTS `srvig_action_log_config`;
CREATE TABLE `srvig_action_log_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_action_log_config
-- ----------------------------
BEGIN;
INSERT INTO `srvig_action_log_config` VALUES (1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA');
INSERT INTO `srvig_action_log_config` VALUES (19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');
COMMIT;

-- ----------------------------
-- Table structure for srvig_action_logs
-- ----------------------------
DROP TABLE IF EXISTS `srvig_action_logs`;
CREATE TABLE `srvig_action_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_action_logs
-- ----------------------------
BEGIN;
INSERT INTO `srvig_action_logs` VALUES (1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-19 20:55:04', 'com_users', 760, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (2, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10003,\"name\":\"plg_installer_webinstaller\",\"extension_name\":\"plg_installer_webinstaller\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 21:04:30', 'com_installer', 760, 10003, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (3, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":10005,\"name\":\"TCPDF\",\"extension_name\":\"TCPDF\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 21:05:27', 'com_installer', 760, 10005, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (4, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10006,\"name\":\"plg_installer_rsform\",\"extension_name\":\"plg_installer_rsform\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 21:05:27', 'com_installer', 760, 10006, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (5, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10007,\"name\":\"System - RSForm! Pro Delete Submissions\",\"extension_name\":\"System - RSForm! Pro Delete Submissions\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 21:05:27', 'com_installer', 760, 10007, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (6, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10004,\"name\":\"com_rsform\",\"extension_name\":\"com_rsform\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 21:05:27', 'com_installer', 760, 10004, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (7, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"760\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 21:38:45', 'com_users', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (8, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"760\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 21:38:58', 'com_users', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (9, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"760\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 21:39:05', 'com_users', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (10, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":760,\"title\":\"Super User\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"userid\":760,\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 21:39:58', 'com_users', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (11, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 21:40:24', 'com_users', 760, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (12, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":760,\"title\":\"Super User\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"userid\":760,\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 21:40:38', 'com_users', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"form-submission\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 21:44:32', 'com_content.article', 760, 1, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (14, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"760\",\"title\":\"pye3\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"table\":\"#__modules\"}', '2020-10-19 21:48:52', 'com_checkin', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (15, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Submit Form Page\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 22:12:09', 'com_menus.item', 760, 108, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (16, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Submit Form Page\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 22:12:42', 'com_menus.item', 760, 108, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (17, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 22:19:10', 'com_config.application', 760, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (18, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"760\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 22:22:27', 'com_users', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (19, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"760\",\"title\":\"pye3\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"table\":\"#__modules\"}', '2020-10-19 22:31:36', 'com_checkin', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (20, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-10-19 22:49:23', 'com_users', 760, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (21, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Submit Form Page\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 22:50:18', 'com_menus.item', 760, 108, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (22, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"760\",\"title\":\"pye3\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"table\":\"#__menu\"}', '2020-10-19 22:50:18', 'com_checkin', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (23, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 22:50:43', 'com_users', 760, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (24, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"760\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 22:51:51', 'com_users', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (25, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 22:52:06', 'com_users', 760, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (26, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 23:14:58', 'com_config.application', 760, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (27, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 23:20:10', 'com_config.application', 760, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (28, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\"}', '2020-10-19 23:30:13', 'com_config.application', 760, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (29, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":\"760\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 23:33:00', 'com_users', 760, 760, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `srvig_action_logs` VALUES (30, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"760\",\"username\":\"pye3\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=760\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-10-19 23:33:11', 'com_users', 760, 0, 'COM_ACTIONLOGS_DISABLED');
COMMIT;

-- ----------------------------
-- Table structure for srvig_action_logs_extensions
-- ----------------------------
DROP TABLE IF EXISTS `srvig_action_logs_extensions`;
CREATE TABLE `srvig_action_logs_extensions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_action_logs_extensions
-- ----------------------------
BEGIN;
INSERT INTO `srvig_action_logs_extensions` VALUES (1, 'com_banners');
INSERT INTO `srvig_action_logs_extensions` VALUES (2, 'com_cache');
INSERT INTO `srvig_action_logs_extensions` VALUES (3, 'com_categories');
INSERT INTO `srvig_action_logs_extensions` VALUES (4, 'com_config');
INSERT INTO `srvig_action_logs_extensions` VALUES (5, 'com_contact');
INSERT INTO `srvig_action_logs_extensions` VALUES (6, 'com_content');
INSERT INTO `srvig_action_logs_extensions` VALUES (7, 'com_installer');
INSERT INTO `srvig_action_logs_extensions` VALUES (8, 'com_media');
INSERT INTO `srvig_action_logs_extensions` VALUES (9, 'com_menus');
INSERT INTO `srvig_action_logs_extensions` VALUES (10, 'com_messages');
INSERT INTO `srvig_action_logs_extensions` VALUES (11, 'com_modules');
INSERT INTO `srvig_action_logs_extensions` VALUES (12, 'com_newsfeeds');
INSERT INTO `srvig_action_logs_extensions` VALUES (13, 'com_plugins');
INSERT INTO `srvig_action_logs_extensions` VALUES (14, 'com_redirect');
INSERT INTO `srvig_action_logs_extensions` VALUES (15, 'com_tags');
INSERT INTO `srvig_action_logs_extensions` VALUES (16, 'com_templates');
INSERT INTO `srvig_action_logs_extensions` VALUES (17, 'com_users');
INSERT INTO `srvig_action_logs_extensions` VALUES (18, 'com_checkin');
COMMIT;

-- ----------------------------
-- Table structure for srvig_action_logs_users
-- ----------------------------
DROP TABLE IF EXISTS `srvig_action_logs_users`;
CREATE TABLE `srvig_action_logs_users` (
  `user_id` int unsigned NOT NULL,
  `notify` tinyint unsigned NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_action_logs_users
-- ----------------------------
BEGIN;
INSERT INTO `srvig_action_logs_users` VALUES (760, 0, '[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]');
COMMIT;

-- ----------------------------
-- Table structure for srvig_assets
-- ----------------------------
DROP TABLE IF EXISTS `srvig_assets`;
CREATE TABLE `srvig_assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_assets
-- ----------------------------
BEGIN;
INSERT INTO `srvig_assets` VALUES (1, 0, 0, 119, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `srvig_assets` VALUES (2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}');
INSERT INTO `srvig_assets` VALUES (3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `srvig_assets` VALUES (4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (6, 1, 11, 12, 1, 'com_config', 'com_config', '{}');
INSERT INTO `srvig_assets` VALUES (7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `srvig_assets` VALUES (8, 1, 17, 22, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}');
INSERT INTO `srvig_assets` VALUES (9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `srvig_assets` VALUES (10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `srvig_assets` VALUES (11, 1, 27, 30, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (12, 1, 31, 32, 1, 'com_login', 'com_login', '{}');
INSERT INTO `srvig_assets` VALUES (13, 1, 33, 34, 1, 'com_mailto', 'com_mailto', '{}');
INSERT INTO `srvig_assets` VALUES (14, 1, 35, 36, 1, 'com_massmail', 'com_massmail', '{}');
INSERT INTO `srvig_assets` VALUES (15, 1, 37, 38, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `srvig_assets` VALUES (16, 1, 39, 42, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (17, 1, 43, 44, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (18, 1, 45, 82, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (19, 1, 83, 86, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `srvig_assets` VALUES (20, 1, 87, 88, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (21, 1, 89, 90, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (22, 1, 91, 92, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `srvig_assets` VALUES (23, 1, 93, 94, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (24, 1, 95, 98, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `srvig_assets` VALUES (26, 1, 99, 100, 1, 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `srvig_assets` VALUES (27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{}');
INSERT INTO `srvig_assets` VALUES (28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}');
INSERT INTO `srvig_assets` VALUES (29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}');
INSERT INTO `srvig_assets` VALUES (30, 19, 84, 85, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}');
INSERT INTO `srvig_assets` VALUES (32, 24, 96, 97, 2, 'com_users.category.7', 'Uncategorised', '{}');
INSERT INTO `srvig_assets` VALUES (33, 1, 101, 102, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `srvig_assets` VALUES (34, 1, 103, 104, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}');
INSERT INTO `srvig_assets` VALUES (35, 1, 105, 106, 1, 'com_tags', 'com_tags', '{}');
INSERT INTO `srvig_assets` VALUES (36, 1, 107, 108, 1, 'com_contenthistory', 'com_contenthistory', '{}');
INSERT INTO `srvig_assets` VALUES (37, 1, 109, 110, 1, 'com_ajax', 'com_ajax', '{}');
INSERT INTO `srvig_assets` VALUES (38, 1, 111, 112, 1, 'com_postinstall', 'com_postinstall', '{}');
INSERT INTO `srvig_assets` VALUES (39, 18, 46, 47, 2, 'com_modules.module.1', 'Main Menu', '{}');
INSERT INTO `srvig_assets` VALUES (40, 18, 48, 49, 2, 'com_modules.module.2', 'Login', '{}');
INSERT INTO `srvig_assets` VALUES (41, 18, 50, 51, 2, 'com_modules.module.3', 'Popular Articles', '{}');
INSERT INTO `srvig_assets` VALUES (42, 18, 52, 53, 2, 'com_modules.module.4', 'Recently Added Articles', '{}');
INSERT INTO `srvig_assets` VALUES (43, 18, 54, 55, 2, 'com_modules.module.8', 'Toolbar', '{}');
INSERT INTO `srvig_assets` VALUES (44, 18, 56, 57, 2, 'com_modules.module.9', 'Quick Icons', '{}');
INSERT INTO `srvig_assets` VALUES (45, 18, 58, 59, 2, 'com_modules.module.10', 'Logged-in Users', '{}');
INSERT INTO `srvig_assets` VALUES (46, 18, 60, 61, 2, 'com_modules.module.12', 'Admin Menu', '{}');
INSERT INTO `srvig_assets` VALUES (47, 18, 62, 63, 2, 'com_modules.module.13', 'Admin Submenu', '{}');
INSERT INTO `srvig_assets` VALUES (48, 18, 64, 65, 2, 'com_modules.module.14', 'User Status', '{}');
INSERT INTO `srvig_assets` VALUES (49, 18, 66, 67, 2, 'com_modules.module.15', 'Title', '{}');
INSERT INTO `srvig_assets` VALUES (50, 18, 68, 69, 2, 'com_modules.module.16', 'Login Form', '{}');
INSERT INTO `srvig_assets` VALUES (51, 18, 70, 71, 2, 'com_modules.module.17', 'Breadcrumbs', '{}');
INSERT INTO `srvig_assets` VALUES (52, 18, 72, 73, 2, 'com_modules.module.79', 'Multilanguage status', '{}');
INSERT INTO `srvig_assets` VALUES (53, 18, 74, 75, 2, 'com_modules.module.86', 'Joomla Version', '{}');
INSERT INTO `srvig_assets` VALUES (54, 16, 40, 41, 2, 'com_menus.menu.1', 'Main Menu', '{}');
INSERT INTO `srvig_assets` VALUES (55, 18, 76, 77, 2, 'com_modules.module.87', 'Sample Data', '{}');
INSERT INTO `srvig_assets` VALUES (56, 1, 113, 114, 1, 'com_privacy', 'com_privacy', '{}');
INSERT INTO `srvig_assets` VALUES (57, 1, 115, 116, 1, 'com_actionlogs', 'com_actionlogs', '{}');
INSERT INTO `srvig_assets` VALUES (58, 18, 78, 79, 2, 'com_modules.module.88', 'Latest Actions', '{}');
INSERT INTO `srvig_assets` VALUES (59, 18, 80, 81, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}');
INSERT INTO `srvig_assets` VALUES (60, 11, 28, 29, 2, 'com_languages.language.2', 'Chinese Simplified (zh-CN)', '{}');
INSERT INTO `srvig_assets` VALUES (61, 1, 117, 118, 1, 'com_rsform', 'com_rsform', '{}');
INSERT INTO `srvig_assets` VALUES (62, 27, 19, 20, 3, 'com_content.article.1', 'form-submission', '{}');
COMMIT;

-- ----------------------------
-- Table structure for srvig_associations
-- ----------------------------
DROP TABLE IF EXISTS `srvig_associations`;
CREATE TABLE `srvig_associations` (
  `id` int NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_banner_clients
-- ----------------------------
DROP TABLE IF EXISTS `srvig_banner_clients`;
CREATE TABLE `srvig_banner_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_banner_tracks
-- ----------------------------
DROP TABLE IF EXISTS `srvig_banner_tracks`;
CREATE TABLE `srvig_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int unsigned NOT NULL,
  `banner_id` int unsigned NOT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_banners
-- ----------------------------
DROP TABLE IF EXISTS `srvig_banners`;
CREATE TABLE `srvig_banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int NOT NULL DEFAULT '0',
  `impmade` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_categories
-- ----------------------------
DROP TABLE IF EXISTS `srvig_categories`;
CREATE TABLE `srvig_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_categories
-- ----------------------------
BEGIN;
INSERT INTO `srvig_categories` VALUES (1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 760, '2020-10-19 20:54:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `srvig_categories` VALUES (2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 760, '2020-10-19 20:54:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `srvig_categories` VALUES (3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 760, '2020-10-19 20:54:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `srvig_categories` VALUES (4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 760, '2020-10-19 20:54:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `srvig_categories` VALUES (5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 760, '2020-10-19 20:54:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `srvig_categories` VALUES (7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 760, '2020-10-19 20:54:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
COMMIT;

-- ----------------------------
-- Table structure for srvig_contact_details
-- ----------------------------
DROP TABLE IF EXISTS `srvig_contact_details`;
CREATE TABLE `srvig_contact_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `catid` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_content
-- ----------------------------
DROP TABLE IF EXISTS `srvig_content`;
CREATE TABLE `srvig_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_content
-- ----------------------------
BEGIN;
INSERT INTO `srvig_content` VALUES (1, 62, 'form-submission', 'form-submission', '<p>Page for Submitting a new form</p>', '', 1, 2, '2020-10-19 21:44:32', 760, '', '2020-10-19 21:44:32', 0, 0, '0000-00-00 00:00:00', '2020-10-19 21:44:32', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');
COMMIT;

-- ----------------------------
-- Table structure for srvig_content_frontpage
-- ----------------------------
DROP TABLE IF EXISTS `srvig_content_frontpage`;
CREATE TABLE `srvig_content_frontpage` (
  `content_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_content_rating
-- ----------------------------
DROP TABLE IF EXISTS `srvig_content_rating`;
CREATE TABLE `srvig_content_rating` (
  `content_id` int NOT NULL DEFAULT '0',
  `rating_sum` int unsigned NOT NULL DEFAULT '0',
  `rating_count` int unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_content_types
-- ----------------------------
DROP TABLE IF EXISTS `srvig_content_types`;
CREATE TABLE `srvig_content_types` (
  `type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_content_types
-- ----------------------------
BEGIN;
INSERT INTO `srvig_content_types` VALUES (1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `srvig_content_types` VALUES (2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `srvig_content_types` VALUES (3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `srvig_content_types` VALUES (4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', '');
INSERT INTO `srvig_content_types` VALUES (5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `srvig_content_types` VALUES (6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `srvig_content_types` VALUES (7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `srvig_content_types` VALUES (8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `srvig_content_types` VALUES (9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `srvig_content_types` VALUES (10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `srvig_content_types` VALUES (11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `srvig_content_types` VALUES (12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `srvig_content_types` VALUES (13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
COMMIT;

-- ----------------------------
-- Table structure for srvig_contentitem_tag_map
-- ----------------------------
DROP TABLE IF EXISTS `srvig_contentitem_tag_map`;
CREATE TABLE `srvig_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- ----------------------------
-- Table structure for srvig_core_log_searches
-- ----------------------------
DROP TABLE IF EXISTS `srvig_core_log_searches`;
CREATE TABLE `srvig_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_extensions
-- ----------------------------
DROP TABLE IF EXISTS `srvig_extensions`;
CREATE TABLE `srvig_extensions` (
  `extension_id` int NOT NULL AUTO_INCREMENT,
  `package_id` int NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int DEFAULT '0',
  `state` int DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_extensions
-- ----------------------------
BEGIN;
INSERT INTO `srvig_extensions` VALUES (1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"zh-CN\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"08411ec2cca25ce323007204d15eaa5e\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `srvig_extensions` VALUES (403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0);
INSERT INTO `srvig_extensions` VALUES (407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `srvig_extensions` VALUES (408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `srvig_extensions` VALUES (409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `srvig_extensions` VALUES (410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.56.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `srvig_extensions` VALUES (412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2020\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `srvig_extensions` VALUES (413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `srvig_extensions` VALUES (415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `srvig_extensions` VALUES (416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `srvig_extensions` VALUES (417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `srvig_extensions` VALUES (424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0);
INSERT INTO `srvig_extensions` VALUES (425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `srvig_extensions` VALUES (426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `srvig_extensions` VALUES (427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `srvig_extensions` VALUES (428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `srvig_extensions` VALUES (429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `srvig_extensions` VALUES (430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `srvig_extensions` VALUES (431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `srvig_extensions` VALUES (433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0);
INSERT INTO `srvig_extensions` VALUES (437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `srvig_extensions` VALUES (441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `srvig_extensions` VALUES (444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `srvig_extensions` VALUES (445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `srvig_extensions` VALUES (447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1603140890}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":2,\"lastrun\":1603140942,\"unique_id\":\"fcc00f7d71bc6d658e897c55ab81a360b12920c2\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `srvig_extensions` VALUES (456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `srvig_extensions` VALUES (457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `srvig_extensions` VALUES (458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1603140890}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"October 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.22\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"October 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.22\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"October 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.22\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"October 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.22.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (10000, 10002, 'ChineseSimplifiedzh-CN', 'language', 'zh-CN', '', 0, 1, 0, 0, '{\"name\":\"Chinese Simplified (zh-CN)\",\"type\":\"language\",\"creationDate\":\"2020\\u5e7410\\u6708\",\"author\":\"Joomla!\\u9010\\u6d6a\\u4e2d\\u6587\\u7f51 www.joomlachina.org.cn \\u5468\\u6c38\\u5efa \",\"copyright\":\"\\u7248\\u6743\\u6240\\u6709 (C) 2005 - 2020 Joomla!\\u9010\\u6d6a\\u4e2d\\u6587\\u7f51 www.joomlachina.org.cn\",\"authorEmail\":\"zhou_yongjian@hotmail.com\",\"authorUrl\":\"www.joomlachina.org.cn\",\"version\":\"3.9.22.2\",\"description\":\"zh-CN \\u7f51\\u7ad9\\u524d\\u53f0\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (10001, 10002, 'ChineseSimplifiedzh-CN', 'language', 'zh-CN', '', 1, 1, 0, 0, '{\"name\":\"Chinese Simplified (zh-CN)\",\"type\":\"language\",\"creationDate\":\"2020\\u5e7410\\u6708\",\"author\":\"Joomla!\\u9010\\u6d6a\\u4e2d\\u6587\\u7f51 www.joomlachina.org.cn \\u5468\\u6c38\\u5efa \",\"copyright\":\"\\u7248\\u6743\\u6240\\u6709 (C) 2005 - 2020 Joomla!\\u9010\\u6d6a\\u4e2d\\u6587\\u7f51 www.joomlachina.org.cn\",\"authorEmail\":\"zhou_yongjian@hotmail.com\",\"authorUrl\":\"www.joomlachina.org.cn\",\"version\":\"3.9.22.2\",\"description\":\"zh-CN \\u7ba1\\u7406\\u540e\\u53f0\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (10002, 0, 'Chinese Simplified (zh-CN) Language Pack', 'package', 'pkg_zh-CN', '', 0, 1, 1, 0, '{\"name\":\"Chinese Simplified (zh-CN) Language Pack\",\"type\":\"package\",\"creationDate\":\"2020\\u5e7410\\u6708\",\"author\":\"Joomla!\\u9010\\u6d6a\\u4e2d\\u6587\\u7f51 www.joomlachina.org.cn \\u5468\\u6c38\\u5efa\",\"copyright\":\"\\u7248\\u6743\\u6240\\u6709 (C) 2005 - 2020 Joomla!\\u9010\\u6d6a\\u4e2d\\u6587\\u7f51 www.joomlachina.org.cn.\",\"authorEmail\":\"zhou_yongjian@hotmail.com\",\"authorUrl\":\"www.joomlachina.org.cn\",\"version\":\"3.9.22.2\",\"description\":\"Joomla!\\u7b80\\u4f53\\u4e2d\\u6587(zh-CN) \\u8bed\\u8a00\",\"group\":\"\",\"filename\":\"pkg_zh-CN\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (10003, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"28 April 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2013 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.1.2\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"webinstaller\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (10004, 0, 'com_rsform', 'component', 'com_rsform', '', 1, 1, 0, 0, '{\"name\":\"com_rsform\",\"type\":\"component\",\"creationDate\":\"July 2019\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2020 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"2.3.14\",\"description\":\"COM_RSFORM_INSTALL_DESC\",\"group\":\"\",\"filename\":\"rsform\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (10005, 0, 'TCPDF', 'library', 'tcpdf', '', 0, 1, 1, 0, '{\"name\":\"TCPDF\",\"type\":\"library\",\"creationDate\":\"28 January 2011\",\"author\":\"Nicola Asuni\",\"copyright\":\"http:\\/\\/www.tcpdf.org\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.tcpdf.org\",\"version\":\"2.5.0\",\"description\":\"Class for generating PDF files on-the-fly without requiring external extensions.\",\"group\":\"\",\"filename\":\"tcpdf\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (10006, 0, 'plg_installer_rsform', 'plugin', 'rsform', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_rsform\",\"type\":\"plugin\",\"creationDate\":\"July 2015\",\"author\":\"RSJoomla!\",\"copyright\":\"(c) 2015 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"https:\\/\\/www.rsjoomla.com\",\"version\":\"1.0.0\",\"description\":\"PLG_INSTALLER_RSFORM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"rsform\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `srvig_extensions` VALUES (10007, 0, 'System - RSForm! Pro Delete Submissions', 'plugin', 'rsformdeletesubmissions', 'system', 0, 1, 1, 0, '{\"name\":\"System - RSForm! Pro Delete Submissions\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2019 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.0.0\",\"description\":\"PLG_SYSTEM_RSFORMDELETESUBMISSIONS_DESC\",\"group\":\"\",\"filename\":\"rsformdeletesubmissions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for srvig_fields
-- ----------------------------
DROP TABLE IF EXISTS `srvig_fields`;
CREATE TABLE `srvig_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_fields_categories
-- ----------------------------
DROP TABLE IF EXISTS `srvig_fields_categories`;
CREATE TABLE `srvig_fields_categories` (
  `field_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_fields_groups
-- ----------------------------
DROP TABLE IF EXISTS `srvig_fields_groups`;
CREATE TABLE `srvig_fields_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_fields_values
-- ----------------------------
DROP TABLE IF EXISTS `srvig_fields_values`;
CREATE TABLE `srvig_fields_values` (
  `field_id` int unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_finder_filters
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_filters`;
CREATE TABLE `srvig_finder_filters` (
  `filter_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL,
  `created_by_alias` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_general_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links`;
CREATE TABLE `srvig_finder_links` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(400) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int DEFAULT '1',
  `access` int DEFAULT '0',
  `language` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms0
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms0`;
CREATE TABLE `srvig_finder_links_terms0` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms1
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms1`;
CREATE TABLE `srvig_finder_links_terms1` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms2
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms2`;
CREATE TABLE `srvig_finder_links_terms2` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms3
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms3`;
CREATE TABLE `srvig_finder_links_terms3` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms4
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms4`;
CREATE TABLE `srvig_finder_links_terms4` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms5
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms5`;
CREATE TABLE `srvig_finder_links_terms5` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms6
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms6`;
CREATE TABLE `srvig_finder_links_terms6` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms7
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms7`;
CREATE TABLE `srvig_finder_links_terms7` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms8
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms8`;
CREATE TABLE `srvig_finder_links_terms8` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_terms9
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_terms9`;
CREATE TABLE `srvig_finder_links_terms9` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_termsa
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_termsa`;
CREATE TABLE `srvig_finder_links_termsa` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_termsb
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_termsb`;
CREATE TABLE `srvig_finder_links_termsb` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_termsc
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_termsc`;
CREATE TABLE `srvig_finder_links_termsc` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_termsd
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_termsd`;
CREATE TABLE `srvig_finder_links_termsd` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_termse
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_termse`;
CREATE TABLE `srvig_finder_links_termse` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_links_termsf
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_links_termsf`;
CREATE TABLE `srvig_finder_links_termsf` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_taxonomy`;
CREATE TABLE `srvig_finder_taxonomy` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `state` tinyint unsigned NOT NULL DEFAULT '1',
  `access` tinyint unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of srvig_finder_taxonomy
-- ----------------------------
BEGIN;
INSERT INTO `srvig_finder_taxonomy` VALUES (1, 0, 'ROOT', 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for srvig_finder_taxonomy_map
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_taxonomy_map`;
CREATE TABLE `srvig_finder_taxonomy_map` (
  `link_id` int unsigned NOT NULL,
  `node_id` int unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_terms
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_terms`;
CREATE TABLE `srvig_finder_terms` (
  `term_id` int unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `stem` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `links` int NOT NULL DEFAULT '0',
  `language` char(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_terms_common
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_terms_common`;
CREATE TABLE `srvig_finder_terms_common` (
  `term` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `language` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of srvig_finder_terms_common
-- ----------------------------
BEGIN;
INSERT INTO `srvig_finder_terms_common` VALUES ('a', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('about', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('after', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('ago', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('all', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('am', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('an', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('and', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('any', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('are', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('aren\'t', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('as', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('at', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('be', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('but', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('by', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('for', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('from', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('get', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('go', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('how', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('if', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('in', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('into', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('is', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('isn\'t', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('it', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('its', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('me', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('more', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('most', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('must', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('my', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('new', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('no', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('none', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('not', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('nothing', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('of', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('off', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('often', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('old', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('on', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('onc', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('once', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('only', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('or', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('other', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('our', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('ours', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('out', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('over', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('page', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('she', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('should', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('small', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('so', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('some', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('than', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('thank', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('that', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('the', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('their', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('theirs', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('them', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('then', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('there', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('these', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('they', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('this', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('those', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('thus', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('time', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('times', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('to', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('too', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('true', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('under', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('until', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('up', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('upon', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('use', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('user', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('users', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('version', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('very', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('via', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('want', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('was', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('way', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('were', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('what', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('when', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('where', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('which', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('who', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('whom', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('whose', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('why', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('wide', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('will', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('with', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('within', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('without', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('would', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('yes', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('yet', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('you', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('your', 'en');
INSERT INTO `srvig_finder_terms_common` VALUES ('yours', 'en');
COMMIT;

-- ----------------------------
-- Table structure for srvig_finder_tokens
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_tokens`;
CREATE TABLE `srvig_finder_tokens` (
  `term` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `stem` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `language` char(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_tokens_aggregate
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_tokens_aggregate`;
CREATE TABLE `srvig_finder_tokens_aggregate` (
  `term_id` int unsigned NOT NULL,
  `map_suffix` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `term` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `stem` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_finder_types
-- ----------------------------
DROP TABLE IF EXISTS `srvig_finder_types`;
CREATE TABLE `srvig_finder_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for srvig_languages
-- ----------------------------
DROP TABLE IF EXISTS `srvig_languages`;
CREATE TABLE `srvig_languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_languages
-- ----------------------------
BEGIN;
INSERT INTO `srvig_languages` VALUES (1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2);
INSERT INTO `srvig_languages` VALUES (2, 60, 'zh-CN', 'Chinese Simplified (zh-CN)', '简体中文(中国)', 'zh', 'zh_cn', '', '', '', '', 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for srvig_menu
-- ----------------------------
DROP TABLE IF EXISTS `srvig_menu`;
CREATE TABLE `srvig_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_menu
-- ----------------------------
BEGIN;
INSERT INTO `srvig_menu` VALUES (1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 57, 0, '*', 0);
INSERT INTO `srvig_menu` VALUES (2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1);
INSERT INTO `srvig_menu` VALUES (21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1);
INSERT INTO `srvig_menu` VALUES (101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0);
INSERT INTO `srvig_menu` VALUES (102, 'main', 'RSFormPro', 'rsformpro', '', 'rsformpro', 'index.php?option=com_rsform', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 43, 54, 0, '', 1);
INSERT INTO `srvig_menu` VALUES (103, 'main', 'COM_RSFORM_MANAGE_FORMS', 'com-rsform-manage-forms', '', 'rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&view=forms', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 44, 45, 0, '', 1);
INSERT INTO `srvig_menu` VALUES (104, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'com-rsform-manage-submissions', '', 'rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&view=submissions', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 46, 47, 0, '', 1);
INSERT INTO `srvig_menu` VALUES (105, 'main', 'COM_RSFORM_MANAGE_DIRECTORY_SUBMISSIONS', 'com-rsform-manage-directory-submissions', '', 'rsformpro/com-rsform-manage-directory-submissions', 'index.php?option=com_rsform&view=directory', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 48, 49, 0, '', 1);
INSERT INTO `srvig_menu` VALUES (106, 'main', 'COM_RSFORM_CONFIGURATION', 'com-rsform-configuration', '', 'rsformpro/com-rsform-configuration', 'index.php?option=com_rsform&view=configuration', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1);
INSERT INTO `srvig_menu` VALUES (107, 'main', 'COM_RSFORM_BACKUP_RESTORE', 'com-rsform-backup-restore', '', 'rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&view=backuprestore', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 52, 53, 0, '', 1);
INSERT INTO `srvig_menu` VALUES (108, 'mainmenu', 'Submit Form Page', 'submit-form-page', '', 'submit-form-page', 'index.php?option=com_rsform&view=rsform&formId=6', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 55, 56, 0, '*', 0);
COMMIT;

-- ----------------------------
-- Table structure for srvig_menu_types
-- ----------------------------
DROP TABLE IF EXISTS `srvig_menu_types`;
CREATE TABLE `srvig_menu_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_menu_types
-- ----------------------------
BEGIN;
INSERT INTO `srvig_menu_types` VALUES (1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);
COMMIT;

-- ----------------------------
-- Table structure for srvig_messages
-- ----------------------------
DROP TABLE IF EXISTS `srvig_messages`;
CREATE TABLE `srvig_messages` (
  `message_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int unsigned NOT NULL DEFAULT '0',
  `user_id_to` int unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_messages_cfg
-- ----------------------------
DROP TABLE IF EXISTS `srvig_messages_cfg`;
CREATE TABLE `srvig_messages_cfg` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_modules
-- ----------------------------
DROP TABLE IF EXISTS `srvig_modules`;
CREATE TABLE `srvig_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_modules
-- ----------------------------
BEGIN;
INSERT INTO `srvig_modules` VALUES (1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*');
INSERT INTO `srvig_modules` VALUES (2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*');
INSERT INTO `srvig_modules` VALUES (3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `srvig_modules` VALUES (4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `srvig_modules` VALUES (8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*');
INSERT INTO `srvig_modules` VALUES (9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*');
INSERT INTO `srvig_modules` VALUES (10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `srvig_modules` VALUES (12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `srvig_modules` VALUES (13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*');
INSERT INTO `srvig_modules` VALUES (14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*');
INSERT INTO `srvig_modules` VALUES (15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*');
INSERT INTO `srvig_modules` VALUES (16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*');
INSERT INTO `srvig_modules` VALUES (17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*');
INSERT INTO `srvig_modules` VALUES (79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `srvig_modules` VALUES (86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*');
INSERT INTO `srvig_modules` VALUES (87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*');
INSERT INTO `srvig_modules` VALUES (88, 58, 'Latest Actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{}', 1, '*');
INSERT INTO `srvig_modules` VALUES (89, 59, 'Privacy Dashboard', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_privacy_dashboard', 6, 1, '{}', 1, '*');
COMMIT;

-- ----------------------------
-- Table structure for srvig_modules_menu
-- ----------------------------
DROP TABLE IF EXISTS `srvig_modules_menu`;
CREATE TABLE `srvig_modules_menu` (
  `moduleid` int NOT NULL DEFAULT '0',
  `menuid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_modules_menu
-- ----------------------------
BEGIN;
INSERT INTO `srvig_modules_menu` VALUES (1, 0);
INSERT INTO `srvig_modules_menu` VALUES (2, 0);
INSERT INTO `srvig_modules_menu` VALUES (3, 0);
INSERT INTO `srvig_modules_menu` VALUES (4, 0);
INSERT INTO `srvig_modules_menu` VALUES (6, 0);
INSERT INTO `srvig_modules_menu` VALUES (7, 0);
INSERT INTO `srvig_modules_menu` VALUES (8, 0);
INSERT INTO `srvig_modules_menu` VALUES (9, 0);
INSERT INTO `srvig_modules_menu` VALUES (10, 0);
INSERT INTO `srvig_modules_menu` VALUES (12, 0);
INSERT INTO `srvig_modules_menu` VALUES (13, 0);
INSERT INTO `srvig_modules_menu` VALUES (14, 0);
INSERT INTO `srvig_modules_menu` VALUES (15, 0);
INSERT INTO `srvig_modules_menu` VALUES (16, 0);
INSERT INTO `srvig_modules_menu` VALUES (17, 0);
INSERT INTO `srvig_modules_menu` VALUES (79, 0);
INSERT INTO `srvig_modules_menu` VALUES (86, 0);
INSERT INTO `srvig_modules_menu` VALUES (87, 0);
INSERT INTO `srvig_modules_menu` VALUES (88, 0);
INSERT INTO `srvig_modules_menu` VALUES (89, 0);
COMMIT;

-- ----------------------------
-- Table structure for srvig_newsfeeds
-- ----------------------------
DROP TABLE IF EXISTS `srvig_newsfeeds`;
CREATE TABLE `srvig_newsfeeds` (
  `catid` int NOT NULL DEFAULT '0',
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int unsigned NOT NULL DEFAULT '1',
  `cache_time` int unsigned NOT NULL DEFAULT '3600',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int NOT NULL DEFAULT '0',
  `rtl` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_overrider
-- ----------------------------
DROP TABLE IF EXISTS `srvig_overrider`;
CREATE TABLE `srvig_overrider` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_postinstall_messages
-- ----------------------------
DROP TABLE IF EXISTS `srvig_postinstall_messages`;
CREATE TABLE `srvig_postinstall_messages` (
  `postinstall_message_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_postinstall_messages
-- ----------------------------
BEGIN;
INSERT INTO `srvig_postinstall_messages` VALUES (1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1);
INSERT INTO `srvig_postinstall_messages` VALUES (2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);
INSERT INTO `srvig_postinstall_messages` VALUES (3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);
INSERT INTO `srvig_postinstall_messages` VALUES (4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);
INSERT INTO `srvig_postinstall_messages` VALUES (5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1);
INSERT INTO `srvig_postinstall_messages` VALUES (6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);
INSERT INTO `srvig_postinstall_messages` VALUES (7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);
INSERT INTO `srvig_postinstall_messages` VALUES (8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1);
INSERT INTO `srvig_postinstall_messages` VALUES (9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1);
COMMIT;

-- ----------------------------
-- Table structure for srvig_privacy_consents
-- ----------------------------
DROP TABLE IF EXISTS `srvig_privacy_consents`;
CREATE TABLE `srvig_privacy_consents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_privacy_requests
-- ----------------------------
DROP TABLE IF EXISTS `srvig_privacy_requests`;
CREATE TABLE `srvig_privacy_requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_redirect_links
-- ----------------------------
DROP TABLE IF EXISTS `srvig_redirect_links`;
CREATE TABLE `srvig_redirect_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_rsform_calculations
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_calculations`;
CREATE TABLE `srvig_rsform_calculations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formId` int NOT NULL,
  `total` varchar(255) NOT NULL,
  `expression` text NOT NULL,
  `ordering` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formId` (`formId`),
  KEY `ordering` (`ordering`),
  KEY `formId_2` (`formId`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for srvig_rsform_component_type_fields
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_component_type_fields`;
CREATE TABLE `srvig_rsform_component_type_fields` (
  `ComponentTypeId` int NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` varchar(32) NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Properties` text NOT NULL,
  `Ordering` int NOT NULL DEFAULT '0',
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_component_type_fields
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'REQUIRED', 'select', 'NO\r\nYES', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'SIZE', 'textbox', '20', 'numeric', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'MAXSIZE', 'textbox', '', 'numeric', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSFormProHelper::getValidationRules();\r\n//</code>', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'VALIDATIONMULTIPLE', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getValidationRules(false, true);\r\n//</code>', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'DEFAULTVALUE', 'textarea', '', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'PLACEHOLDER', 'textbox', '', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'DESCRIPTION', 'textarea', '', '', 11);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'INPUTTYPE', 'select', 'text\r\nemail\r\ntel\r\nnumber\r\nrange\r\nurl', '{\"case\":{\"number\":{\"show\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"],\"hide\":[\"MAXSIZE\"]},\"range\":{\"show\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"],\"hide\":[\"MAXSIZE\"]},\"text\":{\"show\":[\"MAXSIZE\"],\"hide\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"]},\"email\":{\"show\":[\"MAXSIZE\"],\"hide\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"]},\"tel\":{\"show\":[\"MAXSIZE\"],\"hide\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"]},\"url\":{\"show\":[\"MAXSIZE\"],\"hide\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"]}}}', 0);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'ATTRMIN', 'textbox', '', 'float', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'ATTRMAX', 'textbox', '', 'float', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'ATTRSTEP', 'textbox', '1', 'float', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'COMPONENTTYPE', 'hidden', '1', '', 15);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (1, 'VALIDATIONEXTRA', 'textbox', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'REQUIRED', 'select', 'NO\r\nYES', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'COLS', 'textbox', '50', 'numeric', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'ROWS', 'textbox', '5', 'numeric', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSFormProHelper::getValidationRules();\r\n//</code>', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'VALIDATIONMULTIPLE', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getValidationRules(false, true);\r\n//</code>', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'DEFAULTVALUE', 'textarea', '', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'DESCRIPTION', 'textarea', '', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'COMPONENTTYPE', 'hidden', '2', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'PLACEHOLDER', 'textbox', '', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'WYSIWYG', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"WYSIWYGBUTTONS\"],\"hide\":[\"MAXSIZE\",\"SHOW_CHAR_COUNT\"]},\"NO\":{\"show\":[\"MAXSIZE\",\"SHOW_CHAR_COUNT\"],\"hide\":[\"WYSIWYGBUTTONS\"]}}}', 11);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'WYSIWYGBUTTONS', 'select', 'NO\r\nYES', '', 12);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'MAXSIZE', 'textbox', '', 'numeric', 13);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'SHOW_CHAR_COUNT', 'select', 'NO\r\nYES', '', 14);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (2, 'VALIDATIONEXTRA', 'textbox', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'SIZE', 'textbox', '', 'numeric', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'MULTIPLE', 'select', 'NO\r\nYES', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'ITEMS', 'textarea', '', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'DESCRIPTION', 'textarea', '', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'COMPONENTTYPE', 'hidden', '3', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'ITEMS', 'textarea', '', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL\r\nVERTICAL2COLUMNS\r\nVERTICAL3COlUMNS\r\nVERTICAL4COLUMNS\r\nVERTICAL6COLUMNS', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'MAXSELECTIONS', 'textbox', '0', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'DESCRIPTION', 'textarea', '', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'COMPONENTTYPE', 'hidden', '4', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (5, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (5, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (5, 'ITEMS', 'textarea', '', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (5, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL\r\nVERTICAL2COLUMNS\r\nVERTICAL3COlUMNS\r\nVERTICAL4COLUMNS\r\nVERTICAL6COLUMNS', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (5, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (5, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (5, 'DESCRIPTION', 'textarea', '', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (5, 'COMPONENTTYPE', 'hidden', '5', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'REQUIRED', 'select', 'NO\r\nYES', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'VALIDATIONCALENDAR', 'select', '//<code>\r\nreturn RSFormProHelper::getOtherCalendars(6);\r\n//</code>', '{\"case\":{\"\":{\"show\":[],\"hide\":[\"VALIDATIONCALENDAROFFSET\"]}},\"indexcase\":{\"min\":{\"show\":[\"VALIDATIONCALENDAROFFSET\"],\"hide\":[]},\"max\":{\"show\":[\"VALIDATIONCALENDAROFFSET\"],\"hide\":[]}}}', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'VALIDATIONCALENDAROFFSET', 'textbox', '1', 'numeric', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'VALIDATIONDATE', 'select', 'YES\r\nNO', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'DATEFORMAT', 'textbox', 'd-m-Y', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', '{\"case\":{\"POPUP\":{\"show\":[\"READONLY\", \"POPUPLABEL\"],\"hide\":[]},\"FLAT\":{\"show\":[],\"hide\":[\"READONLY\", \"POPUPLABEL\"]}}}', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'DESCRIPTION', 'textarea', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'COMPONENTTYPE', 'hidden', '6', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'READONLY', 'select', 'NO\r\nYES', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'POPUPLABEL', 'textbox', '...', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'MINDATE', 'textarea', '', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'MAXDATE', 'textarea', '', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (6, 'DEFAULTVALUE', 'textarea', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (7, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (7, 'CAPTION', 'textbox', '', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (7, 'LABEL', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (7, 'RESET', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"RESETLABEL\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"RESETLABEL\"]}}}', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (7, 'RESETLABEL', 'textbox', '', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (7, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (7, 'DESCRIPTION', 'textarea', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (7, 'COMPONENTTYPE', 'hidden', '7', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (7, 'BUTTONTYPE', 'select', 'TYPEBUTTON\nTYPEINPUT', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'LENGTH', 'textbox', '4', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'TEXTCOLOR', 'textbox', '#000000', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'TYPE', 'select', 'ALPHA\r\nNUMERIC\r\nALPHANUMERIC', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'DESCRIPTION', 'textarea', '', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'COMPONENTTYPE', 'hidden', '8', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'FLOW', 'select', 'VERTICAL\r\nHORIZONTAL', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'SHOWREFRESH', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"REFRESHTEXT\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"REFRESHTEXT\"]}}}', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'REFRESHTEXT', 'textbox', 'REFRESH', '', 11);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'SIZE', 'textbox', '15', 'numeric', 12);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (8, 'IMAGETYPE', 'select', 'FREETYPE\r\nNOFREETYPE\r\nINVISIBLE', '{\"case\":{\"FREETYPE\":{\"show\":[\"BACKGROUNDCOLOR\",\"TEXTCOLOR\",\"TYPE\",\"FLOW\",\"LENGTH\",\"SHOWREFRESH\",\"REFRESHTEXT\",\"SIZE\"],\"hide\":[]},\"NOFREETYPE\":{\"show\":[\"BACKGROUNDCOLOR\",\"TEXTCOLOR\",\"TYPE\",\"FLOW\",\"LENGTH\",\"SHOWREFRESH\",\"REFRESHTEXT\",\"SIZE\"],\"hide\":[]},\"INVISIBLE\":{\"show\":[],\"hide\":[\"BACKGROUNDCOLOR\",\"TEXTCOLOR\",\"TYPE\",\"FLOW\",\"LENGTH\",\"SHOWREFRESH\",\"REFRESHTEXT\",\"SIZE\"]}}}', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'REQUIRED', 'select', 'NO\r\nYES', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'FILESIZE', 'textbox', '', 'numeric', 0);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'DESTINATION', 'textbox', '//<code>\r\nreturn \'components/com_rsform/uploads/\';\r\n//</code>', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'MULTIPLE', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"FILESSEPARATOR\",\"MINFILES\",\"MAXFILES\",\"MULTIPLEPLUS\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"FILESSEPARATOR\",\"MINFILES\",\"MAXFILES\",\"MULTIPLEPLUS\"]}}}', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'MULTIPLEPLUS', 'select', 'NO\r\nYES', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'MINFILES', 'textbox', '1', 'numeric', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'MAXFILES', 'textbox', '0', 'numeric', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'FILESSEPARATOR', 'textbox', '<br />', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'ACCEPTEDFILES', 'textarea', '', 'oneperline', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'ACCEPTEDFILESIMAGES', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"THUMBSIZE\",\"THUMBQUALITY\",\"SHOWIMAGEPREVIEW\"],\"hide\":[\"ACCEPTEDFILES\"]},\"NO\":{\"show\":[\"ACCEPTEDFILES\"],\"hide\":[\"THUMBSIZE\",\"THUMBQUALITY\",\"SHOWIMAGEPREVIEW\"]}}}', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'SHOWIMAGEPREVIEW', 'select', 'NO\r\nYES', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'THUMBSIZE', 'textbox', '220', 'numeric', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'THUMBQUALITY', 'textbox', '75', 'numeric', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'SANITIZEFILENAME', 'select', 'NO\r\nYES', '', 101);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'DESCRIPTION', 'textarea', '', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'COMPONENTTYPE', 'hidden', '9', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'PREFIX', 'textarea', '', '', 102);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (9, 'EMAILATTACH', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getEmailAttachOptions();\r\n//</code>', '', 103);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (10, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (10, 'TEXT', 'textarea', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (10, 'COMPONENTTYPE', 'hidden', '10', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (11, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (11, 'DEFAULTVALUE', 'textarea', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (11, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (11, 'COMPONENTTYPE', 'hidden', '11', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'CAPTION', 'textbox', '', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'LABEL', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'RESET', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"RESETLABEL\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"RESETLABEL\"]}}}', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'RESETLABEL', 'textbox', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'COMPONENTTYPE', 'hidden', '13', '', 12);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'BUTTONTYPE', 'select', 'TYPEBUTTON\nTYPEINPUT', '', 11);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'PREVBUTTON', 'textbox', '< Prev', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'DISPLAYPROGRESS', 'select', 'NO\r\nAUTO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"DISPLAYPROGRESSMSG\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"DISPLAYPROGRESSMSG\"]}, \"AUTO\":{\"show\":[],\"hide\":[\"DISPLAYPROGRESSMSG\"]}}}', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (13, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'REQUIRED', 'select', 'NO\r\nYES', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'SIZE', 'textbox', '', 'numeric', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'MAXSIZE', 'textbox', '', 'numeric', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'DEFAULTVALUE', 'textarea', '', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'COMPONENTTYPE', 'hidden', '14', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'DESCRIPTION', 'textarea', '', '', 100);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSFormProHelper::getValidationRules();\r\n//</code>', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'VALIDATIONMULTIPLE', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getValidationRules(false, true);\r\n//</code>', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'PLACEHOLDER', 'textbox', '', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (14, 'VALIDATIONEXTRA', 'textbox', '', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (15, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (15, 'LENGTH', 'textbox', '8', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (15, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (15, 'COMPONENTTYPE', 'hidden', '15', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (15, 'CHARACTERS', 'select', 'ALPHANUMERIC\r\nALPHA\r\nNUMERIC', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (15, 'TICKETTYPE', 'select', 'RANDOM\r\nSEQUENTIAL', '{\"case\":{\"RANDOM\":{\"show\":[\"CHARACTERS\", \"LENGTH\"],\"hide\":[\"LEADINGZEROLENGTH\"]},\"SEQUENTIAL\":{\"show\":[\"LEADINGZEROLENGTH\"],\"hide\":[\"CHARACTERS\", \"LENGTH\"]}}}', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (15, 'LEADINGZEROLENGTH', 'select', '0\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (41, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (41, 'COMPONENTTYPE', 'hidden', '41', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (41, 'NEXTBUTTON', 'textbox', 'Next >', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (41, 'PREVBUTTON', 'textbox', '< Prev', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (41, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (41, 'VALIDATENEXTPAGE', 'select', 'NO\r\nYES', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (41, 'DISPLAYPROGRESS', 'select', 'NO\r\nAUTO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"DISPLAYPROGRESSMSG\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"DISPLAYPROGRESSMSG\"]}, \"AUTO\":{\"show\":[],\"hide\":[\"DISPLAYPROGRESSMSG\"]}}}', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (41, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (41, 'BUTTONTYPE', 'select', 'TYPEBUTTON\nTYPEINPUT', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'VALIDATION_ALLOW_INCORRECT_DATE', 'select', 'NO\r\nYES', '', 0);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'VALIDATIONRULE_DATE', 'select', '//<code>\r\nreturn RSFormProHelper::getDateValidationRules();\r\n//</code>', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'DESCRIPTION', 'textarea', '', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'REQUIRED', 'select', 'NO\r\nYES', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'DATEORDERING', 'select', 'DMY\r\nMDY\r\nYMD\r\nYDM\r\nMYD\r\nDYM', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'DATESEPARATOR', 'textbox', ' / ', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'SHOWDAY', 'select', 'YES\r\nNO', '{\"case\":{\"YES\":{\"show\":[\"SHOWDAYPLEASE\" ,\"SHOWDAYTYPE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"SHOWDAYPLEASE\" ,\"SHOWDAYTYPE\"]}}}', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'SHOWDAYPLEASE', 'textbox', 'Day', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'SHOWDAYTYPE', 'select', 'DAY_TYPE_01\r\nDAY_TYPE_1', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'SHOWMONTH', 'select', 'YES\r\nNO', '{\"case\":{\"YES\":{\"show\":[\"SHOWMONTHPLEASE\" ,\"SHOWMONTHTYPE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"SHOWMONTHPLEASE\" ,\"SHOWMONTHTYPE\"]}}}', 11);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'SHOWMONTHPLEASE', 'textbox', 'Month', '', 12);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'SHOWMONTHTYPE', 'select', 'MONTH_TYPE_01\r\nMONTH_TYPE_1\r\nMONTH_TYPE_TEXT_SHORT\r\nMONTH_TYPE_TEXT_LONG', '', 13);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'SHOWYEAR', 'select', 'YES\r\nNO', '{\"case\":{\"YES\":{\"show\":[\"SHOWYEARPLEASE\" ,\"STARTYEAR\", \"ENDYEAR\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"SHOWYEARPLEASE\" ,\"STARTYEAR\", \"ENDYEAR\"]}}}', 14);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'SHOWYEARPLEASE', 'textbox', 'Year', '', 15);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'STARTYEAR', 'textbox', '1960', '', 16);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'ENDYEAR', 'textbox', '2020', '', 17);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'STORELEADINGZERO', 'select', 'NO\r\nYES', '', 18);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 18);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (211, 'COMPONENTTYPE', 'hidden', '211', '', 19);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'NAME', 'textbox', '', '', 0);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'CAPTION', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'DESCRIPTION', 'textarea', '', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'DEFAULTVALUE', 'textarea', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'MAPWIDTH', 'textbox', '450px', '', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'MAPHEIGHT', 'textbox', '300px', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'REQUESTLOCATION', 'select', 'NO\r\nYES', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'MAPCENTER', 'textbox', '39.5500507,-105.7820674', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'COMPONENTTYPE', 'hidden', '212', '', 12);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'SIZE', 'textbox', '20', 'numeric', 13);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'MAPZOOM', 'textbox', '10', 'numeric', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'MAPRESULT', 'select', 'ADDRESS\r\nCOORDINATES', '', 12);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'MAPTYPE', 'select', 'ROADMAP\r\nSATELLITE\r\nHYBRID\r\nTERRAIN', '', 13);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (212, 'GEOLOCATION', 'select', 'NO\r\nYES', '', 11);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'DEFAULTVALUE', 'textarea', '', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'DESCRIPTION', 'textarea', '', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'REQUIRED', 'select', 'NO\r\nYES', '', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'VALIDATIONCALENDAR', 'select', '//<code>\nreturn RSFormProHelper::getOtherCalendars(411);\n//</code>', '{\"case\":{\"\":{\"show\":[],\"hide\":[\"VALIDATIONCALENDAROFFSET\"]}},\"indexcase\":{\"min\":{\"show\":[\"VALIDATIONCALENDAROFFSET\"],\"hide\":[]},\"max\":{\"show\":[\"VALIDATIONCALENDAROFFSET\"],\"hide\":[]}}}', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'VALIDATIONCALENDAROFFSET', 'textbox', '1', 'numeric', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'VALIDATIONDATE', 'select', 'YES\r\nNO', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'DATEFORMAT', 'textbox', 'd-m-Y H:i', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'MINDATEJQ', 'textarea', '', '', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'MAXDATEJQ', 'textarea', '', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'ALLOWDATERE', 'textbox', '', '', 11);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'ALLOWDATES', 'textarea', '', '', 12);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'TIMEPICKER', 'select', 'YES\r\nNO', '{\"case\":{\"YES\":{\"show\":[\"TIMEPICKERFORMAT\", \"TIMESTEP\",\"MINTIMEJQ\", \"MAXTIMEJQ\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"TIMEPICKERFORMAT\", \"TIMESTEP\",\"MINTIMEJQ\", \"MAXTIMEJQ\"]}}}', 13);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'TIMEPICKERFORMAT', 'textbox', 'H:i', '', 14);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'TIMESTEP', 'textbox', '30', '', 15);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'MINTIMEJQ', 'textarea', '', '', 16);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'MAXTIMEJQ', 'textarea', '', '', 17);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 18);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', '{\"case\":{\"POPUP\":{\"show\":[\"READONLY\", \"POPUPLABEL\"],\"hide\":[]},\"FLAT\":{\"show\":[],\"hide\":[\"READONLY\", \"POPUPLABEL\"]}}}', 19);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'READONLY', 'select', 'NO\r\nYES', '', 20);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'POPUPLABEL', 'textbox', '...', '', 21);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'THEME', 'select', 'DEFAULT\r\nDARK', '', 22);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (411, 'COMPONENTTYPE', 'hidden', '411', '', 200);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'NAME', 'textbox', '', '', 1);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'DEFAULTVALUE', 'textarea', '', '', 3);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'DESCRIPTION', 'textarea', '', '', 4);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 5);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 6);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'SLIDERTYPE', 'select', 'SINGLE\r\nDOUBLE', '{\"case\":{\"SINGLE\":{\"show\":[],\"hide\":[\"FROMFIXED\",\"TOFIXED\"]},\"DOUBLE\":{\"show\":[\"FROMFIXED\",\"TOFIXED\"],\"hide\":[]}}}', 7);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'SKIN', 'select', 'FLAT\r\nHTML5\r\nMODERN\r\nNICE\r\nSIMPLE', '', 8);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'USEVALUES', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALUES\"],\"hide\":[\"MINVALUE\", \"MAXVALUE\", \"GRIDSNAP\", \"GRIDSTEP\"]},\"NO\":{\"show\":[\"MINVALUE\", \"MAXVALUE\", \"GRIDSNAP\", \"GRIDSTEP\"],\"hide\":[\"VALUES\"]}}}', 9);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'VALUES', 'textarea', '', '', 10);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'MINVALUE', 'textbox', '0', 'numeric', 11);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'MAXVALUE', 'textbox', '100', 'numeric', 12);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'GRID', 'select', 'YES\r\nNO', '', 13);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'GRIDSNAP', 'select', 'NO\r\nYES', '', 14);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'GRIDSTEP', 'textbox', '10', 'numeric', 15);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'FORCEEDGES', 'select', 'YES\r\nNO', '', 16);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'FROMFIXED', 'select', 'NO\r\nYES', '', 17);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'TOFIXED', 'select', 'NO\r\nYES', '', 18);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'KEYBOARD', 'select', 'NO\r\nYES', '', 19);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'READONLY', 'select', 'NO\r\nYES', '', 20);
INSERT INTO `srvig_rsform_component_type_fields` VALUES (355, 'COMPONENTTYPE', 'hidden', '355', '', 21);
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_component_types
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_component_types`;
CREATE TABLE `srvig_rsform_component_types` (
  `ComponentTypeId` int NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_component_types
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_component_types` VALUES (1, 'textBox');
INSERT INTO `srvig_rsform_component_types` VALUES (2, 'textArea');
INSERT INTO `srvig_rsform_component_types` VALUES (3, 'selectList');
INSERT INTO `srvig_rsform_component_types` VALUES (4, 'checkboxGroup');
INSERT INTO `srvig_rsform_component_types` VALUES (5, 'radioGroup');
INSERT INTO `srvig_rsform_component_types` VALUES (6, 'calendar');
INSERT INTO `srvig_rsform_component_types` VALUES (7, 'button');
INSERT INTO `srvig_rsform_component_types` VALUES (8, 'captcha');
INSERT INTO `srvig_rsform_component_types` VALUES (9, 'fileUpload');
INSERT INTO `srvig_rsform_component_types` VALUES (10, 'freeText');
INSERT INTO `srvig_rsform_component_types` VALUES (11, 'hidden');
INSERT INTO `srvig_rsform_component_types` VALUES (13, 'submitButton');
INSERT INTO `srvig_rsform_component_types` VALUES (14, 'password');
INSERT INTO `srvig_rsform_component_types` VALUES (15, 'ticket');
INSERT INTO `srvig_rsform_component_types` VALUES (41, 'pageBreak');
INSERT INTO `srvig_rsform_component_types` VALUES (211, 'birthDay');
INSERT INTO `srvig_rsform_component_types` VALUES (212, 'gmaps');
INSERT INTO `srvig_rsform_component_types` VALUES (355, 'rangeSlider');
INSERT INTO `srvig_rsform_component_types` VALUES (411, 'jQueryCalendar');
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_components
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_components`;
CREATE TABLE `srvig_rsform_components` (
  `ComponentId` int NOT NULL AUTO_INCREMENT,
  `FormId` int NOT NULL DEFAULT '0',
  `ComponentTypeId` int NOT NULL DEFAULT '0',
  `Order` int NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_components
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_components` VALUES (1, 1, 1, 1, 1);
INSERT INTO `srvig_rsform_components` VALUES (2, 1, 10, 0, 1);
INSERT INTO `srvig_rsform_components` VALUES (3, 1, 1, 2, 1);
INSERT INTO `srvig_rsform_components` VALUES (4, 1, 3, 3, 1);
INSERT INTO `srvig_rsform_components` VALUES (5, 1, 5, 4, 1);
INSERT INTO `srvig_rsform_components` VALUES (6, 1, 4, 5, 1);
INSERT INTO `srvig_rsform_components` VALUES (7, 1, 6, 6, 1);
INSERT INTO `srvig_rsform_components` VALUES (8, 1, 13, 7, 1);
INSERT INTO `srvig_rsform_components` VALUES (9, 1, 10, 8, 1);
INSERT INTO `srvig_rsform_components` VALUES (10, 2, 1, 2, 1);
INSERT INTO `srvig_rsform_components` VALUES (11, 2, 10, 1, 1);
INSERT INTO `srvig_rsform_components` VALUES (12, 2, 1, 3, 1);
INSERT INTO `srvig_rsform_components` VALUES (13, 2, 3, 6, 1);
INSERT INTO `srvig_rsform_components` VALUES (14, 2, 5, 7, 1);
INSERT INTO `srvig_rsform_components` VALUES (15, 2, 4, 10, 1);
INSERT INTO `srvig_rsform_components` VALUES (16, 2, 6, 11, 1);
INSERT INTO `srvig_rsform_components` VALUES (17, 2, 13, 12, 1);
INSERT INTO `srvig_rsform_components` VALUES (18, 2, 10, 13, 1);
INSERT INTO `srvig_rsform_components` VALUES (19, 2, 41, 4, 1);
INSERT INTO `srvig_rsform_components` VALUES (20, 2, 41, 8, 1);
INSERT INTO `srvig_rsform_components` VALUES (21, 2, 10, 5, 1);
INSERT INTO `srvig_rsform_components` VALUES (22, 2, 10, 9, 1);
INSERT INTO `srvig_rsform_components` VALUES (33, 6, 1, 0, 1);
INSERT INTO `srvig_rsform_components` VALUES (34, 6, 1, 1, 1);
INSERT INTO `srvig_rsform_components` VALUES (35, 6, 2, 2, 1);
INSERT INTO `srvig_rsform_components` VALUES (36, 6, 411, 3, 1);
INSERT INTO `srvig_rsform_components` VALUES (37, 6, 13, 4, 1);
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_condition_details
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_condition_details`;
CREATE TABLE `srvig_rsform_condition_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `condition_id` int NOT NULL,
  `component_id` int NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `condition_id` (`condition_id`),
  KEY `component_id` (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for srvig_rsform_conditions
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_conditions`;
CREATE TABLE `srvig_rsform_conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_id` int NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` text NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for srvig_rsform_config
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_config`;
CREATE TABLE `srvig_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`SettingName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_config
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_config` VALUES ('allow_unsafe', '0');
INSERT INTO `srvig_rsform_config` VALUES ('backup.mask', 'backup-{domain}-{date}');
INSERT INTO `srvig_rsform_config` VALUES ('calculations.decimal', '.');
INSERT INTO `srvig_rsform_config` VALUES ('calculations.nodecimals', '2');
INSERT INTO `srvig_rsform_config` VALUES ('calculations.thousands', ',');
INSERT INTO `srvig_rsform_config` VALUES ('deleteafter.interval', '10');
INSERT INTO `srvig_rsform_config` VALUES ('deleteafter.last_run', '1603150577');
INSERT INTO `srvig_rsform_config` VALUES ('disposable_domains', '');
INSERT INTO `srvig_rsform_config` VALUES ('export.limit', '500');
INSERT INTO `srvig_rsform_config` VALUES ('export.mask', 'export-{formId}-{domain}-{date}');
INSERT INTO `srvig_rsform_config` VALUES ('global.codemirror', '0');
INSERT INTO `srvig_rsform_config` VALUES ('global.date_mask', 'Y-m-d H:i:s');
INSERT INTO `srvig_rsform_config` VALUES ('global.default_language', 'en-GB');
INSERT INTO `srvig_rsform_config` VALUES ('global.default_layout', 'responsive');
INSERT INTO `srvig_rsform_config` VALUES ('global.default_load_layout_framework', '1');
INSERT INTO `srvig_rsform_config` VALUES ('global.disable_multilanguage', '0');
INSERT INTO `srvig_rsform_config` VALUES ('global.filtering', 'joomla');
INSERT INTO `srvig_rsform_config` VALUES ('global.grid_show_caption', '0');
INSERT INTO `srvig_rsform_config` VALUES ('global.grid_show_previews', '1');
INSERT INTO `srvig_rsform_config` VALUES ('global.register.code', '');
INSERT INTO `srvig_rsform_config` VALUES ('google.api_key', '');
INSERT INTO `srvig_rsform_config` VALUES ('request_timeout', '0');
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_directory
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_directory`;
CREATE TABLE `srvig_rsform_directory` (
  `formId` int NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT 'export.pdf',
  `csvfilename` varchar(255) NOT NULL DEFAULT '{alias}.csv',
  `enablepdf` tinyint(1) NOT NULL,
  `enablecsv` tinyint(1) NOT NULL,
  `HideEmptyValues` tinyint(1) NOT NULL,
  `ShowGoogleMap` tinyint(1) NOT NULL,
  `ViewLayout` longtext NOT NULL,
  `ViewLayoutName` text NOT NULL,
  `ViewLayoutAutogenerate` tinyint(1) NOT NULL,
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `ListScript` text NOT NULL,
  `DetailsScript` text NOT NULL,
  `EmailsScript` text NOT NULL,
  `EmailsCreatedScript` text NOT NULL,
  `groups` text NOT NULL,
  `DeletionGroups` text NOT NULL,
  PRIMARY KEY (`formId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for srvig_rsform_directory_fields
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_directory_fields`;
CREATE TABLE `srvig_rsform_directory_fields` (
  `formId` int NOT NULL,
  `componentId` int NOT NULL,
  `viewable` tinyint(1) NOT NULL,
  `searchable` tinyint(1) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `indetails` tinyint(1) NOT NULL,
  `incsv` tinyint(1) NOT NULL,
  `ordering` int NOT NULL,
  UNIQUE KEY `formId` (`formId`,`componentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for srvig_rsform_emails
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_emails`;
CREATE TABLE `srvig_rsform_emails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formId` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `replytoname` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for srvig_rsform_forms
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_forms`;
CREATE TABLE `srvig_rsform_forms` (
  `FormId` int NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `GridLayout` mediumtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `LoadFormLayoutFramework` tinyint(1) NOT NULL DEFAULT '1',
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `FormLayoutFlow` tinyint(1) NOT NULL DEFAULT '0',
  `DisableSubmitButton` tinyint(1) NOT NULL DEFAULT '0',
  `RemoveCaptchaLogged` tinyint(1) NOT NULL DEFAULT '0',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `ShowFormTitle` tinyint(1) NOT NULL DEFAULT '1',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowSystemMessage` tinyint(1) NOT NULL DEFAULT '1',
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `ScrollToThankYou` tinyint(1) NOT NULL DEFAULT '0',
  `ThankYouMessagePopUp` tinyint(1) NOT NULL DEFAULT '0',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailReplyToName` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailReplyToName` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint NOT NULL DEFAULT '1',
  `DeletionEmailText` text NOT NULL,
  `DeletionEmailTo` text NOT NULL,
  `DeletionEmailCC` varchar(255) NOT NULL,
  `DeletionEmailBCC` varchar(255) NOT NULL,
  `DeletionEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `DeletionEmailReplyTo` varchar(255) NOT NULL,
  `DeletionEmailReplyToName` varchar(255) NOT NULL,
  `DeletionEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `DeletionEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `DeletionEmailMode` tinyint NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptBeforeDisplay` text NOT NULL,
  `ScriptBeforeValidation` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ScrollToError` tinyint(1) NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `KeepIP` tinyint(1) NOT NULL DEFAULT '1',
  `DeleteSubmissionsAfter` int NOT NULL DEFAULT '0',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `ConfirmSubmissionUrl` text NOT NULL,
  `Access` varchar(5) NOT NULL,
  `LimitSubmissions` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FormId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_forms
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_forms` VALUES (1, 'RSFormPro example', '<h2>{global:formtitle}</h2>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class=\"formContainer formHorizontal\" id=\"rsform_{global:formid}_page_0\">\n	<div class=\"formRow\">\n		<div class=\"formSpan12\">\n			<div class=\"rsform-block rsform-block-header{Header:errorClass}\">\n					{Header:body}\n			</div>\n			<div class=\"rsform-block rsform-block-fullname{FullName:errorClass}\">\n				<label class=\"formControlLabel\" for=\"FullName\">{FullName:caption}<strong class=\"formRequired\">(*)</strong></label>\n				<div class=\"formControls\">\n					<div class=\"formBody\">\n						{FullName:body}\n						<span class=\"formValidation\">{FullName:validation}</span>\n						<p class=\"formDescription\">{FullName:description}</p>\n					</div>\n				</div>\n			</div>\n			<div class=\"rsform-block rsform-block-email{Email:errorClass}\">\n				<label class=\"formControlLabel\" for=\"Email\">{Email:caption}<strong class=\"formRequired\">(*)</strong></label>\n				<div class=\"formControls\">\n					<div class=\"formBody\">\n						{Email:body}\n						<span class=\"formValidation\">{Email:validation}</span>\n						<p class=\"formDescription\">{Email:description}</p>\n					</div>\n				</div>\n			</div>\n			<div class=\"rsform-block rsform-block-companysize{CompanySize:errorClass}\">\n				<label class=\"formControlLabel\" for=\"CompanySize\">{CompanySize:caption}<strong class=\"formRequired\">(*)</strong></label>\n				<div class=\"formControls\">\n					<div class=\"formBody\">\n						{CompanySize:body}\n						<span class=\"formValidation\">{CompanySize:validation}</span>\n						<p class=\"formDescription\">{CompanySize:description}</p>\n					</div>\n				</div>\n			</div>\n			<div class=\"rsform-block rsform-block-position{Position:errorClass}\">\n				<label class=\"formControlLabel\">{Position:caption}<strong class=\"formRequired\">(*)</strong></label>\n				<div class=\"formControls\">\n					<div class=\"formBody\">\n						{Position:body}\n						<span class=\"formValidation\">{Position:validation}</span>\n						<p class=\"formDescription\">{Position:description}</p>\n					</div>\n				</div>\n			</div>\n			<div class=\"rsform-block rsform-block-contactby{ContactBy:errorClass}\">\n				<label class=\"formControlLabel\">{ContactBy:caption}</label>\n				<div class=\"formControls\">\n					<div class=\"formBody\">\n						{ContactBy:body}\n						<span class=\"formValidation\">{ContactBy:validation}</span>\n						<p class=\"formDescription\">{ContactBy:description}</p>\n					</div>\n				</div>\n			</div>\n			<div class=\"rsform-block rsform-block-contactwhen{ContactWhen:errorClass}\">\n				<label class=\"formControlLabel\" for=\"txtcal1_0\">{ContactWhen:caption}<strong class=\"formRequired\">(*)</strong></label>\n				<div class=\"formControls\">\n					<div class=\"formBody\">\n						{ContactWhen:body}\n						<span class=\"formValidation\">{ContactWhen:validation}</span>\n						<p class=\"formDescription\">{ContactWhen:description}</p>\n					</div>\n				</div>\n			</div>\n			<div class=\"rsform-block rsform-block-submit{Submit:errorClass}\">\n				<label class=\"formControlLabel\" for=\"Submit\">{Submit:caption}</label>\n				<div class=\"formControls\">\n					<div class=\"formBody\">\n						{Submit:body}\n						<span class=\"formValidation\">{Submit:validation}</span>\n						<p class=\"formDescription\">{Submit:description}</p>\n					</div>\n				</div>\n			</div>\n			<div class=\"rsform-block rsform-block-footer{Footer:errorClass}\">\n					{Footer:body}\n			</div>\n		</div>\n	</div>\n</fieldset>', '[[{\"columns\":[[\"2\",\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"]],\"sizes\":[\"12\"]}],[]]', 'responsive', 1, 1, 0, 0, 0, '', '', 'RSForm! Pro example', 1, 1, '', '', 1, 1, 0, 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', '{global:mailfrom}', '', '', '{global:fromname}', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', '', '{FullName:value}', 'Contact', 1, '', '', '', '', '', '', '', '', '', 1, '', '', '', '', '', '', '', '', 0, '', '', '(*)', '', ', ', 1, '', 'userForm', '', '', '', 0, 0, 1, 1, 0, 0, 0, '', '', 0);
INSERT INTO `srvig_rsform_forms` VALUES (2, 'RSFormPro Multipage example', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_0\">\r\n	<div class=\"rsform-block rsform-block-header\">\r\n		<div class=\"formControlLabel\">{Header:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Header:body}<span class=\"formValidation\">{Header:validation}</span></div>\r\n		<p class=\"formDescription\">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-fullname\">\r\n		<div class=\"formControlLabel\">{FullName:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{FullName:body}<span class=\"formValidation\">{FullName:validation}</span></div>\r\n		<p class=\"formDescription\">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-email\">\r\n		<div class=\"formControlLabel\">{Email:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Email:body}<span class=\"formValidation\">{Email:validation}</span></div>\r\n		<p class=\"formDescription\">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-page1\">\r\n		<div class=\"formControlLabel\">&nbsp;</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Page1:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_1\">\r\n	<div class=\"rsform-block rsform-block-companyheader\">\r\n		<div class=\"formControlLabel\">{CompanyHeader:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{CompanyHeader:body}<span class=\"formValidation\">{CompanyHeader:validation}</span></div>\r\n		<p class=\"formDescription\">{CompanyHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-companysize\">\r\n		<div class=\"formControlLabel\">{CompanySize:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{CompanySize:body}<span class=\"formValidation\">{CompanySize:validation}</span></div>\r\n		<p class=\"formDescription\">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-position\">\r\n		<div class=\"formControlLabel\">{Position:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Position:body}<span class=\"formValidation\">{Position:validation}</span></div>\r\n		<p class=\"formDescription\">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-page2\">\r\n		<div class=\"formControlLabel\">&nbsp;</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Page2:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_2\">\r\n	<div class=\"rsform-block rsform-block-contactheader\">\r\n		<div class=\"formControlLabel\">{ContactHeader:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactHeader:body}<span class=\"formValidation\">{ContactHeader:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactby\">\r\n		<div class=\"formControlLabel\">{ContactBy:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactBy:body}<span class=\"formValidation\">{ContactBy:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactwhen\">\r\n		<div class=\"formControlLabel\">{ContactWhen:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactWhen:body}<span class=\"formValidation\">{ContactWhen:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-submit\">\r\n		<div class=\"formControlLabel\">{Submit:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Submit:body}<span class=\"formValidation\">{Submit:validation}</span></div>\r\n		<p class=\"formDescription\">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-footer\">\r\n		<div class=\"formControlLabel\">{Footer:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Footer:body}<span class=\"formValidation\">{Footer:validation}</span></div>\r\n		<p class=\"formDescription\">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n', '', 'responsive', 1, 1, 0, 0, 0, '', '', 'RSForm! Pro Multipage example', 1, 1, '', '', 1, 1, 0, 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', '{global:mailfrom}', '', '', '{global:fromname}', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{global:mailfrom}', '{Email:value}', '', '{FullName:value}', 'Contact request', 1, '', '', '', '', '', '', '', '', '', 1, '', '', '', '', '', '', '', '', 0, 'This is the meta description of your form. You can use it for SEO purposes.', 'rsform, contact, form, joomla', '(*)', '<p class=\"formRed\">Please complete all required fields!</p>', ', ', 1, '', 'userForm', '', '', '', 0, 0, 1, 1, 0, 0, 0, '', '', 0);
INSERT INTO `srvig_rsform_forms` VALUES (6, 'submitform', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formContainer formHorizontal\" id=\"rsform_{global:formid}_page_0\">\r\n	<div class=\"formRow\">\r\n		<div class=\"formSpan12\">\r\n			<div class=\"rsform-block rsform-block-name{Name:errorClass}\">\r\n				<label class=\"formControlLabel\" for=\"Name\">{Name:caption}<strong class=\"formRequired\">*</strong></label>\r\n				<div class=\"formControls\">\r\n					<div class=\"formBody\">\r\n						{Name:body}\r\n						<span class=\"formValidation\">{Name:validation}</span>\r\n						<p class=\"formDescription\">{Name:description}</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"rsform-block rsform-block-amount{Amount:errorClass}\">\r\n				<label class=\"formControlLabel\" for=\"Amount\">{Amount:caption}<strong class=\"formRequired\">*</strong></label>\r\n				<div class=\"formControls\">\r\n					<div class=\"formBody\">\r\n						{Amount:body}\r\n						<span class=\"formValidation\">{Amount:validation}</span>\r\n						<p class=\"formDescription\">{Amount:description}</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"rsform-block rsform-block-notes{Notes:errorClass}\">\r\n				<label class=\"formControlLabel\" for=\"Notes\">{Notes:caption}</label>\r\n				<div class=\"formControls\">\r\n					<div class=\"formBody\">\r\n						{Notes:body}\r\n						<span class=\"formValidation\">{Notes:validation}</span>\r\n						<p class=\"formDescription\">{Notes:description}</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"rsform-block rsform-block-dates{Dates:errorClass}\">\r\n				<label class=\"formControlLabel\" for=\"txtjQcal6_0\">{Dates:caption}</label>\r\n				<div class=\"formControls\">\r\n					<div class=\"formBody\">\r\n						{Dates:body}\r\n						<span class=\"formValidation\">{Dates:validation}</span>\r\n						<p class=\"formDescription\">{Dates:description}</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"rsform-block rsform-block-submit{SUBMIT:errorClass}\">\r\n				<label class=\"formControlLabel\" for=\"SUBMIT\">{SUBMIT:caption}</label>\r\n				<div class=\"formControls\">\r\n					<div class=\"formBody\">\r\n						{SUBMIT:body}\r\n						<span class=\"formValidation\">{SUBMIT:validation}</span>\r\n						<p class=\"formDescription\">{SUBMIT:description}</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</fieldset>', '[[{\"columns\":[[\"33\",\"34\",\"35\",\"36\",\"37\"]],\"sizes\":[\"12\"]}],[]]', 'responsive', 1, 1, 0, 0, 0, '', '', 'SubmitForm', 1, 1, 'en-GB', '', 1, 1, 1, 0, '', 1, '<p>Thank you for contacting us. We will get back to you as soon as possible.</p>', '{global:useremail}', '', '', 'ypybernie@gmail.com', '', '', 'Test', 'Thank you for your submission!', 1, 0, '', '<p>You have a new submission.</p>', 'pye3@wpi.edu', '', '', 'pye3@wpi.edu', '', '', 'Test', 'New submission from \'SubmitForm\'!', 1, '', '', '', '', '{global:mailfrom}', '', '', '{global:fromname}', '', 1, '', '', '', '', '', '', '', '', 0, '', '', '*', '<p class=\"formRed\">Please complete all required fields!</p>', '\\n', 1, '', 'userForm', '', '', '', 0, 0, 1, 0, 0, 0, 0, '', '2', 0);
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_mappings
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_mappings`;
CREATE TABLE `srvig_rsform_mappings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formId` int NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `driver` varchar(16) NOT NULL,
  `port` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_mappings
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_mappings` VALUES (1, 6, 0, '', 'postgresql', 3306, '', '', '', 0, '__testFrom', 'a:4:{s:4:\"name\";s:12:\"{Name:value}\";s:6:\"amount\";s:14:\"{Amount:value}\";s:4:\"date\";s:13:\"{Dates:value}\";s:4:\"note\";s:13:\"{Notes:value}\";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 1);
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_posts
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_posts`;
CREATE TABLE `srvig_rsform_posts` (
  `form_id` int NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `fields` mediumtext NOT NULL,
  `headers` mediumtext NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_posts
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_posts` VALUES (6, 0, 1, '[]', '[]', 1, 'http://');
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_properties
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_properties`;
CREATE TABLE `srvig_rsform_properties` (
  `PropertyId` int NOT NULL AUTO_INCREMENT,
  `ComponentId` int NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_properties
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_properties` VALUES (1, 1, 'NAME', 'FullName');
INSERT INTO `srvig_rsform_properties` VALUES (2, 1, 'CAPTION', 'Full Name');
INSERT INTO `srvig_rsform_properties` VALUES (3, 1, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (4, 1, 'SIZE', '20');
INSERT INTO `srvig_rsform_properties` VALUES (5, 1, 'MAXSIZE', '');
INSERT INTO `srvig_rsform_properties` VALUES (6, 1, 'VALIDATIONRULE', 'none');
INSERT INTO `srvig_rsform_properties` VALUES (7, 1, 'VALIDATIONMESSAGE', 'Please type your full name.');
INSERT INTO `srvig_rsform_properties` VALUES (8, 1, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (9, 1, 'DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_properties` VALUES (10, 1, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (11, 2, 'NAME', 'Header');
INSERT INTO `srvig_rsform_properties` VALUES (12, 2, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `srvig_rsform_properties` VALUES (13, 3, 'NAME', 'Email');
INSERT INTO `srvig_rsform_properties` VALUES (14, 3, 'CAPTION', 'E-mail');
INSERT INTO `srvig_rsform_properties` VALUES (15, 3, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (16, 3, 'SIZE', '20');
INSERT INTO `srvig_rsform_properties` VALUES (17, 3, 'MAXSIZE', '');
INSERT INTO `srvig_rsform_properties` VALUES (18, 3, 'VALIDATIONRULE', 'email');
INSERT INTO `srvig_rsform_properties` VALUES (19, 3, 'VALIDATIONMESSAGE', 'Invalid email address.');
INSERT INTO `srvig_rsform_properties` VALUES (20, 3, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (21, 3, 'DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_properties` VALUES (22, 3, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (23, 4, 'NAME', 'CompanySize');
INSERT INTO `srvig_rsform_properties` VALUES (24, 4, 'CAPTION', 'Number of Employees');
INSERT INTO `srvig_rsform_properties` VALUES (25, 4, 'SIZE', '');
INSERT INTO `srvig_rsform_properties` VALUES (26, 4, 'MULTIPLE', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (27, 4, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `srvig_rsform_properties` VALUES (28, 4, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (29, 4, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (30, 4, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (31, 4, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.');
INSERT INTO `srvig_rsform_properties` VALUES (32, 5, 'NAME', 'Position');
INSERT INTO `srvig_rsform_properties` VALUES (33, 5, 'CAPTION', 'Position');
INSERT INTO `srvig_rsform_properties` VALUES (34, 5, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `srvig_rsform_properties` VALUES (35, 5, 'FLOW', 'HORIZONTAL');
INSERT INTO `srvig_rsform_properties` VALUES (36, 5, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (37, 5, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (38, 5, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (39, 5, 'VALIDATIONMESSAGE', 'Please specify your position in the company');
INSERT INTO `srvig_rsform_properties` VALUES (40, 6, 'NAME', 'ContactBy');
INSERT INTO `srvig_rsform_properties` VALUES (41, 6, 'CAPTION', 'How should we contact you?');
INSERT INTO `srvig_rsform_properties` VALUES (42, 6, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `srvig_rsform_properties` VALUES (43, 6, 'FLOW', 'HORIZONTAL');
INSERT INTO `srvig_rsform_properties` VALUES (44, 6, 'REQUIRED', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (45, 6, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (46, 6, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (47, 6, 'VALIDATIONMESSAGE', '');
INSERT INTO `srvig_rsform_properties` VALUES (48, 7, 'NAME', 'ContactWhen');
INSERT INTO `srvig_rsform_properties` VALUES (49, 7, 'CAPTION', 'When would you like to be contacted?');
INSERT INTO `srvig_rsform_properties` VALUES (50, 7, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (51, 7, 'DATEFORMAT', 'd.m.Y');
INSERT INTO `srvig_rsform_properties` VALUES (52, 7, 'CALENDARLAYOUT', 'POPUP');
INSERT INTO `srvig_rsform_properties` VALUES (53, 7, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (54, 7, 'READONLY', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (55, 7, 'POPUPLABEL', '...');
INSERT INTO `srvig_rsform_properties` VALUES (56, 7, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (57, 7, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.');
INSERT INTO `srvig_rsform_properties` VALUES (58, 8, 'NAME', 'Submit');
INSERT INTO `srvig_rsform_properties` VALUES (59, 8, 'LABEL', 'Submit');
INSERT INTO `srvig_rsform_properties` VALUES (60, 8, 'CAPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (61, 8, 'RESET', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (62, 8, 'RESETLABEL', 'Reset');
INSERT INTO `srvig_rsform_properties` VALUES (63, 8, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (64, 9, 'NAME', 'Footer');
INSERT INTO `srvig_rsform_properties` VALUES (65, 9, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href=\"https://www.rsjoomla.com/\" target=\"_blank\">https://www.rsjoomla.com/</a>');
INSERT INTO `srvig_rsform_properties` VALUES (66, 10, 'NAME', 'FullName');
INSERT INTO `srvig_rsform_properties` VALUES (67, 10, 'CAPTION', 'Full Name');
INSERT INTO `srvig_rsform_properties` VALUES (68, 10, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (69, 10, 'SIZE', '20');
INSERT INTO `srvig_rsform_properties` VALUES (70, 10, 'MAXSIZE', '');
INSERT INTO `srvig_rsform_properties` VALUES (71, 10, 'VALIDATIONRULE', 'none');
INSERT INTO `srvig_rsform_properties` VALUES (72, 10, 'VALIDATIONMESSAGE', 'Please type your full name.');
INSERT INTO `srvig_rsform_properties` VALUES (73, 10, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (74, 10, 'DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_properties` VALUES (75, 10, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (76, 10, 'VALIDATIONEXTRA', '');
INSERT INTO `srvig_rsform_properties` VALUES (77, 11, 'NAME', 'Header');
INSERT INTO `srvig_rsform_properties` VALUES (78, 11, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `srvig_rsform_properties` VALUES (79, 12, 'NAME', 'Email');
INSERT INTO `srvig_rsform_properties` VALUES (80, 12, 'CAPTION', 'E-mail');
INSERT INTO `srvig_rsform_properties` VALUES (81, 12, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (82, 12, 'SIZE', '20');
INSERT INTO `srvig_rsform_properties` VALUES (83, 12, 'MAXSIZE', '');
INSERT INTO `srvig_rsform_properties` VALUES (84, 12, 'VALIDATIONRULE', 'email');
INSERT INTO `srvig_rsform_properties` VALUES (85, 12, 'VALIDATIONMESSAGE', 'Invalid email address.');
INSERT INTO `srvig_rsform_properties` VALUES (86, 12, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (87, 12, 'DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_properties` VALUES (88, 12, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (89, 12, 'VALIDATIONEXTRA', '');
INSERT INTO `srvig_rsform_properties` VALUES (90, 13, 'NAME', 'CompanySize');
INSERT INTO `srvig_rsform_properties` VALUES (91, 13, 'CAPTION', 'Number of Employees');
INSERT INTO `srvig_rsform_properties` VALUES (92, 13, 'SIZE', '');
INSERT INTO `srvig_rsform_properties` VALUES (93, 13, 'MULTIPLE', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (94, 13, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `srvig_rsform_properties` VALUES (95, 13, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (96, 13, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (97, 13, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (98, 13, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.');
INSERT INTO `srvig_rsform_properties` VALUES (99, 14, 'NAME', 'Position');
INSERT INTO `srvig_rsform_properties` VALUES (100, 14, 'CAPTION', 'Position');
INSERT INTO `srvig_rsform_properties` VALUES (101, 14, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `srvig_rsform_properties` VALUES (102, 14, 'FLOW', 'HORIZONTAL');
INSERT INTO `srvig_rsform_properties` VALUES (103, 14, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (104, 14, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (105, 14, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (106, 14, 'VALIDATIONMESSAGE', 'Please specify your position in the company');
INSERT INTO `srvig_rsform_properties` VALUES (107, 15, 'NAME', 'ContactBy');
INSERT INTO `srvig_rsform_properties` VALUES (108, 15, 'CAPTION', 'How should we contact you?');
INSERT INTO `srvig_rsform_properties` VALUES (109, 15, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `srvig_rsform_properties` VALUES (110, 15, 'FLOW', 'HORIZONTAL');
INSERT INTO `srvig_rsform_properties` VALUES (111, 15, 'REQUIRED', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (112, 15, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (113, 15, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (114, 15, 'VALIDATIONMESSAGE', '');
INSERT INTO `srvig_rsform_properties` VALUES (115, 16, 'NAME', 'ContactWhen');
INSERT INTO `srvig_rsform_properties` VALUES (116, 16, 'CAPTION', 'When would you like to be contacted?');
INSERT INTO `srvig_rsform_properties` VALUES (117, 16, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (118, 16, 'DATEFORMAT', 'd.m.Y');
INSERT INTO `srvig_rsform_properties` VALUES (119, 16, 'CALENDARLAYOUT', 'POPUP');
INSERT INTO `srvig_rsform_properties` VALUES (120, 16, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (121, 16, 'READONLY', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (122, 16, 'POPUPLABEL', '...');
INSERT INTO `srvig_rsform_properties` VALUES (123, 16, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (124, 16, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.');
INSERT INTO `srvig_rsform_properties` VALUES (125, 17, 'NAME', 'Submit');
INSERT INTO `srvig_rsform_properties` VALUES (126, 17, 'LABEL', 'Submit');
INSERT INTO `srvig_rsform_properties` VALUES (127, 17, 'CAPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (128, 17, 'RESET', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (129, 17, 'RESETLABEL', 'Reset');
INSERT INTO `srvig_rsform_properties` VALUES (130, 17, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (131, 17, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>');
INSERT INTO `srvig_rsform_properties` VALUES (132, 17, 'PREVBUTTON', '< Prev');
INSERT INTO `srvig_rsform_properties` VALUES (133, 18, 'NAME', 'Footer');
INSERT INTO `srvig_rsform_properties` VALUES (134, 18, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href=\"https://www.rsjoomla.com/\" target=\"_blank\">https://www.rsjoomla.com/</a>');
INSERT INTO `srvig_rsform_properties` VALUES (135, 19, 'NAME', 'Page1');
INSERT INTO `srvig_rsform_properties` VALUES (136, 19, 'NEXTBUTTON', 'Next >');
INSERT INTO `srvig_rsform_properties` VALUES (137, 19, 'PREVBUTTON', '< Prev');
INSERT INTO `srvig_rsform_properties` VALUES (138, 19, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>');
INSERT INTO `srvig_rsform_properties` VALUES (139, 19, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (140, 20, 'NAME', 'Page2');
INSERT INTO `srvig_rsform_properties` VALUES (141, 20, 'NEXTBUTTON', 'Next >');
INSERT INTO `srvig_rsform_properties` VALUES (142, 20, 'PREVBUTTON', '< Prev');
INSERT INTO `srvig_rsform_properties` VALUES (143, 20, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>');
INSERT INTO `srvig_rsform_properties` VALUES (144, 20, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (145, 21, 'NAME', 'CompanyHeader');
INSERT INTO `srvig_rsform_properties` VALUES (146, 21, 'TEXT', 'Please tell us a little about your company.');
INSERT INTO `srvig_rsform_properties` VALUES (147, 22, 'NAME', 'ContactHeader');
INSERT INTO `srvig_rsform_properties` VALUES (148, 22, 'TEXT', 'Please let us know how and when to contact you.');
INSERT INTO `srvig_rsform_properties` VALUES (323, 33, 'NAME', 'Name');
INSERT INTO `srvig_rsform_properties` VALUES (324, 33, 'CAPTION', 'Name');
INSERT INTO `srvig_rsform_properties` VALUES (325, 33, 'DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_properties` VALUES (326, 33, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (327, 33, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (328, 33, 'VALIDATIONRULE', 'none');
INSERT INTO `srvig_rsform_properties` VALUES (329, 33, 'VALIDATIONEXTRA', '');
INSERT INTO `srvig_rsform_properties` VALUES (330, 33, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `srvig_rsform_properties` VALUES (331, 33, 'INPUTTYPE', 'text');
INSERT INTO `srvig_rsform_properties` VALUES (332, 33, 'ATTRMIN', '');
INSERT INTO `srvig_rsform_properties` VALUES (333, 33, 'ATTRMAX', '');
INSERT INTO `srvig_rsform_properties` VALUES (334, 33, 'ATTRSTEP', '1');
INSERT INTO `srvig_rsform_properties` VALUES (335, 33, 'SIZE', '20');
INSERT INTO `srvig_rsform_properties` VALUES (336, 33, 'MAXSIZE', '');
INSERT INTO `srvig_rsform_properties` VALUES (337, 33, 'PLACEHOLDER', '');
INSERT INTO `srvig_rsform_properties` VALUES (338, 33, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (339, 33, 'TEXT', '');
INSERT INTO `srvig_rsform_properties` VALUES (340, 34, 'NAME', 'Amount');
INSERT INTO `srvig_rsform_properties` VALUES (341, 34, 'CAPTION', 'Amount');
INSERT INTO `srvig_rsform_properties` VALUES (342, 34, 'DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_properties` VALUES (343, 34, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (344, 34, 'REQUIRED', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (345, 34, 'VALIDATIONRULE', 'numeric');
INSERT INTO `srvig_rsform_properties` VALUES (346, 34, 'VALIDATIONEXTRA', '');
INSERT INTO `srvig_rsform_properties` VALUES (347, 34, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `srvig_rsform_properties` VALUES (348, 34, 'INPUTTYPE', 'text');
INSERT INTO `srvig_rsform_properties` VALUES (349, 34, 'ATTRMIN', '');
INSERT INTO `srvig_rsform_properties` VALUES (350, 34, 'ATTRMAX', '');
INSERT INTO `srvig_rsform_properties` VALUES (351, 34, 'ATTRSTEP', '1');
INSERT INTO `srvig_rsform_properties` VALUES (352, 34, 'SIZE', '20');
INSERT INTO `srvig_rsform_properties` VALUES (353, 34, 'MAXSIZE', '');
INSERT INTO `srvig_rsform_properties` VALUES (354, 34, 'PLACEHOLDER', '');
INSERT INTO `srvig_rsform_properties` VALUES (355, 34, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (356, 34, 'TEXT', '');
INSERT INTO `srvig_rsform_properties` VALUES (357, 35, 'NAME', 'Notes');
INSERT INTO `srvig_rsform_properties` VALUES (358, 35, 'CAPTION', 'Notes');
INSERT INTO `srvig_rsform_properties` VALUES (359, 35, 'DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_properties` VALUES (360, 35, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (361, 35, 'REQUIRED', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (362, 35, 'VALIDATIONRULE', 'none');
INSERT INTO `srvig_rsform_properties` VALUES (363, 35, 'VALIDATIONEXTRA', '');
INSERT INTO `srvig_rsform_properties` VALUES (364, 35, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `srvig_rsform_properties` VALUES (365, 35, 'COLS', '50');
INSERT INTO `srvig_rsform_properties` VALUES (366, 35, 'ROWS', '5');
INSERT INTO `srvig_rsform_properties` VALUES (367, 35, 'PLACEHOLDER', '');
INSERT INTO `srvig_rsform_properties` VALUES (368, 35, 'WYSIWYG', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (369, 35, 'WYSIWYGBUTTONS', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (370, 35, 'MAXSIZE', '');
INSERT INTO `srvig_rsform_properties` VALUES (371, 35, 'SHOW_CHAR_COUNT', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (372, 35, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (373, 35, 'TEXT', '');
INSERT INTO `srvig_rsform_properties` VALUES (374, 36, 'NAME', 'Dates');
INSERT INTO `srvig_rsform_properties` VALUES (375, 36, 'CAPTION', 'Dates');
INSERT INTO `srvig_rsform_properties` VALUES (376, 36, 'DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_properties` VALUES (377, 36, 'DESCRIPTION', '');
INSERT INTO `srvig_rsform_properties` VALUES (378, 36, 'REQUIRED', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (379, 36, 'VALIDATIONCALENDAR', '');
INSERT INTO `srvig_rsform_properties` VALUES (380, 36, 'VALIDATIONCALENDAROFFSET', '1');
INSERT INTO `srvig_rsform_properties` VALUES (381, 36, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `srvig_rsform_properties` VALUES (382, 36, 'VALIDATIONDATE', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (383, 36, 'DATEFORMAT', 'd-m-Y H:i');
INSERT INTO `srvig_rsform_properties` VALUES (384, 36, 'MINDATEJQ', '');
INSERT INTO `srvig_rsform_properties` VALUES (385, 36, 'MAXDATEJQ', '');
INSERT INTO `srvig_rsform_properties` VALUES (386, 36, 'ALLOWDATERE', '');
INSERT INTO `srvig_rsform_properties` VALUES (387, 36, 'ALLOWDATES', '');
INSERT INTO `srvig_rsform_properties` VALUES (388, 36, 'TIMEPICKER', 'YES');
INSERT INTO `srvig_rsform_properties` VALUES (389, 36, 'TIMEPICKERFORMAT', 'H:i');
INSERT INTO `srvig_rsform_properties` VALUES (390, 36, 'TIMESTEP', '30');
INSERT INTO `srvig_rsform_properties` VALUES (391, 36, 'MINTIMEJQ', '');
INSERT INTO `srvig_rsform_properties` VALUES (392, 36, 'MAXTIMEJQ', '');
INSERT INTO `srvig_rsform_properties` VALUES (393, 36, 'CALENDARLAYOUT', 'FLAT');
INSERT INTO `srvig_rsform_properties` VALUES (394, 36, 'READONLY', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (395, 36, 'POPUPLABEL', '...');
INSERT INTO `srvig_rsform_properties` VALUES (396, 36, 'THEME', 'DEFAULT');
INSERT INTO `srvig_rsform_properties` VALUES (397, 36, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (398, 36, 'TEXT', '');
INSERT INTO `srvig_rsform_properties` VALUES (399, 37, 'NAME', 'SUBMIT');
INSERT INTO `srvig_rsform_properties` VALUES (400, 37, 'LABEL', 'SUBMIT');
INSERT INTO `srvig_rsform_properties` VALUES (401, 37, 'CAPTION', 'SUBMIT');
INSERT INTO `srvig_rsform_properties` VALUES (402, 37, 'RESET', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (403, 37, 'RESETLABEL', '');
INSERT INTO `srvig_rsform_properties` VALUES (404, 37, 'PREVBUTTON', '< Prev');
INSERT INTO `srvig_rsform_properties` VALUES (405, 37, 'DISPLAYPROGRESS', 'NO');
INSERT INTO `srvig_rsform_properties` VALUES (406, 37, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>');
INSERT INTO `srvig_rsform_properties` VALUES (407, 37, 'BUTTONTYPE', 'TYPEBUTTON');
INSERT INTO `srvig_rsform_properties` VALUES (408, 37, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `srvig_rsform_properties` VALUES (409, 37, 'TEXT', '');
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_submission_columns
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_submission_columns`;
CREATE TABLE `srvig_rsform_submission_columns` (
  `FormId` int NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for srvig_rsform_submission_values
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_submission_values`;
CREATE TABLE `srvig_rsform_submission_values` (
  `SubmissionValueId` int NOT NULL AUTO_INCREMENT,
  `FormId` int NOT NULL,
  `SubmissionId` int NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_submission_values
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_submission_values` VALUES (1, 6, 1, 'Name', 'Bernie');
INSERT INTO `srvig_rsform_submission_values` VALUES (2, 6, 1, 'Amount', '10000');
INSERT INTO `srvig_rsform_submission_values` VALUES (3, 6, 1, 'Notes', 'Student Loan');
INSERT INTO `srvig_rsform_submission_values` VALUES (4, 6, 1, 'Dates', '13-10-2020 18:00');
INSERT INTO `srvig_rsform_submission_values` VALUES (5, 6, 1, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (6, 6, 1, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (7, 6, 2, 'Name', 'Bernie');
INSERT INTO `srvig_rsform_submission_values` VALUES (8, 6, 2, 'Amount', '10000');
INSERT INTO `srvig_rsform_submission_values` VALUES (9, 6, 2, 'Notes', 'Student Loan');
INSERT INTO `srvig_rsform_submission_values` VALUES (10, 6, 2, 'Dates', '05-10-2020 18:30');
INSERT INTO `srvig_rsform_submission_values` VALUES (11, 6, 2, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (12, 6, 2, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (13, 6, 3, 'Name', 'Bernie');
INSERT INTO `srvig_rsform_submission_values` VALUES (14, 6, 3, 'Amount', '10000');
INSERT INTO `srvig_rsform_submission_values` VALUES (15, 6, 3, 'Notes', 'adasda\r\n');
INSERT INTO `srvig_rsform_submission_values` VALUES (16, 6, 3, 'Dates', '19-10-2020 18:30');
INSERT INTO `srvig_rsform_submission_values` VALUES (17, 6, 3, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (18, 6, 3, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (19, 6, 4, 'Name', 'Bernie');
INSERT INTO `srvig_rsform_submission_values` VALUES (20, 6, 4, 'Amount', '10000');
INSERT INTO `srvig_rsform_submission_values` VALUES (21, 6, 4, 'Notes', 'tesrt1');
INSERT INTO `srvig_rsform_submission_values` VALUES (22, 6, 4, 'Dates', '19-10-2020 18:30');
INSERT INTO `srvig_rsform_submission_values` VALUES (23, 6, 4, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (24, 6, 4, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (25, 6, 5, 'Name', 'Bernie');
INSERT INTO `srvig_rsform_submission_values` VALUES (26, 6, 5, 'Amount', '10000');
INSERT INTO `srvig_rsform_submission_values` VALUES (27, 6, 5, 'Notes', 'Bernie');
INSERT INTO `srvig_rsform_submission_values` VALUES (28, 6, 5, 'Dates', '21-10-2020 19:00');
INSERT INTO `srvig_rsform_submission_values` VALUES (29, 6, 5, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (30, 6, 5, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (31, 6, 6, 'Name', 'Amy');
INSERT INTO `srvig_rsform_submission_values` VALUES (32, 6, 6, 'Amount', '100000');
INSERT INTO `srvig_rsform_submission_values` VALUES (33, 6, 6, 'Notes', 'Test');
INSERT INTO `srvig_rsform_submission_values` VALUES (34, 6, 6, 'Dates', '12-10-2020 19:00');
INSERT INTO `srvig_rsform_submission_values` VALUES (35, 6, 6, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (36, 6, 6, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (37, 6, 7, 'Name', 'Cindy');
INSERT INTO `srvig_rsform_submission_values` VALUES (38, 6, 7, 'Amount', '2000');
INSERT INTO `srvig_rsform_submission_values` VALUES (39, 6, 7, 'Notes', 'Loan');
INSERT INTO `srvig_rsform_submission_values` VALUES (40, 6, 7, 'Dates', '04-10-2020 19:00');
INSERT INTO `srvig_rsform_submission_values` VALUES (41, 6, 7, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (42, 6, 7, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (43, 6, 8, 'Name', 'Devin');
INSERT INTO `srvig_rsform_submission_values` VALUES (44, 6, 8, 'Amount', '10000');
INSERT INTO `srvig_rsform_submission_values` VALUES (45, 6, 8, 'Notes', 'This is a test record.');
INSERT INTO `srvig_rsform_submission_values` VALUES (46, 6, 8, 'Dates', '01-10-2020 19:30');
INSERT INTO `srvig_rsform_submission_values` VALUES (47, 6, 8, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (48, 6, 8, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (49, 6, 9, 'Name', 'Test');
INSERT INTO `srvig_rsform_submission_values` VALUES (50, 6, 9, 'Amount', '10000');
INSERT INTO `srvig_rsform_submission_values` VALUES (51, 6, 9, 'Notes', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (52, 6, 9, 'Dates', '06-10-2020 19:30');
INSERT INTO `srvig_rsform_submission_values` VALUES (53, 6, 9, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (54, 6, 9, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (55, 6, 10, 'Name', 'Tony');
INSERT INTO `srvig_rsform_submission_values` VALUES (56, 6, 10, 'Amount', '200');
INSERT INTO `srvig_rsform_submission_values` VALUES (57, 6, 10, 'Notes', 'Loan');
INSERT INTO `srvig_rsform_submission_values` VALUES (58, 6, 10, 'Dates', '12-10-2020 19:30');
INSERT INTO `srvig_rsform_submission_values` VALUES (59, 6, 10, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (60, 6, 10, 'formId', '6');
INSERT INTO `srvig_rsform_submission_values` VALUES (61, 6, 11, 'Name', 'Test1');
INSERT INTO `srvig_rsform_submission_values` VALUES (62, 6, 11, 'Amount', '1111');
INSERT INTO `srvig_rsform_submission_values` VALUES (63, 6, 11, 'Notes', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (64, 6, 11, 'Dates', '05-10-2020 19:30');
INSERT INTO `srvig_rsform_submission_values` VALUES (65, 6, 11, 'SUBMIT', '');
INSERT INTO `srvig_rsform_submission_values` VALUES (66, 6, 11, 'formId', '6');
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_submissions
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_submissions`;
CREATE TABLE `srvig_rsform_submissions` (
  `SubmissionId` int NOT NULL AUTO_INCREMENT,
  `FormId` int NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(255) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `SubmissionHash` varchar(32) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`,`FormId`,`DateSubmitted`),
  KEY `SubmissionHash` (`SubmissionHash`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_submissions
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_submissions` VALUES (1, 6, '2020-10-19 22:10:00', '::1', 'pye3', '760', 'en-GB', 1, '4dc86d43b13e403031b3a63760f883fd');
INSERT INTO `srvig_rsform_submissions` VALUES (2, 6, '2020-10-19 22:19:53', '::1', 'pye3', '760', 'en-GB', 1, '3152cb289f28dbafa919d4a313dc6994');
INSERT INTO `srvig_rsform_submissions` VALUES (3, 6, '2020-10-19 22:22:37', '::1', '', '0', 'en-GB', 1, '23204c3204b12229171c15e3b7776c80');
INSERT INTO `srvig_rsform_submissions` VALUES (4, 6, '2020-10-19 22:32:36', '::1', '', '0', 'en-GB', 1, 'd0c5c86eadc93d173b4137f344426bbe');
INSERT INTO `srvig_rsform_submissions` VALUES (5, 6, '2020-10-19 22:46:28', '0.0.0.0', '', '0', 'en-GB', 1, '288acc4d097dd37465067108af0320fa');
INSERT INTO `srvig_rsform_submissions` VALUES (6, 6, '2020-10-19 22:48:07', '0.0.0.0', '', '0', 'en-GB', 1, '0fa8bce9b2cd6e0ad7c6d296dbd4e75b');
INSERT INTO `srvig_rsform_submissions` VALUES (7, 6, '2020-10-19 22:52:21', '0.0.0.0', 'pye3', '760', 'en-GB', 1, '3e1083888a3263a5c65cd10205eac08d');
INSERT INTO `srvig_rsform_submissions` VALUES (8, 6, '2020-10-19 23:33:36', '0.0.0.0', 'pye3', '760', 'en-GB', 1, '18616d2eaaeb0675fd526b1e2b4e44f1');
INSERT INTO `srvig_rsform_submissions` VALUES (9, 6, '2020-10-19 23:36:41', '0.0.0.0', 'pye3', '760', 'en-GB', 1, '41935478cab7a0f390842c547dade066');
INSERT INTO `srvig_rsform_submissions` VALUES (10, 6, '2020-10-19 23:39:33', '0.0.0.0', 'pye3', '760', 'en-GB', 1, '74c9db3f0e8340bf17256fd94df6a3e9');
INSERT INTO `srvig_rsform_submissions` VALUES (11, 6, '2020-10-19 23:41:27', '0.0.0.0', 'pye3', '760', 'en-GB', 1, 'e7b3fdaf576d2cb748b225fd77bec929');
COMMIT;

-- ----------------------------
-- Table structure for srvig_rsform_translations
-- ----------------------------
DROP TABLE IF EXISTS `srvig_rsform_translations`;
CREATE TABLE `srvig_rsform_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_id` int NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lang_code` (`lang_code`),
  KEY `reference` (`reference`),
  KEY `lang_search` (`form_id`,`lang_code`,`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srvig_rsform_translations
-- ----------------------------
BEGIN;
INSERT INTO `srvig_rsform_translations` VALUES (87, 6, 'zh-CN', 'properties', '33.CAPTION', 'Name');
INSERT INTO `srvig_rsform_translations` VALUES (88, 6, 'zh-CN', 'properties', '33.DESCRIPTION', '');
INSERT INTO `srvig_rsform_translations` VALUES (89, 6, 'zh-CN', 'properties', '33.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `srvig_rsform_translations` VALUES (90, 6, 'zh-CN', 'properties', '33.DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_translations` VALUES (91, 6, 'zh-CN', 'properties', '33.TEXT', '');
INSERT INTO `srvig_rsform_translations` VALUES (92, 6, 'zh-CN', 'properties', '33.PLACEHOLDER', '');
INSERT INTO `srvig_rsform_translations` VALUES (93, 6, 'zh-CN', 'properties', '34.CAPTION', 'Amount');
INSERT INTO `srvig_rsform_translations` VALUES (94, 6, 'zh-CN', 'properties', '34.DESCRIPTION', '');
INSERT INTO `srvig_rsform_translations` VALUES (95, 6, 'zh-CN', 'properties', '34.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `srvig_rsform_translations` VALUES (96, 6, 'zh-CN', 'properties', '34.DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_translations` VALUES (97, 6, 'zh-CN', 'properties', '34.TEXT', '');
INSERT INTO `srvig_rsform_translations` VALUES (98, 6, 'zh-CN', 'properties', '34.PLACEHOLDER', '');
INSERT INTO `srvig_rsform_translations` VALUES (99, 6, 'zh-CN', 'properties', '35.CAPTION', 'Notes');
INSERT INTO `srvig_rsform_translations` VALUES (100, 6, 'zh-CN', 'properties', '35.DESCRIPTION', '');
INSERT INTO `srvig_rsform_translations` VALUES (101, 6, 'zh-CN', 'properties', '35.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `srvig_rsform_translations` VALUES (102, 6, 'zh-CN', 'properties', '35.DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_translations` VALUES (103, 6, 'zh-CN', 'properties', '35.TEXT', '');
INSERT INTO `srvig_rsform_translations` VALUES (104, 6, 'zh-CN', 'properties', '35.PLACEHOLDER', '');
INSERT INTO `srvig_rsform_translations` VALUES (105, 6, 'zh-CN', 'properties', '36.CAPTION', 'Dates');
INSERT INTO `srvig_rsform_translations` VALUES (106, 6, 'zh-CN', 'properties', '36.DESCRIPTION', '');
INSERT INTO `srvig_rsform_translations` VALUES (107, 6, 'zh-CN', 'properties', '36.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `srvig_rsform_translations` VALUES (108, 6, 'zh-CN', 'properties', '36.DEFAULTVALUE', '');
INSERT INTO `srvig_rsform_translations` VALUES (109, 6, 'zh-CN', 'properties', '36.TEXT', '');
INSERT INTO `srvig_rsform_translations` VALUES (110, 6, 'zh-CN', 'properties', '36.POPUPLABEL', '...');
INSERT INTO `srvig_rsform_translations` VALUES (111, 6, 'zh-CN', 'properties', '37.LABEL', 'SUBMIT');
INSERT INTO `srvig_rsform_translations` VALUES (112, 6, 'zh-CN', 'properties', '37.RESETLABEL', '');
INSERT INTO `srvig_rsform_translations` VALUES (113, 6, 'zh-CN', 'properties', '37.PREVBUTTON', '< Prev');
INSERT INTO `srvig_rsform_translations` VALUES (114, 6, 'zh-CN', 'properties', '37.CAPTION', 'SUBMIT');
INSERT INTO `srvig_rsform_translations` VALUES (115, 6, 'zh-CN', 'properties', '37.TEXT', '');
INSERT INTO `srvig_rsform_translations` VALUES (116, 6, 'zh-CN', 'properties', '37.DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>');
INSERT INTO `srvig_rsform_translations` VALUES (117, 6, 'zh-CN', 'forms', 'FormTitle', 'SubmitForm');
INSERT INTO `srvig_rsform_translations` VALUES (118, 6, 'zh-CN', 'forms', 'UserEmailFromName', 'Submission Test');
INSERT INTO `srvig_rsform_translations` VALUES (119, 6, 'zh-CN', 'forms', 'UserEmailSubject', 'Thank you for your submission! ');
INSERT INTO `srvig_rsform_translations` VALUES (120, 6, 'zh-CN', 'forms', 'AdminEmailFromName', 'Test');
INSERT INTO `srvig_rsform_translations` VALUES (121, 6, 'zh-CN', 'forms', 'AdminEmailSubject', 'New submission from \'SubmitForm\'!');
INSERT INTO `srvig_rsform_translations` VALUES (122, 6, 'zh-CN', 'forms', 'DeletionEmailFromName', '{global:fromname}');
INSERT INTO `srvig_rsform_translations` VALUES (123, 6, 'zh-CN', 'forms', 'DeletionEmailSubject', '');
INSERT INTO `srvig_rsform_translations` VALUES (124, 6, 'zh-CN', 'forms', 'DeletionEmailReplyToName', '');
INSERT INTO `srvig_rsform_translations` VALUES (125, 6, 'zh-CN', 'forms', 'MetaDesc', '');
INSERT INTO `srvig_rsform_translations` VALUES (126, 6, 'zh-CN', 'forms', 'MetaKeywords', '');
INSERT INTO `srvig_rsform_translations` VALUES (127, 6, 'zh-CN', 'forms', 'UserEmailReplyToName', '');
INSERT INTO `srvig_rsform_translations` VALUES (128, 6, 'zh-CN', 'forms', 'AdminEmailReplyToName', '');
INSERT INTO `srvig_rsform_translations` VALUES (129, 6, 'zh-CN', 'forms', 'ReturnUrl', '');
INSERT INTO `srvig_rsform_translations` VALUES (130, 6, 'zh-CN', 'forms', 'UserEmailText', '<p>Thank you for contacting us. We will get back to you as soon as possible.</p>\r\n\r\n<p>The submission is entered is:{Name:value}, {Amount:value}, {Date:value}, {Notes:value} </p>\r\n\r\n');
COMMIT;

-- ----------------------------
-- Table structure for srvig_schemas
-- ----------------------------
DROP TABLE IF EXISTS `srvig_schemas`;
CREATE TABLE `srvig_schemas` (
  `extension_id` int NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_schemas
-- ----------------------------
BEGIN;
INSERT INTO `srvig_schemas` VALUES (700, '3.9.22-2020-09-16');
COMMIT;

-- ----------------------------
-- Table structure for srvig_session
-- ----------------------------
DROP TABLE IF EXISTS `srvig_session`;
CREATE TABLE `srvig_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint unsigned DEFAULT NULL,
  `guest` tinyint unsigned DEFAULT '1',
  `time` int NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_session
-- ----------------------------
BEGIN;
INSERT INTO `srvig_session` VALUES (0x33716534736A6235616C3770706C316C6C76746F616D696C6363, 0, 0, 1603150911, 'joomla|s:1208:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1NTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2MDMxNDYxNDc7czo0OiJsYXN0IjtpOjE2MDMxNTA4OTQ7czozOiJub3ciO2k6MTYwMzE1MDkxMTt9czo1OiJ0b2tlbiI7czozMjoiWTV2d1J6OHVXVE9HQXd3NFZnMWxSU2w3SFhoeldUdkciO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6InJldHVybiI7czo3MjoiaHR0cDovL2xvY2FsaG9zdC9qb29tbGEvaW5kZXgucGhwL2NvbXBvbmVudC91c2Vycy8/dmlldz1sb2dpbiZJdGVtaWQ9MTAxIjtzOjQ6ImRhdGEiO2E6MDp7fX19fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjM6Ijc2MCI7fXM6MTA6ImNvbV9yc2Zvcm0iO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6ImZvcm1wYXJhbXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiZm9ybUlkNiI7Tjt9fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 760, 'pye3');
INSERT INTO `srvig_session` VALUES (0x34346530646F35666D76376673626E336D3467756371746A6532, 1, 0, 1603150874, 'joomla|s:1708:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo4MTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2MDMxNDc3NTI7czo0OiJsYXN0IjtpOjE2MDMxNTA4NzQ7czozOiJub3ciO2k6MTYwMzE1MDg3NDt9czo1OiJ0b2tlbiI7czozMjoiOUpXT1VQb0h4OWtEYmVBaWFZSzNxdHdwZFV3UmQ1TUYiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjM6e3M6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO3M6MjoiaWQiO2E6MDp7fX19fXM6MTA6ImNvbV9jb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Imdsb2JhbCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjM6Ijc2MCI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319czoxMDoiY29tX3JzZm9ybSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImZvcm1JZDYiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGFuZyI7czo1OiJ6aC1DTiI7fX19fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 760, 'pye3');
INSERT INTO `srvig_session` VALUES (0x39713564316938626B75623734627071756D37386D3075373366, 1, 0, 1603150430, 'joomla|s:3492:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0MzQ7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjAzMTQwODkwO3M6NDoibGFzdCI7aToxNjAzMTQ5NTg5O3M6Mzoibm93IjtpOjE2MDMxNTA0MzA7fXM6NToidG9rZW4iO3M6MzI6Imh1YXdFankwc1JBTVI0SGZ6clp0Q1ZTTkhScXJqdnNqIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjc6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czoxMjoicmVkaXJlY3RfdXJsIjtOO31zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX19czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJ1c2VyIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjQ6e3M6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6OToiY2xpZW50X2lkIjtpOjA7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjo0OntzOjQ6ImRhdGEiO047czo0OiJ0eXBlIjtOO3M6NDoibGluayI7TjtzOjI6ImlkIjthOjA6e319fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX1zOjEwOiJjb21fcnNmb3JtIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJzdWJtaXNzaW9ucyI7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MTc6ImN1cnJlbnRmaWx0ZXJoYXNoIjtzOjMyOiIxNjc5MDkxYzVhODgwZmFmNmZiNWU2MDg3ZWIxYjJkYyI7czo2OiJmb3JtSWQiO2k6NjtzOjY6ImZpbHRlciI7czowOiIiO3M6NDoibGFuZyI7czowOiIiO3M6ODoiZGF0ZUZyb20iO3M6MDoiIjtzOjY6ImRhdGVUbyI7czowOiIiO3M6MTI6ImZpbHRlcl9vcmRlciI7czoxMzoiRGF0ZVN1Ym1pdHRlZCI7czoxNjoiZmlsdGVyX29yZGVyX0RpciI7czo0OiJERVNDIjtzOjU6ImxpbWl0IjtpOjIwO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fXM6MTA6ImNvbV9jb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Imdsb2JhbCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjM6Ijc2MCI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319czoxMDoiY29tX3JzZm9ybSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo2OiJ3aXphcmQiO086ODoic3RkQ2xhc3MiOjEwOntzOjk6IkZvcm1UaXRsZSI7TjtzOjEwOiJGb3JtTGF5b3V0IjtOO3M6MTA6IkFkbWluRW1haWwiO047czoxMjoiQWRtaW5FbWFpbFRvIjtOO3M6OToiVXNlckVtYWlsIjtOO3M6MTY6IlN1Ym1pc3Npb25BY3Rpb24iO047czo4OiJUaGFua3lvdSI7TjtzOjk6IlJldHVyblVybCI7TjtzOjE2OiJTY3JvbGxUb1RoYW5rWW91IjtpOjE7czoyMDoiVGhhbmtZb3VNZXNzYWdlUG9wVXAiO2k6MDt9czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjo1OntzOjc6ImZvcm1JZDMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGFuZyI7czo1OiJ6aC1DTiI7fXM6NzoiZm9ybUlkNCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJsYW5nIjtzOjU6InpoLUNOIjt9czo3OiJmb3JtSWQ1IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImxhbmciO3M6NToiemgtQ04iO31zOjc6ImZvcm1JZDYiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGFuZyI7czo1OiJ6aC1DTiI7fXM6NzoiZm9ybUlkMSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJsYW5nIjtzOjU6InpoLUNOIjt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 760, 'pye3');
INSERT INTO `srvig_session` VALUES (0x6C30706C63366572316E6E6D66326464316F306667706D766573, 0, 0, 1603149610, 'joomla|s:1188:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2MDMxNDc5MTE7czo0OiJsYXN0IjtpOjE2MDMxNDg3ODE7czozOiJub3ciO2k6MTYwMzE0OTYxMDt9czo1OiJ0b2tlbiI7czozMjoid0l6REwzcm9uZG1QWUdLR0N5SkZUN2x3eUw2dFZqNlYiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO2E6MDp7fXM6NjoicmV0dXJuIjtzOjMzOiJodHRwOi8vbG9jYWxob3N0L2pvb21sYS9pbmRleC5waHAiO319fXM6MTM6InJlbWVtYmVyTG9naW4iO2I6MTt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI3NjAiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fXM6MTA6ImNvbV9yc2Zvcm0iO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6ImZvcm1wYXJhbXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiZm9ybUlkNiI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 760, 'pye3');
COMMIT;

-- ----------------------------
-- Table structure for srvig_tags
-- ----------------------------
DROP TABLE IF EXISTS `srvig_tags`;
CREATE TABLE `srvig_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_tags
-- ----------------------------
BEGIN;
INSERT INTO `srvig_tags` VALUES (1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 760, '2020-10-19 20:54:14', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for srvig_template_styles
-- ----------------------------
DROP TABLE IF EXISTS `srvig_template_styles`;
CREATE TABLE `srvig_template_styles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_template_styles
-- ----------------------------
BEGIN;
INSERT INTO `srvig_template_styles` VALUES (4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `srvig_template_styles` VALUES (5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `srvig_template_styles` VALUES (7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `srvig_template_styles` VALUES (8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');
COMMIT;

-- ----------------------------
-- Table structure for srvig_ucm_base
-- ----------------------------
DROP TABLE IF EXISTS `srvig_ucm_base`;
CREATE TABLE `srvig_ucm_base` (
  `ucm_id` int unsigned NOT NULL,
  `ucm_item_id` int NOT NULL,
  `ucm_type_id` int NOT NULL,
  `ucm_language_id` int NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_ucm_content
-- ----------------------------
DROP TABLE IF EXISTS `srvig_ucm_content`;
CREATE TABLE `srvig_ucm_content` (
  `core_content_id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int unsigned NOT NULL DEFAULT '0',
  `core_access` int unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci,
  `core_urls` text COLLATE utf8mb4_unicode_ci,
  `core_hits` int unsigned NOT NULL DEFAULT '0',
  `core_version` int unsigned NOT NULL DEFAULT '1',
  `core_ordering` int NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci,
  `core_catid` int unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- ----------------------------
-- Table structure for srvig_ucm_history
-- ----------------------------
DROP TABLE IF EXISTS `srvig_ucm_history`;
CREATE TABLE `srvig_ucm_history` (
  `version_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int unsigned NOT NULL,
  `ucm_type_id` int unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int unsigned NOT NULL DEFAULT '0',
  `character_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_ucm_history
-- ----------------------------
BEGIN;
INSERT INTO `srvig_ucm_history` VALUES (1, 1, 1, '', '2020-10-19 21:44:32', 760, 1804, '21a34b533e0e44a8dc842103bccea7dfa56c969d', '{\"id\":1,\"asset_id\":62,\"title\":\"form-submission\",\"alias\":\"form-submission\",\"introtext\":\"<p>Page for Submitting a new form<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2020-10-19 21:44:32\",\"created_by\":\"760\",\"created_by_alias\":\"\",\"modified\":\"2020-10-19 21:44:32\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2020-10-19 21:44:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
COMMIT;

-- ----------------------------
-- Table structure for srvig_update_sites
-- ----------------------------
DROP TABLE IF EXISTS `srvig_update_sites`;
CREATE TABLE `srvig_update_sites` (
  `update_site_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int DEFAULT '0',
  `last_check_timestamp` bigint DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

-- ----------------------------
-- Records of srvig_update_sites
-- ----------------------------
BEGIN;
INSERT INTO `srvig_update_sites` VALUES (1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1603149614, '');
INSERT INTO `srvig_update_sites` VALUES (2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1603140859, '');
INSERT INTO `srvig_update_sites` VALUES (3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1603140905, '');
INSERT INTO `srvig_update_sites` VALUES (4, 'WebInstaller Update Site', 'extension', 'https://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1603145967, '');
INSERT INTO `srvig_update_sites` VALUES (5, 'RSForm! Pro', 'extension', 'https://www.rsjoomla.com/updates/com_rsform/Component/com_rsform.xml', 1, 1603145968, '');
COMMIT;

-- ----------------------------
-- Table structure for srvig_update_sites_extensions
-- ----------------------------
DROP TABLE IF EXISTS `srvig_update_sites_extensions`;
CREATE TABLE `srvig_update_sites_extensions` (
  `update_site_id` int NOT NULL DEFAULT '0',
  `extension_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

-- ----------------------------
-- Records of srvig_update_sites_extensions
-- ----------------------------
BEGIN;
INSERT INTO `srvig_update_sites_extensions` VALUES (1, 700);
INSERT INTO `srvig_update_sites_extensions` VALUES (2, 802);
INSERT INTO `srvig_update_sites_extensions` VALUES (2, 10002);
INSERT INTO `srvig_update_sites_extensions` VALUES (3, 28);
INSERT INTO `srvig_update_sites_extensions` VALUES (4, 10003);
INSERT INTO `srvig_update_sites_extensions` VALUES (5, 10004);
COMMIT;

-- ----------------------------
-- Table structure for srvig_updates
-- ----------------------------
DROP TABLE IF EXISTS `srvig_updates`;
CREATE TABLE `srvig_updates` (
  `update_id` int NOT NULL AUTO_INCREMENT,
  `update_site_id` int DEFAULT '0',
  `extension_id` int DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- ----------------------------
-- Records of srvig_updates
-- ----------------------------
BEGIN;
INSERT INTO `srvig_updates` VALUES (1, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (2, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (3, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (4, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (5, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (6, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (7, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (8, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (9, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (10, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (11, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (12, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.9.19.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.9.11.2', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (24, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (25, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (26, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (27, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (28, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (29, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (30, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (31, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (32, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (33, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (34, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (35, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.9.13.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (36, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (37, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (38, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (39, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (40, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (41, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (42, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (43, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (44, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (45, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (46, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (47, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (48, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (49, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (50, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (51, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (52, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (53, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (54, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (55, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (56, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (57, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (58, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (59, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (60, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (61, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (62, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (63, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (64, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (65, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (66, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.3', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (67, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (68, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (69, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (70, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (71, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (72, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (73, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (74, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (75, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (76, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.9.22.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (77, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', '');
INSERT INTO `srvig_updates` VALUES (78, 5, 10004, 'RSForm! Pro 2.3.17', '', 'com_rsform', 'component', '', 1, '2.3.17', '', 'https://www.rsjoomla.com/updates/com_rsform/Component/com_rsform.xml', 'https://www.rsjoomla.com/support/documentation/rsform-pro/changelog/rsform-pro-changelog.html', '');
COMMIT;

-- ----------------------------
-- Table structure for srvig_user_keys
-- ----------------------------
DROP TABLE IF EXISTS `srvig_user_keys`;
CREATE TABLE `srvig_user_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_user_keys
-- ----------------------------
BEGIN;
INSERT INTO `srvig_user_keys` VALUES (2, 'pye3', '$2y$10$GW297X1k4/980Jdkp9xiGuw4eHAm9x0jqbZO/TsXy8ddV7I5MtXlO', '9yFxHHJbdEI0Gd0Wu9a0', 0, '1608331926', 'joomla_remember_me_c0daff826d6ff0f096f09a8c8e8c7bc4');
COMMIT;

-- ----------------------------
-- Table structure for srvig_user_notes
-- ----------------------------
DROP TABLE IF EXISTS `srvig_user_notes`;
CREATE TABLE `srvig_user_notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for srvig_user_profiles
-- ----------------------------
DROP TABLE IF EXISTS `srvig_user_profiles`;
CREATE TABLE `srvig_user_profiles` (
  `user_id` int NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- ----------------------------
-- Table structure for srvig_user_usergroup_map
-- ----------------------------
DROP TABLE IF EXISTS `srvig_user_usergroup_map`;
CREATE TABLE `srvig_user_usergroup_map` (
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_user_usergroup_map
-- ----------------------------
BEGIN;
INSERT INTO `srvig_user_usergroup_map` VALUES (760, 8);
COMMIT;

-- ----------------------------
-- Table structure for srvig_usergroups
-- ----------------------------
DROP TABLE IF EXISTS `srvig_usergroups`;
CREATE TABLE `srvig_usergroups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_usergroups
-- ----------------------------
BEGIN;
INSERT INTO `srvig_usergroups` VALUES (1, 0, 1, 18, 'Public');
INSERT INTO `srvig_usergroups` VALUES (2, 1, 8, 15, 'Registered');
INSERT INTO `srvig_usergroups` VALUES (3, 2, 9, 14, 'Author');
INSERT INTO `srvig_usergroups` VALUES (4, 3, 10, 13, 'Editor');
INSERT INTO `srvig_usergroups` VALUES (5, 4, 11, 12, 'Publisher');
INSERT INTO `srvig_usergroups` VALUES (6, 1, 4, 7, 'Manager');
INSERT INTO `srvig_usergroups` VALUES (7, 6, 5, 6, 'Administrator');
INSERT INTO `srvig_usergroups` VALUES (8, 1, 16, 17, 'Super Users');
INSERT INTO `srvig_usergroups` VALUES (9, 1, 2, 3, 'Guest');
COMMIT;

-- ----------------------------
-- Table structure for srvig_users
-- ----------------------------
DROP TABLE IF EXISTS `srvig_users`;
CREATE TABLE `srvig_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint NOT NULL DEFAULT '0',
  `sendEmail` tinyint DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=761 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_users
-- ----------------------------
BEGIN;
INSERT INTO `srvig_users` VALUES (760, 'Super User', 'pye3', 'pye3@wpi.edu', '$2y$10$ii4AtcvO.xuui2X2po2E1u5kxBWW3fHvEVENwom3m/GXx4R3l9ZqO', 0, 1, '2020-10-19 20:54:14', '2020-10-19 23:33:11', '0', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for srvig_utf8_conversion
-- ----------------------------
DROP TABLE IF EXISTS `srvig_utf8_conversion`;
CREATE TABLE `srvig_utf8_conversion` (
  `converted` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_utf8_conversion
-- ----------------------------
BEGIN;
INSERT INTO `srvig_utf8_conversion` VALUES (5);
COMMIT;

-- ----------------------------
-- Table structure for srvig_viewlevels
-- ----------------------------
DROP TABLE IF EXISTS `srvig_viewlevels`;
CREATE TABLE `srvig_viewlevels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of srvig_viewlevels
-- ----------------------------
BEGIN;
INSERT INTO `srvig_viewlevels` VALUES (1, 'Public', 0, '[1]');
INSERT INTO `srvig_viewlevels` VALUES (2, 'Registered', 2, '[6,2,8]');
INSERT INTO `srvig_viewlevels` VALUES (3, 'Special', 3, '[6,3,8]');
INSERT INTO `srvig_viewlevels` VALUES (5, 'Guest', 1, '[9]');
INSERT INTO `srvig_viewlevels` VALUES (6, 'Super Users', 4, '[8]');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
