-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: ivf_db
-- ------------------------------------------------------
-- Server version	5.7.33

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

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id_album` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `title` text,
  `intro` mediumtext,
  `content` longtext,
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `id_user` bigint(20) DEFAULT '0',
  `image_list` text,
  `hot` tinyint(4) DEFAULT '0',
  `groupcat` varchar(1000) DEFAULT '0',
  `tags` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_album`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,18,'Phòng bệnh nhân lưu trú MSC Clinic','Phòng bệnh nhân lưu trú MSC Clinic','','','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-6.jpg',1655461200,1,1,8,'[]',0,':',NULL,'khong-gian-msc-clinic-6.html',1656732741),(2,18,'Phòng tiểu phẫu MSC Clinic','Phòng tiểu phẫu MSC Clinic','','','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-3.jpg',1655461200,2,1,8,'[]',0,':',NULL,'khong-gian-msc-clinic-3.html',1656732832),(3,18,'Phòng VIP tại MSC Clinic','Phòng VIP tại MSC Clinic','','','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-2.jpg',1655461200,3,1,8,'[]',0,':',NULL,'khong-gian-msc-clinic-2.html',1656733006),(4,18,'Sảnh đón tiếp MSC Clinic','Sảnh đón tiếp MSC Clinic','','','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-1.jpg',1655461200,4,1,8,'[]',0,':',NULL,'khong-gian-msc-clinic-1.html',1656733049),(5,18,'Khu vực đón tiếp khách hàng tại MSC Clinic','Khu vực đón tiếp khách hàng tại MSC Clinic','','','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-5.jpg',1656733020,5,1,8,'[]',0,':',NULL,'khong-gian-msc-clinic-5.html',1656733134),(6,18,'Phòng họp MSC Clinic','Phòng họp MSC Clinic','','','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-4.jpg',1656733080,6,1,8,'[]',0,':',NULL,'khong-gian-msc-clinic-4.html',1656733180),(7,18,'Bàn tiêm khớp MSC Clinic','Bàn tiêm khớp MSC Clinic','','','','','/uploaded/trang-thiet-bi/ban-tiem-khop.jpg',1657614900,7,1,8,'[]',0,':',NULL,'ban-tiem-khop-msc-clinic.html',1657615116),(8,18,'Máy điện phân xung kích MSC Clinic','Máy điện phân xung kích MSC Clinic','','','','','/uploaded/trang-thiet-bi/may-dien-phan-xung-kich.jpg',1657615020,8,1,8,'[]',0,':',NULL,'may-dien-phan-xung-kich-msc-clinic.html',1657615109),(9,18,'Máy Hifu da liễu MSC Clinic','Máy Hifu da liễu MSC Clinic','','','','','/uploaded/trang-thiet-bi/may-hifu.jpg',1657615080,9,1,8,'[]',0,':',NULL,'may-hifu-msc-clinic.html',1657615157),(10,18,'Máy siêu âm X-quang MSC Clinic','Máy siêu âm X-quang MSC Clinic','','','','','/uploaded/trang-thiet-bi/may-sieu-am-x-quang.jpg',1657615140,10,1,8,'[]',0,':',NULL,'may-sieu-am-x-quang.html',1657615195),(11,18,'Máy Thermage MSC Clinic','Máy Thermage MSC Clinic','','','','','/uploaded/trang-thiet-bi/may-thermage.jpg',1657615140,11,1,8,'[]',0,':',NULL,'may-thermage-msc-clinic.html',1657615237),(12,18,'Máy xét nghiệm MSC Clinic','Máy xét nghiệm MSC Clinic','','','','','/uploaded/trang-thiet-bi/may-xet-nghiem.jpg',1657615200,12,1,8,'[]',0,':',NULL,'may-xet-nghiem-msc-clinic.html',1657615272);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id_article` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `id_service` varchar(128) DEFAULT '0',
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `intro` mediumtext,
  `content` longtext,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `id_user` bigint(20) DEFAULT '0',
  `file` text,
  `videourl` varchar(512) DEFAULT NULL,
  `hot` tinyint(4) DEFAULT '0',
  `groupcat` varchar(1000) DEFAULT '0',
  `tags` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_name` varchar(1024) DEFAULT NULL,
  `author_email` varchar(512) DEFAULT NULL,
  `author_info` text,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_article`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (10,26,'Câu chuyện khách hàng Ông Lê Khắc Thưởng ','câu chuyện 1','0','','','/uploaded/y-kien-khach-hang/viem-quanh-khop-vai-mr-thuong.jpg','<div style=\"text-align: justify;\">&quot;Ch&uacute; bị đau vai hơn 2 năm, đ&atilde; đi kh&aacute;m v&agrave; điều trị ở nhiều nơi nhưng kh&ocirc;ng đỡ. Ch&uacute; đau nhiều, rất kh&oacute; chịu v&agrave; thường xuy&ecirc;n mất ngủ do đau. Khi đến MSC Clinic điều trị hơn 20 ng&agrave;y với 4 đợt&nbsp;th&igrave; hiện tại ch&uacute; đ&atilde; khỏi hẳn, ch&uacute; cảm thấy rất thoải m&aacute;i, nhẹ nh&agrave;ng v&agrave; vui. Giờ ra viện về nh&agrave; ch&uacute; sẽ rất nhớ y b&aacute;c sĩ ở đ&acirc;y.&nbsp;<br />\r\nCh&uacute; mong sẽ gi&uacute;p được nhiều người ở qu&ecirc; ch&uacute; biết đến phương ph&aacute;p điều trị n&agrave;y&quot;</div>\r\n','',1656069600,4,1,8,NULL,'https://www.youtube.com/watch?v=aObvIRg1tiE&amp;t=2s',0,':19:',NULL,'benh-nhan-viem-quanh-khop-vai.html',NULL,'Ông Lê Khắc Thưởng ','','Viêm quanh khớp vai',NULL),(11,26,'Câu chuyện khách hàng Anh Nguyễn Tiến Chung','Câu chuyện khách hàng Anh Nguyễn Tiến Chung','0','','','/uploaded/y-kien-khach-hang/chan-thuong-the-thao-mr-chung.jpg','<div style=\"text-align: justify;\">&nbsp;&quot;M&igrave;nh rất đam m&ecirc; b&oacute;ng đa, sau một lần bị&nbsp; ng&atilde; th&igrave; ch&acirc;n m&igrave;nh rất đau, lỏng khớp. M&igrave;nh được bệnh vi&ecirc;n chẩn đo&aacute;n l&agrave; đứt gần ho&agrave;n to&agrave;n d&acirc;y chằng ch&eacute;o trước - dập sun ch&ecirc;m v&agrave; c&oacute; chỉ định mổ. M&igrave;nh c&oacute; t&igrave;m hiểu v&agrave; chưa mu&ocirc;n mổ n&ecirc;n m&igrave;nh t&igrave;m đến MSC Clinic. Đội ngũ y b&aacute;c sĩ ở đ&acirc;y rất th&acirc;n thi&ecirc;n, gi&agrave;u kinh nghiệm v&agrave; chuy&ecirc;n m&ocirc;n cao, đ&atilde; chẩn đo&aacute;n, giải th&iacute;ch rất r&otilde; r&agrave;ng.&nbsp;<br />\r\nM&igrave;nh điều trị 3 đợt&nbsp;v&agrave; Phục hồi chức năng, hiện tai m&igrave;nh kh&ocirc;ng c&ograve;n đau nữa, sự mỏi, lỏng khớp đ&atilde; hết, đi lại vững hơn v&agrave; tự tin sẽ quay trở lại được s&acirc;n b&oacute;ng.&quot;&nbsp;</div>\r\n','',1656403260,3,1,8,NULL,'https://www.youtube.com/watch?v=o33fGORFL-Y&amp;feature=emb_title',0,':19:',NULL,'benh-nhan-chan-thuong-the-thao.html',NULL,'Anh Nguyễn Tiến Chung','','Chấn thương thể thao (chưa phẫu thuật) ',NULL),(12,26,'Câu chuyện khách Bà Nguyễn Thị Tiêm','Câu chuyện khách Bà Nguyễn Thị Tiêm','0','','','/uploaded/y-kien-khach-hang/thoai-hoa-khop-do-4-bac-tiem.jpg','<div style=\"text-align: justify;\">&ldquo;B&aacute;c bị đau khớp gối Tr&aacute;i nhiều năm rồi, đi lại rất kh&oacute; khăn, phải chống gậy, cảm gi&aacute;c ch&acirc;n tr&aacute;i ngắn hơn ch&acirc;n phải l&agrave;m b&aacute;c đi tập tễnh. Nhiều l&uacute;c b&aacute;c thấy buồn khi con c&aacute;i phải lo lắng, mất thời gian chăm s&oacute;c do b&aacute;c kh&ocirc;ng tự phục vụ được bản th&acirc;n.<br />\r\nCon b&aacute;c đưa b&aacute;c đến ph&ograve;ng kh&aacute;m điều trị l&agrave; 3 đợt&nbsp;v&agrave; 3 tuần phục hồi chức năng đến hiện tại b&aacute;c đ&atilde; hết đau, đi lại kh&ocirc;ng phải chống gậy, kh&ocirc;ng c&ograve;n tập tễnh. Điều b&aacute;c vui nhất l&agrave; giờ b&aacute;c c&oacute; thể tự nấu cơm, đi lại xung quanh nh&agrave; một c&aacute;ch thoải m&aacute;i v&agrave; vui đ&ugrave;a c&ugrave;ng c&aacute;c ch&aacute;u&rdquo;</div>\r\n','',1657160280,2,1,8,NULL,'',0,':19:',NULL,'benh-nhan-thoai-hoa-khop-do-4.html',NULL,'Bà Nguyễn Thị Tiêm','','Thoái hoá khớp độ 4',NULL),(13,26,'Câu chuyện khách hàng Anh Bùi Mạnh Quân','Câu chuyện khách hàng Anh Bùi Mạnh Quân','0','','','/uploaded/y-kien-khach-hang/chan-thuong-the-thao-mr-quan-1.jpg','<div style=\"text-align: justify;\">&ldquo;C&aacute;ch đ&acirc;y 9 năm do chấn thương trong đ&aacute; b&oacute;ng n&ecirc;n m&igrave;nh bị đứt d&acirc;y chằng ch&eacute;o trước v&agrave; được phẫu thuật. Sau phẫu thuật 1 năm m&igrave;nh mới đi lại được b&igrave;nh thường nhưng vẫn thấy đau, lỏng khớp v&agrave; c&oacute; tiếng lục cục khi co duỗi khớp gối. D&ugrave; mới 30 tuổi nhưng ch&acirc;n m&igrave;nh như &ocirc;ng l&atilde;o 60 tuổi vậy.<br />\r\nM&igrave;nh kh&ocirc;ng d&aacute;m đi kh&aacute;m lại v&igrave; m&igrave;nh sợ sẽ phải phẫu thuật lần nữa v&agrave; mất 1 năm tập vận động mới đi b&igrave;nh thường được. Thật may mắn khi nghe một người chị chia sẻ về phương ph&aacute;p điều trị của MSC, m&igrave;nh đ&atilde; đến kh&aacute;m v&agrave; sau 3 lần&nbsp;điều trị, 3 tuần phục hồi chức năng, mỗi ng&agrave;y 1 tiếng đến điều trị chứ kh&ocirc;ng phải nằm viện n&ecirc;n&nbsp;kh&aacute; linh hoạt với thời gian bận rộn của m&igrave;nh.&nbsp;<br />\r\nKết quả thực sự bất ngờ khi d&acirc;y chằng 9 năm rồi chưa biệt ho&aacute; hết th&igrave; nay đ&atilde; c&oacute; mạch m&aacute;u mới nu&ocirc;i dưỡng, hết đau v&agrave; hết lục cục ở khớp gối, ch&acirc;n m&igrave;nh được trở lại đ&uacute;ng độ tuổi 30&rdquo;</div>\r\n','',1657160340,1,1,8,NULL,'',0,':19:',NULL,'benh-nhanh-da-phau-thuat-chan-thuong-the-thao.html',NULL,'Anh Bùi Mạnh Quân','','Đã phẫu thuật chấn thương thể thao',NULL);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baohanh`
--

DROP TABLE IF EXISTS `baohanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baohanh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ngay_nhap` varchar(32) DEFAULT NULL,
  `ma_hang` varchar(128) DEFAULT NULL,
  `imei` varchar(256) DEFAULT NULL,
  `ngay_ban` varchar(32) DEFAULT NULL,
  `ngay_bh` varchar(32) DEFAULT NULL,
  `thoigianbaohanh` int(11) DEFAULT '12',
  `so_phieu_ban` varchar(64) DEFAULT NULL,
  `makh` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `tenkh` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `dia_chi` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `dien_thoai` varchar(64) DEFAULT NULL,
  `mobile` varchar(64) DEFAULT NULL,
  `thong_tin_khac` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` bigint(20) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baohanh`
--

LOCK TABLES `baohanh` WRITE;
/*!40000 ALTER TABLE `baohanh` DISABLE KEYS */;
/*!40000 ALTER TABLE `baohanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id_category` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `subname` varchar(512) DEFAULT '',
  `title` varchar(512) DEFAULT NULL,
  `parentid` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `image` varchar(255) DEFAULT NULL,
  `content` text,
  `keywords` text,
  `description` text,
  `url` varchar(1000) DEFAULT NULL,
  `target` varchar(256) DEFAULT NULL,
  `vitri` varchar(600) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `inpage` varchar(1000) DEFAULT '0',
  `template_name` varchar(50) DEFAULT NULL,
  `home_layout` text,
  `tags` text,
  `header_tag` text,
  `rss` int(11) DEFAULT '0',
  `lang` varchar(255) DEFAULT NULL,
  `stypeshow` int(4) DEFAULT NULL,
  `id_attr` bigint(20) DEFAULT NULL,
  `shortinhome` tinyint(4) DEFAULT NULL,
  `footercol` int(11) DEFAULT NULL,
  `homescroll` int(11) DEFAULT '0',
  `localnews` int(11) DEFAULT '0',
  `col` int(11) DEFAULT NULL,
  `vtcolsub` int(11) DEFAULT '0',
  `iconmenu` varchar(255) DEFAULT NULL,
  `menucolor` varchar(255) DEFAULT NULL,
  `home_zone` int(11) DEFAULT '1',
  `imageadv` varchar(600) DEFAULT NULL,
  `styleshow` int(11) DEFAULT '0',
  `left_right_layout` varchar(255) DEFAULT NULL,
  `mega_menu` int(11) DEFAULT '0',
  `intro` text,
  `content_text` text,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_category`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Trang chủ','Trang chủ','Bệnh viện hữu nghị Lạc Việt TT hỗ trợ sinh sản Âu Việt',0,0,1,'','','','','','',':','home','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1660617912),(2,'Logo','Logo','Logo',0,2,1,'',' ','','','logo/','',':logosite:','logo','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,' ','',1608698050),(3,'SlideHome','SlideHome','SlideHome',0,3,1,'','','','','slidehome/','',':slideshow:','logo','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1656382886),(4,'SlideHomeMobile','SlideHomeMobile','SlideHomeMobile',0,3,1,'','','','','slidehomemobile/','',':slidemobile:','logo','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1608698103),(5,'Giới thiệu','Giới thiệu','Giới thiệu',0,1,1,'','','','','#','',':menubar:inright:','info','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1656914985),(6,'Tin tức','Kiến thức y khoa','Tin tức',0,5,1,'','','','','tin-tuc/','',':menubar:boxmenufooter:cathome:','news','0','','',NULL,'',0,'',NULL,21,0,1,0,0,0,0,'',NULL,0,'',0,'',0,'','',1659604615),(7,'Liên hệ','Liên hệ','Liên hệ',0,20,1,'','<div style=\"text-align: justify;\">\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n</div>\r\n','','','lien-he/','',':','contact','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'<div style=\"text-align: justify;\">&nbsp;</div>\r\n\r\n<div><meta charset=\"utf-8\" />\r\n<div style=\"text-align: justify;\">Để t&igrave;m hiểu th&ecirc;m về kiến thức hoặc bệnh l&yacute; đang gặp phải h&atilde;y li&ecirc;n hệ trực tiếp tới bộ phận tư vấn để được giải đ&aacute;p, hỗ trợ nhanh nhất.</div>\r\n\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n</div>\r\n','',1660719362),(40,'Hợp tác quốc tế','Hợp tác quốc tế','Hợp tác quốc tế',5,10,1,'/uploaded/Home/gioi-thieu-ve-lieu-phap-m-msc-clinic-video.jpg','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','','','hop-tac-quoc-te/','',':','info','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','',1660017241),(9,'Đội ngũ bác sĩ','Đội ngũ bác sĩ','Đội ngũ bác sĩ',5,9,1,'','','','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &amp;#39;Content here, content here&amp;#39;, making it look like readable English.','doi-ngu-chuyen-gia/','',':cathome:','info_leader','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English.','',1660712950),(41,'Chức năng và vai trò','Chức năng và vai trò','Chức năng và vai trò',5,26,1,'/uploaded/Home/bakground_home.png','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','','','chuc-nang-va-vai-tro/','',':','info','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','',1660018746),(42,'Cơ sở vật chất','Cơ sở vật chất','Cơ sở vật chất',5,27,1,'/uploaded/Home/bakground_home.png','Cơ sở vật chất','','','co-so-vat-chat/','',':','info','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'Cơ sở vật chất','',1660017422),(43,'Dịch vụ','Dịch vụ','Dịch vụ',0,28,1,'','','','','dich-vu/','',':','service','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1660035209),(44,'Vô sinh nam','Vô sinh nam','Vô sinh nam',34,29,1,'/uploaded/Home/benh-ly-cot-song-home.jpg','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free frThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free fr','','','vo-sinh-nam1/','',':','service','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free fr','',1660036960),(45,'vô sinh nam 1.1','vô sinh nam 1.1','vô sinh nam 1.1',44,30,1,'/uploaded/Home/hoi-phuc-dau-phau-thuat-co-xuong-khop-home.jpg','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','','','vo-sinh-nam-11/','',':','service','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','',1660553022),(46,'Vô sinh nữ','Vô sinh nữ','Vô sinh nữ',34,31,1,'','','','','vo-sinh-nu/','',':','service','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1660036682),(47,'Vô sinh vô căn','Vô sinh vô căn','Vô sinh vô căn',34,32,1,'','','','','vo-sinh-nguyen-phat/','',':','service','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1661769673),(48,'Vô sinh nam 1 2','Vô sinh nam 1 2','Vô sinh nam 1 2',44,33,1,'/uploaded/Home/hoi-phuc-dau-phau-thuat-co-xuong-khop-home.jpg','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free fr','','','vo-sinh-nam-1-2/','',':','service','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'V&ocirc; sinh nam 1 2&nbsp;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free fr','',1660102220),(52,'Tư vấn','Tư vấn','Tư vấn',0,34,1,'','','','','#','',':menubar:','faq','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1661135360),(53,'Chăm sóc thai IVF','Chăm sóc thai IVF','Chăm sóc thai IVF',52,35,1,'','','','','cham-soc-thai-ivf/','',':','faq','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1660904309),(13,'Bệnh thoái hóa khớp','Điều trị bệnh thoái hóa khớp: Thời gian điều trị ngắn - Hiệu quả cao và lâu dài','Điều trị bệnh thoái hóa khớp: Thời gian điều trị ngắn - Hiệu quả cao và lâu dài',20,8,0,'/uploaded/Home/thoai-hoa-khop-home.jpg','<div style=\"page-break-after: always\"><span style=\"display: none;\">&nbsp;</span></div>\r\n\r\n<div style=\"text-align: justify;\"><meta charset=\"utf-8\" /></div>\r\n\r\n<h1 dir=\"ltr\" style=\"text-align: justify;\">1. Bệnh tho&aacute;i h&oacute;a khớp l&agrave; g&igrave;? Những vị tr&iacute; tho&aacute;i h&oacute;a khớp thường gặp&nbsp;</h1>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Bệnh tho&aacute;i h&oacute;a khớp l&agrave; một bệnh l&yacute; m&atilde;n t&iacute;nh, l&agrave; t&igrave;nh trạng hư hỏng phần sụn, đệm giữa hai đầu xương c&oacute; k&egrave;m theo phản ứng vi&ecirc;m v&agrave; giảm s&uacute;t lượng dịch nhờn nội khớp, g&acirc;y ra t&igrave;nh trạng đau v&agrave; cứng khớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align: center;\"><img alt=\"dieu-tri-benh-thoai-hoa-khop-1\" src=\"/uploaded/Menu/dieu-tri-benh-thoai-hoa-khop-1.jpg\" style=\"height: 449px; width: 700px;\" /><br />\r\n<em>Người cao tuổi mắc bệnh tho&aacute;i ho&aacute; khớp</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Ở Việt Nam, ước t&iacute;nh cho thấy t&igrave;nh trạng tho&aacute;i h&oacute;a khớp đang ng&agrave;y c&agrave;ng phổ biến v&agrave; c&oacute; dấu hiệu trẻ h&oacute;a, thống k&ecirc; cho thấy c&oacute; 30% người tr&ecirc;n tuổi 35, 60% người tr&ecirc;n tuổi 65 v&agrave; 85% người tr&ecirc;n tuổi 85 gặp vấn đề n&agrave;y. Bất kỳ vị tr&iacute; n&agrave;o tr&ecirc;n cơ thể cũng c&oacute; thể xuất hiện c&aacute;c dấu hiệu tho&aacute;i h&oacute;a:&nbsp;</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Tho&aacute;i h&oacute;a khớp ti&ecirc;n ph&aacute;t: thường xuất hiện ở khớp h&aacute;ng, khớp đầu gối, khớp b&agrave;n ng&oacute;n ch&acirc;n c&aacute;i, khớp b&agrave;n ng&oacute;n, cột sống cổ, cột sống thắt lưng,&hellip;</p>\r\n	</li>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Tho&aacute;i h&oacute;a thứ ph&aacute;t thường do vi&ecirc;m khớp dạng thấp, di truyền, chấn thương: c&oacute; thể xuất hiện ở bất kỳ khớp n&agrave;o đặc biệt l&agrave; khớp đối xứng như b&agrave;n tay, tay, ch&acirc;n, đầu gối,.... .</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">2. Nhận biết c&aacute;c triệu chứng của bệnh tho&aacute;i h&oacute;a khớp&nbsp;</h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Triệu chứng của bệnh tho&aacute;i h&oacute;a khớp thường ph&aacute;t triển chậm v&agrave; mức độ tăng nặng hơn theo thời gian, c&aacute;c dấu hiệu nhận biết bao gồm:&nbsp;</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Đau nhức: C&aacute;c cơn đau ban đầu xuất hiện trong hoặc sau khi vận động, thường &acirc;m ỉ v&agrave; biến mất khi kh&ocirc;ng hoạt động. Nếu kh&ocirc;ng được thăm kh&aacute;m v&agrave; điều trị kịp thời, c&aacute;c cơn đau tăng nặng về mức độ v&agrave; k&eacute;o d&agrave;i hơn, g&acirc;y ra nhiều đau đớn v&agrave; phiền to&aacute;i, ảnh hưởng đến đời sống sinh hoạt h&agrave;ng ng&agrave;y.</p>\r\n	</li>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Cứng khớp: Triệu chứng n&agrave;y thường đi k&egrave;m với những cơn đau v&agrave; nhận thấy dễ nhất ngay sau khi bệnh nh&acirc;n thức dậy, hoặc sau một thời gian kh&ocirc;ng vận động, di chuyển.</p>\r\n	</li>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Tiếng khớp k&ecirc;u: Xuất hiện chủ yếu khi di chuyển, cử động, c&ugrave;ng với đ&oacute; l&agrave; cảm gi&aacute;c n&oacute;ng ran khi vận động.</p>\r\n	</li>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Teo cơ, sưng tấy: Bệnh l&yacute; k&eacute;o d&agrave;i dẫn đến t&igrave;nh trạng sưng tấy l&agrave;m biến dạng c&aacute;c khớp v&agrave; v&ugrave;ng cơ xung quanh khớp, l&acirc;u dần kh&ocirc;ng vận động trong thời gian d&agrave;i sẽ g&acirc;y teo cơ, biến dạng khớp,&hellip;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">3. C&aacute;c nguy&ecirc;n nh&acirc;n phổ biến g&acirc;y bệnh tho&aacute;i h&oacute;a khớp</h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Một số nguy&ecirc;n nh&acirc;n g&acirc;y ra bệnh tho&aacute;i h&oacute;a khớp như:</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a tự nhi&ecirc;n: cơ thể trưởng th&agrave;nh v&agrave; gi&agrave; đi sẽ khiến c&aacute;c tế b&agrave;o sụn mất đi khả năng sinh sản v&agrave; t&aacute;i tạo.C&aacute;c tế b&agrave;o sụn dần dần giảm chức năng tổng hợp chất tạo n&ecirc;n sợi collagen v&agrave; mucopolysaccharide, l&agrave;m cho chất lượng v&agrave; t&iacute;nh đ&agrave;n hồi sụn k&eacute;m dần.</p>\r\n	</li>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Bẩm sinh: c&aacute;c dị dạng bẩm sinh cũng l&agrave; một trong c&aacute;c nguy&ecirc;n nh&acirc;n phổ biến g&acirc;y ra bệnh tho&aacute;i h&oacute;a khớp. Điều n&agrave;y l&agrave;m thay đổi diện t&igrave; n&eacute;n b&igrave;nh thường của khớp hay cột sống, khiến một số khớp kh&ocirc;ng chịu được &aacute;p lực, l&acirc;u dần g&acirc;y tho&aacute;i h&oacute;a.</p>\r\n	</li>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Di truyền: T&igrave;nh trạng n&agrave;y xảy ra ở một số đối tượng c&oacute; khiếm khuyết di truyền ở những gen c&oacute; chức năng h&igrave;nh th&agrave;nh sụn. Việc n&agrave;y dẫn đến hao hụt ở sụn khớp, đẩy nhanh t&igrave;nh trạng tho&aacute;i h&oacute;a.C&aacute;c biến dạng thứ ph&aacute;t: c&aacute;c tổn thương do c&aacute;c bệnh l&yacute; xương khớp, chấn thương do tai nạn, nghề nghiệp,... l&agrave;m thay đổi h&igrave;nh th&aacute;i của khớp v&agrave; cột sống.</p>\r\n	</li>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">B&eacute;o ph&igrave;, tăng c&acirc;n qu&aacute; nhanh: l&agrave;m tăng &aacute;p lực l&ecirc;n xương khớp, l&acirc;u dần l&agrave;m xương khớp bị đ&egrave; n&eacute;n, biến dạng.</p>\r\n	</li>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">Nội tiết: t&igrave;nh trạng thiếu hormon ở nữ ch&iacute;nh l&agrave; một trong những yếu tố g&acirc;y n&ecirc;n t&igrave;nh trạng tho&aacute;i h&oacute;a khớp. C&ugrave;ng với đ&oacute; l&agrave; c&aacute;c hiện tượng như rối loạn hormon trong thời kỳ m&atilde;n kinh, đ&aacute;i th&aacute;o đường, lo&atilde;ng xương do nội tiết,...&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">4. Những phương ph&aacute;p điều trị bệnh tho&aacute;i h&oacute;a khớp</h2>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align: justify;\"><em>4.1. Sử dụng thuốc</em></h3>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng thuốc giảm đau dạng uống trong điều trị gi&uacute;p cải thiện c&aacute;c triệu chứng của bệnh một c&aacute;ch kịp thời v&agrave; nhanh ch&oacute;ng. Loại thuốc giảm đau sẽ t&ugrave;y thuộc v&agrave;o mức độ nghi&ecirc;m trọng của cơn đau v&agrave; c&aacute;c t&igrave;nh trạng hoặc vấn đề sức khỏe kh&aacute;c m&agrave; người bệnh gặp phải. Một số thuốc thường được sử dụng như: Thuốc giảm đau, thuốc chống vi&ecirc;m kh&ocirc;ng steroid (NSAID),....</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Trong 1 số trường hợp c&oacute; thể d&ugrave;ng đến thuốc giảm đau kh&aacute;ng vi&ecirc;m Corticoid dạng uống hoặc dạng ti&ecirc;m, tuy nhi&ecirc;n cần c&oacute; sự chỉ định của b&aacute;c sĩ chuy&ecirc;n khoa.</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align: justify;\"><em>4.2. Phẫu thuật</em></h3>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Phẫu thuật điều trị tho&aacute;i h&oacute;a khớp chỉ cần thiết trong một số &iacute;t trường hợp đ&atilde; tham gia trị liệu bằng c&aacute;c biện ph&aacute;p kh&aacute;c nhưng kh&ocirc;ng mang lại kết quả khả quan hoặc phần khớp gặp tổn thương ở mức độ nghi&ecirc;m trọng. Phương ph&aacute;p phẫu thuật c&oacute; thể cải thiện đ&aacute;ng kể c&aacute;c triệu chứng, tăng khả năng vận động.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Thay khớp l&agrave; một trong những chỉ định phẫu thuật t&aacute;i tạo khớp, c&oacute; thể &aacute;p dụng hiệu quả tr&ecirc;n c&aacute;c khớp như gối, h&aacute;ng, ng&oacute;n tay,... Với phẫu thuật thay khớp, phần khớp đ&atilde; hư hại sẽ bị loại bỏ v&agrave; thay thế v&agrave;o đ&oacute; phần khớp nh&acirc;n tạo được l&agrave;m bằng c&aacute;c vật liệu y sinh đặc biệt. Tuổi thọ của khớp nh&acirc;n tạo c&oacute; thể k&eacute;o d&agrave;i từ 15-20 năm hoặc hơn.</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align: justify;\"><em>4.3. Ti&ecirc;m PRP huyết tương gi&agrave;u tiểu cầu</em></h3>\r\n\r\n<p dir=\"ltr\" style=\"text-align: center;\"><img alt=\"dieu-tri-benh-thoai-hoa-khop-2\" src=\"/uploaded/Menu/dieu-tri-benh-thoai-hoa-khop-2.jpg\" style=\"height: 449px; width: 700px;\" /><br />\r\n<em>B&aacute;c sĩ thực hiện ti&ecirc;m PRP</em></p>\r\n\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng PRP trong điều trị c&aacute;c vấn đề ở cơ xương khớp l&agrave; giải ph&aacute;p hiện đại cho hiệu quả nhanh ch&oacute;ng với khả năng tự chữa l&agrave;nh tự nhi&ecirc;n, mức độ an to&agrave;n cao cho người bệnh. T&ugrave;y v&agrave;o t&igrave;nh trạng l&acirc;m s&agrave;ng của người bệnh v&agrave; khả năng phục hồi của từng người, liệu ph&aacute;p sẽ được chỉ định ph&ugrave; hợp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">So với c&aacute;c phương ph&aacute;p điều trị truyền thống như sử dụng thuốc, phẫu thuật (nội soi hoặc mổ mở), ti&ecirc;m PRP được đ&aacute;nh gi&aacute; cao về sự an to&agrave;n do sử dụng m&aacute;u được lấy từ cơ thể người bệnh, c&oacute; thể cải thiện v&agrave; chấm dứt cơn đau nhanh ch&oacute;ng tới 80-90%.&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align: justify;\"><em>4.4.&nbsp;Ch&acirc;m cứu&nbsp;</em></h3>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Ch&acirc;m cứu l&agrave; một phương ph&aacute;p cổ truyền ứng dụng v&agrave;o điều trị bệnh tho&aacute;i ho&aacute; khớp phổ biến từ l&acirc;u đời. Phương ph&aacute;p n&agrave;y c&oacute; t&aacute;c dụng giảm đau v&agrave; gi&uacute;p tăng cường kh&iacute; huyết nu&ocirc;i dưỡng tại khớp, từ đ&oacute; khớp trở n&ecirc;n linh hoạt v&agrave; vận động tốt hơn.&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align: justify;\"><em>4.5. Điều trị bệnh tho&aacute;i h&oacute;a khớp bằng M-MSC Therapy</em></h3>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Liệu ph&aacute;p M-MSC THERAPY t&aacute;i tạo, phục hồi to&agrave;n diện v&agrave; đa t&aacute;c động cơ xương khớp l&agrave; ph&aacute;c đồ điều trị kết hợp giữa phương ph&aacute;p vật l&iacute; trị liệu, phục hồi chức năng bằng c&ocirc;ng nghệ cao v&agrave; Y học t&aacute;i tạo.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align: center;\"><img alt=\"dieu-tri-benh-thoai-hoa-khop-3\" src=\"/uploaded/Menu/dieu-tri-benh-thoai-hoa-khop-3.jpg\" style=\"height: 449px; width: 700px;\" /></p>\r\n\r\n<h2 dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\">5. Lưu &yacute; ph&ograve;ng ngừa bệnh tho&aacute;i h&oacute;a khớp</h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Một số lưu &yacute; gi&uacute;p ngăn ngừa bệnh tho&aacute;i ho&aacute; khớp hoặc sự tiến triển của bệnh v&agrave; giảm bớt ảnh hưởng của đến cuộc sống c&oacute; thể kể đến như:</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\"><strong>Kiểm so&aacute;t trọng lượng</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Duy tr&igrave; c&acirc;n nặng hợp l&yacute; gi&uacute;p ngăn ngừa ph&aacute;t triển c&aacute;c bệnh về khớp hiệu quả. Nghi&ecirc;n cứu cho thấy phụ nữ b&eacute;o ph&igrave; c&oacute; nguy cơ mắc tho&aacute;i h&oacute;a khớp cao gấp gần 4 lần so với phụ nữ b&igrave;nh thường. Nguy cơ đối với nam giới b&eacute;o ph&igrave; cao hơn gần 5 lần so với nam giới kh&ocirc;ng b&eacute;o ph&igrave;. Việc giảm &iacute;t nhất 5% trọng lượng cơ thể c&oacute; thể l&agrave;m giảm căng thẳng ở đầu gối, h&ocirc;ng v&agrave; lưng dưới.</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\"><strong>Tập luyện thể dục</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\" style=\"text-align: center;\"><img alt=\"dieu-tri-benh-thoai-hoa-khop-4\" src=\"/uploaded/Menu/dieu-tri-benh-thoai-hoa-khop-4.jpg\" style=\"height: 449px; width: 700px;\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Một chế độ sinh hoạt, luyện tập khoa học cũng g&oacute;p phần gi&uacute;p cải thiện t&igrave;nh trạng sức khỏe, n&acirc;ng cao sự linh hoạt, dẻo dai cho c&aacute;c khớp. Bạn n&ecirc;n lựa chọn tập luyện với cường độ hợp l&yacute;, tr&aacute;nh tập sai động t&aacute;c ảnh hưởng đến c&aacute;c khớp.</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\"><strong>Bảo vệ c&aacute;c khớp, ph&ograve;ng tr&aacute;nh chấn thương</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Một số nguy&ecirc;n tắc tr&aacute;nh chấn thương như: kh&ocirc;ng uốn cong qu&aacute; 90 độ khi thực hiện động t&aacute;c gập đầu gối, lu&ocirc;n giữ cho b&agrave;n ch&acirc;n bằng phẳng trong khi duỗi tr&aacute;nh chấn thương ở đầu gối, khởi động trước khi tham gia c&aacute;c m&ocirc;n thể thao hoặc c&aacute;c hoạt động thể lực, mang gi&agrave;y vừa vặn,...</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\" dir=\"ltr\">\r\n	<p dir=\"ltr\" role=\"presentation\" style=\"text-align: justify;\"><strong>Ăn uống khoa học</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">C&aacute;c chất dinh dưỡng c&oacute; li&ecirc;n quan mật thiết đến việc giảm nguy cơ mắc bệnh tho&aacute;i ho&aacute; khớp hoặc mức độ nghi&ecirc;m trọng của t&igrave;nh trạng bệnh. Bạn lu&ocirc;n cần x&acirc;y dựng một chế độ ăn hợp l&yacute;, khoa học, đầy đủ dinh dưỡng: bổ sung Axit b&eacute;o omega-3, vitamin D, ăn nhiều rau xanh, tr&aacute;i c&acirc;y v&agrave; hạn chế đồ chế biến nhiệt độ cao.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Để t&igrave;m hiểu th&ecirc;m c&aacute;c th&ocirc;ng tin về tho&aacute;i h&oacute;a khớp v&agrave; điều trị bệnh kịp thời, hiệu quả, li&ecirc;n hệ với MSC Clinic để được tư vấn:</p>\r\n\r\n<p dir=\"ltr\"><strong><em>Ph&ograve;ng kh&aacute;m đa khoa quốc tế MSC</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Địa chỉ:</strong> Tầng G,1,2,3 - TT 20,21,22, Số 204 Nguyễn Tu&acirc;n, Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, H&agrave; Nội&nbsp;<br />\r\n<strong>Hotline 24/7:&nbsp;<span style=\"color:#c0392b;\">1900 0326 / 0965 505 988&nbsp;</span></strong><br />\r\n<strong>Email:</strong> info@mscclinic.vn</p>\r\n','điều trị bệnh thoái hóa khớp','Điều trị bệnh thoái hóa khớp bằng M-MSC Therapy: Liệu pháp M-MSC THERAPY tái tạo, phục hồi toàn diện và đa tác động cơ xương khớp là phác đồ điều trị kết hợp giữa phương pháp vật lí trị liệu, phục hồi chức năng bằng công nghệ cao và Y học tái tạo.','dieu-tri-benh-thoai-hoa-khop/','',':inhome:','info','0','news_col','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'<p dir=\"ltr\" style=\"text-align: justify;\">Bệnh tho&aacute;i h&oacute;a khớp l&agrave; bệnh l&yacute; xương khớp phổ biến v&agrave; ng&agrave;y c&agrave;ng c&oacute; xu hướng gia tăng tr&ecirc;n to&agrave;n thế giới. Bệnh xảy ra khi lớp sụn bảo vệ đệm của c&aacute;c đầu xương bị hư hại, tổn thương. Hiện nay, c&oacute; nhiều phương ph&aacute;p điều trị bệnh tho&aacute;i ho&aacute; khớp mang đến hiệu quả cao, giảm nguy cơ dẫn đến t&agrave;n tật cho người bệnh</p>\r\n','',1657789734),(31,'News Event','News Event','News Event',0,24,1,'','News EventNews EventNews EventNews Event','','','en/news-event/','',':menubar:','news','0','','',NULL,'',0,'en',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'News Event','',1657101574),(32,'About Us','About Us','About Us',0,25,1,'','About UsAbout UsAbout UsAbout Us','','','en/about-us/','',':menubar:','info','0','','',NULL,'',0,'en',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'About Us','',1657101567),(29,'LogoSite','LogoSite','LogoSite',0,22,1,'','','','','en/logosite/','',':logosite:','logo','0','','',NULL,'',0,'en',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1657079516),(30,'SlideHome','SlideHome','SlideHome',0,23,1,'','','','','en/slidehome/','',':slideshow:','logo','0','','',NULL,'',0,'en',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1657079528),(16,'Giới thiệu Trang chủ','M - MSC THERAPY <br> Giúp tái tạo và phục hồi toàn diện cơ xương khớp','Giới thiệu Trang chủ',0,13,1,'','','','','gioi-thieu-trang-chu/','',':cathome:','info','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1656662941),(18,'Cơ sở vật chất - Trang thiết bị hiện đại','Cơ sở vật chất - Trang thiết bị hiện đại','Cơ sở vật chất - Trang thiết bị hiện đại',0,16,1,'','','','','trang-thiet-bi-hien-dai/','',':cathome:','album','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1657591197),(19,'Hành trình khách hàng điều trị  tại phòng khám MSC','Hành trình khách hàng điều trị tại phòng khám MSC','Hành trình khách hàng điều trị tại phòng khám MSC',0,17,1,'','','','','hanh-trinh-khach-hang-dieu-tri-tai-phong-kham-msc/','',':cathome:','article','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1657531284),(17,'Giới thiệu Ưu điểm ','Giới thiệu Ưu điểm ','Giới thiệu Ưu điểm ',0,14,1,'','','','','gioi-thieu-uu-diem/','',':hothome:','info','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1655460543),(28,'Home Page','Home Page','Home Page',0,21,1,'','','','','en/','',':menubar:','home','0','','',NULL,'',0,'en',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1657007520),(38,'Chăm sóc thai kỳ','Chăm sóc thai kỳ','Chăm sóc thai kỳ',0,3,1,'/uploaded/Home/gioi-thieu-ve-lieu-phap-m-msc-clinic-video.jpg','<strong>Dịch vụ chăm s&oacute;c thai kỳ:</strong><br />\r\nChăm s&oacute;c &amp; theo d&otilde;i thai IVF<br />\r\nChăm s&oacute;c &amp; giữ thai kh&oacute;','','','cham-soc-thai-ky/','',':menubar:inhome:','service','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','',1660709514),(36,'Tầm nhìn sứ mệnh','Về chúng tôi','Tầm nhìn sứ mệnh',5,8,1,'/uploaded/Home/item-home1.png','Tầm nh&igrave;n sứ mệnh<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum','','','tam-nhin-su-menh/','',':','info_donvi','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker includi<img src=\"/uploaded/slideshow/item2.png\" />ng versions of Lorem Ipsum','',1660706422),(39,'Nam khoa','Nam khoa','Nam khoa',0,4,1,'/uploaded/dichvu/itemhome1.png','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','','','nam-khoa/','',':menubar:inhome:','service','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','',1661769397),(34,'Vô sinh hiếm muộn','Vô sinh hiếm muộn','Vô sinh hiếm muộn',0,2,1,'/uploaded/dichvu/itemhome3.png','','','','test-dich-vu/','',':menubar:inhome:','service','0','','',NULL,'',0,'',NULL,21,0,0,0,0,0,0,'',NULL,0,'',0,'',0,'','',1660638077);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id_comment` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` longtext,
  `createdate` bigint(20) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `thu_tu` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `id_item` varchar(255) DEFAULT NULL,
  `id_value` varchar(255) DEFAULT NULL,
  `user_like` bigint(20) DEFAULT '0',
  `star_rate` int(11) DEFAULT '3',
  `id_admin` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id_comment`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id_contact` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `xem` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `createdate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_contact`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Thông tin liên hệ: Hai ami','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n     <tr>\n               <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n    </tr>\n    \n             <tr>\n               <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Hai ami</strong></td>\n      </tr>\n        <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>haitt@company.vn</strong></td>\n      </tr>\n      \n    <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0912345678</strong></td>\n      </tr>\n        <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minh khai</strong></td>\n      </tr>\n      <tr>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><i>sagag - </i></td>\n      </tr>\n</table>',1,'haitt@company.vn',1656308638),(2,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n     <tr>\n               <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n    </tr>\n    \n             <tr>\n               <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n      </tr>\n        <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>bunsroi123@gmail.com</strong></td>\n      </tr>\n      \n    <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n      </tr>\n        <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n      </tr>\n      <tr>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><i>test - </i></td>\n      </tr>\n</table>',1,'bunsroi123@gmail.com',1656313952),(3,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n     <tr>\n               <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n    </tr>\n    \n             <tr>\n               <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n      </tr>\n        <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n      </tr>\n      \n    <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n      </tr>\n        <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>asas</strong></td>\n      </tr>\n      <tr>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><i>Tư vấn mua hàng - </i></td>\n      </tr>\n</table>',1,'',1656493626),(5,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Hà nội 123</strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>abc - </i></td>\n  </tr>\n</table>',0,'minhns@company.vn',1657103370),(6,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>abc abc - </i></td>\n  </tr>\n</table>',0,'minhns@company.vn',1657103390),(7,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>abc</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>abcasdfasd f - </i></td>\n  </tr>\n</table>',0,'abc',1657103478),(8,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>abc abc - </i></td>\n  </tr>\n</table>',0,'minhns@company.vn',1657103545),(9,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>fgasdfdsafds - </i></td>\n  </tr>\n</table>',0,'minhns@company.vn',1657103619),(10,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>abc abc - </i></td>\n  </tr>\n</table>',1,'minhns@company.vn',1657104166),(11,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>abc abc - </i></td>\n  </tr>\n</table>',0,'minhns@company.vn',1657104167),(12,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>abc abc - </i></td>\n  </tr>\n</table>',0,'minhns@company.vn',1657104168),(13,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>abc abc - </i></td>\n  </tr>\n</table>',0,'minhns@company.vn',1657104169),(14,'Thông tin liên hệ: Minh Nguyễn - Test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968123456</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>abc abc - </i></td>\n  </tr>\n</table>',1,'minhns@company.vn',1657104313),(15,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>bunsroi123@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'bunsroi123@gmail.com',1657106041),(16,'Thông tin liên hệ: dsdfs','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>dsdfs</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>dinhhoa.it12@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>d - </i></td>\n  </tr>\n</table>',0,'dinhhoa.it12@gmail.com',1657106490),(17,'Thông tin liên hệ: Hai ami','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Hai ami</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>haitt@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>+84912345678</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>sagasg - </i></td>\n  </tr>\n</table>',0,'haitt@company.vn',1657158693),(18,'Thông tin liên hệ: Hai ami','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Hai ami</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>+84912345678</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'',1657158716),(19,'Thông tin liên hệ: Hai ami','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Hai ami</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>+84912345678</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'',1657158727),(20,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>dinhhoa.it12@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>ddd - </i></td>\n  </tr>\n</table>',1,'dinhhoa.it12@gmail.com',1657159752),(21,'Thông tin liên hệ: adad','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>adad</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>bunsroi123@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'bunsroi123@gmail.com',1657165029),(22,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>bunsroi123@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'bunsroi123@gmail.com',1657166371),(23,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>dinhhoa.it12@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sss</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'dinhhoa.it12@gmail.com',1657166523),(24,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>dinhhoa.it12@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'dinhhoa.it12@gmail.com',1657166536),(25,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>dinhhoa.it12@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>tesy - </i></td>\n  </tr>\n</table>',0,'dinhhoa.it12@gmail.com',1657166591),(26,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>bunsroi123@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>dđ - </i></td>\n  </tr>\n</table>',0,'bunsroi123@gmail.com',1657166618),(27,'Thông tin liên hệ: adad','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>adad</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>bunsroi123@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>13 - </i></td>\n  </tr>\n</table>',1,'bunsroi123@gmail.com',1657166705),(28,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',1,'',1657166777),(29,'Thông tin liên hệ: adad tết','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>adad tết</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',1,'',1657166915),(39,'Thông tin liên hệ: adad','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>adad</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'',1658132329),(40,'Thông tin liên hệ: adad tết','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>adad tết</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'',1658198315),(41,'Thông tin liên hệ: a','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>a</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>+84399969375</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'',1658389656),(42,'Thông tin liên hệ: a','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>a</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>+84399969375</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'',1658389703),(43,'Thông tin liên hệ: Hòa test','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Hòa test</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'',1658460003),(44,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'',1658460069),(45,'Thông tin liên hệ: Hai ami','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Hai ami</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>haitt@company.vn</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>+84912345678</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'haitt@company.vn',1658462067),(47,'Thông tin liên hệ: adad','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>adad</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'',1658463318),(53,'Thông tin liên hệ: TEST','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>TEST</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>bunsroi123@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i> - </i></td>\n  </tr>\n</table>',0,'bunsroi123@gmail.com',1660618309),(54,'Thông tin liên hệ: sds','\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n <tr>\n		   <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n</tr>\n\n		 <tr>\n		   <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>sds</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>dinhhoa.it12@gmail.com</strong></td>\n  </tr>\n  \n<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong>(+84) 986763397</strong></td>\n  </tr>\n	<tr>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n	  <td height=\"30\" align=\"left\" valign=\"middle\"><strong></strong></td>\n  </tr>\n  <tr>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n		   <td height=\"30\" align=\"left\" valign=\"middle\"><i>Tưaa - </i></td>\n  </tr>\n</table>',1,'dinhhoa.it12@gmail.com',1661140515);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactinfo`
--

DROP TABLE IF EXISTS `contactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactinfo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_catstatic` bigint(11) NOT NULL DEFAULT '0',
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `ngay_dang` bigint(20) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `inwhere` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `address` varchar(600) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactinfo`
--

LOCK TABLES `contactinfo` WRITE;
/*!40000 ALTER TABLE `contactinfo` DISABLE KEYS */;
INSERT INTO `contactinfo` VALUES (1,'Liên hệ','<iframe allowfullscreen=\"\" height=\"450\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.799036010986!2d105.79765491391989!3d21.000691355949055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135adf0068e0d47%3A0x837c39686515c4df!2sMSC%20Clinic!5e0!3m2!1svi!2s!4v1656308402250!5m2!1svi!2s\" style=\"border:0;\" width=\"100%\"></iframe>',0,0,0,1,0,'','','Your company name here','Lê Văn Lương, KĐT Trung Hòa Nhân Chính, Thanh Xuân, Hà Nội','20.99204228956073','105.79976062485356',' '),(2,'Company info en','<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.4140140010604!2d105.80155335798705!3d20.99952959650355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6ed93396d4180e5b!2zMTA5IE5ndXnhu4VuIFR1w6JuLCBUaGFuaCBYdcOibg!5e0!3m2!1svi!2s!4v1535516982544\" style=\"border:0\" width=\"100%\"></iframe>',0,0,0,1,0,'','','','','','','en'),(3,'Company info cn','<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.4140140010604!2d105.80155335798705!3d20.99952959650355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6ed93396d4180e5b!2zMTA5IE5ndXnhu4VuIFR1w6JuLCBUaGFuaCBYdcOibg!5e0!3m2!1svi!2s!4v1535516982544\" style=\"border:0\" width=\"100%\"></iframe>',0,0,0,1,0,'','','','','21.042324102802453','105.77579302215577','cn'),(4,'Company info kr','<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.4140140010604!2d105.80155335798705!3d20.99952959650355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6ed93396d4180e5b!2zMTA5IE5ndXnhu4VuIFR1w6JuLCBUaGFuaCBYdcOibg!5e0!3m2!1svi!2s!4v1535516982544\" style=\"border:0\" width=\"100%\"></iframe>',0,0,0,1,0,'','','','','','','kr');
/*!40000 ALTER TABLE `contactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id_country` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_country`) USING BTREE,
  UNIQUE KEY `countryID` (`id_country`) USING BTREE,
  KEY `countryID_2` (`id_country`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily`
--

DROP TABLE IF EXISTS `daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily` (
  `id_daily` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` longtext,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_category` bigint(20) DEFAULT '0',
  `id_user` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '0',
  `ngay_dang` bigint(20) DEFAULT '0',
  `image` varchar(600) DEFAULT NULL,
  `intro` text,
  `url` varchar(1000) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `title` varchar(400) DEFAULT NULL,
  `groupcat` varchar(1000) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` text,
  `fax` varchar(128) DEFAULT '',
  `phone` varchar(128) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `website` varchar(256) DEFAULT NULL,
  `linkmap` text,
  `maptitle` varchar(1000) DEFAULT '',
  `provinceid` int(11) DEFAULT NULL,
  `districtid` int(11) DEFAULT NULL,
  `phanphoi` int(11) DEFAULT '1',
  `baohanh` int(11) DEFAULT '0',
  PRIMARY KEY (`id_daily`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily`
--

LOCK TABLES `daily` WRITE;
/*!40000 ALTER TABLE `daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direct`
--

DROP TABLE IF EXISTS `direct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_old` varchar(600) CHARACTER SET utf8 DEFAULT NULL,
  `url_new` varchar(600) CHARACTER SET utf8 DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct`
--

LOCK TABLES `direct` WRITE;
/*!40000 ALTER TABLE `direct` DISABLE KEYS */;
/*!40000 ALTER TABLE `direct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download` (
  `id_download` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(400) DEFAULT NULL,
  `intro` text,
  `content` longtext,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_user` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '0',
  `ngay_dang` bigint(20) DEFAULT '0',
  `image` varchar(600) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `files` varchar(3000) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `groupcat` varchar(1000) DEFAULT NULL,
  `last_modify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_download`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `du_an`
--

DROP TABLE IF EXISTS `du_an`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `du_an` (
  `id_duan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `title` text,
  `intro` mediumtext,
  `content` longtext,
  `tienich` text,
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `imageadv` varchar(512) DEFAULT NULL,
  `image_list` text,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT NULL,
  `id_user` bigint(20) DEFAULT '0',
  `fileurl` varchar(512) DEFAULT NULL,
  `hot` tinyint(4) DEFAULT '0',
  `groupcat` varchar(1000) DEFAULT '0',
  `tags` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `provinceid` varchar(255) DEFAULT NULL,
  `dientich` bigint(20) DEFAULT NULL,
  `header_tag` text,
  `related_product` varchar(1000) DEFAULT NULL,
  `videourl` text,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_duan`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `du_an`
--

LOCK TABLES `du_an` WRITE;
/*!40000 ALTER TABLE `du_an` DISABLE KEYS */;
INSERT INTO `du_an` VALUES (1,0,'Tầm nhìn','Tầm nhìn','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','','','/uploaded/Home/hoi-phuc-dau-phau-thuat-co-xuong-khop-home.jpg',NULL,'[]',1659929340,1,1,8,'',0,':','','tam-nhin.html',NULL,NULL,'',NULL,NULL,1659929495),(2,0,'Tầm nhìn','Tầm nhìn','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','','','',NULL,'[]',1659929520,2,1,8,'',0,':','','tam-nhin.html',NULL,NULL,'',NULL,NULL,1659929555);
/*!40000 ALTER TABLE `du_an` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id_event` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `title` text,
  `intro` text,
  `content` text,
  `event_location` text,
  `event_duration` varchar(255) DEFAULT '',
  `event_date` bigint(20) DEFAULT '0',
  `event_info` text,
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `id_user` bigint(20) DEFAULT '0',
  `file` text,
  `hot` tinyint(4) DEFAULT '0',
  `groupcat` varchar(1000) DEFAULT '0',
  `tags` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_event`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id_faq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `content` longtext,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_category` bigint(20) DEFAULT '0',
  `id_user` bigint(20) DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `ngay_dang` bigint(20) DEFAULT '0',
  `image` varchar(600) DEFAULT NULL,
  `intro` text,
  `url` varchar(1000) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `title` varchar(400) DEFAULT NULL,
  `groupcat` varchar(1000) DEFAULT NULL,
  `lang` varchar(255) DEFAULT '',
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_faq`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English.&nbsp;',1,53,8,1,1660904280,'','','lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit.html','','','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',':','','Nguyễn Bích Hằng','','infor@vinalink.vn'),(2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit','Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',2,53,8,1,1660904520,'','','lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit.html','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit',':','','Nguyễn Bích','','infor@vinalink.vn'),(3,'Lorem ipsum dolor sit amet 1?','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.',3,53,8,1,1660904520,'/uploaded/about/tamnhin1.png','','lorem-ipsum-dolor-sit-amet.html','','','Lorem ipsum dolor sit amet?',':','','Nguyễn Hằng','','infor@vinalink.vn'),(4,'Lorem Ipsum has been the industry&amp;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',4,54,8,1,1661155500,'/uploaded/about/tamnhin2.png','','lorem-ipsum-has-been-the-industryamp39s-standard-dummy-text-ever-since-the-1500s-when-an-unknown-printer-took-a-galley-of-type-and-scrambled-it-to-make-a-type-specimen-book-it-has-survived-not-only-five-centuries-but-also-the-leap-into-electronic-typesetting-remaining-essentially-unchanged.html','','','Lorem Ipsum has been the industry&amp;#39;s standard dummy text ever since the 1500s',':','','','',''),(5,'Lorem ipsum dolor sit amet, consectetur adipiscing elit 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit 2Lorem ipsum dolor sit amet, consectetur adipiscing elit 2Lorem ipsum dolor sit amet, consectetur adipiscing elit 2Lorem ipsum dolor sit amet, consectetur adipiscing elit 2',5,53,8,1,1661159460,'/uploaded/about/tamnhin2.png','','lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-2.html','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit 2',':','','','','');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_attr`
--

DROP TABLE IF EXISTS `group_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_attr` (
  `id_group` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `thu_tu` bigint(20) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `setdefault` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_attr`
--

LOCK TABLES `group_attr` WRITE;
/*!40000 ALTER TABLE `group_attr` DISABLE KEYS */;
INSERT INTO `group_attr` VALUES (21,'Khác',0,1,1);
/*!40000 ALTER TABLE `group_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_attribute`
--

DROP TABLE IF EXISTS `group_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_group` bigint(20) NOT NULL,
  `id_attr` bigint(20) NOT NULL,
  `thu_tu` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=418 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_attribute`
--

LOCK TABLES `group_attribute` WRITE;
/*!40000 ALTER TABLE `group_attribute` DISABLE KEYS */;
INSERT INTO `group_attribute` VALUES (415,21,46,0),(416,21,45,0),(417,21,43,0);
/*!40000 ALTER TABLE `group_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `id_info` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_category` bigint(20) DEFAULT '0',
  `id_user` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '0',
  `ngay_dang` bigint(20) DEFAULT '0',
  `image` varchar(600) DEFAULT NULL,
  `videourl` varchar(512) DEFAULT '',
  `fileurl` varchar(255) DEFAULT '',
  `intro` text,
  `url` varchar(1000) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `title` varchar(400) DEFAULT NULL,
  `groupcat` varchar(1000) DEFAULT NULL,
  `image_list` text,
  `show_type` varchar(128) DEFAULT '',
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_info`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'Tại sao chọn chúng tôi','<div style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</div>\r\n',1,16,8,1,1655460060,'/uploaded/Home/bakground_home.png','','','<div style=\"text-align: justify;\"><span style=\"line-height:1.5;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</span></div>\r\n','gioi-thieu-ve-lieu-phap-mmsc-therapy.html','','','Tại sao chọn chúng tôi',':',NULL,'',1659599527),(2,'Đội ngũ chuyên gia giàu kinh nghiệm ','',4,17,8,1,1655460540,'/uploaded/Home/item-home1.png','','','','khong-phau-thuat.html','','','Đội ngũ chuyên gia giàu kinh nghiệm ',':',NULL,'',1659588106),(3,'Máy móc chẩn đoán &amp; Labo chất lượng châu Âu','',3,17,8,1,1655460540,'/uploaded/Home/item-home2.png','','','','khong-phau-thuat.html','','','Máy móc chẩn đoán &amp; Labo chất lượng châu Âu',':',NULL,'',1659588142),(4,'Chi phí hợp lý','',2,17,8,1,1655460540,'/uploaded/Home/item-home3.png','','','','khong-phau-thuat.html','','','Chi phí hợp lý',':',NULL,'',1659588170),(6,'Bác sĩ Ivan Reich','',5,0,8,1,1660710060,'/uploaded/doi-ngu-chuyen-gia/Dr.-Ivan-Reich-739x1024-removebg-preview.png','','','','bac-si-ivan-reich.html','','','Bác sĩ Ivan Reich',':',NULL,'',1660710594);
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_donvi`
--

DROP TABLE IF EXISTS `info_donvi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_donvi` (
  `id_info` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_category` bigint(20) DEFAULT '0',
  `id_user` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '0',
  `ngay_dang` bigint(20) DEFAULT '0',
  `image` varchar(600) DEFAULT NULL,
  `intro` text,
  `url` varchar(1000) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `title` varchar(400) DEFAULT NULL,
  `groupcat` varchar(1000) DEFAULT NULL,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_info`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_donvi`
--

LOCK TABLES `info_donvi` WRITE;
/*!40000 ALTER TABLE `info_donvi` DISABLE KEYS */;
INSERT INTO `info_donvi` VALUES (2,'Tầm nhìn','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similique\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similique\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similique',3,36,14,1,1660617780,'/uploaded/about/tamnhin1.png','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similique','tam-nhin.html','','','Tầm nhìn',':',NULL),(3,'Sứ mệnh','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similiqueLorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similiqueLorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similiqueLorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similique',2,36,14,1,1660617780,'/uploaded/about/tamnhin2.png','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similique','su-menh.html','','','Tầm nhìn',':',NULL),(4,'Giá trị cốt lõi','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similiqueLorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similiqueLorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similiqueLorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similique',1,36,14,1,1660617780,'/uploaded/about/tamnhin3.png','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis expedita unde inventore deserunt, corrupti id nam accusantium dicta illum quidem fugit vel mollitia quasi excepturi sit eligendi! Ipsum, maiores similique','gia-tri-cot-loi.html','','','Giá trị cốt lõi',':',NULL);
/*!40000 ALTER TABLE `info_donvi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_leader`
--

DROP TABLE IF EXISTS `info_leader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_leader` (
  `id_info` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_category` bigint(20) DEFAULT '0',
  `id_user` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '0',
  `ngay_dang` bigint(20) DEFAULT '0',
  `image` varchar(600) DEFAULT NULL,
  `intro` text,
  `url` varchar(1000) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `title` varchar(400) DEFAULT NULL,
  `groupcat` varchar(1000) DEFAULT NULL,
  `level` int(255) DEFAULT '0',
  `position` varchar(512) DEFAULT NULL,
  `branch` varchar(1024) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_info`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_leader`
--

LOCK TABLES `info_leader` WRITE;
/*!40000 ALTER TABLE `info_leader` DISABLE KEYS */;
INSERT INTO `info_leader` VALUES (8,' IVAN REICH','<div style=\"text-align: justify;\">B&aacute;c sĩ Ivan Reich được đ&agrave;o tạo chuy&ecirc;n s&acirc;u trong lĩnh vực IVF tại Israel v&agrave; cộng h&ograve;a S&eacute;c.</div>\r\n',8,9,8,1,1655461740,'/uploaded/doi-ngu-chuyen-gia/Dr.-Ivan-Reich-739x1024-removebg-preview.png','<meta charset=\"utf-8\" />\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n','ivan-reich.html','','',' IVAN REICH',':',0,'Phó giáo sư','','',NULL);
/*!40000 ALTER TABLE `info_leader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang`
--

DROP TABLE IF EXISTS `lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang` (
  `id` int(11) NOT NULL DEFAULT '1',
  `lang` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang`
--

LOCK TABLES `lang` WRITE;
/*!40000 ALTER TABLE `lang` DISABLE KEYS */;
INSERT INTO `lang` VALUES (1,'{\"_othernews\":{\"default\":\"B\\u00e0i vi\\u1ebft li\\u00ean quan\",\"en\":\"Other articles\",\"cn\":\"a\",\"kr\":\"b\"},\"_home\":{\"default\":\"Trang ch\\u1ee7\",\"en\":\"Home\",\"cn\":\"\",\"kr\":\"\"},\"_detail\":{\"default\":\"Chi ti\\u1ebft\",\"en\":\"Detail\",\"cn\":\"\",\"kr\":\"\"},\"_page\":{\"default\":\"Trang\",\"en\":\"Pages\",\"cn\":\"\",\"kr\":\"\"},\"_fullname\":{\"default\":\"H\\u1ecd t\\u00ean\",\"en\":\"Full name\",\"cn\":\"\",\"kr\":\"\"},\"_email\":{\"default\":\"Email\",\"en\":\"E-Mail\",\"cn\":\"\",\"kr\":\"\"},\"_phone\":{\"default\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"en\":\"Telephone\",\"cn\":\"\",\"kr\":\"\"},\"_address\":{\"default\":\"\\u0110\\u1ecba ch\\u1ec9\",\"en\":\"Address\",\"cn\":\"\",\"kr\":\"\"},\"_content\":{\"default\":\"N\\u1ed9i dung\",\"en\":\"Message\",\"cn\":\"\",\"kr\":\"\"},\"_send\":{\"default\":\"G\\u1eedi li\\u00ean h\\u1ec7\",\"en\":\"Send\",\"cn\":\"\",\"kr\":\"\"},\"_continue\":{\"default\":\"Ti\\u1ebfp t\\u1ee5c\",\"en\":\"Continue\",\"cn\":\"\",\"kr\":\"\"},\"_reset\":{\"default\":\"Nh\\u1eadp l\\u1ea1i\",\"en\":\"Reset\",\"cn\":\"\",\"kr\":\"\"},\"_searchsite\":{\"default\":\"T\\u00ecm ki\\u1ebfm\",\"en\":\"Search\",\"cn\":\"\",\"kr\":\"\"},\"_keywords\":{\"default\":\"T\\u00ecm ki\\u1ebfm \",\"en\":\"keywords\",\"cn\":\"\",\"kr\":\"\"},\"_viewall\":{\"default\":\"Xem t\\u1ea5t c\\u1ea3\",\"en\":\"View all\",\"cn\":\"\",\"kr\":\"\"},\"_search_enter_keyword\":{\"default\":\"Nh\\u1eadp n\\u1ed9i dung c\\u1ea7n t\\u00ecm, s\\u1ea3n ph\\u1ea9m, b\\u00e0i vi\\u1ebft...\",\"en\":\"Enter your keyword...\",\"cn\":\"\",\"kr\":\"\"},\"_viewmore\":{\"default\":\"Xem chi ti\\u1ebft\",\"en\":\"View more\",\"cn\":\"\",\"kr\":\"\"},\"_search_result\":{\"default\":\"K\\u1ebft qu\\u1ea3 t\\u00ecm ki\\u1ebfm\",\"en\":\"Search Result\",\"cn\":\"\",\"kr\":\"\"},\"_online_support\":{\"default\":\"H\\u1ed7 tr\\u1ee3 tr\\u1ef1c tuy\\u1ebfn\",\"en\":\"Online Support\",\"cn\":\"\",\"kr\":\"\"},\"_product_detail\":{\"default\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"en\":\"Product infomation\",\"cn\":\"\",\"kr\":\"\"},\"_comment_alert\":{\"default\":\"Nh\\u1eefng tr\\u01b0\\u1eddng c\\u00f3 d\\u1ea5u * l\\u00e0 tr\\u01b0\\u1eddng b\\u1eaft bu\\u1ed9c ph\\u1ea3i nh\\u1eadp th\\u00f4ng tin\",\"en\":\"You must enter all information in the (*) field\",\"cn\":\"\",\"kr\":\"\"},\"_your_email\":{\"default\":\"Nh\\u1eadp email c\\u1ee7a b\\u1ea1n\",\"en\":\"Your email\",\"cn\":\"\",\"kr\":\"\"},\"_captcha_code\":{\"default\":\"M\\u00e3 b\\u1ea3o m\\u1eadt\",\"en\":\"Captcha Code\",\"cn\":\"\",\"kr\":\"\"},\"_comment_send_msg\":{\"default\":\"B\\u00ecnh lu\\u1eadn c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 g\\u1eedi th\\u00e0nh c\\u00f4ng\",\"en\":\"Your comment sent successfully\",\"cn\":\"\",\"kr\":\"\"},\"_captcha_invalid\":{\"default\":\"M\\u00e3 captcha kh\\u00f4ng \\u0111\\u00fang\",\"en\":\"Wrong captcha code\",\"cn\":\"\",\"kr\":\"\"},\"_customer_support\":{\"default\":\"H\\u1ed7 tr\\u1ee3 kh\\u00e1ch h\\u00e0ng\",\"en\":\"Customer support\",\"cn\":\"\",\"kr\":\"\"},\"_title\":{\"default\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\",\"cn\":\"\",\"kr\":\"\"},\"_view_more_about_home\":{\"default\":\"Xem ti\\u1ebfp\",\"en\":\"View more\",\"cn\":\"\",\"kr\":\"\"},\"_otherservice\":{\"default\":\"D\\u1ecbch v\\u1ee5 kh\\u00e1c\",\"en\":\"Other services\",\"cn\":\"\",\"kr\":\"\"},\"_tieudetecongty\":{\"default\":\"T\\u00ean c\\u00f4ng ty t\\u1ea1i \\u0111\\u00e2y\",\"en\":\"T\\u00ean c\\u00f4ng ty t\\u1ea1i \\u0111\\u00e2y\",\"cn\":\"\",\"kr\":\"\"},\"_hotrokhachhang\":{\"default\":\"H\\u1ed7 tr\\u1ee3 kh\\u00e1ch h\\u00e0ng\",\"en\":\"Customer care\",\"cn\":\"\",\"kr\":\"\"},\"_ngay\":{\"default\":\"Ng\\u00e0y\",\"en\":\"Date\",\"cn\":\"\",\"kr\":\"\"},\"_tentailieu\":{\"default\":\"T\\u00ean t\\u00e0i li\\u1ec7u\",\"en\":\"Document name\",\"cn\":\"\",\"kr\":\"\"},\"_taitailieu\":{\"default\":\"T\\u1ea3i t\\u00e0i li\\u1ec7u\",\"en\":\"Download document\",\"cn\":\"\",\"kr\":\"\"},\"_contactinfo\":{\"default\":\"\\u0110\\u1eb7t l\\u1ecbch\",\"en\":\"Send\",\"cn\":\"\",\"kr\":\"\"},\"_apply_your_cv\":{\"default\":\"\\u0110\\u0103ng k\\u00fd\",\"en\":\"Apply\",\"cn\":\"\",\"kr\":\"\"},\"_product_categories\":{\"default\":\"S\\u1ea3n ph\\u1ea9m c\\u00f9ng lo\\u1ea1i\",\"en\":\"Orther products\",\"cn\":\"\",\"kr\":\"\"},\"_giakm\":{\"default\":\"Gi\\u00e1 KM:\",\"en\":\"Seles off:\",\"cn\":\"\",\"kr\":\"\"},\"_giasp\":{\"default\":\"Gi\\u00e1:\",\"en\":\"Price:\",\"cn\":\"\",\"kr\":\"\"},\"_btnorder\":{\"default\":\"\\u0110\\u1eb7t h\\u00e0ng\",\"en\":\"Add to cart\",\"cn\":\"\",\"kr\":\"\"},\"_huongdanmuahang\":{\"default\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"en\":\"Shopping guide\",\"cn\":\"\",\"kr\":\"\"},\"_thanhtien\":{\"default\":\"Th\\u00e0nh ti\\u1ec1n\",\"en\":\"Total\",\"cn\":\"\",\"kr\":\"\"},\"_tongthanhtoan\":{\"default\":\"T\\u1ed5ng thanh to\\u00e1n\",\"en\":\"Total\",\"cn\":\"\",\"kr\":\"\"},\"_update_cart\":{\"default\":\"C\\u1eadp nh\\u1eadt s\\u1ed1 l\\u01b0\\u1ee3ng\",\"en\":\"Update\",\"cn\":\"\",\"kr\":\"\"},\"_order\":{\"default\":\"\\u0110\\u1eb7t h\\u00e0ng\",\"en\":\"Order\",\"cn\":\"\",\"kr\":\"\"},\"_send_order\":{\"default\":\"G\\u1eedi \\u0111\\u01a1n h\\u00e0ng\",\"en\":\"Send\",\"cn\":\"\",\"kr\":\"\"},\"_your_order_has_been_sent\":{\"default\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng\",\"en\":\"Order success\",\"cn\":\"\",\"kr\":\"\"},\"_shoping_cart\":{\"default\":\"Gi\\u1ecf h\\u00e0ng\",\"en\":\"Cart\",\"cn\":\"\",\"kr\":\"\"},\"_codepr\":{\"default\":\"MSP\",\"en\":\"Code\",\"cn\":\"\",\"kr\":\"\"},\"_newsletter\":{\"default\":\"Nh\\u1eadn tin m\\u1edbi\",\"en\":\"News Letter\",\"cn\":\"\",\"kr\":\"\"},\"_enter_email\":{\"default\":\"Nh\\u1eadp E-mail\",\"en\":\"Enter E-mail\",\"cn\":\"\",\"kr\":\"\"},\"_addresscontact\":{\"default\":\"\\u0110\\u1ecba ch\\u1ec9\",\"en\":\"Address\",\"cn\":\"\",\"kr\":\"\"},\"_contact\":{\"default\":\"Li\\u00ean h\\u1ec7\",\"en\":\"Contact\",\"cn\":\"\",\"kr\":\"\"},\"_soluong\":{\"default\":\"S\\u1ed1 l\\u01b0\\u1ee3ng\",\"en\":\"Quantity\",\"cn\":\"\",\"kr\":\"\"},\"_huong_dan_su_dung\":{\"default\":\"H\\u01b0\\u1edbng d\\u1eabn s\\u1eed d\\u1ee5ng\",\"en\":\"User Guide\",\"cn\":\"\",\"kr\":\"\"},\"_relate_product\":{\"default\":\"S\\u1ea3n ph\\u1ea9m li\\u00ean quan\",\"en\":\"Relate Products\",\"cn\":\"\",\"kr\":\"\"},\"_hotline\":{\"default\":\"\\u0110\\u01b0\\u1eddng d\\u00e2y n\\u00f3ng\",\"en\":\"Hotline\",\"cn\":\"\",\"kr\":\"\"},\"_download_profile\":{\"default\":\"Download Profile\",\"en\":\"Download Profile\",\"cn\":\"\",\"kr\":\"\"},\"_regiter_successful\":{\"default\":\"\\u0110\\u0103ng k\\u00fd th\\u00e0nh c\\u00f4ng\",\"en\":\"\\u0110\\u0103ng k\\u00fd th\\u00e0nh c\\u00f4ng\",\"cn\":\"\",\"kr\":\"\"},\"_linh_vuc_hoat_dong\":{\"default\":\"L\\u0129nh v\\u1ef1c ho\\u1ea1t \\u0111\\u1ed9ng\",\"en\":\"Business\",\"cn\":\"\",\"kr\":\"\"},\"_othervideo\":{\"default\":\"C\\u00e1c video kh\\u00e1c\",\"en\":\"Other videos\",\"cn\":\"\",\"kr\":\"\"},\"_other_album\":{\"default\":\"C\\u00e1c album kh\\u00e1c\",\"en\":\"Other albums\",\"cn\":\"\",\"kr\":\"\"},\"_news\":{\"default\":\"Tin t\\u1ee9c\",\"en\":\"Hot news\",\"cn\":\"\",\"kr\":\"\"},\"_view_less\":{\"default\":\"\\u1ea8n b\\u1edbt\",\"en\":\"Hide\",\"cn\":\"\",\"kr\":\"\"},\"_frm_contact_title\":{\"default\":\"Form li\\u00ean h\\u1ec7\",\"en\":\"Conact Form\",\"cn\":\"\",\"kr\":\"\"},\"_ban_can_nhap_thong_tin\":{\"default\":\"B\\u1ea1n c\\u1ea7n nh\\u1eadp \\u0111\\u1ee7 th\\u00f4ng tin v\\u00e0o nh\\u1eefng tr\\u01b0\\u1eddng m\\u00e0u \\u0111\\u1ecf\",\"en\":\"B\\u1ea1n c\\u1ea7n nh\\u1eadp \\u0111\\u1ee7 th\\u00f4ng tin v\\u00e0o nh\\u1eefng tr\\u01b0\\u1eddng m\\u00e0u \\u0111\\u1ecf\",\"cn\":\"B\\u1ea1n c\\u1ea7n nh\\u1eadp \\u0111\\u1ee7 th\\u00f4ng tin v\\u00e0o nh\\u1eefng tr\\u01b0\\u1eddng m\\u00e0u \\u0111\\u1ecf\",\"kr\":\"B\\u1ea1n c\\u1ea7n nh\\u1eadp \\u0111\\u1ee7 th\\u00f4ng tin v\\u00e0o nh\\u1eefng tr\\u01b0\\u1eddng m\\u00e0u \\u0111\\u1ecf\"},\"_thong_tin_lien_he\":{\"default\":\"Th\\u00f4ng tin li\\u00ean h\\u1ec7 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng !\",\"en\":\"Th\\u00f4ng tin li\\u00ean h\\u1ec7 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng !\",\"cn\":\"Th\\u00f4ng tin li\\u00ean h\\u1ec7 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng !\",\"kr\":\"Th\\u00f4ng tin li\\u00ean h\\u1ec7 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng !\"},\"_ghi_chu\":{\"default\":\"Ghi ch\\u00fa\",\"en\":\"Ghi ch\\u00fa\",\"cn\":\"Ghi ch\\u00fa\",\"kr\":\"Ghi ch\\u00fa\"},\"_xem_chi_tiet\":{\"default\":\"Xem chi ti\\u1ebft \",\"en\":\"Xem chi ti\\u1ebft \",\"cn\":\"Xem chi ti\\u1ebft \",\"kr\":\"Xem chi ti\\u1ebft \"},\"_vui_long_dien_thong_tin\":{\"default\":\"Vui l\\u00f2ng \\u0111i\\u1ec1n v\\u00e0o th\\u00f4ng tin sau\",\"en\":\"Please enter field below\",\"cn\":\"Please enter field below\",\"kr\":\"Please enter field below\"},\"_we_will_contact_you_soon\":{\"default\":\"B\\u1ec7nh vi\\u1ec7n H\\u1eefu ngh\\u1ecb L\\u1ea1c Vi\\u1ec7t, Trung t\\u00e2m h\\u1ed7 tr\\u1ee3 sinh s\\u1ea3n Vi\\u1ec7t \\u00c2u s\\u1ebd li\\u00ean h\\u1ec7 ngay v\\u1edbi qu\\u00fd kh\\u00e1ch khi nh\\u1eadn \\u0111\\u01b0\\u1ee3c th\\u00f4ng tin! \",\"en\":\"We will contact you soon\",\"cn\":\"We will contact you soon\",\"kr\":\"We will contact you soon\"},\"_trong_thoi_gian_som\":{\"default\":\"trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t\",\"en\":\"Thank you\",\"cn\":\"Thank you\",\"kr\":\"Thank you\"},\"_chon_dich_vu\":{\"default\":\"Ch\\u1ecdn d\\u1ecbch v\\u1ee5\",\"en\":\"Services\",\"cn\":\"Services\",\"kr\":\"Services\"},\"_our_partner\":{\"default\":\"Th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u1ed1i t\\u00e1c\",\"en\":\"Our partner\",\"cn\":\"Our partner\",\"kr\":\"Our partner\"},\"_check_field\":{\"default\":\"Vui l\\u00f2ng ki\\u1ec3m tra d\\u1eef li\\u1ec7u nh\\u1eadp v\\u00e0o\",\"en\":\"Please check input field\",\"cn\":\"Please check input field\",\"kr\":\"Please check input field\"},\"_form_title\":{\"default\":\"\\u0110\\u0102NG K\\u00dd T\\u01af V\\u1ea4N\",\"en\":\"Form name\",\"cn\":\"Form name\",\"kr\":\"Form name\"},\"_form_request\":{\"default\":\"N\\u1ed9i dung\",\"en\":\"Request\",\"cn\":\"Request\",\"kr\":\"Request\"},\"_newsletter_text\":{\"default\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus vero unde omnis obcaecati magni\",\"en\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus vero unde omnis obcaecati magni\",\"cn\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus vero unde omnis obcaecati magni\",\"kr\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus vero unde omnis obcaecati magni\"},\"_gioithieu_msc_theorepy\":{\"default\":\"https:\\/\\/mscclinic.vn\\/m-msc-therapy\\/\",\"en\":\"https:\\/\\/mscclinic.vn\\/m-msc-therapy\\/\",\"cn\":\"https:\\/\\/mscclinic.vn\\/m-msc-therapy\\/\",\"kr\":\"https:\\/\\/mscclinic.vn\\/m-msc-therapy\\/\"},\"_doi_ngu_chuyen_gia\":{\"default\":\"https:\\/\\/mscclinic.vn\\/doi-ngu-chuyen-gia-msc-clinic\\/\",\"en\":\"https:\\/\\/mscclinic.vn\\/doi-ngu-chuyen-gia-msc-clinic\\/\",\"cn\":\"https:\\/\\/mscclinic.vn\\/doi-ngu-chuyen-gia-msc-clinic\\/\",\"kr\":\"https:\\/\\/mscclinic.vn\\/doi-ngu-chuyen-gia-msc-clinic\\/\"},\"_dathen\":{\"default\":\"\\u0110\\u0103ng K\\u00fd T\\u01b0 V\\u1ea5n\",\"en\":\"\\u0110\\u1eb7t l\\u1ecbch kh\\u00e1m online\",\"cn\":\"\\u0110\\u1eb7t l\\u1ecbch kh\\u00e1m online\",\"kr\":\"\\u0110\\u1eb7t l\\u1ecbch kh\\u00e1m online\"},\"_dathen_header\":{\"default\":\"\\u0110\\u0103ng k\\u00fd\",\"en\":\"\\u0110\\u0103ng K\\u00fd\",\"cn\":\"G\\u1eedi th\\u00f4ng tin\",\"kr\":\"G\\u1eedi th\\u00f4ng tin\"},\"_datlich\":{\"default\":\"Nh\\u1eadn t\\u01b0 v\\u1ea5n\",\"en\":\"Nh\\u1eadn t\\u01b0 v\\u1ea5n\",\"cn\":\"Nh\\u1eadn t\\u01b0 v\\u1ea5n\",\"kr\":\"Nh\\u1eadn t\\u01b0 v\\u1ea5n\"}}');
/*!40000 ALTER TABLE `lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logo`
--

DROP TABLE IF EXISTS `logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logo` (
  `id_logo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ngay_dang` bigint(20) unsigned NOT NULL DEFAULT '0',
  `thu_tu` bigint(20) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `small_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `normal_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `target` varchar(255) NOT NULL,
  `comment` text,
  `hit` bigint(20) NOT NULL DEFAULT '0',
  `ajaxload` int(11) NOT NULL DEFAULT '0',
  `id_user` bigint(20) DEFAULT NULL,
  `groupcat` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_logo`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logo`
--

LOCK TABLES `logo` WRITE;
/*!40000 ALTER TABLE `logo` DISABLE KEYS */;
INSERT INTO `logo` VALUES (1,2,'LogoSite','/uploaded/logo/logo1.png','',1610585460,1,1,'','','','',0,0,8,':'),(2,3,'','/uploaded/1222x465%20cover%20fb%20IVF%20th%C3%A1ng%208-01.jpg','https://mescells2.24h.co/ve-msc-clinic/',1610585460,1,1,'','','','',0,0,8,':'),(3,3,'','/uploaded/1222x465%20cover%20fb%20IVF%20th%C3%A1ng%208-01.jpg','https://mescells2.24h.co/m-msc-therapy/',1610585460,3,1,'','','','',0,0,8,':'),(4,12,'MSC Clinic tái tạo phục hồi toàn diện Cơ Xương Khớp','/uploaded/Banner/tai-tao-phuc-hoi-co-xuong-khop.jpg','https://mscclinic.vn/m-msc-therapy/',1655459220,4,1,'','','','',0,0,8,':'),(5,4,'Liệu pháp M - MSC Therapy','/uploaded/Banner/lieu-phap-m-msc-therapy-mobile.jpg','https://mescells2.24h.co/m-msc-therapy/',1656664920,5,1,'','','','',0,0,8,':4:'),(6,0,'Logo','/uploaded/logo/logo1.png','',1657079520,6,1,'','','','',0,0,8,':'),(7,4,'MSC Clinic','/uploaded/Banner/1140X480-SLIDE-WEBSITE-02-3.jpg','https://mescells2.24h.co/ve-msc-clinic/',1657097940,7,1,'','','','',0,0,8,':4:'),(8,2,'Logo IVF EV','/uploaded/logo/logo1.png','',1657098300,8,0,'','','','',0,0,8,':2:');
/*!40000 ALTER TABLE `logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id_member` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `lastvisit` bigint(20) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `super` tinyint(4) NOT NULL DEFAULT '0',
  `registtime` bigint(20) NOT NULL DEFAULT '0',
  `canhbao` text,
  `yahoo` varchar(255) DEFAULT NULL,
  `address` varchar(600) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `chucvu` varchar(600) DEFAULT NULL,
  `vip` tinyint(4) NOT NULL DEFAULT '0',
  `otherinfo` text NOT NULL,
  `quocgia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_member`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id_module` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gia_tri` varchar(255) NOT NULL,
  `thu_tu` bigint(20) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `filefontend` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_module`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (5,'Module manager','module.php',0,0,NULL),(9,'Cấu hình hệ thống','setting.php',2,1,''),(26,'Danh sách liên hệ','contact.php',0,1,''),(74,'Header','header.php',0,0,NULL),(48,'Quản lý trang tin','news.php',0,1,''),(53,'Hỗ trợ trực tuyến','support.php',0,0,''),(52,'Trang nội dung','info.php',0,1,''),(43,'Thông tin cá nhân','profile.php',0,1,''),(89,'Qu&#7843;n l&#253; link - logo','logo.php',4,1,NULL),(77,'Trang ch&#7911;','home.php',0,0,NULL),(94,'Quản lý người dùng','user.php',0,1,''),(98,'Nội dung tĩnh','static.php',5,1,''),(154,'Trang download','download.php',0,0,''),(143,'Chính sách mua hàng','static_text.php',0,0,''),(119,'Cấu hình hiển thị','settingshow.php',4,1,''),(158,'Danh mục hãng sản xuất','product_manufacture.php',0,0,''),(124,'Quản lý Chuyên mục - Category','category.php',0,1,''),(132,'Cấu hình ngôn ngữ','static_lang.php',0,0,''),(135,'Đối tác - Khách hàng','partner.php',0,1,''),(144,'Trang Videos','video.php',0,1,''),(155,'Sản phẩm','product.php',0,0,''),(150,'Danh sách đơn hàng','order.php',0,0,''),(153,'System tools','tool_system_tools.php',0,1,''),(156,'Thuộc tính sản phẩm','attributePro.php',0,0,''),(157,'Liên hệ','contactinfo.php',0,1,''),(159,'Thông tin trên trang liên hệ','contactInfo.php',0,1,''),(160,'Trang Dự Án','du_an.php',0,1,''),(161,'Danh mục tỉnh thành','vn_province.php',0,0,''),(162,'Direct page','direct.php',0,1,''),(163,'Mức giá','price_range.php',0,1,''),(164,'Duyệt bình luận','comment.php',0,0,''),(165,'Bài viết','article.php',0,1,''),(168,'Dịch vụ','service.php',6,1,''),(169,'Hỏi đáp','faq.php',0,0,''),(170,'Hệ thống đại lý','daily.php',0,1,''),(171,'Tuyển dụng','tuyendung.php',0,1,''),(172,'Xem thông tin ứng tuyển','tuyendung_request.php',0,1,''),(174,'Dịch vụ chi tiết','service_detail.php',0,0,''),(175,'Ý kiến khách hàng','ykien.php',0,1,''),(176,'Thư viện hình ảnh','album.php',0,1,''),(177,'Import danh sách bảo hành','import_list.php',0,0,''),(179,'News Letter','newsletter.php',0,1,''),(180,'Lãnh đạo','info_leader.php',0,0,''),(181,'Đơn vị thành viên','info_donvi.php',0,0,''),(182,'Lịch sự kiện - lịch khai giảng','event_calendar.php',0,0,''),(183,'Danh mục xuất xứ','product_material.php',0,1,'');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id_news` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `title` text,
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `imageadv` varchar(255) DEFAULT '0',
  `intro` mediumtext,
  `content` longtext,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `id_user` bigint(20) DEFAULT '0',
  `file` text,
  `hit` int(11) DEFAULT NULL,
  `hot` tinyint(4) DEFAULT '0',
  `inhome` tinyint(4) DEFAULT '0',
  `groupcat` varchar(1000) DEFAULT '0',
  `tags` varchar(1000) DEFAULT NULL,
  `header_tag` text,
  `url` varchar(1000) DEFAULT NULL,
  `form_name` varchar(32) DEFAULT NULL,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_news`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (20,6,'Lorem ipsum dolor sit amet, consectetur adipiscing elit','lorem','Thực tế lâm sàng cho thấy phục hồi chức năng cứng khớp gối mang lại hiệu quả khả quan.\r&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;','phục hồi chức năng cứng khớp gối','/uploaded/su-kien/item2.png','0','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',1656667200,14,1,8,'null',NULL,0,0,':25:','','','phuc-hoi-chuc-nang-cung-khop-goi.html','0',1660215044),(13,10,'Đối tác 1','Đối tác 1','','','/uploaded/doitac/item1.png','0','<div style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.</div>\r\n','',1656305880,7,1,8,'null',NULL,0,0,':','','','doi-tac-1.html','0',1656305950),(14,10,'Đối tác 2','Đối tác 2','','','/uploaded/doitac/item2.png','0','<div style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.</div>\r\n','',1656305940,8,1,8,'null',NULL,0,0,':','','','doi-tac-2.html','0',1656305960),(15,10,'Đối tác 3','Đối tác 3','','','/uploaded/doitac/item3.png','0','<div style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.</div>\r\n','',1656305940,9,1,8,'null',NULL,0,0,':','','','doi-tac-3.html','0',1656305970),(16,10,'Đối tác 4','Đối tác 4','','','/uploaded/doitac/item4.png','0','<div style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.</div>\r\n','',1656305940,10,1,8,'null',NULL,0,0,':','','','doi-tac-4.html','0',1656305998),(17,10,'Đối tác 5','Đối tác 5','','','/uploaded/doitac/item5.png','0','<div style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.</div>\r\n','',1656306000,11,1,8,'null',NULL,0,0,':','','','doi-tac-5.html','0',1656306011),(18,10,'Đối tác 6','Đối tác 6','','','/uploaded/doitac/item6.png','0','<div style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.</div>\r\n','',1656306000,12,1,8,'null',NULL,0,0,':','','','doi-tac-6.html','0',1656306024),(19,6,'Lorem Ipsum','Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Bài viết dưới đây sẽ hướng dẫn tập vật lý trị liệu khớp gối đơn giản có thể áp dụng tại nhà.','hướng dẫn tập vật lý trị liệu khớp gối','/uploaded/su-kien/item3.png','0','<p dir=\"ltr\" style=\"text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing&nbsp;</p>\r\n',' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing ',1656474540,13,1,8,'null',NULL,1,0,':25:','','','huong-dan-tap-vat-ly-tri-lieu-khop-goi-co-ban.html','0',1660215076),(21,6,'Lorem ipsum dolor sit amet, consectetur adipiscing elit','lorem','','','/uploaded/su-kien/item1.png','0','<div style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</div>\r\n','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',1656669660,15,1,8,'null',NULL,1,0,':25:','','','tap-phuc-hoi-chuc-nang-khop-goi-sau-mo.html','0',1660215001),(22,31,'News Event article 01','News Event article 01','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-3.jpg','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.',1657101540,1,1,8,'null',NULL,0,0,':','','','news-event-article-01.html','0',1657101604),(23,31,'News Event article 02','News Event article 02','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-1.jpg','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.',1657101600,2,1,8,'null',NULL,0,0,':','','','news-event-article-02.html','0',1657101643),(24,31,'News Event article 03','News Event article 03','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-1.jpg','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.',1657101600,3,1,8,'null',NULL,0,0,':','','','news-event-article-03.html','0',1657101656),(25,31,'News Event article 04','News Event article 04','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-1.jpg','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.',1657101600,4,1,8,'null',NULL,0,0,':','','','news-event-article-04.html','0',1657101666),(26,31,'News Event article 05','News Event article 05','','','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-1.jpg','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.',1657101600,5,1,8,'null',NULL,0,0,':','','','news-event-article-05.html','0',1657101673);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(600) NOT NULL,
  `message` text NOT NULL,
  `thu_tu` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id_order` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session` tinytext,
  `createdate` bigint(20) unsigned DEFAULT '0',
  `username` varchar(255) DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `content` text,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT '',
  `address` varchar(512) DEFAULT '',
  `addinfo` text,
  `xem` tinyint(4) DEFAULT '0',
  `code` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `total` decimal(10,0) DEFAULT '0',
  `customer_ip` varchar(50) DEFAULT NULL,
  `customer_loc` varchar(128) DEFAULT NULL,
  `payment_type` varchar(256) DEFAULT NULL,
  `transStatus` varchar(256) DEFAULT NULL,
  `TransactionNo` varchar(256) DEFAULT NULL,
  `ResponseCode` varchar(16) DEFAULT NULL,
  `BankCode` varchar(128) DEFAULT NULL,
  `PayDate` varchar(64) DEFAULT NULL,
  `OrderInfo` varchar(512) DEFAULT NULL,
  `pay_status` int(11) DEFAULT '0',
  `last_update` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_order`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner` (
  `id_partner` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `title` text,
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `intro` mediumtext,
  `content` longtext,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `id_user` bigint(20) DEFAULT '0',
  `groupcat` varchar(1000) DEFAULT '0',
  `tags` varchar(1000) DEFAULT NULL,
  `header_tag` text,
  `url` varchar(1000) DEFAULT NULL,
  `company` varchar(512) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_partner`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner`
--

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
INSERT INTO `partner` VALUES (1,10,'Đối tác của MSC 01','Đối tác của MSC 01','','','/uploaded/doitac/item2.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;',1655462280,1,1,14,':',NULL,NULL,'doi-tac-cua-msc-01.html','','','',1655462391),(2,10,'Đối tác của MSC 01','Đối tác của MSC 01','','','/uploaded/doitac/item3.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;',1655462280,2,1,14,':',NULL,NULL,'doi-tac-cua-msc-01.html','','','',1655462420),(3,10,'Đối tác của MSC 01','Đối tác của MSC 01','','','/uploaded/doitac/item4.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;',1655462280,3,1,14,':',NULL,NULL,'doi-tac-cua-msc-01.html','','','',1655462424),(4,10,'Đối tác của MSC 01','Đối tác của MSC 01','','','/uploaded/doitac/item2.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;',1655462280,4,1,14,':',NULL,NULL,'doi-tac-cua-msc-01.html','','','',1655462392),(5,10,'Đối tác của MSC 01','Đối tác của MSC 01','','','/uploaded/doitac/item5.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;',1655462280,5,1,14,':',NULL,NULL,'doi-tac-cua-msc-01.html','','','',1655462439),(6,10,'Đối tác của MSC 01','Đối tác của MSC 01','','','/uploaded/doitac/item6.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;',1655462280,6,1,14,':',NULL,NULL,'doi-tac-cua-msc-01.html','','','',1655462433);
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(50) DEFAULT '0',
  `createdate` bigint(20) unsigned DEFAULT '0',
  `transStatus` varchar(255) DEFAULT '',
  `merchantID` varchar(255) DEFAULT '0',
  `merchTxnRef` varchar(255) DEFAULT '',
  `orderInfo` varchar(255) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `txnResponseCode` varchar(50) DEFAULT '',
  `txnResponseText` varchar(512) DEFAULT '',
  `message` text,
  `transactionNo` varchar(50) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `last_update` bigint(20) DEFAULT NULL,
  `client_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_range`
--

DROP TABLE IF EXISTS `price_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_range` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `min_value` bigint(20) DEFAULT '0',
  `max_value` bigint(20) DEFAULT '0',
  `content` varchar(1024) CHARACTER SET utf8mb4 DEFAULT NULL,
  `thu_tu` int(11) DEFAULT '0',
  `lang` varchar(255) DEFAULT '',
  `active` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_range`
--

LOCK TABLES `price_range` WRITE;
/*!40000 ALTER TABLE `price_range` DISABLE KEYS */;
INSERT INTO `price_range` VALUES (1,'< 1.000.000',0,1000000,NULL,0,'',1),(2,'1.000.000 - 2.000.000',1000000,2000000,NULL,0,'',1),(4,'2.000.000 - 3.000.000',2000000,3000000,NULL,0,'',1),(5,'3.000.000 - 4.000.000',3000000,4000000,NULL,0,'',1),(7,'Trên 200',4000000,400000000,NULL,0,'',1);
/*!40000 ALTER TABLE `price_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_attribute`
--

DROP TABLE IF EXISTS `pro_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `default_value` text NOT NULL,
  `style` text NOT NULL,
  `alias_name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_attribute`
--

LOCK TABLES `pro_attribute` WRITE;
/*!40000 ALTER TABLE `pro_attribute` DISABLE KEYS */;
INSERT INTO `pro_attribute` VALUES (43,'Kích thước','','','','kich-thuoc'),(44,'Trọng lượng','','','','trong-luong'),(45,'Chất liệu','','','','chat-lieu'),(46,'Thời gian ST','','','','thoi-gian-st'),(47,'Cao','','','','cao'),(48,'Dài','','','','dai'),(49,'Rộng','','','','rong'),(50,'Xuất Xứ','','','','xuat-xu');
/*!40000 ALTER TABLE `pro_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id_product` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `km` double DEFAULT '0',
  `pricekm` varchar(90) DEFAULT NULL,
  `giaphukien` bigint(20) DEFAULT '0',
  `don_vi` varchar(255) DEFAULT NULL,
  `intro` text,
  `content` longtext CHARACTER SET utf8mb4,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `id_user` tinyint(3) unsigned DEFAULT '0',
  `thu_tu` int(4) DEFAULT '0',
  `hit` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `ma` varchar(255) DEFAULT NULL,
  `groupcat` text,
  `fileurl` varchar(1000) DEFAULT NULL,
  `moi` int(11) DEFAULT '0',
  `title` varchar(600) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `tags` varchar(1000) DEFAULT NULL,
  `header_tag` text,
  `size` varchar(512) DEFAULT NULL,
  `color` varchar(512) DEFAULT NULL,
  `product_ver` varchar(512) DEFAULT NULL,
  `ttkhuyenmai` text,
  `url` varchar(1000) DEFAULT NULL,
  `chatlieu` varchar(500) DEFAULT NULL,
  `kichthuoc` varchar(600) DEFAULT NULL,
  `xuatxu` varchar(600) DEFAULT NULL,
  `relate_project` longtext,
  `phukien` varchar(600) DEFAULT '0',
  `attr` longtext,
  `icon` varchar(10) DEFAULT 'none',
  `videourl` varchar(1000) DEFAULT NULL,
  `texticon` varchar(255) DEFAULT NULL,
  `contenttab0` text,
  `contenttab1` text,
  `contenttab2` text,
  `spcungloai` varchar(1000) DEFAULT NULL,
  `id_manufacture` bigint(20) DEFAULT NULL,
  `image_list` text,
  `last_modify` bigint(20) DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_product`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attribute`
--

DROP TABLE IF EXISTS `product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_product` bigint(20) NOT NULL,
  `id_attr` bigint(20) NOT NULL,
  `attr_value` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute`
--

LOCK TABLES `product_attribute` WRITE;
/*!40000 ALTER TABLE `product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_manufacture`
--

DROP TABLE IF EXISTS `product_manufacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_manufacture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `intro` text COLLATE utf8_unicode_ci,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thu_tu` bigint(20) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `alias_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` int(11) DEFAULT '0',
  `url` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_manufacture`
--

LOCK TABLES `product_manufacture` WRITE;
/*!40000 ALTER TABLE `product_manufacture` DISABLE KEYS */;
INSERT INTO `product_manufacture` VALUES (2,0,'Tên hãng SX 03','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.<br />\r\n<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam','',1,1,'ten-hang-sx-03/',0,'ten-hang-sx-03.html'),(3,0,'Tên hãng SX 02','/uploaded/y-kien-khach-hang/man.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.<br />\r\n<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam','',1,1,'ten-hang-sx-02/',0,'ten-hang-sx-02.html');
/*!40000 ALTER TABLE `product_manufacture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_material`
--

DROP TABLE IF EXISTS `product_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `intro` text COLLATE utf8_unicode_ci,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thu_tu` bigint(20) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `alias_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` int(11) DEFAULT '0',
  `url` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_material`
--

LOCK TABLES `product_material` WRITE;
/*!40000 ALTER TABLE `product_material` DISABLE KEYS */;
INSERT INTO `product_material` VALUES (6,0,'Hàn quốc','','','','',1,1,'han-quoc/',0,'han-quoc.html'),(7,0,'Thailand','','','','',1,1,'thailand/',0,'thailand.html'),(5,0,'Nhật Bản','','','','',1,1,'nhat-ban/',0,'nhat-ban.html');
/*!40000 ALTER TABLE `product_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_content`
--

DROP TABLE IF EXISTS `search_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_content` (
  `id_search` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `name_unsign` text,
  `intro` longtext,
  `intro_unsign` longtext,
  `content` longtext,
  `content_unsign` longtext,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `keywords` text,
  `lang` varchar(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `tags` varchar(1000) DEFAULT NULL,
  `search_type` varchar(255) DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL,
  `id_category` int(11) DEFAULT '0',
  `id_item` varchar(255) DEFAULT NULL,
  `id_item_value` bigint(20) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_search`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=628 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_content`
--

LOCK TABLES `search_content` WRITE;
/*!40000 ALTER TABLE `search_content` DISABLE KEYS */;
INSERT INTO `search_content` VALUES (624,'BÙI DANH TRƯỜNG','bui danh truong','','','','',1660714552,NULL,'',1,'',NULL,'bui-danh-truong.html',9,'id_info',9,'info_leader','/uploaded/doi-ngu-chuyen-gia/Ch%C3%A2n%20dung/MD%20Bui%20Danh%20Truong.png'),(623,'Bác sĩ Ivan Reich','bac si ivan reich','','','','',1660710594,NULL,'',1,'',NULL,'bac-si-ivan-reich.html',0,'id_info',6,'info','/uploaded/doi-ngu-chuyen-gia/Dr.-Ivan-Reich-739x1024-removebg-preview.png'),(534,'Tìm hiểu về thực hiện phục hồi chức năng cứng khớp gối','tim hieu ve thuc hien phuc hoi chuc nang cung khop goi','Cứng khớp gối l&agrave; hiện tượng đầu gối bị co cứng l&agrave;m người bệnh gặp kh&oacute; khăn trong việc cử động khớp gối. Đ&acirc;y cũng l&agrave; dấu hiệu của nhiều bệnh l&yacute; v&agrave; ảnh hưởng kh&ocirc;ng nhỏ tới sinh hoạt. Thực tế l&acirc;m s&agrave;ng cho thấy phục hồi chức năng cứng khớp gối mang lại hiệu quả khả quan.\r\n','cung khop goi la hien tuong dau goi bi co cung lam nguoi benh gap kho khan trong viec cu dong khop goi. day cung la dau hieu cua nhieu benh ly va anh huong khong nho toi sinh hoat. thuc te lam sang cho thay phuc hoi chuc nang cung khop goi mang lai hieu qua kha quan.\r\n','1. Cứng khớp gối l&agrave; g&igrave;? Triệu chứng?\r\n\r\nCứng khớp gối l&agrave; hiện tượng xảy ra khi đầu gối co cứng, khớp gối kh&oacute; vận động. T&igrave;nh trạng n&agrave;y xuất hiện ở một/cả hai b&ecirc;n ch&acirc;n, thường gặp sau một thời gian &iacute;t hoạt động, sau khi xoa b&oacute;p th&igrave; đi lại được.\r\n\r\nT&ugrave;y theo nguy&ecirc;n nh&acirc;n, t&igrave;nh trạng cứng khớp gối c&oacute; thể xuất hiện k&egrave;m:\r\n\r\n\r\n	\r\n	Khớp gối mất duỗi, kh&ocirc;ng thể duỗi thẳng ch&acirc;n.\r\n	\r\n	\r\n	Đi lại khập khiễng do 1 b&ecirc;n khớp gối co cứng\r\n	\r\n	\r\n	Đau, n&oacute;ng đỏ/sưng tại khớp.\r\n	\r\n	\r\n	Chảy m&aacute;u/bầm t&iacute;m.\r\n	\r\n	\r\n	Teo cơ.\r\n	\r\n	\r\n	Sốt, mệt mỏi.\r\n	\r\n\r\n\r\n\r\n\r\nCứng khớp gối xảy ra ở bất cứ độ tuổi n&agrave;o?\r\n\r\n&nbsp;\r\n\r\n2. Nguy&ecirc;n nh&acirc;n g&acirc;y cứng khớp gối\r\n\r\nC&oacute; nhiều nguy&ecirc;n nh&acirc;n c&oacute; thể dẫn tới cứng khớp gối c&oacute; thể kể đến như:\r\n\r\n2.1. Chấn thương\r\n\r\nChấn thương xương, sụn, d&acirc;y chằng&hellip;. đều c&oacute; thể dẫn đến cứng khớp gối.\r\n\r\n2.2. Bệnh l&yacute;\r\n\r\n\r\n	\r\n	Tho&aacute;i h&oacute;a khớp: khiến khớp kh&ocirc;ng linh hoạt, đau v&agrave; cứng khớp gối sau một thời gian &iacute;t hoạt động.\r\n	\r\n	\r\n	Gout: thường sưng đau n&oacute;ng đỏ, cứng khớp tại khớp b&agrave;n ng&oacute;n tay, cổ tay, khuỷu, b&agrave;n ng&oacute;n ch&acirc;n, cỏ ch&acirc;n, gối,&hellip;\r\n	\r\n	\r\n	Vi&ecirc;m khớp dạng thấp g&acirc;y tổn thương ở sụn/xương, khiến khớp gối cứng lại, thậm ch&iacute; tiến tới biến chứng: biến dạng, d&iacute;nh khớp,&hellip;\r\n	\r\n\r\n\r\n2.3. Nguy&ecirc;n nh&acirc;n kh&aacute;c\r\n\r\n\r\n	\r\n	Sau phẫu thuật, b&oacute; bột &hellip; khớp bất động trong thời gian d&agrave;i, tổ chức tại khớp xơ h&oacute;a v&agrave; g&acirc;y cứng khớp gối, hạn chế vận động.\r\n	\r\n	\r\n	Bẩm sinh.\r\n	\r\n\r\n\r\n\r\n\r\nB&oacute; bột thời gian d&agrave;i c&oacute; thể g&acirc;y cứng khớp gối\r\n\r\n3. Phục hồi chức năng cứng khớp gối mang lại hiệu quả như thế n&agrave;o?\r\n\r\nCứng khớp gối li&ecirc;n quan đến nhiều nguy&ecirc;n nh&acirc;n nhưng về bản chất đều l&agrave; những tổn thương đến sụn, xương v&agrave; tổ chức bao quanh khiến khớp kh&ocirc;ng linh hoạt v&agrave; hạn chế một số cử động.\r\n\r\n\r\n\r\nPhục hồi chức năng cứng khớp gối cho kết quả khả quan\r\n\r\nKhi t&igrave;nh trạng n&agrave;y xảy ra, ngo&agrave;i t&igrave;m kiếm v&agrave; điều trị nguy&ecirc;n nh&acirc;n bệnh, kết hợp phục hồi chức năng cứng khớp gối l&agrave; c&aacute;ch điều trị hữu hiệu, gi&uacute;p người bệnh cải thiện khả năng vận động v&agrave; kh&ocirc;ng cản trở qu&aacute; tr&igrave;nh sinh hoạt, n&acirc;ng cao chất lượng cuộc sống.\r\n\r\nMỗi phương ph&aacute;p phục hồi chức năng cứng khớp gối mang lại t&aacute;c dụng nhất định:\r\n\r\n\r\n	Nhiệt trị liệu: gi&atilde;n mạch, l&agrave;m mềm cơ đang bị co cứng.\r\n	Điện trị liệu: giảm đau, vi&ecirc;m, giảm xơ cứng\r\n	Si&ecirc;u &acirc;m điều trị: tăng hoạt động m&agrave;ng tế b&agrave;o, th&uacute;c đẩy tuần ho&agrave;n, giảm đau, giảm vi&ecirc;m, giảm kết d&iacute;nh.\r\n	Laser trị liệu: giảm đau, k&iacute;ch th&iacute;ch t&aacute;i tạo m&ocirc;.\r\n	Vận động trị liệu: tăng tầm vận động khớp cho người bệnh đang bị hạn chế tầm vận động.\r\n\r\n\r\n4. Hướng dẫn tập phục hồi chức năng cứng khớp gối\r\n\r\nT&ugrave;y t&igrave;nh trạng, b&aacute;c sĩ sẽ c&oacute; những b&agrave;i tập ri&ecirc;ng ph&ugrave; hợp v&agrave; tập luyện đ&uacute;ng c&aacute;ch l&agrave; phương ph&aacute;p điều trị c&oacute; gi&aacute; trị cho t&igrave;nh trạng cứng khớp gối.\r\n\r\nMột số b&agrave;i tập thường được &aacute;p dụng khi phục hồi chức năng cứng khớp gối:\r\n\r\n4.1 Gấp duỗi gối\r\n\r\n\r\n\r\n\r\n	\r\n	Gập gối chủ động: nằm sấp, duỗi thẳng ch&acirc;n, gập cẳng ch&acirc;n về ph&iacute;a m&ocirc;ng v&agrave; quay về vị tr&iacute; ban đầu. Lặp lại 10-15 lần mỗi b&ecirc;n ch&acirc;n.\r\n	\r\n\r\n\r\n\r\n	\r\n	Gập gối chủ động\r\n	\r\n\r\n\r\n\r\n	\r\n	Gập gối thụ động: ở tư thế nằm sấp, d&ugrave;ng 1 sợi d&acirc;y đeo v&agrave;o cổ/b&agrave;n ch&acirc;n, 1 đầu cầm trong tay v&agrave; giơ tay qua vai. D&ugrave;ng lực tay th&ocirc;ng qua sợi d&acirc;y k&eacute;o gập cẳng ch&acirc;n v&agrave;o m&ocirc;ng, giữ ở tư thế v&agrave; lặp lại 10-15 lần mỗi b&ecirc;n ch&acirc;n\r\n	\r\n\r\n\r\n4.2 Gi&atilde;n cơ đ&ugrave;i sau\r\n\r\n\r\n\r\n\r\n	\r\n	Người thực hiện nằm ngửa tr&ecirc;n s&agrave;n, thư gi&atilde;n cơ thể v&agrave; từ từ n&acirc;ng cao ch&acirc;n sao cho đầu gối thẳng v&agrave; ch&acirc;n vu&ocirc;ng g&oacute;c với s&agrave;n nh&agrave;. Ngo&agrave;i ra bạn c&oacute; thể d&ugrave;ng d&acirc;y đeo v&agrave;o b&agrave;n ch&acirc;n v&agrave; d&ugrave;ng tay k&eacute;o để hỗ trợ.\r\n	\r\n	\r\n	Giữ ở tư thế n&agrave;y trong 30 gi&acirc;y rồi hạ xuống từ từ. Lặp lại ở cả 2 ch&acirc;n.\r\n	\r\n\r\n\r\n5. Lưu &yacute; khi tập phục hồi chức năng cứng khớp gối\r\n\r\nMặc d&ugrave; tập phục hồi chức năng cứng khớp gối rất c&oacute; gi&aacute; trị gi&uacute;p người bệnh tho&aacute;t khỏi cứng khớp gối, cần lưu &yacute; rằng:\r\n\r\n\r\n	\r\n	B&agrave;i tập cần thực hiện dựa tr&ecirc;n hướng dẫn của b&aacute;c sĩ/kỹ thuật vi&ecirc;n chuy&ecirc;n khoa, tr&aacute;nh động t&aacute;c sai tư thế.\r\n	\r\n	\r\n	Việc tập luyện cần ki&ecirc;n tr&igrave;.\r\n	\r\n	\r\n	Tạo th&oacute;i quen tập luyện h&agrave;ng ng&agrave;y gi&uacute;p tăng cường độ dẻo dai linh hoạt cho khớp.\r\n	\r\n\r\n\r\nPhục hồi chức năng cứng khớp gối chỉ l&agrave; phương ph&aacute;p hỗ trợ. Người bệnh cần đến cơ sở y tế để kh&aacute;m v&agrave; t&igrave;m kiếm phương ph&aacute;p điều trị hiện đại để triệt để cắt đứt căn nguy&ecirc;n bệnh.&nbsp;\r\n','1. cung khop goi la gi? trieu chung?\r\n\r\ncung khop goi la hien tuong xay ra khi dau goi co cung, khop goi kho van dong. tinh trang nay xuat hien o mot/ca hai ben chan, thuong gap sau mot thoi gian it hoat dong, sau khi xoa bop thi di lai duoc.\r\n\r\ntuy theo nguyen nhan, tinh trang cung khop goi co the xuat hien kem:\r\n\r\n\r\n	\r\n	khop goi mat duoi, khong the duoi thang chan.\r\n	\r\n	\r\n	di lai khap khieng do 1 ben khop goi co cung\r\n	\r\n	\r\n	dau, nong do/sung tai khop.\r\n	\r\n	\r\n	chay mau/bam tim.\r\n	\r\n	\r\n	teo co.\r\n	\r\n	\r\n	sot, met moi.\r\n	\r\n\r\n\r\n\r\n\r\ncung khop goi xay ra o bat cu do tuoi nao?\r\n\r\n \r\n\r\n2. nguyen nhan gay cung khop goi\r\n\r\nco nhieu nguyen nhan co the dan toi cung khop goi co the ke den nhu:\r\n\r\n2.1. chan thuong\r\n\r\nchan thuong xuong, sun, day chang…. deu co the dan den cung khop goi.\r\n\r\n2.2. benh ly\r\n\r\n\r\n	\r\n	thoai hoa khop: khien khop khong linh hoat, dau va cung khop goi sau mot thoi gian it hoat dong.\r\n	\r\n	\r\n	gout: thuong sung dau nong do, cung khop tai khop ban ngon tay, co tay, khuyu, ban ngon chan, co chan, goi,…\r\n	\r\n	\r\n	viem khop dang thap gay ton thuong o sun/xuong, khien khop goi cung lai, tham chi tien toi bien chung: bien dang, dinh khop,…\r\n	\r\n\r\n\r\n2.3. nguyen nhan khac\r\n\r\n\r\n	\r\n	sau phau thuat, bo bot … khop bat dong trong thoi gian dai, to chuc tai khop xo hoa va gay cung khop goi, han che van dong.\r\n	\r\n	\r\n	bam sinh.\r\n	\r\n\r\n\r\n\r\n\r\nbo bot thoi gian dai co the gay cung khop goi\r\n\r\n3. phuc hoi chuc nang cung khop goi mang lai hieu qua nhu the nao?\r\n\r\ncung khop goi lien quan den nhieu nguyen nhan nhung ve ban chat deu la nhung ton thuong den sun, xuong va to chuc bao quanh khien khop khong linh hoat va han che mot so cu dong.\r\n\r\n\r\n\r\nphuc hoi chuc nang cung khop goi cho ket qua kha quan\r\n\r\nkhi tinh trang nay xay ra, ngoai tim kiem va dieu tri nguyen nhan benh, ket hop phuc hoi chuc nang cung khop goi la cach dieu tri huu hieu, giup nguoi benh cai thien kha nang van dong va khong can tro qua trinh sinh hoat, nang cao chat luong cuoc song.\r\n\r\nmoi phuong phap phuc hoi chuc nang cung khop goi mang lai tac dung nhat dinh:\r\n\r\n\r\n	nhiet tri lieu: gian mach, lam mem co dang bi co cung.\r\n	dien tri lieu: giam dau, viem, giam xo cung\r\n	sieu am dieu tri: tang hoat dong mang te bao, thuc day tuan hoan, giam dau, giam viem, giam ket dinh.\r\n	laser tri lieu: giam dau, kich thich tai tao mo.\r\n	van dong tri lieu: tang tam van dong khop cho nguoi benh dang bi han che tam van dong.\r\n\r\n\r\n4. huong dan tap phuc hoi chuc nang cung khop goi\r\n\r\ntuy tinh trang, bac si se co nhung bai tap rieng phu hop va tap luyen dung cach la phuong phap dieu tri co gia tri cho tinh trang cung khop goi.\r\n\r\nmot so bai tap thuong duoc ap dung khi phuc hoi chuc nang cung khop goi:\r\n\r\n4.1 gap duoi goi\r\n\r\n\r\n\r\n\r\n	\r\n	gap goi chu dong: nam sap, duoi thang chan, gap cang chan ve phia mong va quay ve vi tri ban dau. lap lai 10-15 lan moi ben chan.\r\n	\r\n\r\n\r\n\r\n	\r\n	gap goi chu dong\r\n	\r\n\r\n\r\n\r\n	\r\n	gap goi thu dong: o tu the nam sap, dung 1 soi day deo vao co/ban chan, 1 dau cam trong tay va gio tay qua vai. dung luc tay thong qua soi day keo gap cang chan vao mong, giu o tu the va lap lai 10-15 lan moi ben chan\r\n	\r\n\r\n\r\n4.2 gian co dui sau\r\n\r\n\r\n\r\n\r\n	\r\n	nguoi thuc hien nam ngua tren san, thu gian co the va tu tu nang cao chan sao cho dau goi thang va chan vuong goc voi san nha. ngoai ra ban co the dung day deo vao ban chan va dung tay keo de ho tro.\r\n	\r\n	\r\n	giu o tu the nay trong 30 giay roi ha xuong tu tu. lap lai o ca 2 chan.\r\n	\r\n\r\n\r\n5. luu y khi tap phuc hoi chuc nang cung khop goi\r\n\r\nmac du tap phuc hoi chuc nang cung khop goi rat co gia tri giup nguoi benh thoat khoi cung khop goi, can luu y rang:\r\n\r\n\r\n	\r\n	bai tap can thuc hien dua tren huong dan cua bac si/ky thuat vien chuyen khoa, tranh dong tac sai tu the.\r\n	\r\n	\r\n	viec tap luyen can kien tri.\r\n	\r\n	\r\n	tao thoi quen tap luyen hang ngay giup tang cuong do deo dai linh hoat cho khop.\r\n	\r\n\r\n\r\nphuc hoi chuc nang cung khop goi chi la phuong phap ho tro. nguoi benh can den co so y te de kham va tim kiem phuong phap dieu tri hien dai de triet de cat dut can nguyen benh. \r\n',1658390337,NULL,'',1,'',NULL,'phuc-hoi-chuc-nang-cung-khop-goi.html',6,'id_news',20,'news','/uploaded/kien-thuc-y-khoa/phuc-hoi-chuc-nang-cung-khop-goi.jpg'),(619,'CAO MINH CHÂU','cao minh chau','<meta charset=\"utf-8\" />\r\n<div style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</div>\r\n','\r\nlorem ipsum is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum\r\n','<div style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</div>\r\n','lorem ipsum is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsumlorem ipsum is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum\r\n',1660621849,NULL,'',1,'',NULL,'gs-ts-bs-cao-minh-chau.html',9,'id_info',8,'info_leader','/uploaded/files/banner%20MSC%20-wed-05%20(1).jpg'),(620,'TRẦN TRỌNG THẮNG','tran trong thang','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum','lorem ipsum is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum','lorem ipsum is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum',1660621892,NULL,'',1,'',NULL,'bac-si-chuyen-khoa-ii-tran-trong-thang.html',9,'id_info',7,'info_leader','/uploaded/user/Layer%2028.png'),(621,'Nguyễn Khánh Huyền','nguyen khanh huyen','<div style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</div>\r\n','lorem ipsum is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum\r\n','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum','lorem ipsum is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum',1660622244,NULL,'',1,'',NULL,'doi-ngu-bac-si-tu-van-msc-clinic.html',9,'id_info',5,'info_leader','/uploaded/user/user1.png'),(536,'Đối tác 1','doi tac 1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.\r\n','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam.\r\n','','',1658390337,NULL,'',1,'',NULL,'doi-tac-1.html',10,'id_news',13,'news','/uploaded/doitac/item1.png'),(537,'Đối tác 2','doi tac 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.\r\n','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam.\r\n','','',1658390337,NULL,'',1,'',NULL,'doi-tac-2.html',10,'id_news',14,'news','/uploaded/doitac/item2.png'),(538,'Đối tác 3','doi tac 3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.\r\n','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam.\r\n','','',1658390337,NULL,'',1,'',NULL,'doi-tac-3.html',10,'id_news',15,'news','/uploaded/doitac/item3.png'),(539,'Đối tác 4','doi tac 4','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.\r\n','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam.\r\n','','',1658390337,NULL,'',1,'',NULL,'doi-tac-4.html',10,'id_news',16,'news','/uploaded/doitac/item4.png'),(540,'Đối tác 5','doi tac 5','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.\r\n','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam.\r\n','','',1658390337,NULL,'',1,'',NULL,'doi-tac-5.html',10,'id_news',17,'news','/uploaded/doitac/item5.png'),(541,'Đối tác 6','doi tac 6','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam.\r\n','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam.\r\n','','',1658390337,NULL,'',1,'',NULL,'doi-tac-6.html',10,'id_news',18,'news','/uploaded/doitac/item6.png'),(542,'Hướng dẫn tập vật lý trị liệu khớp gối cơ bản','huong dan tap vat ly tri lieu khop goi co ban','Khớp gối l&agrave; một khớp thường xuy&ecirc;n chịu lực lớn của cơ thể, do đ&oacute; rất dễ d&agrave;ng bị tổn thương. Trong rất nhiều trường hợp, thực hiện những b&agrave;i tập vật l&yacute; trị liệu ph&ugrave; hợp gi&uacute;p người bệnh vượt qua những cơn đau v&agrave; tăng cường sức khỏe xương khớp.\r\n\r\nB&agrave;i viết dưới đ&acirc;y sẽ hướng dẫn tập vật l&yacute; trị liệu khớp gối đơn giản c&oacute; thể &aacute;p dụng tại nh&agrave;.\r\n','khop goi la mot khop thuong xuyen chiu luc lon cua co the, do do rat de dang bi ton thuong. trong rat nhieu truong hop, thuc hien nhung bai tap vat ly tri lieu phu hop giup nguoi benh vuot qua nhung con dau va tang cuong suc khoe xuong khop.\r\n\r\nbai viet duoi day se huong dan tap vat ly tri lieu khop goi don gian co the ap dung tai nha.\r\n','1. Trường hợp cần tập vật l&yacute; trị liệu khớp gối\r\n\r\nC&aacute;c b&agrave;i tập vật l&yacute; trị liệu khớp gối c&oacute; thể được ứng dụng rộng r&atilde;i trong nhiều trường hợp kh&aacute;c nhau như t&igrave;nh trạng cứng khớp gối khiến người bệnh vận động kh&oacute; khăn, tho&aacute;i h&oacute;a khớp gối, phục hồi khớp gối sau c&aacute;c chấn thương, phẫu thuật can thiệp hay thậm ch&iacute; l&agrave; chuẩn bị trước những cuộc phẫu thuật khớp gối đặc biệt.\r\n\r\nTrong từng trường hợp bệnh l&yacute;, t&ugrave;y v&agrave;o t&igrave;nh trạng sức khỏe, t&igrave;nh trạng tổn thương v&agrave; mục đ&iacute;ch điều trị, b&aacute;c sĩ sẽ hướng dẫn tập vật l&yacute; trị liệu khớp gối với những b&agrave;i tập kh&aacute;c nhau ph&ugrave; hợp nhất.\r\n\r\n\r\n\r\nTrường hợp n&agrave;o cần tập vật l&yacute; trị liệu khớp gối?\r\n\r\n2. C&aacute;c hướng dẫn tập vật l&yacute; trị liệu khớp gối\r\n\r\nMột số biện ph&aacute;p tập vật l&yacute; trị liệu c&oacute; thể được &aacute;p dụng t&ugrave;y t&igrave;nh trạng bệnh nh&acirc;n bao gồm:\r\n\r\n\r\n	\r\n	Nhiệt trị liệu: chiếu đ&egrave;n hồng ngoại, đắp parafin, chườm ấm gi&uacute;p l&agrave;m gi&atilde;n mạch, giảm co cơ,&nbsp; gi&uacute;p người bệnh vận động khớp dễ d&agrave;ng hơn.\r\n	\r\n	\r\n	Điện trị liệu: đưa c&aacute;c d&ograve;ng điện đặc biệt v&agrave;o cơ thể nhằm ức chế đường dẫn truyền thần kinh gi&uacute;p giảm co thắt, giảm đau, giảm vi&ecirc;m.\r\n	\r\n	\r\n	S&oacute;ng ngắn: l&agrave;m tăng tuần ho&agrave;n, tăng dinh dưỡng v&ugrave;ng tổn thương.\r\n	\r\n	\r\n	Si&ecirc;u &acirc;m điều trị: k&iacute;ch th&iacute;ch tăng hoạt động m&agrave;ng tế b&agrave;o, tăng cường tuần ho&agrave;n v&agrave; dinh dưỡng cục bộ, giảm đau, giảm vi&ecirc;m, giảm kết d&iacute;nh.\r\n	\r\n	\r\n	Laser: giảm đau, k&iacute;ch th&iacute;ch t&aacute;i tạo m&ocirc;.\r\n	\r\n	\r\n	Vận động trị liệu: lấy lại c&acirc;n bằng hệ cơ xương khớp, kh&ocirc;i phục khả năng hoạt động cho người bệnh.\r\n	\r\n\r\n\r\nT&ugrave;y từng t&igrave;nh trạng bệnh v&agrave; mục ti&ecirc;u điều trị, b&aacute;c sĩ sẽ chỉ định cho mỗi người bệnh những b&agrave;i tập kh&aacute;c nhau. Sau đ&acirc;y l&agrave; một số b&agrave;i tập khớp gối thường xuy&ecirc;n được &aacute;p dụng:\r\n\r\nB&agrave;i tập 1: Gi&atilde;n g&acirc;n cơ đ&ugrave;i sau\r\n\r\nH&atilde;y nằm ngửa tr&ecirc;n s&agrave;n v&agrave; thả lỏng cơ thể, d&ugrave;ng một d&acirc;y đeo v&agrave;o b&agrave;n ch&acirc;n, tay giữ 2 đầu d&acirc;y. Giữ ch&acirc;n ở vị tr&iacute; cao nhất c&oacute; thể trong 20-30 gi&acirc;y rồi từ từ hạ ch&acirc;n xuống. Lặp lại tương tự cho ch&acirc;n c&ograve;n lại. Với b&agrave;i tập n&agrave;y bạn sẽ cảm thấy căng cơ dọc sau đ&ugrave;i v&agrave; lực k&eacute;o ph&iacute;a sau đầu gối.\r\n\r\n\r\n\r\nHướng dẫn tập vật l&yacute; trị liệu khớp gối\r\n\r\nB&agrave;i tập 2: N&acirc;ng ch&acirc;n\r\n\r\nNgười tập nằm ngửa tr&ecirc;n s&agrave;n, d&ugrave;ng khuỷu tay để hỗ trợ n&acirc;ng cao th&acirc;n tr&ecirc;n, gập gối tr&aacute;i. Ch&acirc;n phải giữ thẳng v&agrave; từ từ n&acirc;ng l&ecirc;n sao cho đầu gối giữ thẳng, duy tr&igrave; trong 3 gi&acirc;y rồi từ từ xuống. Lặp lại động t&aacute;c 10-15 lần v&agrave; thực hiện tương tự cho ch&acirc;n c&ograve;n lại.\r\n\r\n\r\n\r\nHướng dẫn tập vật l&yacute; trị liệu khớp gối\r\n\r\nB&agrave;i tập 3: Gập gối chủ động\r\n\r\nNgười tập nằm sấp v&agrave; duỗi thẳng ch&acirc;n, c&oacute; thể đặt khăn mềm dưới đầu gối. Chủ động gập cẳng ch&acirc;n về ph&iacute;a m&ocirc;ng v&agrave; trở về vị tr&iacute; ban đầu. H&atilde;y lặp lại 10-20 lần với mỗi b&ecirc;n.\r\n\r\n\r\n\r\nHướng dẫn tập vật l&yacute; trị liệu khớp gối\r\n\r\nB&agrave;i tập 4: Gi&atilde;n cơ bắp ch&acirc;n\r\n\r\nNgười tập đứng b&aacute;m v&agrave;o một vật cứng như b&agrave;n/ghế để giữ thăng bằng. Bước ch&acirc;n phải ra sau, nhấn g&oacute;t ch&acirc;n xuống nền. L&uacute;c n&agrave;y bạn sẽ cảm thấy căng bắp ch&acirc;n phải. Giữ y&ecirc;n trong 20 gi&acirc;y v&agrave; về tư thế ban đầu. Thực hiện tương tự với ch&acirc;n c&ograve;n lại.\r\n\r\n\r\n\r\nHướng dẫn tập vật l&yacute; trị liệu khớp gối\r\n\r\nViệc luyện tập thực hiện c&aacute;c b&agrave;i tập vật l&yacute; trị liệu khớp gối gi&uacute;p người bệnh tăng tầm vận động khớp gối, tăng sức mạnh cơ, giảm nguy cơ cứng d&iacute;nh khớp gối, gi&uacute;p người bệnh trở lại c&aacute;c vận động sinh hoạt v&agrave; chơi thể thao b&igrave;nh thường.\r\n\r\nTr&ecirc;n đ&acirc;y l&agrave; một số b&agrave;i tập vận động trị liệu v&ugrave;ng gối cơ bản. để đảm bảo an to&agrave;n, bạn n&ecirc;n tham khảo &yacute; kiến của b&aacute;c sĩ về t&igrave;nh trạng của m&igrave;nh trước c&aacute;c b&agrave;i tập phục hồi chức năng khớp gối n&agrave;y.\r\n','1. truong hop can tap vat ly tri lieu khop goi\r\n\r\ncac bai tap vat ly tri lieu khop goi co the duoc ung dung rong rai trong nhieu truong hop khac nhau nhu tinh trang cung khop goi khien nguoi benh van dong kho khan, thoai hoa khop goi, phuc hoi khop goi sau cac chan thuong, phau thuat can thiep hay tham chi la chuan bi truoc nhung cuoc phau thuat khop goi dac biet.\r\n\r\ntrong tung truong hop benh ly, tuy vao tinh trang suc khoe, tinh trang ton thuong va muc dich dieu tri, bac si se huong dan tap vat ly tri lieu khop goi voi nhung bai tap khac nhau phu hop nhat.\r\n\r\n\r\n\r\ntruong hop nao can tap vat ly tri lieu khop goi?\r\n\r\n2. cac huong dan tap vat ly tri lieu khop goi\r\n\r\nmot so bien phap tap vat ly tri lieu co the duoc ap dung tuy tinh trang benh nhan bao gom:\r\n\r\n\r\n	\r\n	nhiet tri lieu: chieu den hong ngoai, dap parafin, chuom am giup lam gian mach, giam co co,  giup nguoi benh van dong khop de dang hon.\r\n	\r\n	\r\n	dien tri lieu: dua cac dong dien dac biet vao co the nham uc che duong dan truyen than kinh giup giam co that, giam dau, giam viem.\r\n	\r\n	\r\n	song ngan: lam tang tuan hoan, tang dinh duong vung ton thuong.\r\n	\r\n	\r\n	sieu am dieu tri: kich thich tang hoat dong mang te bao, tang cuong tuan hoan va dinh duong cuc bo, giam dau, giam viem, giam ket dinh.\r\n	\r\n	\r\n	laser: giam dau, kich thich tai tao mo.\r\n	\r\n	\r\n	van dong tri lieu: lay lai can bang he co xuong khop, khoi phuc kha nang hoat dong cho nguoi benh.\r\n	\r\n\r\n\r\ntuy tung tinh trang benh va muc tieu dieu tri, bac si se chi dinh cho moi nguoi benh nhung bai tap khac nhau. sau day la mot so bai tap khop goi thuong xuyen duoc ap dung:\r\n\r\nbai tap 1: gian gan co dui sau\r\n\r\nhay nam ngua tren san va tha long co the, dung mot day deo vao ban chan, tay giu 2 dau day. giu chan o vi tri cao nhat co the trong 20-30 giay roi tu tu ha chan xuong. lap lai tuong tu cho chan con lai. voi bai tap nay ban se cam thay cang co doc sau dui va luc keo phia sau dau goi.\r\n\r\n\r\n\r\nhuong dan tap vat ly tri lieu khop goi\r\n\r\nbai tap 2: nang chan\r\n\r\nnguoi tap nam ngua tren san, dung khuyu tay de ho tro nang cao than tren, gap goi trai. chan phai giu thang va tu tu nang len sao cho dau goi giu thang, duy tri trong 3 giay roi tu tu xuong. lap lai dong tac 10-15 lan va thuc hien tuong tu cho chan con lai.\r\n\r\n\r\n\r\nhuong dan tap vat ly tri lieu khop goi\r\n\r\nbai tap 3: gap goi chu dong\r\n\r\nnguoi tap nam sap va duoi thang chan, co the dat khan mem duoi dau goi. chu dong gap cang chan ve phia mong va tro ve vi tri ban dau. hay lap lai 10-20 lan voi moi ben.\r\n\r\n\r\n\r\nhuong dan tap vat ly tri lieu khop goi\r\n\r\nbai tap 4: gian co bap chan\r\n\r\nnguoi tap dung bam vao mot vat cung nhu ban/ghe de giu thang bang. buoc chan phai ra sau, nhan got chan xuong nen. luc nay ban se cam thay cang bap chan phai. giu yen trong 20 giay va ve tu the ban dau. thuc hien tuong tu voi chan con lai.\r\n\r\n\r\n\r\nhuong dan tap vat ly tri lieu khop goi\r\n\r\nviec luyen tap thuc hien cac bai tap vat ly tri lieu khop goi giup nguoi benh tang tam van dong khop goi, tang suc manh co, giam nguy co cung dinh khop goi, giup nguoi benh tro lai cac van dong sinh hoat va choi the thao binh thuong.\r\n\r\ntren day la mot so bai tap van dong tri lieu vung goi co ban. de dam bao an toan, ban nen tham khao y kien cua bac si ve tinh trang cua minh truoc cac bai tap phuc hoi chuc nang khop goi nay.\r\n',1658390337,NULL,'',1,'',NULL,'huong-dan-tap-vat-ly-tri-lieu-khop-goi-co-ban.html',6,'id_news',19,'news','/uploaded/kien-thuc-y-khoa/huong-dan-tap-vat-ly-tri-lieu-khop-goi.jpg'),(543,'Những lưu ý về tập phục hồi chức năng khớp gối sau mổ thay khớp gối','nhung luu y ve tap phuc hoi chuc nang khop goi sau mo thay khop goi','Tho&aacute;i h&oacute;a khớp gối l&agrave; t&igrave;nh trạng thường gặp ở người cao tuổi, tổn thương&nbsp; ch&iacute;nh l&agrave; ở sụn khớp, mất dần khả năng đ&agrave;n hồi, l&agrave;m mất t&iacute;nh linh hoạt vốn c&oacute;. Đối với bệnh nh&acirc;n tho&aacute;i h&oacute;a khớp nặng, phẫu thuật l&agrave; phương ph&aacute;p gi&uacute;p người bệnh giảm đau nhức, kết hợp với c&aacute;c b&agrave;i tập phục hồi chức năng khớp gối sau mổ gi&uacute;p r&uacute;t ngắn thời gian hồi phục.\r\n','thoai hoa khop goi la tinh trang thuong gap o nguoi cao tuoi, ton thuong  chinh la o sun khop, mat dan kha nang dan hoi, lam mat tinh linh hoat von co. doi voi benh nhan thoai hoa khop nang, phau thuat la phuong phap giup nguoi benh giam dau nhuc, ket hop voi cac bai tap phuc hoi chuc nang khop goi sau mo giup rut ngan thoi gian hoi phuc.\r\n','\r\n1. Mục ti&ecirc;u của việc tập phục hồi chức năng khớp gối sau mổ\r\n\r\nĐa số bệnh nh&acirc;n cải thiện được t&igrave;nh trạng đau nhức khớp gối sau phẫu thuật. Sự suy giảm về hoạt động chức năng v&agrave; sức mạnh của cơ thường tồn tại trong khoảng 1 năm sau khi phẫu thuật. Nhiều bệnh nh&acirc;n gặp phải t&igrave;nh trạng mất khả năng kiểm so&aacute;t thăng bằng v&agrave; cử động, nguy cơ t&eacute; ng&atilde; cao hơn.&nbsp;\r\n\r\n\r\nTập luyện đi lại sau phẫu thuật khớp gối\r\n\r\nC&aacute;c b&agrave;i tập phục hồi chức năng sau thay khớp gối thường được &aacute;p dụng cho bệnh nh&acirc;n trải qua phẫu thuật với mục ti&ecirc;u:\r\n\r\n- Tối ưu h&oacute;a kết quả sau phẫu thuật.\r\n\r\n- Giảm ph&ugrave; nề.\r\n\r\n- Phục hồi khả năng vận động v&agrave; chức năng của khớp.\r\n\r\n- Giảm đau\r\n\r\n- Tăng sức dẻo dai của cơ v&agrave; d&acirc;y chằng.\r\n\r\n- Gi&uacute;p người bệnh mau qua lại hoạt động b&igrave;nh thường của cuộc sống h&agrave;ng ng&agrave;y.&nbsp;\r\n\r\n- Mở rộng tầm vận động của khớp gối gần bằng hoặc bằng trước khi phẫu thuật.\r\n\r\n2. Những nh&oacute;m b&agrave;i tập phục hồi chức năng sau phẫu thuật thay khớp&nbsp;\r\n\r\nNg&agrave;y c&agrave;ng c&oacute; nhiều dịch vụ phục hồi chức năng sau phẫu thuật thay khớp gối được ra đời, nhằm tối đa h&oacute;a t&igrave;nh trạng chức năng của bệnh nh&acirc;n v&agrave; cải thiện kết quả sau phẫu thuật.&nbsp;\r\n\r\nC&aacute;c chương tr&igrave;nh phục hồi chức năng thay khớp gối cần được hỗ trợ bởi c&aacute;c chuy&ecirc;n gia v&agrave; kỹ thuật vi&ecirc;n phục hồi chức năng, phẫu thuật chỉnh h&igrave;nh.&nbsp;\r\n\r\n- B&agrave;i tự tập bao gồm:\r\n\r\nNhững b&agrave;i phục hồi chức năng tại chỗ như co duỗi ch&acirc;n, xoay khớp gối, khớp ch&acirc;n.&nbsp;\r\n\r\nNhững b&agrave;i tập cơ: l&agrave; c&aacute;c b&agrave;i tập cơ m&ocirc;ng, khớp h&aacute;ng, tập cơ đ&ugrave;i v&agrave; cơ cẳng ch&acirc;n.\r\n\r\n\r\nB&agrave;i tập phục hồi chức năng sau phẫu thuật thay khớp gối&nbsp;c&oacute; hỗ trợ\r\n\r\n- B&agrave;i tập trợ gi&uacute;p: Đ&acirc;y l&agrave; những b&agrave;i tập cần c&oacute; sự can thiệp gi&uacute;p đỡ của người nh&agrave; hoặc c&aacute;c chuy&ecirc;n gia, cần sự theo d&otilde;i v&agrave; c&oacute; độ kh&oacute; cao như tập giữ thăng bằng, k&eacute;o gi&atilde;n thụ động khớp gối, đứng thẳng, c&aacute;c b&agrave;i tập tăng lực ch&acirc;n...\r\n\r\n3. C&aacute;c b&agrave;i tập phục hồi chức năng sau thay khớp gối theo giai đoạn\r\n\r\nPhục hồi chức năng sau thay khớp gối được Bộ y tế ban h&agrave;nh th&ocirc;ng tư hướng dẫn, được chia th&agrave;nh c&aacute;c giai đoạn r&egrave;n luyện hồi phục gồm:&nbsp;\r\n\r\n3.1. Giai đoạn 1: 1 đến 2 tuần sau mổ - tập phục hồi chức năng khớp gối sau mổ\r\n\r\n* Mục đ&iacute;ch:&nbsp;\r\n\r\n- Kiểm so&aacute;t ph&ugrave; nề, giảm đau.&nbsp;\r\n\r\n- Duy tr&igrave; duỗi gối 0&ordm; v&agrave; gấp 100&ordm;.&nbsp;\r\n\r\n- Duy tr&igrave; sức mạnh của cơ.&nbsp;\r\n\r\n- Di chuyển được với dụng cụ trợ gi&uacute;p: Nạng, gậy, khung tập đi.&nbsp;\r\n\r\n- Duy tr&igrave; b&agrave;i tập tại nh&agrave;.&nbsp;\r\n\r\n&nbsp;* Ng&agrave;y 1:\r\n\r\n- Chườm lạnh: 15-20 ph&uacute;t/ lần x 3-5 lần/ng&agrave;y.\r\n\r\n- Tập co cơ tĩnh: người bệnh duỗi thẳng 2 ch&acirc;n, từ từ co cơ tĩnh b&ecirc;n ch&acirc;n phẫu thuật cứ5s co th&igrave; nghỉ 5s x 10 lần / ng&agrave;y.\r\n\r\n- Tập vận động khớp cổ ch&acirc;n v&agrave; trượt g&oacute;t ch&acirc;n ban đầu n&ecirc; tập với sự hỗ trợ của tay để cảm nhận dần cơ khớp, dưới sự hướng dẫn của b&aacute;c sĩ.&nbsp;\r\n\r\n- Tập ngồi xoay đều c&aacute;c vị tr&iacute; tr&ecirc;n hoặc ghế nằm.&nbsp;\r\n\r\n- Xoay đều khớp gối từ 0&ordm; đến 70&ordm; (c&oacute; thể sử dụng m&aacute;y hỗ trợ).\r\n\r\n* Ng&agrave;y thứ 2: Ngo&agrave;i c&aacute;c b&agrave;i tập co duỗi như ng&agrave;y 1 cần thực hiện th&ecirc;m\r\n\r\n- B&agrave;i tập độc lập tr&ecirc;n giường.&nbsp;\r\n\r\n- Tập xoay, bẻ l&ecirc;n xuống khớp cổ ch&acirc;n.&nbsp;\r\n\r\n- Tập gấp, duỗi, dạng, kh&eacute;p h&aacute;ng theo hướng dẫn.\r\n\r\n- Tập ngồi thẳng, ch&acirc;n chạm đất tr&ecirc;n ghế 30 ph&uacute;t, 2 lần/ng&agrave;y.&nbsp;\r\n\r\n- Tập đi lại ở khoảng c&aacute;ch gần c&oacute; trợ gi&uacute;p.&nbsp;\r\n\r\n-&nbsp; Vận động chủ động khớp gối : 10&ordm; đến 80&ordm;\r\n\r\n* Ng&agrave;y thứ 3 - 5 sau phẫu thuật: Vẫn tập 2 b&agrave;i tr&ecirc;n c&ugrave;ng c&aacute;c kỹ thuật kh&oacute; hơn\r\n\r\n- Tập c&aacute;c b&agrave;i tập khớp gối: duỗi thẳng ch&acirc;n k&eacute;o d&atilde;n cơ v&agrave; khớp, kết hợp tập gấp chủ động khớp gối qua, tăng dần độ kh&oacute; qua mỗi lần tập để gập duỗi được tối đa.\r\n\r\n- Tập tăng sức cơ đ&ugrave;i, cơ cẳng ch&acirc;n bằng c&aacute;c b&agrave;i tập c&oacute; sức cản.&nbsp;\r\n\r\n- Tập đứng thẳng 2 ch&acirc;n, đứng chịu lực l&ecirc;n từng ch&acirc;n, đến khi bệnh nh&acirc;n tự giữ được thăng bằng. Nhấc 2 ch&acirc;n l&ecirc;n xuống.&nbsp;\r\n\r\n\r\nTập đứng thẳng bằng 2 ch&acirc;n v&agrave; giữ thăng bằng\r\n\r\n- Tập gấp duỗi dạng kh&eacute;p khớp h&aacute;ng để luyện phản xạ cơ.&nbsp;\r\n\r\n- Tập di chuyển với nạng, khung tập đi.&nbsp;\r\n\r\n3.2. Giai đoạn II: Từ 2 đến 5 tuần sau phẫu thuật\r\n\r\n* Mục đ&iacute;ch:&nbsp;\r\n\r\n- Gia tăng kh&ocirc;ng gian vận động của khớp từ 0&ordm; đến 115&ordm; .&nbsp;\r\n\r\n- Tăng cường sức mạnh của đ&ocirc;i b&agrave;n ch&acirc;n.\r\n\r\n&nbsp;- Cảm nhận v&agrave; hoạt động cơ, khớp c&aacute;c bước cơ bản.\r\n\r\n- Người bệnh th&agrave;nh thạo c&aacute;c b&agrave;i tập, c&oacute; thể tự tập&nbsp; tại nh&agrave;.\r\n\r\n* Phương ph&aacute;p:&nbsp;\r\n\r\nTiếp tục c&aacute;c b&agrave;i tập giai đoạn 1 v&agrave; thực hiện c&aacute;c b&agrave;i tập kỹ thuật cao hơn&nbsp;\r\n\r\n- B&agrave;i tập thụ động, chủ động c&oacute; trợ gi&uacute;p để gấp duỗi khớp gối .&nbsp;\r\n\r\n&nbsp;- B&agrave;i tập k&eacute;o gi&atilde;n thụ động khớp gối dưới sự hướng dẫn của kỹ thuật vi&ecirc;n.&nbsp;\r\n\r\n- Tăng cường sức mạnh cơ: kết hợp th&ecirc;m c&aacute;c vật cản.\r\n\r\n- Từ tuần thứ 3 tập xuống tấn.&nbsp;\r\n\r\n- Tập di chuyển qua c&aacute;c chướng ngại vật c&ugrave;ng nạng đỡ\r\n\r\n3.3. Giai đoạn III: Sau phẫu thuật từ 6 đến 8 tuần&nbsp;\r\n\r\n* Mục đ&iacute;ch:&nbsp;\r\n\r\n- Cải thiện tầm vận động khớp từ 0 đến 115&ordm; &ndash; 120&ordm;.\r\n\r\n- Giữ thăng bằng, tự đi lại m&agrave; kh&ocirc;ng cần b&aacute;m v&iacute;u, tốt nhất c&oacute; thể đi bộ, đạp xe,..\r\n\r\n- Tự thực hiện c&aacute;c hoạt động sinh hoạt thường ng&agrave;y.&nbsp;\r\n\r\nC&aacute;c b&agrave;i tập phục hồi chức năng khớp gối sau mổ thay khớp gối phải được l&ecirc;n gi&aacute;o &aacute;n v&agrave; được gi&aacute;m s&aacute;t bởi một chuy&ecirc;n gia được đ&agrave;o tạo về phục hồi chức năng . Một v&agrave;i trường hợp, người bệnh c&oacute; thể được can thiệp bằng c&aacute;c k&iacute;ch th&iacute;ch từ b&ecirc;n ngo&agrave;i như xoa b&oacute;p trị liệu, ch&acirc;m cứu, xung k&iacute;ch điện thần kinh cơ,... nhằm n&acirc;ng cao hiệu quả điều trị.\r\n','\r\n1. muc tieu cua viec tap phuc hoi chuc nang khop goi sau mo\r\n\r\nda so benh nhan cai thien duoc tinh trang dau nhuc khop goi sau phau thuat. su suy giam ve hoat dong chuc nang va suc manh cua co thuong ton tai trong khoang 1 nam sau khi phau thuat. nhieu benh nhan gap phai tinh trang mat kha nang kiem soat thang bang va cu dong, nguy co te nga cao hon. \r\n\r\n\r\ntap luyen di lai sau phau thuat khop goi\r\n\r\ncac bai tap phuc hoi chuc nang sau thay khop goi thuong duoc ap dung cho benh nhan trai qua phau thuat voi muc tieu:\r\n\r\n- toi uu hoa ket qua sau phau thuat.\r\n\r\n- giam phu ne.\r\n\r\n- phuc hoi kha nang van dong va chuc nang cua khop.\r\n\r\n- giam dau\r\n\r\n- tang suc deo dai cua co va day chang.\r\n\r\n- giup nguoi benh mau qua lai hoat dong binh thuong cua cuoc song hang ngay. \r\n\r\n- mo rong tam van dong cua khop goi gan bang hoac bang truoc khi phau thuat.\r\n\r\n2. nhung nhom bai tap phuc hoi chuc nang sau phau thuat thay khop \r\n\r\nngay cang co nhieu dich vu phuc hoi chuc nang sau phau thuat thay khop goi duoc ra doi, nham toi da hoa tinh trang chuc nang cua benh nhan va cai thien ket qua sau phau thuat. \r\n\r\ncac chuong trinh phuc hoi chuc nang thay khop goi can duoc ho tro boi cac chuyen gia va ky thuat vien phuc hoi chuc nang, phau thuat chinh hinh. \r\n\r\n- bai tu tap bao gom:\r\n\r\nnhung bai phuc hoi chuc nang tai cho nhu co duoi chan, xoay khop goi, khop chan. \r\n\r\nnhung bai tap co: la cac bai tap co mong, khop hang, tap co dui va co cang chan.\r\n\r\n\r\nbai tap phuc hoi chuc nang sau phau thuat thay khop goi co ho tro\r\n\r\n- bai tap tro giup: day la nhung bai tap can co su can thiep giup do cua nguoi nha hoac cac chuyen gia, can su theo doi va co do kho cao nhu tap giu thang bang, keo gian thu dong khop goi, dung thang, cac bai tap tang luc chan...\r\n\r\n3. cac bai tap phuc hoi chuc nang sau thay khop goi theo giai doan\r\n\r\nphuc hoi chuc nang sau thay khop goi duoc bo y te ban hanh thong tu huong dan, duoc chia thanh cac giai doan ren luyen hoi phuc gom: \r\n\r\n3.1. giai doan 1: 1 den 2 tuan sau mo - tap phuc hoi chuc nang khop goi sau mo\r\n\r\n* muc dich: \r\n\r\n- kiem soat phu ne, giam dau. \r\n\r\n- duy tri duoi goi 0º va gap 100º. \r\n\r\n- duy tri suc manh cua co. \r\n\r\n- di chuyen duoc voi dung cu tro giup: nang, gay, khung tap di. \r\n\r\n- duy tri bai tap tai nha. \r\n\r\n * ngay 1:\r\n\r\n- chuom lanh: 15-20 phut/ lan x 3-5 lan/ngay.\r\n\r\n- tap co co tinh: nguoi benh duoi thang 2 chan, tu tu co co tinh ben chan phau thuat cu5s co thi nghi 5s x 10 lan / ngay.\r\n\r\n- tap van dong khop co chan va truot got chan ban dau ne tap voi su ho tro cua tay de cam nhan dan co khop, duoi su huong dan cua bac si. \r\n\r\n- tap ngoi xoay deu cac vi tri tren hoac ghe nam. \r\n\r\n- xoay deu khop goi tu 0º den 70º (co the su dung may ho tro).\r\n\r\n* ngay thu 2: ngoai cac bai tap co duoi nhu ngay 1 can thuc hien them\r\n\r\n- bai tap doc lap tren giuong. \r\n\r\n- tap xoay, be len xuong khop co chan. \r\n\r\n- tap gap, duoi, dang, khep hang theo huong dan.\r\n\r\n- tap ngoi thang, chan cham dat tren ghe 30 phut, 2 lan/ngay. \r\n\r\n- tap di lai o khoang cach gan co tro giup. \r\n\r\n-  van dong chu dong khop goi : 10º den 80º\r\n\r\n* ngay thu 3 - 5 sau phau thuat: van tap 2 bai tren cung cac ky thuat kho hon\r\n\r\n- tap cac bai tap khop goi: duoi thang chan keo dan co va khop, ket hop tap gap chu dong khop goi qua, tang dan do kho qua moi lan tap de gap duoi duoc toi da.\r\n\r\n- tap tang suc co dui, co cang chan bang cac bai tap co suc can. \r\n\r\n- tap dung thang 2 chan, dung chiu luc len tung chan, den khi benh nhan tu giu duoc thang bang. nhac 2 chan len xuong. \r\n\r\n\r\ntap dung thang bang 2 chan va giu thang bang\r\n\r\n- tap gap duoi dang khep khop hang de luyen phan xa co. \r\n\r\n- tap di chuyen voi nang, khung tap di. \r\n\r\n3.2. giai doan ii: tu 2 den 5 tuan sau phau thuat\r\n\r\n* muc dich: \r\n\r\n- gia tang khong gian van dong cua khop tu 0º den 115º . \r\n\r\n- tang cuong suc manh cua doi ban chan.\r\n\r\n - cam nhan va hoat dong co, khop cac buoc co ban.\r\n\r\n- nguoi benh thanh thao cac bai tap, co the tu tap  tai nha.\r\n\r\n* phuong phap: \r\n\r\ntiep tuc cac bai tap giai doan 1 va thuc hien cac bai tap ky thuat cao hon \r\n\r\n- bai tap thu dong, chu dong co tro giup de gap duoi khop goi . \r\n\r\n - bai tap keo gian thu dong khop goi duoi su huong dan cua ky thuat vien. \r\n\r\n- tang cuong suc manh co: ket hop them cac vat can.\r\n\r\n- tu tuan thu 3 tap xuong tan. \r\n\r\n- tap di chuyen qua cac chuong ngai vat cung nang do\r\n\r\n3.3. giai doan iii: sau phau thuat tu 6 den 8 tuan \r\n\r\n* muc dich: \r\n\r\n- cai thien tam van dong khop tu 0 den 115º – 120º.\r\n\r\n- giu thang bang, tu di lai ma khong can bam viu, tot nhat co the di bo, dap xe,..\r\n\r\n- tu thuc hien cac hoat dong sinh hoat thuong ngay. \r\n\r\ncac bai tap phuc hoi chuc nang khop goi sau mo thay khop goi phai duoc len giao an va duoc giam sat boi mot chuyen gia duoc dao tao ve phuc hoi chuc nang . mot vai truong hop, nguoi benh co the duoc can thiep bang cac kich thich tu ben ngoai nhu xoa bop tri lieu, cham cuu, xung kich dien than kinh co,... nham nang cao hieu qua dieu tri.\r\n',1658390337,NULL,'',1,'',NULL,'tap-phuc-hoi-chuc-nang-khop-goi-sau-mo.html',6,'id_news',21,'news','/uploaded/kien-thuc-y-khoa/tap-phuc-hoi-chuc-nang-khop-goi-sau-mo.jpg'),(544,'News Event article 01','news event article 01','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.',1658390337,NULL,'',1,'',NULL,'news-event-article-01.html',31,'id_news',22,'news','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-3.jpg'),(545,'News Event article 02','news event article 02','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.',1658390337,NULL,'',1,'',NULL,'news-event-article-02.html',31,'id_news',23,'news','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-1.jpg'),(546,'News Event article 03','news event article 03','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.',1658390337,NULL,'',1,'',NULL,'news-event-article-03.html',31,'id_news',24,'news','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-1.jpg'),(547,'News Event article 04','news event article 04','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.',1658390337,NULL,'',1,'',NULL,'news-event-article-04.html',31,'id_news',25,'news','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-1.jpg'),(548,'News Event article 05','news event article 05','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.','lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.',1658390337,NULL,'',1,'',NULL,'news-event-article-05.html',31,'id_news',26,'news','/uploaded/trang-thiet-bi/khong-gian-msc-clinic-1.jpg'),(549,'Giới thiệu về liệu pháp M - MSC Therapy','gioi thieu ve lieu phap m - msc therapy','Liệu ph&aacute;p M - MSC THERAPY t&aacute;i tạo, phục hồi to&agrave;n diện v&agrave; đa t&aacute;c động cơ xương khớp l&agrave; ph&aacute;c đồ điều trị kết hợp giữa phương ph&aacute;p vật l&yacute; trị liệu, phục hồi chức năng bằng c&ocirc;ng nghệ cao v&agrave; Y học t&aacute;i tạo.\r\n','lieu phap m - msc therapy tai tao, phuc hoi toan dien va da tac dong co xuong khop la phac do dieu tri ket hop giua phuong phap vat ly tri lieu, phuc hoi chuc nang bang cong nghe cao va y hoc tai tao.\r\n','Liệu ph&aacute;p M - MSC THERAPY được nhận định l&agrave; c&ocirc;ng nghệ điều trị hiệu quả v&agrave; an to&agrave;n nhất hiện nay cho hầu hết c&aacute;c bệnh l&yacute; cơ - xương - khớp như:&nbsp;\r\n\r\n\r\n	Tho&aacute;i h&oacute;a khớp&nbsp;\r\n	Chấn thương trong thể thao, sinh hoạt, tại nạn,...&nbsp;\r\n	Hồi phục sau phẫu thuật cơ - xương - khớp\r\n	Vi&ecirc;m bao quang khớp (vi&ecirc;m g&acirc;n, bao hoạt dịch, d&acirc;y chằng,...)\r\n	Bệnh l&yacute; cột sống: tho&aacute;t vị đĩa đệm, tho&aacute;i h&oacute;a cột sống.&nbsp;\r\n\r\n','lieu phap m - msc therapy duoc nhan dinh la cong nghe dieu tri hieu qua va an toan nhat hien nay cho hau het cac benh ly co - xuong - khop nhu: \r\n\r\n\r\n	thoai hoa khop \r\n	chan thuong trong the thao, sinh hoat, tai nan,... \r\n	hoi phuc sau phau thuat co - xuong - khop\r\n	viem bao quang khop (viem gan, bao hoat dich, day chang,...)\r\n	benh ly cot song: thoat vi dia dem, thoai hoa cot song. \r\n\r\n',1658390337,NULL,'',1,'',NULL,'gioi-thieu-ve-lieu-phap-mmsc-therapy.html',16,'id_info',1,'info','/uploaded/Home/bakground_home.png'),(550,'Không phẫu thuật','khong phau thuat','','','','',1658390337,NULL,'',1,'',NULL,'khong-phau-thuat.html',17,'id_info',2,'info','/uploaded/Home/item-home1.png'),(551,'Không tác dụng phụ','khong tac dung phu','','','','',1658390337,NULL,'',1,'',NULL,'khong-phau-thuat.html',17,'id_info',3,'info','/uploaded/Home/item-home2.png'),(552,'Thời gian điều trị ngắn','thoi gian dieu tri ngan','','','','',1658390337,NULL,'',1,'',NULL,'khong-phau-thuat.html',17,'id_info',4,'info','/uploaded/Home/item-home3.png'),(554,'Câu chuyện khách hàng Ông Lê Khắc Thưởng ','cau chuyen khach hang ong le khac thuong ','&quot;Ch&uacute; bị đau vai hơn 2 năm, đ&atilde; đi kh&aacute;m v&agrave; điều trị ở nhiều nơi nhưng kh&ocirc;ng đỡ. Ch&uacute; đau nhiều, rất kh&oacute; chịu v&agrave; thường xuy&ecirc;n mất ngủ do đau. Khi đến MSC Clinic điều trị hơn 20 ng&agrave;y với 4 đợt&nbsp;th&igrave; hiện tại ch&uacute; đ&atilde; khỏi hẳn, ch&uacute; cảm thấy rất thoải m&aacute;i, nhẹ nh&agrave;ng v&agrave; vui. Giờ ra viện về nh&agrave; ch&uacute; sẽ rất nhớ y b&aacute;c sĩ ở đ&acirc;y.&nbsp;\r\nCh&uacute; mong sẽ gi&uacute;p được nhiều người ở qu&ecirc; ch&uacute; biết đến phương ph&aacute;p điều trị n&agrave;y&quot;\r\n','\"chu bi dau vai hon 2 nam, da di kham va dieu tri o nhieu noi nhung khong do. chu dau nhieu, rat kho chiu va thuong xuyen mat ngu do dau. khi den msc clinic dieu tri hon 20 ngay voi 4 dot thi hien tai chu da khoi han, chu cam thay rat thoai mai, nhe nhang va vui. gio ra vien ve nha chu se rat nho y bac si o day. \r\nchu mong se giup duoc nhieu nguoi o que chu biet den phuong phap dieu tri nay\"\r\n','','',1658390337,NULL,'',1,'',NULL,'benh-nhan-viem-quanh-khop-vai.html',26,'id_article',10,'article','/uploaded/y-kien-khach-hang/viem-quanh-khop-vai-mr-thuong.jpg'),(555,'Câu chuyện khách hàng Anh Nguyễn Tiến Chung','cau chuyen khach hang anh nguyen tien chung','&nbsp;&quot;M&igrave;nh rất đam m&ecirc; b&oacute;ng đa, sau một lần bị&nbsp; ng&atilde; th&igrave; ch&acirc;n m&igrave;nh rất đau, lỏng khớp. M&igrave;nh được bệnh vi&ecirc;n chẩn đo&aacute;n l&agrave; đứt gần ho&agrave;n to&agrave;n d&acirc;y chằng ch&eacute;o trước - dập sun ch&ecirc;m v&agrave; c&oacute; chỉ định mổ. M&igrave;nh c&oacute; t&igrave;m hiểu v&agrave; chưa mu&ocirc;n mổ n&ecirc;n m&igrave;nh t&igrave;m đến MSC Clinic. Đội ngũ y b&aacute;c sĩ ở đ&acirc;y rất th&acirc;n thi&ecirc;n, gi&agrave;u kinh nghiệm v&agrave; chuy&ecirc;n m&ocirc;n cao, đ&atilde; chẩn đo&aacute;n, giải th&iacute;ch rất r&otilde; r&agrave;ng.&nbsp;\r\nM&igrave;nh điều trị 3 đợt&nbsp;v&agrave; Phục hồi chức năng, hiện tai m&igrave;nh kh&ocirc;ng c&ograve;n đau nữa, sự mỏi, lỏng khớp đ&atilde; hết, đi lại vững hơn v&agrave; tự tin sẽ quay trở lại được s&acirc;n b&oacute;ng.&quot;&nbsp;\r\n',' \"minh rat dam me bong da, sau mot lan bi  nga thi chan minh rat dau, long khop. minh duoc benh vien chan doan la dut gan hoan toan day chang cheo truoc - dap sun chem va co chi dinh mo. minh co tim hieu va chua muon mo nen minh tim den msc clinic. doi ngu y bac si o day rat than thien, giau kinh nghiem va chuyen mon cao, da chan doan, giai thich rat ro rang. \r\nminh dieu tri 3 dot va phuc hoi chuc nang, hien tai minh khong con dau nua, su moi, long khop da het, di lai vung hon va tu tin se quay tro lai duoc san bong.\" \r\n','','',1658390337,NULL,'',1,'',NULL,'benh-nhan-chan-thuong-the-thao.html',26,'id_article',11,'article','/uploaded/y-kien-khach-hang/chan-thuong-the-thao-mr-chung.jpg'),(556,'Câu chuyện khách Bà Nguyễn Thị Tiêm','cau chuyen khach ba nguyen thi tiem','&ldquo;B&aacute;c bị đau khớp gối Tr&aacute;i nhiều năm rồi, đi lại rất kh&oacute; khăn, phải chống gậy, cảm gi&aacute;c ch&acirc;n tr&aacute;i ngắn hơn ch&acirc;n phải l&agrave;m b&aacute;c đi tập tễnh. Nhiều l&uacute;c b&aacute;c thấy buồn khi con c&aacute;i phải lo lắng, mất thời gian chăm s&oacute;c do b&aacute;c kh&ocirc;ng tự phục vụ được bản th&acirc;n.\r\nCon b&aacute;c đưa b&aacute;c đến ph&ograve;ng kh&aacute;m điều trị l&agrave; 3 đợt&nbsp;v&agrave; 3 tuần phục hồi chức năng đến hiện tại b&aacute;c đ&atilde; hết đau, đi lại kh&ocirc;ng phải chống gậy, kh&ocirc;ng c&ograve;n tập tễnh. Điều b&aacute;c vui nhất l&agrave; giờ b&aacute;c c&oacute; thể tự nấu cơm, đi lại xung quanh nh&agrave; một c&aacute;ch thoải m&aacute;i v&agrave; vui đ&ugrave;a c&ugrave;ng c&aacute;c ch&aacute;u&rdquo;\r\n','“bac bi dau khop goi trai nhieu nam roi, di lai rat kho khan, phai chong gay, cam giac chan trai ngan hon chan phai lam bac di tap tenh. nhieu luc bac thay buon khi con cai phai lo lang, mat thoi gian cham soc do bac khong tu phuc vu duoc ban than.\r\ncon bac dua bac den phong kham dieu tri la 3 dot va 3 tuan phuc hoi chuc nang den hien tai bac da het dau, di lai khong phai chong gay, khong con tap tenh. dieu bac vui nhat la gio bac co the tu nau com, di lai xung quanh nha mot cach thoai mai va vui dua cung cac chau”\r\n','','',1658390337,NULL,'',1,'',NULL,'benh-nhan-thoai-hoa-khop-do-4.html',26,'id_article',12,'article','/uploaded/y-kien-khach-hang/thoai-hoa-khop-do-4-bac-tiem.jpg'),(557,'Câu chuyện khách hàng Anh Bùi Mạnh Quân','cau chuyen khach hang anh bui manh quan','&ldquo;C&aacute;ch đ&acirc;y 9 năm do chấn thương trong đ&aacute; b&oacute;ng n&ecirc;n m&igrave;nh bị đứt d&acirc;y chằng ch&eacute;o trước v&agrave; được phẫu thuật. Sau phẫu thuật 1 năm m&igrave;nh mới đi lại được b&igrave;nh thường nhưng vẫn thấy đau, lỏng khớp v&agrave; c&oacute; tiếng lục cục khi co duỗi khớp gối. D&ugrave; mới 30 tuổi nhưng ch&acirc;n m&igrave;nh như &ocirc;ng l&atilde;o 60 tuổi vậy.\r\nM&igrave;nh kh&ocirc;ng d&aacute;m đi kh&aacute;m lại v&igrave; m&igrave;nh sợ sẽ phải phẫu thuật lần nữa v&agrave; mất 1 năm tập vận động mới đi b&igrave;nh thường được. Thật may mắn khi nghe một người chị chia sẻ về phương ph&aacute;p điều trị của MSC, m&igrave;nh đ&atilde; đến kh&aacute;m v&agrave; sau 3 lần&nbsp;điều trị, 3 tuần phục hồi chức năng, mỗi ng&agrave;y 1 tiếng đến điều trị chứ kh&ocirc;ng phải nằm viện n&ecirc;n&nbsp;kh&aacute; linh hoạt với thời gian bận rộn của m&igrave;nh.&nbsp;\r\nKết quả thực sự bất ngờ khi d&acirc;y chằng 9 năm rồi chưa biệt ho&aacute; hết th&igrave; nay đ&atilde; c&oacute; mạch m&aacute;u mới nu&ocirc;i dưỡng, hết đau v&agrave; hết lục cục ở khớp gối, ch&acirc;n m&igrave;nh được trở lại đ&uacute;ng độ tuổi 30&rdquo;\r\n','“cach day 9 nam do chan thuong trong da bong nen minh bi dut day chang cheo truoc va duoc phau thuat. sau phau thuat 1 nam minh moi di lai duoc binh thuong nhung van thay dau, long khop va co tieng luc cuc khi co duoi khop goi. du moi 30 tuoi nhung chan minh nhu ong lao 60 tuoi vay.\r\nminh khong dam di kham lai vi minh so se phai phau thuat lan nua va mat 1 nam tap van dong moi di binh thuong duoc. that may man khi nghe mot nguoi chi chia se ve phuong phap dieu tri cua msc, minh da den kham va sau 3 lan dieu tri, 3 tuan phuc hoi chuc nang, moi ngay 1 tieng den dieu tri chu khong phai nam vien nen kha linh hoat voi thoi gian ban ron cua minh. \r\nket qua thuc su bat ngo khi day chang 9 nam roi chua biet hoa het thi nay da co mach mau moi nuoi duong, het dau va het luc cuc o khop goi, chan minh duoc tro lai dung do tuoi 30”\r\n','','',1658390337,NULL,'',1,'',NULL,'benh-nhanh-da-phau-thuat-chan-thuong-the-thao.html',26,'id_article',13,'article','/uploaded/y-kien-khach-hang/chan-thuong-the-thao-mr-quan-1.jpg'),(558,'Trang chủ','trang chu',NULL,'','','',1658390337,NULL,'',1,'',NULL,'',0,'id_category',1,'category',''),(559,'Logo','logo',NULL,'',' ',' ',1658390337,NULL,'',1,'',NULL,'logo/',0,'id_category',2,'category',''),(560,'SlideHome','slidehome',NULL,'','','',1658390337,NULL,'',1,'',NULL,'slidehome/',0,'id_category',3,'category',''),(561,'SlideHomeMobile','slidehomemobile',NULL,'','','',1658390337,NULL,'',1,'',NULL,'slidehomemobile/',0,'id_category',4,'category',''),(562,'Giới thiệu','gioi thieu',NULL,'','','',1658390337,NULL,'',1,'',NULL,'#',0,'id_category',5,'category',''),(563,'Tin tức','tin tuc',NULL,'','','',1658390337,NULL,'',1,'',NULL,'tin-tuc/',0,'id_category',6,'category',''),(564,'Liên hệ','lien he',NULL,'','\r\nThời gian l&agrave;m việc: 08:00 - 17:30 mỗi ng&agrave;y\r\nHotline 24/7:&nbsp;1900 0326 / 0965 505 988&nbsp;\r\nĐịa chỉ: Tầng G,1,2,3 - TT 20,21,22, Số 204 Nguyễn Tu&acirc;n, Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, H&agrave; Nội&nbsp;\r\nEmail: info@mscclinic.vn\r\n','\r\nthoi gian lam viec: 08:00 - 17:30 moi ngay\r\nhotline 24/7: 1900 0326 / 0965 505 988 \r\ndia chi: tang g,1,2,3 - tt 20,21,22, so 204 nguyen tuan, nhan chinh, thanh xuan, ha noi \r\nemail: info@mscclinic.vn\r\n',1658390337,NULL,'',1,'',NULL,'lien-he/',0,'id_category',7,'category',''),(598,'Hợp tác quốc tế','hop tac quoc te','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','lorem ipsum??is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum.','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','lorem ipsum??is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum.',1660017241,NULL,'',1,'',NULL,'hop-tac-quoc-te/',NULL,'id_category',40,'category','/uploaded/Home/gioi-thieu-ve-lieu-phap-m-msc-clinic-video.jpg'),(607,'Vô sinh nam1','vo sinh nam1','V&ocirc; sinh nam1','vo sinh nam1','V&ocirc; sinh nam1','vo sinh nam1',1660035849,NULL,'',1,'',NULL,'vo-sinh-nam1/',NULL,'id_category',44,'category','/uploaded/Home/benh-ly-cot-song-home.jpg'),(608,'Lorem ipsum dolor sit amet, consectetur adipiscing elit','lorem ipsum dolor sit amet, consectetur adipiscing elit','Lorem ipsum dolor sit amet, consectetur adipiscing elit','lorem ipsum dolor sit amet, consectetur adipiscing elit','Lorem ipsum dolor sit amet, consectetur adipiscing elit','lorem ipsum dolor sit amet, consectetur adipiscing elit',1660035916,NULL,'',1,'',NULL,'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit.html',44,'id_service',6,'service',''),(609,'vô sinh nam 1.1','vo sinh nam 1.1','v&ocirc; sinh nam 1.1','vo sinh nam 1.1','v&ocirc; sinh nam 1.1','vo sinh nam 1.1',1660036002,NULL,'',1,'',NULL,'vo-sinh-nam-11/',NULL,'id_category',45,'category','/uploaded/Home/hoi-phuc-dau-phau-thuat-co-xuong-khop-home.jpg'),(610,'Vô sinh nữ','vo sinh nu','','','','',1660036682,NULL,'',1,'',NULL,'vo-sinh-nu/',NULL,'id_category',46,'category',''),(611,'Vô sinh nguyên phát','vo sinh nguyen phat','','','','',1660036729,NULL,'',1,'',NULL,'vo-sinh-nguyen-phat/',NULL,'id_category',47,'category',''),(612,'Vô sinh nam 1 2','vo sinh nam 1 2','V&ocirc; sinh nam 1 2&nbsp;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free fr','vo sinh nam 1 2??there are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. if you are going to use a passage of lorem ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. all the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. it uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable. the generated lorem ipsum is therefore always free fr','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free fr','there are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. if you are going to use a passage of lorem ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. all the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. it uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable. the generated lorem ipsum is therefore always free fr',1660037401,NULL,'',1,'',NULL,'vo-sinh-nam-1-2/',NULL,'id_category',48,'category',''),(566,'Đội ngũ chuyên gia','doi ngu chuyen gia',NULL,'','','',1658390337,NULL,'',1,'',NULL,'doi-ngu-chuyen-gia-msc-clinic/',0,'id_category',9,'category',''),(599,'Chức năng và vai trò','chuc nang va vai tro','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;content here, content here&#39;, making it look like readable english. many desktop publishing packages and web page editors now use lorem ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;content here, content here&#39;, making it look like readable english. many desktop publishing packages and web page editors now use lorem ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',1660017386,NULL,'',1,'',NULL,'chuc-nang-va-vai-tro/',NULL,'id_category',41,'category',''),(600,'Cơ sở vật chất','co so vat chat','Cơ sở vật chất','co so vat chat','Cơ sở vật chất','co so vat chat',1660017422,NULL,'',1,'',NULL,'co-so-vat-chat/',NULL,'id_category',42,'category','/uploaded/Home/bakground_home.png'),(625,'Tư vấn','tu van','','','','',1660904236,NULL,'',1,'',NULL,'tu-van/',NULL,'id_category',52,'category',''),(626,'Chăm sóc thai IVF','cham soc thai ivf','','','','',1660904309,NULL,'',1,'',NULL,'cham-soc-thai-ivf/',NULL,'id_category',53,'category',''),(604,'Vô sinh nam','vo sinh nam','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',1660035033,NULL,'',1,'',NULL,'vo-sinh-nam.html',34,'id_service',4,'service','/uploaded/Home/bakground_home.png'),(569,'Bệnh thoái hóa khớp','benh thoai hoa khop',NULL,'','&nbsp;\r\n\r\n\r\n\r\n1. Bệnh tho&aacute;i h&oacute;a khớp l&agrave; g&igrave;? Những vị tr&iacute; tho&aacute;i h&oacute;a khớp thường gặp&nbsp;\r\n\r\nBệnh tho&aacute;i h&oacute;a khớp l&agrave; một bệnh l&yacute; m&atilde;n t&iacute;nh, l&agrave; t&igrave;nh trạng hư hỏng phần sụn, đệm giữa hai đầu xương c&oacute; k&egrave;m theo phản ứng vi&ecirc;m v&agrave; giảm s&uacute;t lượng dịch nhờn nội khớp, g&acirc;y ra t&igrave;nh trạng đau v&agrave; cứng khớp.&nbsp;\r\n\r\n\r\nNgười cao tuổi mắc bệnh tho&aacute;i ho&aacute; khớp\r\n\r\nỞ Việt Nam, ước t&iacute;nh cho thấy t&igrave;nh trạng tho&aacute;i h&oacute;a khớp đang ng&agrave;y c&agrave;ng phổ biến v&agrave; c&oacute; dấu hiệu trẻ h&oacute;a, thống k&ecirc; cho thấy c&oacute; 30% người tr&ecirc;n tuổi 35, 60% người tr&ecirc;n tuổi 65 v&agrave; 85% người tr&ecirc;n tuổi 85 gặp vấn đề n&agrave;y. Bất kỳ vị tr&iacute; n&agrave;o tr&ecirc;n cơ thể cũng c&oacute; thể xuất hiện c&aacute;c dấu hiệu tho&aacute;i h&oacute;a:&nbsp;\r\n\r\n\r\n	\r\n	Tho&aacute;i h&oacute;a khớp ti&ecirc;n ph&aacute;t: thường xuất hiện ở khớp h&aacute;ng, khớp đầu gối, khớp b&agrave;n ng&oacute;n ch&acirc;n c&aacute;i, khớp b&agrave;n ng&oacute;n, cột sống cổ, cột sống thắt lưng,&hellip;\r\n	\r\n	\r\n	Tho&aacute;i h&oacute;a thứ ph&aacute;t thường do vi&ecirc;m khớp dạng thấp, di truyền, chấn thương: c&oacute; thể xuất hiện ở bất kỳ khớp n&agrave;o đặc biệt l&agrave; khớp đối xứng như b&agrave;n tay, tay, ch&acirc;n, đầu gối,.... .\r\n	\r\n\r\n\r\n2. Nhận biết c&aacute;c triệu chứng của bệnh tho&aacute;i h&oacute;a khớp&nbsp;\r\n\r\nTriệu chứng của bệnh tho&aacute;i h&oacute;a khớp thường ph&aacute;t triển chậm v&agrave; mức độ tăng nặng hơn theo thời gian, c&aacute;c dấu hiệu nhận biết bao gồm:&nbsp;\r\n\r\n\r\n	\r\n	Đau nhức: C&aacute;c cơn đau ban đầu xuất hiện trong hoặc sau khi vận động, thường &acirc;m ỉ v&agrave; biến mất khi kh&ocirc;ng hoạt động. Nếu kh&ocirc;ng được thăm kh&aacute;m v&agrave; điều trị kịp thời, c&aacute;c cơn đau tăng nặng về mức độ v&agrave; k&eacute;o d&agrave;i hơn, g&acirc;y ra nhiều đau đớn v&agrave; phiền to&aacute;i, ảnh hưởng đến đời sống sinh hoạt h&agrave;ng ng&agrave;y.\r\n	\r\n	\r\n	Cứng khớp: Triệu chứng n&agrave;y thường đi k&egrave;m với những cơn đau v&agrave; nhận thấy dễ nhất ngay sau khi bệnh nh&acirc;n thức dậy, hoặc sau một thời gian kh&ocirc;ng vận động, di chuyển.\r\n	\r\n	\r\n	Tiếng khớp k&ecirc;u: Xuất hiện chủ yếu khi di chuyển, cử động, c&ugrave;ng với đ&oacute; l&agrave; cảm gi&aacute;c n&oacute;ng ran khi vận động.\r\n	\r\n	\r\n	Teo cơ, sưng tấy: Bệnh l&yacute; k&eacute;o d&agrave;i dẫn đến t&igrave;nh trạng sưng tấy l&agrave;m biến dạng c&aacute;c khớp v&agrave; v&ugrave;ng cơ xung quanh khớp, l&acirc;u dần kh&ocirc;ng vận động trong thời gian d&agrave;i sẽ g&acirc;y teo cơ, biến dạng khớp,&hellip;\r\n	\r\n\r\n\r\n3. C&aacute;c nguy&ecirc;n nh&acirc;n phổ biến g&acirc;y bệnh tho&aacute;i h&oacute;a khớp\r\n\r\nMột số nguy&ecirc;n nh&acirc;n g&acirc;y ra bệnh tho&aacute;i h&oacute;a khớp như:\r\n\r\n\r\n	\r\n	Qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a tự nhi&ecirc;n: cơ thể trưởng th&agrave;nh v&agrave; gi&agrave; đi sẽ khiến c&aacute;c tế b&agrave;o sụn mất đi khả năng sinh sản v&agrave; t&aacute;i tạo.C&aacute;c tế b&agrave;o sụn dần dần giảm chức năng tổng hợp chất tạo n&ecirc;n sợi collagen v&agrave; mucopolysaccharide, l&agrave;m cho chất lượng v&agrave; t&iacute;nh đ&agrave;n hồi sụn k&eacute;m dần.\r\n	\r\n	\r\n	Bẩm sinh: c&aacute;c dị dạng bẩm sinh cũng l&agrave; một trong c&aacute;c nguy&ecirc;n nh&acirc;n phổ biến g&acirc;y ra bệnh tho&aacute;i h&oacute;a khớp. Điều n&agrave;y l&agrave;m thay đổi diện t&igrave; n&eacute;n b&igrave;nh thường của khớp hay cột sống, khiến một số khớp kh&ocirc;ng chịu được &aacute;p lực, l&acirc;u dần g&acirc;y tho&aacute;i h&oacute;a.\r\n	\r\n	\r\n	Di truyền: T&igrave;nh trạng n&agrave;y xảy ra ở một số đối tượng c&oacute; khiếm khuyết di truyền ở những gen c&oacute; chức năng h&igrave;nh th&agrave;nh sụn. Việc n&agrave;y dẫn đến hao hụt ở sụn khớp, đẩy nhanh t&igrave;nh trạng tho&aacute;i h&oacute;a.C&aacute;c biến dạng thứ ph&aacute;t: c&aacute;c tổn thương do c&aacute;c bệnh l&yacute; xương khớp, chấn thương do tai nạn, nghề nghiệp,... l&agrave;m thay đổi h&igrave;nh th&aacute;i của khớp v&agrave; cột sống.\r\n	\r\n	\r\n	B&eacute;o ph&igrave;, tăng c&acirc;n qu&aacute; nhanh: l&agrave;m tăng &aacute;p lực l&ecirc;n xương khớp, l&acirc;u dần l&agrave;m xương khớp bị đ&egrave; n&eacute;n, biến dạng.\r\n	\r\n	\r\n	Nội tiết: t&igrave;nh trạng thiếu hormon ở nữ ch&iacute;nh l&agrave; một trong những yếu tố g&acirc;y n&ecirc;n t&igrave;nh trạng tho&aacute;i h&oacute;a khớp. C&ugrave;ng với đ&oacute; l&agrave; c&aacute;c hiện tượng như rối loạn hormon trong thời kỳ m&atilde;n kinh, đ&aacute;i th&aacute;o đường, lo&atilde;ng xương do nội tiết,...&nbsp;\r\n	\r\n\r\n\r\n4. Những phương ph&aacute;p điều trị bệnh tho&aacute;i h&oacute;a khớp\r\n\r\n4.1. Sử dụng thuốc\r\n\r\nSử dụng thuốc giảm đau dạng uống trong điều trị gi&uacute;p cải thiện c&aacute;c triệu chứng của bệnh một c&aacute;ch kịp thời v&agrave; nhanh ch&oacute;ng. Loại thuốc giảm đau sẽ t&ugrave;y thuộc v&agrave;o mức độ nghi&ecirc;m trọng của cơn đau v&agrave; c&aacute;c t&igrave;nh trạng hoặc vấn đề sức khỏe kh&aacute;c m&agrave; người bệnh gặp phải. Một số thuốc thường được sử dụng như: Thuốc giảm đau, thuốc chống vi&ecirc;m kh&ocirc;ng steroid (NSAID),....\r\n\r\nTrong 1 số trường hợp c&oacute; thể d&ugrave;ng đến thuốc giảm đau kh&aacute;ng vi&ecirc;m Corticoid dạng uống hoặc dạng ti&ecirc;m, tuy nhi&ecirc;n cần c&oacute; sự chỉ định của b&aacute;c sĩ chuy&ecirc;n khoa.\r\n\r\n4.2. Phẫu thuật\r\n\r\nPhẫu thuật điều trị tho&aacute;i h&oacute;a khớp chỉ cần thiết trong một số &iacute;t trường hợp đ&atilde; tham gia trị liệu bằng c&aacute;c biện ph&aacute;p kh&aacute;c nhưng kh&ocirc;ng mang lại kết quả khả quan hoặc phần khớp gặp tổn thương ở mức độ nghi&ecirc;m trọng. Phương ph&aacute;p phẫu thuật c&oacute; thể cải thiện đ&aacute;ng kể c&aacute;c triệu chứng, tăng khả năng vận động.\r\n\r\nThay khớp l&agrave; một trong những chỉ định phẫu thuật t&aacute;i tạo khớp, c&oacute; thể &aacute;p dụng hiệu quả tr&ecirc;n c&aacute;c khớp như gối, h&aacute;ng, ng&oacute;n tay,... Với phẫu thuật thay khớp, phần khớp đ&atilde; hư hại sẽ bị loại bỏ v&agrave; thay thế v&agrave;o đ&oacute; phần khớp nh&acirc;n tạo được l&agrave;m bằng c&aacute;c vật liệu y sinh đặc biệt. Tuổi thọ của khớp nh&acirc;n tạo c&oacute; thể k&eacute;o d&agrave;i từ 15-20 năm hoặc hơn.\r\n\r\n4.3. Ti&ecirc;m PRP huyết tương gi&agrave;u tiểu cầu\r\n\r\n\r\nB&aacute;c sĩ thực hiện ti&ecirc;m PRP\r\n\r\n&nbsp;\r\n\r\nSử dụng PRP trong điều trị c&aacute;c vấn đề ở cơ xương khớp l&agrave; giải ph&aacute;p hiện đại cho hiệu quả nhanh ch&oacute;ng với khả năng tự chữa l&agrave;nh tự nhi&ecirc;n, mức độ an to&agrave;n cao cho người bệnh. T&ugrave;y v&agrave;o t&igrave;nh trạng l&acirc;m s&agrave;ng của người bệnh v&agrave; khả năng phục hồi của từng người, liệu ph&aacute;p sẽ được chỉ định ph&ugrave; hợp.&nbsp;\r\n\r\nSo với c&aacute;c phương ph&aacute;p điều trị truyền thống như sử dụng thuốc, phẫu thuật (nội soi hoặc mổ mở), ti&ecirc;m PRP được đ&aacute;nh gi&aacute; cao về sự an to&agrave;n do sử dụng m&aacute;u được lấy từ cơ thể người bệnh, c&oacute; thể cải thiện v&agrave; chấm dứt cơn đau nhanh ch&oacute;ng tới 80-90%.&nbsp;\r\n\r\n4.4.&nbsp;Ch&acirc;m cứu&nbsp;\r\n\r\nCh&acirc;m cứu l&agrave; một phương ph&aacute;p cổ truyền ứng dụng v&agrave;o điều trị bệnh tho&aacute;i ho&aacute; khớp phổ biến từ l&acirc;u đời. Phương ph&aacute;p n&agrave;y c&oacute; t&aacute;c dụng giảm đau v&agrave; gi&uacute;p tăng cường kh&iacute; huyết nu&ocirc;i dưỡng tại khớp, từ đ&oacute; khớp trở n&ecirc;n linh hoạt v&agrave; vận động tốt hơn.&nbsp;\r\n\r\n4.5. Điều trị bệnh tho&aacute;i h&oacute;a khớp bằng M-MSC Therapy\r\n\r\nLiệu ph&aacute;p M-MSC THERAPY t&aacute;i tạo, phục hồi to&agrave;n diện v&agrave; đa t&aacute;c động cơ xương khớp l&agrave; ph&aacute;c đồ điều trị kết hợp giữa phương ph&aacute;p vật l&iacute; trị liệu, phục hồi chức năng bằng c&ocirc;ng nghệ cao v&agrave; Y học t&aacute;i tạo.\r\n\r\n\r\n\r\n5. Lưu &yacute; ph&ograve;ng ngừa bệnh tho&aacute;i h&oacute;a khớp\r\n\r\nMột số lưu &yacute; gi&uacute;p ngăn ngừa bệnh tho&aacute;i ho&aacute; khớp hoặc sự tiến triển của bệnh v&agrave; giảm bớt ảnh hưởng của đến cuộc sống c&oacute; thể kể đến như:\r\n\r\n\r\n	\r\n	Kiểm so&aacute;t trọng lượng\r\n	\r\n\r\n\r\nDuy tr&igrave; c&acirc;n nặng hợp l&yacute; gi&uacute;p ngăn ngừa ph&aacute;t triển c&aacute;c bệnh về khớp hiệu quả. Nghi&ecirc;n cứu cho thấy phụ nữ b&eacute;o ph&igrave; c&oacute; nguy cơ mắc tho&aacute;i h&oacute;a khớp cao gấp gần 4 lần so với phụ nữ b&igrave;nh thường. Nguy cơ đối với nam giới b&eacute;o ph&igrave; cao hơn gần 5 lần so với nam giới kh&ocirc;ng b&eacute;o ph&igrave;. Việc giảm &iacute;t nhất 5% trọng lượng cơ thể c&oacute; thể l&agrave;m giảm căng thẳng ở đầu gối, h&ocirc;ng v&agrave; lưng dưới.\r\n\r\n\r\n	\r\n	Tập luyện thể dục\r\n	\r\n\r\n\r\n\r\n\r\nMột chế độ sinh hoạt, luyện tập khoa học cũng g&oacute;p phần gi&uacute;p cải thiện t&igrave;nh trạng sức khỏe, n&acirc;ng cao sự linh hoạt, dẻo dai cho c&aacute;c khớp. Bạn n&ecirc;n lựa chọn tập luyện với cường độ hợp l&yacute;, tr&aacute;nh tập sai động t&aacute;c ảnh hưởng đến c&aacute;c khớp.\r\n\r\n\r\n	\r\n	Bảo vệ c&aacute;c khớp, ph&ograve;ng tr&aacute;nh chấn thương\r\n	\r\n\r\n\r\nMột số nguy&ecirc;n tắc tr&aacute;nh chấn thương như: kh&ocirc;ng uốn cong qu&aacute; 90 độ khi thực hiện động t&aacute;c gập đầu gối, lu&ocirc;n giữ cho b&agrave;n ch&acirc;n bằng phẳng trong khi duỗi tr&aacute;nh chấn thương ở đầu gối, khởi động trước khi tham gia c&aacute;c m&ocirc;n thể thao hoặc c&aacute;c hoạt động thể lực, mang gi&agrave;y vừa vặn,...\r\n\r\n\r\n	\r\n	Ăn uống khoa học\r\n	\r\n\r\n\r\nC&aacute;c chất dinh dưỡng c&oacute; li&ecirc;n quan mật thiết đến việc giảm nguy cơ mắc bệnh tho&aacute;i ho&aacute; khớp hoặc mức độ nghi&ecirc;m trọng của t&igrave;nh trạng bệnh. Bạn lu&ocirc;n cần x&acirc;y dựng một chế độ ăn hợp l&yacute;, khoa học, đầy đủ dinh dưỡng: bổ sung Axit b&eacute;o omega-3, vitamin D, ăn nhiều rau xanh, tr&aacute;i c&acirc;y v&agrave; hạn chế đồ chế biến nhiệt độ cao.\r\n\r\nĐể t&igrave;m hiểu th&ecirc;m c&aacute;c th&ocirc;ng tin về tho&aacute;i h&oacute;a khớp v&agrave; điều trị bệnh kịp thời, hiệu quả, li&ecirc;n hệ với MSC Clinic để được tư vấn:\r\n\r\nPh&ograve;ng kh&aacute;m đa khoa quốc tế MSC\r\n\r\nĐịa chỉ: Tầng G,1,2,3 - TT 20,21,22, Số 204 Nguyễn Tu&acirc;n, Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, H&agrave; Nội&nbsp;\r\nHotline 24/7:&nbsp;1900 0326 / 0965 505 988&nbsp;\r\nEmail: info@mscclinic.vn\r\n',' \r\n\r\n\r\n\r\n1. benh thoai hoa khop la gi? nhung vi tri thoai hoa khop thuong gap \r\n\r\nbenh thoai hoa khop la mot benh ly man tinh, la tinh trang hu hong phan sun, dem giua hai dau xuong co kem theo phan ung viem va giam sut luong dich nhon noi khop, gay ra tinh trang dau va cung khop. \r\n\r\n\r\nnguoi cao tuoi mac benh thoai hoa khop\r\n\r\no viet nam, uoc tinh cho thay tinh trang thoai hoa khop dang ngay cang pho bien va co dau hieu tre hoa, thong ke cho thay co 30% nguoi tren tuoi 35, 60% nguoi tren tuoi 65 va 85% nguoi tren tuoi 85 gap van de nay. bat ky vi tri nao tren co the cung co the xuat hien cac dau hieu thoai hoa: \r\n\r\n\r\n	\r\n	thoai hoa khop tien phat: thuong xuat hien o khop hang, khop dau goi, khop ban ngon chan cai, khop ban ngon, cot song co, cot song that lung,…\r\n	\r\n	\r\n	thoai hoa thu phat thuong do viem khop dang thap, di truyen, chan thuong: co the xuat hien o bat ky khop nao dac biet la khop doi xung nhu ban tay, tay, chan, dau goi,.... .\r\n	\r\n\r\n\r\n2. nhan biet cac trieu chung cua benh thoai hoa khop \r\n\r\ntrieu chung cua benh thoai hoa khop thuong phat trien cham va muc do tang nang hon theo thoi gian, cac dau hieu nhan biet bao gom: \r\n\r\n\r\n	\r\n	dau nhuc: cac con dau ban dau xuat hien trong hoac sau khi van dong, thuong am i va bien mat khi khong hoat dong. neu khong duoc tham kham va dieu tri kip thoi, cac con dau tang nang ve muc do va keo dai hon, gay ra nhieu dau don va phien toai, anh huong den doi song sinh hoat hang ngay.\r\n	\r\n	\r\n	cung khop: trieu chung nay thuong di kem voi nhung con dau va nhan thay de nhat ngay sau khi benh nhan thuc day, hoac sau mot thoi gian khong van dong, di chuyen.\r\n	\r\n	\r\n	tieng khop keu: xuat hien chu yeu khi di chuyen, cu dong, cung voi do la cam giac nong ran khi van dong.\r\n	\r\n	\r\n	teo co, sung tay: benh ly keo dai dan den tinh trang sung tay lam bien dang cac khop va vung co xung quanh khop, lau dan khong van dong trong thoi gian dai se gay teo co, bien dang khop,…\r\n	\r\n\r\n\r\n3. cac nguyen nhan pho bien gay benh thoai hoa khop\r\n\r\nmot so nguyen nhan gay ra benh thoai hoa khop nhu:\r\n\r\n\r\n	\r\n	qua trinh lao hoa tu nhien: co the truong thanh va gia di se khien cac te bao sun mat di kha nang sinh san va tai tao.cac te bao sun dan dan giam chuc nang tong hop chat tao nen soi collagen va mucopolysaccharide, lam cho chat luong va tinh dan hoi sun kem dan.\r\n	\r\n	\r\n	bam sinh: cac di dang bam sinh cung la mot trong cac nguyen nhan pho bien gay ra benh thoai hoa khop. dieu nay lam thay doi dien ti nen binh thuong cua khop hay cot song, khien mot so khop khong chiu duoc ap luc, lau dan gay thoai hoa.\r\n	\r\n	\r\n	di truyen: tinh trang nay xay ra o mot so doi tuong co khiem khuyet di truyen o nhung gen co chuc nang hinh thanh sun. viec nay dan den hao hut o sun khop, day nhanh tinh trang thoai hoa.cac bien dang thu phat: cac ton thuong do cac benh ly xuong khop, chan thuong do tai nan, nghe nghiep,... lam thay doi hinh thai cua khop va cot song.\r\n	\r\n	\r\n	beo phi, tang can qua nhanh: lam tang ap luc len xuong khop, lau dan lam xuong khop bi de nen, bien dang.\r\n	\r\n	\r\n	noi tiet: tinh trang thieu hormon o nu chinh la mot trong nhung yeu to gay nen tinh trang thoai hoa khop. cung voi do la cac hien tuong nhu roi loan hormon trong thoi ky man kinh, dai thao duong, loang xuong do noi tiet,... \r\n	\r\n\r\n\r\n4. nhung phuong phap dieu tri benh thoai hoa khop\r\n\r\n4.1. su dung thuoc\r\n\r\nsu dung thuoc giam dau dang uong trong dieu tri giup cai thien cac trieu chung cua benh mot cach kip thoi va nhanh chong. loai thuoc giam dau se tuy thuoc vao muc do nghiem trong cua con dau va cac tinh trang hoac van de suc khoe khac ma nguoi benh gap phai. mot so thuoc thuong duoc su dung nhu: thuoc giam dau, thuoc chong viem khong steroid (nsaid),....\r\n\r\ntrong 1 so truong hop co the dung den thuoc giam dau khang viem corticoid dang uong hoac dang tiem, tuy nhien can co su chi dinh cua bac si chuyen khoa.\r\n\r\n4.2. phau thuat\r\n\r\nphau thuat dieu tri thoai hoa khop chi can thiet trong mot so it truong hop da tham gia tri lieu bang cac bien phap khac nhung khong mang lai ket qua kha quan hoac phan khop gap ton thuong o muc do nghiem trong. phuong phap phau thuat co the cai thien dang ke cac trieu chung, tang kha nang van dong.\r\n\r\nthay khop la mot trong nhung chi dinh phau thuat tai tao khop, co the ap dung hieu qua tren cac khop nhu goi, hang, ngon tay,... voi phau thuat thay khop, phan khop da hu hai se bi loai bo va thay the vao do phan khop nhan tao duoc lam bang cac vat lieu y sinh dac biet. tuoi tho cua khop nhan tao co the keo dai tu 15-20 nam hoac hon.\r\n\r\n4.3. tiem prp huyet tuong giau tieu cau\r\n\r\n\r\nbac si thuc hien tiem prp\r\n\r\n \r\n\r\nsu dung prp trong dieu tri cac van de o co xuong khop la giai phap hien dai cho hieu qua nhanh chong voi kha nang tu chua lanh tu nhien, muc do an toan cao cho nguoi benh. tuy vao tinh trang lam sang cua nguoi benh va kha nang phuc hoi cua tung nguoi, lieu phap se duoc chi dinh phu hop. \r\n\r\nso voi cac phuong phap dieu tri truyen thong nhu su dung thuoc, phau thuat (noi soi hoac mo mo), tiem prp duoc danh gia cao ve su an toan do su dung mau duoc lay tu co the nguoi benh, co the cai thien va cham dut con dau nhanh chong toi 80-90%. \r\n\r\n4.4. cham cuu \r\n\r\ncham cuu la mot phuong phap co truyen ung dung vao dieu tri benh thoai hoa khop pho bien tu lau doi. phuong phap nay co tac dung giam dau va giup tang cuong khi huyet nuoi duong tai khop, tu do khop tro nen linh hoat va van dong tot hon. \r\n\r\n4.5. dieu tri benh thoai hoa khop bang m-msc therapy\r\n\r\nlieu phap m-msc therapy tai tao, phuc hoi toan dien va da tac dong co xuong khop la phac do dieu tri ket hop giua phuong phap vat li tri lieu, phuc hoi chuc nang bang cong nghe cao va y hoc tai tao.\r\n\r\n\r\n\r\n5. luu y phong ngua benh thoai hoa khop\r\n\r\nmot so luu y giup ngan ngua benh thoai hoa khop hoac su tien trien cua benh va giam bot anh huong cua den cuoc song co the ke den nhu:\r\n\r\n\r\n	\r\n	kiem soat trong luong\r\n	\r\n\r\n\r\nduy tri can nang hop ly giup ngan ngua phat trien cac benh ve khop hieu qua. nghien cuu cho thay phu nu beo phi co nguy co mac thoai hoa khop cao gap gan 4 lan so voi phu nu binh thuong. nguy co doi voi nam gioi beo phi cao hon gan 5 lan so voi nam gioi khong beo phi. viec giam it nhat 5% trong luong co the co the lam giam cang thang o dau goi, hong va lung duoi.\r\n\r\n\r\n	\r\n	tap luyen the duc\r\n	\r\n\r\n\r\n\r\n\r\nmot che do sinh hoat, luyen tap khoa hoc cung gop phan giup cai thien tinh trang suc khoe, nang cao su linh hoat, deo dai cho cac khop. ban nen lua chon tap luyen voi cuong do hop ly, tranh tap sai dong tac anh huong den cac khop.\r\n\r\n\r\n	\r\n	bao ve cac khop, phong tranh chan thuong\r\n	\r\n\r\n\r\nmot so nguyen tac tranh chan thuong nhu: khong uon cong qua 90 do khi thuc hien dong tac gap dau goi, luon giu cho ban chan bang phang trong khi duoi tranh chan thuong o dau goi, khoi dong truoc khi tham gia cac mon the thao hoac cac hoat dong the luc, mang giay vua van,...\r\n\r\n\r\n	\r\n	an uong khoa hoc\r\n	\r\n\r\n\r\ncac chat dinh duong co lien quan mat thiet den viec giam nguy co mac benh thoai hoa khop hoac muc do nghiem trong cua tinh trang benh. ban luon can xay dung mot che do an hop ly, khoa hoc, day du dinh duong: bo sung axit beo omega-3, vitamin d, an nhieu rau xanh, trai cay va han che do che bien nhiet do cao.\r\n\r\nde tim hieu them cac thong tin ve thoai hoa khop va dieu tri benh kip thoi, hieu qua, lien he voi msc clinic de duoc tu van:\r\n\r\nphong kham da khoa quoc te msc\r\n\r\ndia chi: tang g,1,2,3 - tt 20,21,22, so 204 nguyen tuan, nhan chinh, thanh xuan, ha noi \r\nhotline 24/7: 1900 0326 / 0965 505 988 \r\nemail: info@mscclinic.vn\r\n',1658390337,NULL,'',1,'',NULL,'dieu-tri-benh-thoai-hoa-khop/',0,'id_category',13,'category','/uploaded/Home/thoai-hoa-khop-home.jpg'),(570,'News Event','news event',NULL,'','News EventNews EventNews EventNews Event','news eventnews eventnews eventnews event',1658390337,NULL,'',1,'',NULL,'en/news-event/',0,'id_category',31,'category',''),(571,'About Us','about us',NULL,'','About UsAbout UsAbout UsAbout Us','about usabout usabout usabout us',1658390337,NULL,'',1,'',NULL,'en/about-us/',0,'id_category',32,'category',''),(573,'LogoSite','logosite',NULL,'','','',1658390337,NULL,'',1,'',NULL,'en/logosite/',0,'id_category',29,'category',''),(574,'SlideHome','slidehome',NULL,'','','',1658390337,NULL,'',1,'',NULL,'en/slidehome/',0,'id_category',30,'category',''),(575,'Giới thiệu Trang chủ','gioi thieu trang chu',NULL,'','','',1658390337,NULL,'',1,'',NULL,'gioi-thieu-trang-chu/',0,'id_category',16,'category',''),(576,'Cơ sở vật chất - Trang thiết bị hiện đại','co so vat chat - trang thiet bi hien dai',NULL,'','','',1658390337,NULL,'',1,'',NULL,'trang-thiet-bi-hien-dai/',0,'id_category',18,'category',''),(577,'Hành trình khách hàng điều trị  tại phòng khám MSC','hanh trinh khach hang dieu tri  tai phong kham msc',NULL,'','','',1658390337,NULL,'',1,'',NULL,'hanh-trinh-khach-hang-dieu-tri-tai-phong-kham-msc/',0,'id_category',19,'category',''),(578,'Giới thiệu Ưu điểm ','gioi thieu uu diem ',NULL,'','','',1658390337,NULL,'',1,'',NULL,'gioi-thieu-uu-diem/',0,'id_category',17,'category',''),(586,'Home Page','home page',NULL,'','','',1658390337,NULL,'',1,'',NULL,'en/',0,'id_category',28,'category',''),(596,'Chăm sóc thai IVF','cham soc thai ivf','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','lorem ipsum??is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum.','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','lorem ipsum??is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum.',1660015890,NULL,'',1,'',NULL,'cham-soc-thai-ivf/',NULL,'id_category',38,'category','/uploaded/Home/gioi-thieu-ve-lieu-phap-m-msc-clinic-video.jpg'),(597,'Nam khoa','nam khoa','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','lorem ipsum??is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum.','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','lorem ipsum??is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum.',1660016099,NULL,'',1,'',NULL,'nam-khoa/',NULL,'id_category',39,'category',''),(589,'test dịch vụ','test dich vu','','','','',1659493010,NULL,'',1,'',NULL,'test-dich-vu/',NULL,'id_category',34,'category','test dịch vụ'),(605,'Dịch vụ','dich vu','','','','',1660035209,NULL,'',1,'',NULL,'dich-vu/',NULL,'id_category',43,'category',''),(594,'Tầm nhìn sứ mệnh','tam nhin su menh','Tầm nh&igrave;n sứ mệnh','tam nhin su menh','Tầm nh&igrave;n sứ mệnh','tam nhin su menh',1660014336,NULL,'',1,'',NULL,'tam-nhin-su-menh/',NULL,'id_category',36,'category','/uploaded/Home/item-home1.png'),(592,'Tầm nhìn','tam nhin','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nlorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nlorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',1659929495,NULL,'',1,'',NULL,'tam-nhin.html',0,'id_duan',1,'du_an','/uploaded/Home/hoi-phuc-dau-phau-thuat-co-xuong-khop-home.jpg'),(593,'Tầm nhìn','tam nhin','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',1659929555,NULL,'',1,'',NULL,'tam-nhin.html',0,'id_duan',2,'du_an',''),(616,'Tầm nhìn','tam nhin','','','','',1660617829,NULL,'',1,'',NULL,'tam-nhin.html',36,'id_info',2,'info_donvi','/uploaded/about/tamnhin1.png'),(617,'Tầm nhìn','tam nhin','','','','',1660617830,NULL,'',1,'',NULL,'tam-nhin.html',36,'id_info',3,'info_donvi','/uploaded/about/tamnhin1.png'),(618,'Tầm nhìn','tam nhin','','','','',1660617831,NULL,'',1,'',NULL,'tam-nhin.html',36,'id_info',4,'info_donvi','/uploaded/about/tamnhin1.png');
/*!40000 ALTER TABLE `search_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id_service` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `title` text,
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `imageadv` varchar(512) DEFAULT NULL,
  `intro` mediumtext,
  `content` longtext,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `id_user` bigint(20) DEFAULT '0',
  `file` text,
  `tieubieu` int(4) DEFAULT '0',
  `hit` int(11) DEFAULT NULL,
  `inhome` tinyint(4) DEFAULT '0',
  `groupcat` varchar(1000) DEFAULT '0',
  `tags` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `last_modify` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id_service`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (4,34,'Vô sinh nam','Vô sinh nam','','','/uploaded/Home/bakground_home.png','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',1660034880,4,1,8,'null',0,NULL,0,':34:',NULL,'vo-sinh-nam.html',1660035033),(6,44,'Lorem ipsum dolor sit amet, consectetur adipiscing elit','Lorem ipsum dolor sit amet, consectetur adipiscing elit','','','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit','Lorem ipsum dolor sit amet, consectetur adipiscing elit',1660035840,5,1,8,'null',0,NULL,0,':',NULL,'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit.html',1660035916);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_detail`
--

DROP TABLE IF EXISTS `service_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_service` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `title` text,
  `image` varchar(255) DEFAULT '',
  `imageadv` varchar(512) DEFAULT '',
  `intro` mediumtext,
  `content` longtext,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `id_user` bigint(20) DEFAULT '0',
  `url` varchar(1000) DEFAULT '',
  `item_type` varchar(255) DEFAULT '',
  `keywords` text,
  `description` text,
  `last_modify` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_detail`
--

LOCK TABLES `service_detail` WRITE;
/*!40000 ALTER TABLE `service_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  PRIMARY KEY (`setting_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('site_name','IVF Việt Âu'),('dir_path',''),('site_email','info@ivfev.vn'),('use_smtp','0'),('smtp_host',''),('smtp_username','bm'),('smtp_password','mInh@dmin'),('template_dir','templates'),('language_dir','english'),('date_format','d/m/Y'),('time_format','H:i'),('convert_tool','gd'),('convert_tool_path',''),('gz_compress','0'),('gz_compress_level','1'),('upload_mode','1'),('allowed_mediatypes','jpg,gif,png,bmp,aif,au,avi,mid,mov,mp3,mpg,swf,wav,rar,ra,rm,zip,pdf,txt,xls,doc,swf'),('max_thumb_width','400'),('max_thumb_height','300'),('max_image_height','1024'),('max_media_size','5000'),('upload_notify','0'),('upload_emails',''),('auto_thumbnail','1'),('auto_thumbnail_dimension','180'),('auto_thumbnail_resize_type','1'),('auto_thumbnail_quality','100'),('id_country','207'),('paging_range','5'),('watermark_text',''),('upload_media_path','uploaded/files/'),('upload_image_path','uploaded/images/'),('session_timeout','15'),('max_image_width','400'),('time_offset','0'),('http_host',''),('document_root','/home/ivf/domains/ivf.24h.co/private_html'),('site_keywords',''),('site_description',''),('category_item','8'),('diachi_cty',''),('guid','d2c9ff3578fefb734092c8cb6125b7378302b983;a13135493f443447047d828fb7e38cb1f4a9a6e7;257b8ac496aba1f20b3b3e4c1aa2530ad3838954'),('bgimage',''),('active_site','1'),('content_active_site',''),('acticle_item','8'),('watermark_image',''),('tigia','20880'),('dir_autoupload','uploaded/images/'),('toppage',''),('mailer','SMTP'),('bodypage',''),('bottompage','');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settingshow`
--

DROP TABLE IF EXISTS `settingshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settingshow` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settingshow`
--

LOCK TABLES `settingshow` WRITE;
/*!40000 ALTER TABLE `settingshow` DISABLE KEYS */;
INSERT INTO `settingshow` VALUES (1,'1','{\"newsinpage\":\"5\",\"hotline\":\"02113.656252\",\"companyname\":\"IVF Vi\\u1ec7t \\u00c2u\",\"companyaddress\":\"Nguy\\u1ec5n T\\u1ea5t Th\\u00e0nh, \\u0110\\u1ecbnh Trung, TP. V\\u0129nh Y\\u00ean, V\\u0129nh Ph\\u00fac, Vi\\u1ec7t Nam\",\"companyphone\":\"0835.215.115\",\"companyemail\":\"info@ivfev.vn\",\"companywebsite\":\"ivfev.vn\",\"companyinfo\":\"L\\u1ecbch kh\\u00e1m: 7h15 - 16h45 (Th\\u1ee9 2 - Th\\u1ee9 7)\",\"facebook\":\"https:\\/\\/www.facebook.com\\/ivfev\",\"youtube\":\"https:\\/\\/www.youtube.com\\/c\\/B%E1%BB%87nhvi%E1%BB%87nL%E1%BA%A1cVi%E1%BB%87tV%C4%A9nhPh%C3%BAc\\/channels\",\"twitter\":\"\",\"pinterest\":\"\",\"fanpage\":\"https:\\/\\/www.facebook.com\\/ivfev\",\"apikey\":\"\"}',0);
/*!40000 ALTER TABLE `settingshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setups`
--

DROP TABLE IF EXISTS `setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setups` (
  `setup_name` varchar(255) NOT NULL,
  `setup_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setups`
--

LOCK TABLES `setups` WRITE;
/*!40000 ALTER TABLE `setups` DISABLE KEYS */;
/*!40000 ALTER TABLE `setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static`
--

DROP TABLE IF EXISTS `static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static` (
  `id_static` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_catstatic` bigint(11) NOT NULL DEFAULT '0',
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `ngay_dang` bigint(20) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `inwhere` varchar(255) NOT NULL,
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`id_static`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static`
--

LOCK TABLES `static` WRITE;
/*!40000 ALTER TABLE `static` DISABLE KEYS */;
INSERT INTO `static` VALUES (25,'Thông tin chân trang','<span style=\"font-size:20px;\"><span style=\"line-height:2.5;\">Đơn vị hỗ trợ sinh sản Việt &Acirc;u - Bệnh viện Hữu Nghị Lạc Việt</span></span><br />\r\nĐịa chỉ: Nguyễn Tất Th&agrave;nh, Định Trung, TP. Vĩnh Y&ecirc;n, Vĩnh Ph&uacute;c, Việt Nam<br />\r\nHotline: 1900 1269<br />\r\nDi động:&nbsp;0835.215.115<br />\r\nEmail: info@ivfev.vn<br />\r\nGiờ l&agrave;m việc: Từ 7h15 - 16h45 tất cả c&aacute;c ng&agrave;y trong tuần',0,0,0,1,0,'','footer',''),(26,'Company Name','<strong>Address: </strong>Tầng 5, Khu văn ph&ograve;ng A, T&ograve;a nh&agrave; Imperia Garden, Số 203 Phố Nguyễn Huy Tưởng, Thanh Xu&acirc;n, H&agrave; Nội<br />\r\n<strong>Tel:</strong> 0966.877.869 - 0934.877.869<br />\r\n<strong>Email:</strong> thangmayplc@gmail.com',0,0,0,1,0,'','footer','en'),(30,'Copyright','&copy; Copyright by&nbsp;',0,0,0,1,0,'','copyright','en'),(31,'Trang Liên hệ','- Adress: 16th FLoor - PV Oil Holding, 148 Hoang Quoc Viet, Cau Giay, Ha Noi<br />\r\n- Tel: (04).37634666 / 37634777 / 38374999<br />\r\n- Email: info@anphatgroup.com.vn<br />\r\n- www.anphatgroup.com.vn',0,0,0,1,0,'','','en'),(32,'Footer cn','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"table-list\" style=\"border-collapse:collapse;width:100%;\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"25\" width=\"23\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(1).png\" style=\"float: left;\" /></td>\r\n			<td>Địa chỉ: Số 109 Nguyễn Tu&acirc;n, P.Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, HN</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(2).png\" style=\"float: left;\" /></td>\r\n			<td>Tel: 094.8866.109 - 088.884.5050</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(3).png\" style=\"float: left;\" /></td>\r\n			<td>Email: thelegend@daiviet.vn</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(4).png\" style=\"float: left;\" /></td>\r\n			<td>Website: www.thelegenddaiviet.vn&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',0,0,0,1,0,'','footer','cn'),(33,'Footer kr','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"table-list\" style=\"border-collapse:collapse;width:100%;\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"25\" width=\"23\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(1).png\" style=\"float: left;\" /></td>\r\n			<td>Địa chỉ: Số 109 Nguyễn Tu&acirc;n, P.Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, HN</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(2).png\" style=\"float: left;\" /></td>\r\n			<td>Tel: 094.8866.109 - 088.884.5050</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(3).png\" style=\"float: left;\" /></td>\r\n			<td>Email: thelegend@daiviet.vn</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(4).png\" style=\"float: left;\" /></td>\r\n			<td>Website: www.thelegenddaiviet.vn&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',0,0,0,1,0,'','footer','kr'),(38,'Copyright','Copyright &copy; 2022 IVF Việt &Acirc;u',0,0,0,1,0,'','copyright','');
/*!40000 ALTER TABLE `static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_text`
--

DROP TABLE IF EXISTS `static_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_text` (
  `id_static` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `ngay_dang` bigint(20) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `code_name` varchar(255) NOT NULL,
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`id_static`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_text`
--

LOCK TABLES `static_text` WRITE;
/*!40000 ALTER TABLE `static_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `static_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_image`
--

DROP TABLE IF EXISTS `sys_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `image_desc` text,
  `thu_tu` bigint(20) DEFAULT '0',
  `image` varchar(600) DEFAULT NULL,
  `id_category` bigint(20) DEFAULT NULL,
  `table_name` varchar(128) DEFAULT NULL,
  `id_item` varchar(128) DEFAULT NULL,
  `id_value` bigint(20) DEFAULT NULL,
  `type_code` varchar(128) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_image`
--

LOCK TABLES `sys_image` WRITE;
/*!40000 ALTER TABLE `sys_image` DISABLE KEYS */;
INSERT INTO `sys_image` VALUES (151,'',NULL,0,'uploaded/Banner/ve-msc-clinic.jpg',8,NULL,NULL,NULL,NULL,1),(166,'',NULL,0,'uploaded/Banner/benh-thoai-hoa-khop.jpg',13,NULL,NULL,NULL,NULL,1),(171,'',NULL,0,'uploaded/Banner/benh-ly-cot-song.jpg',21,NULL,NULL,NULL,NULL,1),(173,'',NULL,0,'uploaded/Banner/viem-gan.jpg',22,NULL,NULL,NULL,NULL,1),(176,'',NULL,0,'uploaded/Banner/hoi-phuc-sau-phau-thuat-cxk.jpg',23,NULL,NULL,NULL,NULL,1),(201,'',NULL,0,'uploaded/slideshow/banner-index1.png',1,NULL,NULL,NULL,NULL,1),(177,'',NULL,0,'/uploaded/Banner/hop-tac-y-khoa-fix.jpg',24,NULL,NULL,NULL,NULL,1),(114,'',NULL,0,'/uploaded/Banner/kien-thuc-suc-khoe-msc-clinic.jpg',25,NULL,NULL,NULL,NULL,1),(206,'',NULL,0,'uploaded/Banner/lien-he-msc-clinic.jpg',7,NULL,NULL,NULL,NULL,1),(205,'',NULL,0,'uploaded/slideshow/about.png',9,NULL,NULL,NULL,NULL,1),(105,'',NULL,0,'/uploaded/Banner/doi-tac-cua-msc-clinic.jpg',10,NULL,NULL,NULL,NULL,1),(169,'',NULL,0,'uploaded/Banner/cong-nghe-trang-thiet-bi-msc-clinic.jpg',11,NULL,NULL,NULL,NULL,1),(164,'',NULL,0,'uploaded/Banner/chan-thuong-the-thao.jpg',14,NULL,NULL,NULL,NULL,1),(90,'',NULL,0,'uploaded/files/banner%20MSC%20-wed-19.jpg',15,NULL,NULL,NULL,NULL,1),(184,'',NULL,0,'uploaded/Banner/tin-tuc-su-kien-msc-clinic.jpg',6,NULL,NULL,NULL,NULL,1),(182,'',NULL,0,'uploaded/Banner/lieu-phap-m-msc-therapy.jpg',27,NULL,NULL,NULL,NULL,1),(96,'',NULL,0,'uploaded/files/banner%20MSC%20-wed-20.jpg',26,NULL,NULL,NULL,NULL,1),(200,'',NULL,0,'uploaded/slideshow/contact.jpg',1,NULL,NULL,NULL,NULL,1),(203,'',NULL,0,'uploaded/slideshow/about.png',36,NULL,NULL,NULL,NULL,1),(187,'',NULL,0,'/uploaded/Home/bakground_home.png',43,NULL,NULL,NULL,NULL,1),(191,'',NULL,0,'uploaded/Home/bakground_home.png',44,NULL,NULL,NULL,NULL,1),(199,'',NULL,2,'uploaded/slideshow/bannerhome.jpg',45,NULL,NULL,NULL,NULL,1),(202,'',NULL,0,'/uploaded/slideshow/banner-index1.png',34,NULL,NULL,NULL,NULL,1),(211,'',NULL,0,'uploaded/slideshow/banner-about.jpg',39,NULL,NULL,NULL,NULL,1),(210,'',NULL,0,'uploaded/1222x465%20cover%20fb%20IVF%20th%C3%A1ng%208-01.jpg',52,NULL,NULL,NULL,NULL,1),(208,'',NULL,0,'/uploaded/1222x465%20cover%20fb%20IVF%20th%C3%A1ng%208-01.jpg',53,NULL,NULL,NULL,NULL,1),(209,'',NULL,0,'/uploaded/1222x465%20cover%20fb%20IVF%20th%C3%A1ng%208-01.jpg',54,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `sys_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gia_tri` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuyendung`
--

DROP TABLE IF EXISTS `tuyendung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuyendung` (
  `id_tuyendung` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `title` text,
  `intro` text,
  `content` text,
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `ngay_dang` bigint(20) unsigned DEFAULT '0',
  `thu_tu` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `id_user` bigint(20) DEFAULT '0',
  `file` text,
  `soluong` int(4) DEFAULT '0',
  `hot` tinyint(4) DEFAULT '0',
  `groupcat` varchar(1000) DEFAULT '0',
  `tags` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `tencongty` varchar(255) DEFAULT NULL,
  `noilamviec` varchar(255) DEFAULT NULL,
  `ngayhethan` bigint(20) DEFAULT NULL,
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_tuyendung`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuyendung`
--

LOCK TABLES `tuyendung` WRITE;
/*!40000 ALTER TABLE `tuyendung` DISABLE KEYS */;
/*!40000 ALTER TABLE `tuyendung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuyendung_request`
--

DROP TABLE IF EXISTS `tuyendung_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuyendung_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `message` text,
  `subject` varchar(1024) DEFAULT NULL,
  `createdate` bigint(20) DEFAULT NULL,
  `xem` int(11) DEFAULT NULL,
  `url` varchar(512) CHARACTER SET latin1 DEFAULT NULL,
  `file` varchar(512) CHARACTER SET latin1 DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuyendung_request`
--

LOCK TABLES `tuyendung_request` WRITE;
/*!40000 ALTER TABLE `tuyendung_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tuyendung_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_table` varchar(255) DEFAULT NULL,
  `id_item` bigint(20) DEFAULT '0',
  `data_type` varchar(255) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  `real_url` varchar(1000) DEFAULT NULL,
  `alias_url` varchar(1000) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `id_category` bigint(20) DEFAULT '0',
  `page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_module`
--

DROP TABLE IF EXISTS `user_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_module` (
  `id_user_module` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_module` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user_module`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_module`
--

LOCK TABLES `user_module` WRITE;
/*!40000 ALTER TABLE `user_module` DISABLE KEYS */;
INSERT INTO `user_module` VALUES (27,11,53),(29,11,48),(30,11,43),(45,12,98),(46,12,119),(49,12,89),(50,12,9),(52,12,94),(54,12,53),(55,12,52),(56,12,48),(57,12,43),(58,12,26),(59,12,5),(63,11,26),(64,11,124),(65,12,124),(66,13,119),(67,13,89),(70,16,98),(71,16,119),(72,16,89),(73,16,159),(74,16,157),(75,16,156),(76,16,155),(77,16,153),(78,16,150),(79,16,144),(80,16,124),(81,16,52),(82,16,48),(83,16,43),(84,16,26),(85,18,98),(86,18,89),(87,18,9),(88,18,179),(90,18,177),(91,18,176),(92,18,175),(93,18,174),(94,18,172),(95,18,171),(96,18,170),(97,18,169),(99,18,165),(100,18,161),(101,18,159),(102,18,157),(103,18,156),(104,18,155),(105,18,144),(106,18,52),(107,18,48),(108,18,26),(139,20,124),(138,20,171),(137,20,172),(136,20,9),(135,20,98),(140,21,172),(141,21,171),(142,21,52),(144,25,179),(149,30,179),(148,29,170),(150,31,98),(151,31,119),(152,31,89),(153,31,9),(154,31,183),(155,31,179),(156,31,176),(157,31,175),(158,31,172),(159,31,171),(160,31,170),(161,31,165),(162,31,163),(163,31,162),(164,31,160),(165,31,159),(166,31,157),(167,31,153),(168,31,144),(169,31,135),(170,31,124),(171,31,52),(172,31,48),(173,31,43),(174,31,26);
/*!40000 ALTER TABLE `user_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_users` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `lastvisit` bigint(20) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `super` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(300) DEFAULT NULL,
  `yahoo` varchar(255) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `showed` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_users`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'admin','admin','21232f297a57a5a743894a0e4a801fc3','','',1584705747,1,1,'HÃ  Ná»™i',NULL,'',1),(14,'BM','bm','6f86eebff01efaa4a89597d46708f1a2','','',1586489145,1,1,NULL,NULL,NULL,0),(31,'Linh Quách','Linhquach','095b72ea1342d81bfb7588705740ef42','dslinhquach@mescells.com','',0,1,0,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id_video` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` longtext,
  `thu_tu` bigint(20) DEFAULT '0',
  `id_category` bigint(20) DEFAULT '0',
  `id_user` bigint(20) DEFAULT '0',
  `active` tinyint(4) DEFAULT '0',
  `ngay_dang` bigint(20) DEFAULT '0',
  `image` varchar(600) DEFAULT NULL,
  `video` varchar(600) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `title` varchar(400) DEFAULT NULL,
  `groupcat` varchar(1000) DEFAULT NULL,
  `intro` text,
  `showinfooter` int(11) DEFAULT '0',
  `last_modify` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_video`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vn_district`
--

DROP TABLE IF EXISTS `vn_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vn_district` (
  `districtid` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL,
  `other_info` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`districtid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vn_district`
--

LOCK TABLES `vn_district` WRITE;
/*!40000 ALTER TABLE `vn_district` DISABLE KEYS */;
/*!40000 ALTER TABLE `vn_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vn_province`
--

DROP TABLE IF EXISTS `vn_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vn_province` (
  `provinceid` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `thu_tu` int(11) DEFAULT '0',
  PRIMARY KEY (`provinceid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vn_province`
--

LOCK TABLES `vn_province` WRITE;
/*!40000 ALTER TABLE `vn_province` DISABLE KEYS */;
INSERT INTO `vn_province` VALUES (1,'Thành phố Hà Nội','Thành phố Trung ương',0),(2,'Hà Giang','Tỉnh',0),(4,'Cao Bằng','Tỉnh',0),(6,'Bắc Kạn','Tỉnh',0),(8,'Tuyên Quang','Tỉnh',0),(10,'Lào Cai','Tỉnh',0),(11,'Điện Biên','Tỉnh',0),(12,'Lai Châu','Tỉnh',0),(14,'Sơn La','Tỉnh',0),(15,'Yên Bái','Tỉnh',0),(17,'Hoà Bình','Tỉnh',0),(19,'Thái Nguyên','Tỉnh',0),(20,'Lạng Sơn','Tỉnh',0),(22,'Quảng Ninh','Tỉnh',0),(24,'Bắc Giang','Tỉnh',0),(25,'Phú Thọ','Tỉnh',0),(26,'Vĩnh Phúc','Tỉnh',0),(27,'Bắc Ninh','Tỉnh',0),(30,'Hải Dương','Tỉnh',0),(31,'Thành phố Hải Phòng','Thành phố Trung ương',0),(33,'Hưng Yên','Tỉnh',0),(34,'Thái Bình','Tỉnh',0),(35,'Hà Nam','Tỉnh',0),(36,'Nam Định','Tỉnh',0),(37,'Ninh Bình','Tỉnh',0),(38,'Thanh Hóa','Tỉnh',0),(40,'Nghệ An','Tỉnh',0),(42,'Hà Tĩnh','Tỉnh',0),(44,'Quảng Bình','Tỉnh',0),(45,'Quảng Trị','Tỉnh',0),(46,'Thừa Thiên Huế','Tỉnh',0),(48,'Thành phố Đà Nẵng','Thành phố Trung ương',0),(49,'Quảng Nam','Tỉnh',0),(51,'Quảng Ngãi','Tỉnh',0),(52,'Bình Định','Tỉnh',0),(54,'Phú Yên','Tỉnh',0),(56,'Khánh Hòa','Tỉnh',0),(58,'Ninh Thuận','Tỉnh',0),(60,'Bình Thuận','Tỉnh',0),(62,'Kon Tum','Tỉnh',0),(64,'Gia Lai','Tỉnh',0),(66,'Đắk Lắk','Tỉnh',0),(67,'Đắk Nông','Tỉnh',0),(68,'Lâm Đồng','Tỉnh',0),(70,'Bình Phước','Tỉnh',0),(72,'Tây Ninh','Tỉnh',0),(74,'Bình Dương','Tỉnh',0),(75,'Đồng Nai','Tỉnh',0),(77,'Bà Rịa - Vũng Tàu','Tỉnh',0),(79,'Thành phố Hồ Chí Minh','Thành phố Trung ương',0),(80,'Long An','Tỉnh',0),(82,'Tiền Giang','Tỉnh',0),(83,'Bến Tre','Tỉnh',0),(84,'Trà Vinh','Tỉnh',0),(86,'Vĩnh Long','Tỉnh',0),(87,'Đồng Tháp','Tỉnh',0),(89,'An Giang','Tỉnh',0),(91,'Kiên Giang','Tỉnh',0),(92,'Thành phố Cần Thơ','Thành phố Trung ương',0),(93,'Hậu Giang','Tỉnh',0),(94,'Sóc Trăng','Tỉnh',0),(95,'Bạc Liêu','Tỉnh',0),(96,'Cà Mau','Tỉnh',0);
/*!40000 ALTER TABLE `vn_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yahoo`
--

DROP TABLE IF EXISTS `yahoo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yahoo` (
  `id_yahoo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nic` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thu_tu` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `sky` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `lang` varchar(128) DEFAULT '',
  PRIMARY KEY (`id_yahoo`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yahoo`
--

LOCK TABLES `yahoo` WRITE;
/*!40000 ALTER TABLE `yahoo` DISABLE KEYS */;
/*!40000 ALTER TABLE `yahoo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ykien`
--

DROP TABLE IF EXISTS `ykien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ykien` (
  `id_ykien` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `image_title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `intro` mediumtext NOT NULL,
  `content` longtext NOT NULL,
  `ngay_dang` bigint(20) unsigned NOT NULL DEFAULT '0',
  `thu_tu` bigint(20) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `small_image` varchar(255) NOT NULL,
  `normal_image` varchar(255) NOT NULL,
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `file` text NOT NULL,
  `tieubieu` int(4) DEFAULT '0',
  `hit` int(11) DEFAULT NULL,
  `imgshowdetail` tinyint(4) NOT NULL DEFAULT '0',
  `hot` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(4) NOT NULL DEFAULT '1',
  `showcomment` tinyint(4) NOT NULL DEFAULT '0',
  `postcomment` tinyint(4) NOT NULL DEFAULT '0',
  `groupcat` varchar(1000) NOT NULL DEFAULT '0',
  `tags` varchar(1000) NOT NULL,
  `soure` varchar(255) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_name` varchar(1024) DEFAULT NULL,
  `author_email` varchar(512) DEFAULT NULL,
  `author_info` text,
  `id_service` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id_ykien`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ykien`
--

LOCK TABLES `ykien` WRITE;
/*!40000 ALTER TABLE `ykien` DISABLE KEYS */;
/*!40000 ALTER TABLE `ykien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-05  9:57:01
