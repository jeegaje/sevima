-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: collapt_db
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (1,2,'Odio sit ea praesentium.','2020-2021','2022-06-25 08:50:37','2022-06-25 08:50:37'),(2,6,'Rerum saepe ea.','2020-2021','2022-06-25 08:50:37','2022-06-25 08:50:37'),(3,1,'Beatae voluptatem in.','2020-2021','2022-06-25 08:50:37','2022-06-25 08:50:37'),(4,8,'Harum et dolorem necessitatibus.','2020-2021','2022-06-25 08:50:37','2022-06-25 08:50:37'),(5,9,'Sint expedita eum nesciunt.','2020-2021','2022-06-25 08:50:37','2022-06-25 08:50:37'),(6,8,'Neque rerum quis.','2020-2021','2022-06-25 08:50:37','2022-06-25 08:50:37'),(7,2,'Nihil quasi aspernatur.','2020-2021','2022-06-25 08:50:38','2022-06-25 08:50:38'),(8,5,'Vitae dolor hic et.','2020-2021','2022-06-25 08:50:38','2022-06-25 08:50:38'),(9,1,'Dolorem explicabo vitae.','2020-2021','2022-06-25 08:50:38','2022-06-25 08:50:38'),(10,7,'Dicta accusamus fugiat.','2020-2021','2022-06-25 08:50:38','2022-06-25 08:50:38'),(11,3,'Voluptatum enim animi.','2020-2021','2022-06-25 08:50:38','2022-06-25 08:50:38'),(12,5,'Pariatur dicta quia.','2020-2021','2022-06-25 08:50:38','2022-06-25 08:50:38'),(13,8,'Itaque eos et.','2020-2021','2022-06-25 08:50:38','2022-06-25 08:50:38'),(14,2,'Eveniet aut unde.','2020-2021','2022-06-25 08:50:38','2022-06-25 08:50:38'),(15,8,'Inventore beatae necessitatibus.','2020-2021','2022-06-25 08:50:38','2022-06-25 08:50:38'),(16,3,'Quis doloremque repellat eius.','2020-2021','2022-06-25 08:50:39','2022-06-25 08:50:39'),(17,5,'Quia voluptatum error quis.','2020-2021','2022-06-25 08:50:39','2022-06-25 08:50:39'),(18,1,'Similique ducimus molestias.','2020-2021','2022-06-25 08:50:39','2022-06-25 08:50:39'),(19,8,'Qui officia ullam.','2020-2021','2022-06-25 08:50:39','2022-06-25 08:50:39'),(20,3,'Quibusdam veniam eum.','2020-2021','2022-06-25 08:50:40','2022-06-25 08:50:40'),(21,13,'jeegaje','2020-2021','2022-06-25 17:21:23','2022-06-25 17:21:23'),(22,13,'Angga Jiyan','2020-2021','2022-06-25 17:23:33','2022-06-25 17:23:33'),(23,13,'Angga Jiyan','2020-2021','2022-06-25 17:25:13','2022-06-25 17:25:13'),(24,13,'__init__.py','2020-2021','2022-06-25 17:25:26','2022-06-25 17:25:26');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `classroom_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,3,'Sunt aut a blanditiis.','2022-06-25 08:50:40','2022-06-25 08:50:40'),(2,5,'Minima cupiditate.','2022-06-25 08:50:41','2022-06-25 08:50:41'),(3,3,'Est odio dolores sit.','2022-06-25 08:50:41','2022-06-25 08:50:41'),(4,9,'Recusandae quibusdam natus.','2022-06-25 08:50:41','2022-06-25 08:50:41'),(5,8,'Provident quasi omnis.','2022-06-25 08:50:41','2022-06-25 08:50:41'),(6,10,'Nisi quia eos.','2022-06-25 08:50:41','2022-06-25 08:50:41'),(7,4,'Itaque voluptatum qui.','2022-06-25 08:50:41','2022-06-25 08:50:41'),(8,4,'Voluptatum doloribus animi illo.','2022-06-25 08:50:41','2022-06-25 08:50:41'),(9,2,'Veritatis ut in.','2022-06-25 08:50:42','2022-06-25 08:50:42'),(10,6,'Distinctio quasi.','2022-06-25 08:50:43','2022-06-25 08:50:43'),(11,2,'Et omnis repellat sunt.','2022-06-25 08:50:43','2022-06-25 08:50:43'),(12,10,'Maiores minus sit.','2022-06-25 08:50:43','2022-06-25 08:50:43'),(13,6,'Qui beatae magni maxime.','2022-06-25 08:50:43','2022-06-25 08:50:43'),(14,5,'Consectetur aut et.','2022-06-25 08:50:43','2022-06-25 08:50:43'),(15,10,'Dolorum quo eveniet non.','2022-06-25 08:50:44','2022-06-25 08:50:44'),(16,4,'Ut eveniet soluta est.','2022-06-25 08:50:44','2022-06-25 08:50:44'),(17,1,'Veniam cupiditate aut.','2022-06-25 08:50:44','2022-06-25 08:50:44'),(18,8,'Tempora corporis eum.','2022-06-25 08:50:44','2022-06-25 08:50:44'),(19,4,'Quas libero ut vero.','2022-06-25 08:50:44','2022-06-25 08:50:44'),(20,10,'Eligendi temporibus cum recusandae.','2022-06-25 08:50:44','2022-06-25 08:50:44');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2019_12_14_000001_create_personal_access_tokens_table',1),(4,'2022_06_25_060701_create_users_table',1),(5,'2022_06_25_061738_create_classrooms_table',1),(6,'2022_06_25_153249_create_lessons_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'teacher','Rollin Reilly IV','rollin-reilly-iv','wbayer@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:35','2022-06-25 08:50:35'),(2,'teacher','Kallie Oberbrunner','kallie-oberbrunner','emckenzie@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:36','2022-06-25 08:50:36'),(3,'teacher','Miss Barbara Johnston','miss-barbara-johnston','ankunding.melody@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:36','2022-06-25 08:50:36'),(4,'teacher','Murray Moen','murray-moen','mueller.sister@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:36','2022-06-25 08:50:36'),(5,'teacher','Annabel Bosco','annabel-bosco','perry.turcotte@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:36','2022-06-25 08:50:36'),(6,'teacher','Mr. Sofia McClure V','mr-sofia-mcclure-v','bbrekke@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:36','2022-06-25 08:50:36'),(7,'teacher','Gilda Waters','gilda-waters','champlin.ignatius@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:36','2022-06-25 08:50:36'),(8,'teacher','Prof. Darion Rosenbaum Sr.','prof-darion-rosenbaum-sr','ibednar@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:36','2022-06-25 08:50:36'),(9,'teacher','Prof. Orion Mayert III','prof-orion-mayert-iii','eschmidt@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:36','2022-06-25 08:50:36'),(10,'teacher','Dr. Rubie Walsh','dr-rubie-walsh','kiarra.gusikowski@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-06-25 08:50:37','2022-06-25 08:50:37'),(11,'parent','globalyouth team','globalyouth-team','mongga@gmail.com','$2y$10$h.2IT1dmiWWqDpoRYo/WwuL7FM1ts9cn46eW0gkzoIGEWnUSkHjP.','2022-06-25 12:32:31','2022-06-25 12:32:31'),(13,'teacher','doni','doni','doni@gmail.com','$2y$10$ZDAvEuP56d6Q48anhRxIGeWgnVd3ZWR9APcDADB4I1xddy82k2k0e','2022-06-25 13:33:06','2022-06-25 13:33:06'),(14,'teacher','Angga Jiyan Fajar Imanuddin','angga-jiyan-fajar-imanuddin','anggajiyanfajar@gmail.com','$2y$10$yRyGLPcDNeg0WRuQIZwAje8sO/uxNSQC0i2LBDt38u1V8u9gpXopK','2022-06-25 14:00:42','2022-06-25 14:00:42');
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

-- Dump completed on 2022-06-26  7:45:19
