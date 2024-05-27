/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t022`;
CREATE DATABASE IF NOT EXISTS `t022` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t022`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot1hme0/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot1hme0/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot1hme0/upload/picture3.jpg'),
	(6, 'homepage', NULL);

DROP TABLE IF EXISTS `ruxuebanli`;
CREATE TABLE IF NOT EXISTS `ruxuebanli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shifouruxue` varchar(200) DEFAULT NULL COMMENT '是否入学',
  `shenghuoyongpinlingqu` varchar(200) DEFAULT NULL COMMENT '生活用品领取',
  `sushebaodao` varchar(200) DEFAULT NULL COMMENT '宿舍报到',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1703468156625 DEFAULT CHARSET=utf8mb3 COMMENT='入学办理';

DELETE FROM `ruxuebanli`;
INSERT INTO `ruxuebanli` (`id`, `addtime`, `xuehao`, `xingming`, `shifouruxue`, `shenghuoyongpinlingqu`, `sushebaodao`) VALUES
	(31, '2021-05-06 09:48:25', '学号1', '姓名1', '未入学', '未领取', '未报到'),
	(32, '2021-05-06 09:48:25', '学号2', '姓名2', '未入学', '未领取', '未报到'),
	(33, '2021-05-06 09:48:25', '学号3', '姓名3', '未入学', '未领取', '未报到'),
	(34, '2021-05-06 09:48:25', '学号4', '姓名4', '未入学', '未领取', '未报到'),
	(35, '2021-05-06 09:48:25', '学号5', '姓名5', '未入学', '未领取', '未报到'),
	(36, '2021-05-06 09:48:25', '学号6', '姓名6', '未入学', '未领取', '未报到'),
	(1703468156624, '2023-12-25 01:35:56', '学生1', '姓名1', '未入学', '未领取', '已报到');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '0j8z3qg7ukn33azpcz3295pyet8gemt1', '2023-12-25 01:32:31', '2023-12-25 02:35:34'),
	(2, 11, '学生1', 'xuesheng', '学生', 'rzkjivmze5n708oz7rb56aa31gi72zpk', '2023-12-25 01:35:07', '2023-12-25 02:36:19');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-06 09:48:25');

DROP TABLE IF EXISTS `xuejixinxi`;
CREATE TABLE IF NOT EXISTS `xuejixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `nianling` int NOT NULL COMMENT '年龄',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `xianduxuexiao` varchar(200) NOT NULL COMMENT '现读学校',
  `zuigaoxueli` varchar(200) NOT NULL COMMENT '最高学历',
  `tijianbiao` varchar(200) DEFAULT NULL COMMENT '体检表',
  `xueshengchengjibiao` varchar(200) DEFAULT NULL COMMENT '学生成绩表',
  `dangjiguanxi` varchar(200) DEFAULT NULL COMMENT '党籍关系',
  `rongyuzhengshu` varchar(200) DEFAULT NULL COMMENT '荣誉证书',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='学籍信息';

DELETE FROM `xuejixinxi`;
INSERT INTO `xuejixinxi` (`id`, `addtime`, `xuehao`, `xingming`, `xingbie`, `nianling`, `chushengriqi`, `shenfenzhenghao`, `xianduxuexiao`, `zuigaoxueli`, `tijianbiao`, `xueshengchengjibiao`, `dangjiguanxi`, `rongyuzhengshu`, `zhaopian`) VALUES
	(21, '2021-05-06 09:48:25', '学号1', '姓名1', '男', 1, '2021-05-06', '440300199101010001', '现读学校1', '最高学历1', '', '', '党籍关系1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(22, '2021-05-06 09:48:25', '学号2', '姓名2', '男', 2, '2021-05-06', '440300199202020002', '现读学校2', '最高学历2', '', '', '党籍关系2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(23, '2021-05-06 09:48:25', '学号3', '姓名3', '男', 3, '2021-05-06', '440300199303030003', '现读学校3', '最高学历3', '', '', '党籍关系3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(24, '2021-05-06 09:48:25', '学号4', '姓名4', '男', 4, '2021-05-06', '440300199404040004', '现读学校4', '最高学历4', '', '', '党籍关系4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(25, '2021-05-06 09:48:25', '学号5', '姓名5', '男', 5, '2021-05-06', '440300199505050005', '现读学校5', '最高学历5', '', '', '党籍关系5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(26, '2021-05-06 09:48:25', '学号6', '姓名6', '男', 6, '2021-05-06', '440300199606060006', '现读学校6', '最高学历6', '', '', '党籍关系6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xingming`, `xingbie`, `nianling`, `xueyuan`, `zhuanye`, `dianhua`, `youxiang`, `shenfenzheng`, `zhaopian`) VALUES
	(11, '2021-05-06 09:48:25', '学生1', '123456', '姓名1', '男', 1, '学院1', '专业1', '13823888881', '773890001@qq.com', '440300199101010001', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(12, '2021-05-06 09:48:25', '学生2', '123456', '姓名2', '男', 2, '学院2', '专业2', '13823888882', '773890002@qq.com', '440300199202020002', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(13, '2021-05-06 09:48:25', '学生3', '123456', '姓名3', '男', 3, '学院3', '专业3', '13823888883', '773890003@qq.com', '440300199303030003', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(14, '2021-05-06 09:48:25', '学生4', '123456', '姓名4', '男', 4, '学院4', '专业4', '13823888884', '773890004@qq.com', '440300199404040004', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(15, '2021-05-06 09:48:25', '学生5', '123456', '姓名5', '男', 5, '学院5', '专业5', '13823888885', '773890005@qq.com', '440300199505050005', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(16, '2021-05-06 09:48:25', '学生6', '123456', '姓名6', '男', 6, '学院6', '专业6', '13823888886', '773890006@qq.com', '440300199606060006', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
