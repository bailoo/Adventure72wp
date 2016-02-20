
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
DROP TABLE IF EXISTS `ad_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `ad_posts` WRITE;
/*!40000 ALTER TABLE `ad_posts` DISABLE KEYS */;
INSERT INTO `ad_posts` VALUES (1,1,'2016-02-20 13:41:54','2016-02-20 13:41:54','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2016-02-20 13:41:54','2016-02-20 13:41:54','',0,'http://adventure72.com/?p=1',0,'post','',1),(3,1,'2016-02-20 13:42:45','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2016-02-20 13:42:45','0000-00-00 00:00:00','',0,'http://adventure72.com/?p=3',0,'post','',0),(4,1,'2016-02-20 13:54:19','2016-02-20 13:54:19','<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit \"Send\"]</p>\nAdventure72 - Book Your Trek, Camping, Rafting, Hikes \"[your-subject]\"\n[your-name] <wordpress@adventure72.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Adventure72 - Book Your Trek, Camping, Rafting, Hikes (http://adventure72.com)\nabhishek.singh.bailoo@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nAdventure72 - Book Your Trek, Camping, Rafting, Hikes \"[your-subject]\"\nAdventure72 - Book Your Trek, Camping, Rafting, Hikes <wordpress@adventure72.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Adventure72 - Book Your Trek, Camping, Rafting, Hikes (http://adventure72.com)\n[your-email]\nReply-To: abhishek.singh.bailoo@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2016-02-20 13:54:19','2016-02-20 13:54:19','',0,'http://adventure72.com/?post_type=wpcf7_contact_form&p=4',0,'wpcf7_contact_form','',0),(5,1,'2016-02-20 13:56:55','2016-02-20 13:56:55','','Shop','','publish','closed','closed','','shop','','','2016-02-20 13:56:55','2016-02-20 13:56:55','',0,'http://adventure72.com/shop/',0,'page','',0),(6,1,'2016-02-20 13:56:55','2016-02-20 13:56:55','[woocommerce_cart]','Cart','','publish','closed','closed','','cart','','','2016-02-20 13:56:55','2016-02-20 13:56:55','',0,'http://adventure72.com/cart/',0,'page','',0),(7,1,'2016-02-20 13:56:55','2016-02-20 13:56:55','[woocommerce_checkout]','Checkout','','publish','closed','closed','','checkout','','','2016-02-20 13:56:55','2016-02-20 13:56:55','',0,'http://adventure72.com/checkout/',0,'page','',0),(8,1,'2016-02-20 13:56:55','2016-02-20 13:56:55','[woocommerce_my_account]','My Account','','publish','closed','closed','','my-account','','','2016-02-20 13:56:55','2016-02-20 13:56:55','',0,'http://adventure72.com/my-account/',0,'page','',0),(9,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_dashboard]','Vendor Dashboard','','publish','closed','closed','','wcmp_vendor_dashboard','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_dashboard/',0,'page','',0),(10,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[shop_settings]','Shop Settings','','publish','closed','closed','','wcmp_shop_settings','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_shop_settings/',0,'page','',0),(11,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_orders]','Vendor Orders','','publish','closed','closed','','wcmp_vendor_orders','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_orders/',0,'page','',0),(12,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_order_detail]','Vendor Order Details','','publish','closed','closed','','wcmp_vendor_order_detail','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_order_detail/',0,'page','',0),(13,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[transaction_thankyou]','Withdrawal Request Status','','publish','closed','closed','','wcmp_withdrawal_request','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_withdrawal_request/',0,'page','',0),(14,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[transaction_details]','Transaction Details','','publish','closed','closed','','wcmp_transaction_details','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_transaction_details/',0,'page','',0),(15,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_policies]','Vendor Policies','','publish','closed','closed','','wcmp_vendor_policies','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_policies/',0,'page','',0),(16,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_billing]','Vendor Billing','','publish','closed','closed','','wcmp_vendor_billing','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_billing/',0,'page','',0),(17,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_shipping_settings]','Vendor Shipping','','publish','closed','closed','','wcmp_vendor_shipping','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_shipping/',0,'page','',0),(18,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_report]','Vendor Reports','','publish','closed','closed','','wcmp_vendor_report','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_report/',0,'page','',0),(19,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_widthdrawals]','Vendor Widthdrawals','','publish','closed','closed','','wcmp_vendor_widthdrawals','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_widthdrawals/',0,'page','',0),(20,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_university]','Vendor University','','publish','closed','closed','','wcmp_vendor_university','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_university/',0,'page','',0),(21,1,'2016-02-20 14:10:35','2016-02-20 14:10:35','[vendor_announcements]','Vendor Announcements','','publish','closed','closed','','wcmp_vendor_announcements','','','2016-02-20 14:10:35','2016-02-20 14:10:35','',0,'http://adventure72.com/wcmp_vendor_announcements/',0,'page','',0),(22,1,'2016-02-20 18:32:29','2016-02-20 18:32:29','','Adventure72 Logo','','inherit','open','closed','','adventure_72_logo','','','2016-02-20 18:32:47','2016-02-20 18:32:47','',0,'http://adventure72.com/wp-content/uploads/2016/02/Adventure_72_Logo.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `ad_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

