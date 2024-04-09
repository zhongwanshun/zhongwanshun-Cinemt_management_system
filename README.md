# 																													SpringCloudProject

## 一、项目简介

1. 基于**SpringCloud Alibab**，包含一个**注册中心**，一个**公共项目**，没有使用**Gateway**，存在**多个资源服务**，前端较为简单，包含六张数据库表，
   所有控制器饭会类型统一封装为了工具类，后端合前端交互数据传输不仅只有实体类，前端用的是**前后端不分离的框架**,前端依赖于后端,所以没法使用gateway,但是在代码上,将服务端分为多个服务,同时也有**负载均衡**的能力，是一个关于电影票购票及管理的系统。
2. 运行环境
   1. 设备名称	LAPTOP-7FEE9KK7
      处理器	AMD Ryzen 5 4500U with Radeon Graphics            2.38 GHz
      机带 RAM	16.0 GB (15.4 GB 可用)
   2. IntelliJ IDEA 2020.1 x64
   3. JDK1.8
   4. 1.8 java version "1.8.0_351"
   5. apache-maven-3.6.3
   6. nacos-server-2.1.0

## 二、数据库设计

包含：电影院表、电影表、电影和电影的关联表、角色表、电影票表、用户表。

### 1、影院表

```mysql
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema`  (
  `c_id` int(11) NOT NULL COMMENT '影院主键',
  `c_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影院名称',
  `c_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `c_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影院地址',
  `c_date` date NULL DEFAULT NULL COMMENT '首营业日期',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

### 2、电影表

```mysql
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `m_id` int(11) NOT NULL COMMENT '电影主键',
  `m_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影名',
  `m_date` date NULL DEFAULT NULL COMMENT '上映日期',
  `m_country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上映国家',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

### 3、影院和电影票关联表

```mysql
DROP TABLE IF EXISTS `movie_cinema`;
CREATE TABLE `movie_cinema`  (
  `mc_movie_id` int(11) NULL DEFAULT NULL COMMENT '电影外键',
  `mc_cinema_id` int(11) NULL DEFAULT NULL COMMENT '影院外键'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

### 4、角色表

```mysql
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `r_id` int(11) NOT NULL COMMENT '角色主键',
  `r_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名',
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

### 5、电影票表

```mysql
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket`  (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '电影票主键',
  `t_movie` int(11) NULL DEFAULT NULL COMMENT '电影外键（getName）',
  `t_cinema` int(11) NULL DEFAULT NULL COMMENT '电影院外键（getName）',
  `t_date` date NULL DEFAULT NULL COMMENT '购买时间',
  `t_user` int(11) NULL DEFAULT NULL COMMENT '购买者外键（getName）',
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

### 6、用户表

```mysql
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `u_username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `u_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `u_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `u_date` date NULL DEFAULT NULL COMMENT '创建日期（不可修改）',
  `u_role_id` int(11) NULL DEFAULT NULL COMMENT '角色外键',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

## 三、部署步骤

### 1、数据库导入

![image-20230611213144243](./READMEIMAGES/image-20230611213144243.png)

### 2、项目导入

![image-20230611213417978](./READMEIMAGES/image-20230611213417978.png)

### 3、配置maven

![image-20230611214729816](./READMEIMAGES/image-20230611214729816.png)

### 4、配置java

![image-20230611214814819](./READMEIMAGES/image-20230611214814819.png)



### 5、项目数据库配置修改

![image-20230611214952801](./READMEIMAGES/image-20230611214952801.png)

### 6、项目启动

![image-20230611222514333](./READMEIMAGES/image-20230611222514333.png)

## 四、项目技术要求

![image-20230611222654493](./READMEIMAGES/image-20230611222654493.png)

## 五、服务

### 1、MovieServiceApplication

![image-20230611223053919](./READMEIMAGES/image-20230611223053919.png)

### 2、OpenFeignApplication

![image-20230611223954479](./READMEIMAGES/image-20230611223954479.png)

### 3、RoleServiceApplication

![image-20230611224256636](./READMEIMAGES/image-20230611224256636.png)

### 4、TicketsServiceApplication

![image-20230611224602988](./READMEIMAGES/image-20230611224602988.png)

### 5、UserServiceApplication

![image-20230611224900443](./READMEIMAGES/image-20230611224900443.png)

### 6、CinemsaServiceApplication

![image-20230611225029223](./READMEIMAGES/image-20230611225029223.png)

## 六、配置和微服务管理

### 1、Nacos

（先启动Nacos，再去启动服务）

![image-20230611230936942](./READMEIMAGES/image-20230611230936942.png)

### 2、微服务管理

（注意可能刚进入的时候服务显示为空，只需要点击查询，刷新一下就可以了）

![image-20230611231039789](./READMEIMAGES/image-20230611231039789.png)

## 七、用户使用手册

### 																				**未登录状态**

### 1、进入主页

（浏览器地址栏输入：http://localhost:6969/）

![image-20230611231304400](./READMEIMAGES/image-20230611231304400.png)

### 2、影院列表页

![image-20230613234333048](./READMEIMAGES/image-20230613234333048.png)

### 3、影院列表切换下一页

![image-20230613234403651](./READMEIMAGES/image-20230613234403651.png)

### 4、查看某个电影院上映的电影

![image-20230613234458432](./READMEIMAGES/image-20230613234458432.png)

### 5、模糊查询电影院名称

![image-20230613234530794](./READMEIMAGES/image-20230613234530794.png)

### 6、电影列表页

![image-20230613234550269](./READMEIMAGES/image-20230613234550269.png)

### 7、电影列表页切换下一页

![image-20230613234611819](./READMEIMAGES/image-20230613234611819.png)

### 8、电影模糊查询

![image-20230613234629528](./READMEIMAGES/image-20230613234629528.png)

### 9、用户登录页

![image-20230611234008661](./READMEIMAGES/image-20230611234008661.png)

### 10、用户注册页		

![image-20230611234230606](./READMEIMAGES/image-20230611234230606.png)

### 																	普通用户登录注册

### 1、用户注册并实现注册成功自动登录

![image-20230613195355647](./READMEIMAGES/image-20230613195355647.png)

![image-20230611234819809](./READMEIMAGES/image-20230611234819809.png)

### 2、用户进行购票

（先选择电影名称）

![image-20230611234908028](./READMEIMAGES/image-20230611234908028.png)

（再选择影院）

![image-20230611234944429](./READMEIMAGES/image-20230611234944429.png)

（点击付款，会直接付款成功，并且生成电影票相关信息）

![image-20230611235049198](./READMEIMAGES/image-20230611235049198.png)

### 3、用户个人信息

（密码没有加密，可以进行修改）

![image-20230612081750443](./READMEIMAGES/image-20230612081750443.png)

## 															管理员登录管理

### 1、切换身份登录

![image-20230612081853772](./READMEIMAGES/image-20230612081853772.png)

区别于普通游客登录

![image-20230612081956261](./READMEIMAGES/image-20230612081956261.png)

### 2、用户购票详情清单

![image-20230612082137847](./READMEIMAGES/image-20230612082137847.png)

（这是刚才用户登录以后购买的记录）

![image-20230612082213665](./READMEIMAGES/image-20230612082213665.png)

### 3、用户列表

![image-20230613234718468](./READMEIMAGES/image-20230613234718468.png)

（点击修改用户信息之后进入用户信息修改，可以修改用户的基本信息和身份）

![image-20230613234829858](./READMEIMAGES/image-20230613234829858.png)

### 4、用户删除

![image-20230613234933011](./READMEIMAGES/image-20230613234933011.png)

（删除后自动刷新并且不再显示）

![image-20230612082509897](./READMEIMAGES/image-20230612082509897.png)

（删除以后不能登录）

![image-20230612082557312](./READMEIMAGES/image-20230612082557312.png)

### 5、管理员添加用户

![image-20230612082702337](./READMEIMAGES/image-20230612082702337.png)

（添加成功）

![image-20230612082742926](./READMEIMAGES/image-20230612082742926.png)

### 6、管理员修改基本信息

（修改基本信息不能修改自己的身份）

![image-20230612082917225](./READMEIMAGES/image-20230612082917225.png)


