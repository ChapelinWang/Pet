/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.13-MariaDB : Database - pet
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pet` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pet`;

/*Table structure for table `particle` */

DROP TABLE IF EXISTS `particle`;

CREATE TABLE `particle` (
  `articleid` varchar(64) NOT NULL,
  `userid` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `article` text,
  `commentid` varchar(64) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`articleid`),
  KEY `particle_ibfk_2` (`commentid`),
  KEY `particle_ibfk_1` (`userid`),
  CONSTRAINT `particle_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `puser` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `particle` */

insert  into `particle`(`articleid`,`userid`,`title`,`time`,`article`,`commentid`,`image`) values ('402862815842c5a6015842d0ecf60001','402862815784246a015784246bfb0000','犬的饲养护理：给狗狗做日常体检','2016-11-08 00:00:00','<p>为了让您更了解<a target=\"_blank\" href=\"http://pet.pclady.com.cn/dog/\">爱犬</a>的健康状态,掌握到您爱<a target=\"_blank\" href=\"http://pet.pclady.com.cn/dog/\">犬</a>身心状况是否正常。平常，您可以为<a target=\"_blank\" href=\"http://pet.pclady.com.cn/dog/\">狗狗</a>进行简单的体检，确保<a target=\"_blank\" href=\"http://pet.pclady.com.cn/dog/\">狗</a>狗身体无恙。本期我们将为您介绍，日常的检查方法和注意事项。</p><p>　　嘴巴</p><p>　　检查嘴巴是否有牙龈发炎及蛀牙的现象。通常,兽医会以一根手指按压牙龈,以颜色做为血压的测试结果。若牙龈苍白则可能是贫血,若为淡黄色则表示肝脏有问题。正如同人类一般;诚所谓牙痛不是病,病起来要人命。</p><p>　　犬只也相同,一只牙齿出毛病的犬只是无法正常进食,连带影响的层面是相当大的,身为爱犬的主人的您,是否也曾注意过您宝贝爱犬牙齿的毛病呢?所以一定要经常关注狗狗的口腔，一旦发现问题，及时就医。</p><p>　　眼睛</p><p>　　虽然有许多遗传及后天生成的眼疾,但眼睛的病变通常都表示身体其他方面有更复杂的疾病。所以眼睛的检查往往提供兽医线索,也能帮助兽医集中所有注意力,于眼睛所显示出来的微兆,做出更正确的诊断。</p><p>　　具体主人可以观察，狗狗是否出现眼睛发红，异常流泪，倒睫等现象。</p>',NULL,'images/haishiqi.jpg'),('4028628158ab8cc30158ab91eb1d0000','402862815784246a015784246bfb0000','冬天宠物的护理','2016-11-28 00:00:00','<p>冬季狗狗定期的美容护理是必不可少的。由于气候寒冷、干燥等原因，主人们在给自家狗狗做美容的时候，以下几点错误的护理方法就要改掉了。</p><p>　　1、频繁的给狗狗洗澡</p><p>　　即使是对于人类来说，冬天也不用天天洗澡，而狗狗由于皮脂分泌的速度比人类慢很多，因此，它们每次洗澡的间隔时间应该拉的更长。如果主人们频繁的给狗狗洗澡的话，那么不仅会使狗狗皮肤表层用来保护它们皮肤的皮脂被洗掉，也会大大增加狗狗患皮肤病的可能。</p><p>　　2、洗澡之后不吹干</p><p>　　对于很多主人来说，给它们洗澡之后就让狗狗自然风干了。但是，这种做法是完全错误的。对于狗狗来说，洗完澡之后的吹干工作时十分重要的，它不仅能够保证狗狗毛发的顺畅、不打结，而且还能对狗狗皮肤病的发生有一定的防御效果，同时也能避免感冒的可能性。</p><p>　　3、给狗狗喷人类的香水</p><p>　　在冬天的时候，因为洗澡次数较少，所以这种气味就会变得更加浓郁。这时候，很多主人因为受不了这种味道而给狗狗喷自己使用的香水，想盖过这种气味，殊不知，人类所使用的香水中所含有的酒精成分已经超出它们皮肤所能承受的范围，会对它们皮肤产生严重的刺激，长期以往，还会让狗狗患上皮肤病。</p><p>　　4、将狗狗披毛剪太短</p><p>　　冬天不像夏天，为了保暖，狗狗们就需要披毛的帮助，这时候如果主人们将它们的披毛剪的太短的话，即使是穿上再厚的衣服，也还是不能给它们保暖。</p><p>　　以上四点错误的美容方式主人一定要注意，希望不要把美容变成是对狗狗的伤害。对每个季节宠物狗的护理都要作出相应的改变。这样才让宠物狗更好的成长。</p>',NULL,'images/samoye.jpg');

/*Table structure for table `pcategory` */

DROP TABLE IF EXISTS `pcategory`;

CREATE TABLE `pcategory` (
  `categoryid` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `vaccin` varchar(64) DEFAULT NULL,
  `age` varchar(64) DEFAULT NULL,
  `detail` text,
  `price` double DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pcategory` */

insert  into `pcategory`(`categoryid`,`type`,`sex`,`vaccin`,`age`,`detail`,`price`,`image`) values ('2c9005b8581eef5401581ef5b3eb0001','蝴蝶猫','公','2针','3个月','强！',500,'images/carousel1_img1.jpg'),('4028628157d27c420157d27cda4b0000','维多利亚鹦鹉','母','3针','2个月','波斯猫你是我的眼！',888,'images/carousel1_img2.jpg'),('4028628157efe77f0157efe880190001','中华田园犬','公','3','5个月','',2999,'images/carousel1_img3.jpg'),('40286281582f32d401582f69bdfa0000','阿拉斯加','公','1针','2个月','',1899,'images/alasijia.jpg'),('40286281582f32d401582f6b85590001','波斯猫','母','1针','2个月','',200,'images/bosimao.jpg'),('40286281582f32d401582f6c4ff30002','短腿猫','公','1针','1个月','',300,'images/duantuimao.jpg'),('40286281582f32d401582f6ccde20003','哈士奇','公','2针','4个月','',1399,'images/haishiqi.jpg'),('40286281582f32d401582f6d68660004','蝴蝶犬','公','3针','9个月','',199,'images/hudiequan.jpg'),('40286281586dbadf01586dc032500000','萨摩耶','公','3针','8个月','',888,'images/samoye.jpg');

/*Table structure for table `pcomment` */

DROP TABLE IF EXISTS `pcomment`;

CREATE TABLE `pcomment` (
  `commentid` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `commentcontent` text NOT NULL,
  `ptime` datetime DEFAULT NULL,
  `categoryid` varchar(64) DEFAULT NULL,
  `articleid` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`commentid`),
  KEY `userid` (`userid`),
  KEY `categoryid` (`categoryid`),
  CONSTRAINT `pcomment_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `puser` (`userid`) ON DELETE CASCADE,
  CONSTRAINT `pcomment_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `pcategory` (`categoryid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pcomment` */

insert  into `pcomment`(`commentid`,`userid`,`commentcontent`,`ptime`,`categoryid`,`articleid`) values ('123','2c9005b8581f2db101581f2de5e80000','123123','2016-12-08 05:58:49','4028628157d27c420157d27cda4b0000',NULL),('402862815831b7fa015831b9461c0000','2c9005b8581f2db101581f2de5e80000','<p>啊啊啊啊啊啊啊啊啊</p>','2016-11-05 07:42:55','4028628157efe77f0157efe880190001',NULL),('402862815831bf3c015831bf91730000','2c9005b8581f2db101581f2de5e80000','<p>哈哈哈哈哈</p>','2016-11-05 07:49:48','4028628157efe77f0157efe880190001',NULL),('402862815831c032015831c081170000','2c9005b8581f2db101581f2de5e80000','<p>红红火火哈哈</p>','2016-11-05 07:50:49','4028628157efe77f0157efe880190001',NULL),('402862815831c2da015831c342f20000','2c9005b8581f2db101581f2de5e80000','<p>成功吧</p>','2016-11-05 07:53:50','4028628157efe77f0157efe880190001',NULL),('402862815831c457015831c4b6500000','2c9005b8581f2db101581f2de5e80000','<p>尴尬</p>','2016-11-05 07:55:25','4028628157efe77f0157efe880190001',NULL),('402862815831c535015831c57b550000','2c9005b8581f2db101581f2de5e80000','<p>啊啊啊啊</p>','2016-11-05 07:56:15','40286281582f32d401582f6b85590001',NULL),('402862815831ca6d015831ccc9f30001','2c9005b8581f2db101581f2de5e80000','<p>哈哈哈222222</p>','2016-11-05 08:04:14','40286281582f32d401582f6b85590001',NULL),('402862815831ca6d015831ccdfea0002','2c9005b8581f2db101581f2de5e80000','<p>哈哈哈222222</p>','2016-11-05 08:04:20','40286281582f32d401582f6b85590001',NULL),('402862815831ca6d015831cdb2650003','2c9005b8581f2db101581f2de5e80000','<p>我操，怪异</p>','2016-11-05 08:05:13','40286281582f32d401582f6b85590001',NULL),('402862815831ca6d015831cfb9310004','2c9005b8581f2db101581f2de5e80000','<p>我操，怪异</p>','2016-11-05 08:07:26','40286281582f32d401582f6b85590001',NULL),('402862815831ca6d015831d0986a0005','2c9005b8581f2db101581f2de5e80000','<p>我操，怪异</p>','2016-11-05 08:08:23','40286281582f32d401582f6b85590001',NULL),('402862815831ca6d015831d0db2d0006','2c9005b8581f2db101581f2de5e80000','<p>我操，怪异</p>','2016-11-05 08:08:41','40286281582f32d401582f6b85590001',NULL),('402862815831ca6d015831d100f20007','2c9005b8581f2db101581f2de5e80000','<p>我操，怪异</p>','2016-11-05 08:08:50','40286281582f32d401582f6b85590001',NULL),('402862815831ca6d015831d270090008','2c9005b8581f2db101581f2de5e80000','<p>我操，怪异</p>','2016-11-05 08:10:24','40286281582f32d401582f6b85590001',NULL),('402862815838dc01015838dc36e80000','402862815830ae66015830c377e70000','<p>这只狗不错</p>','2016-11-06 16:58:25','40286281582f32d401582f69bdfa0000',NULL),('402862815842ab6b015842ab9ad70000','402862815784246a015784246bfb0000','<p>恩写的不错</p>','2016-11-08 14:41:32',NULL,'123'),('402862815842bc54015842c1ef1d0000','402862815784246a015784246bfb0000','<p>写的不好</p>','2016-11-08 15:05:55',NULL,'123'),('402862815842bc54015842c56c7c0001','402862815784246a015784246bfb0000','<p>嗯嗯</p>','2016-11-08 15:09:44',NULL,'123'),('402862815842c5a6015842c5e3f60000','402862815784246a015784246bfb0000','<p>可以的小伙子</p>','2016-11-08 15:10:15',NULL,'123'),('40286281586cb4d101586cb50afd0000','402862815830ae66015830c377e70000','<p>..</p>','2016-11-16 18:35:53','2c9005b8581eef5401581ef5b3eb0001',NULL),('40286281586cb4d101586cb5fe3d0001','40286281582ec87f01582ec9d0800000','<p>好</p>','2016-11-16 18:36:56','2c9005b8581eef5401581ef5b3eb0001',NULL),('40286281586cb4d101586cb72a600004','402862815830ae66015830c377e70000','<p>写的不错</p><p>&nbsp;</p>','2016-11-16 18:38:13',NULL,'402862815842c5a6015842d0ecf60001'),('40286281586dbadf01586dc8bf960001','40286281582ec87f01582ec9d0800000','<p>啊啊</p>','2016-11-16 23:37:02',NULL,'402862815842c5a6015842d0ecf60001'),('4028628158b365750158b3830f330002','4028628158b365750158b382d4320001','<p>nice</p>','2016-11-30 12:34:20','2c9005b8581eef5401581ef5b3eb0001',NULL),('4028628158b365750158b38e1dd90006','4028628158b365750158b38dae540005','<p>啊啊</p>','2016-11-30 12:46:25','2c9005b8581eef5401581ef5b3eb0001',NULL);

/*Table structure for table `porder` */

DROP TABLE IF EXISTS `porder`;

CREATE TABLE `porder` (
  `orderid` varchar(64) NOT NULL,
  `ordertime` datetime DEFAULT NULL,
  `userid` varchar(64) DEFAULT NULL,
  `orderphone` varchar(64) DEFAULT NULL,
  `categoryid` varchar(64) DEFAULT NULL,
  `orderemail` varchar(64) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`orderid`),
  KEY `porder_ibfk_1` (`userid`),
  KEY `porder_ibfk_2` (`categoryid`),
  CONSTRAINT `porder_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `puser` (`userid`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `porder_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `pcategory` (`categoryid`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `porder` */

insert  into `porder`(`orderid`,`ordertime`,`userid`,`orderphone`,`categoryid`,`orderemail`,`status`,`remark`) values ('4028628158b365750158b386908a0004','2016-11-30 12:38:10','4028628158b365750158b382d4320001','15617005127','4028628157efe77f0157efe880190001','test@test.com',0,'我要买'),('4028628158b365750158b38e7e100007','2016-11-30 12:46:49','4028628158b365750158b38dae540005','15617005127','2c9005b8581eef5401581ef5b3eb0001','test@test.com',0,'啊啊啊');

/*Table structure for table `puser` */

DROP TABLE IF EXISTS `puser`;

CREATE TABLE `puser` (
  `userid` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `userpassword` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `power` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `puser` */

insert  into `puser`(`userid`,`username`,`userpassword`,`email`,`power`) values ('2c9005b8581f2db101581f2de5e80000','wangchaoping','softwang..123','chapelin_wang@163.com',NULL),('402862815784246a015784246bfb0000','chapelin','123123','chapelin@163.com','root'),('40286281582ec87f01582ec9d0800000','wang','123','chapelin_wang@163.com',NULL),('402862815830ae66015830c377e70000','匿名用户','','',NULL),('40286281586daeef01586db401eb0000','wangchaoping2','123123','123@123.com',NULL),('4028628158b365750158b382d4320001','test','123','test@test.com',NULL),('4028628158b365750158b38dae540005','test2','123','test@test.com',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
