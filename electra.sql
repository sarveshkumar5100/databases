/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.1.32-MariaDB : Database - electra
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`electra` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `electra`;

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `part_no` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `application` text NOT NULL,
  `instruction` text NOT NULL,
  `storage` text NOT NULL,
  `warranty` text NOT NULL,
  `cautions` text NOT NULL,
  `packing` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `packaging_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`image`,`part_no`,`description`,`application`,`instruction`,`storage`,`warranty`,`cautions`,`packing`,`unit`,`unit_price`,`gst`,`brand`,`packaging_type`,`created_at`,`updated_at`) values 
(1,'BATTERY TERMINAL COATING','BATTERY_TERMINAL_COATING4.jpg','#9064','Air tight Water proof  and acid resistant. anti-sulfation coating Resistant to heat gasoline oil and grease will not crack or peel when correctly applied on undamaged batteries operating in conditions of medium acidity','Protecting battery and cable, terminus against leakage acid sulfation and corrosion. prevent current losses and enhance  battery life.','Spray  at intervals in short burst at a distance of 10 to 12th  from the surface Shake well before .','Store  in a cool dry place away from direct sunlight minimum shelf life is 24 months from the \r\ndate of manufacture\r\n',' Each unit Iis unconditional warrantied against any defect or a minimum period of 12 months from the date of supply','Do not spray into or around open flame and spark .sparay in ventilated area exposure to heat or sunlight where temperature exceeds 120degreeF, may cause bursting .do not puncture  or incinerate can .store can in cool dry place for optimum shelf life','24 CANS','500 ML CAN','625','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:33'),
(2,'ELECTRONIC CLEANER','ELECTRONIC_CLEANER2.jpg','#9046','Fully safe on plastics & metals. Fast cleaning, residue less, low odor formulation ,Fully di-electric Mild flux removing action Excellent “offline” cleaning and flushing action with least possibility of equipment damage','Safe and easy cleaning of sensitive plastic electrical and electronic components – relays, limits switches.\r\nPCBs, electronic assemblies\r\nPreventing leakages, short circuiting, corrosion and carbonation','','','','','24 CANS','500 ML CAN','625','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:36'),
(3,'MOISTURE DISPLACER','MOISTURE_DISPLACER3.jpg','#9034','Multi application for cleaning de-watering preventing corrosion and improving conductivity in electrical and electronics system. Di-electric product restores electrical properties lost due to moisture Corrosion, dust  and carbon .prevents arcing and sparkling and provides long-term protection specific gravity heavier than ‘1’.','protecting contactors relays, solenoids control terminals, capacitors. fuse boxes ,switch connectors switchgears electronic  PCB’s and equipments against moisture and chemical fumes.','spray at intervals ,in short burst at a distance of 10 to 12” from the surface to be cleaned .shake well before use ','Store  in a cool dry place away from direct sunlight minimum shelf use is 24 months from the date of manufacturing','each unit is unconditional warranty against any defect for a minimum period of 12 months from the date of supply','do not spray into or around open flame and Spark in ventilated area. Exposure to heat or Sunlight ,where temperature exceeds 120 degree Fahrenheit. may cause bursting .do not puncture or incinerate can store .Can in cool dry place for optimum shelf life','24 CANS','500 ML CAN','625','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:38'),
(4,'SAFE CLEAN','SAFE_CLEAN6.jpg','#9004','Non-flammable, precision synthetic cleaner cum degreaser designed for use in electrical maintenance\r\nDi-electric & residue less\r\nSafe for use on most plastics (test before use on ABS, acrylic & polystyrenes)\r\nOzone friendly formulation is certified safe for the environment, as well as the users\r\nDoes not contain any toxic/carcinogenic chemicals','Cleaning electrical systems\r\nMost useful for maintaining motors, circuit breakers, contactors, relays, switches, coils\r\nPrevents overheating, leakages, arcing, flash-over','','','','','24 CANS','500 ML CAN','437','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:43'),
(5,'HIGH TEMP PAINT','HIGH_TEMP_PAINT9.jpg','#9055','High purity aluminum enriched coating, fast drying to provide hard lasting protection that will not bum off, chip or peel at high temperatures\r\nResist heat till 600°C and coated surface can be top coated if required','Heater, Furnace, Stove pipe, Kiln, Chimney, Range, Header, Oven, Engine, Exhaust manifold','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:45'),
(6,'SILICON R','SILICON_R11.jpg','#9046','Silicon based mold release agent for plastic, rubber, polyster, nylon etc\r\nIts colorless spray film acts as a general purpose lubricating agent for drying rolls, clocks and precision equipment','All Types of Metal Molds & Dies','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:47'),
(7,'ANTI SPATER','ANTI_SPATER12.jpg','#9058','Non Silicone spatter release agent effectively prevents the adhesion of welding spatter on coated surfaces\r\nEasier, cleaner and more cost effective\r\nEnhances life of MIG, TIG and TAG tips. Will not harm user’s health like silicone based formulations','Welding wheels & tips, welded surfaces where unsightly spatter build-up is not desired a~need to be post decorated, electrode holders without compromising on user safety','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:50'),
(8,'WHITE LITHIUM GREASE','WHITE_LITHIUM_GREASE13.jpg','#9049','White, translucent, penetrative grease with a slight creamy consistency, penetrates and forms a protective film that withstands, corrosion loads and speeds\r\nProvides all weather lubrication for any moving part\r\nEliminates squeaks and squeals and won’t run or wash away\r\n','Gears, Cams, Pumps, Ball and Roller Bearings\r\nTextile & Food Machinery etc.','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:52'),
(9,'BELT DRESSING','BELT_DRESSING14.jpg','#9043','Prevents hardening, heat ageing, cracking, elongation and gripping failures of drive belts\r\nCoated drive belts will last for at least 50% longer\r\nProtects both during belt operation and belt storage\r\nVery useful in applications where drive belts are exposed to high heat, humidity and lube oils\r\nEasy to apply with long lasting effect','All Types of Conveyor, Industrial And Automotive Belts','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:55'),
(10,'RUST INHIBITOR','RUST_INHIBITOR16.jpg','#9028','Prevents rusting and corrosion of bearings, gears, rotors, gauges… during indoor storage, usage, as well as shipment\r\nUniquely absorbs surface moisture for 100% reliable protection of parts exposed to high humidity and corrosive chemical fumes\r\nUnlike conventional oils, does not overlay on surface moisture, but first absorbs, neutralises and then provides protection\r\nLubricant compatible\r\nRemoval not required','All Precision Part, Tools, Dies','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:56'),
(11,'WAX KOTE','WAX_KOTE17.jpg','#9079','Green, Red & Clear\r\nWax based coating specifically designed for the protection of plastic injection molds\r\nSelf de-molds upon mold usage, reducing need for cleaning & rejections\r\nProvides superior, non-drip long & short term protection','All Precision Part, Tools, Dies','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:42:59'),
(12,'SILICO FREE','SILICO_FREE18.jpg','#9073','Silco-Free is a non-staining, colorless, non-toxic, silicon free compound formulated to provide multiple releases\r\nIt prevents sticking of parts in moulds and facilitates easy release\r\nIt does not transfer to the molded parts\r\nIt keeps moulds clean and produces extremely low build-up','Silco Free is an excellent mould release agent for variety of plastics, natural rubber & synthetic rubbers.\r\nIt can be used in injection, compression as well as rotational molding processes','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:43:00'),
(13,'ELECTRIACAL BREAKER CLEANER','ELECTRIACAL_BREAKER_CLEANER19.jpg','#9073','Electrical Breaker Cleaner is a non-staining, colorless, non-toxic, silicon free compound formulated to provide multiple releases\r\nIt prevents sticking of parts in moulds and facilitates easy release\r\nIt does not transfer to the molded parts\r\nIt keeps moulds clean and produces extremely low build-up','Silco Free is an excellent mould release agent for variety of plastics, natural rubber & synthetic rubbers.\r\nIt can be used in injection, compression as well as rotational molding processes','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:43:02'),
(14,'MOULD CLEAN','MOULD_CLEAN20.jpg','#9088','Mould Clean is a specially formulated high performance blend of safe organic solvents designed to quickly dissolve and rinse away the contaminants from the molds and dies\r\nMold clean starts working immediately on contact breaking down and dissolving even the most stubborn contaminants without damaging the base metal of molds and dies\r\nIt evaporates quickly and does not leave residue','Safe and efficient cleaner for various kinds of metal molds\r\nIt quickly removes residues of release agents, protective coatings, deposits like oil, grease & soil and others. It does not interfere with molding operations','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:43:05'),
(15,'BEARING SOLVENT','BEARING_SOLVENT21.jpg','#9019','Synthetic heavy duty cleaner cum degreaser\r\nFast drying & residue less\r\nExcellent cleaning action\r\nIt starts working immediately on contact breaking down and dissolving even the most stubborn contaminants without damaging the base metal\r\nIt evaporates quickly and does not leave residue.','Cleaning & Degreasing of Machinery Parts, Engines, Bearings, Metal Molds & Dies','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:43:06'),
(16,'ANTI TRACK','ANTI_TRACK3.jpg','#9067','Unique air-dry, di-electric coating designed to prevent tracking, arcing and flash overs caused by dust and moisture specifically on bus bar end-bushings and insulators.\r\nWeather proof & non-ageing','Bus Bar Ends, Bushings, Insulators, Switch Yard Equipment','','','','','24 CANS','500 ML CAN','','18','Formulla II','Cans','2020-09-17 12:46:00','2020-09-17 14:43:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
