-- MySQL dump 10.9
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	4.1.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `TMA101`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `TMA101` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `TMA101`;

--
-- Table structure for table `accueil`
--

DROP TABLE IF EXISTS `accueil`;
CREATE TABLE `accueil` (
  `id` int(11) NOT NULL auto_increment,
  `rubrique` varchar(100) default NULL,
  `lien` varchar(255) default NULL,
  `image` varchar(100) default NULL,
  `visible` tinyint(4) default NULL,
  `admin` varchar(200) default NULL,
  `address` varchar(120) default NULL,
  `define_var` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accueil`
--

LOCK TABLES `accueil` WRITE;
/*!40000 ALTER TABLE `accueil` DISABLE KEYS */;
INSERT INTO `accueil` VALUES (1,'Ατζέντα','../../modules/agenda/agenda.php','calendar',0,'0','','MODULE_ID_AGENDA'),(2,'Σύνδεσμοι','../../modules/link/link.php','links',0,'0','','MODULE_ID_LINKS'),(3,'Έγγραφα','../../modules/document/document.php','docs',0,'0','','MODULE_ID_DOCS'),(4,'Βίντεο','../../modules/video/video.php','videos',0,'0','','MODULE_ID_VIDEO'),(5,'Εργασίες','../../modules/work/work.php','assignments',1,'0','','MODULE_ID_ASSIGN'),(7,'Ανακοινώσεις','../../modules/announcements/announcements.php','announcements',0,'0','','MODULE_ID_ANNOUNCE'),(9,'Περιοχές Συζητήσεων','../../modules/phpbb/index.php','forum',1,'0','','MODULE_ID_FORUM'),(10,'Ασκήσεις','../../modules/exercice/exercice.php','exercise',0,'0','','MODULE_ID_EXERCISE'),(15,'Ομάδες Χρηστών','../../modules/group/group.php','groups',1,'0','','MODULE_ID_GROUPS'),(16,'Ανταλλαγή Αρχείων','../../modules/dropbox/index.php','dropbox',0,'0','','MODULE_ID_DROPBOX'),(19,'Τηλεσυνεργασία','../../modules/conference/conference.php','conference',1,'0','','MODULE_ID_CHAT'),(20,'Περιγραφή Μαθήματος','../../modules/course_description/','description',0,'0','','MODULE_ID_DESCRIPTION'),(21,'Ερωτηματολόγια','../../modules/questionnaire/questionnaire.php','questionnaire',0,'0','','MODULE_ID_QUESTIONNAIRE'),(23,'Γραμμή Μάθησης','../../modules/learnPath/learningPathList.php','lp',0,'0','','MODULE_ID_LP'),(25,'Ενεργοποίηση Εργαλείων','../../modules/course_tools/course_tools.php','tooladmin',0,'1','','MODULE_ID_TOOLADMIN'),(26,'Σύστημα Wiki','../../modules/wiki/wiki.php','wiki',0,'0','','MODULE_ID_WIKI'),(8,'Διαχείριση Χρηστών','../../modules/user/user.php','users',0,'1','','MODULE_ID_USERS'),(14,'Διαχείριση Μαθήματος','../../modules/course_info/infocours.php?','course_info',0,'1','','MODULE_ID_COURSEINFO'),(24,'Στατιστικά Χρήσης','../../modules/usage/usage.php','usage',0,'1','','MODULE_ID_USAGE'),(27,'Θεματικές ενότητες μαθήματος','../../modules/units/index.php','description',2,'0','','MODULE_ID_UNITS');
/*!40000 ALTER TABLE `accueil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action_types`
--

DROP TABLE IF EXISTS `action_types`;
CREATE TABLE `action_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `action_types`
--

LOCK TABLES `action_types` WRITE;
/*!40000 ALTER TABLE `action_types` DISABLE KEYS */;
INSERT INTO `action_types` VALUES (1,'access'),(2,'exit');
/*!40000 ALTER TABLE `action_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
CREATE TABLE `actions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `module_id` int(11) NOT NULL default '0',
  `action_type_id` int(11) NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `duration` int(11) NOT NULL default '900',
  PRIMARY KEY  (`id`),
  KEY `actionsindex` (`module_id`,`date_time`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,1,27,1,'2020-04-08 22:31:49',7),(2,1,5,1,'2020-04-08 22:31:56',9),(3,1,5,1,'2020-04-08 22:32:05',107),(4,1,5,1,'2020-04-08 22:33:52',5),(5,1,5,1,'2020-04-08 22:33:57',35),(6,1,5,1,'2020-04-08 22:34:32',4),(7,1,5,1,'2020-04-08 22:34:36',28),(8,1,5,1,'2020-04-08 22:35:04',4),(9,1,27,1,'2020-04-08 22:35:08',2),(10,1,27,1,'2020-04-08 22:35:10',4),(11,1,5,1,'2020-04-08 22:35:14',882),(12,1,27,2,'2020-04-08 22:49:56',0),(13,1,27,1,'2020-04-11 21:05:48',22),(14,1,27,1,'2020-04-11 21:06:10',900);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions_summary`
--

DROP TABLE IF EXISTS `actions_summary`;
CREATE TABLE `actions_summary` (
  `id` int(11) NOT NULL auto_increment,
  `module_id` int(11) NOT NULL default '0',
  `visits` int(11) NOT NULL default '0',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `duration` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actions_summary`
--

LOCK TABLES `actions_summary` WRITE;
/*!40000 ALTER TABLE `actions_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda` (
  `id` int(11) NOT NULL auto_increment,
  `titre` varchar(200) default NULL,
  `contenu` text,
  `day` date NOT NULL default '0000-00-00',
  `hour` time NOT NULL default '00:00:00',
  `lasting` varchar(20) default NULL,
  `visibility` char(1) NOT NULL default 'v',
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `agenda` (`titre`,`contenu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_submit`
--

DROP TABLE IF EXISTS `assignment_submit`;
CREATE TABLE `assignment_submit` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL default '0',
  `assignment_id` int(11) NOT NULL default '0',
  `submission_date` date NOT NULL default '0000-00-00',
  `submission_ip` varchar(16) NOT NULL default '',
  `file_path` varchar(200) NOT NULL default '',
  `file_name` varchar(200) NOT NULL default '',
  `comments` text NOT NULL,
  `grade` varchar(50) NOT NULL default '',
  `grade_comments` text NOT NULL,
  `grade_submission_date` date NOT NULL default '0000-00-00',
  `grade_submission_ip` varchar(16) NOT NULL default '',
  `group_id` int(11) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignment_submit`
--

LOCK TABLES `assignment_submit` WRITE;
/*!40000 ALTER TABLE `assignment_submit` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment_submit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
CREATE TABLE `assignments` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL default '',
  `description` text NOT NULL,
  `comments` text NOT NULL,
  `deadline` date NOT NULL default '0000-00-00',
  `submission_date` date NOT NULL default '0000-00-00',
  `active` char(1) NOT NULL default '1',
  `secret_directory` varchar(30) NOT NULL default '',
  `group_submissions` char(1) NOT NULL default '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (1,'Can\'t touch this','\r\nΒαριεμαι να περιγράφω\r\n','Βαριέμαι να σχολιάζω','2020-05-31','2020-04-08','1','5e8e3530ed08a','0');
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catagories`
--

DROP TABLE IF EXISTS `catagories`;
CREATE TABLE `catagories` (
  `cat_id` int(10) NOT NULL auto_increment,
  `cat_title` varchar(100) default NULL,
  `cat_order` varchar(10) default NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catagories`
--

LOCK TABLES `catagories` WRITE;
/*!40000 ALTER TABLE `catagories` DISABLE KEYS */;
INSERT INTO `catagories` VALUES (2,'Αρχή',NULL);
/*!40000 ALTER TABLE `catagories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_description`
--

DROP TABLE IF EXISTS `course_description`;
CREATE TABLE `course_description` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(255) default NULL,
  `content` text,
  `upDate` datetime NOT NULL default '0000-00-00 00:00:00',
  UNIQUE KEY `id` (`id`),
  FULLTEXT KEY `course_description` (`title`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_description`
--

LOCK TABLES `course_description` WRITE;
/*!40000 ALTER TABLE `course_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `id` int(4) NOT NULL auto_increment,
  `path` varchar(255) NOT NULL default '',
  `filename` text,
  `visibility` char(1) NOT NULL default 'v',
  `comment` varchar(255) default NULL,
  `category` text,
  `title` text,
  `creator` text,
  `date` datetime default NULL,
  `date_modified` datetime default NULL,
  `subject` text,
  `description` text,
  `author` text,
  `format` text,
  `language` text,
  `copyrighted` text,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `document` (`filename`,`comment`,`title`,`creator`,`subject`,`description`,`author`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropbox_file`
--

DROP TABLE IF EXISTS `dropbox_file`;
CREATE TABLE `dropbox_file` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uploaderId` int(11) unsigned NOT NULL default '0',
  `filename` varchar(250) NOT NULL default '',
  `filesize` int(11) unsigned NOT NULL default '0',
  `title` varchar(250) default '',
  `description` varchar(250) default '',
  `author` varchar(250) default '',
  `uploadDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastUploadDate` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UN_filename` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dropbox_file`
--

LOCK TABLES `dropbox_file` WRITE;
/*!40000 ALTER TABLE `dropbox_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `dropbox_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropbox_person`
--

DROP TABLE IF EXISTS `dropbox_person`;
CREATE TABLE `dropbox_person` (
  `fileId` int(11) unsigned NOT NULL default '0',
  `personId` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`fileId`,`personId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dropbox_person`
--

LOCK TABLES `dropbox_person` WRITE;
/*!40000 ALTER TABLE `dropbox_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `dropbox_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropbox_post`
--

DROP TABLE IF EXISTS `dropbox_post`;
CREATE TABLE `dropbox_post` (
  `fileId` int(11) unsigned NOT NULL default '0',
  `recipientId` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`fileId`,`recipientId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dropbox_post`
--

LOCK TABLES `dropbox_post` WRITE;
/*!40000 ALTER TABLE `dropbox_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `dropbox_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercice_question`
--

DROP TABLE IF EXISTS `exercice_question`;
CREATE TABLE `exercice_question` (
  `question_id` int(11) NOT NULL default '0',
  `exercice_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`question_id`,`exercice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exercice_question`
--

LOCK TABLES `exercice_question` WRITE;
/*!40000 ALTER TABLE `exercice_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercice_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercices`
--

DROP TABLE IF EXISTS `exercices`;
CREATE TABLE `exercices` (
  `id` tinyint(4) NOT NULL auto_increment,
  `titre` varchar(250) default NULL,
  `description` text,
  `type` tinyint(4) unsigned NOT NULL default '1',
  `StartDate` date default NULL,
  `EndDate` date default NULL,
  `TimeConstrain` int(11) default '0',
  `AttemptsAllowed` int(11) default '0',
  `random` smallint(6) NOT NULL default '0',
  `active` tinyint(4) default NULL,
  `results` tinyint(1) NOT NULL default '1',
  `score` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `exercices` (`titre`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exercices`
--

LOCK TABLES `exercices` WRITE;
/*!40000 ALTER TABLE `exercices` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_user_record`
--

DROP TABLE IF EXISTS `exercise_user_record`;
CREATE TABLE `exercise_user_record` (
  `eurid` int(11) NOT NULL auto_increment,
  `eid` tinyint(4) NOT NULL default '0',
  `uid` mediumint(8) NOT NULL default '0',
  `RecordStartDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `RecordEndDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `TotalScore` int(11) NOT NULL default '0',
  `TotalWeighting` int(11) default '0',
  `attempt` int(11) NOT NULL default '0',
  PRIMARY KEY  (`eurid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exercise_user_record`
--

LOCK TABLES `exercise_user_record` WRITE;
/*!40000 ALTER TABLE `exercise_user_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercise_user_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
CREATE TABLE `forums` (
  `forum_id` int(10) NOT NULL auto_increment,
  `forum_name` varchar(150) default NULL,
  `forum_desc` text,
  `forum_access` int(10) default '1',
  `forum_moderator` int(10) default NULL,
  `forum_topics` int(10) NOT NULL default '0',
  `forum_posts` int(10) NOT NULL default '0',
  `forum_last_post_id` int(10) NOT NULL default '0',
  `cat_id` int(10) default NULL,
  `forum_type` int(10) default '0',
  PRIMARY KEY  (`forum_id`),
  KEY `forum_last_post_id` (`forum_last_post_id`),
  FULLTEXT KEY `forums` (`forum_name`,`forum_desc`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
INSERT INTO `forums` VALUES (1,'Γενικές συζητήσεις','Περιοχή συζητήσεων για κάθε θέμα που αφορά το μάθημα',2,1,0,0,0,2,0);
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_documents`
--

DROP TABLE IF EXISTS `group_documents`;
CREATE TABLE `group_documents` (
  `id` int(4) NOT NULL auto_increment,
  `path` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_documents`
--

LOCK TABLES `group_documents` WRITE;
/*!40000 ALTER TABLE `group_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_properties`
--

DROP TABLE IF EXISTS `group_properties`;
CREATE TABLE `group_properties` (
  `id` tinyint(4) NOT NULL auto_increment,
  `self_registration` tinyint(4) default '1',
  `private` tinyint(4) default '0',
  `forum` tinyint(4) default '1',
  `document` tinyint(4) default '1',
  `wiki` tinyint(4) default '0',
  `agenda` tinyint(4) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_properties`
--

LOCK TABLES `group_properties` WRITE;
/*!40000 ALTER TABLE `group_properties` DISABLE KEYS */;
INSERT INTO `group_properties` VALUES (1,1,0,1,1,0,0);
/*!40000 ALTER TABLE `group_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liens`
--

DROP TABLE IF EXISTS `liens`;
CREATE TABLE `liens` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(255) default NULL,
  `titre` varchar(255) default NULL,
  `description` text,
  `category` int(4) NOT NULL default '0',
  `ordre` mediumint(8) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `liens` (`url`,`titre`,`description`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `liens`
--

LOCK TABLES `liens` WRITE;
/*!40000 ALTER TABLE `liens` DISABLE KEYS */;
INSERT INTO `liens` VALUES (1,'http://www.google.com','Google','Γρήγορη και Πανίσχυρη μηχανής αναζήτησης',0,0);
/*!40000 ALTER TABLE `liens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_categories`
--

DROP TABLE IF EXISTS `link_categories`;
CREATE TABLE `link_categories` (
  `id` int(6) NOT NULL auto_increment,
  `categoryname` varchar(255) default NULL,
  `description` text,
  `ordre` mediumint(8) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link_categories`
--

LOCK TABLES `link_categories` WRITE;
/*!40000 ALTER TABLE `link_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
CREATE TABLE `logins` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `ip` char(16) NOT NULL default '0.0.0.0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logins`
--

LOCK TABLES `logins` WRITE;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
INSERT INTO `logins` VALUES (1,1,'37.6.0.214','2020-04-08 22:31:48'),(2,1,'37.6.0.214','2020-04-08 22:35:08'),(3,1,'37.6.0.214','2020-04-08 22:35:10'),(4,1,'37.6.0.214','2020-04-11 21:05:48'),(5,1,'37.6.0.214','2020-04-11 21:06:10');
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_asset`
--

DROP TABLE IF EXISTS `lp_asset`;
CREATE TABLE `lp_asset` (
  `asset_id` int(11) NOT NULL auto_increment,
  `module_id` int(11) NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `comment` varchar(255) default NULL,
  PRIMARY KEY  (`asset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lp_asset`
--

LOCK TABLES `lp_asset` WRITE;
/*!40000 ALTER TABLE `lp_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `lp_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_learnPath`
--

DROP TABLE IF EXISTS `lp_learnPath`;
CREATE TABLE `lp_learnPath` (
  `learnPath_id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `comment` text NOT NULL,
  `lock` enum('OPEN','CLOSE') NOT NULL default 'OPEN',
  `visibility` enum('HIDE','SHOW') NOT NULL default 'SHOW',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`learnPath_id`),
  UNIQUE KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lp_learnPath`
--

LOCK TABLES `lp_learnPath` WRITE;
/*!40000 ALTER TABLE `lp_learnPath` DISABLE KEYS */;
/*!40000 ALTER TABLE `lp_learnPath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_module`
--

DROP TABLE IF EXISTS `lp_module`;
CREATE TABLE `lp_module` (
  `module_id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `comment` text NOT NULL,
  `accessibility` enum('PRIVATE','PUBLIC') NOT NULL default 'PRIVATE',
  `startAsset_id` int(11) NOT NULL default '0',
  `contentType` enum('CLARODOC','DOCUMENT','EXERCISE','HANDMADE','SCORM','SCORM_ASSET','LABEL','COURSE_DESCRIPTION','LINK') NOT NULL default 'CLARODOC',
  `launch_data` text NOT NULL,
  PRIMARY KEY  (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lp_module`
--

LOCK TABLES `lp_module` WRITE;
/*!40000 ALTER TABLE `lp_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `lp_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_rel_learnPath_module`
--

DROP TABLE IF EXISTS `lp_rel_learnPath_module`;
CREATE TABLE `lp_rel_learnPath_module` (
  `learnPath_module_id` int(11) NOT NULL auto_increment,
  `learnPath_id` int(11) NOT NULL default '0',
  `module_id` int(11) NOT NULL default '0',
  `lock` enum('OPEN','CLOSE') NOT NULL default 'OPEN',
  `visibility` enum('HIDE','SHOW') NOT NULL default 'SHOW',
  `specificComment` text NOT NULL,
  `rank` int(11) NOT NULL default '0',
  `parent` int(11) NOT NULL default '0',
  `raw_to_pass` tinyint(4) NOT NULL default '50',
  PRIMARY KEY  (`learnPath_module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lp_rel_learnPath_module`
--

LOCK TABLES `lp_rel_learnPath_module` WRITE;
/*!40000 ALTER TABLE `lp_rel_learnPath_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `lp_rel_learnPath_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_user_module_progress`
--

DROP TABLE IF EXISTS `lp_user_module_progress`;
CREATE TABLE `lp_user_module_progress` (
  `user_module_progress_id` int(22) NOT NULL auto_increment,
  `user_id` mediumint(9) NOT NULL default '0',
  `learnPath_module_id` int(11) NOT NULL default '0',
  `learnPath_id` int(11) NOT NULL default '0',
  `lesson_location` varchar(255) NOT NULL default '',
  `lesson_status` enum('NOT ATTEMPTED','PASSED','FAILED','COMPLETED','BROWSED','INCOMPLETE','UNKNOWN') NOT NULL default 'NOT ATTEMPTED',
  `entry` enum('AB-INITIO','RESUME','') NOT NULL default 'AB-INITIO',
  `raw` tinyint(4) NOT NULL default '-1',
  `scoreMin` tinyint(4) NOT NULL default '-1',
  `scoreMax` tinyint(4) NOT NULL default '-1',
  `total_time` varchar(13) NOT NULL default '0000:00:00.00',
  `session_time` varchar(13) NOT NULL default '0000:00:00.00',
  `suspend_data` text NOT NULL,
  `credit` enum('CREDIT','NO-CREDIT') NOT NULL default 'NO-CREDIT',
  PRIMARY KEY  (`user_module_progress_id`),
  KEY `optimize` (`user_id`,`learnPath_module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lp_user_module_progress`
--

LOCK TABLES `lp_user_module_progress` WRITE;
/*!40000 ALTER TABLE `lp_user_module_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `lp_user_module_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(200) default NULL,
  `titre` varchar(200) default NULL,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
CREATE TABLE `poll` (
  `pid` int(11) NOT NULL auto_increment,
  `creator_id` mediumint(8) unsigned NOT NULL default '0',
  `course_id` varchar(20) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `creation_date` date NOT NULL default '0000-00-00',
  `start_date` date NOT NULL default '0000-00-00',
  `end_date` date NOT NULL default '0000-00-00',
  `active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poll`
--

LOCK TABLES `poll` WRITE;
/*!40000 ALTER TABLE `poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_answer_record`
--

DROP TABLE IF EXISTS `poll_answer_record`;
CREATE TABLE `poll_answer_record` (
  `arid` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '0',
  `qid` int(11) NOT NULL default '0',
  `aid` int(11) NOT NULL default '0',
  `answer_text` varchar(255) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `submit_date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`arid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poll_answer_record`
--

LOCK TABLES `poll_answer_record` WRITE;
/*!40000 ALTER TABLE `poll_answer_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_answer_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_question`
--

DROP TABLE IF EXISTS `poll_question`;
CREATE TABLE `poll_question` (
  `pqid` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '0',
  `question_text` varchar(250) NOT NULL default '',
  `qtype` enum('multiple','fill') NOT NULL default 'multiple',
  PRIMARY KEY  (`pqid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poll_question`
--

LOCK TABLES `poll_question` WRITE;
/*!40000 ALTER TABLE `poll_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_question_answer`
--

DROP TABLE IF EXISTS `poll_question_answer`;
CREATE TABLE `poll_question_answer` (
  `pqaid` int(11) NOT NULL auto_increment,
  `pqid` int(11) NOT NULL default '0',
  `answer_text` text NOT NULL,
  PRIMARY KEY  (`pqaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poll_question_answer`
--

LOCK TABLES `poll_question_answer` WRITE;
/*!40000 ALTER TABLE `poll_question_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_question_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` int(10) NOT NULL auto_increment,
  `topic_id` int(10) NOT NULL default '0',
  `forum_id` int(10) NOT NULL default '0',
  `poster_id` int(10) NOT NULL default '0',
  `post_time` varchar(20) default NULL,
  `poster_ip` varchar(16) default NULL,
  `nom` varchar(30) default NULL,
  `prenom` varchar(30) default NULL,
  PRIMARY KEY  (`post_id`),
  KEY `post_id` (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_text`
--

DROP TABLE IF EXISTS `posts_text`;
CREATE TABLE `posts_text` (
  `post_id` int(10) NOT NULL default '0',
  `post_text` text,
  PRIMARY KEY  (`post_id`),
  FULLTEXT KEY `posts_text` (`post_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts_text`
--

LOCK TABLES `posts_text` WRITE;
/*!40000 ALTER TABLE `posts_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL auto_increment,
  `question` text,
  `description` text,
  `ponderation` float(11,2) default NULL,
  `q_position` int(11) default '1',
  `type` int(11) default '2',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reponses`
--

DROP TABLE IF EXISTS `reponses`;
CREATE TABLE `reponses` (
  `id` int(11) NOT NULL default '0',
  `question_id` int(11) NOT NULL default '0',
  `reponse` text,
  `correct` int(11) default NULL,
  `comment` text,
  `ponderation` float(5,2) default NULL,
  `r_position` int(11) default NULL,
  PRIMARY KEY  (`id`,`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reponses`
--

LOCK TABLES `reponses` WRITE;
/*!40000 ALTER TABLE `reponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `reponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_group`
--

DROP TABLE IF EXISTS `student_group`;
CREATE TABLE `student_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `description` text,
  `tutor` int(11) default NULL,
  `forumId` int(11) default NULL,
  `maxStudent` int(11) NOT NULL default '0',
  `secretDirectory` varchar(30) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_group`
--

LOCK TABLES `student_group` WRITE;
/*!40000 ALTER TABLE `student_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
CREATE TABLE `survey` (
  `sid` bigint(14) NOT NULL auto_increment,
  `creator_id` mediumint(8) unsigned NOT NULL default '0',
  `course_id` varchar(20) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `creation_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `type` int(11) NOT NULL default '0',
  `active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_answer`
--

DROP TABLE IF EXISTS `survey_answer`;
CREATE TABLE `survey_answer` (
  `aid` bigint(12) NOT NULL default '0',
  `creator_id` mediumint(8) unsigned NOT NULL default '0',
  `sid` bigint(12) NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_answer`
--

LOCK TABLES `survey_answer` WRITE;
/*!40000 ALTER TABLE `survey_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_answer_record`
--

DROP TABLE IF EXISTS `survey_answer_record`;
CREATE TABLE `survey_answer_record` (
  `arid` int(11) NOT NULL auto_increment,
  `aid` bigint(12) NOT NULL default '0',
  `question_text` varchar(250) NOT NULL default '',
  `question_answer` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`arid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_answer_record`
--

LOCK TABLES `survey_answer_record` WRITE;
/*!40000 ALTER TABLE `survey_answer_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_answer_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_question`
--

DROP TABLE IF EXISTS `survey_question`;
CREATE TABLE `survey_question` (
  `sqid` bigint(12) NOT NULL default '0',
  `sid` bigint(12) NOT NULL default '0',
  `question_text` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`sqid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_question`
--

LOCK TABLES `survey_question` WRITE;
/*!40000 ALTER TABLE `survey_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_question_answer`
--

DROP TABLE IF EXISTS `survey_question_answer`;
CREATE TABLE `survey_question_answer` (
  `sqaid` int(11) NOT NULL auto_increment,
  `sqid` bigint(12) NOT NULL default '0',
  `answer_text` varchar(250) default NULL,
  PRIMARY KEY  (`sqaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_question_answer`
--

LOCK TABLES `survey_question_answer` WRITE;
/*!40000 ALTER TABLE `survey_question_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_question_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `topic_id` int(10) NOT NULL auto_increment,
  `topic_title` varchar(100) default NULL,
  `topic_poster` int(10) default NULL,
  `topic_time` varchar(20) default NULL,
  `topic_views` int(10) NOT NULL default '0',
  `topic_replies` int(10) NOT NULL default '0',
  `topic_last_post_id` int(10) NOT NULL default '0',
  `forum_id` int(10) NOT NULL default '0',
  `topic_status` int(10) NOT NULL default '0',
  `topic_notify` int(2) default '0',
  `nom` varchar(30) default NULL,
  `prenom` varchar(30) default NULL,
  PRIMARY KEY  (`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_last_post_id` (`topic_last_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) NOT NULL default '0',
  `team` int(11) NOT NULL default '0',
  `status` int(11) NOT NULL default '0',
  `role` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) NOT NULL auto_increment,
  `username` varchar(40) NOT NULL default '',
  `user_regdate` varchar(20) NOT NULL default '',
  `user_password` varchar(32) NOT NULL default '',
  `user_email` varchar(50) default NULL,
  `user_icq` varchar(15) default NULL,
  `user_website` varchar(100) default NULL,
  `user_occ` varchar(100) default NULL,
  `user_from` varchar(100) default NULL,
  `user_intrest` varchar(150) default NULL,
  `user_sig` varchar(255) default NULL,
  `user_viewemail` tinyint(2) default NULL,
  `user_theme` int(10) default NULL,
  `user_aim` varchar(18) default NULL,
  `user_yim` varchar(25) default NULL,
  `user_msnm` varchar(25) default NULL,
  `user_posts` int(10) default '0',
  `user_attachsig` int(2) default '0',
  `user_desmile` int(2) default '0',
  `user_html` int(2) default '0',
  `user_bbcode` int(2) default '0',
  `user_rank` int(10) default '0',
  `user_level` int(10) default '1',
  `user_lang` varchar(255) default NULL,
  `user_actkey` varchar(32) default NULL,
  `user_newpasswd` varchar(32) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Πλατφόρμας Διαχειριστής','2020-04-08 22:29:50','password','webmaster@localhost',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,NULL,NULL,NULL),(-1,'Ανώνυμος','2020-04-08 22:29:50','password','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL auto_increment,
  `path` varchar(255) default NULL,
  `url` varchar(200) default NULL,
  `titre` varchar(200) default NULL,
  `description` text,
  `creator` varchar(200) default NULL,
  `publisher` varchar(200) default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `video` (`url`,`titre`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videolinks`
--

DROP TABLE IF EXISTS `videolinks`;
CREATE TABLE `videolinks` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(200) default NULL,
  `titre` varchar(200) default NULL,
  `description` text,
  `creator` varchar(200) default NULL,
  `publisher` varchar(200) default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `videolinks` (`url`,`titre`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videolinks`
--

LOCK TABLES `videolinks` WRITE;
/*!40000 ALTER TABLE `videolinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `videolinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_acls`
--

DROP TABLE IF EXISTS `wiki_acls`;
CREATE TABLE `wiki_acls` (
  `wiki_id` int(11) unsigned NOT NULL default '0',
  `flag` varchar(255) NOT NULL default '',
  `value` enum('false','true') NOT NULL default 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wiki_acls`
--

LOCK TABLES `wiki_acls` WRITE;
/*!40000 ALTER TABLE `wiki_acls` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_acls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
CREATE TABLE `wiki_pages` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `wiki_id` int(11) unsigned NOT NULL default '0',
  `owner_id` int(11) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `ctime` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_version` int(11) unsigned NOT NULL default '0',
  `last_mtime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wiki_pages`
--

LOCK TABLES `wiki_pages` WRITE;
/*!40000 ALTER TABLE `wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages_content`
--

DROP TABLE IF EXISTS `wiki_pages_content`;
CREATE TABLE `wiki_pages_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `pid` int(11) unsigned NOT NULL default '0',
  `editor_id` int(11) NOT NULL default '0',
  `mtime` datetime NOT NULL default '0000-00-00 00:00:00',
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wiki_pages_content`
--

LOCK TABLES `wiki_pages_content` WRITE;
/*!40000 ALTER TABLE `wiki_pages_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_pages_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_properties`
--

DROP TABLE IF EXISTS `wiki_properties`;
CREATE TABLE `wiki_properties` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `description` text,
  `group_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wiki_properties`
--

LOCK TABLES `wiki_properties` WRITE;
/*!40000 ALTER TABLE `wiki_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `eclass`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `eclass` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eclass`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `idUser` mediumint(8) unsigned NOT NULL default '0',
  UNIQUE KEY `idUser` (`idUser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_announcements`
--

DROP TABLE IF EXISTS `admin_announcements`;
CREATE TABLE `admin_announcements` (
  `id` int(11) NOT NULL auto_increment,
  `gr_title` varchar(255) default NULL,
  `gr_body` text,
  `gr_comment` varchar(255) default NULL,
  `en_title` varchar(255) default NULL,
  `en_body` text,
  `en_comment` varchar(255) default NULL,
  `date` date NOT NULL default '0000-00-00',
  `visible` enum('V','I') NOT NULL default 'V',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_announcements`
--

LOCK TABLES `admin_announcements` WRITE;
/*!40000 ALTER TABLE `admin_announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda` (
  `id` int(11) NOT NULL auto_increment,
  `lesson_event_id` int(11) NOT NULL default '0',
  `titre` varchar(200) NOT NULL default '',
  `contenu` text NOT NULL,
  `day` date NOT NULL default '0000-00-00',
  `hour` time NOT NULL default '00:00:00',
  `lasting` varchar(20) NOT NULL default '',
  `lesson_code` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonces`
--

DROP TABLE IF EXISTS `annonces`;
CREATE TABLE `annonces` (
  `id` mediumint(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `contenu` text,
  `temps` date default NULL,
  `cours_id` int(11) NOT NULL default '0',
  `ordre` mediumint(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `annonces` (`contenu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `annonces`
--

LOCK TABLES `annonces` WRITE;
/*!40000 ALTER TABLE `annonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `annonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(2) NOT NULL auto_increment,
  `auth_name` varchar(20) NOT NULL default '',
  `auth_settings` text,
  `auth_instructions` text,
  `auth_default` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`auth_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (1,'eclass','','',1),(2,'pop3','','',0),(3,'imap','','',0),(4,'ldap','','',0),(5,'db','','',0),(6,'shibboleth','','',0);
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` mediumint(9) NOT NULL auto_increment,
  `key` varchar(255) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'version','2.3');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE `cours` (
  `cours_id` int(11) NOT NULL auto_increment,
  `code` varchar(20) default NULL,
  `languageCourse` varchar(15) default NULL,
  `intitule` varchar(250) default NULL,
  `description` text,
  `course_keywords` text,
  `course_addon` text,
  `faculte` varchar(100) default NULL,
  `visible` tinyint(4) default NULL,
  `titulaires` varchar(200) default NULL,
  `fake_code` varchar(20) default NULL,
  `departmentUrlName` varchar(30) default NULL,
  `departmentUrl` varchar(180) default NULL,
  `lastVisit` date NOT NULL default '0000-00-00',
  `lastEdit` datetime NOT NULL default '0000-00-00 00:00:00',
  `expirationDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `first_create` datetime NOT NULL default '0000-00-00 00:00:00',
  `type` enum('pre','post','other') NOT NULL default 'pre',
  `doc_quota` float NOT NULL default '1.04858e+08',
  `video_quota` float NOT NULL default '1.04858e+08',
  `group_quota` float NOT NULL default '1.04858e+08',
  `dropbox_quota` float NOT NULL default '1.04858e+08',
  `password` varchar(50) default NULL,
  `faculteid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cours_id`),
  FULLTEXT KEY `cours` (`code`,`description`,`intitule`,`course_keywords`,`course_addon`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cours`
--

LOCK TABLES `cours` WRITE;
/*!40000 ALTER TABLE `cours` DISABLE KEYS */;
INSERT INTO `cours` VALUES (2,'TMA101','greek','ΝΑΙ ΠΟΙΟΣ ΕΙΝΑΙ;','<p>ΠΑΠΠΑΜΠΑΚΑΛΙΑΤΗΣ</p><p>&nbsp;</p><p><span style=\"white-space: pre;\">	</span>Βάλτε antivirus στις μάνες σας.&nbsp;</p>','καμια λεξη','τιποτα','Τμήμα 1',2,'Ο ΜΠΑΜΠΑΣ ΣΟΥ','TMA101',NULL,NULL,'0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','2020-04-08 22:29:53','pre',1.04858e+08,1.04858e+08,1.04858e+08,1.04858e+08,NULL,1);
/*!40000 ALTER TABLE `cours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours_faculte`
--

DROP TABLE IF EXISTS `cours_faculte`;
CREATE TABLE `cours_faculte` (
  `id` int(11) NOT NULL auto_increment,
  `faculte` varchar(100) NOT NULL default '',
  `code` varchar(20) NOT NULL default '',
  `facid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cours_faculte`
--

LOCK TABLES `cours_faculte` WRITE;
/*!40000 ALTER TABLE `cours_faculte` DISABLE KEYS */;
INSERT INTO `cours_faculte` VALUES (2,'1','TMA101',1);
/*!40000 ALTER TABLE `cours_faculte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours_user`
--

DROP TABLE IF EXISTS `cours_user`;
CREATE TABLE `cours_user` (
  `cours_id` int(11) NOT NULL default '0',
  `user_id` int(11) unsigned NOT NULL default '0',
  `statut` tinyint(4) NOT NULL default '0',
  `team` int(11) NOT NULL default '0',
  `tutor` int(11) NOT NULL default '0',
  `reg_date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`cours_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cours_user`
--

LOCK TABLES `cours_user` WRITE;
/*!40000 ALTER TABLE `cours_user` DISABLE KEYS */;
INSERT INTO `cours_user` VALUES (2,1,1,0,1,'2020-04-08');
/*!40000 ALTER TABLE `cours_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_units`
--

DROP TABLE IF EXISTS `course_units`;
CREATE TABLE `course_units` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `comments` mediumtext NOT NULL,
  `visibility` char(1) NOT NULL default 'v',
  `order` int(11) NOT NULL default '0',
  `course_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_units`
--

LOCK TABLES `course_units` WRITE;
/*!40000 ALTER TABLE `course_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculte`
--

DROP TABLE IF EXISTS `faculte`;
CREATE TABLE `faculte` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(10) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `number` int(11) NOT NULL default '0',
  `generator` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculte`
--

LOCK TABLES `faculte` WRITE;
/*!40000 ALTER TABLE `faculte` DISABLE KEYS */;
INSERT INTO `faculte` VALUES (1,'TMA','Τμήμα 1',10,102),(2,'TMB','Τμήμα 2',20,100),(3,'TMC','Τμήμα 3',30,100),(4,'TMD','Τμήμα 4',40,100),(5,'TME','Τμήμα 5',50,100);
/*!40000 ALTER TABLE `faculte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_notify`
--

DROP TABLE IF EXISTS `forum_notify`;
CREATE TABLE `forum_notify` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `cat_id` int(11) default NULL,
  `forum_id` int(11) default NULL,
  `topic_id` int(11) default NULL,
  `notify_sent` tinyint(1) NOT NULL default '0',
  `course_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forum_notify`
--

LOCK TABLES `forum_notify` WRITE;
/*!40000 ALTER TABLE `forum_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginout`
--

DROP TABLE IF EXISTS `loginout`;
CREATE TABLE `loginout` (
  `idLog` mediumint(9) unsigned NOT NULL auto_increment,
  `id_user` mediumint(9) unsigned NOT NULL default '0',
  `ip` char(16) NOT NULL default '0.0.0.0',
  `when` datetime NOT NULL default '0000-00-00 00:00:00',
  `action` enum('LOGIN','LOGOUT') NOT NULL default 'LOGIN',
  PRIMARY KEY  (`idLog`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginout`
--

LOCK TABLES `loginout` WRITE;
/*!40000 ALTER TABLE `loginout` DISABLE KEYS */;
INSERT INTO `loginout` VALUES (1,1,'37.6.0.214','2020-04-08 22:11:43','LOGIN'),(2,1,'37.6.0.214','2020-04-08 22:12:16','LOGIN'),(3,1,'37.6.0.214','2020-04-11 21:05:37','LOGIN');
/*!40000 ALTER TABLE `loginout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginout_summary`
--

DROP TABLE IF EXISTS `loginout_summary`;
CREATE TABLE `loginout_summary` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `login_sum` int(11) unsigned NOT NULL default '0',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginout_summary`
--

LOCK TABLES `loginout_summary` WRITE;
/*!40000 ALTER TABLE `loginout_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginout_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_summary`
--

DROP TABLE IF EXISTS `monthly_summary`;
CREATE TABLE `monthly_summary` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `month` varchar(20) NOT NULL default '0',
  `profesNum` int(11) NOT NULL default '0',
  `studNum` int(11) NOT NULL default '0',
  `visitorsNum` int(11) NOT NULL default '0',
  `coursNum` int(11) NOT NULL default '0',
  `logins` int(11) NOT NULL default '0',
  `details` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `monthly_summary`
--

LOCK TABLES `monthly_summary` WRITE;
/*!40000 ALTER TABLE `monthly_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwd_reset`
--

DROP TABLE IF EXISTS `passwd_reset`;
CREATE TABLE `passwd_reset` (
  `user_id` int(11) NOT NULL default '0',
  `hash` varchar(40) NOT NULL default '',
  `password` varchar(8) NOT NULL default '',
  `datetime` datetime NOT NULL default '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `passwd_reset`
--

LOCK TABLES `passwd_reset` WRITE;
/*!40000 ALTER TABLE `passwd_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwd_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_bookmark`
--

DROP TABLE IF EXISTS `pma_bookmark`;
CREATE TABLE `pma_bookmark` (
  `id` int(11) NOT NULL auto_increment,
  `dbase` varchar(255) NOT NULL default '',
  `user` varchar(255) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `query` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pma_bookmark`
--

LOCK TABLES `pma_bookmark` WRITE;
/*!40000 ALTER TABLE `pma_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_column_comments`
--

DROP TABLE IF EXISTS `pma_column_comments`;
CREATE TABLE `pma_column_comments` (
  `id` int(5) unsigned NOT NULL auto_increment,
  `db_name` varchar(64) NOT NULL default '',
  `table_name` varchar(64) NOT NULL default '',
  `column_name` varchar(64) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pma_column_comments`
--

LOCK TABLES `pma_column_comments` WRITE;
/*!40000 ALTER TABLE `pma_column_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_column_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_pdf_pages`
--

DROP TABLE IF EXISTS `pma_pdf_pages`;
CREATE TABLE `pma_pdf_pages` (
  `db_name` varchar(64) NOT NULL default '',
  `page_nr` int(10) unsigned NOT NULL auto_increment,
  `page_descr` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pma_pdf_pages`
--

LOCK TABLES `pma_pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma_pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_relation`
--

DROP TABLE IF EXISTS `pma_relation`;
CREATE TABLE `pma_relation` (
  `master_db` varchar(64) NOT NULL default '',
  `master_table` varchar(64) NOT NULL default '',
  `master_field` varchar(64) NOT NULL default '',
  `foreign_db` varchar(64) NOT NULL default '',
  `foreign_table` varchar(64) NOT NULL default '',
  `foreign_field` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pma_relation`
--

LOCK TABLES `pma_relation` WRITE;
/*!40000 ALTER TABLE `pma_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_coords`
--

DROP TABLE IF EXISTS `pma_table_coords`;
CREATE TABLE `pma_table_coords` (
  `db_name` varchar(64) NOT NULL default '',
  `table_name` varchar(64) NOT NULL default '',
  `pdf_page_number` int(11) NOT NULL default '0',
  `x` float unsigned NOT NULL default '0',
  `y` float unsigned NOT NULL default '0',
  PRIMARY KEY  (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pma_table_coords`
--

LOCK TABLES `pma_table_coords` WRITE;
/*!40000 ALTER TABLE `pma_table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_info`
--

DROP TABLE IF EXISTS `pma_table_info`;
CREATE TABLE `pma_table_info` (
  `db_name` varchar(64) NOT NULL default '',
  `table_name` varchar(64) NOT NULL default '',
  `display_field` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pma_table_info`
--

LOCK TABLES `pma_table_info` WRITE;
/*!40000 ALTER TABLE `pma_table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_request`
--

DROP TABLE IF EXISTS `prof_request`;
CREATE TABLE `prof_request` (
  `rid` int(11) NOT NULL auto_increment,
  `profname` varchar(255) NOT NULL default '',
  `profsurname` varchar(255) NOT NULL default '',
  `profuname` varchar(255) NOT NULL default '',
  `profpassword` varchar(255) NOT NULL default '',
  `profemail` varchar(255) NOT NULL default '',
  `proftmima` varchar(255) default NULL,
  `profcomm` varchar(20) default NULL,
  `status` int(11) default NULL,
  `date_open` datetime default NULL,
  `date_closed` datetime default NULL,
  `comment` text,
  `lang` enum('el','en','es') NOT NULL default 'el',
  `statut` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prof_request`
--

LOCK TABLES `prof_request` WRITE;
/*!40000 ALTER TABLE `prof_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `prof_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_resources`
--

DROP TABLE IF EXISTS `unit_resources`;
CREATE TABLE `unit_resources` (
  `id` int(11) NOT NULL auto_increment,
  `unit_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `comments` mediumtext NOT NULL,
  `res_id` int(11) NOT NULL default '0',
  `type` varchar(255) NOT NULL default '',
  `visibility` char(1) NOT NULL default 'v',
  `order` int(11) NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit_resources`
--

LOCK TABLES `unit_resources` WRITE;
/*!40000 ALTER TABLE `unit_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL auto_increment,
  `nom` varchar(60) default NULL,
  `prenom` varchar(60) default NULL,
  `username` varchar(20) default 'empty',
  `password` varchar(50) default 'empty',
  `email` varchar(100) default NULL,
  `statut` tinyint(4) default NULL,
  `phone` varchar(20) default NULL,
  `department` int(10) default NULL,
  `am` varchar(20) default NULL,
  `registered_at` int(10) NOT NULL default '0',
  `expires_at` int(10) NOT NULL default '0',
  `perso` enum('yes','no') NOT NULL default 'yes',
  `lang` enum('el','en','es') NOT NULL default 'el',
  `announce_flag` date NOT NULL default '0000-00-00',
  `doc_flag` date NOT NULL default '0000-00-00',
  `forum_flag` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Πλατφόρμας','Διαχειριστής','drunkadmin','817699691db439c055c8647a1609c67c','webmaster@localhost',1,NULL,NULL,NULL,1586376703,1726376703,'yes','el','0000-00-00','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
CREATE TABLE `columns_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Table_name` char(64) collate utf8_bin NOT NULL default '',
  `Column_name` char(64) collate utf8_bin NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') character set utf8 NOT NULL default '',
  PRIMARY KEY  (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
CREATE TABLE `db` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  PRIMARY KEY  (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('%','test','','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y'),('%','test\\_%','','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
CREATE TABLE `func` (
  `name` char(64) collate utf8_bin NOT NULL default '',
  `ret` tinyint(1) NOT NULL default '0',
  `dl` char(128) collate utf8_bin NOT NULL default '',
  `type` enum('function','aggregate') character set utf8 NOT NULL default 'function',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(64) NOT NULL default '',
  `parent_category_id` smallint(5) unsigned default NULL,
  `url` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL default '0',
  `help_keyword_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(64) NOT NULL default '',
  `help_category_id` smallint(5) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
CREATE TABLE `host` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  PRIMARY KEY  (`Host`,`Db`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
CREATE TABLE `tables_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Table_name` char(64) collate utf8_bin NOT NULL default '',
  `Grantor` char(77) collate utf8_bin NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter') character set utf8 NOT NULL default '',
  `Column_priv` set('Select','Insert','Update','References') character set utf8 NOT NULL default '',
  PRIMARY KEY  (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL auto_increment,
  `Use_leap_seconds` enum('Y','N') NOT NULL default 'N',
  PRIMARY KEY  (`Time_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zones';

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL default '0',
  `Correction` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL default '',
  `Time_zone_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL default '0',
  `Transition_time` bigint(20) NOT NULL default '0',
  `Transition_type_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL default '0',
  `Transition_type_id` int(10) unsigned NOT NULL default '0',
  `Offset` int(11) NOT NULL default '0',
  `Is_DST` tinyint(3) unsigned NOT NULL default '0',
  `Abbreviation` char(8) NOT NULL default '',
  PRIMARY KEY  (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Host` varchar(60) collate utf8_bin NOT NULL default '',
  `User` varchar(16) collate utf8_bin NOT NULL default '',
  `Password` varchar(41) collate utf8_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Reload_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Shutdown_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Process_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `File_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_db_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Super_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Repl_slave_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Repl_client_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') character set utf8 NOT NULL default '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL default '0',
  `max_updates` int(11) unsigned NOT NULL default '0',
  `max_connections` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('e4b3231b74d6','root','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0),('e4b3231b74d6','','','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0),('%','root','*96CB6F0592BE66D10751F0111B5DB4ABB382CF00','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

