/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : book1

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-05 20:19:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_access_log
-- ----------------------------
DROP TABLE IF EXISTS `app_access_log`;
CREATE TABLE `app_access_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT 'uid',
  `referer_url` varchar(255) NOT NULL DEFAULT '' COMMENT '当前访问的refer',
  `target_url` varchar(255) NOT NULL DEFAULT '' COMMENT '访问的url',
  `query_params` text NOT NULL COMMENT 'get和post参数',
  `ua` varchar(255) NOT NULL DEFAULT '' COMMENT '访问ua',
  `ip` varchar(32) NOT NULL DEFAULT '' COMMENT '访问ip',
  `note` varchar(1000) NOT NULL DEFAULT '' COMMENT 'json格式备注字段',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=818 DEFAULT CHARSET=utf8 COMMENT='用户访问记录表';

-- ----------------------------
-- Records of app_access_log
-- ----------------------------
INSERT INTO `app_access_log` VALUES ('1', '1', 'http://mybook.imooc.test/web/user/login', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:31');
INSERT INTO `app_access_log` VALUES ('2', '1', 'http://mybook.imooc.test/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:31');
INSERT INTO `app_access_log` VALUES ('3', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:31');
INSERT INTO `app_access_log` VALUES ('4', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:31');
INSERT INTO `app_access_log` VALUES ('5', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:34');
INSERT INTO `app_access_log` VALUES ('6', '1', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:37');
INSERT INTO `app_access_log` VALUES ('7', '1', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:41');
INSERT INTO `app_access_log` VALUES ('8', '1', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:43');
INSERT INTO `app_access_log` VALUES ('9', '1', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:44');
INSERT INTO `app_access_log` VALUES ('10', '1', 'http://mybook.imooc.test/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:45');
INSERT INTO `app_access_log` VALUES ('11', '1', 'http://mybook.imooc.test/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:46');
INSERT INTO `app_access_log` VALUES ('12', '1', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:46');
INSERT INTO `app_access_log` VALUES ('13', '1', 'http://mybook.imooc.test/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:52');
INSERT INTO `app_access_log` VALUES ('14', '1', 'http://mybook.imooc.test/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:53');
INSERT INTO `app_access_log` VALUES ('15', '1', 'http://mybook.imooc.test/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:54');
INSERT INTO `app_access_log` VALUES ('16', '1', 'http://mybook.imooc.test/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:54');
INSERT INTO `app_access_log` VALUES ('17', '1', 'http://mybook.imooc.test/web/stat/share', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:55');
INSERT INTO `app_access_log` VALUES ('18', '1', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:56');
INSERT INTO `app_access_log` VALUES ('19', '1', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:57');
INSERT INTO `app_access_log` VALUES ('20', '1', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:58');
INSERT INTO `app_access_log` VALUES ('21', '1', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:58');
INSERT INTO `app_access_log` VALUES ('22', '1', 'http://mybook.imooc.test/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 11:59:59');
INSERT INTO `app_access_log` VALUES ('23', '1', 'http://mybook.imooc.test/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:00:00');
INSERT INTO `app_access_log` VALUES ('24', '1', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:00:00');
INSERT INTO `app_access_log` VALUES ('25', '1', 'http://mybook.imooc.test/web/stat/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:00:32');
INSERT INTO `app_access_log` VALUES ('26', '1', 'http://mybook.imooc.test/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:00:34');
INSERT INTO `app_access_log` VALUES ('27', '1', 'http://mybook.imooc.test/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:00:35');
INSERT INTO `app_access_log` VALUES ('28', '1', 'http://mybook.imooc.test/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:00:36');
INSERT INTO `app_access_log` VALUES ('29', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:00:37');
INSERT INTO `app_access_log` VALUES ('30', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:00:37');
INSERT INTO `app_access_log` VALUES ('31', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:31');
INSERT INTO `app_access_log` VALUES ('32', '1', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:36');
INSERT INTO `app_access_log` VALUES ('33', '1', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:39');
INSERT INTO `app_access_log` VALUES ('34', '1', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:41');
INSERT INTO `app_access_log` VALUES ('35', '1', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:42');
INSERT INTO `app_access_log` VALUES ('36', '1', 'http://mybook.imooc.test/web/book/images', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:44');
INSERT INTO `app_access_log` VALUES ('37', '1', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:46');
INSERT INTO `app_access_log` VALUES ('38', '1', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:48');
INSERT INTO `app_access_log` VALUES ('39', '1', 'http://mybook.imooc.test/web/finance/index', '/web/finance/account', '{\"\\/web\\/finance\\/account\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:51');
INSERT INTO `app_access_log` VALUES ('40', '1', 'http://mybook.imooc.test/web/finance/account', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:52');
INSERT INTO `app_access_log` VALUES ('41', '1', 'http://mybook.imooc.test/web/finance/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:54');
INSERT INTO `app_access_log` VALUES ('42', '1', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:54');
INSERT INTO `app_access_log` VALUES ('43', '1', 'http://mybook.imooc.test/web/stat/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:56');
INSERT INTO `app_access_log` VALUES ('44', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:57');
INSERT INTO `app_access_log` VALUES ('45', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:08:57');
INSERT INTO `app_access_log` VALUES ('46', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:10:15');
INSERT INTO `app_access_log` VALUES ('47', '1', 'http://mybook.imooc.test/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:10:17');
INSERT INTO `app_access_log` VALUES ('48', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:10:17');
INSERT INTO `app_access_log` VALUES ('49', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:10:17');
INSERT INTO `app_access_log` VALUES ('50', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:10:19');
INSERT INTO `app_access_log` VALUES ('51', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:10:51');
INSERT INTO `app_access_log` VALUES ('52', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:11:45');
INSERT INTO `app_access_log` VALUES ('53', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:11:46');
INSERT INTO `app_access_log` VALUES ('54', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:11:48');
INSERT INTO `app_access_log` VALUES ('55', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:12:05');
INSERT INTO `app_access_log` VALUES ('56', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:12:06');
INSERT INTO `app_access_log` VALUES ('57', '1', 'http://mybook.imooc.test/web/user/login', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:12:29');
INSERT INTO `app_access_log` VALUES ('58', '1', 'http://mybook.imooc.test/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:12:29');
INSERT INTO `app_access_log` VALUES ('59', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:12:30');
INSERT INTO `app_access_log` VALUES ('60', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:12:30');
INSERT INTO `app_access_log` VALUES ('61', '1', 'http://mybook.imooc.test/web/user/login', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:13:01');
INSERT INTO `app_access_log` VALUES ('62', '1', 'http://mybook.imooc.test/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:13:01');
INSERT INTO `app_access_log` VALUES ('63', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:13:01');
INSERT INTO `app_access_log` VALUES ('64', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:13:01');
INSERT INTO `app_access_log` VALUES ('65', '1', 'http://mybook.imooc.test/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:13:46');
INSERT INTO `app_access_log` VALUES ('66', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:13:46');
INSERT INTO `app_access_log` VALUES ('67', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:13:46');
INSERT INTO `app_access_log` VALUES ('68', '1', 'http://mybook.imooc.test/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:02');
INSERT INTO `app_access_log` VALUES ('69', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:03');
INSERT INTO `app_access_log` VALUES ('70', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:03');
INSERT INTO `app_access_log` VALUES ('71', '1', 'http://mybook.imooc.test/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:13');
INSERT INTO `app_access_log` VALUES ('72', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:13');
INSERT INTO `app_access_log` VALUES ('73', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:13');
INSERT INTO `app_access_log` VALUES ('74', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:33');
INSERT INTO `app_access_log` VALUES ('75', '1', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:37');
INSERT INTO `app_access_log` VALUES ('76', '1', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:38');
INSERT INTO `app_access_log` VALUES ('77', '1', 'http://mybook.imooc.test/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:40');
INSERT INTO `app_access_log` VALUES ('78', '1', 'http://mybook.imooc.test/web/brand/info', '/web/brand/set', '{\"\\/web\\/brand\\/set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:14:41');
INSERT INTO `app_access_log` VALUES ('79', '1', 'http://mybook.imooc.test/web/brand/set', '/web/upload/pic', '{\"\\/web\\/upload\\/pic\":\"\",\"bucket\":\"brand\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:15:04');
INSERT INTO `app_access_log` VALUES ('80', '1', 'http://mybook.imooc.test/web/brand/set', '/web/brand/set', '{\"\\/web\\/brand\\/set\":\"\",\"name\":\"\\u7fd4\\u6e38\\u65c5\\u5c45\",\"logo\":\"20171127\\/3c9578ea9ecee46afada98040ed89333.png\",\"mobile\":\"4007729059\",\"address\":\"\\u4e0a\\u6d77\\u5e02\\u6768\\u6d66\\u533a\\u4e94\\u89d2\\u4e30\\u8fbe8\\u53f7508\\u5ba4\",\"description\":\"\\u65c5\\u6e38\\u3001\\u517b\\u8001\\u3001\\u6587\\u5316\\u3001\\u4f11\\u95f2\\u5a31\\u4e50\\u3001\\u533b\\u7597\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:00');
INSERT INTO `app_access_log` VALUES ('81', '1', 'http://mybook.imooc.test/web/brand/set', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:02');
INSERT INTO `app_access_log` VALUES ('82', '1', 'http://mybook.imooc.test/web/brand/info', '/web/brand/images', '{\"\\/web\\/brand\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:07');
INSERT INTO `app_access_log` VALUES ('83', '1', 'http://mybook.imooc.test/web/brand/images', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:09');
INSERT INTO `app_access_log` VALUES ('84', '1', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:11');
INSERT INTO `app_access_log` VALUES ('85', '1', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:14');
INSERT INTO `app_access_log` VALUES ('86', '1', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:15');
INSERT INTO `app_access_log` VALUES ('87', '1', 'http://mybook.imooc.test/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:17');
INSERT INTO `app_access_log` VALUES ('88', '1', 'http://mybook.imooc.test/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:18');
INSERT INTO `app_access_log` VALUES ('89', '1', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:18');
INSERT INTO `app_access_log` VALUES ('90', '1', 'http://mybook.imooc.test/web/stat/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:21');
INSERT INTO `app_access_log` VALUES ('91', '1', 'http://mybook.imooc.test/web/qrcode/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:22');
INSERT INTO `app_access_log` VALUES ('92', '1', 'http://mybook.imooc.test/web/finance/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:23');
INSERT INTO `app_access_log` VALUES ('93', '1', 'http://mybook.imooc.test/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:23');
INSERT INTO `app_access_log` VALUES ('94', '1', 'http://mybook.imooc.test/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:24');
INSERT INTO `app_access_log` VALUES ('95', '1', 'http://mybook.imooc.test/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:24');
INSERT INTO `app_access_log` VALUES ('96', '1', 'http://mybook.imooc.test/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:25');
INSERT INTO `app_access_log` VALUES ('97', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:25');
INSERT INTO `app_access_log` VALUES ('98', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:25');
INSERT INTO `app_access_log` VALUES ('99', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:28');
INSERT INTO `app_access_log` VALUES ('100', '1', 'http://mybook.imooc.test/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:29');
INSERT INTO `app_access_log` VALUES ('101', '1', 'http://mybook.imooc.test/web/account/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:30');
INSERT INTO `app_access_log` VALUES ('102', '1', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:30');
INSERT INTO `app_access_log` VALUES ('103', '1', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:31');
INSERT INTO `app_access_log` VALUES ('104', '1', 'http://mybook.imooc.test/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:31');
INSERT INTO `app_access_log` VALUES ('105', '1', 'http://mybook.imooc.test/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:32');
INSERT INTO `app_access_log` VALUES ('106', '1', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:32');
INSERT INTO `app_access_log` VALUES ('107', '1', 'http://mybook.imooc.test/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:34');
INSERT INTO `app_access_log` VALUES ('108', '1', 'http://mybook.imooc.test/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:35');
INSERT INTO `app_access_log` VALUES ('109', '1', 'http://mybook.imooc.test/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:36');
INSERT INTO `app_access_log` VALUES ('110', '1', 'http://mybook.imooc.test/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-27 12:18:36');
INSERT INTO `app_access_log` VALUES ('111', '1', 'http://mybook.imooc.test/web/user/login', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:57:55');
INSERT INTO `app_access_log` VALUES ('112', '1', 'http://mybook.imooc.test/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:57:55');
INSERT INTO `app_access_log` VALUES ('113', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:57:56');
INSERT INTO `app_access_log` VALUES ('114', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:57:56');
INSERT INTO `app_access_log` VALUES ('115', '1', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:58:03');
INSERT INTO `app_access_log` VALUES ('116', '1', 'http://mybook.imooc.test/web/account/index', '/web/account/index?status=-1&mix_kw=176&p=1', '{\"\\/web\\/account\\/index\":\"\",\"status\":\"-1\",\"mix_kw\":\"176\",\"p\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:58:42');
INSERT INTO `app_access_log` VALUES ('117', '1', 'http://mybook.imooc.test/web/account/index?status=-1&mix_kw=176&p=1', '/web/account/index?status=-1&mix_kw=17&p=1', '{\"\\/web\\/account\\/index\":\"\",\"status\":\"-1\",\"mix_kw\":\"17\",\"p\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:58:47');
INSERT INTO `app_access_log` VALUES ('118', '1', 'http://mybook.imooc.test/web/account/index?status=-1&mix_kw=17&p=1', '/web/account/index?status=1&mix_kw=17&p=1', '{\"\\/web\\/account\\/index\":\"\",\"status\":\"1\",\"mix_kw\":\"17\",\"p\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:58:53');
INSERT INTO `app_access_log` VALUES ('119', '1', 'http://mybook.imooc.test/web/account/index?status=-1&mix_kw=17&p=1', '/web/account/index?status=1&mix_kw=&p=1', '{\"\\/web\\/account\\/index\":\"\",\"status\":\"1\",\"mix_kw\":\"\",\"p\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:59:03');
INSERT INTO `app_access_log` VALUES ('120', '1', 'http://mybook.imooc.test/web/account/index?status=1&mix_kw=&p=1', '/web/account/index?status=1&mix_kw=xiaoxiao&p=1', '{\"\\/web\\/account\\/index\":\"\",\"status\":\"1\",\"mix_kw\":\"xiaoxiao\",\"p\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:59:12');
INSERT INTO `app_access_log` VALUES ('121', '1', 'http://mybook.imooc.test/web/account/index?status=1&mix_kw=xiaoxiao&p=1', '/web/account/set', '{\"\\/web\\/account\\/set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 06:59:45');
INSERT INTO `app_access_log` VALUES ('122', '1', 'http://mybook.imooc.test/web/account/set', '/web/account/set', '{\"\\/web\\/account\\/set\":\"\",\"nickname\":\"ceshi\",\"mobile\":\"1234\",\"email\":\"132@qq.com\",\"login_name\":\"ceshi\",\"login_pwd\":\"123456\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 07:00:03');
INSERT INTO `app_access_log` VALUES ('123', '1', 'http://mybook.imooc.test/web/account/set', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '::1', '', '2017-11-28 07:00:04');
INSERT INTO `app_access_log` VALUES ('124', '5', 'http://mybook.imooc.test/web/user/login', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:01:15');
INSERT INTO `app_access_log` VALUES ('125', '5', 'http://mybook.imooc.test/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:01:16');
INSERT INTO `app_access_log` VALUES ('126', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:01:16');
INSERT INTO `app_access_log` VALUES ('127', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:01:16');
INSERT INTO `app_access_log` VALUES ('128', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:01:20');
INSERT INTO `app_access_log` VALUES ('129', '5', 'http://mybook.imooc.test/web/account/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:01:32');
INSERT INTO `app_access_log` VALUES ('130', '5', 'http://mybook.imooc.test/web/member/index', '/web/member/set', '{\"\\/web\\/member\\/set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:01:34');
INSERT INTO `app_access_log` VALUES ('131', '5', 'http://mybook.imooc.test/web/member/set', '/web/member/set', '{\"\\/web\\/member\\/set\":\"\",\"nickname\":\" \\u5c0f\\u5f3a\",\"mobile\":\"17602183362\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:01:52');
INSERT INTO `app_access_log` VALUES ('132', '5', 'http://mybook.imooc.test/web/member/set', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:01:54');
INSERT INTO `app_access_log` VALUES ('133', '5', 'http://mybook.imooc.test/web/member/index', '/web/member/index?status=-1&mix_kw=%E5%B0%8F', '{\"\\/web\\/member\\/index\":\"\",\"status\":\"-1\",\"mix_kw\":\"\\u5c0f\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:02:03');
INSERT INTO `app_access_log` VALUES ('134', '5', 'http://mybook.imooc.test/web/member/index?status=-1&mix_kw=%E5%B0%8F', '/web/member/index?status=-1&mix_kw=176', '{\"\\/web\\/member\\/index\":\"\",\"status\":\"-1\",\"mix_kw\":\"176\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:02:07');
INSERT INTO `app_access_log` VALUES ('135', '5', 'http://mybook.imooc.test/web/member/index?status=-1&mix_kw=176', '/web/member/index?status=-1&mix_kw=123', '{\"\\/web\\/member\\/index\":\"\",\"status\":\"-1\",\"mix_kw\":\"123\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:02:12');
INSERT INTO `app_access_log` VALUES ('136', '5', 'http://mybook.imooc.test/web/member/index?status=-1&mix_kw=123', '/web/member/index?status=1&mix_kw=', '{\"\\/web\\/member\\/index\":\"\",\"status\":\"1\",\"mix_kw\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:02:17');
INSERT INTO `app_access_log` VALUES ('137', '5', 'http://mybook.imooc.test/web/member/index?status=1&mix_kw=', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:02:54');
INSERT INTO `app_access_log` VALUES ('138', '5', 'http://mybook.imooc.test/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:02:59');
INSERT INTO `app_access_log` VALUES ('139', '5', 'http://mybook.imooc.test/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:08');
INSERT INTO `app_access_log` VALUES ('140', '5', 'http://mybook.imooc.test/web/account/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:10');
INSERT INTO `app_access_log` VALUES ('141', '5', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:12');
INSERT INTO `app_access_log` VALUES ('142', '5', 'http://mybook.imooc.test/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:13');
INSERT INTO `app_access_log` VALUES ('143', '5', 'http://mybook.imooc.test/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:15');
INSERT INTO `app_access_log` VALUES ('144', '5', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:15');
INSERT INTO `app_access_log` VALUES ('145', '5', 'http://mybook.imooc.test/web/stat/index', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:19');
INSERT INTO `app_access_log` VALUES ('146', '5', 'http://mybook.imooc.test/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:22');
INSERT INTO `app_access_log` VALUES ('147', '5', 'http://mybook.imooc.test/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:22');
INSERT INTO `app_access_log` VALUES ('148', '5', 'http://mybook.imooc.test/web/stat/share', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:25');
INSERT INTO `app_access_log` VALUES ('149', '5', 'http://mybook.imooc.test/web/stat/member', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:25');
INSERT INTO `app_access_log` VALUES ('150', '5', 'http://mybook.imooc.test/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:26');
INSERT INTO `app_access_log` VALUES ('151', '5', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:03:27');
INSERT INTO `app_access_log` VALUES ('152', '5', 'http://mybook.imooc.test/web/stat/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:04:06');
INSERT INTO `app_access_log` VALUES ('153', '5', 'http://mybook.imooc.test/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:04:52');
INSERT INTO `app_access_log` VALUES ('154', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:04:54');
INSERT INTO `app_access_log` VALUES ('155', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:04:56');
INSERT INTO `app_access_log` VALUES ('156', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:34:49');
INSERT INTO `app_access_log` VALUES ('157', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-28 07:34:50');
INSERT INTO `app_access_log` VALUES ('158', '5', 'http://mybook.imooc.test/web/book/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:46:04');
INSERT INTO `app_access_log` VALUES ('159', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:46:04');
INSERT INTO `app_access_log` VALUES ('160', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:46:04');
INSERT INTO `app_access_log` VALUES ('161', '5', 'http://mybook.imooc.test/web/book/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:47:06');
INSERT INTO `app_access_log` VALUES ('162', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:47:06');
INSERT INTO `app_access_log` VALUES ('163', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:47:06');
INSERT INTO `app_access_log` VALUES ('164', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:47:08');
INSERT INTO `app_access_log` VALUES ('165', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:47:18');
INSERT INTO `app_access_log` VALUES ('166', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:48:46');
INSERT INTO `app_access_log` VALUES ('167', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:48:47');
INSERT INTO `app_access_log` VALUES ('168', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:49:42');
INSERT INTO `app_access_log` VALUES ('169', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:50:16');
INSERT INTO `app_access_log` VALUES ('170', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:50:26');
INSERT INTO `app_access_log` VALUES ('171', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:50:27');
INSERT INTO `app_access_log` VALUES ('172', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:50:29');
INSERT INTO `app_access_log` VALUES ('173', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/set', '{\"\\/web\\/book\\/set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:50:45');
INSERT INTO `app_access_log` VALUES ('174', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:51:58');
INSERT INTO `app_access_log` VALUES ('175', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/set', '{\"\\/web\\/book\\/set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:51:59');
INSERT INTO `app_access_log` VALUES ('176', '5', 'http://mybook.imooc.test/web/book/set', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:04');
INSERT INTO `app_access_log` VALUES ('177', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:05');
INSERT INTO `app_access_log` VALUES ('178', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:06');
INSERT INTO `app_access_log` VALUES ('179', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:07');
INSERT INTO `app_access_log` VALUES ('180', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:08');
INSERT INTO `app_access_log` VALUES ('181', '5', 'http://mybook.imooc.test/web/book/images', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:12');
INSERT INTO `app_access_log` VALUES ('182', '5', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:18');
INSERT INTO `app_access_log` VALUES ('183', '5', 'http://mybook.imooc.test/web/finance/index', '/web/finance/account', '{\"\\/web\\/finance\\/account\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:21');
INSERT INTO `app_access_log` VALUES ('184', '5', 'http://mybook.imooc.test/web/finance/account', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:22');
INSERT INTO `app_access_log` VALUES ('185', '5', 'http://mybook.imooc.test/web/finance/index', '/web/finance/account', '{\"\\/web\\/finance\\/account\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:24');
INSERT INTO `app_access_log` VALUES ('186', '5', 'http://mybook.imooc.test/web/finance/account', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:25');
INSERT INTO `app_access_log` VALUES ('187', '5', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:27');
INSERT INTO `app_access_log` VALUES ('188', '5', 'http://mybook.imooc.test/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:28');
INSERT INTO `app_access_log` VALUES ('189', '5', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:31');
INSERT INTO `app_access_log` VALUES ('190', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:33');
INSERT INTO `app_access_log` VALUES ('191', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:34');
INSERT INTO `app_access_log` VALUES ('192', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:37');
INSERT INTO `app_access_log` VALUES ('193', '5', 'http://mybook.imooc.test/web/book/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:39');
INSERT INTO `app_access_log` VALUES ('194', '5', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:41');
INSERT INTO `app_access_log` VALUES ('195', '5', 'http://mybook.imooc.test/web/brand/info', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:43');
INSERT INTO `app_access_log` VALUES ('196', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:43');
INSERT INTO `app_access_log` VALUES ('197', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:43');
INSERT INTO `app_access_log` VALUES ('198', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:53');
INSERT INTO `app_access_log` VALUES ('199', '5', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:55');
INSERT INTO `app_access_log` VALUES ('200', '5', 'http://mybook.imooc.test/web/brand/info', '/web/brand/images', '{\"\\/web\\/brand\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:57');
INSERT INTO `app_access_log` VALUES ('201', '5', 'http://mybook.imooc.test/web/brand/images', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:58');
INSERT INTO `app_access_log` VALUES ('202', '5', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:52:59');
INSERT INTO `app_access_log` VALUES ('203', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:01');
INSERT INTO `app_access_log` VALUES ('204', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:02');
INSERT INTO `app_access_log` VALUES ('205', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:03');
INSERT INTO `app_access_log` VALUES ('206', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:04');
INSERT INTO `app_access_log` VALUES ('207', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:04');
INSERT INTO `app_access_log` VALUES ('208', '5', 'http://mybook.imooc.test/web/book/images', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:05');
INSERT INTO `app_access_log` VALUES ('209', '5', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:08');
INSERT INTO `app_access_log` VALUES ('210', '5', 'http://mybook.imooc.test/web/finance/index', '/web/finance/account', '{\"\\/web\\/finance\\/account\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:10');
INSERT INTO `app_access_log` VALUES ('211', '5', 'http://mybook.imooc.test/web/finance/account', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:12');
INSERT INTO `app_access_log` VALUES ('212', '5', 'http://mybook.imooc.test/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:14');
INSERT INTO `app_access_log` VALUES ('213', '5', 'http://mybook.imooc.test/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:16');
INSERT INTO `app_access_log` VALUES ('214', '5', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:17');
INSERT INTO `app_access_log` VALUES ('215', '5', 'http://mybook.imooc.test/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:19');
INSERT INTO `app_access_log` VALUES ('216', '5', 'http://mybook.imooc.test/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:21');
INSERT INTO `app_access_log` VALUES ('217', '5', 'http://mybook.imooc.test/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:22');
INSERT INTO `app_access_log` VALUES ('218', '5', 'http://mybook.imooc.test/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:22');
INSERT INTO `app_access_log` VALUES ('219', '5', 'http://mybook.imooc.test/web/stat/share', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:24');
INSERT INTO `app_access_log` VALUES ('220', '5', 'http://mybook.imooc.test/web/stat/member', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:25');
INSERT INTO `app_access_log` VALUES ('221', '5', 'http://mybook.imooc.test/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:26');
INSERT INTO `app_access_log` VALUES ('222', '5', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:26');
INSERT INTO `app_access_log` VALUES ('223', '5', 'http://mybook.imooc.test/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:32');
INSERT INTO `app_access_log` VALUES ('224', '5', 'http://mybook.imooc.test/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:34');
INSERT INTO `app_access_log` VALUES ('225', '5', 'http://mybook.imooc.test/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:35');
INSERT INTO `app_access_log` VALUES ('226', '5', 'http://mybook.imooc.test/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:35');
INSERT INTO `app_access_log` VALUES ('227', '5', 'http://mybook.imooc.test/web/stat/share', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:38');
INSERT INTO `app_access_log` VALUES ('228', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:38');
INSERT INTO `app_access_log` VALUES ('229', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 09:53:38');
INSERT INTO `app_access_log` VALUES ('230', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:01:22');
INSERT INTO `app_access_log` VALUES ('231', '5', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:01:33');
INSERT INTO `app_access_log` VALUES ('232', '5', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:01:39');
INSERT INTO `app_access_log` VALUES ('233', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:01:46');
INSERT INTO `app_access_log` VALUES ('234', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:01:48');
INSERT INTO `app_access_log` VALUES ('235', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:11');
INSERT INTO `app_access_log` VALUES ('236', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\",\"name\":\"\\u6d77\\u5357\",\"weight\":\"1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:18');
INSERT INTO `app_access_log` VALUES ('237', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:20');
INSERT INTO `app_access_log` VALUES ('238', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:22');
INSERT INTO `app_access_log` VALUES ('239', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\",\"name\":\"\\u5c71\\u4e1c\",\"weight\":\"1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:29');
INSERT INTO `app_access_log` VALUES ('240', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:30');
INSERT INTO `app_access_log` VALUES ('241', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:33');
INSERT INTO `app_access_log` VALUES ('242', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\",\"name\":\"\\u6c5f\\u82cf\",\"weight\":\"1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:37');
INSERT INTO `app_access_log` VALUES ('243', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:39');
INSERT INTO `app_access_log` VALUES ('244', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:43');
INSERT INTO `app_access_log` VALUES ('245', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\",\"name\":\"\\u56db\\u5ddd\",\"weight\":\"1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:46');
INSERT INTO `app_access_log` VALUES ('246', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:47');
INSERT INTO `app_access_log` VALUES ('247', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:51');
INSERT INTO `app_access_log` VALUES ('248', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\",\"name\":\"\\u4e91\\u5357\",\"weight\":\"1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:55');
INSERT INTO `app_access_log` VALUES ('249', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:03:56');
INSERT INTO `app_access_log` VALUES ('250', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:04:01');
INSERT INTO `app_access_log` VALUES ('251', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\",\"name\":\"\\u5e7f\\u897f\",\"weight\":\"1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:04:05');
INSERT INTO `app_access_log` VALUES ('252', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:04:07');
INSERT INTO `app_access_log` VALUES ('253', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:04:08');
INSERT INTO `app_access_log` VALUES ('254', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat_set', '{\"\\/web\\/book\\/cat_set\":\"\",\"name\":\"\\u8d35\\u5dde\",\"weight\":\"1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:04:13');
INSERT INTO `app_access_log` VALUES ('255', '5', 'http://mybook.imooc.test/web/book/cat_set', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:04:14');
INSERT INTO `app_access_log` VALUES ('256', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:04:27');
INSERT INTO `app_access_log` VALUES ('257', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/set', '{\"\\/web\\/book\\/set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:04:32');
INSERT INTO `app_access_log` VALUES ('258', '5', 'http://mybook.imooc.test/web/book/set', '/web/upload/pic', '{\"\\/web\\/upload\\/pic\":\"\",\"bucket\":\"book\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:08:34');
INSERT INTO `app_access_log` VALUES ('259', '5', 'http://mybook.imooc.test/web/book/set', '/web/book/set', '{\"\\/web\\/book\\/set\":\"\",\"cat_id\":\"1\",\"name\":\"\\u4e09\\u4e9a\\u7389\\u6d77\\u56fd\\u9645\\u5ea6\\u5047\\u9152\\u5e97\",\"price\":\"1000\",\"main_image\":\"20171129\\/e783af4d5b7583bdad97a84a7ad2a994.png\",\"stock\":\"1\",\"tags\":\"\\u4e09\\u4e9a\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:10:15');
INSERT INTO `app_access_log` VALUES ('260', '5', 'http://mybook.imooc.test/web/book/set', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:10:16');
INSERT INTO `app_access_log` VALUES ('261', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/info?id=1', '{\"\\/web\\/book\\/info\":\"\",\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:10:20');
INSERT INTO `app_access_log` VALUES ('262', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/info?id=1', '{\"\\/web\\/book\\/info\":\"\",\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:10:55');
INSERT INTO `app_access_log` VALUES ('263', '5', 'http://mybook.imooc.test/web/book/info?id=1', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:11:00');
INSERT INTO `app_access_log` VALUES ('264', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:11:02');
INSERT INTO `app_access_log` VALUES ('265', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:11:04');
INSERT INTO `app_access_log` VALUES ('266', '5', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:11:05');
INSERT INTO `app_access_log` VALUES ('267', '5', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:16');
INSERT INTO `app_access_log` VALUES ('268', '5', 'http://mybook.imooc.test/web/finance/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:17');
INSERT INTO `app_access_log` VALUES ('269', '5', 'http://mybook.imooc.test/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:18');
INSERT INTO `app_access_log` VALUES ('270', '5', 'http://mybook.imooc.test/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:19');
INSERT INTO `app_access_log` VALUES ('271', '5', 'http://mybook.imooc.test/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:19');
INSERT INTO `app_access_log` VALUES ('272', '5', 'http://mybook.imooc.test/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:20');
INSERT INTO `app_access_log` VALUES ('273', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:20');
INSERT INTO `app_access_log` VALUES ('274', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:20');
INSERT INTO `app_access_log` VALUES ('275', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:21');
INSERT INTO `app_access_log` VALUES ('276', '5', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:21');
INSERT INTO `app_access_log` VALUES ('277', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:27');
INSERT INTO `app_access_log` VALUES ('278', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:28');
INSERT INTO `app_access_log` VALUES ('279', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:29');
INSERT INTO `app_access_log` VALUES ('280', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:30');
INSERT INTO `app_access_log` VALUES ('281', '5', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:33');
INSERT INTO `app_access_log` VALUES ('282', '5', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:35');
INSERT INTO `app_access_log` VALUES ('283', '5', 'http://mybook.imooc.test/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:36');
INSERT INTO `app_access_log` VALUES ('284', '5', 'http://mybook.imooc.test/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:38');
INSERT INTO `app_access_log` VALUES ('285', '5', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:38');
INSERT INTO `app_access_log` VALUES ('286', '5', 'http://mybook.imooc.test/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:12:41');
INSERT INTO `app_access_log` VALUES ('287', '5', 'http://mybook.imooc.test/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:26');
INSERT INTO `app_access_log` VALUES ('288', '5', 'http://mybook.imooc.test/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:29');
INSERT INTO `app_access_log` VALUES ('289', '5', 'http://mybook.imooc.test/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:31');
INSERT INTO `app_access_log` VALUES ('290', '5', 'http://mybook.imooc.test/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:31');
INSERT INTO `app_access_log` VALUES ('291', '5', 'http://mybook.imooc.test/web/stat/share', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:32');
INSERT INTO `app_access_log` VALUES ('292', '5', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:32');
INSERT INTO `app_access_log` VALUES ('293', '5', 'http://mybook.imooc.test/web/stat/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:34');
INSERT INTO `app_access_log` VALUES ('294', '5', 'http://mybook.imooc.test/web/qrcode/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:35');
INSERT INTO `app_access_log` VALUES ('295', '5', 'http://mybook.imooc.test/web/finance/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:38');
INSERT INTO `app_access_log` VALUES ('296', '5', 'http://mybook.imooc.test/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:40');
INSERT INTO `app_access_log` VALUES ('297', '5', 'http://mybook.imooc.test/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:45');
INSERT INTO `app_access_log` VALUES ('298', '5', 'http://mybook.imooc.test/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:55');
INSERT INTO `app_access_log` VALUES ('299', '5', 'http://mybook.imooc.test/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:58');
INSERT INTO `app_access_log` VALUES ('300', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:58');
INSERT INTO `app_access_log` VALUES ('301', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:13:58');
INSERT INTO `app_access_log` VALUES ('302', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:15:50');
INSERT INTO `app_access_log` VALUES ('303', '5', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:06');
INSERT INTO `app_access_log` VALUES ('304', '5', 'http://mybook.imooc.test/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:08');
INSERT INTO `app_access_log` VALUES ('305', '5', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:09');
INSERT INTO `app_access_log` VALUES ('306', '5', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:10');
INSERT INTO `app_access_log` VALUES ('307', '5', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:13');
INSERT INTO `app_access_log` VALUES ('308', '5', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:16');
INSERT INTO `app_access_log` VALUES ('309', '5', 'http://mybook.imooc.test/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:17');
INSERT INTO `app_access_log` VALUES ('310', '5', 'http://mybook.imooc.test/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:19');
INSERT INTO `app_access_log` VALUES ('311', '5', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:19');
INSERT INTO `app_access_log` VALUES ('312', '5', 'http://mybook.imooc.test/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:23');
INSERT INTO `app_access_log` VALUES ('313', '5', 'http://mybook.imooc.test/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:25');
INSERT INTO `app_access_log` VALUES ('314', '5', 'http://mybook.imooc.test/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:26');
INSERT INTO `app_access_log` VALUES ('315', '5', 'http://mybook.imooc.test/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:26');
INSERT INTO `app_access_log` VALUES ('316', '5', 'http://mybook.imooc.test/web/stat/share', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:29');
INSERT INTO `app_access_log` VALUES ('317', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:30');
INSERT INTO `app_access_log` VALUES ('318', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:30');
INSERT INTO `app_access_log` VALUES ('319', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:32');
INSERT INTO `app_access_log` VALUES ('320', '5', 'http://mybook.imooc.test/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:34');
INSERT INTO `app_access_log` VALUES ('321', '5', 'http://mybook.imooc.test/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:36');
INSERT INTO `app_access_log` VALUES ('322', '5', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:38');
INSERT INTO `app_access_log` VALUES ('323', '5', 'http://mybook.imooc.test/web/member/index', '/web/member/info?id=1', '{\"\\/web\\/member\\/info\":\"\",\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:48');
INSERT INTO `app_access_log` VALUES ('324', '5', 'http://mybook.imooc.test/web/member/info?id=1', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:16:59');
INSERT INTO `app_access_log` VALUES ('325', '5', 'http://mybook.imooc.test/web/member/comment', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:01');
INSERT INTO `app_access_log` VALUES ('326', '5', 'http://mybook.imooc.test/web/member/index', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:02');
INSERT INTO `app_access_log` VALUES ('327', '5', 'http://mybook.imooc.test/web/member/comment', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:09');
INSERT INTO `app_access_log` VALUES ('328', '5', 'http://mybook.imooc.test/web/member/index', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:10');
INSERT INTO `app_access_log` VALUES ('329', '5', 'http://mybook.imooc.test/web/member/index', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:28');
INSERT INTO `app_access_log` VALUES ('330', '5', 'http://mybook.imooc.test/web/member/comment', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:34');
INSERT INTO `app_access_log` VALUES ('331', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:37');
INSERT INTO `app_access_log` VALUES ('332', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:38');
INSERT INTO `app_access_log` VALUES ('333', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:40');
INSERT INTO `app_access_log` VALUES ('334', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:17:41');
INSERT INTO `app_access_log` VALUES ('335', '5', 'http://mybook.imooc.test/web/book/images', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:16');
INSERT INTO `app_access_log` VALUES ('336', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:19');
INSERT INTO `app_access_log` VALUES ('337', '5', 'http://mybook.imooc.test/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:30');
INSERT INTO `app_access_log` VALUES ('338', '5', 'http://mybook.imooc.test/web/brand/info', '/web/brand/images', '{\"\\/web\\/brand\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:32');
INSERT INTO `app_access_log` VALUES ('339', '5', 'http://mybook.imooc.test/web/brand/images', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:35');
INSERT INTO `app_access_log` VALUES ('340', '5', 'http://mybook.imooc.test/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:37');
INSERT INTO `app_access_log` VALUES ('341', '5', 'http://mybook.imooc.test/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:43');
INSERT INTO `app_access_log` VALUES ('342', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:43');
INSERT INTO `app_access_log` VALUES ('343', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:43');
INSERT INTO `app_access_log` VALUES ('344', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:47');
INSERT INTO `app_access_log` VALUES ('345', '5', 'http://mybook.imooc.test/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:49');
INSERT INTO `app_access_log` VALUES ('346', '5', 'http://mybook.imooc.test/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:51');
INSERT INTO `app_access_log` VALUES ('347', '5', 'http://mybook.imooc.test/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:52');
INSERT INTO `app_access_log` VALUES ('348', '5', 'http://mybook.imooc.test/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:53');
INSERT INTO `app_access_log` VALUES ('349', '5', 'http://mybook.imooc.test/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:19:53');
INSERT INTO `app_access_log` VALUES ('350', '5', 'http://mybook.imooc.test/web/stat/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:00');
INSERT INTO `app_access_log` VALUES ('351', '5', 'http://mybook.imooc.test/web/finance/index', '/web/finance/account', '{\"\\/web\\/finance\\/account\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:12');
INSERT INTO `app_access_log` VALUES ('352', '5', 'http://mybook.imooc.test/web/finance/account', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:15');
INSERT INTO `app_access_log` VALUES ('353', '5', 'http://mybook.imooc.test/web/finance/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:28');
INSERT INTO `app_access_log` VALUES ('354', '5', 'http://mybook.imooc.test/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:29');
INSERT INTO `app_access_log` VALUES ('355', '5', 'http://mybook.imooc.test/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:30');
INSERT INTO `app_access_log` VALUES ('356', '5', 'http://mybook.imooc.test/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:31');
INSERT INTO `app_access_log` VALUES ('357', '5', 'http://mybook.imooc.test/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:32');
INSERT INTO `app_access_log` VALUES ('358', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:32');
INSERT INTO `app_access_log` VALUES ('359', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 10:20:32');
INSERT INTO `app_access_log` VALUES ('360', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:12:18');
INSERT INTO `app_access_log` VALUES ('361', '5', 'http://mybook.imooc.test/web/account/index', '/web/account/info?id=5', '{\"\\/web\\/account\\/info\":\"\",\"id\":\"5\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:12:29');
INSERT INTO `app_access_log` VALUES ('362', '5', 'http://mybook.imooc.test/web/account/info?id=5', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:12:38');
INSERT INTO `app_access_log` VALUES ('363', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:12:38');
INSERT INTO `app_access_log` VALUES ('364', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:12:38');
INSERT INTO `app_access_log` VALUES ('365', '5', 'http://mybook.imooc.test/web/dashboard/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:13:03');
INSERT INTO `app_access_log` VALUES ('366', '5', 'http://mybook.imooc.test/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:13:07');
INSERT INTO `app_access_log` VALUES ('367', '5', 'http://mybook.imooc.test/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:13:09');
INSERT INTO `app_access_log` VALUES ('368', '5', 'http://mybook.imooc.test/web/book/images', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:13:14');
INSERT INTO `app_access_log` VALUES ('369', '5', 'http://mybook.imooc.test/web/member/index', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:13:25');
INSERT INTO `app_access_log` VALUES ('370', '5', 'http://mybook.imooc.test/web/member/comment', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:13:26');
INSERT INTO `app_access_log` VALUES ('371', '5', 'http://mybook.imooc.test/web/member/comment', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:14:46');
INSERT INTO `app_access_log` VALUES ('372', '5', 'http://mybook.imooc.test/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:16:05');
INSERT INTO `app_access_log` VALUES ('373', '1', 'http://mybook.imooc.com/web/user/login', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:49:34');
INSERT INTO `app_access_log` VALUES ('374', '1', 'http://mybook.imooc.com/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:49:34');
INSERT INTO `app_access_log` VALUES ('375', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:49:35');
INSERT INTO `app_access_log` VALUES ('376', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:49:35');
INSERT INTO `app_access_log` VALUES ('377', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:56:56');
INSERT INTO `app_access_log` VALUES ('378', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:56:58');
INSERT INTO `app_access_log` VALUES ('379', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 14:56:59');
INSERT INTO `app_access_log` VALUES ('380', '1', '', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:13:53');
INSERT INTO `app_access_log` VALUES ('381', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:14:04');
INSERT INTO `app_access_log` VALUES ('382', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:14:08');
INSERT INTO `app_access_log` VALUES ('383', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:14:10');
INSERT INTO `app_access_log` VALUES ('384', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:14:59');
INSERT INTO `app_access_log` VALUES ('385', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:16:07');
INSERT INTO `app_access_log` VALUES ('386', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:16:32');
INSERT INTO `app_access_log` VALUES ('387', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:00');
INSERT INTO `app_access_log` VALUES ('388', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:03');
INSERT INTO `app_access_log` VALUES ('389', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:04');
INSERT INTO `app_access_log` VALUES ('390', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:05');
INSERT INTO `app_access_log` VALUES ('391', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:06');
INSERT INTO `app_access_log` VALUES ('392', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:08');
INSERT INTO `app_access_log` VALUES ('393', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:09');
INSERT INTO `app_access_log` VALUES ('394', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:12');
INSERT INTO `app_access_log` VALUES ('395', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:13');
INSERT INTO `app_access_log` VALUES ('396', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:17:32');
INSERT INTO `app_access_log` VALUES ('397', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:18:11');
INSERT INTO `app_access_log` VALUES ('398', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:18:12');
INSERT INTO `app_access_log` VALUES ('399', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:18:13');
INSERT INTO `app_access_log` VALUES ('400', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:18:14');
INSERT INTO `app_access_log` VALUES ('401', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:18:16');
INSERT INTO `app_access_log` VALUES ('402', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:18:18');
INSERT INTO `app_access_log` VALUES ('403', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:19:00');
INSERT INTO `app_access_log` VALUES ('404', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:19:01');
INSERT INTO `app_access_log` VALUES ('405', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:19:02');
INSERT INTO `app_access_log` VALUES ('406', '1', 'http://mybook.imooc.com/', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:20:38');
INSERT INTO `app_access_log` VALUES ('407', '1', 'http://mybook.imooc.com/', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:20:38');
INSERT INTO `app_access_log` VALUES ('408', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:20:39');
INSERT INTO `app_access_log` VALUES ('409', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:20:39');
INSERT INTO `app_access_log` VALUES ('410', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:20:59');
INSERT INTO `app_access_log` VALUES ('411', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:00');
INSERT INTO `app_access_log` VALUES ('412', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:01');
INSERT INTO `app_access_log` VALUES ('413', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:02');
INSERT INTO `app_access_log` VALUES ('414', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:03');
INSERT INTO `app_access_log` VALUES ('415', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:04');
INSERT INTO `app_access_log` VALUES ('416', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:05');
INSERT INTO `app_access_log` VALUES ('417', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:05');
INSERT INTO `app_access_log` VALUES ('418', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:06');
INSERT INTO `app_access_log` VALUES ('419', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:07');
INSERT INTO `app_access_log` VALUES ('420', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:08');
INSERT INTO `app_access_log` VALUES ('421', '1', 'http://mybook.imooc.com/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:21:08');
INSERT INTO `app_access_log` VALUES ('422', '1', 'http://mybook.imooc.com/web/stat/share', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:09');
INSERT INTO `app_access_log` VALUES ('423', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:10');
INSERT INTO `app_access_log` VALUES ('424', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:11');
INSERT INTO `app_access_log` VALUES ('425', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:11');
INSERT INTO `app_access_log` VALUES ('426', '1', 'http://mybook.imooc.com/web/stat/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:13');
INSERT INTO `app_access_log` VALUES ('427', '1', 'http://mybook.imooc.com/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:15');
INSERT INTO `app_access_log` VALUES ('428', '1', 'http://mybook.imooc.com/web/brand/info', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:16');
INSERT INTO `app_access_log` VALUES ('429', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:18');
INSERT INTO `app_access_log` VALUES ('430', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:19');
INSERT INTO `app_access_log` VALUES ('431', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:21');
INSERT INTO `app_access_log` VALUES ('432', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:25');
INSERT INTO `app_access_log` VALUES ('433', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 15:22:26');
INSERT INTO `app_access_log` VALUES ('434', '1', 'http://mybook.imooc.com/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 18:05:16');
INSERT INTO `app_access_log` VALUES ('435', '1', 'http://mybook.imooc.com/web/book/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-29 18:05:17');
INSERT INTO `app_access_log` VALUES ('436', '1', 'http://mybook.imooc.com/', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:30:25');
INSERT INTO `app_access_log` VALUES ('437', '1', 'http://mybook.imooc.com/', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:30:25');
INSERT INTO `app_access_log` VALUES ('438', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:30:26');
INSERT INTO `app_access_log` VALUES ('439', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:30:26');
INSERT INTO `app_access_log` VALUES ('440', '1', 'http://mybook.imooc.com/web/user/login', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:08');
INSERT INTO `app_access_log` VALUES ('441', '1', 'http://mybook.imooc.com/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:08');
INSERT INTO `app_access_log` VALUES ('442', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:08');
INSERT INTO `app_access_log` VALUES ('443', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:08');
INSERT INTO `app_access_log` VALUES ('444', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:12');
INSERT INTO `app_access_log` VALUES ('445', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:13');
INSERT INTO `app_access_log` VALUES ('446', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:15');
INSERT INTO `app_access_log` VALUES ('447', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:16');
INSERT INTO `app_access_log` VALUES ('448', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:17');
INSERT INTO `app_access_log` VALUES ('449', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:18');
INSERT INTO `app_access_log` VALUES ('450', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:19');
INSERT INTO `app_access_log` VALUES ('451', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:19');
INSERT INTO `app_access_log` VALUES ('452', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:21');
INSERT INTO `app_access_log` VALUES ('453', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:22');
INSERT INTO `app_access_log` VALUES ('454', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:23');
INSERT INTO `app_access_log` VALUES ('455', '1', 'http://mybook.imooc.com/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:23');
INSERT INTO `app_access_log` VALUES ('456', '1', 'http://mybook.imooc.com/web/stat/share', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:24');
INSERT INTO `app_access_log` VALUES ('457', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:24');
INSERT INTO `app_access_log` VALUES ('458', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:25');
INSERT INTO `app_access_log` VALUES ('459', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:43');
INSERT INTO `app_access_log` VALUES ('460', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:44');
INSERT INTO `app_access_log` VALUES ('461', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:45');
INSERT INTO `app_access_log` VALUES ('462', '1', 'http://mybook.imooc.com/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:45');
INSERT INTO `app_access_log` VALUES ('463', '1', 'http://mybook.imooc.com/web/stat/share', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:46');
INSERT INTO `app_access_log` VALUES ('464', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:49');
INSERT INTO `app_access_log` VALUES ('465', '1', 'http://mybook.imooc.com/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:54');
INSERT INTO `app_access_log` VALUES ('466', '1', 'http://mybook.imooc.com/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:55');
INSERT INTO `app_access_log` VALUES ('467', '1', 'http://mybook.imooc.com/web/book/images', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:32:56');
INSERT INTO `app_access_log` VALUES ('468', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:00');
INSERT INTO `app_access_log` VALUES ('469', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:01');
INSERT INTO `app_access_log` VALUES ('470', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:02');
INSERT INTO `app_access_log` VALUES ('471', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:03');
INSERT INTO `app_access_log` VALUES ('472', '1', 'http://mybook.imooc.com/web/finance/index', '/web/finance/account', '{\"\\/web\\/finance\\/account\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:06');
INSERT INTO `app_access_log` VALUES ('473', '1', 'http://mybook.imooc.com/web/finance/account', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:07');
INSERT INTO `app_access_log` VALUES ('474', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:07');
INSERT INTO `app_access_log` VALUES ('475', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:10');
INSERT INTO `app_access_log` VALUES ('476', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:10');
INSERT INTO `app_access_log` VALUES ('477', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:33:10');
INSERT INTO `app_access_log` VALUES ('478', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:40:26');
INSERT INTO `app_access_log` VALUES ('479', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:40:28');
INSERT INTO `app_access_log` VALUES ('480', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:40:30');
INSERT INTO `app_access_log` VALUES ('481', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:40:31');
INSERT INTO `app_access_log` VALUES ('482', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:40:32');
INSERT INTO `app_access_log` VALUES ('483', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:40:33');
INSERT INTO `app_access_log` VALUES ('484', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:40:35');
INSERT INTO `app_access_log` VALUES ('485', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:40:35');
INSERT INTO `app_access_log` VALUES ('486', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:40:35');
INSERT INTO `app_access_log` VALUES ('487', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:03');
INSERT INTO `app_access_log` VALUES ('488', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:07');
INSERT INTO `app_access_log` VALUES ('489', '1', 'http://mybook.imooc.com/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:10');
INSERT INTO `app_access_log` VALUES ('490', '1', 'http://mybook.imooc.com/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:11');
INSERT INTO `app_access_log` VALUES ('491', '1', 'http://mybook.imooc.com/web/book/images', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:13');
INSERT INTO `app_access_log` VALUES ('492', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:13');
INSERT INTO `app_access_log` VALUES ('493', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:13');
INSERT INTO `app_access_log` VALUES ('494', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:14');
INSERT INTO `app_access_log` VALUES ('495', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:15');
INSERT INTO `app_access_log` VALUES ('496', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:16');
INSERT INTO `app_access_log` VALUES ('497', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:17');
INSERT INTO `app_access_log` VALUES ('498', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:18');
INSERT INTO `app_access_log` VALUES ('499', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:19');
INSERT INTO `app_access_log` VALUES ('500', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:20');
INSERT INTO `app_access_log` VALUES ('501', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 10:50:20');
INSERT INTO `app_access_log` VALUES ('502', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 11:49:58');
INSERT INTO `app_access_log` VALUES ('503', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 11:49:59');
INSERT INTO `app_access_log` VALUES ('504', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 11:50:00');
INSERT INTO `app_access_log` VALUES ('505', '1', 'http://mybook.imooc.com/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 11:50:01');
INSERT INTO `app_access_log` VALUES ('506', '1', 'http://mybook.imooc.com/web/stat/share', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 11:50:01');
INSERT INTO `app_access_log` VALUES ('507', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 11:50:02');
INSERT INTO `app_access_log` VALUES ('508', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 11:50:02');
INSERT INTO `app_access_log` VALUES ('509', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:14');
INSERT INTO `app_access_log` VALUES ('510', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:15');
INSERT INTO `app_access_log` VALUES ('511', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:16');
INSERT INTO `app_access_log` VALUES ('512', '1', 'http://mybook.imooc.com/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:16');
INSERT INTO `app_access_log` VALUES ('513', '1', 'http://mybook.imooc.com/web/stat/share', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:17');
INSERT INTO `app_access_log` VALUES ('514', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:18');
INSERT INTO `app_access_log` VALUES ('515', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:18');
INSERT INTO `app_access_log` VALUES ('516', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:19');
INSERT INTO `app_access_log` VALUES ('517', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:20');
INSERT INTO `app_access_log` VALUES ('518', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:21');
INSERT INTO `app_access_log` VALUES ('519', '1', 'http://mybook.imooc.com/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:21');
INSERT INTO `app_access_log` VALUES ('520', '1', 'http://mybook.imooc.com/web/stat/share', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:22');
INSERT INTO `app_access_log` VALUES ('521', '1', 'http://mybook.imooc.com/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:23');
INSERT INTO `app_access_log` VALUES ('522', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:23');
INSERT INTO `app_access_log` VALUES ('523', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:23');
INSERT INTO `app_access_log` VALUES ('524', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:24');
INSERT INTO `app_access_log` VALUES ('525', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:25');
INSERT INTO `app_access_log` VALUES ('526', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:26');
INSERT INTO `app_access_log` VALUES ('527', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:27');
INSERT INTO `app_access_log` VALUES ('528', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:29');
INSERT INTO `app_access_log` VALUES ('529', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/qrcode/set', '{\"\\/web\\/qrcode\\/set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:32');
INSERT INTO `app_access_log` VALUES ('530', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:47');
INSERT INTO `app_access_log` VALUES ('531', '1', 'http://mybook.imooc.com/web/finance/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:48');
INSERT INTO `app_access_log` VALUES ('532', '1', 'http://mybook.imooc.com/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:49');
INSERT INTO `app_access_log` VALUES ('533', '1', 'http://mybook.imooc.com/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:51');
INSERT INTO `app_access_log` VALUES ('534', '1', 'http://mybook.imooc.com/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:51');
INSERT INTO `app_access_log` VALUES ('535', '1', 'http://mybook.imooc.com/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:51');
INSERT INTO `app_access_log` VALUES ('536', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:52');
INSERT INTO `app_access_log` VALUES ('537', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 13:07:52');
INSERT INTO `app_access_log` VALUES ('538', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:19');
INSERT INTO `app_access_log` VALUES ('539', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:21');
INSERT INTO `app_access_log` VALUES ('540', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:25');
INSERT INTO `app_access_log` VALUES ('541', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:42');
INSERT INTO `app_access_log` VALUES ('542', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:44');
INSERT INTO `app_access_log` VALUES ('543', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:45');
INSERT INTO `app_access_log` VALUES ('544', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:47');
INSERT INTO `app_access_log` VALUES ('545', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:47');
INSERT INTO `app_access_log` VALUES ('546', '1', 'http://mybook.imooc.com/web/stat/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:51');
INSERT INTO `app_access_log` VALUES ('547', '1', 'http://mybook.imooc.com/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:52');
INSERT INTO `app_access_log` VALUES ('548', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:53');
INSERT INTO `app_access_log` VALUES ('549', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:53');
INSERT INTO `app_access_log` VALUES ('550', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:54');
INSERT INTO `app_access_log` VALUES ('551', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:54');
INSERT INTO `app_access_log` VALUES ('552', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:03:55');
INSERT INTO `app_access_log` VALUES ('553', '1', 'http://mybook.imooc.com/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:04:01');
INSERT INTO `app_access_log` VALUES ('554', '1', 'http://mybook.imooc.com/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:04:07');
INSERT INTO `app_access_log` VALUES ('555', '1', 'http://mybook.imooc.com/web/book/images', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:04:10');
INSERT INTO `app_access_log` VALUES ('556', '1', 'http://mybook.imooc.com/web/book/cat', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:04:11');
INSERT INTO `app_access_log` VALUES ('557', '1', 'http://mybook.imooc.com/web/book/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:04:13');
INSERT INTO `app_access_log` VALUES ('558', '1', 'http://mybook.imooc.com/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:04:15');
INSERT INTO `app_access_log` VALUES ('559', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:04:17');
INSERT INTO `app_access_log` VALUES ('560', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:04:17');
INSERT INTO `app_access_log` VALUES ('561', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:05:56');
INSERT INTO `app_access_log` VALUES ('562', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:05:57');
INSERT INTO `app_access_log` VALUES ('563', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:05:58');
INSERT INTO `app_access_log` VALUES ('564', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:05:59');
INSERT INTO `app_access_log` VALUES ('565', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:01');
INSERT INTO `app_access_log` VALUES ('566', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:02');
INSERT INTO `app_access_log` VALUES ('567', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:04');
INSERT INTO `app_access_log` VALUES ('568', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:04');
INSERT INTO `app_access_log` VALUES ('569', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:04');
INSERT INTO `app_access_log` VALUES ('570', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:10');
INSERT INTO `app_access_log` VALUES ('571', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:11');
INSERT INTO `app_access_log` VALUES ('572', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:12');
INSERT INTO `app_access_log` VALUES ('573', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:13');
INSERT INTO `app_access_log` VALUES ('574', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:14');
INSERT INTO `app_access_log` VALUES ('575', '1', 'http://mybook.imooc.com/web/finance/index', '/web/finance/account', '{\"\\/web\\/finance\\/account\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:16');
INSERT INTO `app_access_log` VALUES ('576', '1', 'http://mybook.imooc.com/web/finance/account', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:17');
INSERT INTO `app_access_log` VALUES ('577', '1', 'http://mybook.imooc.com/web/finance/index', '/web/finance/index?status=1', '{\"\\/web\\/finance\\/index\":\"\",\"status\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:43');
INSERT INTO `app_access_log` VALUES ('578', '1', 'http://mybook.imooc.com/web/finance/index?status=1', '/web/finance/index?status=-8', '{\"\\/web\\/finance\\/index\":\"\",\"status\":\"-8\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:45');
INSERT INTO `app_access_log` VALUES ('579', '1', 'http://mybook.imooc.com/web/finance/index?status=-8', '/web/finance/index?status=0', '{\"\\/web\\/finance\\/index\":\"\",\"status\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:46');
INSERT INTO `app_access_log` VALUES ('580', '1', 'http://mybook.imooc.com/web/finance/index?status=0', '/web/finance/account', '{\"\\/web\\/finance\\/account\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:48');
INSERT INTO `app_access_log` VALUES ('581', '1', 'http://mybook.imooc.com/web/finance/account', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:06:49');
INSERT INTO `app_access_log` VALUES ('582', '1', 'http://mybook.imooc.com/web/finance/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:15');
INSERT INTO `app_access_log` VALUES ('583', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:17');
INSERT INTO `app_access_log` VALUES ('584', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:18');
INSERT INTO `app_access_log` VALUES ('585', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:20');
INSERT INTO `app_access_log` VALUES ('586', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:21');
INSERT INTO `app_access_log` VALUES ('587', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:23');
INSERT INTO `app_access_log` VALUES ('588', '1', 'http://mybook.imooc.com/web/member/comment', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:25');
INSERT INTO `app_access_log` VALUES ('589', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:26');
INSERT INTO `app_access_log` VALUES ('590', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:29');
INSERT INTO `app_access_log` VALUES ('591', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:29');
INSERT INTO `app_access_log` VALUES ('592', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:07:29');
INSERT INTO `app_access_log` VALUES ('593', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:09:53');
INSERT INTO `app_access_log` VALUES ('594', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:09:55');
INSERT INTO `app_access_log` VALUES ('595', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:09:56');
INSERT INTO `app_access_log` VALUES ('596', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:09:58');
INSERT INTO `app_access_log` VALUES ('597', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:09:59');
INSERT INTO `app_access_log` VALUES ('598', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:10:00');
INSERT INTO `app_access_log` VALUES ('599', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:12:10');
INSERT INTO `app_access_log` VALUES ('600', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:12:55');
INSERT INTO `app_access_log` VALUES ('601', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:12:55');
INSERT INTO `app_access_log` VALUES ('602', '1', 'http://mybook.imooc.com/web/stat/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:12:57');
INSERT INTO `app_access_log` VALUES ('603', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:12:58');
INSERT INTO `app_access_log` VALUES ('604', '1', 'http://mybook.imooc.com/web/finance/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:12:58');
INSERT INTO `app_access_log` VALUES ('605', '1', 'http://mybook.imooc.com/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:12:58');
INSERT INTO `app_access_log` VALUES ('606', '1', 'http://mybook.imooc.com/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:12:59');
INSERT INTO `app_access_log` VALUES ('607', '1', 'http://mybook.imooc.com/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:03');
INSERT INTO `app_access_log` VALUES ('608', '1', 'http://mybook.imooc.com/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:04');
INSERT INTO `app_access_log` VALUES ('609', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:04');
INSERT INTO `app_access_log` VALUES ('610', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:04');
INSERT INTO `app_access_log` VALUES ('611', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:48');
INSERT INTO `app_access_log` VALUES ('612', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:50');
INSERT INTO `app_access_log` VALUES ('613', '1', 'http://mybook.imooc.com/web/brand/info', '/web/brand/images', '{\"\\/web\\/brand\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:53');
INSERT INTO `app_access_log` VALUES ('614', '1', 'http://mybook.imooc.com/web/brand/images', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:54');
INSERT INTO `app_access_log` VALUES ('615', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:56');
INSERT INTO `app_access_log` VALUES ('616', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:13:58');
INSERT INTO `app_access_log` VALUES ('617', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:00');
INSERT INTO `app_access_log` VALUES ('618', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:01');
INSERT INTO `app_access_log` VALUES ('619', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:02');
INSERT INTO `app_access_log` VALUES ('620', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:03');
INSERT INTO `app_access_log` VALUES ('621', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:04');
INSERT INTO `app_access_log` VALUES ('622', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:05');
INSERT INTO `app_access_log` VALUES ('623', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:06');
INSERT INTO `app_access_log` VALUES ('624', '1', 'http://mybook.imooc.com/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:06');
INSERT INTO `app_access_log` VALUES ('625', '1', 'http://mybook.imooc.com/web/stat/share', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:08');
INSERT INTO `app_access_log` VALUES ('626', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:08');
INSERT INTO `app_access_log` VALUES ('627', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:09');
INSERT INTO `app_access_log` VALUES ('628', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:09');
INSERT INTO `app_access_log` VALUES ('629', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:28');
INSERT INTO `app_access_log` VALUES ('630', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:30');
INSERT INTO `app_access_log` VALUES ('631', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:31');
INSERT INTO `app_access_log` VALUES ('632', '1', 'http://mybook.imooc.com/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:31');
INSERT INTO `app_access_log` VALUES ('633', '1', 'http://mybook.imooc.com/web/stat/share', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:32');
INSERT INTO `app_access_log` VALUES ('634', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:33');
INSERT INTO `app_access_log` VALUES ('635', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:33');
INSERT INTO `app_access_log` VALUES ('636', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:48');
INSERT INTO `app_access_log` VALUES ('637', '1', 'http://mybook.imooc.com/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:57');
INSERT INTO `app_access_log` VALUES ('638', '1', 'http://mybook.imooc.com/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:59');
INSERT INTO `app_access_log` VALUES ('639', '1', 'http://mybook.imooc.com/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:14:59');
INSERT INTO `app_access_log` VALUES ('640', '1', 'http://mybook.imooc.com/web/stat/share', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:15:00');
INSERT INTO `app_access_log` VALUES ('641', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:15:00');
INSERT INTO `app_access_log` VALUES ('642', '1', 'http://mybook.imooc.com/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:15:01');
INSERT INTO `app_access_log` VALUES ('643', '1', 'http://mybook.imooc.com/web/stat/product', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:15:10');
INSERT INTO `app_access_log` VALUES ('644', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:15:11');
INSERT INTO `app_access_log` VALUES ('645', '1', 'http://mybook.imooc.com/web/finance/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:15:11');
INSERT INTO `app_access_log` VALUES ('646', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:20:36');
INSERT INTO `app_access_log` VALUES ('647', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:20:37');
INSERT INTO `app_access_log` VALUES ('648', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:20:38');
INSERT INTO `app_access_log` VALUES ('649', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:20:39');
INSERT INTO `app_access_log` VALUES ('650', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:18');
INSERT INTO `app_access_log` VALUES ('651', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:31');
INSERT INTO `app_access_log` VALUES ('652', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:32');
INSERT INTO `app_access_log` VALUES ('653', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:33');
INSERT INTO `app_access_log` VALUES ('654', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:35');
INSERT INTO `app_access_log` VALUES ('655', '1', 'http://mybook.imooc.com/web/member/index', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:36');
INSERT INTO `app_access_log` VALUES ('656', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/comment', '{\"\\/web\\/member\\/comment\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:36');
INSERT INTO `app_access_log` VALUES ('657', '1', 'http://mybook.imooc.com/web/member/comment', '/web/member/detail', '{\"\\/web\\/member\\/detail\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:37');
INSERT INTO `app_access_log` VALUES ('658', '1', 'http://mybook.imooc.com/web/member/detail', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:38');
INSERT INTO `app_access_log` VALUES ('659', '1', 'http://mybook.imooc.com/web/member/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:47');
INSERT INTO `app_access_log` VALUES ('660', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:47');
INSERT INTO `app_access_log` VALUES ('661', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:47');
INSERT INTO `app_access_log` VALUES ('662', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:49');
INSERT INTO `app_access_log` VALUES ('663', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:27:50');
INSERT INTO `app_access_log` VALUES ('664', '1', 'http://mybook.imooc.com/web/brand/info', '/web/brand/set', '{\"\\/web\\/brand\\/set\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:00');
INSERT INTO `app_access_log` VALUES ('665', '1', 'http://mybook.imooc.com/web/brand/set', '/web/brand/images', '{\"\\/web\\/brand\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:05');
INSERT INTO `app_access_log` VALUES ('666', '1', 'http://mybook.imooc.com/web/brand/images', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:15');
INSERT INTO `app_access_log` VALUES ('667', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:20');
INSERT INTO `app_access_log` VALUES ('668', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:22');
INSERT INTO `app_access_log` VALUES ('669', '1', 'http://mybook.imooc.com/web/member/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:30');
INSERT INTO `app_access_log` VALUES ('670', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:30');
INSERT INTO `app_access_log` VALUES ('671', '1', 'http://mybook.imooc.com/web/stat/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:32');
INSERT INTO `app_access_log` VALUES ('672', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:33');
INSERT INTO `app_access_log` VALUES ('673', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:33');
INSERT INTO `app_access_log` VALUES ('674', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:34');
INSERT INTO `app_access_log` VALUES ('675', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:34');
INSERT INTO `app_access_log` VALUES ('676', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:35');
INSERT INTO `app_access_log` VALUES ('677', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:36');
INSERT INTO `app_access_log` VALUES ('678', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:37');
INSERT INTO `app_access_log` VALUES ('679', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:39');
INSERT INTO `app_access_log` VALUES ('680', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:40');
INSERT INTO `app_access_log` VALUES ('681', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:40');
INSERT INTO `app_access_log` VALUES ('682', '1', 'http://mybook.imooc.com/web/stat/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:41');
INSERT INTO `app_access_log` VALUES ('683', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:42');
INSERT INTO `app_access_log` VALUES ('684', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:42');
INSERT INTO `app_access_log` VALUES ('685', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:43');
INSERT INTO `app_access_log` VALUES ('686', '1', 'http://mybook.imooc.com/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:44');
INSERT INTO `app_access_log` VALUES ('687', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:45');
INSERT INTO `app_access_log` VALUES ('688', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:45');
INSERT INTO `app_access_log` VALUES ('689', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:46');
INSERT INTO `app_access_log` VALUES ('690', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:47');
INSERT INTO `app_access_log` VALUES ('691', '1', 'http://mybook.imooc.com/web/brand/info', '/web/brand/images', '{\"\\/web\\/brand\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:49');
INSERT INTO `app_access_log` VALUES ('692', '1', 'http://mybook.imooc.com/web/brand/images', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:28:51');
INSERT INTO `app_access_log` VALUES ('693', '1', 'http://mybook.imooc.com/web/brand/info', '/web/brand/images', '{\"\\/web\\/brand\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:35');
INSERT INTO `app_access_log` VALUES ('694', '1', 'http://mybook.imooc.com/web/brand/images', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:37');
INSERT INTO `app_access_log` VALUES ('695', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:46');
INSERT INTO `app_access_log` VALUES ('696', '1', 'http://mybook.imooc.com/web/book/index', '/web/book/cat', '{\"\\/web\\/book\\/cat\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:50');
INSERT INTO `app_access_log` VALUES ('697', '1', 'http://mybook.imooc.com/web/book/cat', '/web/book/images', '{\"\\/web\\/book\\/images\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:51');
INSERT INTO `app_access_log` VALUES ('698', '1', 'http://mybook.imooc.com/web/book/images', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:53');
INSERT INTO `app_access_log` VALUES ('699', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:54');
INSERT INTO `app_access_log` VALUES ('700', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:55');
INSERT INTO `app_access_log` VALUES ('701', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:56');
INSERT INTO `app_access_log` VALUES ('702', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:57');
INSERT INTO `app_access_log` VALUES ('703', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:57');
INSERT INTO `app_access_log` VALUES ('704', '1', 'http://mybook.imooc.com/web/stat/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:30:59');
INSERT INTO `app_access_log` VALUES ('705', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:00');
INSERT INTO `app_access_log` VALUES ('706', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:00');
INSERT INTO `app_access_log` VALUES ('707', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:01');
INSERT INTO `app_access_log` VALUES ('708', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:02');
INSERT INTO `app_access_log` VALUES ('709', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:02');
INSERT INTO `app_access_log` VALUES ('710', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:03');
INSERT INTO `app_access_log` VALUES ('711', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:03');
INSERT INTO `app_access_log` VALUES ('712', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:04');
INSERT INTO `app_access_log` VALUES ('713', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:29');
INSERT INTO `app_access_log` VALUES ('714', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:30');
INSERT INTO `app_access_log` VALUES ('715', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:30');
INSERT INTO `app_access_log` VALUES ('716', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:31');
INSERT INTO `app_access_log` VALUES ('717', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:32');
INSERT INTO `app_access_log` VALUES ('718', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:32');
INSERT INTO `app_access_log` VALUES ('719', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:33');
INSERT INTO `app_access_log` VALUES ('720', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:34');
INSERT INTO `app_access_log` VALUES ('721', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:31:35');
INSERT INTO `app_access_log` VALUES ('722', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:44');
INSERT INTO `app_access_log` VALUES ('723', '1', 'http://mybook.imooc.com/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:45');
INSERT INTO `app_access_log` VALUES ('724', '1', 'http://mybook.imooc.com/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:45');
INSERT INTO `app_access_log` VALUES ('725', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:45');
INSERT INTO `app_access_log` VALUES ('726', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:45');
INSERT INTO `app_access_log` VALUES ('727', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:46');
INSERT INTO `app_access_log` VALUES ('728', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:47');
INSERT INTO `app_access_log` VALUES ('729', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:47');
INSERT INTO `app_access_log` VALUES ('730', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:48');
INSERT INTO `app_access_log` VALUES ('731', '1', 'http://mybook.imooc.com/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:48');
INSERT INTO `app_access_log` VALUES ('732', '1', 'http://mybook.imooc.com/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:49');
INSERT INTO `app_access_log` VALUES ('733', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:49');
INSERT INTO `app_access_log` VALUES ('734', '1', 'http://mybook.imooc.com/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:50');
INSERT INTO `app_access_log` VALUES ('735', '1', 'http://mybook.imooc.com/web/stat/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:50');
INSERT INTO `app_access_log` VALUES ('736', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:51');
INSERT INTO `app_access_log` VALUES ('737', '1', 'http://mybook.imooc.com/web/finance/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:51');
INSERT INTO `app_access_log` VALUES ('738', '1', 'http://mybook.imooc.com/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:52');
INSERT INTO `app_access_log` VALUES ('739', '1', 'http://mybook.imooc.com/web/book/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:52');
INSERT INTO `app_access_log` VALUES ('740', '1', 'http://mybook.imooc.com/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:53');
INSERT INTO `app_access_log` VALUES ('741', '1', 'http://mybook.imooc.com/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:55');
INSERT INTO `app_access_log` VALUES ('742', '1', 'http://mybook.imooc.com/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:56');
INSERT INTO `app_access_log` VALUES ('743', '1', 'http://mybook.imooc.com/web/member/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:34:57');
INSERT INTO `app_access_log` VALUES ('744', '1', 'http://mybook.imooc.com/web/qrcode/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:35:00');
INSERT INTO `app_access_log` VALUES ('745', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:35:00');
INSERT INTO `app_access_log` VALUES ('746', '1', 'http://mybook.imooc.com/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-11-30 14:35:00');
INSERT INTO `app_access_log` VALUES ('747', '1', 'http://mada415.cn/web/user/login', '/web/', '{\"\\/web\\/\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:25');
INSERT INTO `app_access_log` VALUES ('748', '1', 'http://mada415.cn/web/user/login', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:26');
INSERT INTO `app_access_log` VALUES ('749', '1', 'http://mada415.cn/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:26');
INSERT INTO `app_access_log` VALUES ('750', '1', 'http://mada415.cn/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:26');
INSERT INTO `app_access_log` VALUES ('751', '1', 'http://mada415.cn/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:30');
INSERT INTO `app_access_log` VALUES ('752', '1', 'http://mada415.cn/web/account/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:33');
INSERT INTO `app_access_log` VALUES ('753', '1', 'http://mada415.cn/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:35');
INSERT INTO `app_access_log` VALUES ('754', '1', 'http://mada415.cn/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:37');
INSERT INTO `app_access_log` VALUES ('755', '1', 'http://mada415.cn/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:39');
INSERT INTO `app_access_log` VALUES ('756', '1', 'http://mada415.cn/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:40');
INSERT INTO `app_access_log` VALUES ('757', '1', 'http://mada415.cn/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:40');
INSERT INTO `app_access_log` VALUES ('758', '1', 'http://mada415.cn/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:43');
INSERT INTO `app_access_log` VALUES ('759', '1', 'http://mada415.cn/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:44');
INSERT INTO `app_access_log` VALUES ('760', '1', 'http://mada415.cn/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:45');
INSERT INTO `app_access_log` VALUES ('761', '1', 'http://mada415.cn/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:45');
INSERT INTO `app_access_log` VALUES ('762', '1', 'http://mada415.cn/web/stat/share', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:46');
INSERT INTO `app_access_log` VALUES ('763', '1', 'http://mada415.cn/web/stat/member', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:47');
INSERT INTO `app_access_log` VALUES ('764', '1', 'http://mada415.cn/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:47');
INSERT INTO `app_access_log` VALUES ('765', '1', 'http://mada415.cn/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:08:48');
INSERT INTO `app_access_log` VALUES ('766', '1', 'http://mada415.cn/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:05');
INSERT INTO `app_access_log` VALUES ('767', '1', 'http://mada415.cn/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:06');
INSERT INTO `app_access_log` VALUES ('768', '1', 'http://mada415.cn/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:08');
INSERT INTO `app_access_log` VALUES ('769', '1', 'http://mada415.cn/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:08');
INSERT INTO `app_access_log` VALUES ('770', '1', 'http://mada415.cn/web/stat/share', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:10');
INSERT INTO `app_access_log` VALUES ('771', '1', 'http://mada415.cn/web/stat/member', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:10');
INSERT INTO `app_access_log` VALUES ('772', '1', 'http://mada415.cn/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:11');
INSERT INTO `app_access_log` VALUES ('773', '1', 'http://mada415.cn/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:12');
INSERT INTO `app_access_log` VALUES ('774', '1', 'http://mada415.cn/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:27');
INSERT INTO `app_access_log` VALUES ('775', '1', 'http://mada415.cn/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:28');
INSERT INTO `app_access_log` VALUES ('776', '1', 'http://mada415.cn/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:29');
INSERT INTO `app_access_log` VALUES ('777', '1', 'http://mada415.cn/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:29');
INSERT INTO `app_access_log` VALUES ('778', '1', 'http://mada415.cn/web/stat/share', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:43');
INSERT INTO `app_access_log` VALUES ('779', '1', 'http://mada415.cn/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:43');
INSERT INTO `app_access_log` VALUES ('780', '1', 'http://mada415.cn/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:43');
INSERT INTO `app_access_log` VALUES ('781', '1', 'http://mada415.cn/web/dashboard/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:44');
INSERT INTO `app_access_log` VALUES ('782', '1', 'http://mada415.cn/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:46');
INSERT INTO `app_access_log` VALUES ('783', '1', 'http://mada415.cn/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:47');
INSERT INTO `app_access_log` VALUES ('784', '1', 'http://mada415.cn/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:49');
INSERT INTO `app_access_log` VALUES ('785', '1', 'http://mada415.cn/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:50');
INSERT INTO `app_access_log` VALUES ('786', '1', 'http://mada415.cn/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:51');
INSERT INTO `app_access_log` VALUES ('787', '1', 'http://mada415.cn/web/qrcode/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:51');
INSERT INTO `app_access_log` VALUES ('788', '1', 'http://mada415.cn/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:52');
INSERT INTO `app_access_log` VALUES ('789', '1', 'http://mada415.cn/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:53');
INSERT INTO `app_access_log` VALUES ('790', '1', 'http://mada415.cn/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:54');
INSERT INTO `app_access_log` VALUES ('791', '1', 'http://mada415.cn/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:55');
INSERT INTO `app_access_log` VALUES ('792', '1', 'http://mada415.cn/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:09:55');
INSERT INTO `app_access_log` VALUES ('793', '1', 'http://mada415.cn/web/stat/share', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:22:07');
INSERT INTO `app_access_log` VALUES ('794', '1', 'http://mada415.cn/web/stat/member', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:22:08');
INSERT INTO `app_access_log` VALUES ('795', '1', 'http://mada415.cn/web/stat/product', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:22:09');
INSERT INTO `app_access_log` VALUES ('796', '1', 'http://mada415.cn/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:22:10');
INSERT INTO `app_access_log` VALUES ('797', '1', 'http://mada415.cn/web/stat/index', '/web/stat/product', '{\"\\/web\\/stat\\/product\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:26');
INSERT INTO `app_access_log` VALUES ('798', '1', 'http://mada415.cn/web/stat/product', '/web/stat/member', '{\"\\/web\\/stat\\/member\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:27');
INSERT INTO `app_access_log` VALUES ('799', '1', 'http://mada415.cn/web/stat/member', '/web/stat/share', '{\"\\/web\\/stat\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:29');
INSERT INTO `app_access_log` VALUES ('800', '1', 'http://mada415.cn/web/stat/share', '/web/charts/share', '{\"\\/web\\/charts\\/share\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:29');
INSERT INTO `app_access_log` VALUES ('801', '1', 'http://mada415.cn/web/stat/share', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:31');
INSERT INTO `app_access_log` VALUES ('802', '1', 'http://mada415.cn/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:32');
INSERT INTO `app_access_log` VALUES ('803', '1', 'http://mada415.cn/web/stat/index', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:33');
INSERT INTO `app_access_log` VALUES ('804', '1', 'http://mada415.cn/web/account/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:35');
INSERT INTO `app_access_log` VALUES ('805', '1', 'http://mada415.cn/web/brand/info', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:36');
INSERT INTO `app_access_log` VALUES ('806', '1', 'http://mada415.cn/web/book/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:37');
INSERT INTO `app_access_log` VALUES ('807', '1', 'http://mada415.cn/web/member/index', '/web/finance/index', '{\"\\/web\\/finance\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:39');
INSERT INTO `app_access_log` VALUES ('808', '1', 'http://mada415.cn/web/finance/index', '/web/qrcode/index', '{\"\\/web\\/qrcode\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 19:48:40');
INSERT INTO `app_access_log` VALUES ('809', '1', 'http://mada415.cn/web/qrcode/index', '/web/member/index', '{\"\\/web\\/member\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 20:02:16');
INSERT INTO `app_access_log` VALUES ('810', '1', 'http://mada415.cn/web/member/index', '/web/book/index', '{\"\\/web\\/book\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 20:02:18');
INSERT INTO `app_access_log` VALUES ('811', '1', 'http://mada415.cn/web/book/index', '/web/brand/info', '{\"\\/web\\/brand\\/info\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 20:02:20');
INSERT INTO `app_access_log` VALUES ('812', '1', 'http://mada415.cn/web/brand/info', '/web/account/index', '{\"\\/web\\/account\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 20:02:22');
INSERT INTO `app_access_log` VALUES ('813', '1', 'http://mada415.cn/web/account/index', '/web/dashboard/index', '{\"\\/web\\/dashboard\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 20:02:23');
INSERT INTO `app_access_log` VALUES ('814', '1', 'http://mada415.cn/web/dashboard/index', '/web/charts/dashboard', '{\"\\/web\\/charts\\/dashboard\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 20:02:23');
INSERT INTO `app_access_log` VALUES ('815', '1', 'http://mada415.cn/web/dashboard/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 20:02:23');
INSERT INTO `app_access_log` VALUES ('816', '1', 'http://mada415.cn/web/dashboard/index', '/web/stat/index', '{\"\\/web\\/stat\\/index\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 20:02:24');
INSERT INTO `app_access_log` VALUES ('817', '1', 'http://mada415.cn/web/stat/index', '/web/charts/finance', '{\"\\/web\\/charts\\/finance\":\"\"}', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', '::1', '', '2017-12-05 20:02:25');

-- ----------------------------
-- Table structure for app_log
-- ----------------------------
DROP TABLE IF EXISTS `app_log`;
CREATE TABLE `app_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(30) NOT NULL DEFAULT '' COMMENT 'app 名字',
  `err_name` varchar(50) NOT NULL DEFAULT 'NOT SET',
  `http_code` int(11) NOT NULL DEFAULT '0',
  `err_code` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL,
  `ua` varchar(200) NOT NULL,
  `content` longtext NOT NULL COMMENT '日志内容',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='app错误日表';

-- ----------------------------
-- Records of app_log
-- ----------------------------
INSERT INTO `app_log` VALUES ('1', 'basic', 'Not Found', '404', '0', '::1', '[UA:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\z12smi\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2017-11-27 12:11:57');
INSERT INTO `app_log` VALUES ('2', 'basic', 'Not Found', '404', '0', '::1', '[UA:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\z12smi\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2017-11-27 12:12:05');
INSERT INTO `app_log` VALUES ('3', 'basic', 'Not Found', '404', '0', '::1', '[UA:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\z12smi\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2017-11-27 12:12:06');
INSERT INTO `app_log` VALUES ('4', 'basic', 'Not Found', '404', '0', '::1', '[UA:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\z12smi\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2017-11-27 12:12:23');
INSERT INTO `app_log` VALUES ('5', 'basic', 'Not Found', '404', '0', '::1', '[UA:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\z12smi\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2017-11-27 12:12:30');
INSERT INTO `app_log` VALUES ('6', 'basic', 'Not Found', '404', '0', '::1', '[UA:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\z12smi\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/web/member/detail][post:]', '2017-11-29 14:14:48');
INSERT INTO `app_log` VALUES ('7', 'basic', 'Forbidden', '403', '0', '::1', '[UA:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36]', 'You are not allowed to access this page. [file: D:\\wamp64\\www\\z12smi\\vendor\\yiisoft\\yii2-gii\\Module.php][line: 112][err code:0.][url:/gii][post:]', '2017-11-29 14:19:53');
INSERT INTO `app_log` VALUES ('8', 'basic', 'Not Found', '404', '0', '::1', '[UA:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\project_xy\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2017-11-30 14:10:31');
INSERT INTO `app_log` VALUES ('9', 'basic', 'Not Found', '404', '0', '::1', '[UA:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\project_xy\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2017-11-30 14:12:11');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '书籍名称',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '售卖金额',
  `main_image` varchar(100) NOT NULL DEFAULT '' COMMENT '主图',
  `summary` varchar(2000) NOT NULL DEFAULT '' COMMENT '描述',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存量',
  `tags` varchar(200) NOT NULL DEFAULT '' COMMENT 'tag关键字，以","连接',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：有效 0：无效',
  `month_count` int(11) NOT NULL DEFAULT '0' COMMENT '月销售数量',
  `total_count` int(11) NOT NULL DEFAULT '0' COMMENT '总销售量',
  `view_count` int(11) NOT NULL DEFAULT '0' COMMENT '总浏览次数',
  `comment_count` int(11) NOT NULL DEFAULT '0' COMMENT '总评论量',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='书籍表';

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '1', '三亚玉海国际度假酒店', '1000.00', '20171129/e783af4d5b7583bdad97a84a7ad2a994.png', '<p>亚洲第一大道，空中花园<br/></p>', '1', '三亚', '1', '0', '0', '0', '0', '2017-11-29 10:10:15', '2017-11-29 10:10:15');

-- ----------------------------
-- Table structure for book_cat
-- ----------------------------
DROP TABLE IF EXISTS `book_cat`;
CREATE TABLE `book_cat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '类别名称',
  `weight` tinyint(4) NOT NULL DEFAULT '1' COMMENT '权重',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：有效 0：无效',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='书籍分类';

-- ----------------------------
-- Records of book_cat
-- ----------------------------
INSERT INTO `book_cat` VALUES ('1', '海南', '1', '1', '2017-11-29 10:03:18', '2017-11-29 10:03:18');
INSERT INTO `book_cat` VALUES ('2', '山东', '1', '1', '2017-11-29 10:03:29', '2017-11-29 10:03:29');
INSERT INTO `book_cat` VALUES ('3', '江苏', '1', '1', '2017-11-29 10:03:37', '2017-11-29 10:03:37');
INSERT INTO `book_cat` VALUES ('4', '四川', '1', '1', '2017-11-29 10:03:46', '2017-11-29 10:03:46');
INSERT INTO `book_cat` VALUES ('5', '云南', '1', '1', '2017-11-29 10:03:55', '2017-11-29 10:03:55');
INSERT INTO `book_cat` VALUES ('6', '广西', '1', '1', '2017-11-29 10:04:05', '2017-11-29 10:04:05');
INSERT INTO `book_cat` VALUES ('7', '贵州', '1', '1', '2017-11-29 10:04:13', '2017-11-29 10:04:13');

-- ----------------------------
-- Table structure for book_sale_change_log
-- ----------------------------
DROP TABLE IF EXISTS `book_sale_change_log`;
CREATE TABLE `book_sale_change_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT '售卖数量',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '售卖金额',
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '售卖时间',
  PRIMARY KEY (`id`),
  KEY `idx_book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品销售情况';

-- ----------------------------
-- Records of book_sale_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for book_stock_change_log
-- ----------------------------
DROP TABLE IF EXISTS `book_stock_change_log`;
CREATE TABLE `book_stock_change_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL COMMENT '书籍商品id',
  `unit` int(11) NOT NULL DEFAULT '0' COMMENT '变更多少',
  `total_stock` int(11) NOT NULL DEFAULT '0' COMMENT '变更之后总量',
  `note` varchar(100) NOT NULL DEFAULT '' COMMENT '备注字段',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_book_id` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='数据库存变更表';

-- ----------------------------
-- Records of book_stock_change_log
-- ----------------------------
INSERT INTO `book_stock_change_log` VALUES ('1', '1', '1', '1', '', '2017-11-29 10:10:15');

-- ----------------------------
-- Table structure for brand_images
-- ----------------------------
DROP TABLE IF EXISTS `brand_images`;
CREATE TABLE `brand_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_key` varchar(200) NOT NULL DEFAULT '' COMMENT '图片地址',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_image_key` (`image_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌图片';

-- ----------------------------
-- Records of brand_images
-- ----------------------------

-- ----------------------------
-- Table structure for brand_setting
-- ----------------------------
DROP TABLE IF EXISTS `brand_setting`;
CREATE TABLE `brand_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `description` varchar(2000) NOT NULL DEFAULT '' COMMENT '品牌描述',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '公司地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '联系电话',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT 'logo图片',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='品牌设置表';

-- ----------------------------
-- Records of brand_setting
-- ----------------------------
INSERT INTO `brand_setting` VALUES ('1', '翔游旅居', '旅游、养老、文化、休闲娱乐、医疗', '上海市杨浦区五角丰达8号508室', '4007729059', '20171127/3c9578ea9ecee46afada98040ed89333.png', '2017-11-27 12:18:00', '2017-11-27 12:18:00');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `province_id` mediumint(9) NOT NULL,
  `province` varchar(20) NOT NULL,
  `province_alias_name` varchar(20) NOT NULL DEFAULT '' COMMENT '省份别名',
  `city_id` mediumint(9) NOT NULL,
  `city` varchar(20) NOT NULL,
  `area_id` int(11) NOT NULL,
  `area` varchar(20) NOT NULL,
  `region_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '区域id，0：其他 1：华北 2：东北 3：西北 4：华南 5：华中 6：西南 7：华东',
  `region_name` varchar(20) NOT NULL DEFAULT '' COMMENT '区域名称 如：华北',
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`),
  KEY `city_id` (`city_id`),
  KEY `region_id` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bucket` varchar(20) NOT NULL DEFAULT '',
  `file_key` varchar(60) NOT NULL DEFAULT '' COMMENT '文件名',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_bucket` (`bucket`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', 'brand', '20171127/3c9578ea9ecee46afada98040ed89333.png', '2017-11-27 12:15:04');
INSERT INTO `images` VALUES ('2', 'book', '20171129/e783af4d5b7583bdad97a84a7ad2a994.png', '2017-11-29 10:08:34');

-- ----------------------------
-- Table structure for market_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `market_qrcode`;
CREATE TABLE `market_qrcode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名字',
  `qrcode` varchar(62) NOT NULL DEFAULT '' COMMENT '二维码内容',
  `extra` varchar(2000) NOT NULL DEFAULT '' COMMENT '接口返回的信息',
  `expired_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  `total_scan_count` int(11) NOT NULL DEFAULT '0' COMMENT '总扫码关注量',
  `total_reg_count` int(11) NOT NULL DEFAULT '0' COMMENT '总注册数量',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '会员名',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '会员手机号码',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别 1：男 2：女',
  `avatar` varchar(200) NOT NULL DEFAULT '' COMMENT '会员头像',
  `salt` varchar(32) NOT NULL DEFAULT '' COMMENT '随机salt',
  `reg_ip` varchar(100) NOT NULL DEFAULT '' COMMENT '注册ip',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：有效 0：无效',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', '小强', '17602183362', '0', 'default_avatar', '', '', '1', '2017-11-28 07:01:52', '2017-11-28 07:01:52');

-- ----------------------------
-- Table structure for member_address
-- ----------------------------
DROP TABLE IF EXISTS `member_address`;
CREATE TABLE `member_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '收货人手机号码',
  `province_id` int(11) NOT NULL DEFAULT '0' COMMENT '省id',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '城市id',
  `area_id` int(11) NOT NULL DEFAULT '0' COMMENT '区域id',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '详细地址',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址 1：是 0：不是',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效 1：有效 0：无效',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_member_id_status` (`member_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员收货地址';

-- ----------------------------
-- Records of member_address
-- ----------------------------

-- ----------------------------
-- Table structure for member_cart
-- ----------------------------
DROP TABLE IF EXISTS `member_cart`;
CREATE TABLE `member_cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '图书id',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of member_cart
-- ----------------------------

-- ----------------------------
-- Table structure for member_comments
-- ----------------------------
DROP TABLE IF EXISTS `member_comments`;
CREATE TABLE `member_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `pay_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `score` tinyint(4) NOT NULL DEFAULT '0' COMMENT '评分',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '评论内容',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员评论表';

-- ----------------------------
-- Records of member_comments
-- ----------------------------

-- ----------------------------
-- Table structure for member_detail
-- ----------------------------
DROP TABLE IF EXISTS `member_detail`;
CREATE TABLE `member_detail` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `sex` tinyint(10) NOT NULL COMMENT '性别',
  `height` tinyint(10) NOT NULL COMMENT '身高',
  `origin` varchar(255) NOT NULL COMMENT '籍贯',
  `age` tinyint(10) NOT NULL,
  `record` char(60) NOT NULL COMMENT '学历',
  `cred_type` char(60) NOT NULL COMMENT '证件类型',
  `cred_id` char(60) NOT NULL COMMENT '证件号',
  `hobby` char(60) NOT NULL COMMENT '爱好',
  `urgent_name` char(60) NOT NULL COMMENT '紧急联系人姓名',
  `urgent_tel` char(13) NOT NULL COMMENT '紧急联系人手机号',
  `health` char(50) NOT NULL COMMENT '健康状况',
  `bankcard` char(50) NOT NULL COMMENT '银行卡号',
  `live_alone` tinyint(5) NOT NULL COMMENT '是否独居，1是，0否',
  `sensitive_source` varchar(60) NOT NULL COMMENT '敏感源',
  `religion` varchar(60) NOT NULL COMMENT '宗教信仰',
  `account` decimal(10,4) NOT NULL COMMENT '账户余额',
  `points` tinyint(11) NOT NULL COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_detail
-- ----------------------------
INSERT INTO `member_detail` VALUES ('1', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1.0000', '11');

-- ----------------------------
-- Table structure for member_fav
-- ----------------------------
DROP TABLE IF EXISTS `member_fav`;
CREATE TABLE `member_fav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '书籍id',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员收藏表';

-- ----------------------------
-- Records of member_fav
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `access_token` varchar(600) NOT NULL DEFAULT '',
  `expired_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_expired_time` (`expired_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信的access_token 用户调用其他接口的';

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_member_bind
-- ----------------------------
DROP TABLE IF EXISTS `oauth_member_bind`;
CREATE TABLE `oauth_member_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `client_type` varchar(20) NOT NULL DEFAULT '' COMMENT '客户端来源类型。qq,weibo,weixin',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '类型 type 1:wechat ',
  `openid` varchar(80) NOT NULL DEFAULT '' COMMENT '第三方id',
  `unionid` varchar(100) NOT NULL DEFAULT '',
  `extra` text NOT NULL COMMENT '额外字段',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_type_openid` (`type`,`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方登录绑定关系';

-- ----------------------------
-- Records of oauth_member_bind
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_token`;
CREATE TABLE `oauth_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_type` varchar(20) NOT NULL DEFAULT '' COMMENT '客户端来源类型。qq,weibo,weixin',
  `token` varchar(500) NOT NULL DEFAULT '',
  `note` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `valid_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效期截止日期',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `createdt_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `client_type_token` (`client_type`,`token`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='oauth token 表';

-- ----------------------------
-- Records of oauth_token
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_order`;
CREATE TABLE `pay_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(40) NOT NULL DEFAULT '' COMMENT '随机订单号',
  `member_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `target_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '商品类型 1:书籍',
  `pay_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:微信 2：支付宝 3：银行转账 4: 现金 5:其他 6:刷卡',
  `pay_source` tinyint(1) NOT NULL DEFAULT '0' COMMENT '下单来源:1:PC 2:m',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单应付金额',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  `pay_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单实付金额',
  `pay_in_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '扣点后的所得金额',
  `ratio` float NOT NULL DEFAULT '0' COMMENT '所扣点数',
  `pay_sn` varchar(128) NOT NULL DEFAULT '' COMMENT '第三方流水号',
  `note` text NOT NULL COMMENT '备注信息',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1：支付完成 0 无效 -1 申请退款 -2 退款中 -9 退款成功  -8 待支付  -7 完成支付待确认',
  `express_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '快递状态，-8 待支付 -7 已付款待发货 1：确认收货 0：失败',
  `express_address_id` int(11) NOT NULL DEFAULT '0' COMMENT '快递地址id',
  `express_info` varchar(100) NOT NULL DEFAULT '' COMMENT '快递单新',
  `comment_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论状态',
  `pay_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '付款到账时间',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最近一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_order_sn` (`order_sn`),
  KEY `idx_member_id_status` (`member_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线购买订单表';

-- ----------------------------
-- Records of pay_order
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order_callback_data
-- ----------------------------
DROP TABLE IF EXISTS `pay_order_callback_data`;
CREATE TABLE `pay_order_callback_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '支付订单id',
  `pay_data` text NOT NULL COMMENT '支付回调信息',
  `refund_data` text NOT NULL COMMENT '退款回调信息',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pay_order_id` (`pay_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_order_callback_data
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order_item
-- ----------------------------
DROP TABLE IF EXISTS `pay_order_item`;
CREATE TABLE `pay_order_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pay_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `member_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `quantity` int(11) NOT NULL DEFAULT '1' COMMENT '购买数量 默认1份',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价格，售价 * 数量',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '当前折扣',
  `target_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '商品类型 1:书籍',
  `target_id` int(11) NOT NULL DEFAULT '0' COMMENT '对应不同商品表的id字段',
  `note` text NOT NULL COMMENT '备注信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1：成功 0 失败',
  `comment_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评价状态 1：已评价，0 ：未评价',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最近一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `id_order_id` (`pay_order_id`),
  KEY `idx_target_type_id` (`target_type`,`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- ----------------------------
-- Records of pay_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for qrcode_scan_history
-- ----------------------------
DROP TABLE IF EXISTS `qrcode_scan_history`;
CREATE TABLE `qrcode_scan_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL DEFAULT '' COMMENT 'openid',
  `qrcode_id` int(11) NOT NULL DEFAULT '0' COMMENT '二维码id',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道二维码扫码openid记录';

-- ----------------------------
-- Records of qrcode_scan_history
-- ----------------------------

-- ----------------------------
-- Table structure for queue_list
-- ----------------------------
DROP TABLE IF EXISTS `queue_list`;
CREATE TABLE `queue_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(30) NOT NULL DEFAULT '' COMMENT '队列名字',
  `data` varchar(500) NOT NULL DEFAULT '' COMMENT '队列数据',
  `status` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '状态 -1 待处理 1 已处理',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事件队列表';

-- ----------------------------
-- Records of queue_list
-- ----------------------------

-- ----------------------------
-- Table structure for sms_captcha
-- ----------------------------
DROP TABLE IF EXISTS `sms_captcha`;
CREATE TABLE `sms_captcha` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `captcha` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `expires_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sms_captcha
-- ----------------------------

-- ----------------------------
-- Table structure for sms_queue
-- ----------------------------
DROP TABLE IF EXISTS `sms_queue`;
CREATE TABLE `sms_queue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(256) NOT NULL DEFAULT '' COMMENT '手机号码',
  `sign` varchar(10) NOT NULL DEFAULT '' COMMENT '签名',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '发送手机内容',
  `channel` varchar(30) NOT NULL DEFAULT '' COMMENT '发送渠道名称',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '发送状态 1成功 0 失败 -2 等待发送 -1 发送中',
  `return_msg` varchar(255) NOT NULL DEFAULT '' COMMENT '返回信息',
  `taskid` varchar(60) NOT NULL DEFAULT '' COMMENT '任务id',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '客户端发送ip',
  `send_number` int(11) NOT NULL DEFAULT '1' COMMENT '发送条数，默认1',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最近一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_status_mobile` (`status`,`mobile`),
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信发送队列表';

-- ----------------------------
-- Records of sms_queue
-- ----------------------------

-- ----------------------------
-- Table structure for stat_daily_book
-- ----------------------------
DROP TABLE IF EXISTS `stat_daily_book`;
CREATE TABLE `stat_daily_book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '书籍id',
  `total_count` int(11) NOT NULL DEFAULT '0' COMMENT '售卖总数量',
  `total_pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总售卖金额',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `date_book_id` (`date`,`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍售卖日统计';

-- ----------------------------
-- Records of stat_daily_book
-- ----------------------------

-- ----------------------------
-- Table structure for stat_daily_member
-- ----------------------------
DROP TABLE IF EXISTS `stat_daily_member`;
CREATE TABLE `stat_daily_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '日期',
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `total_shared_count` int(11) NOT NULL DEFAULT '0' COMMENT '当日分享总次数',
  `total_pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '当日付款总金额',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_date_member_id` (`date`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员日统计';

-- ----------------------------
-- Records of stat_daily_member
-- ----------------------------

-- ----------------------------
-- Table structure for stat_daily_site
-- ----------------------------
DROP TABLE IF EXISTS `stat_daily_site`;
CREATE TABLE `stat_daily_site` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '日期',
  `total_pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '当日应收总金额',
  `total_member_count` int(11) NOT NULL COMMENT '会员总数',
  `total_new_member_count` int(11) NOT NULL COMMENT '当日新增会员数',
  `total_order_count` int(11) NOT NULL COMMENT '当日订单数',
  `total_shared_count` int(11) NOT NULL,
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全站日统计';

-- ----------------------------
-- Records of stat_daily_site
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户uid',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1：男 2：女 0：没填写',
  `avatar` varchar(64) NOT NULL DEFAULT '' COMMENT '头像',
  `login_name` varchar(20) NOT NULL DEFAULT '' COMMENT '登录用户名',
  `login_pwd` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `login_salt` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码的随机加密秘钥',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：有效 0：无效',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表（管理员）';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '哒哒尼亚1', '17602183362', 'mada415@163.com', '1', '', 'xiangyou', '0a9fa6470781137a102dc209cc72cc65', 'cF3JfH5FJfQ8B2Ba', '1', '2017-11-24 22:05:52', '2017-03-15 14:08:48');
INSERT INTO `user` VALUES ('2', '哒哒尼亚1', '17602183362', 'mada415@163.com', '1', '', 'xiangyou1', '0a9fa6470781137a102dc209cc72cc65', 'cF3JfH5FJfQ8B2Ba', '1', '2017-11-23 14:45:02', '2017-03-15 14:08:48');
INSERT INTO `user` VALUES ('3', '哒哒尼亚2', '17602183362', 'mada415@163.com', '1', '', 'xiangyou2', '0a9fa6470781137a102dc209cc72cc65', 'cF3JfH5FJfQ8B2Ba', '1', '2017-11-23 03:48:33', '2017-03-15 14:08:48');
INSERT INTO `user` VALUES ('4', 'xiaoxiao2', 'xiaoxiao2', 'xiaoxiao2', '0', 'default_avatar', 'xiaoxiao2', '0da4e4af8124a92101703a3ae1b5e3b1', '01xJO&QSu5bN*9Ju', '1', '2017-11-25 01:39:26', '2017-11-24 23:34:53');
INSERT INTO `user` VALUES ('5', 'ceshi', '1234', '132@qq.com', '0', 'default_avatar', 'ceshi', '430d6280a0f7f90552cab121dc71f91b', '@Kb@#KL^uxffcwD5', '1', '2017-11-28 07:00:03', '2017-11-28 07:00:03');
