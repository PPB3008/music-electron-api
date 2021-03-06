SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for m_user_act_logs
-- ----------------------------
DROP TABLE IF EXISTS `m_user_act_logs`;
CREATE TABLE `m_user_act_logs`  (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作说明',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '添加时间/操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_user_comments
-- ----------------------------
DROP TABLE IF EXISTS `m_user_fav_songs`;
CREATE TABLE `m_user_fav_songs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `song_id` int(10) unsigned NOT NULL COMMENT '歌曲ID，来源于网易云音乐',
  `song_name` varchar(255) NOT NULL,
  `list_id` int(10) unsigned NOT NULL COMMENT '所属歌单ID',
  `art_id` int(10) NOT NULL,
  `art_name` varchar(32) NOT NULL,
  `al_id` int(32) NOT NULL,
  `al_name` varchar(32) NOT NULL DEFAULT '',
  `dt` varchar(32) NOT NULL,
  `picUrl` varchar(255) NOT NULL,
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '收藏状态，默认为0，1为已删除',
  `add_time` int(10) unsigned NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户收藏歌曲表';

-- ----------------------------
-- Table structure for m_user_fav_songs
-- ----------------------------
DROP TABLE IF EXISTS `m_user_fav_songs`;
CREATE TABLE `m_user_fav_songs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `song_id` int(10) unsigned NOT NULL COMMENT '歌曲ID，来源于网易云音乐',
  `song_name` varchar(255) NOT NULL,
  `list_id` int(10) unsigned NOT NULL COMMENT '所属歌单ID',
  `art_id` int(10) NOT NULL,
  `art_name` varchar(32) NOT NULL,
  `al_id` int(32) NOT NULL,
  `al_name` varchar(32) NOT NULL DEFAULT '',
  `dt` varchar(32) NOT NULL,
  `picUrl` varchar(255) NOT NULL,
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '收藏状态，默认为0，1为已删除',
  `add_time` int(10) unsigned NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户收藏歌曲表';
-- ----------------------------
-- Table structure for m_user_lists
-- ----------------------------
DROP TABLE IF EXISTS `m_user_lists`;
CREATE TABLE `m_user_lists`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `list_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '歌单名称',
  `list_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '歌单类型，默认 0 为用户自建歌单，1 为收藏他人歌单',
  `is_default` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '是否为默认歌单，默认0为非默认歌单，1为默认歌单且仅有1个默认歌单',
  `source_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '来源歌单ID',
  `sort` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '歌单排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '歌单状态，默认0为正常，1为删除',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户歌单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for m_users
-- ----------------------------
DROP TABLE IF EXISTS `m_users`;
CREATE TABLE `m_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '用户状态，默认为0，1为已删除用户',
  `reg_time` int(10) UNSIGNED NOT NULL COMMENT '注册时间，10 位 Unix 时间戳',
  `last_login_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '最后登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
