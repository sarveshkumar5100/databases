/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.1.32-MariaDB : Database - hometechex
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hometechex` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hometechex`;

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `brands` */

/*Table structure for table `bulk_images` */

DROP TABLE IF EXISTS `bulk_images`;

CREATE TABLE `bulk_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `bulk_images` */

insert  into `bulk_images`(`id`,`image`,`parent_id`,`module_id`,`status`,`created_at`,`updated_at`) values 
(1,'1595569504WhatsApp Image 2020-07-16 at 12.02.51.jpeg',3,1,'1','2020-07-24 05:45:04','2020-07-24 05:45:04'),
(2,'1595569504WhatsApp Image 2020-07-16 at 12.00.30.jpeg',3,1,'1','2020-07-24 05:45:04','2020-07-24 05:45:04'),
(3,'1595678670Website 2020 v7.pdf',3,1,'1','2020-07-25 12:04:30','2020-07-25 12:04:30'),
(4,'1595678723logo.png',3,1,'1','2020-07-25 12:05:23','2020-07-25 12:05:23'),
(5,'1595678730logo.png',3,1,'1','2020-07-25 12:05:30','2020-07-25 12:05:30'),
(6,'1595678849logo.png',3,1,'1','2020-07-25 12:07:29','2020-07-25 12:07:29'),
(7,'1595678933Website 2020 v7.pdf',3,1,'1','2020-07-25 12:08:53','2020-07-25 12:08:53');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` longtext COLLATE utf8mb4_unicode_ci,
  `types` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`details`,`description`,`background_image`,`video_url`,`features`,`types`,`status`,`created_at`,`updated_at`) values 
(1,'Home Automation','<p>Test</p>','<p>Test</p>','logo.png','Test','<p>Test</p>','<p>Test</p>',1,'2020-07-22 08:31:39','2020-07-22 08:31:39'),
(2,'New Category','<p>test</p>','<p>test</p>','logo.png','http://localhost:8000/category/create','<p>test</p>','<p>test</p>',1,'2020-08-03 13:53:42','2020-08-03 13:53:42'),
(3,'test a','<p>test</p>','<p>test</p>','logotestkarna.png','dsds','<p>test</p>','<p>test</p>',1,'2020-08-03 14:35:25','2020-08-03 14:35:25');

/*Table structure for table `contact_us` */

DROP TABLE IF EXISTS `contact_us`;

CREATE TABLE `contact_us` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contact_us` */

/*Table structure for table `enquiries` */

DROP TABLE IF EXISTS `enquiries`;

CREATE TABLE `enquiries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `query` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `enquiries` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `homepage_banner` */

DROP TABLE IF EXISTS `homepage_banner`;

CREATE TABLE `homepage_banner` (
  `id` int(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `society_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `homepage_banner` */

insert  into `homepage_banner`(`id`,`image`,`status`,`society_id`,`created_at`,`updated_at`) values 
(1,'https://s3.amazonaws.com/3-kw-sristi/hello_residents/profile/5f7d553dbda10file.jpg',1,13,'2020-10-19 13:27:01','2020-10-19 13:27:01');

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(15,'2020_05_29_094242_add_city_to_users_table',3),
(16,'2020_05_27_064901_create_news_table',4),
(17,'2014_10_12_100000_create_password_resets_table',5),
(18,'2020_06_01_074629_create_jobs_table',6),
(27,'2020_06_03_073207_create_specifications_table',7),
(29,'2020_06_02_044319_create_contact_us_table',8),
(31,'2020_05_28_174556_create_product_categories_table',9),
(33,'2020_05_28_174536_create_brands_table',11),
(42,'2020_06_08_070054_create_settings_table',13),
(44,'2020_06_09_035816_create_product_specifications_table',13),
(45,'2020_06_08_100639_create_bulk_images_table',14),
(47,'2020_05_18_191834_create_categories_table',15),
(49,'2020_06_03_074649_create_ratings_table',16),
(50,'2020_06_13_024322_create_wishlists_table',17),
(52,'2020_06_15_060233_add_contact_no_to_users_table',18),
(53,'2020_06_21_155322_add_is_featured_to_products_table',19),
(55,'2020_06_27_133511_create_enquiries_table',20),
(58,'2020_07_11_144443_create_products_table',21),
(59,'2020_07_11_145416_create_project_details_table',22),
(60,'2020_07_11_150322_create_products_table',23),
(61,'2020_07_18_043907_create_user_checklists_table',24),
(62,'2020_07_18_092040_add_is_admin_to_users_table',25),
(63,'2020_07_21_063327_add_otp_to_users_table',26),
(64,'2020_07_21_094747_create_users_table',27),
(68,'2020_07_24_050706_add_report_to_project_details',28),
(69,'2020_07_25_044934_add_rating_to_user_checklists_table',28);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `news` */

insert  into `news`(`id`,`name`,`description`,`news_image`,`status`,`created_at`,`updated_at`) values 
(1,'dsdsds','<p>dsdsdsds</p>','favicon.png',1,'2020-05-30 10:22:45','2020-05-30 10:22:45'),
(2,'dsdsds','<p>sasasa</p>','favicon.png',0,'2020-05-30 10:29:17','2020-06-11 09:35:47'),
(3,'dsfsdf','<p>sadasd</p>','favicon.png',1,'2020-06-11 09:35:41','2020-06-11 09:35:41'),
(4,'dsdsds','<p>dsdsdsds</p>','favicon.png',1,'2020-06-11 09:35:59','2020-06-11 09:35:59'),
(5,'sasa','<p>sasa</p>','Screenshot 2020-06-20 at 12.46.30 PM.png',1,'2020-06-27 12:37:52','2020-06-27 12:37:52'),
(6,'dsdsds','<p>dsdsdsdsddd</p>','Screenshot 2020-06-20 at 12.46.30 PM.png',1,'2020-06-27 12:51:58','2020-06-27 12:51:58'),
(7,'sarvesh','<p>test</p>','Screenshot 2020-06-20 at 12.46.30 PM.png',1,'2020-07-02 06:07:24','2020-07-02 06:07:24'),
(8,'test','<p>fdfd</p>','Screenshot 2020-06-20 at 12.46.30 PM.png',1,'2020-07-02 06:18:24','2020-07-02 06:18:24');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`created_at`) values 
('sarvesh1@valedra.com','XClr6gyiZGYLNhP4SHLzG1y0vXmmKMIuAWD9HoHolOuZE14tD1IAFCve7zdC','2020-06-01 06:58:11'),
('test1@gmail.com','kgBHh9X87i8TWdS6Tauva5U3ipTaCN8Q64Cru1Nb0AxHhVWZy2GhmB44JNtO','2020-07-27 12:42:55');

/*Table structure for table `product_categories` */

DROP TABLE IF EXISTS `product_categories`;

CREATE TABLE `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_categories` */

insert  into `product_categories`(`id`,`name`,`category_id`,`description`,`image`,`status`,`created_at`,`updated_at`) values 
(1,'Mobile',1,'<p>Description</p>','logo.png','1','2020-07-22 08:36:09','2020-07-22 08:36:09'),
(2,'test1',1,'<p>Hello</p>','logo.png','1','2020-08-03 13:52:26','2020-08-03 13:52:26'),
(3,'test3',1,'<p>test</p>','logo.png','1','2020-08-03 13:52:47','2020-08-03 13:52:47'),
(4,'test4',1,'<p>test4</p>','logo.png','1','2020-08-03 13:53:06','2020-08-03 13:53:06'),
(5,'test1',2,'<p>test1</p>','logo.png','1','2020-08-03 13:58:53','2020-08-03 13:58:53'),
(6,'Test2',2,'<p>test</p>','logo.png','1','2020-08-03 13:59:12','2020-08-03 13:59:12'),
(7,'test3',2,'<p>test3</p>','logo.png','1','2020-08-03 14:07:48','2020-08-03 14:07:48');

/*Table structure for table `product_specifications` */

DROP TABLE IF EXISTS `product_specifications`;

CREATE TABLE `product_specifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_specifications` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  `brand_id` int(10) unsigned NOT NULL,
  `highlight` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` longtext COLLATE utf8mb4_unicode_ci,
  `price` int(10) unsigned NOT NULL,
  `product_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

/*Table structure for table `project_details` */

DROP TABLE IF EXISTS `project_details`;

CREATE TABLE `project_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_sub_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_configuration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `construction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `budget` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_timeline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `members` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manager_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_details` */

insert  into `project_details`(`id`,`project_type`,`project_sub_type`,`property_size`,`home_configuration`,`construction`,`category_id`,`user_id`,`budget`,`project_timeline`,`members`,`created_at`,`updated_at`,`manager_name`,`report`) values 
(1,'Residential','Apartment','1693','2BHK','existing','1,4',2,'1000,10000','1 Year +','10','2020-07-24 05:45:03','2020-07-25 10:00:16','Sarvesh Gupta 43','Website 2020 v7.pdf'),
(2,'Residential','Apartment','1693','2BHK','existing','1,4',2,'1000,10000','1 Year +','10','2020-07-27 12:38:07','2020-07-27 12:38:07',NULL,NULL),
(3,'Residential','Apartment','1693','2BHK','existing','',2,'10000','1 Year +','10','2020-07-27 12:39:30','2020-07-27 12:39:30',NULL,NULL),
(4,'Residential','Apartment','1693','','existing','',2,'','1 Year +','10','2020-07-27 12:40:28','2020-07-27 12:40:28',NULL,NULL);

/*Table structure for table `ratings` */

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `score` int(10) unsigned NOT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ratings` */

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

/*Table structure for table `specifications` */

DROP TABLE IF EXISTS `specifications`;

CREATE TABLE `specifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `specifications` */

/*Table structure for table `user_checklists` */

DROP TABLE IF EXISTS `user_checklists`;

CREATE TABLE `user_checklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `product_category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_checklists` */

insert  into `user_checklists`(`id`,`user_id`,`category_id`,`product_category_id`,`rating`,`status`,`created_at`,`updated_at`) values 
(11,2,1,'1,45,3','Good',1,'2020-07-18 07:43:23','2020-07-18 08:07:17'),
(12,1,3,'12',NULL,1,'2020-07-18 07:43:23','2020-07-18 08:07:17'),
(13,3,3,'2,3,5,6','Good',1,'2020-07-25 05:45:26','2020-07-25 05:45:26'),
(14,1,5,'8','Super',1,'2020-07-25 05:45:26','2020-07-25 05:45:26'),
(15,3,3,'2,3,5,6','Good',1,'2020-07-25 07:48:14','2020-07-25 07:48:14'),
(16,3,5,'8','Super',1,'2020-07-25 07:48:14','2020-07-25 07:48:14'),
(17,3,3,'2,3,5,6','Good',1,'2020-07-25 09:40:35','2020-07-25 09:40:35'),
(18,4,2,'4,5,6,7,8,9,10','Good',1,'2020-07-29 06:41:24','2020-07-29 06:41:24'),
(19,2,2,'4,5,6,7,8,9,10','Good',1,'2020-07-29 06:41:42','2020-07-29 06:41:42'),
(20,2,2,'1,5,6,7,8,9,10','Good',1,'2020-07-29 06:41:51','2020-07-29 06:41:51'),
(21,2,2,'1,5','Good',1,'2020-08-03 16:45:19','2020-08-03 16:45:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int(10) unsigned DEFAULT NULL,
  `isAdmin` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_contact_no_unique` (`contact_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`contact_no`,`email_verified_at`,`password`,`city`,`social_type`,`google_id`,`facebook_id`,`otp`,`isAdmin`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Sarvesh','test122@gmail.com','9211502440',NULL,NULL,'Delhi',NULL,'12344',NULL,NULL,0,NULL,'2020-07-21 10:34:56','2020-07-21 10:34:56'),
(2,'Rahul','test@gmail.com','9211502441',NULL,'$2y$10$bcPN2RA/iz4wRjOljI9Xe.6HE.GauImmJyk0XU5P4buDjrbB0SNLe','Delhi',NULL,NULL,NULL,NULL,0,NULL,'2020-07-22 08:30:52','2020-07-22 08:30:52'),
(3,'Sarvesh Kumar','sarvesh@gmaill.com','9211502442',NULL,'$2y$10$Sjl9Ucpg/WONOUhQmCpdc.U184tCwYXX5eTHD1gGunp1hg4BDxbbq',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-07-25 07:50:08','2020-07-25 07:50:08'),
(4,'Rahul1','test1@gmail.com','9211502490',NULL,'$2y$10$qXKVf03RPZiFpC12Mof5BuvHwAgMShmTJngggzekasxicF0ZwHy0y','Delhi',NULL,NULL,NULL,NULL,0,NULL,'2020-07-27 12:41:27','2020-07-27 12:41:27'),
(5,'Sarvesh Kumar','sarvesh@gmail.com','9811341522',NULL,'$2y$10$kXcpvLbNdlCj429.t1kUYOKcgTZfFFD5dN7FLPDhQbm9efOrmNsQ2',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-08-03 13:47:49','2020-08-03 13:47:49');

/*Table structure for table `wishlists` */

DROP TABLE IF EXISTS `wishlists`;

CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wishlists` */

insert  into `wishlists`(`id`,`product_id`,`user_id`,`status`,`created_at`,`updated_at`) values 
(1,1,2,1,'2020-06-13 03:23:15','2020-06-27 14:12:04'),
(2,0,0,1,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
