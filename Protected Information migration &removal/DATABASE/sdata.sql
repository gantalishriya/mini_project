ownerownerowner/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - sdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`sdata` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sdata`;

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`username`,`password`) values ('Cloud_A','Cloud_A'),('Cloud_B','Cloud_B');

/*Table structure for table `del_req` */

DROP TABLE IF EXISTS `del_req`;

CREATE TABLE `del_req` (
  `id` int(11) NOT NULL auto_increment,
  `fid` text,
  `oid` text,
  `block` text,
  `cloud` text,
  `date` text,
  `result` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `del_req` */

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `fid` text,
  `owner` text,
  `owner_name` text,
  `fname` text,
  `data` longtext,
  `skey` text,
  `cipher` text,
  `block1` text,
  `block2` text,
  `date` text,
  `status` text,
  `status1` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `file` */

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `email` text,
  `mobile` text,
  `address` text,
  `username` text,
  `password` text,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

/*Table structure for table `timestamp` */

DROP TABLE IF EXISTS `timestamp`;

CREATE TABLE `timestamp` (
  `filename` text,
  `fid` text,
  `block1` text,
  `block2` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `timestamp` */

/*Table structure for table `trans_req` */

DROP TABLE IF EXISTS `trans_req`;

CREATE TABLE `trans_req` (
  `id` int(11) NOT NULL auto_increment,
  `fid` text,
  `oid` text,
  `block` text,
  `cloud` text,
  `status` text,
  `date` text,
  `result` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `trans_req` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
