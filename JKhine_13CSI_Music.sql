-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: JKhine_13CSI_Music
-- ------------------------------------------------------
-- Server version 	8.0.39-0ubuntu0.22.04.1
-- Date: Wed, 04 Sep 2024 12:02:41 +0000

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album_id`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_id` (
  `Album_ID` varchar(8) NOT NULL,
  `Album` varchar(56) DEFAULT NULL,
  PRIMARY KEY (`Album_ID`),
  UNIQUE KEY `Album_ID_2` (`Album_ID`),
  KEY `Album_ID` (`Album_ID`),
  KEY `Album` (`Album`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_id`
--

LOCK TABLES `album_id` WRITE;
/*!40000 ALTER TABLE `album_id` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `album_id` VALUES ('41','10 Years Of Hits'),('58','A Hundred Miles or More: A Collection'),('51','A Momentary Lapse Of Reason'),('39','A Place On Earth - The Greatest Hits (CD 1/2)'),('6','All Thing Bright And Beautiful - Deluxe'),('7','American Heart - Single'),('8','American Pie'),('9','Aqualung'),('18','As good as it gets'),('19','At Budokan'),('35','Babel'),('17','Barton Hollow'),('12','Big Jet Plane [EP]'),('13','Bright Morning Stars'),('16','Bring Me Home'),('72','California'),('25','Celtica 1'),('20','Ceremonial and war dances'),('55','CMT Crossroads'),('52','Continued Silence EP'),('79','Dixie Chicks'),('37','Drunken Lullabies'),('15','Earl Klugh'),('54','Early Alchemy'),('44','Electric Music For The Mind And The Mind'),('32','Extended Play'),('22','Fallen'),('46','Fields of Fire'),('49','Finally We Are No One'),('23','Five Minutes With Arctic Monkeys'),('69','Flying Cowboys'),('27','Food In The Belly'),('60','Footrot Flats: A Dog\'s Tale'),('3','From Detroit to St Germain'),('70','Fundamental'),('42','Gael Force'),('11','Greatest Hits'),('56','Greatest Hits'),('71','His Young Heart'),('21','Hoea'),('10','I Hope You Dance'),('38','I\'m in the Mood for Dancing'),('29','Lights of the Pacific: The Very Best Of'),('67','Lily'),('1','Listen'),('61','Listen: The Very Best of Herbs'),('78','Live In Texas (7 June 2006)'),('43','Live! Not Enough Shouting'),('68','Love This Giant'),('2','Metals'),('75','Music for Lovers'),('34','Oceania'),('28','One More from the Road [MG]'),('31','Primitive Man [Bonus Tracks]'),('64','Running on Empty'),('47','Sarah Slean'),('65','Say You Will'),('50','Shamrock Diaries'),('24','Shona laing'),('62','Slow Train Coming'),('76','Smilewound'),('77','Songs from the Front Lawn'),('26','Soul Divas'),('63','Spanish Train & Other Stories'),('48','Strange Mercy'),('4','The Best of Arlo Guthrie'),('74','The Best of Joe Cocker [Mushroom]'),('40','The Best of Nancy Wilson'),('30','The Collection Vol.1 CD2'),('36','The Collection Vol.2 CD1'),('57','The Cross of Changes'),('14','The Definitive Collection'),('45','The Division Bell'),('59','Three decades of males Disc 2'),('33','Til We Outnumber \'Em: Woody Guthrie'),('73','To Love Somebody (1969), Here Comes the Sun (1971)'),('5','Under The Covers: Vol. 2'),('66','Walk Like An Egyptian: The Best Of_CD 2'),('53','Watermark'),('80','Zombie (UK Single - Part 1) [Island - CID 600-854 110-2]');
/*!40000 ALTER TABLE `album_id` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `album_id` with 80 row(s)
--

--
-- Table structure for table `artist_id`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist_id` (
  `Artist_ID` varchar(9) NOT NULL,
  `Artist` varchar(29) DEFAULT NULL,
  PRIMARY KEY (`Artist_ID`),
  UNIQUE KEY `Artist_ID_2` (`Artist_ID`),
  KEY `Artist_ID` (`Artist_ID`),
  KEY `Artist` (`Artist`),
  CONSTRAINT `artist_id_ibfk_1` FOREIGN KEY (`Artist_ID`) REFERENCES `songtoartist` (`Artist_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_id`
--

LOCK TABLES `artist_id` WRITE;
/*!40000 ALTER TABLE `artist_id` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `artist_id` VALUES ('1','A Flock of Seagulls'),('50','Acoustic Alchemy'),('54','Alison Krauss'),('11','Angus & Julia Stone'),('22','Arctic Monkeys'),('4','Arlo Guthrie'),('17','As Good As It Gets'),('29','Average White Band'),('36','Belinda Carlisle'),('43','Big Country '),('19','Black Lodge Singers'),('18','Bob Dylan'),('57','Chris de Burgh'),('47','Chris Rea'),('41','Country Joe & The Fish'),('65','Daughter'),('56','Dave Dobbyn & Herbs'),('62','David Byrne & St. Vincent'),('71','Dixie Chicks'),('51','Dixie Chicks & James Taylor'),('8','Don McLean'),('14','Earl Klugh'),('53','Enigma'),('49','Enya'),('21','Evanescence'),('7','Faith Hill'),('2','Feist'),('59','Fleetwood Mac'),('34','Flogging Molly'),('39','Gael Force'),('31','Gin Wigmore'),('28','Herbs'),('30','Icehouse'),('48','Imagine Dragons'),('58','Jackson Browne'),('52','James Taylor'),('9','Jethro Tull'),('68','Joe Cocker'),('10','Lee Ann Womack'),('27','Lynyrd Skynyrd'),('69','Maria Muldaur'),('5','Matthew Sweet & Susanna Hoffs'),('15','Mother Earth'),('46','Mum'),('33','Mumford & Sons'),('37','Nancy Wilson'),('67','Nina Simone'),('32','Oceania'),('6','Owl City'),('64','Pet Shop Boys'),('42','Pink Floyd'),('63','Rickie Lee Jones'),('38','Ronan Keating'),('44','Sarah Slean'),('23','Shona laing'),('25','Soul Divas'),('3','St Germain'),('45','St. Vincent'),('13','Stevie Wonder'),('60','The Bangles'),('16','The Civil Wars'),('72','The Cranberries'),('70','The Front Lawn'),('35','The Nolans'),('12','The Wailin\' Jennys'),('55','Three Decades Of Males'),('24','Varios'),('20','Wai Tai'),('61','Wendy Matthews'),('66','Wilson Phillips'),('40','Wolfstone'),('26','Xavier Rudd');
/*!40000 ALTER TABLE `artist_id` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `artist_id` with 72 row(s)
--

--
-- Table structure for table `contacts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` int NOT NULL,
  `Message` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  KEY `Name` (`Name`),
  KEY `Email` (`Email`),
  KEY `Phone` (`Phone`),
  KEY `Message` (`Message`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `contacts` VALUES (1,'test','test@gmail.com',123123123,'testing'),(2,'Jeremy','jeremykhine@gmail.com',224670301,'this website sucks'),(5,'Bhavik','Bhavik@gmail.com',12345678,'bhavik'),(6,'John','Music@gmail.com',21402314,'Testing contact for diary'),(7,'peter','peter@gmail.com',1235680,'peter');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `contacts` with 5 row(s)
--

--
-- Table structure for table `genre_id`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_id` (
  `Genre_ID` varchar(8) NOT NULL,
  `Genre` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`Genre_ID`),
  UNIQUE KEY `Genre_ID_2` (`Genre_ID`),
  KEY `Genre_ID` (`Genre_ID`),
  KEY `Genre` (`Genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_id`
--

LOCK TABLES `genre_id` WRITE;
/*!40000 ALTER TABLE `genre_id` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `genre_id` VALUES ('35','Acoustic'),('31','Alternative'),('40','Alternative  Rock / Post-Grunge'),('15','Alternative Metal / Nu-Metal / Gothic Rock'),('39','Avante-Garde'),('36','Bluegrass'),('34','Blues'),('17','Celtic'),('6','Country'),('28','Dance'),('26','Easy Listening - Female'),('25','Easy Listening - Group'),('7','Easy Listening - Male'),('2','Folk'),('12','Folk Cont'),('23','Folk Rock'),('11','Folk UK'),('3','Goa'),('38','Indie'),('32','Indie Rock'),('16','Indie Rock / Brit Pop'),('10','Jazz'),('14','Maori, Ethnic,New Age'),('20','Mellow'),('13','Native American, Ethnic'),('24','New Age'),('1','New Wave'),('5','Pop'),('33','Post-Rock'),('30','Progressive Rock'),('29','Psychadelic'),('9','R&B'),('21','Reggae'),('4','Rock'),('18','Rock Celtic'),('19','Soul'),('8','US Folk'),('27','Vocal'),('37','Woman'),('22','World');
/*!40000 ALTER TABLE `genre_id` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `genre_id` with 40 row(s)
--

--
-- Table structure for table `main`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main` (
  `Song_ID` varchar(7) NOT NULL,
  `Song Name` varchar(77) DEFAULT NULL,
  `Artist` varchar(29) DEFAULT NULL,
  `Album` varchar(50) DEFAULT NULL,
  `Track` varchar(5) DEFAULT NULL,
  `Genre` varchar(42) DEFAULT NULL,
  `Duration` varchar(8) DEFAULT NULL,
  `Size` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `Song_ID` (`Song_ID`),
  KEY `Song Name` (`Song Name`),
  KEY `Artist` (`Artist`),
  KEY `Album` (`Album`),
  KEY `Track` (`Track`),
  KEY `Genre` (`Genre`),
  KEY `Duration` (`Duration`),
  KEY `Size` (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `main` VALUES ('1','2-30','A Flock of Seagulls','Listen','7','New Wave','01:00','1446'),('10','Ashes By Now','Lee Ann Womack','I Hope You Dance','7','Jazz','04:11','9851'),('11','Ashes By Now','Lee Ann Womack','Greatest Hits','8','Folk UK','04:12','9880'),('12','Big Jet Plane (Radio Edit)','Angus & Julia Stone','Big Jet Plane ','1','Folk Cont','03:43','8776'),('13','Bird Song','The Wailin\' Jennys','Bright Morning Stars','3','Native American, Ethnic','03:33','3338'),('14','Boogie On Reggae Woman','Stevie Wonder','The Definitive Collection','4','Maori, Ethnic,New Age','05:14','10894'),('15','Brazilian Stomp','Earl Klugh','Earl Klugh','3','Alternative Metal / Nu-Metal / Gothic Rock','05:39','10605'),('16','Bring Me Home','Mother Earth','Bring Me Home','5','Indie Rock / Brit Pop','06:05','11428'),('17','C\'est La Mort','The Civil Wars','Barton Hollow','3','Celtic','02:29','4094'),('18','Chicken on a Raft','As Good as It Gets','As good as it gets','6','Rock Celtic','03:30','6583'),('19','Don\'t Think Twice, It\'s All Right','Bob Dylan','At Budokan','5','Soul','05:01','11766'),('2','A Commotion','Feist','Metals','5','Folk','03:53','6904'),('20','Eagle Plume Dancer','Black Lodge Singers','Ceremonial and war dances','7','Mellow','02:25','2269'),('21','Earth And Sky','WAI.TAI','Hoea','3','Reggae','03:28','5984'),('22','Everybody\'s Fool','Evanescence','Fallen','3','World','03:17','7893'),('23','Fake Tales Of San Francisco','Arctic Monkeys','Five Minutes With Arctic Monkeys','1','Folk Rock','03:01','7271'),('24','Fear','Shona Laing','Shona Laing','3','New Age','04:22','4101'),('25','Fields of Gold','Varios','Celtica 1','15','Easy Listening - Group','03:34','8382'),('26','Fire','Soul Divas','Soul Divas','7','Easy Listening - Female','03:26','6465'),('27','Fortune Teller','Xavier Rudd','Food In The Belly','4','Vocal','03:27','4866'),('28','Free Bird Live [Fox Theater]','Lynyrd Skynyrd','One More from the Road ','12','Dance','13:36','25506'),('29','French Letter','Herbs','Lights of the Pacific: The Very Best Of','3','Psychadelic','04:36','8646'),('3','Alabama Blues','St Germain','From Detroit to St Germain','2','Goa','07:19','6865'),('30','Got The Love - 2009','Average White Band','The Collection Vol.1 CD2','12','Progressive Rock','03:47','8874'),('31','Great Southern Land','Icehouse','Primitive Man ','1','Alternative','05:19','12468'),('32','Hallelujah','Gin Wigmore','Extended Play','3','Indie Rock','03:31','8263'),('33','Hard Travelin\' Hootenanny','Arlo Guthrie','Til We Outnumber \'Em: Woody Guthrie','1','Post-Rock','03:30','6588'),('34','He Aha Ra Te Manu','WAI.TAI','Hoea','2','Blues','02:23','4444'),('35','Hineraukatauri (Goddess of Music)','Oceania','Oceania','4','Acoustic','04:54','9222'),('36','Hopeless Wanderer','Mumford & Sons','Babel','9','Bluegrass','05:07','10236'),('37','How do you plead','St Germain','From Detroit to St Germain','7','Woman','06:40','6251'),('38','How Sweet Can You Get - 2009','Average White Band','The Collection Vol.2 ','9','Indie','03:58','9330'),('39','If I Ever Leave This World Alive','Flogging Molly','Drunken Lullabies','4','Avante-Garde','03:21','4722'),('4','Alice\'s Restaurant Massacree','Arlo Guthrie','The Best of Arlo Guthrie','1','Rock','18:31','34731'),('40','I\'ll Be Long Gone','Mother Earth','Bring Me Home','4','Alternative  Rock / Post-Grunge','05:56','11141'),('41','I\'m in the Mood for Dancing','The Nolans','I\'m in the Mood for Dancing','1','Easy Listening - Group','02:59','5601'),('42','Leave a Light On','Belinda Carlisle','A Place On Earth - The Greatest Hits ','4','Easy Listening - Female','04:16','4006'),('43','Like someone in love','Nancy Wilson','The Best of Nancy Wilson','8','Vocal','02:22','3368'),('44','Little Black Book','Belinda Carlisle','A Place On Earth - The Greatest Hits ','10','Easy Listening - Female','04:12','3951'),('45','Lost for Words','Ronan Keating','10 Years Of Hits','9','Dance','03:48','5366'),('46','Maggie','Gael Force','Gael Force','11','Celtic','03:41','6914'),('47','Maggie','Wolfstone','Live! Not Enough Shouting','14','Rock Celtic','04:47','7862'),('48','Marijuana','Country Joe & The Fish','Electric Music For The Mind And The Mind','14','Psychadelic','02:32','3575'),('49','Marooned','Pink Floyd','The Division Bell','4','Progressive Rock','05:29','10384'),('5','All The Young Dudes','Matthew Sweet & Susanna Hoffs','Under The Covers: Vol. 2','5','Pop','03:52','9081'),('50','Mary','Big Country ','Fields of Fire','14','Alternative','03:53','9109'),('51','Mary','Sarah Slean','Sarah Slean','1','Alternative','04:04','3818'),('52','Messages','Xavier Rudd','Food In The Belly','2','Mellow','04:02','5686'),('53','Northern Lights','St. Vincent','Strange Mercy','5','Indie Rock','03:33','8359'),('54','Now There\'s That Fear Again','Mum','Finally We Are No One','7','Post-Rock','03:56','5550'),('55','One Golden Rule','Chris Rea','Shamrock Diaries','5','Blues','04:30','10569'),('56','One Slip','Pink Floyd','A Momentary Lapse Of Reason','4','Progressive Rock','05:08','10086'),('57','Parihaka','Herbs','Lights of the Pacific: The Very Best Of','9','Reggae','04:16','8028'),('58','Radioactive','Imagine Dragons','Continued Silence EP','1','Indie Rock','03:08','7414'),('59','River','Enya','Watermark','9','Alternative','03:12','7553'),('6','Alligator Sky','Owl City','All Thing Bright And Beautiful - Deluxe','13','Country','03:15','6176'),('60','Sarah Victoria','Acoustic Alchemy','Early Alchemy','2','Acoustic','01:54','3692'),('61','Shower the People','Dixie Chicks & James Taylor','CMT Crossroads','9','Country','02:03','2906'),('62','Shower the People','James Taylor','Greatest Hits','11','Rock','04:01','9426'),('63','Silent Warrior','Enigma','The Cross of Changes','5','New Age','06:09','11546'),('64','Simple Love','Alison Krauss','A Hundred Miles or More: A Collection','2','Bluegrass','04:44','4444'),('65','Slice Of Heaven','Three Decades of Males','Three Decades of Males Disc 2','1','Easy Listening - Male','04:08','9693'),('66','Slice of Heaven','Dave Dobbyn & Herbs','Footrot Flats: A Dog\'s Tale','10','Pop','04:37','4347'),('67','Slice of Heaven','Herbs','Listen: The Very Best of Herbs','11','Reggae','04:37','8667'),('68','Slow Train','Bob Dylan','Slow Train Coming','4','Folk Rock','05:59','14107'),('69','Spanish Train','Chris de Burgh','Spanish Train & Other Stories','1','Easy Listening - Male','05:02','11841'),('7','American Heart','Faith Hill','American Heart - Single','1','Easy Listening - Male','03:50','9069'),('70','Stay','Sarah Slean','Sarah Slean','1','Alternative','02:42','2551'),('71','Stay','Jackson Browne','Running on Empty','10','Rock','03:24','7990'),('72','Steal Your Heart Away','Fleetwood Mac','Say You Will','13','Blues','03:33','5011'),('73','Sweet Baby James','Dixie Chicks & James Taylor','CMT Crossroads','5','Country','03:25','4015'),('74','Sweet Baby James','James Taylor','Greatest Hits','4','Rock','02:54','6818'),('75','Tell me','The Bangles','Walk Like An Egyptian: The Best Of CD 2','14','Pop','02:15','2884'),('76','Fridays Child','Wendy Matthews','Lily','1','Woman','04:03','7608'),('77','The Forest Awakes','David Byrne & St. Vincent','Love This Giant','6','Alternative','04:52','11442'),('78','The Horses','Rickie Lee Jones','Flying Cowboys','1','Bluegrass','04:52','9158'),('79','The Mother','Xavier Rudd','Food In The Belly','6','Mellow','03:15','4594'),('8','American Pie','Don McLean','American Pie','1','US Folk','08:32','20045'),('80','The Sodom And Gomorrah Show','Pet Shop Boys','Fundamental','2','Dance','05:19','7496'),('81','The Times They Are A-Changin\'','Bob Dylan','At Budokan','11','Folk Cont','05:28','12854'),('82','The Traveller','A Flock of Seagulls','Listen','6','New Wave','03:26','5677'),('83','The Woods','Daughter','His Young Heart','2','Indie','03:40','8959'),('84','Til We Outnumber \'Em (This Land Is You Land)','Arlo Guthrie','Til We Outnumber \'Em: Woody Guthrie','19','Folk','02:37','4929'),('85','Turn! Turn! Turn! (To Everything There Is A Season)','Wilson Phillips','California','6','Pop','02:40','5025'),('86','Turn! Turn! Turn!','Nina Simone','To Love Somebody (1969), Here Comes the Sun (1971)','2','Jazz','03:41','3463'),('87','Unchain My Heart [90\'s Version]','Joe Cocker','The Best of Joe Cocker [Mushroom]','1','Rock','05:06','11972'),('88','Waiting For You','Acoustic Alchemy','Early Alchemy','11','Acoustic','03:24','6488'),('89','We can let it happen tonight','Maria Muldaur','Music for Lovers','6','Jazz','04:10','9784'),('9','Aqualung','Jethro Tull','Aqualung','1','R&B','06:37','11596'),('90','When Girls Collide','Mum','Smilewound','3','Indie','05:00','11870'),('91','When You Come Back Home','The Front Lawn','Songs from the Front Lawn','1','Avante-Garde','03:37','3408'),('92','You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me','Arctic Monkeys','Live In Texas (7 June 2006)','4','Indie Rock / Brit Pop','02:22','5771'),('93','You Were Mine','Dixie Chicks','Dixie Chicks','5','Country','03:37','3409'),('94','You\'re Just a Country Boy','Alison Krauss','A Hundred Miles or More: A Collection','1','Bluegrass','03:28','3258'),('95','Zombie','The Cranberries','Zombie','1','Alternative  Rock / Post-Grunge','04:12','9874'),('Song_ID','Song Name','Artist','Album','Track','Genre','Duration','Size');
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `main` with 96 row(s)
--

--
-- Table structure for table `song_id`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_id` (
  `Song_ID` varchar(7) NOT NULL,
  `Song_Name` varchar(77) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Duration` varchar(8) DEFAULT NULL,
  `Size` varchar(5) DEFAULT NULL,
  `Album_ID` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `Song_ID` (`Song_ID`),
  KEY `Album_ID` (`Album_ID`),
  CONSTRAINT `song_id_ibfk_1` FOREIGN KEY (`Album_ID`) REFERENCES `album_id` (`Album_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_id`
--

LOCK TABLES `song_id` WRITE;
/*!40000 ALTER TABLE `song_id` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `song_id` VALUES ('1','2-30','01:00','1446','1'),('10','Ashes By Now','04:11','9851','10'),('11','Ashes By Now','04:12','9880','11'),('12','Big Jet Plane (Radio Edit)','03:43','8776','12'),('13','Bird Song','03:33','3338','13'),('14','Boogie On Reggae Woman','05:14','10894','14'),('15','Brazilian Stomp','05:39','10605','15'),('16','Bring Me Home','06:05','11428','16'),('17','C\'est La Mort','02:29','4094','17'),('18','Chicken on a Raft','03:30','6583','18'),('19','Don\'t Think Twice, It\'s All Right','05:01','11766','19'),('2','A Commotion','03:53','6904','2'),('20','Eagle Plume Dancer','02:25','2269','20'),('21','Earth And Sky','03:28','5984','21'),('22','Everybody\'s Fool','03:17','7893','22'),('23','Fake Tales Of San Francisco','03:01','7271','23'),('24','Fear','04:22','4101','24'),('25','Fields of Gold','03:34','8382','25'),('26','Fire','03:26','6465','26'),('27','Fortune Teller','03:27','4866','27'),('28','Free Bird Live [Fox Theater]','13:36','25506','28'),('29','French Letter','04:36','8646','29'),('3','Alabama Blues','07:19','6865','3'),('30','Got The Love - 2009','03:47','8874','30'),('31','Great Southern Land','05:19','12468','31'),('32','Hallelujah','03:31','8263','32'),('33','Hard Travelin\' Hootenanny','03:30','6588','33'),('34','He Aha Ra Te Manu','02:23','4444','21'),('35','Hineraukatauri (Goddess of Music)','04:54','9222','34'),('36','Hopeless Wanderer','05:07','10236','35'),('37','How do you plead','06:40','6251','3'),('38','How Sweet Can You Get - 2009','03:58','9330','36'),('39','If I Ever Leave This World Alive','03:21','4722','37'),('4','Alice\'s Restaurant Massacree','18:31','34731','4'),('40','I\'ll Be Long Gone','05:56','11141','16'),('41','I\'m in the Mood for Dancing','02:59','5601','38'),('42','Leave a Light On','04:16','4006','39'),('43','Like someone in love','02:22','3368','40'),('44','Little Black Book','04:12','3951','39'),('45','Lost for Words','03:48','5366','41'),('46','Maggie','03:41','6914','42'),('47','Maggie','04:47','7862','43'),('48','Marijuana','02:32','3575','44'),('49','Marooned','05:29','10384','45'),('5','All The Young Dudes','03:52','9081','5'),('50','Mary','03:53','9109','46'),('51','Mary','04:04','3818','47'),('52','Messages','04:02','5686','27'),('53','Northern Lights','03:33','8359','48'),('54','Now There\'s That Fear Again','03:56','5550','49'),('55','One Golden Rule','04:30','10569','50'),('56','One Slip','05:08','10086','51'),('57','Parihaka','04:16','8028','29'),('58','Radioactive','03:08','7414','52'),('59','River','03:12','7553','53'),('6','Alligator Sky','03:15','6176','6'),('60','Sarah Victoria','01:54','3692','54'),('61','Shower the People','02:03','2906','55'),('62','Shower the People','04:01','9426','56'),('63','Silent Warrior','06:09','11546','57'),('64','Simple Love','04:44','4444','58'),('65','Slice Of Heaven','04:08','9693','59'),('66','Slice of Heaven','04:37','4347','60'),('67','Slice of Heaven','04:37','8667','61'),('68','Slow Train','05:59','14107','62'),('69','Spanish Train','05:02','11841','63'),('7','American Heart','03:50','9069','7'),('70','Stay','02:42','2551','47'),('71','Stay','03:24','7990','64'),('72','Steal Your Heart Away','03:33','5011','65'),('73','Sweet Baby James','03:25','4015','55'),('74','Sweet Baby James','02:54','6818','56'),('75','Tell me','02:15','2884','66'),('76','Fridays Child','04:03','7608','67'),('77','The Forest Awakes','04:52','11442','68'),('78','The Horses','04:52','9158','69'),('79','The Mother','03:15','4594','27'),('8','American Pie','08:32','20045','8'),('80','The Sodom And Gomorrah Show','05:19','7496','70'),('81','The Times They Are A-Changin\'','05:28','12854','19'),('82','The Traveller','03:26','5677','1'),('83','The Woods','03:40','8959','71'),('84','Til We Outnumber \'Em (This Land Is You Land)','02:37','4929','33'),('85','Turn! Turn! Turn! (To Everything There Is A Season)','02:40','5025','72'),('86','Turn! Turn! Turn!','03:41','3463','73'),('87','Unchain My Heart [90\'s Version]','05:06','11972','74'),('88','Waiting For You','03:24','6488','54'),('89','We can let it happen tonight','04:10','9784','75'),('9','Aqualung','06:37','11596','9'),('90','When Girls Collide','05:00','11870','76'),('91','When You Come Back Home','03:37','3408','77'),('92','You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me','02:22','5771','78'),('93','You Were Mine','03:37','3409','79'),('94','You\'re Just a Country Boy','03:28','3258','58'),('95','Zombie','04:12','9874','80');
/*!40000 ALTER TABLE `song_id` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `song_id` with 95 row(s)
--

--
-- Table structure for table `songtoartist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songtoartist` (
  `Song_ID` varchar(7) NOT NULL,
  `Song Name` varchar(77) DEFAULT NULL,
  `Duration` varchar(8) DEFAULT NULL,
  `Artist_ID` varchar(9) DEFAULT NULL,
  `Artist` varchar(29) DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  UNIQUE KEY `Song_ID` (`Song_ID`),
  KEY `Song_ID_2` (`Song_ID`),
  KEY `Song Name` (`Song Name`),
  KEY `Duration` (`Duration`),
  KEY `Artist_ID` (`Artist_ID`),
  KEY `Artist` (`Artist`),
  CONSTRAINT `songtoartist_ibfk_1` FOREIGN KEY (`Song_ID`) REFERENCES `song_id` (`Song_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songtoartist`
--

LOCK TABLES `songtoartist` WRITE;
/*!40000 ALTER TABLE `songtoartist` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `songtoartist` VALUES ('1','2-30','01:00','1','A Flock of Seagulls'),('10','Ashes By Now','04:11','10','Lee Ann Womack'),('11','Ashes By Now','04:12','10','Angus & Julia Stone'),('12','Big Jet Plane (Radio Edit)','03:43','11','The Wailin\' Jennys'),('13','Bird Song','03:33','12','Stevie Wonder'),('14','Boogie On Reggae Woman','05:14','13','Earl Klugh'),('15','Brazilian Stomp','05:39','14','Mother Earth'),('16','Bring Me Home','06:05','15','The Civil Wars'),('17','C\'est La Mort','02:29','16','As Good As It Gets'),('18','Chicken on a Raft','03:30','17','Bob Dylan'),('19','Don\'t Think Twice, It\'s All Right','05:01','18','Black Lodge Singers'),('2','A Commotion','03:53','2','Feist'),('20','Eagle Plume Dancer','02:25','19','Wai Tai'),('21','Earth And Sky','03:28','20','Evanescence'),('22','Everybody\'s Fool','03:17','21','Arctic Monkeys'),('23','Fake Tales Of San Francisco','03:01','22','Shona laing'),('24','Fear','04:22','23','Varios'),('25','Fields of Gold','03:34','24','Soul Divas'),('26','Fire','03:26','25','Xavier Rudd'),('27','Fortune Teller','03:27','26','Lynyrd Skynyrd'),('28','Free Bird Live [Fox Theater]','13:36','27','Herbs'),('29','French Letter','04:36','28','Average White Band'),('3','Alabama Blues','07:19','3','St Germain'),('30','Got The Love - 2009','03:47','29','Icehouse'),('31','Great Southern Land','05:19','30','Gin Wigmore'),('32','Hallelujah','03:31','31','Oceania'),('33','Hard Travelin\' Hootenanny','03:30','4','Mumford & Sons'),('34','He Aha Ra Te Manu','02:23','20','Flogging Molly'),('35','Hineraukatauri (Goddess of Music)','04:54','32','The Nolans'),('36','Hopeless Wanderer','05:07','33','Belinda Carlisle'),('37','How do you plead','06:40','3','Nancy Wilson'),('38','How Sweet Can You Get - 2009','03:58','29','Ronan Keating'),('39','If I Ever Leave This World Alive','03:21','34','Gael Force'),('4','Alice\'s Restaurant Massacree','18:31','4','Arlo Guthrie'),('40','I\'ll Be Long Gone','05:56','15','Wolfstone'),('41','I\'m in the Mood for Dancing','02:59','35','Country Joe & The Fish'),('42','Leave a Light On','04:16','36','Pink Floyd'),('43','Like someone in love','02:22','37','Big Country '),('44','Little Black Book','04:12','36','Sarah Slean'),('45','Lost for Words','03:48','38','St. Vincent'),('46','Maggie','03:41','39','Mum'),('47','Maggie','04:47','40','Chris Rea'),('48','Marijuana','02:32','41','Imagine Dragons'),('49','Marooned','05:29','42','Enya'),('5','All The Young Dudes','03:52','5','Matthew Sweet & Susanna Hoffs'),('50','Mary','03:53','43','Acoustic Alchemy'),('51','Mary','04:04','44','Dixie Chicks & James Taylor'),('52','Messages','04:02','26','James Taylor'),('53','Northern Lights','03:33','45','Enigma'),('54','Now There\'s That Fear Again','03:56','46','Alison Krauss'),('55','One Golden Rule','04:30','47','Three Decades Of Males'),('56','One Slip','05:08','42','Dave Dobbyn & Herbs'),('57','Parihaka','04:16','28','Chris de Burgh'),('58','Radioactive','03:08','48','Jackson Browne'),('59','River','03:12','49','Fleetwood Mac'),('6','Alligator Sky','03:15','6','Owl City'),('60','Sarah Victoria','01:54','50','The Bangles'),('61','Shower the People','02:03','51','Wendy Matthews'),('62','Shower the People','04:01','52','David Byrne & St. Vincent'),('63','Silent Warrior','06:09','53','Rickie Lee Jones'),('64','Simple Love','04:44','54','Pet Shop Boys'),('65','Slice Of Heaven','04:08','55','Daughter'),('66','Slice of Heaven','04:37','56','Wilson Phillips'),('67','Slice of Heaven','04:37','28','Nina Simone'),('68','Slow Train','05:59','18','Joe Cocker'),('69','Spanish Train','05:02','57','Maria Muldaur'),('7','American Heart','03:50','7','Faith Hill'),('70','Stay','02:42','44','The Front Lawn'),('71','Stay','03:24','58','Dixie Chicks'),('72','Steal Your Heart Away','03:33','59','The Cranberries'),('73','Sweet Baby James','03:25','51','Wendy Matthews'),('74','Sweet Baby James','02:54','52','David Byrne & St. Vincent'),('75','Tell me','02:15','60','The Bangles'),('76','Fridays Child','04:03','61','Wendy Matthews'),('77','The Forest Awakes','04:52','62','David Byrne & St. Vincent'),('78','The Horses','04:52','63','Rickie Lee Jones'),('79','The Mother','03:15','26','Lynyrd Skynyrd'),('8','American Pie','08:32','8','Don McLean'),('80','The Sodom And Gomorrah Show','05:19','64','Pet Shop Boys'),('81','The Times They Are A-Changin\'','05:28','18','Black Lodge Singers'),('82','The Traveller','03:26','1','A Flock of Seagulls'),('83','The Woods','03:40','65','Daughter'),('84','Til We Outnumber \'Em (This Land Is You Land)','02:37','4','Arlo Guthrie'),('85','Turn! Turn! Turn! (To Everything There Is A Season)','02:40','66','Wilson Phillips'),('86','Turn! Turn! Turn!','03:41','67','Nina Simone'),('87','Unchain My Heart [90\'s Version]','05:06','68','Joe Cocker'),('88','Waiting For You','03:24','50','The Bangles'),('89','We can let it happen tonight','04:10','69','Maria Muldaur'),('9','Aqualung','06:37','9','Jethro Tull'),('90','When Girls Collide','05:00','46','Alison Krauss'),('91','When You Come Back Home','03:37','70','The Front Lawn'),('92','You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me','02:22','22','Shona laing'),('93','You Were Mine','03:37','71','Dixie Chicks'),('94','You\'re Just a Country Boy','03:28','54','Pet Shop Boys'),('95','Zombie','04:12','72','The Cranberries');
/*!40000 ALTER TABLE `songtoartist` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `songtoartist` with 95 row(s)
--

--
-- Table structure for table `songtogenre`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songtogenre` (
  `Song_ID` varchar(7) NOT NULL,
  `Song Name` varchar(77) DEFAULT NULL,
  `Duration` varchar(8) DEFAULT NULL,
  `Genre_ID` varchar(8) DEFAULT NULL,
  `Genre` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `Song Name` (`Song Name`),
  KEY `Duration` (`Duration`),
  KEY `Genre_ID` (`Genre_ID`),
  KEY `Genre` (`Genre`),
  CONSTRAINT `songtogenre_ibfk_1` FOREIGN KEY (`Song_ID`) REFERENCES `song_id` (`Song_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `songtogenre_ibfk_2` FOREIGN KEY (`Genre_ID`) REFERENCES `genre_id` (`Genre_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songtogenre`
--

LOCK TABLES `songtogenre` WRITE;
/*!40000 ALTER TABLE `songtogenre` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `songtogenre` VALUES ('1','2-30','01:00','1','New Wave'),('10','Ashes By Now','04:11','10','Jazz'),('11','Ashes By Now','04:12','11','Folk UK'),('12','Big Jet Plane (Radio Edit)','03:43','12','Folk Cont'),('13','Bird Song','03:33','13','Native American, Ethnic'),('14','Boogie On Reggae Woman','05:14','14','Maori, Ethnic,New Age'),('15','Brazilian Stomp','05:39','15','Alternative Metal / Nu-Metal / Gothic Rock'),('16','Bring Me Home','06:05','16','Indie Rock / Brit Pop'),('17','C\'est La Mort','02:29','17','Celtic'),('18','Chicken on a Raft','03:30','18','Rock Celtic'),('19','Don\'t Think Twice, It\'s All Right','05:01','19','Soul'),('2','A Commotion','03:53','2','Folk'),('20','Eagle Plume Dancer','02:25','20','Mellow'),('21','Earth And Sky','03:28','21','Reggae'),('22','Everybody\'s Fool','03:17','22','World'),('23','Fake Tales Of San Francisco','03:01','23','Folk Rock'),('24','Fear','04:22','24','New Age'),('25','Fields of Gold','03:34','25','Easy Listening - Group'),('26','Fire','03:26','26','Easy Listening - Female'),('27','Fortune Teller','03:27','27','Vocal'),('28','Free Bird Live [Fox Theater]','13:36','28','Dance'),('29','French Letter','04:36','29','Psychadelic'),('3','Alabama Blues','07:19','3','Goa'),('30','Got The Love - 2009','03:47','30','Progressive Rock'),('31','Great Southern Land','05:19','31','Alternative'),('32','Hallelujah','03:31','32','Indie Rock'),('33','Hard Travelin\' Hootenanny','03:30','33','Post-Rock'),('34','He Aha Ra Te Manu','02:23','34','Blues'),('35','Hineraukatauri (Goddess of Music)','04:54','35','Acoustic'),('36','Hopeless Wanderer','05:07','36','Bluegrass'),('37','How do you plead','06:40','37','Woman'),('38','How Sweet Can You Get - 2009','03:58','38','Indie'),('39','If I Ever Leave This World Alive','03:21','39','Avante-Garde'),('4','Alice\'s Restaurant Massacree','18:31','4','Rock'),('40','I\'ll Be Long Gone','05:56','40','Alternative  Rock / Post-Grunge'),('41','I\'m in the Mood for Dancing','02:59','25','Easy Listening - Group'),('42','Leave a Light On','04:16','26','Easy Listening - Female'),('43','Like someone in love','02:22','27','Vocal'),('44','Little Black Book','04:12','26','Easy Listening - Female'),('45','Lost for Words','03:48','28','Dance'),('46','Maggie','03:41','17','Celtic'),('47','Maggie','04:47','18','Rock Celtic'),('48','Marijuana','02:32','29','Psychadelic'),('49','Marooned','05:29','30','Progressive Rock'),('5','All The Young Dudes','03:52','5','Pop'),('50','Mary','03:53','31','Alternative'),('51','Mary','04:04','31','Alternative'),('52','Messages','04:02','20','Mellow'),('53','Northern Lights','03:33','32','Indie Rock'),('54','Now There\'s That Fear Again','03:56','33','Post-Rock'),('55','One Golden Rule','04:30','34','Blues'),('56','One Slip','05:08','30','Progressive Rock'),('57','Parihaka','04:16','21','Reggae'),('58','Radioactive','03:08','32','Indie Rock'),('59','River','03:12','31','Alternative'),('6','Alligator Sky','03:15','6','Country'),('60','Sarah Victoria','01:54','35','Acoustic'),('61','Shower the People','02:03','6','Country'),('62','Shower the People','04:01','4','Rock'),('63','Silent Warrior','06:09','24','New Age'),('64','Simple Love','04:44','36','Bluegrass'),('65','Slice Of Heaven','04:08','7','Easy Listening - Male'),('66','Slice of Heaven','04:37','5','Pop'),('67','Slice of Heaven','04:37','21','Reggae'),('68','Slow Train','05:59','23','Folk Rock'),('69','Spanish Train','05:02','7','Easy Listening - Male'),('7','American Heart','03:50','7','Easy Listening - Male'),('70','Stay','02:42','31','Alternative'),('71','Stay','03:24','4','Rock'),('72','Steal Your Heart Away','03:33','34','Blues'),('73','Sweet Baby James','03:25','6','Country'),('74','Sweet Baby James','02:54','4','Rock'),('75','Tell me','02:15','5','Pop'),('76','Fridays Child','04:03','37','Woman'),('77','The Forest Awakes','04:52','31','Alternative'),('78','The Horses','04:52','36','Bluegrass'),('79','The Mother','03:15','20','Mellow'),('8','American Pie','08:32','8','US Folk'),('80','The Sodom And Gomorrah Show','05:19','28','Dance'),('81','The Times They Are A-Changin\'','05:28','12','Folk Cont'),('82','The Traveller','03:26','1','New Wave'),('83','The Woods','03:40','38','Indie'),('84','Til We Outnumber \'Em (This Land Is You Land)','02:37','2','Folk'),('85','Turn! Turn! Turn! (To Everything There Is A Season)','02:40','5','Pop'),('86','Turn! Turn! Turn!','03:41','10','Jazz'),('87','Unchain My Heart [90\'s Version]','05:06','4','Rock'),('88','Waiting For You','03:24','35','Acoustic'),('89','We can let it happen tonight','04:10','10','Jazz'),('9','Aqualung','06:37','9','R&B'),('90','When Girls Collide','05:00','38','Indie'),('91','When You Come Back Home','03:37','39','Avante-Garde'),('92','You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me','02:22','16','Indie Rock / Brit Pop'),('93','You Were Mine','03:37','6','Country'),('94','You\'re Just a Country Boy','03:28','36','Bluegrass'),('95','Zombie','04:12','40','Alternative  Rock / Post-Grunge');
/*!40000 ALTER TABLE `songtogenre` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `songtogenre` with 95 row(s)
--

--
-- Table structure for table `user_id`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_id` (
  `User_id` tinyint NOT NULL AUTO_INCREMENT,
  `Username` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Permissions` char(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `User_id_2` (`User_id`),
  KEY `Password` (`Password`),
  KEY `Username` (`Username`),
  KEY `Permissions` (`Permissions`),
  KEY `User_id` (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_id`
--

LOCK TABLES `user_id` WRITE;
/*!40000 ALTER TABLE `user_id` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `user_id` VALUES (1,'Ben','1212','User'),(2,'Bhavik','CALDINA','User'),(3,'Dane','1234','User'),(4,'Ethan','ABC123','User'),(5,'Jeremy','1273','Admin'),(14,'Graeme','DoJustly','Admin');
/*!40000 ALTER TABLE `user_id` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `user_id` with 6 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET AUTOCOMMIT=@OLD_AUTOCOMMIT */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Wed, 04 Sep 2024 12:02:41 +0000
