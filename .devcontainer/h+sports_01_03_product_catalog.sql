-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: h+sports
-- ------------------------------------------------------
-- Server version	8.0.33
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `product_catalog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
USE `h+sports`;
CREATE TABLE IF NOT EXISTS `product_catalog` (`ProdNumber` text, `ProdName` text);
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `product_catalog`
--

LOCK TABLES `product_catalog` WRITE;
/*!40000 ALTER TABLE `product_catalog` DISABLE KEYS */
;
INSERT INTO `product_catalog`
VALUES ('FT139', 'Insulated water bottle - 24oz -Blue'),
  ('FT140', 'Slam ball - 25 lb'),
  ('FT172', 'Insulated water bottle - 24oz - Pink'),
  ('FT174', 'Insulated water bottle - 40oz - Blue'),
  (
    'FT181',
    'Insulated water bottle - 24oz - Purple'
  ),
  ('FT258', 'Resistance bands - 50 lb'),
  ('FT280', 'Slam ball - 5 lb'),
  ('FT300', 'Kettlebell - 10 lb'),
  ('FT337', 'Yoga block - 4 inch'),
  (
    'FT344',
    'Insulated water bottle - 40oz - Purple'
  ),
  ('FT350', 'Kettlebell - 30 lb'),
  ('FT357', 'Kettlebell - 25 lb'),
  ('FT358', 'Slam ball - 20 lb'),
  ('FT422', 'Battle rope - 1.5 inch'),
  ('FT434', 'Insulated water bottle - 24oz - Grey'),
  ('FT439', 'Resistance bands - 40 lb'),
  ('FT467', 'Yoga ball - 45cm'),
  ('FT485', 'Yoga ball - 65cm'),
  ('FT525', 'Yoga mat - 3mm'),
  ('FT530', 'Resistance bands - 30 lb'),
  ('FT544', 'Resistance bands - 20 lb'),
  ('FT577', 'Slam ball - 10 lb'),
  ('FT589', 'Slam ball - 15 lb'),
  ('FT598', 'Kettlebell - 15 lb'),
  ('FT609', 'Yoga ball - 55cm'),
  ('FT644', 'Insulated water bottle - 40oz - Pink'),
  ('FT682', 'Insulated water bottle - 40oz - Green'),
  ('FT727', 'Resistance bands - 10 lb'),
  ('FT797', 'Yoga ball - 75cm '),
  ('FT825', 'Yoga block - 3 inch'),
  ('FT853', 'Yoga mat - 6mm'),
  ('FT870', 'Resistance bands - set of 5'),
  ('FT871', 'Battle rope - 2 inch'),
  ('FT895', 'Insulated water bottle - 40oz - Grey'),
  ('FT962', 'Yoga mat - 4mm'),
  ('FT976', 'Insulated water bottle - 24oz - Green'),
  ('FT981', 'Kettlebell - 20 lb'),
  ('MW102', 'Mineral Water - Natural - 20oz - case'),
  (
    'MW112',
    'Mineral Water - Blueberry -  20oz - case'
  ),
  (
    'MW122',
    'Mineral Water - Blueberry - 32oz - case'
  ),
  ('MW127', 'Mineral Water - Lemon -  20oz - case'),
  ('MW132', 'Mineral Water - Orange -  20oz - case'),
  ('MW142', 'Mineral Water - Peach -  20oz - case'),
  ('MW155', 'Mineral Water - Natural - 20oz - case'),
  (
    'MW152',
    'Mineral Water - Raspberry -  20oz - case'
  ),
  (
    'MW162',
    'Mineral Water - Strawberry -  20oz - case'
  ),
  (
    'MW172',
    'Mineral Water - Cranberry -  20oz - case'
  ),
  ('MW182', 'Mineral Water - Mango -  20oz - case'),
  (
    'MW202',
    'Mineral Water - Natural -  32oz - case'
  ),
  ('MW222', 'Mineral Water - Lemon - 32oz - case'),
  ('MW232', 'Mineral Water - Orange - 32oz - case'),
  ('MW242', 'Mineral Water - Peach -32oz - case'),
  (
    'MW252',
    'Mineral Water - Raspberry - 32oz - case'
  ),
  (
    'MW262',
    'Mineral Water - Strawberry - 32oz - case'
  ),
  (
    'MW272',
    'Mineral Water - Cranberry - 32oz - case'
  ),
  ('MW282', 'Mineral Water - Mango - 32oz - case'),
  ('SP120', 'Multivitamin - 180 capsules'),
  ('SP121', 'Flaxseed Oil 1000mg - 120 capsules'),
  ('SP123', 'Magnesium 250 mg - 100 tablets'),
  ('SP125', 'Vitamin B-complex - 100 capsules'),
  ('SP126', 'Vitamin C-1000 mg - 140 tablets'),
  ('SP201', 'Calcium 400 IU - 140 tablets'),
  ('SP202', 'Iron 65 mg - 80 capsules'),
  ('SP203', 'Vitamin B-complex - 160 capsules'),
  ('SP204', 'Vitamin D3 1000 IU - 100 capsules'),
  ('SP303', 'Multivitamin - 120 capsules'),
  ('SP304', 'Flaxseed Oil 1000mg - 90 capsules'),
  ('SP305', 'Magnesium 250 mg - 160 tablets'),
  ('SP306', 'Vitamin C-1000 mg - 80 tablets'),
  ('SP309', 'Vitamin A 10,000 IU - 125 capsules'),
  ('SP601', 'Multivitamin - 90 capsules'),
  ('SP602', 'Iron 65 mg - 150 capsules'),
  ('SP603', 'Calcium 400 IU - 200 tablets'),
  ('SP604', 'Vitamin A 10,000 IU - 75 capsules'),
  ('SP607', 'Vitamin B-complex - 200 capsules'),
  ('SP609', 'Vitamin D3 1000 IU - 160 capsules');
/*!40000 ALTER TABLE `product_catalog` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;