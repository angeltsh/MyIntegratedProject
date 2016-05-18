-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        5.6.27-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  7.0.0.4363
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 generatetestdata 的数据库结构
CREATE DATABASE IF NOT EXISTS `generatetestdata` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `generatetestdata`;


-- 导出  表 generatetestdata.t_resource 结构
CREATE TABLE IF NOT EXISTS `t_resource` (
  `RESOURCE_ID` int(10) NOT NULL DEFAULT '0' COMMENT '权限ID',
  `RESOURCE_TOKEN` int(10) DEFAULT NULL COMMENT 'token',
  `RESOURCE_URL` int(10) DEFAULT NULL COMMENT '资源URL',
  `RESOURCE_DESC` int(10) DEFAULT NULL COMMENT '权限说明',
  PRIMARY KEY (`RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表\r\n权限表';

-- 正在导出表  generatetestdata.t_resource 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `t_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_resource` ENABLE KEYS */;


-- 导出  表 generatetestdata.t_role 结构
CREATE TABLE IF NOT EXISTS `t_role` (
  `ROLE_ID` int(10) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `ROLE_NAME` int(10) DEFAULT NULL COMMENT '角色名',
  `ROLE_DESC` int(10) DEFAULT NULL COMMENT '角色说明',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表\r\n角色表\r\n角色表';

-- 正在导出表  generatetestdata.t_role 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;


-- 导出  表 generatetestdata.t_role_resource 结构
CREATE TABLE IF NOT EXISTS `t_role_resource` (
  `ROLE_ID` varchar(32) NOT NULL COMMENT '角色ID',
  `RESOURCE_ID` varchar(32) NOT NULL COMMENT '资源ID',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `GMT_CREATE` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFIED_USER` varchar(32) DEFAULT NULL COMMENT '更新人',
  `GMT_MODIFIED` datetime DEFAULT NULL COMMENT '更新时间',
  `ROLE_RESOURCE_VALIDATE` char(1) DEFAULT NULL COMMENT '有效性:0:无效,1:有效',
  `REMARKS` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ROLE_ID`,`RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  generatetestdata.t_role_resource 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `t_role_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_role_resource` ENABLE KEYS */;


-- 导出  表 generatetestdata.t_user_info 结构
CREATE TABLE IF NOT EXISTS `t_user_info` (
  `USER_ID` int(32) NOT NULL COMMENT '用户ID',
  `USER_NAME` varchar(32) NOT NULL COMMENT '用户名',
  `USER_PWD` varchar(32) NOT NULL COMMENT '密码',
  `USER_VALIDATE` int(32) NOT NULL COMMENT '有效性：0无效1有效',
  `GMT_CREATE` int(32) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表\r\n用户表';

-- 正在导出表  generatetestdata.t_user_info 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `t_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_info` ENABLE KEYS */;


-- 导出  表 generatetestdata.t_user_role 结构
CREATE TABLE IF NOT EXISTS `t_user_role` (
  `USER_ID` varchar(32) NOT NULL COMMENT '用户ID',
  `ROLE_ID` varchar(32) NOT NULL COMMENT '角色ID',
  `GMT_CREATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `GMT_MODIFIED` datetime DEFAULT NULL COMMENT '更新时间',
  `MODIFIED_USER` varchar(32) DEFAULT NULL COMMENT '更新人',
  `USER_ROLE_VALIDATE` char(1) DEFAULT NULL COMMENT '有效性:0:无效,1:有效',
  `REMARKS` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`USER_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- 正在导出表  generatetestdata.t_user_role 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
