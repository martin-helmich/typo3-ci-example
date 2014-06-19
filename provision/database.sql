
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci,
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci,
  `tables_modify` text COLLATE utf8_unicode_ci,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `subgroup` text COLLATE utf8_unicode_ci,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `file_permissions` text COLLATE utf8_unicode_ci,
  `category_perms` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext COLLATE utf8_unicode_ci,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumtext COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `file_permissions` text COLLATE utf8_unicode_ci,
  `category_perms` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1394979936,'mhelmich','$1$u5UOaZ8N$f6QUu9yS0kNzP6IUKjz5j.',1,'',0,0,0,'','','',0,1368361205,0,'','','','a:27:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:10:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:6:\"web_ts\";a:6:{s:8:\"function\";s:89:\"TYPO3\\CMS\\TstemplateInfo\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:19:\"constant_editor_cat\";s:14:\"internal notes\";s:15:\"ts_browser_type\";s:5:\"setup\";s:16:\"ts_browser_const\";s:1:\"0\";s:19:\"ts_browser_fixedLgd\";s:1:\"1\";s:23:\"ts_browser_showComments\";s:1:\"1\";}s:16:\"xMOD_alt_doc.php\";a:0:{}s:11:\"alt_doc.php\";a:2:{i:0;a:1:{s:32:\"7744ef94a61f72b237086c4b51cc20f3\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:8:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:3:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:4:\"list\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:208:\"&edit[tt_content][3]=edit&defVals[tt_content][colPos]=0&defVals[tt_content][sys_language_uid]=0&defVals[tt_content][CType]=list&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"3\";s:3:\"pid\";s:1:\"2\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}i:1;s:32:\"7f913e98749144a07cd73dd7e4cbe442\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:8:{s:32:\"7f913e98749144a07cd73dd7e4cbe442\";a:4:{i:0;s:8:\"mhelmich\";i:1;a:8:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:113:\"&edit[be_users][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"6dea09ccd35d0fde06cf479e8d191635\";a:4:{i:0;s:5:\"admin\";i:1;a:8:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:113:\"&edit[be_users][2]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"2\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"71719d43758609b95f4b0a63e9697dd8\";a:4:{i:0;s:17:\"Musterhausener TC\";i:1;a:8:{s:4:\"edit\";a:1:{s:38:\"tx_sjroffers_domain_model_organization\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:143:\"&edit[tx_sjroffers_domain_model_organization][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:38:\"tx_sjroffers_domain_model_organization\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"5\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"ee632f8efdb365604a951e28a7bef108\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:8:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:115:\"&edit[tt_content][3]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"3\";s:3:\"pid\";s:1:\"2\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"2509bfea6873bb434c5faacc09c7c5f7\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:8:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:115:\"&edit[tt_content][2]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"2\";s:3:\"pid\";s:1:\"3\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"3d060a9d3682d4912a33490d22c78b13\";a:4:{i:0;s:15:\"Fliegenklatsche\";i:1;a:7:{s:4:\"edit\";a:1:{s:33:\"tx_inventory_domain_model_product\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;}i:2;s:127:\"&edit[tx_inventory_domain_model_product][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=\";i:3;a:5:{s:5:\"table\";s:33:\"tx_inventory_domain_model_product\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"4\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"8f28f66c7fc666c419dfaf1b3bac8766\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;}i:2;s:104:\"&edit[tt_content][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"3\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"99eb84e187fc30eeba3ec311ec622692\";a:4:{i:0;s:21:\"Default Root Template\";i:1;a:7:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;}i:2;s:106:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}s:13:\"tools_install\";a:1:{s:8:\"function\";s:0:\"\";}s:8:\"web_list\";a:0:{}s:9:\"menuState\";a:5:{s:13:\"modmenu_tools\";i:1;s:11:\"modmenu_web\";i:0;s:12:\"modmenu_file\";i:1;s:12:\"modmenu_help\";i:1;s:12:\"modmenu_user\";i:1;}s:16:\"extensionbuilder\";a:1:{s:9:\"firstTime\";i:0;}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:13:\"condensedMode\";i:0;s:10:\"noMenuMode\";i:0;s:11:\"startModule\";s:17:\"help_aboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"helpText\";i:1;s:8:\"titleLen\";i:50;s:17:\"edit_wideDocument\";s:1:\"0\";s:18:\"edit_showFieldHelp\";s:4:\"icon\";s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:13:\"navFrameWidth\";s:0:\"\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1368361606;s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:3:{s:19:\"typo3-debug-console\";O:8:\"stdClass\":1:{s:9:\"collapsed\";b:1;}s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":4:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p0\";}}s:25:\"typo3-navigationContainer\";O:8:\"stdClass\":1:{s:5:\"width\";i:235;}}}s:15:\"moduleSessionID\";a:9:{s:10:\"web_layout\";s:32:\"5e760191e96d901e956fe8505a22925c\";s:6:\"web_ts\";s:32:\"5bda1ca190e1f34f368070b4cf1111c9\";s:16:\"xMOD_alt_doc.php\";s:32:\"69cb952c53cb88a481140447bc1069fe\";s:11:\"alt_doc.php\";s:32:\"c14c215a983e09ab5f7af5417856e5c6\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"c14c215a983e09ab5f7af5417856e5c6\";s:16:\"opendocs::recent\";s:32:\"c14c215a983e09ab5f7af5417856e5c6\";s:13:\"tools_install\";s:32:\"328ddad928d4731faea7193b3214a357\";s:8:\"web_list\";s:32:\"0ffcf18209cecaaec2437f06239f5488\";s:16:\"extensionbuilder\";s:32:\"328ddad928d4731faea7193b3214a357\";}s:18:\"disablePMKTextarea\";i:1;s:7:\"reports\";a:2:{s:9:\"selection\";a:2:{s:9:\"extension\";s:10:\"tx_reports\";s:6:\"report\";s:6:\"status\";}s:6:\"states\";a:8:{s:12:\"TYPO3-System\";N;s:6:\"System\";N;s:8:\"Security\";N;s:13:\"Configuration\";N;s:17:\"Extension-Manager\";N;s:7:\"PHPUnit\";i:0;s:7:\"extbase\";N;s:12:\"htmlArea-RTE\";N;}}s:8:\"tcaTrees\";a:2:{s:32:\"d2e1133f7858a3957716afd25af53d72\";i:0;s:32:\"6b65a463ec23e6c64788cf0df19087dc\";i:0;}s:10:\"inlineView\";s:453:\"a:2:{i:0;b:0;s:38:\"tx_sjroffers_domain_model_organization\";a:2:{s:16:\"NEW5325addabd9de\";a:5:{s:34:\"tx_sjroffers_domain_model_agerange\";a:1:{i:0;i:1;}s:35:\"tx_sjroffers_domain_model_daterange\";a:1:{i:0;i:1;}s:41:\"tx_sjroffers_domain_model_attendancerange\";a:1:{i:0;i:1;}s:39:\"tx_sjroffers_domain_model_attendancefee\";a:1:{i:0;i:1;}s:31:\"tx_sjroffers_domain_model_offer\";a:1:{i:0;i:1;}}i:1;a:1:{s:31:\"tx_sjroffers_domain_model_offer\";a:1:{i:1;s:1:\"1\";}}}}\";}','',1,'',0,0,NULL,1394977890,0,'',0,1,0,NULL,''),(2,0,1394979907,'admin','$1$R3cfP5jA$tPjSHa9yGmUYB7kko7jHw1',1,'',0,0,0,'','','',3,1394979907,1,'','','',NULL,'',1,'',0,0,'',0,0,NULL,0,1,0,'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,moveFile,deleteFile',''),(3,0,1394979966,'_cli_phpunit','$1$ZZDRF8EA$UMxM80W0TvYdgxR7YtS6W1',0,'',0,0,0,'','','',3,1394979966,1,'','','','a:20:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:10:\"noMenuMode\";i:0;s:11:\"startModule\";s:17:\"help_aboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"helpText\";i:1;s:8:\"titleLen\";i:50;s:17:\"edit_wideDocument\";s:1:\"0\";s:18:\"edit_showFieldHelp\";s:4:\"icon\";s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:13:\"navFrameWidth\";s:0:\"\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1394979970;}','',1,'',0,0,'',0,0,NULL,0,1,0,'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,moveFile,deleteFile','');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5filename` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` text COLLATE utf8_unicode_ci,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache_typo3temp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_typo3temp_log` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `orig_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_typo3temp_log` WRITE;
/*!40000 ALTER TABLE `cache_typo3temp_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_typo3temp_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_pages_tags` VALUES (7,'6e4c6e311ec9094c781d9758a8a213f0','pageId_3'),(10,'d83a6b8da913d63322661abb7bda72a5','pageId_2'),(11,'d83a6b8da913d63322661abb7bda72a5','pageId_2');
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline_tags` VALUES (21,'1__0_0_0','pageId_1'),(22,'2__0_0_0','pageId_2'),(23,'2__0_0_0','pageId_1');
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `subgroup` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT '',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `storage_pid` int(11) NOT NULL DEFAULT '0',
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` text COLLATE utf8_unicode_ci,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`),
  KEY `determineSiteRoot` (`deleted`,`hidden`,`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1368373473,512,0,0,0,0,0,0,0,1368361211,0,0,'root',4,NULL,0,1,0,0,'',0,0,0,2,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,1368361211,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0',0,0),(2,1,0,0,0,'',0,0,0,0,0,0,1368373322,256,0,1,0,31,27,0,0,1368373303,1,0,'Home',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,1394977989,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0',0,0),(3,1,0,0,0,'',0,0,0,0,0,0,1369056007,512,0,1,0,31,27,0,0,1369055882,1,0,'Inventory',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,1372583767,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0',0,0),(4,0,0,0,0,'',0,0,0,0,0,0,1369056059,256,0,1,0,31,27,0,0,1369056045,1,0,'Inventory',254,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0',0,0),(5,0,0,0,0,'',0,0,0,0,0,0,1394977950,384,0,1,0,31,27,0,0,1394977942,1,0,'Offers',254,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `abstract` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablenames` (`uid_foreign`,`tablenames`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectTo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `storage` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_unicode_ci,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `sha1` tinytext COLLATE utf8_unicode_ci,
  `size` int(11) NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `sha1` (`sha1`(40)),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sel01` (`storage`,`identifier_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1368361797,'2',0,'/typo3/sysext/about/ext_icon.gif','gif','image/gif','ext_icon.gif','359ae0fb420fe8afe1a8b8bc5e46d75090a826b9',637,1368287531,1368287531,0,0,0,0,'',''),(2,0,1368361797,'2',0,'/typo3/sysext/aboutmodules/ext_icon.gif','gif','image/gif','ext_icon.gif','9d5fc8f9fab3a3efa46c1842d4f82da55cc93a7f',642,1368287531,1368287531,0,0,0,0,'',''),(3,0,1368361797,'2',0,'/typo3/sysext/adodb/ext_icon.gif','gif','image/gif','ext_icon.gif','2a54cd4dd32062ae916a12fedfee81c91cd94766',1030,1368287531,1368287531,0,0,0,0,'',''),(4,0,1368361797,'2',0,'/typo3/sysext/backend/ext_icon.png','png','image/png','ext_icon.png','fba9573807897088b0e67958a5f5d1ea96a50fae',344,1368287531,1368287531,0,0,0,0,'',''),(5,0,1368361797,'2',0,'/typo3/sysext/belog/ext_icon.gif','gif','image/gif','ext_icon.gif','ee7d55af61353254b82c663a3b532c53ee7324c7',359,1368287531,1368287531,0,0,0,0,'',''),(6,0,1368361797,'2',0,'/typo3/sysext/beuser/ext_icon.gif','gif','image/gif','ext_icon.gif','18ea9ee90f8537b1411a9053de731c6d61de0dbd',157,1368287531,1368287531,0,0,0,0,'',''),(7,0,1368361797,'2',0,'/typo3/sysext/cms/ext_icon.gif','gif','image/gif','ext_icon.gif','55d721454b6ae200c9512cc320a7f8c07a4a648e',357,1368287531,1368287531,0,0,0,0,'',''),(8,0,1368361797,'2',0,'/typo3/sysext/context_help/ext_icon.gif','gif','image/gif','ext_icon.gif','3bf69d49b8f991557bdc7430d533e3cd0794234a',619,1368287531,1368287531,0,0,0,0,'',''),(9,0,1368361797,'2',0,'/typo3/sysext/core/ext_icon.png','png','image/png','ext_icon.png','fba9573807897088b0e67958a5f5d1ea96a50fae',344,1368287531,1368287531,0,0,0,0,'',''),(10,0,1368361797,'2',0,'/typo3/sysext/cshmanual/ext_icon.gif','gif','image/gif','ext_icon.gif','a863b8384991b598fffd6c7a3f301457ba6d49cb',1051,1368287531,1368287531,0,0,0,0,'',''),(11,0,1368361797,'2',0,'/typo3/sysext/css_styled_content/ext_icon.gif','gif','image/gif','ext_icon.gif','0a78cb0d24ff27b8e1183e39d5ac6562a6e545ad',142,1368287531,1368287531,0,0,0,0,'',''),(12,0,1368361797,'2',0,'/typo3/sysext/dbal/ext_icon.gif','gif','image/gif','ext_icon.gif','2feadd53a6ebcde933910d6a9ee9b00d1c4dcda6',622,1368287551,1368287551,0,0,0,0,'',''),(13,0,1368361797,'2',0,'/typo3/sysext/extbase/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1368287568,1368287568,0,0,0,0,'',''),(14,0,1368361797,'2',0,'/typo3/sysext/extensionmanager/ext_icon.gif','gif','image/gif','ext_icon.gif','e67da46684aa49e6991ded936467fc063936032e',614,1368287531,1368287531,0,0,0,0,'',''),(15,0,1368361797,'2',0,'/typo3/sysext/extra_page_cm_options/ext_icon.gif','gif','image/gif','ext_icon.gif','a99cc2f0e36d9b7a146e703ad57a485096c70e5d',241,1368287531,1368287531,0,0,0,0,'',''),(16,0,1368361797,'2',0,'/typo3/sysext/feedit/ext_icon.gif','gif','image/gif','ext_icon.gif','0d19ca588b292b1e94aefb6fed4e8f2db3e97433',110,1368287531,1368287531,0,0,0,0,'',''),(17,0,1368361797,'2',0,'/typo3/sysext/felogin/ext_icon.gif','gif','image/gif','ext_icon.gif','3e627f00b843d94e3905b4fa490e6d41bdf9c969',194,1368287531,1368287531,0,0,0,0,'',''),(18,0,1368361797,'2',0,'/typo3/sysext/filelist/ext_icon.gif','gif','image/gif','ext_icon.gif','8ee012fc11e8da3042bc9a4df1e52109406b0c59',227,1368287531,1368287531,0,0,0,0,'',''),(19,0,1368361797,'2',0,'/typo3/sysext/fluid/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1368287576,1368287576,0,0,0,0,'',''),(20,0,1368361797,'2',0,'/typo3/sysext/form/ext_icon.gif','gif','image/gif','ext_icon.gif','9c735e89a469f015a4a1c43b3450c783dba8cbe4',622,1368287531,1368287531,0,0,0,0,'',''),(21,0,1368361797,'2',0,'/typo3/sysext/frontend/ext_icon.png','png','image/png','ext_icon.png','fba9573807897088b0e67958a5f5d1ea96a50fae',344,1368287531,1368287531,0,0,0,0,'',''),(22,0,1368361797,'2',0,'/typo3/sysext/func/ext_icon.gif','gif','image/gif','ext_icon.gif','530725c4a56f8b5b72efd09e6f7cf594f896e8e5',118,1368287531,1368287531,0,0,0,0,'',''),(23,0,1368361797,'2',0,'/typo3/sysext/func_wizards/ext_icon.gif','gif','image/gif','ext_icon.gif','5f4b36af8d29685a9bc44d425104a49334c6d34e',565,1368287531,1368287531,0,0,0,0,'',''),(24,0,1368361797,'2',0,'/typo3/sysext/impexp/ext_icon.gif','gif','image/gif','ext_icon.gif','21aa38a8577e0c6539a1dcf6bd880c381ec1de46',229,1368287531,1368287531,0,0,0,0,'',''),(25,0,1368361797,'2',0,'/typo3/sysext/indexed_search/ext_icon.gif','gif','image/gif','ext_icon.gif','3b1186bfb3b1fe3ed608f68a80949b20e7414a23',90,1368287531,1368287531,0,0,0,0,'',''),(26,0,1368361797,'2',0,'/typo3/sysext/indexed_search_mysql/ext_icon.gif','gif','image/gif','ext_icon.gif','3b1186bfb3b1fe3ed608f68a80949b20e7414a23',90,1368287531,1368287531,0,0,0,0,'',''),(27,0,1368361797,'2',0,'/typo3/sysext/info/ext_icon.gif','gif','image/gif','ext_icon.gif','d4e3ec69f6c7e02f9d2c5d749024bf46ab0c22e1',1000,1368287531,1368287531,0,0,0,0,'',''),(28,0,1368361797,'2',0,'/typo3/sysext/info_pagetsconfig/ext_icon.gif','gif','image/gif','ext_icon.gif','fb0fb3390936ad820c5b7436cd87d442123bd33d',619,1368287531,1368287531,0,0,0,0,'',''),(29,0,1368361797,'2',0,'/typo3/sysext/install/ext_icon.gif','gif','image/gif','ext_icon.gif','1e092ba01ec0babe2fe1b22b67c45de899c484c8',601,1368287531,1368287531,0,0,0,0,'',''),(30,0,1368361797,'2',0,'/typo3/sysext/lang/ext_icon.gif','gif','image/gif','ext_icon.gif','f35e159406d07c9675830bc51ef14a210f1cab1f',581,1368287531,1368287531,0,0,0,0,'',''),(31,0,1368361797,'2',0,'/typo3/sysext/linkvalidator/ext_icon.gif','gif','image/png','ext_icon.gif','cdada35018dfbdd57e6442ea038a0314677d9114',918,1368287580,1368287580,0,0,0,0,'',''),(32,0,1368361797,'2',0,'/typo3/sysext/lowlevel/ext_icon.gif','gif','image/gif','ext_icon.gif','c182aec01a3225de5f72ef272d0e8a59ec670d93',82,1368287531,1368287531,0,0,0,0,'',''),(33,0,1368361797,'2',0,'/typo3/sysext/opendocs/ext_icon.gif','gif','image/gif','ext_icon.gif','54f00d2070213715d290f2f813601a27c5277869',84,1368287531,1368287531,0,0,0,0,'',''),(34,0,1368361797,'2',0,'/typo3/sysext/openid/ext_icon.gif','gif','image/gif','ext_icon.gif','734c40675f05fd730cea8e39c77af5eb47cc4d9b',346,1368287531,1368287531,0,0,0,0,'',''),(35,0,1368361797,'2',0,'/typo3/sysext/perm/ext_icon.gif','gif','image/png','ext_icon.gif','03717e1ac333d0bef7a33a3ceff1305ef6deecbc',733,1368287531,1368287531,0,0,0,0,'',''),(36,0,1368361797,'2',0,'/typo3/sysext/recordlist/ext_icon.gif','gif','image/gif','ext_icon.gif','332e96b6dac59bffa4dbf87137e1fee4f44bd5d3',129,1368287532,1368287532,0,0,0,0,'',''),(37,0,1368361797,'2',0,'/typo3/sysext/recycler/ext_icon.gif','gif','image/gif','ext_icon.gif','1861cc8eecb71a20e757de83386ba3841ab4da1d',349,1368287532,1368287532,0,0,0,0,'',''),(38,0,1368361797,'2',0,'/typo3/sysext/reports/ext_icon.gif','gif','image/gif','ext_icon.gif','ee7d55af61353254b82c663a3b532c53ee7324c7',359,1368287772,1368287772,0,0,0,0,'',''),(39,0,1368361797,'2',0,'/typo3/sysext/rsaauth/ext_icon.gif','gif','image/gif','ext_icon.gif','70c2aab11e104ec14fc3934f28201630d0935b8a',850,1368287532,1368287532,0,0,0,0,'',''),(40,0,1368361797,'2',0,'/typo3/sysext/rtehtmlarea/ext_icon.gif','gif','image/gif','ext_icon.gif','5061eebad398d086cc5dfafb2182c159a723af56',161,1368287532,1368287532,0,0,0,0,'',''),(41,0,1368361797,'2',0,'/typo3/sysext/saltedpasswords/ext_icon.gif','gif','image/gif','ext_icon.gif','a6a08a082b189dd1f669595ac91fc90fde913e23',282,1368287532,1368287532,0,0,0,0,'',''),(42,0,1368361797,'2',0,'/typo3/sysext/scheduler/ext_icon.gif','gif','image/gif','ext_icon.gif','405729c40df7f0e38105583492a8d33bae1db0fe',667,1368287532,1368287532,0,0,0,0,'',''),(43,0,1368361797,'2',0,'/typo3/sysext/setup/ext_icon.gif','gif','image/gif','ext_icon.gif','efba11523cbede8368582445e9036f4eab580d3f',231,1368287532,1368287532,0,0,0,0,'',''),(44,0,1368361797,'2',0,'/typo3/sysext/sv/ext_icon.gif','gif','image/gif','ext_icon.gif','55d721454b6ae200c9512cc320a7f8c07a4a648e',357,1368287532,1368287532,0,0,0,0,'',''),(45,0,1368361797,'2',0,'/typo3/sysext/sys_action/ext_icon.gif','gif','image/gif','ext_icon.gif','fdd57620b7a3a3e9755595363fa207af86f598ff',630,1368287532,1368287532,0,0,0,0,'',''),(46,0,1368361797,'2',0,'/typo3/sysext/sys_note/ext_icon.gif','gif','image/gif','ext_icon.gif','7a97bb0a5cc6e5e0339a1a90f28094a7a41c693f',156,1368287532,1368287532,0,0,0,0,'',''),(47,0,1368361797,'2',0,'/typo3/sysext/t3editor/ext_icon.gif','gif','image/gif','ext_icon.gif','fb9c533ec6c7536c0f5b4049994d3f9aba80121f',1023,1368287532,1368287532,0,0,0,0,'',''),(48,0,1368361797,'2',0,'/typo3/sysext/t3skin/ext_icon.gif','gif','image/gif','ext_icon.gif','ad4e9bb93928007bad9b98c36a794eaa86544308',254,1368287532,1368287532,0,0,0,0,'',''),(49,0,1368361797,'2',0,'/typo3/sysext/taskcenter/ext_icon.gif','gif','image/gif','ext_icon.gif','b4f17c0cd49f4ac83b3fe99946d4df7861f01962',167,1368287532,1368287532,0,0,0,0,'',''),(50,0,1368361797,'2',0,'/typo3/sysext/tsconfig_help/ext_icon.gif','gif','image/gif','ext_icon.gif','ce2ce494584ed2b1dae4639a17531a5ea7295dab',1049,1368287772,1368287772,0,0,0,0,'',''),(51,0,1368361797,'2',0,'/typo3/sysext/tstemplate/ext_icon.gif','gif','image/gif','ext_icon.gif','9aa8f313a25f48c65529acdf796557f3149c3c74',99,1368287532,1368287532,0,0,0,0,'',''),(52,0,1368361797,'2',0,'/typo3/sysext/tstemplate_analyzer/ext_icon.gif','gif','image/gif','ext_icon.gif','18b089a7e39a2831d775c54d9b4ad781810dbb0b',366,1368287532,1368287532,0,0,0,0,'',''),(53,0,1368361797,'2',0,'/typo3/sysext/tstemplate_ceditor/ext_icon.gif','gif','image/gif','ext_icon.gif','bbcb0ff3d075efe84d03ac8a039fcad4dd1027e9',134,1368287532,1368287532,0,0,0,0,'',''),(54,0,1368361797,'2',0,'/typo3/sysext/tstemplate_info/ext_icon.gif','gif','image/gif','ext_icon.gif','e5cc70deccb28078e5840223c70e15a9f70b3de9',194,1368287532,1368287532,0,0,0,0,'',''),(55,0,1368361797,'2',0,'/typo3/sysext/tstemplate_objbrowser/ext_icon.gif','gif','image/gif','ext_icon.gif','56a3a27afae4d201ccbb9b1cd73717e94bb7a940',203,1368287532,1368287532,0,0,0,0,'',''),(56,0,1368361797,'2',0,'/typo3/sysext/version/ext_icon.gif','gif','image/gif','ext_icon.gif','61c9380cfa98ccc2dbbe8e9bcc94081815bf6109',383,1368287583,1368287583,0,0,0,0,'',''),(57,0,1368361797,'2',0,'/typo3/sysext/viewpage/ext_icon.gif','gif','image/gif','ext_icon.gif','9d5ce162e3a36bc67590ba0c1a5360ab2a83d2e8',367,1368287532,1368287532,0,0,0,0,'',''),(58,0,1368361797,'2',0,'/typo3/sysext/wizard_crpages/ext_icon.gif','gif','image/gif','ext_icon.gif','db136645cf980646e414fc50b7c35e9f4a049143',649,1368287532,1368287532,0,0,0,0,'',''),(59,0,1368361797,'2',0,'/typo3/sysext/wizard_sortpages/ext_icon.gif','gif','image/gif','ext_icon.gif','86de0fe6bfe0d29b7bf4771b13dde1fc206336a6',206,1368287532,1368287532,0,0,0,0,'',''),(60,0,1368361797,'2',0,'/typo3/sysext/workspaces/ext_icon.gif','gif','image/gif','ext_icon.gif','1d8dd277a444da23b8c4d4da51b477dccacd21de',374,1368287593,1368287593,0,0,0,0,'',''),(61,0,1368361797,'2',0,'/typo3conf/ext/coreapi/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1368287725,1368287725,0,0,0,0,'',''),(62,0,1368361797,'2',0,'/typo3conf/ext/phpunit/ext_icon.gif','gif','image/gif','ext_icon.gif','76338b18df868edb741378a96ddcc79cd814dca3',630,1368287669,1368287669,0,0,0,0,'',''),(63,0,1368370630,'2',0,'/typo3conf/ext/helmbert_bootstrapsite/ext_icon.gif','gif','image/gif','ext_icon.gif','ce737f51ff9d83aac1f93d3d03e6a9cd2445ac88',1062,1368370514,1368370514,0,0,0,0,'',''),(64,0,1371398504,'2',0,'/typo3conf/ext/blog_example/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1371237855,1371237855,0,0,0,0,'',''),(65,0,1371398504,'2',0,'/typo3conf/ext/extension_builder/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1371398687,1371398687,0,0,0,0,'',''),(66,0,1372325669,'2',0,'/typo3conf/ext/inventory/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1372329102,1372329102,0,0,0,0,'','');
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8_unicode_ci NOT NULL,
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8_unicode_ci DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(249))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1368361810,1368361810,0,1,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','359ae0fb420fe8afe1a8b8bc5e46d75090a826b9','Image.CropScaleMask','43ab9bcabb',0,0,''),(2,1368361810,1368361810,0,2,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','9d5fc8f9fab3a3efa46c1842d4f82da55cc93a7f','Image.CropScaleMask','ecbe7094a2',0,0,''),(3,1368361810,1368361810,0,3,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','2a54cd4dd32062ae916a12fedfee81c91cd94766','Image.CropScaleMask','ae284a1af5',0,0,''),(4,1368361810,1368361810,0,4,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fba9573807897088b0e67958a5f5d1ea96a50fae','Image.CropScaleMask','c134a993e3',0,0,''),(5,1368361810,1368361810,0,5,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','ee7d55af61353254b82c663a3b532c53ee7324c7','Image.CropScaleMask','bbf0954d7e',0,0,''),(6,1368361810,1368361810,0,6,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','18ea9ee90f8537b1411a9053de731c6d61de0dbd','Image.CropScaleMask','5757ce9c1e',0,0,''),(7,1368361810,1368361810,0,7,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','55d721454b6ae200c9512cc320a7f8c07a4a648e','Image.CropScaleMask','f9831e5b18',0,0,''),(8,1368361811,1368361811,0,8,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','3bf69d49b8f991557bdc7430d533e3cd0794234a','Image.CropScaleMask','d937a778bc',0,0,''),(9,1368361811,1368361811,0,9,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fba9573807897088b0e67958a5f5d1ea96a50fae','Image.CropScaleMask','16a33b92d1',0,0,''),(10,1368361811,1368361811,0,10,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','a863b8384991b598fffd6c7a3f301457ba6d49cb','Image.CropScaleMask','201b949b9b',0,0,''),(11,1368361811,1368361811,0,11,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','0a78cb0d24ff27b8e1183e39d5ac6562a6e545ad','Image.CropScaleMask','15039a41cd',0,0,''),(12,1368361811,1368361811,0,12,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','2feadd53a6ebcde933910d6a9ee9b00d1c4dcda6','Image.CropScaleMask','c060bfc7a2',0,0,''),(13,1368361811,1368361811,0,13,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','08ef7baf0f',0,0,''),(14,1368361811,1368361811,0,14,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','e67da46684aa49e6991ded936467fc063936032e','Image.CropScaleMask','fdb287cbc8',0,0,''),(15,1368361811,1368361811,0,15,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','a99cc2f0e36d9b7a146e703ad57a485096c70e5d','Image.CropScaleMask','615322548f',0,0,''),(16,1368361811,1368361811,0,16,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','0d19ca588b292b1e94aefb6fed4e8f2db3e97433','Image.CropScaleMask','9d565d11d6',0,0,''),(17,1368361812,1368361812,0,17,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','3e627f00b843d94e3905b4fa490e6d41bdf9c969','Image.CropScaleMask','6120f25ffa',0,0,''),(18,1368361812,1368361812,0,18,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','8ee012fc11e8da3042bc9a4df1e52109406b0c59','Image.CropScaleMask','59605e70c2',0,0,''),(19,1368361812,1368361812,0,19,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','a5bc487cca',0,0,''),(20,1368361812,1368361812,0,20,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','9c735e89a469f015a4a1c43b3450c783dba8cbe4','Image.CropScaleMask','33acc26f09',0,0,''),(21,1368361812,1368361812,0,21,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fba9573807897088b0e67958a5f5d1ea96a50fae','Image.CropScaleMask','055ea0d078',0,0,''),(22,1368361812,1368361812,0,22,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','530725c4a56f8b5b72efd09e6f7cf594f896e8e5','Image.CropScaleMask','534ab67d90',0,0,''),(23,1368361812,1368361812,0,23,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','5f4b36af8d29685a9bc44d425104a49334c6d34e','Image.CropScaleMask','4e7af0b376',0,0,''),(24,1368361813,1368361813,0,24,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','21aa38a8577e0c6539a1dcf6bd880c381ec1de46','Image.CropScaleMask','739341a158',0,0,''),(25,1368361813,1368361813,0,25,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','3b1186bfb3b1fe3ed608f68a80949b20e7414a23','Image.CropScaleMask','227ed9ab0b',0,0,''),(26,1368361813,1368361813,0,26,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','3b1186bfb3b1fe3ed608f68a80949b20e7414a23','Image.CropScaleMask','3a8bb92a7e',0,0,''),(27,1368361813,1368361813,0,27,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','d4e3ec69f6c7e02f9d2c5d749024bf46ab0c22e1','Image.CropScaleMask','a183766da9',0,0,''),(28,1368361813,1368361813,0,28,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fb0fb3390936ad820c5b7436cd87d442123bd33d','Image.CropScaleMask','e04f785a19',0,0,''),(29,1368361813,1368361813,0,29,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','1e092ba01ec0babe2fe1b22b67c45de899c484c8','Image.CropScaleMask','5c904d8744',0,0,''),(30,1368361813,1368361813,0,30,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','f35e159406d07c9675830bc51ef14a210f1cab1f','Image.CropScaleMask','b18d4029b3',0,0,''),(31,1368361814,1368361814,0,31,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','cdada35018dfbdd57e6442ea038a0314677d9114','Image.CropScaleMask','78295dbe29',0,0,''),(32,1368361814,1368361814,0,32,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','c182aec01a3225de5f72ef272d0e8a59ec670d93','Image.CropScaleMask','18b42ead3e',0,0,''),(33,1368361814,1368361814,0,33,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','54f00d2070213715d290f2f813601a27c5277869','Image.CropScaleMask','5d6eeb04a4',0,0,''),(34,1368361814,1368361814,0,34,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','734c40675f05fd730cea8e39c77af5eb47cc4d9b','Image.CropScaleMask','73555dd387',0,0,''),(35,1368361814,1368361814,0,35,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','03717e1ac333d0bef7a33a3ceff1305ef6deecbc','Image.CropScaleMask','54159e7c3f',0,0,''),(36,1368361814,1368361814,0,36,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','332e96b6dac59bffa4dbf87137e1fee4f44bd5d3','Image.CropScaleMask','9fb59c6cea',0,0,''),(37,1368361814,1368361814,0,37,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','1861cc8eecb71a20e757de83386ba3841ab4da1d','Image.CropScaleMask','fdcb2aae67',0,0,''),(38,1371229287,1368361797,0,38,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','cbaafb62f40fa004732d86e5d93fc50ca067a009','Image.CropScaleMask','42b2925b38',0,0,''),(39,1368361815,1368361815,0,39,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','70c2aab11e104ec14fc3934f28201630d0935b8a','Image.CropScaleMask','36e7feec9c',0,0,''),(40,1368361815,1368361815,0,40,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','5061eebad398d086cc5dfafb2182c159a723af56','Image.CropScaleMask','582beadb9c',0,0,''),(41,1368361815,1368361815,0,41,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','a6a08a082b189dd1f669595ac91fc90fde913e23','Image.CropScaleMask','0f1ae947a3',0,0,''),(42,1368361815,1368361815,0,42,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','405729c40df7f0e38105583492a8d33bae1db0fe','Image.CropScaleMask','1e5216cadd',0,0,''),(43,1368361815,1368361815,0,43,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','efba11523cbede8368582445e9036f4eab580d3f','Image.CropScaleMask','b9f73dd06b',0,0,''),(44,1368361815,1368361815,0,44,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','55d721454b6ae200c9512cc320a7f8c07a4a648e','Image.CropScaleMask','73bfe96718',0,0,''),(45,1368361816,1368361816,0,45,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fdd57620b7a3a3e9755595363fa207af86f598ff','Image.CropScaleMask','bccfbf21f2',0,0,''),(46,1368361816,1368361816,0,46,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','7a97bb0a5cc6e5e0339a1a90f28094a7a41c693f','Image.CropScaleMask','d27e7d5d22',0,0,''),(47,1368361816,1368361816,0,47,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fb9c533ec6c7536c0f5b4049994d3f9aba80121f','Image.CropScaleMask','05ca56ed65',0,0,''),(48,1368361816,1368361816,0,48,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','ad4e9bb93928007bad9b98c36a794eaa86544308','Image.CropScaleMask','b9daa4183b',0,0,''),(49,1368361816,1368361816,0,49,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','b4f17c0cd49f4ac83b3fe99946d4df7861f01962','Image.CropScaleMask','0c30efa6ae',0,0,''),(50,1368361816,1368361816,0,50,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','ce2ce494584ed2b1dae4639a17531a5ea7295dab','Image.CropScaleMask','9dc58cf005',0,0,''),(51,1368361816,1368361816,0,51,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','9aa8f313a25f48c65529acdf796557f3149c3c74','Image.CropScaleMask','5faf9063a4',0,0,''),(52,1368361817,1368361817,0,52,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','18b089a7e39a2831d775c54d9b4ad781810dbb0b','Image.CropScaleMask','4743adab70',0,0,''),(53,1368361817,1368361817,0,53,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','bbcb0ff3d075efe84d03ac8a039fcad4dd1027e9','Image.CropScaleMask','7a363281a9',0,0,''),(54,1368361817,1368361817,0,54,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','e5cc70deccb28078e5840223c70e15a9f70b3de9','Image.CropScaleMask','1b4cc2d5ac',0,0,''),(55,1368361817,1368361817,0,55,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','56a3a27afae4d201ccbb9b1cd73717e94bb7a940','Image.CropScaleMask','17938c0d41',0,0,''),(56,1368361817,1368361817,0,56,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','61c9380cfa98ccc2dbbe8e9bcc94081815bf6109','Image.CropScaleMask','c57d81d97f',0,0,''),(57,1368361817,1368361817,0,57,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','9d5ce162e3a36bc67590ba0c1a5360ab2a83d2e8','Image.CropScaleMask','fbd8301637',0,0,''),(58,1368361817,1368361817,0,58,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','db136645cf980646e414fc50b7c35e9f4a049143','Image.CropScaleMask','983d5d0fab',0,0,''),(59,1368361817,1368361817,0,59,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','86de0fe6bfe0d29b7bf4771b13dde1fc206336a6','Image.CropScaleMask','8753ab68f2',0,0,''),(60,1368361818,1368361818,0,60,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','1d8dd277a444da23b8c4d4da51b477dccacd21de','Image.CropScaleMask','ebd46d191d',0,0,''),(61,1368361818,1368361818,0,61,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','ef403aca5c',0,0,''),(62,1368361818,1368361818,0,62,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','76338b18df868edb741378a96ddcc79cd814dca3','Image.CropScaleMask','7085e3f312',0,0,''),(63,1368370641,1368370641,0,63,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','ce737f51ff9d83aac1f93d3d03e6a9cd2445ac88','Image.CropScaleMask','0b8357f4a1',0,0,''),(64,1371398515,1371398515,0,64,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','db0ac8457b',0,0,''),(65,1371398515,1371398515,0,65,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','18231b7f21',0,0,''),(66,1372325682,1372325682,0,66,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','eba6f8c6f8',0,0,'');
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `alternative` tinytext COLLATE utf8_unicode_ci,
  `link` tinytext COLLATE utf8_unicode_ci,
  `downloadname` tinytext COLLATE utf8_unicode_ci,
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `driver` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_unicode_ci,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `deleted_hidden` (`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1368361606,1368361606,0,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,NULL,0);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext COLLATE utf8_unicode_ci,
  `fieldlist` text COLLATE utf8_unicode_ci,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext COLLATE utf8_unicode_ci,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_unicode_ci,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_preview` (
  `keyword` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_preview` WRITE;
/*!40000 ALTER TABLE `sys_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_preview` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('0ee5bd47fd084e1824af37db81224686','pages',1,'shortcut','','','',0,0,'pages',2,''),('142d867b675b2d3b2cf878e9c7afd5c2','tx_sjroffers_domain_model_offer',1,'attendance_range','','','',0,0,'tx_sjroffers_domain_model_attendancerange',1,''),('3475342c8d4b2839278d50353cdd3b1e','pages',1,'media','','','',0,0,'',0,''),('361a2c5571fdbd0c328b55869478c6a4','tx_sjroffers_domain_model_offer',1,'date_range','','','',0,0,'tx_sjroffers_domain_model_daterange',1,''),('42f485e7699d313f0f92e5d578adc6c5','tt_content',2,'media','','','',0,0,'',0,''),('4cb26b3c6ad825ecd430d9761aedaf38','tx_sjroffers_domain_model_attendancefee',1,'offer','','','',0,0,'tx_sjroffers_domain_model_offer',1,''),('5305884e40123a43be225a05c12bc943','tt_content',1,'pages','','','',0,1,'pages',4,''),('62d7ec3363fc96c8f6cfc958b4085fce','tx_sjroffers_domain_model_organization',1,'offers','','','',0,0,'tx_sjroffers_domain_model_offer',1,''),('62f2b33315b7c05e072b53faf6153c80','tt_content',3,'pages','','','',0,0,'pages',5,''),('62f8ddeaaee99759b0860d6fb61cb945','tx_sjroffers_domain_model_offer',1,'regions','','','',0,0,'tx_sjroffers_domain_model_region',3,''),('7358f4938069dc0ec3411b347ba6196d','tx_sjroffers_domain_model_offer',1,'attendance_fees','','','',0,0,'tx_sjroffers_domain_model_attendancefee',1,''),('73ad9b78ce792afa99dd9685a3468d48','tx_sjroffers_domain_model_offer',1,'regions','','','',1,0,'tx_sjroffers_domain_model_region',1,''),('cd5c68241a8068478b2612fe292416b9','tx_sjroffers_domain_model_offer',1,'organization','','','',0,0,'tx_sjroffers_domain_model_organization',1,''),('ce8cb8de0845cbef26e3f0f6f55e1560','pages',4,'media','','','',0,0,'',0,''),('d148c45bf427946bea27b31a5853b0da','tt_content',2,'image','','','',0,0,'',0,''),('db898e731429caa03c4853f85b974647','tt_content',1,'image','','','',0,1,'',0,''),('df51b4a5d394f770bdb845d4077b2376','tx_sjroffers_domain_model_offer',1,'age_range','','','',0,0,'tx_sjroffers_domain_model_agerange',1,''),('e2a08ea63f4518b57212bc23425e698c','tt_content',2,'pages','','','',0,0,'pages',4,''),('ee1165b91133aa3ed87cb5365aab8c13','pages',2,'media','','','',0,0,'',0,''),('f0e1e0476e8faca525e0bf70178ed6f4','tt_content',1,'media','','','',0,1,'',0,''),('f5a44f9568bd0723deee98f4799867d2','pages',3,'media','','','',0,0,'',0,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'core','formSessionToken:1','s:64:\"f2107526ece0f1e9207af57a67d5e410695fe58a711bb657ed4f381478b17b05\";'),(2,'tx_reports','status.highestSeverity','i:2;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_unicode_ci,
  `constants` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `basedOn` tinytext COLLATE utf8_unicode_ci,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,1371389107,0,1368361211,0,'Default Root Template','',0,0,0,1,1,'EXT:css_styled_content/static/,EXT:helmbert_bootstrapsite/Configuration/Typoscript/,EXT:blog_example/Configuration/TypoScript',NULL,NULL,'',NULL,NULL,0,0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecaption` text COLLATE utf8_unicode_ci,
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` text COLLATE utf8_unicode_ci,
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text COLLATE utf8_unicode_ci,
  `pages` tinytext COLLATE utf8_unicode_ci,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagecaption_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_link` text COLLATE utf8_unicode_ci,
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_noRows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_effects` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_compression` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `altText` text COLLATE utf8_unicode_ci,
  `titleText` text COLLATE utf8_unicode_ci,
  `longdescURL` text COLLATE utf8_unicode_ci,
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `menu_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `table_border` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellspacing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellpadding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_bgColor` int(11) unsigned NOT NULL DEFAULT '0',
  `select_key` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `multimedia` tinytext COLLATE utf8_unicode_ci,
  `image_frames` int(11) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rte_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,3,0,0,0,'',0,0,0,0,0,0,1372583182,1369076030,1,0,1000000000,'list','','',NULL,NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,'4',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','inventory_list',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"list_type\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;}',0,0,NULL,''),(2,3,0,0,0,'',0,0,0,0,0,0,1372583767,1372583624,1,0,256,'list','','',NULL,NULL,0,0,NULL,1,0,NULL,0,0,0,NULL,'4',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','inventory_pi',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"list_type\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:10:\"categories\";N;}',0,0,NULL,''),(3,2,0,0,0,'',0,0,0,0,0,0,1394977989,1394977924,1,0,256,'list','','',NULL,NULL,0,0,NULL,2,0,NULL,0,0,0,NULL,'5',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','sjroffers_list',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"list_type\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:10:\"categories\";N;}',0,0,NULL,'');
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_blog` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `logo` tinyblob NOT NULL,
  `administrator` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `posts` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_blog` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_blog` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_comment` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `post` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_comment` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_comment` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_person` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_person` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_person` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_post` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `blog` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT '0',
  `author` int(255) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `tags` int(11) unsigned NOT NULL DEFAULT '0',
  `comments` int(11) unsigned NOT NULL DEFAULT '0',
  `related_posts` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_post` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_post` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_tag` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posts` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_tag` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_tag` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_post_post_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_post_post_mm` (
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_post_post_mm` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_post_post_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_post_post_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_post_tag_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_post_tag_mm` (
  `uid_local` int(11) unsigned DEFAULT '0',
  `uid_foreign` int(11) unsigned DEFAULT '0',
  `sorting` int(11) unsigned DEFAULT '0',
  `sorting_foreign` int(11) unsigned DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_post_tag_mm` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_post_tag_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_post_tag_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci,
  `authorcompany` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`repository`,`extension_key`),
  KEY `index_versionrepo` (`repository`,`integer_version`),
  KEY `index_currentversions` (`review_state`,`current_version`)
) ENGINE=InnoDB AUTO_INCREMENT=29778 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','http://typo3.org/wsdl/tx_ter_wsdl.php','http://repositories.typo3.org/mirrors.xml.gz',1372582859,6048);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_inventory_domain_model_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_inventory_domain_model_product` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_inventory_domain_model_product` WRITE;
/*!40000 ALTER TABLE `tx_inventory_domain_model_product` DISABLE KEYS */;
INSERT INTO `tx_inventory_domain_model_product` VALUES (1,4,'Gartenzwerg','Klein und bärtig.',212,1372583994,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:11:\"description\";N;s:8:\"quantity\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}'),(2,4,'Rasenmäher','Groß und laut.',5,1372584028,1372584028,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:11:\"description\";N;s:8:\"quantity\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}');
/*!40000 ALTER TABLE `tx_inventory_domain_model_product` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_phpunit_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_phpunit_test` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `related_records` int(11) unsigned NOT NULL DEFAULT '0',
  `bidirectional` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `phpunit_dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_phpunit_test` WRITE;
/*!40000 ALTER TABLE `tx_phpunit_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_phpunit_test` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_phpunit_test_article_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_phpunit_test_article_mm` (
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `phpunit_dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_phpunit_test_article_mm` WRITE;
/*!40000 ALTER TABLE `tx_phpunit_test_article_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_phpunit_test_article_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_phpunit_testchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_phpunit_testchild` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `phpunit_dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_phpunit_testchild` WRITE;
/*!40000 ALTER TABLE `tx_phpunit_testchild` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_phpunit_testchild` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `acronym` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_agerange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_agerange` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `minimum_value` int(11) unsigned DEFAULT NULL,
  `maximum_value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_agerange` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_agerange` DISABLE KEYS */;
INSERT INTO `tx_sjroffers_domain_model_agerange` VALUES (1,5,6,12);
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_agerange` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_attendancefee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_attendancefee` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `offer` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(19,2) NOT NULL DEFAULT '0.00',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_attendancefee` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_attendancefee` DISABLE KEYS */;
INSERT INTO `tx_sjroffers_domain_model_attendancefee` VALUES (1,5,1,29.00,'Nur in bar!');
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_attendancefee` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_attendancerange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_attendancerange` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `minimum_value` int(11) unsigned DEFAULT NULL,
  `maximum_value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_attendancerange` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_attendancerange` DISABLE KEYS */;
INSERT INTO `tx_sjroffers_domain_model_attendancerange` VALUES (1,5,6,20);
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_attendancerange` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_category` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_internal` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_category` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_category` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_daterange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_daterange` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `minimum_value` int(11) unsigned DEFAULT NULL,
  `maximum_value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_daterange` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_daterange` DISABLE KEYS */;
INSERT INTO `tx_sjroffers_domain_model_daterange` VALUES (1,5,NULL,1458086400);
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_daterange` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_offer` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `organization` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `teaser` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `services` text COLLATE utf8_unicode_ci NOT NULL,
  `dates` text COLLATE utf8_unicode_ci NOT NULL,
  `venue` text COLLATE utf8_unicode_ci NOT NULL,
  `image` tinyblob NOT NULL,
  `age_range` int(11) NOT NULL DEFAULT '0',
  `date_range` int(11) NOT NULL DEFAULT '0',
  `attendance_range` int(11) NOT NULL DEFAULT '0',
  `attendance_fees` int(11) NOT NULL DEFAULT '0',
  `contact` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `regions` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_offer` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_offer` DISABLE KEYS */;
INSERT INTO `tx_sjroffers_domain_model_offer` VALUES (1,5,1,'Tennis-Schnupperkurs für Kinder','Für 6 bis 12 Jahre','','','Jeden Mittwoch-Abend, 18 Uhr','Vereinsheim,\r\nMusterstraße 24','',1,1,1,1,0,0,2,1394978435,1394978355,0,0,0,0,'a:14:{s:6:\"hidden\";N;s:5:\"title\";N;s:6:\"teaser\";N;s:11:\"description\";N;s:8:\"services\";N;s:5:\"dates\";N;s:5:\"venue\";N;s:9:\"age_range\";N;s:10:\"date_range\";N;s:16:\"attendance_range\";N;s:15:\"attendance_fees\";N;s:7:\"contact\";N;s:10:\"categories\";N;s:7:\"regions\";N;}');
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_offer` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_organization` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `telephone_number` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telefax_number` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_address` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contacts` int(11) NOT NULL DEFAULT '0',
  `offers` int(11) NOT NULL DEFAULT '0',
  `administrator` int(11) DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `access_group` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_organization` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_organization` DISABLE KEYS */;
INSERT INTO `tx_sjroffers_domain_model_organization` VALUES (1,5,0,'Musterhausener TC','','','','','','Tennis in Musterhausen!','',0,1,0,1394978404,1394978355,0,0,0,0,'a:6:{s:6:\"hidden\";N;s:6:\"status\";N;s:4:\"name\";N;s:11:\"description\";N;s:6:\"offers\";N;s:13:\"administrator\";N;}',0);
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_organization` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_person` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `telephone_number` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telefax_number` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_address` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_person` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_person` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_region` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_region` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_region` DISABLE KEYS */;
INSERT INTO `tx_sjroffers_domain_model_region` VALUES (1,5,'Musterhausen Mitte',1394978378,1394978378,0,0,0,0,'a:2:{s:6:\"hidden\";N;s:4:\"name\";N;}'),(2,5,'Musterhausen Ost',1394978384,1394978384,0,0,0,0,'a:2:{s:6:\"hidden\";N;s:4:\"name\";N;}'),(3,5,'Musterhausen West',1394978388,1394978388,0,0,0,0,'a:2:{s:6:\"hidden\";N;s:4:\"name\";N;}');
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_region` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_status` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `allowed_categories` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_status` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_status` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_offer_category_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_offer_category_mm` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`uid_local`,`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_offer_category_mm` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_offer_category_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_offer_category_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_offer_region_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_offer_region_mm` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`uid_local`,`uid_foreign`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_offer_region_mm` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_offer_region_mm` DISABLE KEYS */;
INSERT INTO `tx_sjroffers_offer_region_mm` VALUES (1,0,1,3,1,0,0,0,0,0,0,0,''),(2,0,1,1,2,0,0,0,0,0,0,0,'');
/*!40000 ALTER TABLE `tx_sjroffers_offer_region_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_organization_person_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_organization_person_mm` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`uid_local`,`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_organization_person_mm` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_organization_person_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_organization_person_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_status_category_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_status_category_mm` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`uid_local`,`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_status_category_mm` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_status_category_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_status_category_mm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

