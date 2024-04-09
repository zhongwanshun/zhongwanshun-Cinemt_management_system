/*
 Navicat Premium Data Transfer

 Source Server         : localhost3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : wanshun_springcloud

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 13/06/2023 22:10:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema`  (
  `c_id` int(11) NOT NULL COMMENT '影院主键',
  `c_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影院名称',
  `c_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `c_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影院地址',
  `c_date` date NULL DEFAULT NULL COMMENT '首营业日期',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES (1, '皇宫影院', '13812345678', '北京市海淀区中关村大街1号', '2023-06-13');
INSERT INTO `cinema` VALUES (2, '星空电影城', '13698765432', '上海市浦东新区张江路88号', '2023-06-13');
INSERT INTO `cinema` VALUES (3, '银光影城', '13987654321', '广州市天河区天河路789号', '2023-06-13');
INSERT INTO `cinema` VALUES (4, '万达影城', '13788889999', '深圳市福田区华强北路168号', '2023-06-13');
INSERT INTO `cinema` VALUES (5, '大地影院', '13512345678', '成都市锦江区春熙路99号', '2023-06-13');
INSERT INTO `cinema` VALUES (6, '金逸国际影城', '15234567890', '南京市鼓楼区汉口路22号', '2023-06-13');
INSERT INTO `cinema` VALUES (7, '橙天嘉禾影城', '13900001111', '武汉市江汉区解放大道666号', '2023-06-13');
INSERT INTO `cinema` VALUES (8, 'UME国际影城', '15811112222', '重庆市渝北区龙头寺路8号', '2023-06-13');
INSERT INTO `cinema` VALUES (9, '华夏星光', '13777778888', '天津市南开区鼓楼大街222号', '2023-06-13');
INSERT INTO `cinema` VALUES (10, '百丽宫影城', '13866667777', '杭州市拱墅区和睦街99号', '2023-06-13');
INSERT INTO `cinema` VALUES (11, '中影国际城', '13600002222', '厦门市思明区软件园二期88号', '2023-06-13');
INSERT INTO `cinema` VALUES (12, '星美国际影城', '15011112222', '长沙市岳麓区麓谷街道麓山路66号', '2023-06-13');
INSERT INTO `cinema` VALUES (13, '保利国际影城', '13855556666', '西安市雁塔区曲江文化新区雁南五路88号', '2023-06-13');
INSERT INTO `cinema` VALUES (14, '幸福蓝海国际影城', '13944445555', '青岛市市北区辽阳西路66号', '2023-06-13');
INSERT INTO `cinema` VALUES (15, '华谊兄弟影院', '15133334444', '福州市仓山区福新东路66号', '2023-06-13');
INSERT INTO `cinema` VALUES (16, '耀莱成龙影城', '13711112222', '合肥市瑶海区临泉路8号', '2023-06-13');
INSERT INTO `cinema` VALUES (17, '中影时代国际影城', '15922223333', '南昌市洪都北大道99号', '2023-06-13');
INSERT INTO `cinema` VALUES (18, '博纳国际影城', '18866667777', '济南市历下区经十路66号', '2023-06-13');
INSERT INTO `cinema` VALUES (19, '金逸珠江国际影城', '13722223333', '东莞市虎门镇轻轨站旁边', '2023-06-13');
INSERT INTO `cinema` VALUES (20, 'SFC上影影城', '13933334444', '苏州市工业园区星海街88号', '2023-06-13');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `m_id` int(11) NOT NULL COMMENT '电影主键',
  `m_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影名',
  `m_date` date NULL DEFAULT NULL COMMENT '上映日期',
  `m_country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上映国家',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '追梦高手', '2023-06-13', '中国');
INSERT INTO `movie` VALUES (2, '暴走玩家', '2023-06-13', '美国');
INSERT INTO `movie` VALUES (3, '无人生还', '2023-06-13', '英国');
INSERT INTO `movie` VALUES (4, '幸福咖啡馆', '2023-06-13', '韩国');
INSERT INTO `movie` VALUES (5, '神秘花园', '2023-06-13', '法国');
INSERT INTO `movie` VALUES (6, '魔法小精灵', '2023-06-13', '日本');
INSERT INTO `movie` VALUES (7, '旅行者', '2023-06-13', '德国');
INSERT INTO `movie` VALUES (8, '银河守卫队', '2023-06-13', '美国');
INSERT INTO `movie` VALUES (9, '古墓寻宝', '2023-06-13', '加拿大');
INSERT INTO `movie` VALUES (10, '超凡蜘蛛侠', '2023-06-13', '美国');
INSERT INTO `movie` VALUES (11, '森林之王', '2023-06-13', '俄罗斯');
INSERT INTO `movie` VALUES (12, '时光倒流机', '2023-06-13', '英国');
INSERT INTO `movie` VALUES (13, '太空冒险家', '2023-06-13', '美国');
INSERT INTO `movie` VALUES (14, '外星人入侵', '2023-06-13', '日本');
INSERT INTO `movie` VALUES (15, '红楼梦之梦', '2023-06-13', '中国');
INSERT INTO `movie` VALUES (16, '缤纷童话屋', '2023-06-13', '法国');
INSERT INTO `movie` VALUES (17, '快乐小熊维尼', '2023-06-13', '美国');
INSERT INTO `movie` VALUES (18, '魔法城堡', '2023-06-13', '英国');
INSERT INTO `movie` VALUES (19, '飞天战机', '2023-06-13', '日本');
INSERT INTO `movie` VALUES (20, '海底历险记', '2023-06-13', '澳大利亚');

-- ----------------------------
-- Table structure for movie_cinema
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema`;
CREATE TABLE `movie_cinema`  (
  `mc_movie_id` int(11) NULL DEFAULT NULL COMMENT '电影外键',
  `mc_cinema_id` int(11) NULL DEFAULT NULL COMMENT '影院外键'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie_cinema
-- ----------------------------
INSERT INTO `movie_cinema` VALUES (1, 1);
INSERT INTO `movie_cinema` VALUES (1, 2);
INSERT INTO `movie_cinema` VALUES (1, 3);
INSERT INTO `movie_cinema` VALUES (2, 3);
INSERT INTO `movie_cinema` VALUES (2, 4);
INSERT INTO `movie_cinema` VALUES (2, 5);
INSERT INTO `movie_cinema` VALUES (3, 6);
INSERT INTO `movie_cinema` VALUES (3, 7);
INSERT INTO `movie_cinema` VALUES (4, 8);
INSERT INTO `movie_cinema` VALUES (4, 9);
INSERT INTO `movie_cinema` VALUES (4, 10);
INSERT INTO `movie_cinema` VALUES (5, 11);
INSERT INTO `movie_cinema` VALUES (5, 12);
INSERT INTO `movie_cinema` VALUES (6, 13);
INSERT INTO `movie_cinema` VALUES (6, 14);
INSERT INTO `movie_cinema` VALUES (6, 15);
INSERT INTO `movie_cinema` VALUES (7, 16);
INSERT INTO `movie_cinema` VALUES (7, 17);
INSERT INTO `movie_cinema` VALUES (8, 18);
INSERT INTO `movie_cinema` VALUES (8, 19);
INSERT INTO `movie_cinema` VALUES (9, 20);
INSERT INTO `movie_cinema` VALUES (9, 1);
INSERT INTO `movie_cinema` VALUES (10, 2);
INSERT INTO `movie_cinema` VALUES (10, 3);
INSERT INTO `movie_cinema` VALUES (11, 4);
INSERT INTO `movie_cinema` VALUES (11, 5);
INSERT INTO `movie_cinema` VALUES (12, 6);
INSERT INTO `movie_cinema` VALUES (12, 7);
INSERT INTO `movie_cinema` VALUES (12, 8);
INSERT INTO `movie_cinema` VALUES (13, 9);
INSERT INTO `movie_cinema` VALUES (13, 10);
INSERT INTO `movie_cinema` VALUES (14, 11);
INSERT INTO `movie_cinema` VALUES (14, 12);
INSERT INTO `movie_cinema` VALUES (15, 13);
INSERT INTO `movie_cinema` VALUES (15, 14);
INSERT INTO `movie_cinema` VALUES (16, 15);
INSERT INTO `movie_cinema` VALUES (16, 16);
INSERT INTO `movie_cinema` VALUES (17, 17);
INSERT INTO `movie_cinema` VALUES (17, 18);
INSERT INTO `movie_cinema` VALUES (18, 19);
INSERT INTO `movie_cinema` VALUES (18, 20);
INSERT INTO `movie_cinema` VALUES (19, 1);
INSERT INTO `movie_cinema` VALUES (19, 2);
INSERT INTO `movie_cinema` VALUES (20, 3);
INSERT INTO `movie_cinema` VALUES (20, 4);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `r_id` int(11) NOT NULL COMMENT '角色主键',
  `r_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名',
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '管理员');
INSERT INTO `role` VALUES (2, '游客');

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket`  (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '电影票主键',
  `t_movie` int(11) NULL DEFAULT NULL COMMENT '电影外键（getName）',
  `t_cinema` int(11) NULL DEFAULT NULL COMMENT '电影院外键（getName）',
  `t_date` date NULL DEFAULT NULL COMMENT '购买时间',
  `t_user` int(11) NULL DEFAULT NULL COMMENT '购买者外键（getName）',
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES (1, 5, 11, '2023-04-19', 2);
INSERT INTO `ticket` VALUES (2, 11, 5, '2023-04-18', 12);
INSERT INTO `ticket` VALUES (3, 13, 10, '2023-04-17', 6);
INSERT INTO `ticket` VALUES (4, 2, 3, '2023-04-16', 20);
INSERT INTO `ticket` VALUES (5, 8, 19, '2023-04-15', 14);
INSERT INTO `ticket` VALUES (6, 19, 1, '2023-04-14', 1);
INSERT INTO `ticket` VALUES (7, 1, 3, '2023-04-13', 9);
INSERT INTO `ticket` VALUES (8, 20, 4, '2023-04-12', 3);
INSERT INTO `ticket` VALUES (9, 7, 17, '2023-04-11', 17);
INSERT INTO `ticket` VALUES (10, 16, 15, '2023-04-10', 5);
INSERT INTO `ticket` VALUES (12, 15, 13, '2023-04-03', 8);
INSERT INTO `ticket` VALUES (13, 6, 13, '2023-04-23', 3);
INSERT INTO `ticket` VALUES (14, 2, 5, '2023-04-16', 7);
INSERT INTO `ticket` VALUES (16, 3, 7, '2023-06-11', 24);
INSERT INTO `ticket` VALUES (17, 3, 7, '2023-06-13', 9);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `u_username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `u_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `u_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `u_date` date NULL DEFAULT NULL COMMENT '创建日期（不可修改）',
  `u_role_id` int(11) NULL DEFAULT NULL COMMENT '角色外键',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '熊熊', '123456', '1899999666', '2023-06-13', 1);
INSERT INTO `user` VALUES (2, '张三', '123456', '13800001111', '2023-06-13', 1);
INSERT INTO `user` VALUES (3, '李四', '654321', '13900002222', '2023-06-12', 1);
INSERT INTO `user` VALUES (5, '赵六', '222222', '13600004444', '2023-06-13', 2);
INSERT INTO `user` VALUES (6, '钱七', '333333', '13500005555', '2023-06-13', 2);
INSERT INTO `user` VALUES (7, '孙八', '444444', '13400006666', '2023-06-13', 2);

SET FOREIGN_KEY_CHECKS = 1;
