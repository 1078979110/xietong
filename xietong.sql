/*
Navicat MySQL Data Transfer

Source Server         : local host
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xietong

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-09-04 20:02:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '仪表盘', 'fa-bar-chart', '/', null, null, '2020-09-04 14:57:00');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '超级管理', 'fa-tasks', null, null, null, '2020-09-04 14:58:10');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '管理员管理', 'fa-users', 'auth/users', null, null, '2020-09-04 14:58:24');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, null, '2020-09-04 14:58:50');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限管理', 'fa-ban', 'auth/permissions', null, null, '2020-09-04 14:59:02');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, null, '2020-09-04 14:59:13');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, null, '2020-09-04 14:59:25');
INSERT INTO `admin_menu` VALUES ('8', '0', '0', '系统配置管理', 'fa-cogs', '/settings', null, '2020-09-04 14:59:53', '2020-09-04 15:48:01');
INSERT INTO `admin_menu` VALUES ('9', '0', '0', '厂家管理', 'fa-briefcase', '/companies', null, '2020-09-04 16:58:03', '2020-09-04 17:08:48');
INSERT INTO `admin_menu` VALUES ('10', '0', '0', '产品线管理', 'fa-pagelines', '/lines', null, '2020-09-04 17:30:36', '2020-09-04 17:30:36');
INSERT INTO `admin_menu` VALUES ('11', '0', '0', '分类管理', 'fa-certificate', '/categories', null, '2020-09-04 18:36:55', '2020-09-04 18:37:05');
INSERT INTO `admin_menu` VALUES ('12', '0', '0', '产品管理', 'fa-product-hunt', '/products', null, '2020-09-04 19:39:47', '2020-09-04 19:39:47');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:39:09', '2020-09-04 06:39:09');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 06:42:51', '2020-09-04 06:42:51');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:51', '2020-09-04 06:42:51');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:52', '2020-09-04 06:42:52');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:52', '2020-09-04 06:42:52');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:52', '2020-09-04 06:42:52');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:52', '2020-09-04 06:42:52');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:52', '2020-09-04 06:42:52');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:53', '2020-09-04 06:42:53');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:53', '2020-09-04 06:42:53');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:53', '2020-09-04 06:42:53');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:53', '2020-09-04 06:42:53');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:53', '2020-09-04 06:42:53');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:54', '2020-09-04 06:42:54');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:54', '2020-09-04 06:42:54');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:54', '2020-09-04 06:42:54');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:54', '2020-09-04 06:42:54');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:54', '2020-09-04 06:42:54');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:55', '2020-09-04 06:42:55');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:55', '2020-09-04 06:42:55');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:55', '2020-09-04 06:42:55');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:55', '2020-09-04 06:42:55');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:42:55', '2020-09-04 06:42:55');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 06:43:26', '2020-09-04 06:43:26');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 14:53:15', '2020-09-04 14:53:15');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 14:53:34', '2020-09-04 14:53:34');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 14:53:50', '2020-09-04 14:53:50');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 14:54:20', '2020-09-04 14:54:20');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 14:54:29', '2020-09-04 14:54:29');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 14:55:14', '2020-09-04 14:55:14');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 14:56:45', '2020-09-04 14:56:45');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 14:56:48', '2020-09-04 14:56:48');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu/1', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u4eea\\u8868\\u76d8\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 14:57:00', '2020-09-04 14:57:00');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 14:57:01', '2020-09-04 14:57:01');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 14:57:10', '2020-09-04 14:57:10');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu/2', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 14:58:10', '2020-09-04 14:58:10');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 14:58:10', '2020-09-04 14:58:10');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 14:58:16', '2020-09-04 14:58:16');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu/3', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 14:58:24', '2020-09-04 14:58:24');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 14:58:24', '2020-09-04 14:58:24');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 14:58:27', '2020-09-04 14:58:27');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu/4', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 14:58:50', '2020-09-04 14:58:50');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 14:58:50', '2020-09-04 14:58:50');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu/5/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 14:58:53', '2020-09-04 14:58:53');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu/5', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 14:59:02', '2020-09-04 14:59:02');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 14:59:02', '2020-09-04 14:59:02');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu/6/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 14:59:06', '2020-09-04 14:59:06');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu/6', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 14:59:13', '2020-09-04 14:59:13');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 14:59:13', '2020-09-04 14:59:13');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu/7/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 14:59:16', '2020-09-04 14:59:16');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu/7', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 14:59:25', '2020-09-04 14:59:25');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 14:59:25', '2020-09-04 14:59:25');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 14:59:28', '2020-09-04 14:59:28');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 14:59:53', '2020-09-04 14:59:53');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 14:59:53', '2020-09-04 14:59:53');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 15:00:00', '2020-09-04 15:00:00');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu/8/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:00:07', '2020-09-04 15:00:07');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu/8', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa-cogs\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 15:00:40', '2020-09-04 15:00:40');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 15:00:41', '2020-09-04 15:00:41');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 15:00:43', '2020-09-04 15:00:43');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:00:45', '2020-09-04 15:00:45');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:00:48', '2020-09-04 15:00:48');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 15:03:22', '2020-09-04 15:03:22');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:03:24', '2020-09-04 15:03:24');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/setting', 'GET', '::1', '[]', '2020-09-04 15:21:06', '2020-09-04 15:21:06');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin', 'GET', '::1', '[]', '2020-09-04 15:34:30', '2020-09-04 15:34:30');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:34:35', '2020-09-04 15:34:35');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:34:39', '2020-09-04 15:34:39');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:37:24', '2020-09-04 15:37:24');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/menu/8/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:37:27', '2020-09-04 15:37:27');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/menu/8', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa-cogs\",\"uri\":\"\\/settings\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 15:48:01', '2020-09-04 15:48:01');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 15:48:01', '2020-09-04 15:48:01');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 15:48:06', '2020-09-04 15:48:06');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:48:08', '2020-09-04 15:48:08');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 15:48:34', '2020-09-04 15:48:34');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 15:49:12', '2020-09-04 15:49:12');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 15:50:09', '2020-09-04 15:50:09');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 15:55:14', '2020-09-04 15:55:14');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:59:04', '2020-09-04 15:59:04');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:59:06', '2020-09-04 15:59:06');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:59:07', '2020-09-04 15:59:07');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:59:10', '2020-09-04 15:59:10');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 15:59:25', '2020-09-04 15:59:25');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 16:03:56', '2020-09-04 16:03:56');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:12:27', '2020-09-04 16:12:27');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:12:29', '2020-09-04 16:12:29');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:12:30', '2020-09-04 16:12:30');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/settings/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 16:32:41', '2020-09-04 16:32:41');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/settings', 'POST', '::1', '{\"name\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"phone\":\"40041584863\",\"address\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"copyright\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"banners\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/settings\"}', '2020-09-04 16:34:22', '2020-09-04 16:34:22');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:34:23', '2020-09-04 16:34:23');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:35:35', '2020-09-04 16:35:35');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:36:23', '2020-09-04 16:36:23');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:37:13', '2020-09-04 16:37:13');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:37:41', '2020-09-04 16:37:41');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:42:59', '2020-09-04 16:42:59');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:43:33', '2020-09-04 16:43:33');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:44:45', '2020-09-04 16:44:45');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:45:14', '2020-09-04 16:45:14');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:46:00', '2020-09-04 16:46:00');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:46:43', '2020-09-04 16:46:43');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:47:00', '2020-09-04 16:47:00');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/settings/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 16:47:26', '2020-09-04 16:47:26');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/settings/1/edit', 'GET', '::1', '[]', '2020-09-04 16:47:55', '2020-09-04 16:47:55');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/settings/1/edit', 'GET', '::1', '[]', '2020-09-04 16:48:16', '2020-09-04 16:48:16');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/settings/1/edit', 'GET', '::1', '[]', '2020-09-04 16:48:17', '2020-09-04 16:48:17');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/settings/1/edit', 'GET', '::1', '[]', '2020-09-04 16:50:34', '2020-09-04 16:50:34');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 16:50:38', '2020-09-04 16:50:38');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:50:56', '2020-09-04 16:50:56');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:50:59', '2020-09-04 16:50:59');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/settings/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 16:51:18', '2020-09-04 16:51:18');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/settings/1', 'PUT', '::1', '{\"name\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"phone\":\"40041584863\",\"address\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"copyright\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/settings\"}', '2020-09-04 16:51:32', '2020-09-04 16:51:32');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/settings/1/edit', 'GET', '::1', '[]', '2020-09-04 16:51:32', '2020-09-04 16:51:32');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/settings/1/edit', 'GET', '::1', '[]', '2020-09-04 16:51:53', '2020-09-04 16:51:53');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/settings/1', 'PUT', '::1', '{\"name\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"phone\":\"40041584863\",\"address\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"copyright\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/settings\"}', '2020-09-04 16:51:59', '2020-09-04 16:51:59');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:52:00', '2020-09-04 16:52:00');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:52:56', '2020-09-04 16:52:56');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:53:01', '2020-09-04 16:53:01');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:53:42', '2020-09-04 16:53:42');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:54:29', '2020-09-04 16:54:29');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/settings/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 16:54:36', '2020-09-04 16:54:36');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/settings/1', 'PUT', '::1', '{\"name\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"phone\":\"40041584863\",\"address\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"copyright\":\"\\u6b66\\u6c49\\u534f\\u540c\\u8d38\\u6613\\u6709\\u9650\\u516c\\u53f8\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/settings\"}', '2020-09-04 16:54:47', '2020-09-04 16:54:47');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/settings', 'GET', '::1', '[]', '2020-09-04 16:54:47', '2020-09-04 16:54:47');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 16:55:52', '2020-09-04 16:55:52');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u5382\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-briefcase\",\"uri\":\"\\/manufactor\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 16:58:03', '2020-09-04 16:58:03');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 16:58:03', '2020-09-04 16:58:03');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/menu/9/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 16:59:15', '2020-09-04 16:59:15');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/menu/9', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u5382\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-briefcase\",\"uri\":\"\\/company\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 16:59:20', '2020-09-04 16:59:20');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 16:59:21', '2020-09-04 16:59:21');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/menu/9/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:08:43', '2020-09-04 17:08:43');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/auth/menu/9', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u5382\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-briefcase\",\"uri\":\"\\/companies\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/auth\\/menu\"}', '2020-09-04 17:08:48', '2020-09-04 17:08:48');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 17:08:48', '2020-09-04 17:08:48');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 17:08:51', '2020-09-04 17:08:51');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/companies', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:08:55', '2020-09-04 17:08:55');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:13:39', '2020-09-04 17:13:39');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:15:17', '2020-09-04 17:15:17');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:16:32', '2020-09-04 17:16:32');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:17:16', '2020-09-04 17:17:16');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/companies/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:21:07', '2020-09-04 17:21:07');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/companies', 'POST', '::1', '{\"companyname\":\"3M\",\"companylicense\":\"\\u6caa\\u98df\\u836f\\u76d1\\u68b0\\u751f\\u4ea7\\u8bb820000240\\u53f7\",\"companyaddress\":null,\"is_top\":\"on\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/companies\"}', '2020-09-04 17:22:12', '2020-09-04 17:22:12');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/companies/create', 'GET', '::1', '[]', '2020-09-04 17:22:12', '2020-09-04 17:22:12');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/companies', 'POST', '::1', '{\"companyname\":\"3M\",\"companylicense\":\"\\u6caa\\u98df\\u836f\\u76d1\\u68b0\\u751f\\u4ea7\\u8bb820000240\\u53f7\",\"companyaddress\":null,\"is_top\":\"on\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 17:23:19', '2020-09-04 17:23:19');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:23:19', '2020-09-04 17:23:19');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:24:19', '2020-09-04 17:24:19');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/companies/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:24:26', '2020-09-04 17:24:26');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/companies/1', 'PUT', '::1', '{\"company_name\":\"3M\",\"company_license\":\"\\u6caa\\u98df\\u836f\\u76d1\\u68b0\\u751f\\u4ea7\\u8bb820000240\\u53f7\",\"company_address\":null,\"is_top\":\"on\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/companies\"}', '2020-09-04 17:24:46', '2020-09-04 17:24:46');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:24:46', '2020-09-04 17:24:46');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/companies/1', 'PUT', '::1', '{\"is_top\":\"off\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\"}', '2020-09-04 17:24:52', '2020-09-04 17:24:52');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:24:58', '2020-09-04 17:24:58');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/companies/1', 'PUT', '::1', '{\"is_top\":\"on\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\"}', '2020-09-04 17:24:59', '2020-09-04 17:24:59');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:30:00', '2020-09-04 17:30:00');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u4ea7\\u54c1\\u7ebf\\u7ba1\\u7406\",\"icon\":\"fa-pagelines\",\"uri\":\"\\/lines\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 17:30:36', '2020-09-04 17:30:36');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 17:30:36', '2020-09-04 17:30:36');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 17:30:39', '2020-09-04 17:30:39');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:30:41', '2020-09-04 17:30:41');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 17:42:48', '2020-09-04 17:42:48');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/companies', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:43:06', '2020-09-04 17:43:06');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:43:21', '2020-09-04 17:43:21');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:44:40', '2020-09-04 17:44:40');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:52:44', '2020-09-04 17:52:44');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:53:38', '2020-09-04 17:53:38');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/companies/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:53:49', '2020-09-04 17:53:49');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/companies', 'POST', '::1', '{\"company_name\":\"\\u8d1d\\u6717\",\"company_license\":\"\\u6caa\\u6d66\\u98df\\u836f\\u76d1\\u68b0\\u7ecf\\u8425\\u8bb820160226\\u53f7\",\"company_address\":null,\"is_top\":\"on\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/companies\"}', '2020-09-04 17:54:49', '2020-09-04 17:54:49');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:54:49', '2020-09-04 17:54:49');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:57:03', '2020-09-04 17:57:03');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:57:30', '2020-09-04 17:57:30');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/companies/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:57:33', '2020-09-04 17:57:33');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/companies/1', 'PUT', '::1', '{\"company_name\":\"3M\",\"company_license\":\"\\u6caa\\u98df\\u836f\\u76d1\\u68b0\\u751f\\u4ea7\\u8bb820000240\\u53f7\",\"company_firm\":\"\\u660e\\u5c3c\\u82cf\\u8fbe\\u77ff\\u4e1a\\u5236\\u9020\\u533b\\u7528  \\u5668\\u6750\\uff08\\u4e0a\\u6d77\\uff09\\u6709\\u9650\\u516c\\u53f8\",\"company_address\":null,\"is_top\":\"on\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/companies\"}', '2020-09-04 17:57:45', '2020-09-04 17:57:45');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:57:45', '2020-09-04 17:57:45');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/companies/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:57:48', '2020-09-04 17:57:48');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/companies/2', 'PUT', '::1', '{\"company_name\":\"\\u8d1d\\u6717\",\"company_license\":\"\\u6caa\\u6d66\\u98df\\u836f\\u76d1\\u68b0\\u7ecf\\u8425\\u8bb820160226\\u53f7\",\"company_firm\":\"B.Braun Melsungen AG\",\"company_address\":null,\"is_top\":\"on\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/companies\"}', '2020-09-04 17:58:06', '2020-09-04 17:58:06');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:58:06', '2020-09-04 17:58:06');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/companies/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:58:43', '2020-09-04 17:58:43');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/companies', 'POST', '::1', '{\"company_name\":\"\\u8d39\\u68ee\\u5c24\\u65af\",\"company_license\":\"\\u6e58\\u98df\\u836f\\u76d1\\u68b0\\u751f\\u4ea7\\u8bb820150092\\u53f7\",\"company_firm\":\"\\u8d39\\u68ee\\u5c24\\u65af\\u5361\\u6bd4\\u5065\\u6e90\\uff08\\u957f\\u6c99\\uff09\\u533b\\u7597\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"company_address\":null,\"is_top\":\"on\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/companies\"}', '2020-09-04 17:59:06', '2020-09-04 17:59:06');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:59:06', '2020-09-04 17:59:06');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/companies/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:59:09', '2020-09-04 17:59:09');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/companies', 'POST', '::1', '{\"company_name\":\"\\u6c5f\\u897f3L\",\"company_license\":\"\\u8d63\\u6d2a\\u98df\\u836f\\u76d1\\u68b0\\u7ecf\\u8425\\u8bb820160174\\u53f7\",\"company_firm\":\"URO TECHNOLOGY SDN BHD\",\"company_address\":null,\"is_top\":\"on\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/companies\"}', '2020-09-04 17:59:36', '2020-09-04 17:59:36');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/companies', 'GET', '::1', '[]', '2020-09-04 17:59:36', '2020-09-04 17:59:36');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 17:59:40', '2020-09-04 17:59:40');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/companies', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:04:04', '2020-09-04 18:04:04');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:04:10', '2020-09-04 18:04:10');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 18:09:58', '2020-09-04 18:09:58');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/lines/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:10:01', '2020-09-04 18:10:01');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/lines/create', 'GET', '::1', '[]', '2020-09-04 18:13:26', '2020-09-04 18:13:26');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/lines/create', 'GET', '::1', '[]', '2020-09-04 18:13:41', '2020-09-04 18:13:41');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/lines/create', 'GET', '::1', '[]', '2020-09-04 18:14:07', '2020-09-04 18:14:07');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/lines/create', 'GET', '::1', '[]', '2020-09-04 18:14:54', '2020-09-04 18:14:54');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/lines', 'POST', '::1', '{\"line_name\":\"\\u6162\\u6027\\u4f24\\u53e3\",\"company_id\":\"1\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 18:15:17', '2020-09-04 18:15:17');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 18:15:17', '2020-09-04 18:15:17');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 18:16:48', '2020-09-04 18:16:48');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 18:21:09', '2020-09-04 18:21:09');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 18:31:42', '2020-09-04 18:31:42');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 18:32:29', '2020-09-04 18:32:29');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 18:35:41', '2020-09-04 18:35:41');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:36:35', '2020-09-04 18:36:35');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-certificate\",\"uri\":\"\\/cate\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 18:36:54', '2020-09-04 18:36:54');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 18:36:55', '2020-09-04 18:36:55');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/auth/menu/11/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:36:59', '2020-09-04 18:36:59');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/auth/menu/11/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:36:59', '2020-09-04 18:36:59');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/auth/menu/11', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-certificate\",\"uri\":\"\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\"}', '2020-09-04 18:37:05', '2020-09-04 18:37:05');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 18:37:05', '2020-09-04 18:37:05');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 18:37:07', '2020-09-04 18:37:07');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:37:10', '2020-09-04 18:37:10');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:37:12', '2020-09-04 18:37:12');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:37:14', '2020-09-04 18:37:14');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 18:38:14', '2020-09-04 18:38:14');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 18:38:33', '2020-09-04 18:38:33');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 18:40:29', '2020-09-04 18:40:29');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 18:40:38', '2020-09-04 18:40:38');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 18:43:30', '2020-09-04 18:43:30');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 18:48:47', '2020-09-04 18:48:47');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 18:50:32', '2020-09-04 18:50:32');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 18:50:34', '2020-09-04 18:50:34');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 18:50:36', '2020-09-04 18:50:36');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"3\"}', '2020-09-04 18:50:39', '2020-09-04 18:50:39');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 18:50:41', '2020-09-04 18:50:41');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u6577\\u6599\",\"company_id\":\"1\",\"line_id\":\"\\u6162\\u6027\\u4f24\\u53e3\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 18:50:54', '2020-09-04 18:50:54');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 18:50:54', '2020-09-04 18:50:54');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 18:52:22', '2020-09-04 18:52:22');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 18:52:25', '2020-09-04 18:52:25');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u6577\\u6599\",\"company_id\":\"1\",\"line_id\":\"\\u6162\\u6027\\u4f24\\u53e3\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 18:52:27', '2020-09-04 18:52:27');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 18:52:27', '2020-09-04 18:52:27');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 18:59:35', '2020-09-04 18:59:35');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 19:00:05', '2020-09-04 19:00:05');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 19:01:32', '2020-09-04 19:01:32');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 19:01:36', '2020-09-04 19:01:36');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u6577\\u6599\",\"company_id\":\"1\",\"line_id\":\"1\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 19:01:37', '2020-09-04 19:01:37');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:01:37', '2020-09-04 19:01:37');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:03:48', '2020-09-04 19:03:48');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:03:58', '2020-09-04 19:03:58');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:04:00', '2020-09-04 19:04:00');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:04:58', '2020-09-04 19:04:58');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:07:42', '2020-09-04 19:07:42');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:08:40', '2020-09-04 19:08:40');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:08:47', '2020-09-04 19:08:47');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/lines/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:08:51', '2020-09-04 19:08:51');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/lines', 'POST', '::1', '{\"line_name\":\"\\u76ae\\u80a4\\u62a4\\u7406\",\"company_id\":\"1\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/lines\"}', '2020-09-04 19:09:03', '2020-09-04 19:09:03');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:09:03', '2020-09-04 19:09:03');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/lines/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:09:06', '2020-09-04 19:09:06');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/lines', 'POST', '::1', '{\"line_name\":\"\\u6d17\\u624b\\u6db2\",\"company_id\":\"1\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/lines\"}', '2020-09-04 19:09:21', '2020-09-04 19:09:21');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:09:21', '2020-09-04 19:09:21');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/companies', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:09:29', '2020-09-04 19:09:29');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:09:32', '2020-09-04 19:09:32');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/lines/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:09:33', '2020-09-04 19:09:33');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/lines', 'POST', '::1', '{\"line_name\":\"SIVT\",\"company_id\":\"2\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/lines\"}', '2020-09-04 19:09:50', '2020-09-04 19:09:50');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:09:50', '2020-09-04 19:09:50');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/lines/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:10:02', '2020-09-04 19:10:02');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/lines', 'POST', '::1', '{\"line_name\":\"OPM\",\"company_id\":\"2\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/lines\"}', '2020-09-04 19:10:06', '2020-09-04 19:10:06');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:10:06', '2020-09-04 19:10:06');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/lines/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:10:31', '2020-09-04 19:10:31');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/lines', 'POST', '::1', '{\"line_name\":\"\\u8d39\\u68ee\\u5c24\\u65af\\u4ea7\\u54c1\\u7ebf\",\"company_id\":\"3\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/lines\"}', '2020-09-04 19:10:46', '2020-09-04 19:10:46');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:10:46', '2020-09-04 19:10:46');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/lines/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:10:52', '2020-09-04 19:10:52');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/lines', 'POST', '::1', '{\"line_name\":\"\\u6c5f\\u897f3Lc\\u4ea7\\u54c1\\u7ebf\",\"company_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/lines\"}', '2020-09-04 19:11:11', '2020-09-04 19:11:11');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:11:12', '2020-09-04 19:11:12');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:11:55', '2020-09-04 19:11:55');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/companies', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:12:00', '2020-09-04 19:12:00');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:12:03', '2020-09-04 19:12:03');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:12:05', '2020-09-04 19:12:05');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:12:13', '2020-09-04 19:12:13');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 19:12:35', '2020-09-04 19:12:35');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:12:40', '2020-09-04 19:12:40');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:12:46', '2020-09-04 19:12:46');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:12:49', '2020-09-04 19:12:49');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 19:12:52', '2020-09-04 19:12:52');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:13:07', '2020-09-04 19:13:07');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/companies', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:13:11', '2020-09-04 19:13:11');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:13:25', '2020-09-04 19:13:25');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:13:26', '2020-09-04 19:13:26');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:13:33', '2020-09-04 19:13:33');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 19:13:37', '2020-09-04 19:13:37');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/categories/create', 'GET', '::1', '[]', '2020-09-04 19:14:33', '2020-09-04 19:14:33');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 19:14:35', '2020-09-04 19:14:35');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u6577\\u6599\",\"company_id\":\"1\",\"line_id\":\"2\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 19:14:41', '2020-09-04 19:14:41');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:14:41', '2020-09-04 19:14:41');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:14:49', '2020-09-04 19:14:49');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 19:15:03', '2020-09-04 19:15:03');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u6d17\\u624b\\u6db2\",\"company_id\":\"1\",\"line_id\":\"3\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:15:08', '2020-09-04 19:15:08');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:15:08', '2020-09-04 19:15:08');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:17:08', '2020-09-04 19:17:08');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:17:35', '2020-09-04 19:17:35');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:17:37', '2020-09-04 19:17:37');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u5b89\\u5168\\u7559\\u7f6e\\u9488\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:17:54', '2020-09-04 19:17:54');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:17:54', '2020-09-04 19:17:54');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:18:06', '2020-09-04 19:18:06');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:18:12', '2020-09-04 19:18:12');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u52a0\\u836f\\u58f6\\u7559\\u7f6e\\u9488\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:18:13', '2020-09-04 19:18:13');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:18:13', '2020-09-04 19:18:13');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:18:16', '2020-09-04 19:18:16');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:18:29', '2020-09-04 19:18:29');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u8f93\\u6db2\\u5668\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:18:30', '2020-09-04 19:18:30');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:18:30', '2020-09-04 19:18:30');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:18:37', '2020-09-04 19:18:37');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:18:42', '2020-09-04 19:18:42');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u8f93\\u6db2\\u63a5\\u5934\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:18:44', '2020-09-04 19:18:44');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:18:44', '2020-09-04 19:18:44');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:18:46', '2020-09-04 19:18:46');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:18:55', '2020-09-04 19:18:55');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u6b63\\u538b\\u63a5\\u5934\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:18:55', '2020-09-04 19:18:55');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:18:56', '2020-09-04 19:18:56');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:19:03', '2020-09-04 19:19:03');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:19:06', '2020-09-04 19:19:06');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u6cf5\\u7528\\u8017\\u6750\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:19:08', '2020-09-04 19:19:08');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:19:08', '2020-09-04 19:19:08');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:19:15', '2020-09-04 19:19:15');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:19:19', '2020-09-04 19:19:19');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u8f93\\u6db2\\u5668\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:19:20', '2020-09-04 19:19:20');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:19:20', '2020-09-04 19:19:20');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:19:29', '2020-09-04 19:19:29');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:19:36', '2020-09-04 19:19:36');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u6ce8\\u5c04\\u5668\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:19:37', '2020-09-04 19:19:37');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:19:37', '2020-09-04 19:19:37');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:19:56', '2020-09-04 19:19:56');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:19:59', '2020-09-04 19:19:59');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u8f93\\u5c3f\\u7ba1\\u652f\\u67b6\",\"company_id\":\"2\",\"line_id\":\"5\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:20:02', '2020-09-04 19:20:02');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:20:02', '2020-09-04 19:20:02');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:20:10', '2020-09-04 19:20:10');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"1\"}', '2020-09-04 19:20:12', '2020-09-04 19:20:12');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:20:14', '2020-09-04 19:20:14');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u809d\\u7d20\\u5e3d\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:20:15', '2020-09-04 19:20:15');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:20:15', '2020-09-04 19:20:15');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:20:21', '2020-09-04 19:20:21');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"2\"}', '2020-09-04 19:20:25', '2020-09-04 19:20:25');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u4e09\\u901a\",\"company_id\":\"2\",\"line_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:20:27', '2020-09-04 19:20:27');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:20:27', '2020-09-04 19:20:27');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:20:40', '2020-09-04 19:20:40');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"3\"}', '2020-09-04 19:20:44', '2020-09-04 19:20:44');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u6cf5\",\"company_id\":\"3\",\"line_id\":\"6\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:20:45', '2020-09-04 19:20:45');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:20:45', '2020-09-04 19:20:45');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:20:54', '2020-09-04 19:20:54');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"4\"}', '2020-09-04 19:20:59', '2020-09-04 19:20:59');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u53cc\\u8154\\u5bfc\\u5c3f\\u7ba1\",\"company_id\":\"4\",\"line_id\":\"7\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:21:02', '2020-09-04 19:21:02');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:21:02', '2020-09-04 19:21:02');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:21:13', '2020-09-04 19:21:13');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"4\"}', '2020-09-04 19:21:16', '2020-09-04 19:21:16');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u4e09\\u8154\\u5bfc\\u5c3f\\u7ba1\",\"company_id\":\"4\",\"line_id\":\"7\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:21:18', '2020-09-04 19:21:18');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:21:18', '2020-09-04 19:21:18');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:21:29', '2020-09-04 19:21:29');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/api/lines', 'GET', '::1', '{\"q\":\"4\"}', '2020-09-04 19:21:32', '2020-09-04 19:21:32');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/categories', 'POST', '::1', '{\"category_name\":\"\\u5bfc\\u5c3f\\u7ba1\",\"company_id\":\"4\",\"line_id\":\"7\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/categories\"}', '2020-09-04 19:21:33', '2020-09-04 19:21:33');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/categories', 'GET', '::1', '[]', '2020-09-04 19:21:33', '2020-09-04 19:21:33');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/lines', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:21:36', '2020-09-04 19:21:36');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/lines/7/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:21:41', '2020-09-04 19:21:41');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/lines/7', 'PUT', '::1', '{\"line_name\":\"\\u6c5f\\u897f3L\\u4ea7\\u54c1\\u7ebf\",\"company_id\":\"4\",\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xietong.localhost\\/admin\\/lines\"}', '2020-09-04 19:21:45', '2020-09-04 19:21:45');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/lines', 'GET', '::1', '[]', '2020-09-04 19:21:46', '2020-09-04 19:21:46');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:39:14', '2020-09-04 19:39:14');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u4ea7\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-product-hunt\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"QYVTOwpDtUCP7lOPHQbXkpp709YhaXxYTVvZe2PH\"}', '2020-09-04 19:39:47', '2020-09-04 19:39:47');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 19:39:47', '2020-09-04 19:39:47');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2020-09-04 19:39:50', '2020-09-04 19:39:50');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:39:53', '2020-09-04 19:39:53');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/products', 'GET', '::1', '[]', '2020-09-04 19:40:27', '2020-09-04 19:40:27');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/products', 'GET', '::1', '[]', '2020-09-04 19:41:06', '2020-09-04 19:41:06');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/products', 'GET', '::1', '[]', '2020-09-04 19:44:29', '2020-09-04 19:44:29');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/products', 'GET', '::1', '[]', '2020-09-04 19:45:07', '2020-09-04 19:45:07');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:45:09', '2020-09-04 19:45:09');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-04 19:53:26', '2020-09-04 19:53:26');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/products', 'GET', '::1', '[]', '2020-09-04 19:56:32', '2020-09-04 19:56:32');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-09-04 06:38:28', '2020-09-04 06:38:28');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$u8HS1INwshNAbVnNeGPjd.dWf8E9K4UJk5uDDL7A48fmTUQvw9Td.', 'Administrator', null, 'HURKkZTq69ulbTPOSpd9Dg2oodG5MFf8kogxhc6G06KjNpZ66P7F2KNEzCfF', '2020-09-04 06:38:28', '2020-09-04 06:38:28');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类表';

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '敷料', '1', '1', '2020-09-04 19:01:37', '2020-09-04 19:01:37');
INSERT INTO `categories` VALUES ('2', '敷料', '1', '2', '2020-09-04 19:14:41', '2020-09-04 19:14:41');
INSERT INTO `categories` VALUES ('3', '洗手液', '1', '3', '2020-09-04 19:15:08', '2020-09-04 19:15:08');
INSERT INTO `categories` VALUES ('4', '安全留置针', '2', '4', '2020-09-04 19:17:54', '2020-09-04 19:17:54');
INSERT INTO `categories` VALUES ('5', '加药壶留置针', '2', '4', '2020-09-04 19:18:13', '2020-09-04 19:18:13');
INSERT INTO `categories` VALUES ('6', '输液器', '2', '4', '2020-09-04 19:18:30', '2020-09-04 19:18:30');
INSERT INTO `categories` VALUES ('7', '输液接头', '2', '4', '2020-09-04 19:18:44', '2020-09-04 19:18:44');
INSERT INTO `categories` VALUES ('8', '正压接头', '2', '4', '2020-09-04 19:18:55', '2020-09-04 19:18:55');
INSERT INTO `categories` VALUES ('9', '泵用耗材', '2', '4', '2020-09-04 19:19:08', '2020-09-04 19:19:08');
INSERT INTO `categories` VALUES ('10', '输液器', '2', '4', '2020-09-04 19:19:20', '2020-09-04 19:19:20');
INSERT INTO `categories` VALUES ('11', '注射器', '2', '4', '2020-09-04 19:19:37', '2020-09-04 19:19:37');
INSERT INTO `categories` VALUES ('12', '输尿管支架', '2', '5', '2020-09-04 19:20:02', '2020-09-04 19:20:02');
INSERT INTO `categories` VALUES ('13', '肝素帽', '2', '4', '2020-09-04 19:20:15', '2020-09-04 19:20:15');
INSERT INTO `categories` VALUES ('14', '三通', '2', '4', '2020-09-04 19:20:27', '2020-09-04 19:20:27');
INSERT INTO `categories` VALUES ('15', '泵', '3', '6', '2020-09-04 19:20:45', '2020-09-04 19:20:45');
INSERT INTO `categories` VALUES ('16', '双腔导尿管', '4', '7', '2020-09-04 19:21:02', '2020-09-04 19:21:02');
INSERT INTO `categories` VALUES ('17', '三腔导尿管', '4', '7', '2020-09-04 19:21:18', '2020-09-04 19:21:18');
INSERT INTO `categories` VALUES ('18', '导尿管', '4', '7', '2020-09-04 19:21:33', '2020-09-04 19:21:33');

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '厂家名称',
  `company_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '厂家生产许可证',
  `company_firm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产厂商',
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '厂家地址',
  `top_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_top` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '是否置顶，默认不置顶，0-》不置顶，1-》置顶',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='厂家表';

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('1', '3M', '沪食药监械生产许20000240号', '明尼苏达矿业制造医用  器材（上海）有限公司', null, 'images/b0d09c83a7e49fbde34cab190ad4397a.png', '1', '2020-09-04 17:23:19', '2020-09-04 17:57:45');
INSERT INTO `companies` VALUES ('2', '贝朗', '沪浦食药监械经营许20160226号', 'B.Braun Melsungen AG', null, 'images/6cf0d848141d7ea8beaca75679b235b2.png', '1', '2020-09-04 17:54:49', '2020-09-04 17:58:06');
INSERT INTO `companies` VALUES ('3', '费森尤斯', '湘食药监械生产许20150092号', '费森尤斯卡比健源（长沙）医疗科技有限公司', null, 'images/ff0fae5f8778e828772c2271e666e979.png', '1', '2020-09-04 17:59:06', '2020-09-04 17:59:06');
INSERT INTO `companies` VALUES ('4', '江西3L', '赣洪食药监械经营许20160174号', 'URO TECHNOLOGY SDN BHD', null, 'images/3213321f58a3782dd489cb9364628013.png', '1', '2020-09-04 17:59:36', '2020-09-04 17:59:36');

-- ----------------------------
-- Table structure for lines
-- ----------------------------
DROP TABLE IF EXISTS `lines`;
CREATE TABLE `lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品线表';

-- ----------------------------
-- Records of lines
-- ----------------------------
INSERT INTO `lines` VALUES ('1', '慢性伤口', '1', '2020-09-04 18:15:17', '2020-09-04 18:15:17');
INSERT INTO `lines` VALUES ('2', '皮肤护理', '1', '2020-09-04 19:09:03', '2020-09-04 19:09:03');
INSERT INTO `lines` VALUES ('3', '洗手液', '1', '2020-09-04 19:09:21', '2020-09-04 19:09:21');
INSERT INTO `lines` VALUES ('4', 'SIVT', '2', '2020-09-04 19:09:50', '2020-09-04 19:09:50');
INSERT INTO `lines` VALUES ('5', 'OPM', '2', '2020-09-04 19:10:06', '2020-09-04 19:10:06');
INSERT INTO `lines` VALUES ('6', '费森尤斯产品线', '3', '2020-09-04 19:10:46', '2020-09-04 19:10:46');
INSERT INTO `lines` VALUES ('7', '江西3L产品线', '4', '2020-09-04 19:11:11', '2020-09-04 19:21:45');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `company_id` int(11) DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品货号',
  `product_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位',
  `product_b_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '批号',
  `product_m_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产日期',
  `product_i_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '失效日期',
  `product_r_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '注册证号',
  `product_r_c_invalidation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '注册证失效日期',
  `product_s_conditions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运输条件',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品列表';

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for product_specification
-- ----------------------------
DROP TABLE IF EXISTS `product_specification`;
CREATE TABLE `product_specification` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品规格表';

-- ----------------------------
-- Records of product_specification
-- ----------------------------

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banners` text COLLATE utf8mb4_unicode_ci,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统设置表\r\n';

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('1', '武汉协同贸易有限公司', '40041584863', '武汉协同贸易有限公司', '武汉协同贸易有限公司', '[\"images\\/c04e91cc92022a7670814fd6e9dd030b.png\",\"images\\/banner.0356798.png\"]', '1599208463', '1599209687');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
