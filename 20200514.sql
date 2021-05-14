-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hoxylush
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'베스트'),(2,'신제품'),(3,'배쓰'),(4,'샤워'),(5,'보디'),(6,'페이스'),(7,'헤어'),(8,'메이크업'),(9,'퍼퓸'),(10,'기프트'),(11,'비건');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ingredients_product_id_3ab80c36_fk_products_id` (`product_id`),
  CONSTRAINT `ingredients_product_id_3ab80c36_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트',1),(2,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','상쾌한 향기,\\n건강한 피부에 도움',1),(3,'베르가못 오일','밝고 상쾌한\\n무드에 도움','밝고 상쾌한\\n무드에 도움',1),(4,'오렌지 주스','기분 좋은\\n상큼한 향기','기분 좋은\\n상큼한 향기',1),(5,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','상큼한 향기로\\n밝은 무드에 도움',2),(6,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','감미로운 향기,\\n차분한 무드에 도움',2),(7,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','촉촉한 피부에 도움\\n*코푸아수씨드버터',2),(8,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트',3),(9,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','상쾌한 향기,\\n건강한 피부에 도움',3),(10,'베르가못 오일','밝고 상쾌한\\n무드에 도움','밝고 상쾌한\\n무드에 도움',3),(11,'오렌지 주스','기분 좋은\\n상큼한 향기','기분 좋은\\n상큼한 향기',3),(12,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','상큼한 향기로\\n밝은 무드에 도움',4),(13,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','감미로운 향기,\\n차분한 무드에 도움',4),(14,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','촉촉한 피부에 도움\\n*코푸아수씨드버터',4),(15,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트',5),(16,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','상쾌한 향기,\\n건강한 피부에 도움',5),(17,'베르가못 오일','밝고 상쾌한\\n무드에 도움','밝고 상쾌한\\n무드에 도움',5),(18,'오렌지 주스','기분 좋은\\n상큼한 향기','기분 좋은\\n상큼한 향기',5),(19,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','상큼한 향기로\\n밝은 무드에 도움',6),(20,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','감미로운 향기,\\n차분한 무드에 도움',6),(21,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','촉촉한 피부에 도움\\n*코푸아수씨드버터',6),(22,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트',7),(23,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','상쾌한 향기,\\n건강한 피부에 도움',7),(24,'베르가못 오일','밝고 상쾌한\\n무드에 도움','밝고 상쾌한\\n무드에 도움',7),(25,'오렌지 주스','기분 좋은\\n상큼한 향기','기분 좋은\\n상큼한 향기',7),(26,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','상큼한 향기로\\n밝은 무드에 도움',8),(27,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','감미로운 향기,\\n차분한 무드에 도움',8),(28,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','촉촉한 피부에 도움\\n*코푸아수씨드버터',8),(29,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트',9),(30,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','상쾌한 향기,\\n건강한 피부에 도움',9),(31,'베르가못 오일','밝고 상쾌한\\n무드에 도움','밝고 상쾌한\\n무드에 도움',9),(32,'오렌지 주스','기분 좋은\\n상큼한 향기','기분 좋은\\n상큼한 향기',9),(33,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','상큼한 향기로\\n밝은 무드에 도움',10),(34,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','감미로운 향기,\\n차분한 무드에 도움',10),(35,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','촉촉한 피부에 도움\\n*코푸아수씨드버터',10),(36,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트',11),(37,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','상쾌한 향기,\\n건강한 피부에 도움',11),(38,'베르가못 오일','밝고 상쾌한\\n무드에 도움','밝고 상쾌한\\n무드에 도움',11),(39,'오렌지 주스','기분 좋은\\n상큼한 향기','기분 좋은\\n상큼한 향기',11),(40,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','상큼한 향기로\\n밝은 무드에 도움',12),(41,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','감미로운 향기,\\n차분한 무드에 도움',12),(42,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','촉촉한 피부에 도움\\n*코푸아수씨드버터',12),(43,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트',13),(44,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','상쾌한 향기,\\n건강한 피부에 도움',13),(45,'베르가못 오일','밝고 상쾌한\\n무드에 도움','밝고 상쾌한\\n무드에 도움',13),(46,'오렌지 주스','기분 좋은\\n상큼한 향기','기분 좋은\\n상큼한 향기',13);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_product_id_7f73cfa5_fk_products_id` (`product_id`),
  KEY `likes_user_id_0899754c_fk_users_id` (`user_id`),
  CONSTRAINT `likes_product_id_7f73cfa5_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `likes_user_id_0899754c_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,7),(2,4,7),(3,5,11),(4,13,11),(5,12,11),(6,1,12),(7,7,12),(8,7,10),(9,12,10),(10,1,10),(11,11,10);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_descriptions`
--

DROP TABLE IF EXISTS `product_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_descriptions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_descriptions_product_id_b3b9f1aa_fk_products_id` (`product_id`),
  CONSTRAINT `product_descriptions_product_id_b3b9f1aa_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_descriptions`
--

LOCK TABLES `product_descriptions` WRITE;
/*!40000 ALTER TABLE `product_descriptions` DISABLE KEYS */;
INSERT INTO `product_descriptions` VALUES (1,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',1),(2,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',1),(3,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',1),(4,'은은한 장미 향기가 퍼집니다.\\n로즈 앱솔루트와 질 좋은 브라질넛의 만남은 목말라 있는\\n당신의 피부에 환상 그 이상의 촉촉함을 선사할 거예요.\\nTIP!장미가 가장 향기로운 시간인 새벽에 수확한 다마스크 장미를 듬뿍 담았답니다.','http://img.lush.co.kr/product/body/rosarganbodyconditioner_review.jpg',2),(5,'대표성분\\n레몬 껍질 오일, 다마스크 장미 오일, 쿠푸아수 버터\\n전 성분 표기\\n온천수,글리세린,정제수,스위트아몬드오일,브라질넛씨오일, 시어버터,스테아릭애씨드,코포아수씨드버터,아르간커넬오일(3.0%), 트라이에탄올아민,카카오씨드버터,영하구기자추출물,향료, 다마스크장미꽃오일,센티드제라늄꽃오일,레몬껍질오일,시트로넬올, 쿠마린,제라니올,세테아릴알코올,솔잣나무잎추출물,바닐라열매','http://img.lush.co.kr/product/body/rosarganbodyconditioner_review.jpg',2),(6,'헤어 컨디셔너를 사용하듯 몸에 사용해주세요. 입욕 또는 샤워 도중 젖은 피부 위로 부드럽게 마사지하듯 바르고 물로 헹궈낸 뒤, 가볍게 수건으로 닦아주세요.\\n#블랙팟의환생 #로즈아르간보디컨디셔너 #비건화장품 #보디컨디셔너 #RosArganBodyConditioner','http://img.lush.co.kr/product/body/rosarganbodyconditioner_review.jpg',2),(7,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',3),(8,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',3),(9,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',3),(10,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',4),(11,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',4),(12,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',4),(13,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',5),(14,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',5),(15,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',5),(16,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',6),(17,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',6),(18,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',6),(19,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',7),(20,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',7),(21,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',7),(22,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',9),(23,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',9),(24,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',9),(25,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',10),(26,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',10),(27,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',10),(28,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',11),(29,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',11),(30,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',11),(31,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',12),(32,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',12),(33,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',12),(34,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',13),(35,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',13),(36,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','http://img.lush.co.kr/product/christmas/orangeshowerscrub_img.jpg',13);
/*!40000 ALTER TABLE `product_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_28ebf5f0_fk_products_id` (`product_id`),
  CONSTRAINT `product_images_product_id_28ebf5f0_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'https://lush.co.kr/data/goods/20/09/39/1000001344/1000001344_detail_012.jpg',1),(2,'https://lush.co.kr/data/goods/20/09/39/1000001344/1000001344_magnify_165.jpg',1),(3,'https://lush.co.kr/data/goods/20/09/39/1000001344/1000001344_magnify_236.jpg',1),(4,'https://lush.co.kr/data/goods/17/10/23/333/333_magnify_025.jpg',2),(5,'https://lush.co.kr/data/goods/17/10/23/333/333_magnify_165.jpg',2),(6,'https://lush.co.kr/data/goods/17/10/23/333/333_magnify_223.jpg',2),(7,'https://lush.co.kr/data/goods/21/03/13/1000001745/1000001745_magnify_073.jpg',3),(8,'https://lush.co.kr/data/goods/21/03/13/1000001741/1000001741_magnify_013.jpg',4),(9,'https://lush.co.kr/data/goods/21/03/13/1000001740/1000001740_magnify_032.jpg',5),(10,'https://lush.co.kr/data/goods/21/03/13/1000001739/1000001739_magnify_053.jpg',6),(11,'https://lush.co.kr/data/goods/21/02/08/1000001709/1000001709_detail_02.jpg',7),(12,'https://lush.co.kr/data/goods/21/02/07/1000001666/1000001666_detail_077.jpg',8),(13,'https://lush.co.kr/data/goods/21/02/07/1000001665/1000001665_main_062.jpg',9),(14,'https://lush.co.kr/data/goods/21/02/07/1000001664/1000001664_main_03.jpg',10),(15,'https://lush.co.kr/data/goods/21/02/07/1000001663/1000001663_main_029.jpg',11),(16,'https://lush.co.kr/data/goods/20/10/41/1000001422/1000001422_detail_032.jpg',12),(17,'https://lush.co.kr/data/goods/11/01/20/72/72_detail_010.jpg',13);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_options` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `weight` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_options_product_id_5452622a_fk_products_id` (`product_id`),
  CONSTRAINT `product_options_product_id_5452622a_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_options`
--

LOCK TABLES `product_options` WRITE;
/*!40000 ALTER TABLE `product_options` DISABLE KEYS */;
INSERT INTO `product_options` VALUES (1,'330g',28000.00,50,1),(2,'665g',50000.00,50,1),(3,'225g',42000.00,50,2),(4,'450g',78000.00,50,2),(5,'180g',17000.00,50,3),(6,'185g',21000.00,50,4),(7,'200g',20000.00,50,5),(8,'180g',23000.00,50,6),(9,'75g',22000.00,50,7),(10,'200g',23000.00,50,8),(11,'160g',35000.00,50,9),(12,'150g',35000.00,50,10),(13,'150g',25000.00,50,11),(14,'120',18000.00,50,12),(15,'80g',18000.00,50,13);
/*!40000 ALTER TABLE `product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_tags_tag_id_dd3a8625_fk_tags_id` (`tag_id`),
  KEY `product_tags_product_id_138ace6f_fk_products_id` (`product_id`),
  CONSTRAINT `product_tags_product_id_138ace6f_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_tags_tag_id_dd3a8625_fk_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (57,1,1),(58,1,2),(59,1,5),(60,2,2),(61,2,5),(62,3,1),(63,3,2),(64,3,5),(65,4,1),(66,4,5),(67,5,1),(68,5,5),(69,6,1),(70,6,5),(71,7,1),(72,7,4),(73,8,1),(74,8,2),(75,9,1),(76,9,2),(77,10,1),(78,10,2),(79,11,1),(80,11,2),(81,12,1),(82,12,2),(83,12,4),(84,13,2);
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name_korean` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name_english` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `hit` int NOT NULL,
  `video_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` bigint NOT NULL,
  `sub_category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_sub_category_id_f08b7711_fk_sub_categories_id` (`sub_category_id`),
  KEY `products_category_id_a7a3a156_fk_categories_id` (`category_id`),
  CONSTRAINT `products_category_id_a7a3a156_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_sub_category_id_f08b7711_fk_sub_categories_id` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'오렌지 330g/665g','orange 330g/665g',0,'https://www.youtube.com/embed/T11HgSmAYuM',4,21),(2,'로즈 아르간 보디 컨디셔너 225g/450g','rose 225g/450g',0,'https://www.youtube.com/embed/msyb_LI1H5k',4,18),(3,'더티','dirty',0,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(4,'로즈 골드','rose gold',0,'https://www.youtube.com/embed/msyb_LI1H5k',3,12),(5,'아톰 하트 마더','atom Heart Mother',0,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(6,'마더 오브 펄','Mother Of Pearl',0,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(7,'싱잉 대퍼딜','Singing Daffodill',0,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(8,'더티 퍼퓸 버블 보틀','Dirty Bubble Bottle',0,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(9,'러브 퍼퓸 버블 보틀','Love Bubble Bottle',0,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(10,'칵테일 퍼퓸 버블 보틀','Cocktail Bubble Bottle',0,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(11,'1000 키시스 딥 퍼퓸 버블 보틀','1000 Kisses Deep Bubble Bottle',0,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(12,'워리 몬스터','Worry Monster',0,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(13,'체리드웬즈 콜드론','Cherry',0,'https://www.youtube.com/embed/0hk7llGJraM',3,14);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_images`
--

DROP TABLE IF EXISTS `review_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `review_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `review_images_review_id_9c7a1455_fk_reviews_id` (`review_id`),
  CONSTRAINT `review_images_review_id_9c7a1455_fk_reviews_id` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_images`
--

LOCK TABLES `review_images` WRITE;
/*!40000 ALTER TABLE `review_images` DISABLE KEYS */;
INSERT INTO `review_images` VALUES (1,'https://lush.co.kr/data/plus_review/1000001344/t/square_dae044d3f2f2dedd',1),(2,'https://lush.co.kr/data/plus_review/1000001344/t/square_ac4cf3572a41cb0f',1),(3,'https://lush.co.kr/data/plus_review/1000001344/t/square_fb2b5b6bbcfb9d2e',2),(4,'https://phinf.pstatic.net/checkout.phinf/20210506_93/1620268512257RnONX_JPEG/review-attachment-1ed019a7-4134-46f3-8923-a89049bd1dae.jpeg?type=w640',4),(5,'https://lush.co.kr/data/plus_review/1000001739/t/square_6b2db874261b3f26',6),(6,'https://lush.co.kr/data/plus_review/1000001739/t/square_54b7e68e6c0676aa',6);
/*!40000 ALTER TABLE `review_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `rating` int NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_user_id_c23b0903_fk_users_id` (`user_id`),
  KEY `reviews_product_id_d4b78cfe_fk_products_id` (`product_id`),
  CONSTRAINT `reviews_product_id_d4b78cfe_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `reviews_user_id_c23b0903_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'이름과 제형에서 느껴지시나요?\\n완벽하게 에요!!\\n다른 스크럽제품과 달리 입자가 굉장히 굵어서 시원하게 스크럽을 도와줘요. 각질이 많아지는 지금 이 시즌에 딱 맞는 제품이에요.','2021-05-13 21:13:16.375026','2021-05-13 21:13:16.375054',7,5,1),(2,'상큼한 향기도 굿스멜 색도 굿 거기에 오일이 들어 있어 온몸이 촉촉 ㅎㅎ원래 바디제품 미끈거리고 끈적여서 싫어 했는데 이 제품 쓰고 하나 더 구매해서 딸선물 했더니 너무너무 좋아라합니다. 강추합니다','2021-05-13 21:13:16.375068','2021-05-13 21:13:16.375072',8,4,1),(3,'매장에 친구따라갔다가 직원분께서 추천해주셔서 쓰고있습니다.\\n매직크리스탈,맘마미아 쓰고있었는데 이제 그 두 개는 쓰지않을정도로 향이너무좋고 스크럽도 잘돼요\\n적당히 까끌하고 보습력도 좋아요 냄새도 진짜 인위적인향아니고 방금 오렌지 갈아만든 그냥 생과일향이에요\\n러쉬 특유의 센 향 때문에 진입장벽을 느끼고계신분들께 최고인듯계속 내줬으면좋겠어요 진심...','2021-05-13 21:13:16.375084','2021-05-13 21:13:16.375089',9,2,1),(4,'가격빼고 다 마음에 들어요 잘쓸게유 ㅎㅎ\\n가격빼고 다 마음에 들어요 잘쓸게유 ㅎㅎ','2021-05-13 21:13:16.375100','2021-05-13 21:13:16.375105',10,3,3),(5,'아주좋아요 배송굿ㅎㅎ','2021-05-13 21:13:16.375116','2021-05-13 21:13:16.375121',10,5,4),(6,'평소 살냄새 향수 좋아하시는 분들에게 강추입니다. 폭닥한 여리여리한 꽃향이 좋아요. 펄도 되게 잘고 쉬머해요~\'내가 펄이니라\'하고 둥둥 떠다니는게 아니라서 부담덜해요. 저는 평소에 배쓰밤 커팅 진짜 잘하는데 이건 내부에 반전부분없이 단독제형이라그런가~진짜 힘들게 잘랐습니다~ 걍 통으로쓰세요;;','2021-05-13 21:13:16.375132','2021-05-13 21:13:16.375137',11,4,6);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sub_title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categories_category_id_dc42080e_fk_categories_id` (`category_id`),
  CONSTRAINT `sub_categories_category_id_dc42080e_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'주간베스트',1),(2,'별다섯개후기',1),(3,'온라인 전용',1),(4,'국내제조',1),(5,'네이키드',1),(6,'리틀 러쉬',1),(7,'디스커버리 키트',2),(8,'버블바 큐레이션',2),(9,'비건 메이크업',2),(10,'기프트',2),(11,'마더스&파더스',2),(12,'배쓰 밤',3),(13,'버블 바',3),(14,'배쓰 오일',3),(15,'펀',3),(16,'솝',4),(17,'샤워 젤&젤리',4),(18,'보디 컨디셔너',4),(19,'샤워 밤',4),(20,'샤워 오일',4),(21,'스크럽&버터',4),(22,'펀',4),(23,'클렌저',5),(24,'로션',5),(25,'핸드 앤 풋',5),(26,'마사지 바',5),(27,'더스팅 파우더',5),(28,'쉐이빙 크림',5),(29,'클렌저',6),(30,'페이스 마스크',6),(31,'토너',6),(32,'모이스춰라이저',6),(33,'프라이머',6),(34,'립',6),(35,'쉐이빙 크림',6),(36,'샴푸 바',7),(37,'샴푸',7),(38,'컨디셔너',7),(39,'트리트먼트',7),(40,'스타일링',7),(41,'페이스 파우더',8),(42,'아이 메이크업',8),(43,'립',8),(44,'파운데이션',8),(45,'스킨 틴트',8),(46,'비건 브러쉬',8),(47,'보디 스프레이',9),(48,'퍼퓸 라이브러리',9),(49,'코어 레인지',9),(50,'솔리드 퍼퓸',9),(51,'워시 카드',9),(52,'퍼퓸 기프트',9),(53,'낫랩',9),(54,'르네상스 퍼퓸',9),(55,'기프트 베스트',10),(56,'1-3만원대',10),(57,'4-6만원대',10),(58,'7만원 이상',10),(59,'낫랩',10),(60,'스웨그',10),(61,'악세서리',10),(62,'북',10),(63,'배쓰',11),(64,'샤워',11),(65,'보디',11),(66,'페이스',11),(67,'헤어',11),(68,'메이크업',11),(69,'퍼퓸',11);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'NEW'),(2,'VEGAN'),(3,'BEST'),(4,'온라인전용'),(5,'주간 베스트');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'ojkwon','12345678','귀여운닉네임1','ojkwon@mail.com','서울어딘가','01011111111','2021-05-13 20:33:56.862400','2021-05-13 20:33:56.862430'),(8,'krkim','12345678','귀여운닉네임2','krkim@mail.com','서울어딘가','01022222222','2021-05-13 20:33:56.862447','2021-05-13 20:33:56.862453'),(9,'mjkim','12345678','귀여운닉네임3','mjkim@mail.com','서울어딘가','01033333333','2021-05-13 20:33:56.862468','2021-05-13 20:33:56.862473'),(10,'hikim','12345678','귀여운닉네임4','hikim@mail.com','서울어딘가','01044444444','2021-05-13 20:33:56.862487','2021-05-13 20:33:56.862493'),(11,'ehpak','12345678','귀여운닉네임5','ehpak@mail.com','서울어딘가','01055555555','2021-05-13 20:33:56.862507','2021-05-13 20:33:56.862512'),(12,'smlee','12345678','귀여운닉네임6','smlee@mail.com','서울어딘가','01066666666','2021-05-13 20:33:56.862527','2021-05-13 20:33:56.862532');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14  2:04:16
