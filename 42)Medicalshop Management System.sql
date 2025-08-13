/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - medicalshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`medicalshop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `medicalshop`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`adminName`,`password`) values ('admin','admin'),('admin','admin');

/*Table structure for table `medcinrecord` */

DROP TABLE IF EXISTS `medcinrecord`;

CREATE TABLE `medcinrecord` (
  `gen` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `netwt` varchar(20) DEFAULT NULL,
  `reorder` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medcinrecord` */

insert  into `medcinrecord`(`gen`,`name`,`company`,`netwt`,`reorder`) values ('Medicine','bb','cipla','20g','10');

/*Table structure for table `medicalrecord` */

DROP TABLE IF EXISTS `medicalrecord`;

CREATE TABLE `medicalrecord` (
  `shopid` varchar(20) DEFAULT NULL,
  `shopename` varchar(20) DEFAULT NULL,
  `ownername` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medicalrecord` */

insert  into `medicalrecord`(`shopid`,`shopename`,`ownername`,`address`,`contact`) values ('141','siri','ramu','ameerpet','4758961230'),('500','medplus','shivakrishna','hyderabad','9632587410');

/*Table structure for table `purchase` */

DROP TABLE IF EXISTS `purchase`;

CREATE TABLE `purchase` (
  `Medicine Type` varchar(20) DEFAULT NULL,
  `Medicine Name` varchar(20) DEFAULT NULL,
  `Company` varchar(20) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase` */

insert  into `purchase`(`Medicine Type`,`Medicine Name`,`Company`,`Quantity`,`Amount`) values ('abc','vbfdfh','nfkdmgnhfdkmn','10','100'),('sdfsd','asdfg','cfhgdfg','56','200'),('fdgdf','gfdg','gvfbg','12','200'),('drugs','dsd','PP','20','200'),('injection','aa','aa','5','20');

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `name` varchar(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `priceperitem` varchar(20) DEFAULT NULL,
  `totalcost` varchar(20) DEFAULT NULL,
  `mfgdate` date DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

insert  into `stock`(`name`,`company`,`quantity`,`priceperitem`,`totalcost`,`mfgdate`,`expirydate`,`date`,`type`) values ('aa','aa','10','9','11','2017-05-26','2017-05-26','2017-05-18','jj');

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `id` varchar(20) DEFAULT NULL,
  `suplliername` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `supplier` */

insert  into `supplier`(`id`,`suplliername`,`username`,`password`,`dob`,`email`,`contact`) values ('100','shiva','shiva','shivam','1991-05-11','shiva@gmail.com','9632587410'),('101','shiva','shiva','shiva','1991-05-11','shiva@gmail.com','9632587410');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`Email`,`DOB`,`address`) values ('shiva','aa','shiva@gmail.com','1991-03-06','Hyd'),('nikil','nikil','nikil@gmail.com','2001-11-12','Hyderabad'),('dsfvdc','dsfvc','vsdcvdf@gmail.com','2017-03-02','dvcsxvcc'),('shiva','shiva','shiva.1000projects@gmail.com','1980-02-09','hyderabad'),(NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
