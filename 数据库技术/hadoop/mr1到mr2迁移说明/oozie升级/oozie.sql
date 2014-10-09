/*
Navicat MySQL Data Transfer

Source Server         : 10.15.43.7
Source Server Version : 50518
Source Host           : 10.15.43.7:3306
Source Database       : oozie1

Target Server Type    : MYSQL
Target Server Version : 50518
File Encoding         : 65001

Date: 2014-09-17 10:25:35
*/

Create Database If Not Exists oozie1 Character Set UTF8;
use oozie1;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `BUNDLE_ACTIONS`
-- ----------------------------
DROP TABLE IF EXISTS `BUNDLE_ACTIONS`;
CREATE TABLE `BUNDLE_ACTIONS` (
  `bundle_action_id` varchar(255) NOT NULL,
  `bundle_id` varchar(255) DEFAULT NULL,
  `coord_id` varchar(255) DEFAULT NULL,
  `coord_name` varchar(255) DEFAULT NULL,
  `critical` int(11) DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `pending` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `bean_type` varchar(31) DEFAULT NULL,
  PRIMARY KEY (`bundle_action_id`),
  KEY `I_BNDLTNS_DTYPE` (`bean_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `BUNDLE_JOBS`
-- ----------------------------
DROP TABLE IF EXISTS `BUNDLE_JOBS`;
CREATE TABLE `BUNDLE_JOBS` (
  `id` varchar(255) NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `app_path` varchar(255) DEFAULT NULL,
  `conf` text,
  `external_id` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `time_out` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `bean_type` varchar(31) DEFAULT NULL,
  `auth_token` text,
  `created_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `job_xml` text,
  `kickoff_time` datetime DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `orig_job_xml` text,
  `pause_time` datetime DEFAULT NULL,
  `pending` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `suspended_time` datetime DEFAULT NULL,
  `time_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_BNDLJBS_CREATED_TIME` (`created_time`),
  KEY `I_BNDLJBS_DTYPE` (`bean_type`),
  KEY `I_BNDLJBS_LAST_MODIFIED_TIME` (`last_modified_time`),
  KEY `I_BNDLJBS_STATUS` (`status`),
  KEY `I_BNDLJBS_SUSPENDED_TIME` (`suspended_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `COORD_ACTIONS`
-- ----------------------------
DROP TABLE IF EXISTS `COORD_ACTIONS`;
CREATE TABLE `COORD_ACTIONS` (
  `id` varchar(255) NOT NULL,
  `action_number` int(11) DEFAULT NULL,
  `action_xml` text,
  `console_url` varchar(255) DEFAULT NULL,
  `created_conf` text,
  `error_code` varchar(255) DEFAULT NULL,
  `error_message` varchar(255) DEFAULT NULL,
  `external_status` varchar(255) DEFAULT NULL,
  `missing_dependencies` text,
  `run_conf` text,
  `time_out` int(11) DEFAULT NULL,
  `tracker_uri` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `bean_type` varchar(31) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  `job_id` varchar(255) DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `nominal_time` datetime DEFAULT NULL,
  `pending` int(11) DEFAULT NULL,
  `rerun_time` datetime DEFAULT NULL,
  `sla_xml` text,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_CRD_TNS_CREATED_TIME` (`created_time`),
  KEY `I_CRD_TNS_DTYPE` (`bean_type`),
  KEY `I_CRD_TNS_EXTERNAL_ID` (`external_id`),
  KEY `I_CRD_TNS_JOB_ID` (`job_id`),
  KEY `I_CRD_TNS_LAST_MODIFIED_TIME` (`last_modified_time`),
  KEY `I_CRD_TNS_NOMINAL_TIME` (`nominal_time`),
  KEY `I_CRD_TNS_RERUN_TIME` (`rerun_time`),
  KEY `I_CRD_TNS_STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `COORD_JOBS`
-- ----------------------------
DROP TABLE IF EXISTS `COORD_JOBS`;
CREATE TABLE `COORD_JOBS` (
  `id` varchar(255) NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `app_path` varchar(255) DEFAULT NULL,
  `bundle_id` varchar(255) DEFAULT NULL,
  `concurrency` int(11) DEFAULT NULL,
  `conf` text,
  `external_id` varchar(255) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `last_action_number` int(11) DEFAULT NULL,
  `mat_throttling` int(11) DEFAULT NULL,
  `time_out` int(11) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `bean_type` varchar(31) DEFAULT NULL,
  `app_namespace` varchar(255) DEFAULT NULL,
  `auth_token` text,
  `created_time` datetime DEFAULT NULL,
  `done_materialization` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `execution` varchar(255) DEFAULT NULL,
  `job_xml` text,
  `last_action` datetime DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `next_matd_time` datetime DEFAULT NULL,
  `orig_job_xml` text,
  `pause_time` datetime DEFAULT NULL,
  `pending` int(11) DEFAULT NULL,
  `sla_xml` text,
  `start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `suspended_time` datetime DEFAULT NULL,
  `time_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_CRD_JBS_CREATED_TIME` (`created_time`),
  KEY `I_CRD_JBS_DTYPE` (`bean_type`),
  KEY `I_CRD_JBS_LAST_MODIFIED_TIME` (`last_modified_time`),
  KEY `I_CRD_JBS_NEXT_MATD_TIME` (`next_matd_time`),
  KEY `I_CRD_JBS_STATUS` (`status`),
  KEY `I_CRD_JBS_SUSPENDED_TIME` (`suspended_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `OOZIE_SYS`
-- ----------------------------
DROP TABLE IF EXISTS `OOZIE_SYS`;
CREATE TABLE `OOZIE_SYS` (
  `name` varchar(100) DEFAULT NULL,
  `data` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `OPENJPA_SEQUENCE_TABLE`
-- ----------------------------
DROP TABLE IF EXISTS `OPENJPA_SEQUENCE_TABLE`;
CREATE TABLE `OPENJPA_SEQUENCE_TABLE` (
  `ID` tinyint(4) NOT NULL,
  `SEQUENCE_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `SLA_EVENTS`
-- ----------------------------
DROP TABLE IF EXISTS `SLA_EVENTS`;
CREATE TABLE `SLA_EVENTS` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alert_contact` varchar(255) DEFAULT NULL,
  `alert_frequency` varchar(255) DEFAULT NULL,
  `alert_percentage` varchar(255) DEFAULT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `dev_contact` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `job_data` text,
  `notification_msg` text,
  `parent_client_id` varchar(255) DEFAULT NULL,
  `parent_sla_id` varchar(255) DEFAULT NULL,
  `qa_contact` varchar(255) DEFAULT NULL,
  `se_contact` varchar(255) DEFAULT NULL,
  `sla_id` varchar(255) DEFAULT NULL,
  `upstream_apps` text,
  `user_name` varchar(255) DEFAULT NULL,
  `bean_type` varchar(31) DEFAULT NULL,
  `app_type` varchar(255) DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `expected_end` datetime DEFAULT NULL,
  `expected_start` datetime DEFAULT NULL,
  `job_status` varchar(255) DEFAULT NULL,
  `status_timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `I_SL_VNTS_DTYPE` (`bean_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `VALIDATE_CONN`
-- ----------------------------
DROP TABLE IF EXISTS `VALIDATE_CONN`;
CREATE TABLE `VALIDATE_CONN` (
  `id` bigint(20) NOT NULL,
  `dummy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `WF_ACTIONS`
-- ----------------------------
DROP TABLE IF EXISTS `WF_ACTIONS`;
CREATE TABLE `WF_ACTIONS` (
  `id` varchar(255) NOT NULL,
  `conf` text,
  `console_url` varchar(255) DEFAULT NULL,
  `cred` varchar(255) DEFAULT NULL,
  `data` text,
  `error_code` varchar(255) DEFAULT NULL,
  `error_message` text,
  `external_child_ids` text,
  `external_id` varchar(255) DEFAULT NULL,
  `external_status` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `retries` int(11) DEFAULT NULL,
  `stats` text,
  `tracker_uri` varchar(255) DEFAULT NULL,
  `transition` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_retry_count` int(11) DEFAULT NULL,
  `user_retry_interval` int(11) DEFAULT NULL,
  `user_retry_max` int(11) DEFAULT NULL,
  `bean_type` varchar(31) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `execution_path` varchar(1024) DEFAULT NULL,
  `last_check_time` datetime DEFAULT NULL,
  `log_token` varchar(255) DEFAULT NULL,
  `pending` int(11) DEFAULT NULL,
  `pending_age` datetime DEFAULT NULL,
  `signal_value` varchar(255) DEFAULT NULL,
  `sla_xml` text,
  `start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `wf_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_WF_CTNS_DTYPE` (`bean_type`),
  KEY `I_WF_CTNS_PENDING_AGE` (`pending_age`),
  KEY `I_WF_CTNS_STATUS` (`status`),
  KEY `I_WF_CTNS_WF_ID` (`wf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `WF_JOBS`
-- ----------------------------
DROP TABLE IF EXISTS `WF_JOBS`;
CREATE TABLE `WF_JOBS` (
  `id` varchar(255) NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `app_path` varchar(255) DEFAULT NULL,
  `conf` text,
  `group_name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `run` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `bean_type` varchar(31) DEFAULT NULL,
  `auth_token` text,
  `created_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `log_token` varchar(255) DEFAULT NULL,
  `proto_action_conf` longtext,
  `sla_xml` text,
  `start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `wf_instance` mediumblob,
  PRIMARY KEY (`id`),
  KEY `I_WF_JOBS_DTYPE` (`bean_type`),
  KEY `I_WF_JOBS_END_TIME` (`end_time`),
  KEY `I_WF_JOBS_EXTERNAL_ID` (`external_id`),
  KEY `I_WF_JOBS_LAST_MODIFIED_TIME` (`last_modified_time`),
  KEY `I_WF_JOBS_STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
