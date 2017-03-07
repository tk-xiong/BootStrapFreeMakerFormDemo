-- ----------------------------
-- Table structure for `t_userInfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_userInfo`;
CREATE TABLE `t_userInfo` (
  `id` bigint(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL COMMENT '用户名',
  `user_email` varchar(255) default NULL COMMENT '邮箱地址',
  `is_delete` tinyint(4) default NULL COMMENT '是否删除，0-未删除；1-已删除',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

INSERT INTO `t_userinfo` VALUES (1, '赵钱孙', 'zhaoqiansun@tk-xiong.com', 0);
INSERT INTO `t_userinfo` VALUES (2, '张三', 'zhangsan@zhongguo.com', 0);
INSERT INTO `t_userinfo` VALUES (3, '王二麻子', 'wangermazi@corp.netease.com', 0);
