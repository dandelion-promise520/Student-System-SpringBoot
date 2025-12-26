-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: student-system
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'stu_class','班级信息表','stu_student','class_id','StuClass','sub','element-plus','com.ruoyi.system','system','class','班级信息','dandelion','0','/','{\"parentMenuId\":2000}','dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32',NULL),(2,'stu_course','课程表',NULL,NULL,'StuCourse','crud','element-plus','com.ruoyi.system','system','course','课程','ruoyi','0','/','{\"parentMenuId\":2000}','dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44',NULL),(3,'stu_score','学生成绩表',NULL,NULL,'StuScore','crud','element-plus','com.ruoyi.system','system','score','学生成绩','ruoyi','0','/','{\"parentMenuId\":2000}','dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57',NULL),(4,'stu_student','学生信息表',NULL,NULL,'StuStudent','crud','element-plus','com.ruoyi.system','system','student','学生信息','dandelion','0','/','{\"parentMenuId\":2000}','dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23',NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,1,'class_id','班级ID','bigint(20)','Long','classId','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(2,1,'class_name','班级名称','varchar(50)','String','className','0','0','1','1','1','1','1','LIKE','input','',2,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(3,1,'class_code','班级编号','varchar(20)','String','classCode','0','0','1','1','1','1','1','EQ','input','',3,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(4,1,'grade','年级','varchar(20)','String','grade','0','0','0','1','1','1','1','EQ','input','',4,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(5,1,'teacher_name','班主任','varchar(50)','String','teacherName','0','0','0','1','1','1','1','LIKE','input','',5,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(6,1,'status','状态（0正常 1停用）','char(1)','String','status','0','0','0','1','1','1','1','EQ','radio','sys_normal_disable',6,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(7,1,'create_by','创建者','varchar(64)','String','createBy','0','0','0','0',NULL,NULL,NULL,'EQ','input','',7,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(8,1,'create_time','创建时间','datetime','Date','createTime','0','0','0','0',NULL,NULL,NULL,'EQ','textarea','',8,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(9,1,'update_by','更新者','varchar(64)','String','updateBy','0','0','0','0','0',NULL,NULL,'EQ','textarea','',9,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(10,1,'update_time','更新时间','datetime','Date','updateTime','0','0','0','0','0',NULL,NULL,'EQ','textarea','',10,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(11,1,'remark','备注','varchar(500)','String','remark','0','0','0','1','1','0',NULL,'EQ','textarea','',11,'dandelion','2025-12-24 23:45:41','','2025-12-24 23:51:32'),(12,2,'course_id','课程ID','bigint(20)','Long','courseId','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44'),(13,2,'course_name','课程名称','varchar(100)','String','courseName','0','0','1','1','1','1','1','LIKE','input','',2,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44'),(14,2,'course_code','课程编号','varchar(20)','String','courseCode','0','0','1','1','1','1','1','EQ','input','',3,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44'),(15,2,'credit','学分','decimal(3,1)','BigDecimal','credit','0','0','0','1','1','1','1','EQ','input','',4,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44'),(16,2,'create_by','创建者','varchar(64)','String','createBy','0','0','0','0',NULL,NULL,NULL,'EQ','input','',5,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44'),(17,2,'create_time','创建时间','datetime','Date','createTime','0','0','0','0',NULL,NULL,NULL,'EQ','datetime','',6,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44'),(18,2,'update_by','更新者','varchar(64)','String','updateBy','0','0','0','0','0',NULL,NULL,'EQ','input','',7,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44'),(19,2,'update_time','更新时间','datetime','Date','updateTime','0','0','0','0','0',NULL,NULL,'EQ','datetime','',8,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44'),(20,2,'remark','备注','varchar(500)','String','remark','0','0','0','1','1','1',NULL,'EQ','textarea','',9,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:39:44'),(21,3,'score_id','成绩ID','bigint(20)','Long','scoreId','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(22,3,'student_id','学生ID','bigint(20)','Long','studentId','0','0','1','1','1','1','1','EQ','input','',2,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(23,3,'course_id','课程ID','bigint(20)','Long','courseId','0','0','1','1','1','1','1','EQ','select','',3,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(24,3,'score','考试成绩','decimal(5,2)','BigDecimal','score','0','0','0','1','1','1','1','BETWEEN','input','',4,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(25,3,'term','学期','varchar(50)','String','term','0','0','0','1','1','1','1','EQ','input','',5,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(26,3,'exam_date','考试日期','date','Date','examDate','0','0','0','1','1','1','1','EQ','datetime','',6,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(27,3,'create_by','创建者','varchar(64)','String','createBy','0','0','0','1',NULL,NULL,NULL,'EQ','input','',7,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(28,3,'create_time','创建时间','datetime','Date','createTime','0','0','0','1',NULL,NULL,NULL,'EQ','datetime','',8,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(29,3,'update_by','更新者','varchar(64)','String','updateBy','0','0','0','1','1',NULL,NULL,'EQ','input','',9,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(30,3,'update_time','更新时间','datetime','Date','updateTime','0','0','0','1','1',NULL,NULL,'EQ','datetime','',10,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(31,3,'remark','备注','varchar(500)','String','remark','0','0','0','1','1','1',NULL,'EQ','textarea','',11,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:23:57'),(32,4,'student_id','学生ID','bigint(20)','Long','studentId','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(33,4,'class_id','班级ID','bigint(20)','Long','classId','0','0','1','1','1','1','1','EQ','select','',2,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(34,4,'student_name','学生姓名','varchar(50)','String','studentName','0','0','1','1','1','1','1','LIKE','input','',3,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(35,4,'student_number','学号','varchar(20)','String','studentNumber','0','0','1','1','1','1','1','EQ','input','',4,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(36,4,'gender','性别（0男 1女 2未知）','char(1)','String','gender','0','0','0','1','1','1','1','EQ','radio','sys_user_sex',5,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(37,4,'birthday','出生日期','date','Date','birthday','0','0','0','1','1','1','1','EQ','datetime','',6,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(38,4,'phone','手机号','varchar(11)','String','phone','0','0','0','1','1','1','1','LIKE','input','',7,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(39,4,'email','邮箱','varchar(50)','String','email','0','0','0','1','1','0','1','EQ','input','',8,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(40,4,'address','家庭住址','varchar(255)','String','address','0','0','0','1','1','0','1','EQ','input','',9,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(41,4,'enrollment_date','入学日期','date','Date','enrollmentDate','0','0','0','1','1','1','1','EQ','datetime','',10,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(42,4,'create_by','创建者','varchar(64)','String','createBy','0','0','0','1',NULL,NULL,NULL,'EQ','input','',11,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(43,4,'create_time','创建时间','datetime','Date','createTime','0','0','0','1',NULL,NULL,NULL,'EQ','datetime','',12,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(44,4,'update_by','更新者','varchar(64)','String','updateBy','0','0','0','1','1',NULL,NULL,'EQ','input','',13,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(45,4,'update_time','更新时间','datetime','Date','updateTime','0','0','0','1','1',NULL,NULL,'EQ','datetime','',14,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23'),(46,4,'remark','备注','varchar(500)','String','remark','0','0','0','1','1','0',NULL,'EQ','textarea','',15,'dandelion','2025-12-24 23:45:41','','2025-12-25 00:11:23');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_class`
--

DROP TABLE IF EXISTS `stu_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_class` (
  `class_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '班级ID',
  `class_name` varchar(50) NOT NULL COMMENT '班级名称',
  `class_code` varchar(20) NOT NULL COMMENT '班级编号',
  `grade` varchar(20) DEFAULT '' COMMENT '年级',
  `teacher_name` varchar(50) DEFAULT '' COMMENT '班主任',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='班级信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_class`
--

LOCK TABLES `stu_class` WRITE;
/*!40000 ALTER TABLE `stu_class` DISABLE KEYS */;
INSERT INTO `stu_class` VALUES (1,'本科计科一班','1','大四','张铮','0','','2025-12-25 14:59:27','','2025-12-25 17:20:58',NULL),(2,'本科计科二班','2','大四','111','0','','2025-12-25 16:37:16','',NULL,NULL);
/*!40000 ALTER TABLE `stu_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_course`
--

DROP TABLE IF EXISTS `stu_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_course` (
  `course_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `course_name` varchar(100) NOT NULL COMMENT '课程名称',
  `course_code` varchar(20) NOT NULL COMMENT '课程编号',
  `credit` decimal(3,1) DEFAULT '0.0' COMMENT '学分',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='课程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_course`
--

LOCK TABLES `stu_course` WRITE;
/*!40000 ALTER TABLE `stu_course` DISABLE KEYS */;
INSERT INTO `stu_course` VALUES (1,'JAVA面向对象程序设计','1',10.0,'','2025-12-25 16:27:02','',NULL,NULL),(2,'Web程序设计','2',10.0,'','2025-12-25 17:08:40','',NULL,NULL);
/*!40000 ALTER TABLE `stu_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_score`
--

DROP TABLE IF EXISTS `stu_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_score` (
  `score_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '成绩ID',
  `student_id` bigint(20) NOT NULL COMMENT '学生ID',
  `course_id` bigint(20) NOT NULL COMMENT '课程ID',
  `score` decimal(5,2) DEFAULT '0.00' COMMENT '考试成绩',
  `term` varchar(50) DEFAULT '' COMMENT '学期',
  `exam_date` date DEFAULT NULL COMMENT '考试日期',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='学生成绩表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_score`
--

LOCK TABLES `stu_score` WRITE;
/*!40000 ALTER TABLE `stu_score` DISABLE KEYS */;
INSERT INTO `stu_score` VALUES (1,1,1,100.00,'2025秋季','2026-01-15','','2025-12-25 16:28:29','',NULL,NULL),(2,2,1,91.00,'2025秋季','2026-01-15','','2025-12-25 16:33:28','',NULL,NULL),(3,3,1,91.00,'2026春季','2026-01-15','','2025-12-25 17:07:51','','2025-12-26 04:10:23',NULL),(4,4,1,91.00,'2025秋季','2026-01-15','','2025-12-25 17:08:17','',NULL,NULL),(5,1,2,100.00,'2025秋季','2026-01-15','','2025-12-25 17:09:31','',NULL,NULL),(6,2,2,82.00,'2025秋季','2026-01-15','','2025-12-25 17:09:59','',NULL,NULL),(7,3,2,59.00,'2025秋季','2026-01-15','','2025-12-25 17:10:10','',NULL,NULL),(8,4,2,75.00,'2025秋季','2026-01-15','','2025-12-25 17:10:22','',NULL,NULL);
/*!40000 ALTER TABLE `stu_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_student`
--

DROP TABLE IF EXISTS `stu_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_student` (
  `student_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `class_id` bigint(20) NOT NULL COMMENT '班级ID',
  `student_name` varchar(50) NOT NULL COMMENT '学生姓名',
  `student_number` varchar(20) NOT NULL COMMENT '学号',
  `gender` char(1) DEFAULT '0' COMMENT '性别（0男 1女 2未知）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `address` varchar(255) DEFAULT '' COMMENT '家庭住址',
  `enrollment_date` date DEFAULT NULL COMMENT '入学日期',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `uk_student_number` (`student_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='学生信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_student`
--

LOCK TABLES `stu_student` WRITE;
/*!40000 ALTER TABLE `stu_student` DISABLE KEYS */;
INSERT INTO `stu_student` VALUES (1,1,'刘健锋','2500800022','0','2004-12-19','18379810069','1993466159@qq.com','江西省赣州市','2025-09-01','','2025-12-25 16:17:28','',NULL,NULL),(2,1,'钟云龙','2500800027','2','2004-08-10','18720781431','18720781431@163.com','江西省赣州市瑞金市','2025-09-01','','2025-12-25 16:32:58','',NULL,NULL),(3,2,'张皓宇','2500800020','0','2004-12-31','13728872643','13728872643@163.com','江西省新余市','2025-09-01','','2025-12-25 16:40:35','','2025-12-25 16:45:20',NULL),(4,2,'余振华','25008000','1','2004-12-01','123456789','123456789@163.com','江西省景德镇市','2025-09-01','','2025-12-25 17:07:20','',NULL,NULL);
/*!40000 ALTER TABLE `stu_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2025-12-24 19:10:58','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2025-12-24 19:10:58','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2025-12-24 19:10:58','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2025-12-24 19:10:58','',NULL,'是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2025-12-24 19:10:58','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2025-12-24 19:10:58','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）'),(7,'用户管理-初始密码修改策略','sys.account.initPasswordModify','1','Y','admin','2025-12-24 19:10:58','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(8,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2025-12-24 19:10:58','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','江西交通职业技术学院',0,'dandelion','18379810069','1993466159@qq.com','0','0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:13:52'),(101,100,'0,100','经开区校区',1,'dandelion','18379810069','1993466159@qq.com','0','0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:14:22'),(102,100,'0,100','新建区校区',2,'dandelion','18379810069','1993466159@qq.com','0','0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:14:37'),(103,101,'0,100,101','信息工程学院',1,'dandelion','18379810069','1993466159@qq.com','0','0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:15:01'),(104,101,'0,100,101','机电工程学院',2,'dandelion','18379810069','1993466159@qq.com','0','0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:15:12'),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','2','admin','2025-12-24 19:10:57','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','2','admin','2025-12-24 19:10:57','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','2','admin','2025-12-24 19:10:57','',NULL),(108,102,'0,100,102','汽车工程学院',1,'dandelion','18379810069','1993466159@qq.com','0','0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:15:46'),(109,102,'0,100,102','建筑工程学院',2,'dandelion','18379810069','1993466159@qq.com','0','0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:15:57');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2025-12-24 19:10:58','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2025-12-24 19:10:58','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2025-12-24 19:10:58','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2025-12-24 19:10:58','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2025-12-24 19:10:58','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2025-12-24 19:10:58','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2025-12-24 19:10:58','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2025-12-24 19:10:58','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2025-12-24 19:10:58','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2025-12-24 19:10:58','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2025-12-24 19:10:58','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2025-12-24 19:10:58','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2025-12-24 19:10:58','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2025-12-24 19:10:58','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2025-12-24 19:10:58','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2025-12-24 19:10:58','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2025-12-24 19:10:58','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2025-12-24 19:10:58','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2025-12-24 19:10:58','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2025-12-24 19:10:58','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2025-12-24 19:10:58','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2025-12-24 19:10:58','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2025-12-24 19:10:58','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2025-12-24 19:10:58','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2025-12-24 19:10:58','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2025-12-24 19:10:58','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2025-12-24 19:10:58','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2025-12-24 19:10:58','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2025-12-24 19:10:58','',NULL,'停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2025-12-24 19:10:58','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2025-12-24 19:10:58','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2025-12-24 19:10:58','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2025-12-24 19:10:58','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2025-12-24 19:10:58','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2025-12-24 19:10:58','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2025-12-24 19:10:58','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2025-12-24 19:10:58','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2025-12-24 19:10:58','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2025-12-24 19:10:58','',NULL,'登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2025-12-24 19:10:58','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2025-12-24 19:10:58','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2025-12-24 19:10:58','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Edge 142','Windows >=10','0','退出成功','2025-12-24 19:12:36'),(101,'admin','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-24 19:12:40'),(102,'test','127.0.0.1','内网IP','Chrome 143','Windows10','0','登录成功','2025-12-24 19:27:35'),(103,'admin','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-24 22:46:46'),(104,'admin','127.0.0.1','内网IP','Edge 142','Windows >=10','0','退出成功','2025-12-24 22:49:14'),(105,'admin','127.0.0.1','内网IP','Edge 142','Windows >=10','1','用户不存在/密码错误','2025-12-24 22:49:17'),(106,'admin','127.0.0.1','内网IP','Edge 142','Windows >=10','1','用户不存在/密码错误','2025-12-24 22:49:25'),(107,'admin','127.0.0.1','内网IP','Edge 142','Windows >=10','1','验证码错误','2025-12-24 22:50:18'),(108,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-24 22:52:28'),(109,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-24 23:36:04'),(110,'test','127.0.0.1','内网IP','Chrome 143','Windows10','0','登录成功','2025-12-25 00:06:43'),(111,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-25 14:58:54'),(112,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-25 16:13:00'),(113,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','1','验证码错误','2025-12-25 16:13:00'),(114,'dandelion','127.0.0.1','内网IP','Firefox 146.0','Windows >=10','0','登录成功','2025-12-25 23:59:27'),(115,'dandelion','127.0.0.1','内网IP','Firefox 146.0','Windows >=10','1','验证码错误','2025-12-26 10:46:31'),(116,'dandelion','127.0.0.1','内网IP','Firefox 146.0','Windows >=10','0','登录成功','2025-12-26 10:46:31'),(117,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-26 10:47:43'),(118,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','退出成功','2025-12-26 10:49:34'),(119,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-26 10:49:43'),(120,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','退出成功','2025-12-26 10:49:50'),(121,'test','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-26 10:49:55'),(122,'test','127.0.0.1','内网IP','Edge 142','Windows >=10','0','退出成功','2025-12-26 10:50:31'),(123,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','1','验证码错误','2025-12-26 10:50:37'),(124,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-26 10:50:48'),(125,'dandelion','127.0.0.1','内网IP','Firefox 146.0','Windows >=10','0','退出成功','2025-12-26 10:51:05'),(126,'test','127.0.0.1','内网IP','Firefox 146.0','Windows >=10','1','验证码错误','2025-12-26 10:51:15'),(127,'test','127.0.0.1','内网IP','Firefox 146.0','Windows >=10','0','登录成功','2025-12-26 10:51:18'),(128,'dandelion','172.18.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-26 10:55:31'),(129,'dandelion','172.18.0.1','内网IP','Edge 142','Windows >=10','0','退出成功','2025-12-26 10:55:38'),(130,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','退出成功','2025-12-26 10:58:09'),(131,'test','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-26 10:58:28'),(132,'test','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-26 11:27:42'),(133,'test','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-26 12:01:55'),(134,'test','127.0.0.1','内网IP','Edge 142','Windows >=10','0','退出成功','2025-12-26 12:04:58'),(135,'dandelion','127.0.0.1','内网IP','Edge 142','Windows >=10','0','登录成功','2025-12-26 12:05:10');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) DEFAULT '' COMMENT '路由名称',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2025 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,'','',1,0,'M','0','0','','system','admin','2025-12-24 19:10:57','',NULL,'系统管理目录'),(2,'系统监控',0,2,'monitor',NULL,'','',1,0,'M','0','0','','monitor','admin','2025-12-24 19:10:57','',NULL,'系统监控目录'),(3,'系统工具',0,3,'tool',NULL,'','',1,0,'M','0','0','','tool','admin','2025-12-24 19:10:57','',NULL,'系统工具目录'),(100,'用户管理',1,1,'user','system/user/index','','',1,0,'C','0','0','system:user:list','user','admin','2025-12-24 19:10:57','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','','',1,0,'C','0','0','system:role:list','peoples','admin','2025-12-24 19:10:57','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','','',1,0,'C','0','0','system:menu:list','tree-table','admin','2025-12-24 19:10:57','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','','',1,0,'C','0','0','system:dept:list','tree','admin','2025-12-24 19:10:57','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','','',1,0,'C','0','0','system:post:list','post','admin','2025-12-24 19:10:57','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','','',1,0,'C','1','1','system:dict:list','dict','admin','2025-12-24 19:10:57','dandelion','2025-12-26 12:09:16','字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','','',1,0,'C','1','1','system:config:list','edit','admin','2025-12-24 19:10:57','dandelion','2025-12-26 12:08:40','参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','','',1,0,'C','1','1','system:notice:list','message','admin','2025-12-24 19:10:57','dandelion','2025-12-26 12:08:32','通知公告菜单'),(108,'日志管理',1,9,'log','','','',1,0,'M','0','0','','log','admin','2025-12-24 19:10:57','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','','',1,0,'C','0','0','monitor:online:list','online','admin','2025-12-24 19:10:57','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','','',1,0,'C','1','1','monitor:job:list','job','admin','2025-12-24 19:10:57','dandelion','2025-12-26 12:07:31','定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index','','',1,0,'C','1','1','monitor:druid:list','druid','admin','2025-12-24 19:10:57','dandelion','2025-12-26 12:06:28','数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index','','',1,0,'C','1','1','monitor:server:list','server','admin','2025-12-24 19:10:57','dandelion','2025-12-26 12:06:23','服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index','','',1,0,'C','0','0','monitor:cache:list','redis','admin','2025-12-24 19:10:57','',NULL,'缓存监控菜单'),(114,'缓存列表',2,6,'cacheList','monitor/cache/list','','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2025-12-24 19:10:57','',NULL,'缓存列表菜单'),(115,'表单构建',3,1,'build','tool/build/index','','',1,0,'C','1','1','tool:build:list','build','admin','2025-12-24 19:10:57','dandelion','2025-12-26 12:07:59','表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','','',1,0,'C','1','1','tool:gen:list','code','admin','2025-12-24 19:10:57','dandelion','2025-12-26 12:08:03','代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2025-12-24 19:10:57','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index','','',1,0,'C','0','0','monitor:operlog:list','form','admin','2025-12-24 19:10:57','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2025-12-24 19:10:57','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','','',1,0,'F','0','0','system:user:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1001,'用户新增',100,2,'','','','',1,0,'F','0','0','system:user:add','#','admin','2025-12-24 19:10:57','',NULL,''),(1002,'用户修改',100,3,'','','','',1,0,'F','0','0','system:user:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1003,'用户删除',100,4,'','','','',1,0,'F','0','0','system:user:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1004,'用户导出',100,5,'','','','',1,0,'F','0','0','system:user:export','#','admin','2025-12-24 19:10:57','',NULL,''),(1005,'用户导入',100,6,'','','','',1,0,'F','0','0','system:user:import','#','admin','2025-12-24 19:10:57','',NULL,''),(1006,'重置密码',100,7,'','','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2025-12-24 19:10:57','',NULL,''),(1007,'角色查询',101,1,'','','','',1,0,'F','0','0','system:role:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1008,'角色新增',101,2,'','','','',1,0,'F','0','0','system:role:add','#','admin','2025-12-24 19:10:57','',NULL,''),(1009,'角色修改',101,3,'','','','',1,0,'F','0','0','system:role:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1010,'角色删除',101,4,'','','','',1,0,'F','0','0','system:role:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1011,'角色导出',101,5,'','','','',1,0,'F','0','0','system:role:export','#','admin','2025-12-24 19:10:57','',NULL,''),(1012,'菜单查询',102,1,'','','','',1,0,'F','0','0','system:menu:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1013,'菜单新增',102,2,'','','','',1,0,'F','0','0','system:menu:add','#','admin','2025-12-24 19:10:57','',NULL,''),(1014,'菜单修改',102,3,'','','','',1,0,'F','0','0','system:menu:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1015,'菜单删除',102,4,'','','','',1,0,'F','0','0','system:menu:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1016,'部门查询',103,1,'','','','',1,0,'F','0','0','system:dept:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1017,'部门新增',103,2,'','','','',1,0,'F','0','0','system:dept:add','#','admin','2025-12-24 19:10:57','',NULL,''),(1018,'部门修改',103,3,'','','','',1,0,'F','0','0','system:dept:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1019,'部门删除',103,4,'','','','',1,0,'F','0','0','system:dept:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1020,'岗位查询',104,1,'','','','',1,0,'F','0','0','system:post:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1021,'岗位新增',104,2,'','','','',1,0,'F','0','0','system:post:add','#','admin','2025-12-24 19:10:57','',NULL,''),(1022,'岗位修改',104,3,'','','','',1,0,'F','0','0','system:post:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1023,'岗位删除',104,4,'','','','',1,0,'F','0','0','system:post:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1024,'岗位导出',104,5,'','','','',1,0,'F','0','0','system:post:export','#','admin','2025-12-24 19:10:57','',NULL,''),(1025,'字典查询',105,1,'#','','','',1,0,'F','0','0','system:dict:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1026,'字典新增',105,2,'#','','','',1,0,'F','0','0','system:dict:add','#','admin','2025-12-24 19:10:57','',NULL,''),(1027,'字典修改',105,3,'#','','','',1,0,'F','0','0','system:dict:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1028,'字典删除',105,4,'#','','','',1,0,'F','0','0','system:dict:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1029,'字典导出',105,5,'#','','','',1,0,'F','0','0','system:dict:export','#','admin','2025-12-24 19:10:57','',NULL,''),(1030,'参数查询',106,1,'#','','','',1,0,'F','0','0','system:config:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1031,'参数新增',106,2,'#','','','',1,0,'F','0','0','system:config:add','#','admin','2025-12-24 19:10:57','',NULL,''),(1032,'参数修改',106,3,'#','','','',1,0,'F','0','0','system:config:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1033,'参数删除',106,4,'#','','','',1,0,'F','0','0','system:config:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1034,'参数导出',106,5,'#','','','',1,0,'F','0','0','system:config:export','#','admin','2025-12-24 19:10:57','',NULL,''),(1035,'公告查询',107,1,'#','','','',1,0,'F','0','0','system:notice:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1036,'公告新增',107,2,'#','','','',1,0,'F','0','0','system:notice:add','#','admin','2025-12-24 19:10:57','',NULL,''),(1037,'公告修改',107,3,'#','','','',1,0,'F','0','0','system:notice:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1038,'公告删除',107,4,'#','','','',1,0,'F','0','0','system:notice:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1039,'操作查询',500,1,'#','','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1040,'操作删除',500,2,'#','','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1041,'日志导出',500,3,'#','','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2025-12-24 19:10:57','',NULL,''),(1042,'登录查询',501,1,'#','','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1043,'登录删除',501,2,'#','','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1044,'日志导出',501,3,'#','','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2025-12-24 19:10:57','',NULL,''),(1045,'账户解锁',501,4,'#','','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2025-12-24 19:10:57','',NULL,''),(1046,'在线查询',109,1,'#','','','',1,0,'F','0','0','monitor:online:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1047,'批量强退',109,2,'#','','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2025-12-24 19:10:57','',NULL,''),(1048,'单条强退',109,3,'#','','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2025-12-24 19:10:57','',NULL,''),(1049,'任务查询',110,1,'#','','','',1,0,'F','0','0','monitor:job:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1050,'任务新增',110,2,'#','','','',1,0,'F','0','0','monitor:job:add','#','admin','2025-12-24 19:10:57','',NULL,''),(1051,'任务修改',110,3,'#','','','',1,0,'F','0','0','monitor:job:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1052,'任务删除',110,4,'#','','','',1,0,'F','0','0','monitor:job:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1053,'状态修改',110,5,'#','','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2025-12-24 19:10:57','',NULL,''),(1054,'任务导出',110,6,'#','','','',1,0,'F','0','0','monitor:job:export','#','admin','2025-12-24 19:10:57','',NULL,''),(1055,'生成查询',116,1,'#','','','',1,0,'F','0','0','tool:gen:query','#','admin','2025-12-24 19:10:57','',NULL,''),(1056,'生成修改',116,2,'#','','','',1,0,'F','0','0','tool:gen:edit','#','admin','2025-12-24 19:10:57','',NULL,''),(1057,'生成删除',116,3,'#','','','',1,0,'F','0','0','tool:gen:remove','#','admin','2025-12-24 19:10:57','',NULL,''),(1058,'导入代码',116,4,'#','','','',1,0,'F','0','0','tool:gen:import','#','admin','2025-12-24 19:10:57','',NULL,''),(1059,'预览代码',116,5,'#','','','',1,0,'F','0','0','tool:gen:preview','#','admin','2025-12-24 19:10:57','',NULL,''),(1060,'生成代码',116,6,'#','','','',1,0,'F','0','0','tool:gen:code','#','admin','2025-12-24 19:10:57','',NULL,''),(2000,'学生管理',0,4,'student-system',NULL,NULL,'',1,0,'M','0','0','','peoples','admin','2025-12-24 19:28:29','admin','2025-12-24 19:28:39',''),(2001,'班级信息',2000,1,'class','system/class/index',NULL,'',1,0,'C','0','0','system:class:list','class','admin','2025-12-24 23:53:01','dandelion','2025-12-25 00:05:24','班级信息菜单'),(2002,'班级信息查询',2001,1,'#','',NULL,'',1,0,'F','0','0','system:class:query','#','admin','2025-12-24 23:53:01','',NULL,''),(2003,'班级信息新增',2001,2,'#','',NULL,'',1,0,'F','0','0','system:class:add','#','admin','2025-12-24 23:53:01','',NULL,''),(2004,'班级信息修改',2001,3,'#','',NULL,'',1,0,'F','0','0','system:class:edit','#','admin','2025-12-24 23:53:01','',NULL,''),(2005,'班级信息删除',2001,4,'#','',NULL,'',1,0,'F','0','0','system:class:remove','#','admin','2025-12-24 23:53:01','',NULL,''),(2006,'班级信息导出',2001,5,'#','',NULL,'',1,0,'F','0','0','system:class:export','#','admin','2025-12-24 23:53:01','',NULL,''),(2007,'学生信息',2000,2,'student','system/student/index',NULL,'',1,0,'C','0','0','system:student:list','user','admin','2025-12-25 00:16:24','dandelion','2025-12-25 00:22:27','学生信息菜单'),(2008,'学生信息查询',2007,1,'#','',NULL,'',1,0,'F','0','0','system:student:query','#','admin','2025-12-25 00:16:24','',NULL,''),(2009,'学生信息新增',2007,2,'#','',NULL,'',1,0,'F','0','0','system:student:add','#','admin','2025-12-25 00:16:24','',NULL,''),(2010,'学生信息修改',2007,3,'#','',NULL,'',1,0,'F','0','0','system:student:edit','#','admin','2025-12-25 00:16:24','',NULL,''),(2011,'学生信息删除',2007,4,'#','',NULL,'',1,0,'F','0','0','system:student:remove','#','admin','2025-12-25 00:16:24','',NULL,''),(2012,'学生信息导出',2007,5,'#','',NULL,'',1,0,'F','0','0','system:student:export','#','admin','2025-12-25 00:16:24','',NULL,''),(2013,'学生成绩',2000,3,'score','system/score/index',NULL,'',1,0,'C','0','0','system:score:list','score','admin','2025-12-25 00:25:11','dandelion','2025-12-25 00:50:59','学生成绩菜单'),(2014,'学生成绩查询',2013,1,'#','',NULL,'',1,0,'F','0','0','system:score:query','#','admin','2025-12-25 00:25:11','',NULL,''),(2015,'学生成绩新增',2013,2,'#','',NULL,'',1,0,'F','0','0','system:score:add','#','admin','2025-12-25 00:25:11','',NULL,''),(2016,'学生成绩修改',2013,3,'#','',NULL,'',1,0,'F','0','0','system:score:edit','#','admin','2025-12-25 00:25:11','',NULL,''),(2017,'学生成绩删除',2013,4,'#','',NULL,'',1,0,'F','0','0','system:score:remove','#','admin','2025-12-25 00:25:11','',NULL,''),(2018,'学生成绩导出',2013,5,'#','',NULL,'',1,0,'F','0','0','system:score:export','#','admin','2025-12-25 00:25:11','',NULL,''),(2019,'课程',2000,4,'course','system/course/index',NULL,'',1,0,'C','0','0','system:course:list','course','admin','2025-12-25 00:40:51','dandelion','2025-12-25 00:51:08','课程菜单'),(2020,'课程查询',2019,1,'#','',NULL,'',1,0,'F','0','0','system:course:query','#','admin','2025-12-25 00:40:51','',NULL,''),(2021,'课程新增',2019,2,'#','',NULL,'',1,0,'F','0','0','system:course:add','#','admin','2025-12-25 00:40:51','',NULL,''),(2022,'课程修改',2019,3,'#','',NULL,'',1,0,'F','0','0','system:course:edit','#','admin','2025-12-25 00:40:51','',NULL,''),(2023,'课程删除',2019,4,'#','',NULL,'',1,0,'F','0','0','system:course:remove','#','admin','2025-12-25 00:40:51','',NULL,''),(2024,'课程导出',2019,5,'#','',NULL,'',1,0,'F','0','0','system:course:export','#','admin','2025-12-25 00:40:51','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',_binary '新版本内容','0','admin','2025-12-24 19:10:58','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',_binary '维护内容','0','admin','2025-12-24 19:10:58','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','信息工程学院','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2025-12-24 19:10:57\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:11:55',89),(101,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','信息工程学院','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2025-12-24 19:10:57\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:11:59',41),(102,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','信息工程学院','/system/menu/4','127.0.0.1','内网IP','4 ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:12:03',20),(103,'用户头像',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','研发部门','/system/user/profile/avatar','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/12/24/fbc31fca7418410c8780e2902def9d47.png\",\"code\":200}',0,NULL,'2025-12-24 19:12:52',103),(104,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'admin','研发部门','/system/user/profile','127.0.0.1','内网IP','{\"admin\":false,\"email\":\"1993466159@qq.com\",\"nickName\":\"dandelion\",\"params\":{},\"phonenumber\":\"18379810069\",\"sex\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:13:01',21),(105,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin','研发部门','/system/user/2','127.0.0.1','内网IP','[2] ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:13:19',19),(106,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin','研发部门','/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"江西交通职业技术学院\",\"email\":\"1993466159@qq.com\",\"leader\":\"dandelion\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"18379810069\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:13:52',21),(107,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin','研发部门','/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"经开区校区\",\"email\":\"1993466159@qq.com\",\"leader\":\"dandelion\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"江西交通职业技术学院\",\"phone\":\"18379810069\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:14:22',40),(108,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin','研发部门','/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"新建区校区\",\"email\":\"1993466159@qq.com\",\"leader\":\"dandelion\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"parentName\":\"江西交通职业技术学院\",\"phone\":\"18379810069\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:14:37',31),(109,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/105','127.0.0.1','内网IP','105 ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:14:41',17),(110,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/103','127.0.0.1','内网IP','103 ','{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}',0,NULL,'2025-12-24 19:14:44',9),(111,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/107','127.0.0.1','内网IP','107 ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:14:47',14),(112,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/106','127.0.0.1','内网IP','106 ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:14:49',15),(113,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin','研发部门','/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"信息工程学院\",\"email\":\"1993466159@qq.com\",\"leader\":\"dandelion\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"parentName\":\"经开区校区\",\"phone\":\"18379810069\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:15:01',22),(114,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin','研发部门','/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"机电工程学院\",\"email\":\"1993466159@qq.com\",\"leader\":\"dandelion\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"parentName\":\"经开区校区\",\"phone\":\"18379810069\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:15:12',33),(115,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin','研发部门','/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":108,\"deptName\":\"市场部门\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"parentName\":\"新建区校区\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:15:28',26),(116,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin','研发部门','/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":108,\"deptName\":\"汽车工程学院\",\"email\":\"1993466159@qq.com\",\"leader\":\"dandelion\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"parentName\":\"新建区校区\",\"phone\":\"18379810069\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:15:46',35),(117,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin','研发部门','/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":109,\"deptName\":\"建筑工程学院\",\"email\":\"1993466159@qq.com\",\"leader\":\"dandelion\",\"orderNum\":2,\"params\":{},\"parentId\":102,\"parentName\":\"新建区校区\",\"phone\":\"18379810069\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:15:57',27),(118,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptId\":102,\"nickName\":\"test\",\"params\":{},\"postIds\":[],\"roleIds\":[2],\"status\":\"0\",\"userId\":100,\"userName\":\"test\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:16:38',123),(119,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2025-12-24 19:10:57\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:27:44',21),(120,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学生管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"student\",\"status\":\"0\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:28:29',14),(121,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2025-12-24 19:28:29\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"学生管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"student\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:28:39',15),(122,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2025-12-24 19:10:57\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:28:49',15),(123,'用户头像',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'test','新建区校区','/system/user/profile/avatar','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/12/24/5f5e8bdd2e074a62867ee1ad1b38b95a.jpg\",\"code\":200}',0,NULL,'2025-12-24 19:29:07',8),(124,'岗位管理',2,'com.ruoyi.web.controller.system.SysPostController.edit()','PUT',1,'admin','研发部门','/system/post','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2025-12-24 19:10:57\",\"flag\":false,\"params\":{},\"postCode\":\"pri\",\"postId\":1,\"postName\":\"校长\",\"postSort\":1,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:29:50',20),(125,'岗位管理',2,'com.ruoyi.web.controller.system.SysPostController.edit()','PUT',1,'admin','研发部门','/system/post','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2025-12-24 19:10:57\",\"flag\":false,\"params\":{},\"postCode\":\"pro\",\"postId\":2,\"postName\":\"教授\",\"postSort\":2,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:30:02',21),(126,'岗位管理',2,'com.ruoyi.web.controller.system.SysPostController.edit()','PUT',1,'admin','研发部门','/system/post','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2025-12-24 19:10:57\",\"flag\":false,\"params\":{},\"postCode\":\"lec\",\"postId\":4,\"postName\":\"讲师\",\"postSort\":4,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:30:16',11),(127,'岗位管理',2,'com.ruoyi.web.controller.system.SysPostController.edit()','PUT',1,'admin','研发部门','/system/post','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2025-12-24 19:10:57\",\"flag\":false,\"params\":{},\"postCode\":\"ass\",\"postId\":3,\"postName\":\"副教授\",\"postSort\":3,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:30:29',11),(128,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"/profile/avatar/2025/12/24/5f5e8bdd2e074a62867ee1ad1b38b95a.jpg\",\"createBy\":\"admin\",\"createTime\":\"2025-12-24 19:16:38\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"新建区校区\",\"leader\":\"dandelion\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":102,\"email\":\"dandelionpromise38@gmail.com\",\"loginDate\":\"2025-12-24 19:27:35\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"test\",\"params\":{},\"phonenumber\":\"13769505874\",\"postIds\":[4],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"test\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 19:39:59',34),(129,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'dandelion','信息工程学院','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"stu_student,stu_score,stu_course,stu_class\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 23:45:41',324),(130,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'dandelion','信息工程学院','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"class\",\"className\":\"StuClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":1,\"columnName\":\"class_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"班级名称\",\"columnId\":2,\"columnName\":\"class_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ClassCode\",\"columnComment\":\"班级编号\",\"columnId\":3,\"columnName\":\"class_code\",\"columnType\":\"varchar(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"classCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Grade\",\"columnComment\":\"年级\",\"columnId\":4,\"columnName\":\"grade\",\"columnType\":\"varchar(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-24 23:51:32',77),(131,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'dandelion','信息工程学院','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"stu_class\"}',NULL,0,NULL,'2025-12-24 23:51:39',347),(132,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/class/index\",\"createTime\":\"2025-12-24 23:53:01\",\"icon\":\"class\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"班级信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"class\",\"perms\":\"system:class:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"dandelion\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:05:24',32),(133,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'dandelion','信息工程学院','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2025-12-24 19:10:57\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2003,2004,2005,2006],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"dandelion\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:06:52',45),(134,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'dandelion','信息工程学院','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"student\",\"className\":\"StuStudent\",\"columns\":[{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID\",\"columnId\":32,\"columnName\":\"student_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":33,\"columnName\":\"class_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":34,\"columnName\":\"student_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentNumber\",\"columnComment\":\"学号\",\"columnId\":35,\"columnName\":\"student_number\",\"columnType\":\"varchar(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:11:23',106),(135,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'dandelion','信息工程学院','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"stu_student\"}',NULL,0,NULL,'2025-12-25 00:11:28',223),(136,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/student/index\",\"createTime\":\"2025-12-25 00:16:24\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"学生信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"student\",\"perms\":\"system:student:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"dandelion\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:20:52',35),(137,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'dandelion','信息工程学院','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2025-12-24 19:10:57\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"dandelion\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:22:00',46),(138,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/student/index\",\"createTime\":\"2025-12-25 00:16:24\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"学生信息\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"student\",\"perms\":\"system:student:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"dandelion\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:22:27',18),(139,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'dandelion','信息工程学院','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"score\",\"className\":\"StuScore\",\"columns\":[{\"capJavaField\":\"ScoreId\",\"columnComment\":\"成绩ID\",\"columnId\":21,\"columnName\":\"score_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"scoreId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID\",\"columnId\":22,\"columnName\":\"student_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CourseId\",\"columnComment\":\"课程ID\",\"columnId\":23,\"columnName\":\"course_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"courseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"考试成绩\",\"columnId\":24,\"columnName\":\"score\",\"columnType\":\"decimal(5,2)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:23:58',69),(140,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'dandelion','信息工程学院','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"stu_score\"}',NULL,0,NULL,'2025-12-25 00:24:09',213),(141,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'dandelion','信息工程学院','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"CourseId\",\"columnComment\":\"课程ID\",\"columnId\":12,\"columnName\":\"course_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"courseId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CourseName\",\"columnComment\":\"课程名称\",\"columnId\":13,\"columnName\":\"course_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"courseName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CourseCode\",\"columnComment\":\"课程编号\",\"columnId\":14,\"columnName\":\"course_code\",\"columnType\":\"varchar(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"courseCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Credit\",\"columnComment\":\"学分\",\"columnId\":15,\"columnName\":\"credit\",\"columnType\":\"decimal(3,1)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"i','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:39:30',99),(142,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'dandelion','信息工程学院','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"CourseId\",\"columnComment\":\"课程ID\",\"columnId\":12,\"columnName\":\"course_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"courseId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-12-25 00:39:30\",\"usableColumn\":false},{\"capJavaField\":\"CourseName\",\"columnComment\":\"课程名称\",\"columnId\":13,\"columnName\":\"course_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"courseName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-12-25 00:39:30\",\"usableColumn\":false},{\"capJavaField\":\"CourseCode\",\"columnComment\":\"课程编号\",\"columnId\":14,\"columnName\":\"course_code\",\"columnType\":\"varchar(20)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"courseCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-12-25 00:39:30\",\"usableColumn\":false},{\"capJavaField\":\"Credit\",\"columnComment\":\"学分\",\"columnId\":15,\"columnName\":\"credit\",\"columnType\":\"decimal(3,1)\",\"createBy\":\"dandelion\",\"createTime\":\"2025-12-24 23:45:41\",\"dictType\":\"\",\"edit\":true,\"htmlTy','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:39:44',61),(143,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'dandelion','信息工程学院','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"stu_course\"}',NULL,0,NULL,'2025-12-25 00:39:54',218),(144,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/score/index\",\"createTime\":\"2025-12-25 00:25:11\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"学生成绩\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"score\",\"perms\":\"system:score:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"dandelion\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:48:54',31),(145,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/course/index\",\"createTime\":\"2025-12-25 00:40:51\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"课程\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2000,\"path\":\"course\",\"perms\":\"system:course:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"dandelion\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:48:58',13),(146,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/score/index\",\"createTime\":\"2025-12-25 00:25:11\",\"icon\":\"score\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"学生成绩\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"score\",\"perms\":\"system:score:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"dandelion\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:51:00',20),(147,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/course/index\",\"createTime\":\"2025-12-25 00:40:51\",\"icon\":\"course\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"课程\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2000,\"path\":\"course\",\"perms\":\"system:course:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"dandelion\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 00:51:08',20),(148,'班级信息',1,'com.ruoyi.system.controller.StuClassController.add()','POST',1,'dandelion','信息工程学院','/system/class','127.0.0.1','内网IP','{\"classCode\":\"01\",\"classId\":1,\"className\":\"本科计科一班\",\"createTime\":\"2025-12-25 14:59:26\",\"grade\":\"大四\",\"params\":{},\"status\":\"0\",\"stuStudentList\":[],\"teacherName\":\"张铮\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 14:59:26',30),(149,'学生信息',1,'com.ruoyi.system.controller.StuStudentController.add()','POST',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省瑞金市\",\"birthday\":\"2004-08-10\",\"createTime\":\"2025-12-25 15:00:31\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"2\",\"params\":{},\"phone\":\"18720781431\",\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\"} ',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\workSpace\\Code\\Project\\若依\\SpringBoot\\ruoyi-admin\\target\\classes\\mapper\\system\\StuStudentMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.StuStudentMapper.insertStuStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_student          ( student_name,             student_number,             gender,             birthday,             phone,             email,             address,             enrollment_date,                          create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\n; Field \'class_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'class_id\' doesn\'t have a default value','2025-12-25 15:00:31',77),(150,'学生信息',1,'com.ruoyi.system.controller.StuStudentController.add()','POST',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省瑞金市\",\"birthday\":\"2004-08-10\",\"createTime\":\"2025-12-25 15:00:35\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"1\",\"params\":{},\"phone\":\"18720781431\",\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\"} ',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\workSpace\\Code\\Project\\若依\\SpringBoot\\ruoyi-admin\\target\\classes\\mapper\\system\\StuStudentMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.StuStudentMapper.insertStuStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_student          ( student_name,             student_number,             gender,             birthday,             phone,             email,             address,             enrollment_date,                          create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\n; Field \'class_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'class_id\' doesn\'t have a default value','2025-12-25 15:00:35',7),(151,'学生信息',1,'com.ruoyi.system.controller.StuStudentController.add()','POST',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省瑞金市\",\"birthday\":\"2004-08-10\",\"createTime\":\"2025-12-25 15:00:37\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"18720781431\",\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\"} ',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\workSpace\\Code\\Project\\若依\\SpringBoot\\ruoyi-admin\\target\\classes\\mapper\\system\\StuStudentMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.StuStudentMapper.insertStuStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_student          ( student_name,             student_number,             gender,             birthday,             phone,             email,             address,             enrollment_date,                          create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\n; Field \'class_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'class_id\' doesn\'t have a default value','2025-12-25 15:00:37',7),(152,'学生信息',1,'com.ruoyi.system.controller.StuStudentController.add()','POST',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省瑞金市\",\"birthday\":\"2004-08-10\",\"createTime\":\"2025-12-25 15:00:55\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"18720781431\",\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\"} ',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\workSpace\\Code\\Project\\若依\\SpringBoot\\ruoyi-admin\\target\\classes\\mapper\\system\\StuStudentMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.StuStudentMapper.insertStuStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_student          ( student_name,             student_number,             gender,             birthday,             phone,             email,             address,             enrollment_date,                          create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\n; Field \'class_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'class_id\' doesn\'t have a default value','2025-12-25 15:00:55',8),(153,'学生信息',1,'com.ruoyi.system.controller.StuStudentController.add()','POST',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省赣州市\",\"birthday\":\"2004-12-19\",\"createTime\":\"2025-12-25 16:13:37\",\"email\":\"1993466159@qq.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"18379810069\",\"studentName\":\"刘健锋\",\"studentNumber\":\"2500800022\"} ',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\workSpace\\Code\\Project\\若依\\SpringBoot\\ruoyi-admin\\target\\classes\\mapper\\system\\StuStudentMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.StuStudentMapper.insertStuStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_student          ( student_name,             student_number,             gender,             birthday,             phone,             email,             address,             enrollment_date,                          create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'class_id\' doesn\'t have a default value\n; Field \'class_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'class_id\' doesn\'t have a default value','2025-12-25 16:13:37',69),(154,'学生信息',1,'com.ruoyi.system.controller.StuStudentController.add()','POST',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省赣州市\",\"birthday\":\"2004-12-19\",\"classId\":1,\"createTime\":\"2025-12-25 16:17:28\",\"email\":\"1993466159@qq.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"18379810069\",\"studentId\":1,\"studentName\":\"刘健锋\",\"studentNumber\":\"2500800022\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 16:17:28',45),(155,'学生成绩',1,'com.ruoyi.system.controller.StuScoreController.add()','POST',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"createTime\":\"2025-12-25 16:23:41\",\"examDate\":\"2026-01-14\",\"params\":{},\"score\":100,\"studentId\":1,\"term\":\"202509-202601\"} ',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'course_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\workSpace\\Code\\Project\\若依\\SpringBoot\\ruoyi-admin\\target\\classes\\mapper\\system\\StuScoreMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.StuScoreMapper.insertStuScore-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_score          ( student_id,                          score,             term,             exam_date,                          create_time )           values ( ?,                          ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'course_id\' doesn\'t have a default value\n; Field \'course_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'course_id\' doesn\'t have a default value','2025-12-25 16:23:41',23),(156,'课程',1,'com.ruoyi.system.controller.StuCourseController.add()','POST',1,'dandelion','信息工程学院','/system/course','127.0.0.1','内网IP','{\"courseCode\":\"1\",\"courseId\":1,\"courseName\":\"JAVA面向对象程序设计\",\"createTime\":\"2025-12-25 16:27:01\",\"credit\":10,\"params\":{}} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 16:27:01',12),(157,'学生成绩',1,'com.ruoyi.system.controller.StuScoreController.add()','POST',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"courseId\":1,\"createTime\":\"2025-12-25 16:28:29\",\"examDate\":\"2026-01-15\",\"params\":{},\"score\":100,\"scoreId\":1,\"studentId\":1,\"term\":\"2025秋季\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 16:28:29',9),(158,'学生信息',1,'com.ruoyi.system.controller.StuStudentController.add()','POST',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省赣州市瑞金市\",\"birthday\":\"2004-08-10\",\"classId\":1,\"createTime\":\"2025-12-25 16:32:58\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"2\",\"params\":{},\"phone\":\"18720781431\",\"studentId\":2,\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 16:32:58',17),(159,'学生成绩',1,'com.ruoyi.system.controller.StuScoreController.add()','POST',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"courseId\":1,\"createTime\":\"2025-12-25 16:33:27\",\"examDate\":\"2026-01-15\",\"params\":{},\"score\":91,\"scoreId\":2,\"studentId\":2,\"term\":\"2025秋季\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 16:33:27',9),(160,'学生信息',5,'com.ruoyi.system.controller.StuStudentController.export()','POST',1,'dandelion','信息工程学院','/system/student/export','127.0.0.1','内网IP','{\"pageSize\":\"10\",\"pageNum\":\"1\"}',NULL,0,NULL,'2025-12-25 16:33:52',749),(161,'班级信息',1,'com.ruoyi.system.controller.StuClassController.add()','POST',1,'dandelion','信息工程学院','/system/class','127.0.0.1','内网IP','{\"classCode\":\"2\",\"classId\":2,\"className\":\"本科计科二班\",\"createTime\":\"2025-12-25 16:37:15\",\"grade\":\"大四\",\"params\":{},\"status\":\"0\",\"stuStudentList\":[],\"teacherName\":\"111\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 16:37:15',24),(162,'班级信息',2,'com.ruoyi.system.controller.StuClassController.edit()','PUT',1,'dandelion','信息工程学院','/system/class','127.0.0.1','内网IP','{\"classCode\":\"1\",\"classId\":1,\"className\":\"本科计科一班\",\"createBy\":\"\",\"createTime\":\"2025-12-25 14:59:27\",\"grade\":\"大四\",\"params\":{},\"status\":\"0\",\"stuStudentList\":[{\"address\":\"江西省赣州市\",\"birthday\":\"2004-12-19\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:17:28\",\"email\":\"1993466159@qq.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"18379810069\",\"studentId\":1,\"studentName\":\"刘健锋\",\"studentNumber\":\"2500800022\",\"updateBy\":\"\"},{\"address\":\"江西省赣州市瑞金市\",\"birthday\":\"2004-08-10\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:32:58\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"2\",\"params\":{},\"phone\":\"18720781431\",\"studentId\":2,\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\",\"updateBy\":\"\"}],\"teacherName\":\"张铮\",\"updateBy\":\"\",\"updateTime\":\"2025-12-25 16:37:21\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 16:37:21',24),(163,'学生信息',1,'com.ruoyi.system.controller.StuStudentController.add()','POST',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省新余市\",\"birthday\":\"2004-12-31\",\"classId\":2,\"createTime\":\"2025-12-25 16:40:35\",\"email\":\"13728872643@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"13728872643\",\"studentId\":3,\"studentName\":\"张皓宇\",\"studentNumber\":\"2500800020\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 16:40:35',23),(164,'学生信息',2,'com.ruoyi.system.controller.StuStudentController.edit()','PUT',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省新余市\",\"birthday\":\"2004-12-31\",\"classId\":2,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:40:35\",\"email\":\"13728872643@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"13728872643\",\"studentId\":3,\"studentName\":\"张皓宇\",\"studentNumber\":\"2500800020\",\"updateBy\":\"\",\"updateTime\":\"2025-12-25 16:45:20\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 16:45:20',34),(165,'学生信息',1,'com.ruoyi.system.controller.StuStudentController.add()','POST',1,'dandelion','信息工程学院','/system/student','127.0.0.1','内网IP','{\"address\":\"江西省景德镇市\",\"birthday\":\"2004-12-01\",\"classId\":2,\"createTime\":\"2025-12-25 17:07:20\",\"email\":\"123456789@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"1\",\"params\":{},\"phone\":\"123456789\",\"studentId\":4,\"studentName\":\"余振华\",\"studentNumber\":\"25008000\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:07:20',20),(166,'学生成绩',1,'com.ruoyi.system.controller.StuScoreController.add()','POST',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"courseId\":1,\"createTime\":\"2025-12-25 17:07:51\",\"examDate\":\"2026-01-15\",\"params\":{},\"score\":91,\"scoreId\":3,\"studentId\":3,\"term\":\"2025秋季\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:07:51',17),(167,'学生成绩',1,'com.ruoyi.system.controller.StuScoreController.add()','POST',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"courseId\":1,\"createTime\":\"2025-12-25 17:08:16\",\"examDate\":\"2026-01-15\",\"params\":{},\"score\":91,\"scoreId\":4,\"studentId\":4,\"term\":\"2025秋季\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:08:16',6),(168,'课程',1,'com.ruoyi.system.controller.StuCourseController.add()','POST',1,'dandelion','信息工程学院','/system/course','127.0.0.1','内网IP','{\"courseCode\":\"2\",\"courseId\":2,\"courseName\":\"Web程序设计\",\"createTime\":\"2025-12-25 17:08:40\",\"credit\":10,\"params\":{}} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:08:40',10),(169,'学生成绩',1,'com.ruoyi.system.controller.StuScoreController.add()','POST',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"courseId\":2,\"createTime\":\"2025-12-25 17:09:30\",\"examDate\":\"2026-01-15\",\"params\":{},\"score\":100,\"scoreId\":5,\"studentId\":1,\"term\":\"2025秋季\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:09:30',13),(170,'学生成绩',1,'com.ruoyi.system.controller.StuScoreController.add()','POST',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"courseId\":2,\"createTime\":\"2025-12-25 17:09:58\",\"examDate\":\"2026-01-15\",\"params\":{},\"score\":82,\"scoreId\":6,\"studentId\":2,\"term\":\"2025秋季\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:09:58',13),(171,'学生成绩',1,'com.ruoyi.system.controller.StuScoreController.add()','POST',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"courseId\":2,\"createTime\":\"2025-12-25 17:10:09\",\"examDate\":\"2026-01-15\",\"params\":{},\"score\":59,\"scoreId\":7,\"studentId\":3,\"term\":\"2025秋季\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:10:09',7),(172,'学生成绩',1,'com.ruoyi.system.controller.StuScoreController.add()','POST',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"courseId\":2,\"createTime\":\"2025-12-25 17:10:21\",\"examDate\":\"2026-01-15\",\"params\":{},\"score\":75,\"scoreId\":8,\"studentId\":4,\"term\":\"2025秋季\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:10:21',11),(173,'学生信息',5,'com.ruoyi.system.controller.StuStudentController.export()','POST',1,'dandelion','信息工程学院','/system/student/export','127.0.0.1','内网IP','{\"pageSize\":\"10\",\"pageNum\":\"1\"}',NULL,0,NULL,'2025-12-25 17:12:26',987),(174,'班级信息',2,'com.ruoyi.system.controller.StuClassController.edit()','PUT',1,'dandelion','信息工程学院','/system/class','127.0.0.1','内网IP','{\"classCode\":\"1\",\"classId\":1,\"className\":\"本科计科一班\",\"createBy\":\"\",\"createTime\":\"2025-12-25 14:59:27\",\"grade\":\"大四\",\"params\":{},\"status\":\"1\",\"stuStudentList\":[{\"address\":\"江西省赣州市\",\"birthday\":\"2004-12-19\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:17:28\",\"email\":\"1993466159@qq.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"18379810069\",\"studentId\":1,\"studentName\":\"刘健锋\",\"studentNumber\":\"2500800022\",\"updateBy\":\"\"},{\"address\":\"江西省赣州市瑞金市\",\"birthday\":\"2004-08-10\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:32:58\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"2\",\"params\":{},\"phone\":\"18720781431\",\"studentId\":2,\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\",\"updateBy\":\"\"}],\"teacherName\":\"张铮\",\"updateBy\":\"\",\"updateTime\":\"2025-12-25 17:15:35\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:15:35',40),(175,'班级信息',2,'com.ruoyi.system.controller.StuClassController.edit()','PUT',1,'dandelion','信息工程学院','/system/class','127.0.0.1','内网IP','{\"classCode\":\"1\",\"classId\":1,\"className\":\"本科计科一班\",\"createBy\":\"\",\"createTime\":\"2025-12-25 14:59:27\",\"grade\":\"大四\",\"params\":{},\"status\":\"0\",\"stuStudentList\":[{\"address\":\"江西省赣州市\",\"birthday\":\"2004-12-19\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:17:28\",\"email\":\"1993466159@qq.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"18379810069\",\"studentId\":1,\"studentName\":\"刘健锋\",\"studentNumber\":\"2500800022\",\"updateBy\":\"\"},{\"address\":\"江西省赣州市瑞金市\",\"birthday\":\"2004-08-10\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:32:58\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"2\",\"params\":{},\"phone\":\"18720781431\",\"studentId\":2,\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\",\"updateBy\":\"\"}],\"teacherName\":\"张铮\",\"updateBy\":\"\",\"updateTime\":\"2025-12-25 17:15:38\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:15:38',26),(176,'班级信息',2,'com.ruoyi.system.controller.StuClassController.edit()','PUT',1,'dandelion','信息工程学院','/system/class','127.0.0.1','内网IP','{\"classCode\":\"1\",\"classId\":1,\"className\":\"本科计科一班\",\"createBy\":\"\",\"createTime\":\"2025-12-25 14:59:27\",\"grade\":\"大四\",\"params\":{},\"status\":\"1\",\"stuStudentList\":[{\"address\":\"江西省赣州市\",\"birthday\":\"2004-12-19\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:17:28\",\"email\":\"1993466159@qq.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"18379810069\",\"studentId\":1,\"studentName\":\"刘健锋\",\"studentNumber\":\"2500800022\",\"updateBy\":\"\"},{\"address\":\"江西省赣州市瑞金市\",\"birthday\":\"2004-08-10\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:32:58\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"2\",\"params\":{},\"phone\":\"18720781431\",\"studentId\":2,\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\",\"updateBy\":\"\"}],\"teacherName\":\"张铮\",\"updateBy\":\"\",\"updateTime\":\"2025-12-25 17:20:54\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:20:54',20),(177,'班级信息',2,'com.ruoyi.system.controller.StuClassController.edit()','PUT',1,'dandelion','信息工程学院','/system/class','127.0.0.1','内网IP','{\"classCode\":\"1\",\"classId\":1,\"className\":\"本科计科一班\",\"createBy\":\"\",\"createTime\":\"2025-12-25 14:59:27\",\"grade\":\"大四\",\"params\":{},\"status\":\"0\",\"stuStudentList\":[{\"address\":\"江西省赣州市\",\"birthday\":\"2004-12-19\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:17:28\",\"email\":\"1993466159@qq.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"0\",\"params\":{},\"phone\":\"18379810069\",\"studentId\":1,\"studentName\":\"刘健锋\",\"studentNumber\":\"2500800022\",\"updateBy\":\"\"},{\"address\":\"江西省赣州市瑞金市\",\"birthday\":\"2004-08-10\",\"classId\":1,\"createBy\":\"\",\"createTime\":\"2025-12-25 16:32:58\",\"email\":\"18720781431@163.com\",\"enrollmentDate\":\"2025-09-01\",\"gender\":\"2\",\"params\":{},\"phone\":\"18720781431\",\"studentId\":2,\"studentName\":\"钟云龙\",\"studentNumber\":\"2500800027\",\"updateBy\":\"\"}],\"teacherName\":\"张铮\",\"updateBy\":\"\",\"updateTime\":\"2025-12-25 17:20:57\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-25 17:20:58',18),(178,'用户头像',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'dandelion','信息工程学院','/system/user/profile/avatar','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/12/26/6621364be7a948628438f90d3051a96c.png\",\"code\":200}',0,NULL,'2025-12-26 10:47:54',116),(179,'用户头像',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'test','新建区校区','/system/user/profile/avatar','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/12/26/2d342eab387e49358ae320d43b893392.png\",\"code\":200}',0,NULL,'2025-12-26 10:50:17',25),(180,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'dandelion','信息工程学院','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2025-12-24 19:10:57\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"dandelion\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 10:50:56',49),(181,'用户头像',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'test','新建区校区','/system/user/profile/avatar','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/12/26/8612dd5f30474494aa1e6946496a17ee.png\",\"code\":200}',0,NULL,'2025-12-26 11:27:53',112),(182,'用户头像',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'dandelion','信息工程学院','/system/user/profile/avatar','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/12/26/381d8d043a9040a09ee8cc27b12dfd4a.png\",\"code\":200}',0,NULL,'2025-12-26 12:05:26',14),(183,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.updatePwd()','PUT',1,'dandelion','信息工程学院','/system/user/profile/updatePwd','127.0.0.1','内网IP','{} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:05:39',176),(184,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"monitor/server/index\",\"createTime\":\"2025-12-24 19:10:57\",\"icon\":\"server\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":112,\"menuName\":\"服务监控\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2,\"path\":\"server\",\"perms\":\"monitor:server:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"dandelion\",\"visible\":\"1\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:06:23',29),(185,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"monitor/druid/index\",\"createTime\":\"2025-12-24 19:10:57\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":111,\"menuName\":\"数据监控\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2,\"path\":\"druid\",\"perms\":\"monitor:druid:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"dandelion\",\"visible\":\"1\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:06:28',23),(186,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"monitor/job/index\",\"createTime\":\"2025-12-24 19:10:57\",\"icon\":\"job\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":110,\"menuName\":\"定时任务\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2,\"path\":\"job\",\"perms\":\"monitor:job:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"dandelion\",\"visible\":\"1\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:07:31',25),(187,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"tool/build/index\",\"createTime\":\"2025-12-24 19:10:57\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":115,\"menuName\":\"表单构建\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"build\",\"perms\":\"tool:build:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"dandelion\",\"visible\":\"1\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:07:59',16),(188,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"tool/gen/index\",\"createTime\":\"2025-12-24 19:10:57\",\"icon\":\"code\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":116,\"menuName\":\"代码生成\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":3,\"path\":\"gen\",\"perms\":\"tool:gen:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"dandelion\",\"visible\":\"1\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:08:03',18),(189,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2025-12-24 19:10:57\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":1,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"dandelion\",\"visible\":\"1\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:08:32',15),(190,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/config/index\",\"createTime\":\"2025-12-24 19:10:57\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":106,\"menuName\":\"参数设置\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":1,\"path\":\"config\",\"perms\":\"system:config:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"dandelion\",\"visible\":\"1\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:08:40',13),(191,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'dandelion','信息工程学院','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/dict/index\",\"createTime\":\"2025-12-24 19:10:57\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":105,\"menuName\":\"字典管理\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":1,\"path\":\"dict\",\"perms\":\"system:dict:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"dandelion\",\"visible\":\"1\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:09:16',13),(192,'学生成绩',2,'com.ruoyi.system.controller.StuScoreController.edit()','PUT',1,'dandelion','信息工程学院','/system/score','127.0.0.1','内网IP','{\"courseId\":1,\"courseName\":\"JAVA面向对象程序设计\",\"createBy\":\"\",\"createTime\":\"2025-12-25 17:07:51\",\"examDate\":\"2026-01-15\",\"params\":{},\"score\":91,\"scoreId\":3,\"studentId\":3,\"studentName\":\"张皓宇\",\"term\":\"2026春季\",\"updateBy\":\"\",\"updateTime\":\"2025-12-26 04:10:22\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-12-26 12:10:22',17);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'pri','校长',1,'0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:29:50',''),(2,'pro','教授',2,'0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:30:02',''),(3,'ass','副教授',3,'0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:30:29',''),(4,'lec','讲师',4,'0','admin','2025-12-24 19:10:57','admin','2025-12-24 19:30:16','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2025-12-24 19:10:57','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2025-12-24 19:10:57','dandelion','2025-12-26 10:50:56','普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,2000),(2,2001),(2,2002),(2,2003),(2,2004),(2,2005),(2,2006),(2,2007),(2,2008),(2,2009),(2,2010),(2,2011),(2,2012),(2,2013),(2,2014),(2,2015),(2,2016),(2,2017),(2,2018),(2,2019),(2,2020),(2,2021),(2,2022),(2,2023),(2,2024);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'dandelion','dandelion','00','1993466159@qq.com','18379810069','0','/profile/avatar/2025/12/26/381d8d043a9040a09ee8cc27b12dfd4a.png','$2a$10$uRuwH7bcdMEsnaj9MP3wx.dYGvC39jvTiyn15KZ9ci5K3ipeiJp7y','0','0','127.0.0.1','2025-12-26 04:05:10','2025-12-26 12:05:39','admin','2025-12-24 19:10:57','','2025-12-26 12:05:39','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','2','127.0.0.1','2025-12-24 19:10:57','2025-12-24 19:10:57','admin','2025-12-24 19:10:57','',NULL,'测试员'),(100,102,'test','test','00','dandelionpromise38@gmail.com','13769505874','0','/profile/avatar/2025/12/26/8612dd5f30474494aa1e6946496a17ee.png','$2a$10$pBFXKXR.100XBMEyGbEBKuxRMibAhpQyPobhFUNW7xRvJ7lgWnu.6','0','0','127.0.0.1','2025-12-26 04:01:55',NULL,'admin','2025-12-24 19:16:38','admin','2025-12-26 11:27:53',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(100,4);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(100,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'student-system'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-26 12:11:00
