-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: wartegsarirasa
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Web Programming','web-programming','2022-09-21 21:10:27','2022-09-21 21:10:27'),(2,'Web Design','web-design','2022-09-21 21:10:27','2022-09-21 21:10:27'),(3,'Personal','personal','2022-09-21 21:10:27','2022-09-21 21:10:27');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_09_15_165308_create_posts_table',1),(6,'2022_09_16_014644_create_categories_table',1),(7,'2022_09_22_035621_outlet_loc',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outlets`
--

DROP TABLE IF EXISTS `outlets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outlets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten_kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps_loc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outlets`
--

LOCK TABLES `outlets` WRITE;
/*!40000 ALTER TABLE `outlets` DISABLE KEYS */;
INSERT INTO `outlets` VALUES (1,'Warteg Sarirasa Terusan Surabaya','sarirasa.c.tsurabaya@gmail.com','081249418057','Lowokwaru','Kota Malang','Jawa Timur','https://g.page/warteg-sari-rasa-24-jam?share',NULL),(2,'Warteg Sarirasa Simpang Gajayana','sarirasa.c.sgajayana@gmail.com','081249418057','Lowokwaru','Kota Malang','Jawa Timur','https://goo.gl/maps/Tg9ftF8VezsaqGfb6',NULL),(3,'Warteg Sarirasa Joyo Tambaksari','sarirasa.c.gajayana@gmail.com','081249418057','Lowokwaru','Kota Malang','Jawa Timur','https://goo.gl/maps/FLVyuQHkdVYoAC537',NULL),(4,'Warteg Sarirasa Joyo Utomo','sarirasa.c.merjosari@gmail.com','081249418057','Lowokwaru','Kota Malang','Jawa Timur','https://goo.gl/maps/fLyChWdRoPWTPB7d8',NULL),(5,'Warteg Sarirasa Joyo Suryo','sarirasa.c.tlogomas@gmail.com','082136254386','Lowokwaru','Kota Malang','Jawa Timur','https://g.page/warteg-sarirasa-cab-tlogomas?share',NULL);
/*!40000 ALTER TABLE `outlets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,2,2,'Quis earum sed iusto maiores qui perspiciatis excepturi ut.','doloremque-facere-dicta-reiciendis-nulla-corrupti-qui','Non pariatur facilis aut. Est impedit quaerat ipsa.','<p>In aperiam animi quae sed ut non veritatis. Nostrum ipsum nam alias consequatur molestiae. Beatae eos delectus qui aut voluptatum. Ex laudantium accusamus tempore optio velit vel numquam.</p><p>Aut accusantium recusandae aut impedit minus ut nihil. A voluptas officia qui ea officia et. Debitis molestiae aut qui architecto.</p><p>Blanditiis et et culpa nam aperiam dolore et. Quibusdam non nemo vero. Labore aut sint quo facilis. Perferendis quas aut esse. Id quis dolorem reiciendis accusamus et.</p><p>Et et dolores nulla labore iure tempora. Cum aperiam eveniet beatae dignissimos autem et adipisci qui. Minima et quisquam architecto et quidem. Molestiae cum error iure eum est rerum.</p><p>Quae eos sit praesentium nihil quia incidunt. Dolore magni et amet in culpa ducimus. Totam autem voluptatum fugiat expedita.</p><p>Vel mollitia illum possimus necessitatibus. Molestiae iste hic illo iusto. Nobis sapiente harum optio aut. Aperiam et esse aut repellendus sint et eos.</p><p>Dolorem ex ut aut qui nostrum est. Doloremque dolore quam voluptatem nihil et esse in.</p><p>Unde vel sequi beatae eaque perferendis. Minus rerum debitis quos voluptate iste. Sed architecto omnis nihil voluptatem. Repellat rerum necessitatibus nihil atque cumque fugit necessitatibus alias.</p><p>Nihil fugit harum iste ut tempore. Inventore quia aut tempora ut at tempore consequuntur. Animi libero aspernatur fugiat quisquam maxime rerum nisi.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(2,1,3,'Aliquid excepturi cupiditate nam tempora rerum qui quam.','voluptates-nam-sed-quod-cupiditate-hic-vel','Tenetur rerum maxime dolores quia at sint non beatae. Sapiente autem nihil voluptas consectetur. Rerum numquam numquam veniam autem saepe et.','<p>Facilis et eius similique. Accusamus laborum blanditiis consequatur. Laudantium dolorum rerum esse tempora. Aut eos voluptatibus quia et sed eaque.</p><p>Quis dignissimos velit ut doloribus molestiae et. Ut mollitia ut facilis. Dolor voluptate veritatis ut quia et. Dolore ex ut accusamus autem quia et.</p><p>Quia ut qui aut voluptatem vitae odio quod. Modi voluptatibus voluptatem vel impedit quaerat aut nobis qui. Ullam dolorum dolore iure laudantium iusto et qui. Nostrum repellendus et illum ipsa. Quia aut rem saepe alias.</p><p>Est ad aut ipsa illo sed nihil. Quibusdam consequatur sint deserunt quia atque rem. Odit neque non saepe sit et provident. Id vel consequatur labore sint.</p><p>Provident dolores quia dolorem illum labore. Est excepturi dignissimos dolor earum excepturi nemo pariatur. Placeat quia quam mollitia eius aperiam excepturi. Debitis qui nisi perspiciatis debitis sunt beatae.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(3,2,2,'Nisi quisquam omnis.','labore-delectus-eligendi-expedita-animi','Voluptatibus et rerum consequatur autem sapiente. Qui aut repudiandae deserunt. Perferendis totam commodi vitae beatae non ullam saepe.','<p>Nesciunt eligendi eligendi ut. Itaque saepe et dignissimos aliquid. Quis molestias autem porro nulla hic cum. Aut officia id aut occaecati voluptatem.</p><p>Perspiciatis nam aut nihil. Quia ut nihil inventore eaque. Harum soluta numquam sequi. Ea atque quibusdam blanditiis voluptas et modi nisi.</p><p>Aliquid eaque et sunt sunt tenetur et nisi. Quia modi et omnis ipsam quo. Provident unde corrupti possimus et nihil.</p><p>Eos assumenda eveniet quos. Voluptatibus voluptatibus aut expedita debitis assumenda ut quis. Recusandae et consequatur ut excepturi. Inventore quis quis a laboriosam vel.</p><p>Non rerum ut voluptas omnis et optio occaecati. Dolorum cum porro tenetur maiores.</p><p>Dolor praesentium possimus numquam et. Voluptatum asperiores blanditiis velit. Voluptate eaque omnis dolor commodi facere quasi.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(4,1,2,'Voluptate voluptas consequatur quae modi.','perferendis-voluptate-dolor-aliquam-et','Vero nemo voluptatibus et consectetur quis enim occaecati. Facere aut veniam in ut est repellendus. Ullam odio quia exercitationem quas natus. Sed temporibus quisquam dolores est quam.','<p>Omnis veritatis eos animi voluptas exercitationem suscipit quasi. Atque dicta fuga quos corrupti et ea ut. Sapiente provident et et aliquid quo. Quam unde perspiciatis et deserunt similique in soluta.</p><p>Nobis ut suscipit ipsa et quia molestiae. In vero velit iure harum. Molestias tempore similique natus nemo non enim. Sapiente blanditiis voluptas et numquam vel voluptates tempora sint. Rerum odit officiis voluptate molestiae.</p><p>Hic aut cupiditate qui dolore ut. Optio voluptate ut molestiae ullam. Est quo similique omnis eveniet. Nesciunt hic quaerat nulla quae.</p><p>Velit dolores dignissimos ad blanditiis aliquam accusamus incidunt. Doloribus voluptatem molestias atque. Amet dolores quia voluptate illo doloribus at quia.</p><p>Dicta nisi eius quo ut iure tempora. Officia repudiandae rerum porro et impedit voluptatem est. Quia ex quia qui eum dignissimos.</p><p>Aspernatur dolorem praesentium non. Et autem est ullam possimus dolorum soluta. Architecto magnam pariatur enim impedit modi reiciendis.</p><p>Voluptas possimus exercitationem occaecati rerum id asperiores sunt. Ea enim asperiores qui. Perspiciatis nemo et quas doloremque dolores.</p><p>Blanditiis et nobis fugiat. Est sed placeat incidunt suscipit eveniet. Ea non veritatis perspiciatis tempora. Et laborum reprehenderit ad reprehenderit officiis porro mollitia.</p><p>Minima ex minus qui deleniti. Voluptatum aut sed perferendis quis. Possimus et nihil fugit pariatur.</p><p>Aperiam in culpa temporibus ad. Illo rerum consequuntur earum veritatis. Aut rerum et distinctio sapiente. Veritatis impedit alias repellendus dolores. Ut corrupti qui adipisci ad est repudiandae.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(5,1,3,'Velit magnam laudantium architecto id.','pariatur-facilis-necessitatibus-sed','Maiores expedita aut sed dolore. Corporis consequuntur occaecati ut et. Rem aliquam necessitatibus id dolorem sed dolorem. Officia sit officiis vel quibusdam mollitia officiis.','<p>Et expedita accusantium ratione non nisi eos. Dolorum at deserunt esse. Praesentium similique commodi non harum et molestias voluptas.</p><p>Maiores ut qui eaque et. Reiciendis est consectetur nostrum. Quia quia vero omnis et rem optio.</p><p>Praesentium distinctio minima modi molestias pariatur aut. Ipsum libero autem nostrum in. Rerum nihil vitae mollitia sapiente non.</p><p>Eveniet vel repellat voluptates ab et velit temporibus. Qui nesciunt quis aut ut rerum. Et molestiae molestias necessitatibus nostrum facilis aliquam iure.</p><p>Porro nulla necessitatibus et nihil dicta qui placeat. Nostrum nihil esse commodi nemo tenetur. Eum fugit soluta quia quam. Incidunt voluptatibus assumenda quibusdam nihil sit ut.</p><p>Nihil alias necessitatibus molestiae sapiente. Alias consequatur ipsa suscipit aut impedit sit. Numquam doloremque eaque voluptatem.</p><p>Nesciunt quis corrupti quia perspiciatis perferendis eaque. Consequatur quae voluptates sequi ut et sit omnis. Accusantium necessitatibus saepe libero dolorum. Neque rerum vel pariatur et voluptas.</p><p>Deserunt omnis illum rerum ut perspiciatis natus perferendis velit. Aspernatur nobis ipsum sit aut repellat impedit ad. Ipsam saepe optio incidunt dolor est id.</p><p>Aut sed voluptatem quia esse dolorem nam. Eligendi impedit ea reiciendis quia asperiores. Maxime qui ut et neque nihil fuga.</p><p>Temporibus et sit est quam omnis pariatur. Quidem esse et magnam quia officiis. Exercitationem in iste et a provident libero enim. Eos vero voluptatibus qui repudiandae.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(6,1,3,'Illum aut.','voluptas-rerum-iusto-rerum-ab-accusamus-eum-laboriosam','Enim odio quam error dolores nobis. Quibusdam dolorum quaerat excepturi nam et magnam omnis. Rerum quasi dolores aspernatur qui illo asperiores officia.','<p>Veniam et eum praesentium cupiditate et hic aliquid. Animi velit natus quia odit labore voluptas ipsum. Sequi totam corrupti fuga qui.</p><p>Et placeat ratione officiis ducimus et delectus. Molestias itaque rerum minima nesciunt. Voluptates voluptatem porro aperiam non laboriosam. Id quaerat commodi quo facere delectus qui facere et.</p><p>Id a animi quis qui qui iste doloremque tempora. Est aut doloribus quas sunt numquam. Quis quasi ut omnis ea nihil. Quos animi non sit aut delectus.</p><p>Quo laboriosam excepturi nam sint. Reprehenderit debitis id in consectetur totam ut cupiditate. Quae ipsa odio consequuntur explicabo eius. Dolore sunt quam nisi.</p><p>Et est sed vitae voluptate. Consequatur voluptatem et eos eos sint. Quia asperiores harum et doloribus animi.</p><p>Non aspernatur deserunt at culpa dolorem. Consequatur ullam eius facilis dolorem consequuntur. Iusto quis rem qui saepe ratione aut non. Et ut laudantium ipsum facere.</p><p>Autem molestiae voluptatem quaerat ut et aut. Enim aut ut ut ea. Aliquid eaque dolorem quia eaque vel non et. Iste corrupti dicta consequatur eligendi.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(7,1,1,'Dolore qui asperiores officiis distinctio laborum quos.','illum-architecto-est-praesentium-libero','Ducimus consequatur deserunt consequatur optio. Quae dolorum saepe quam hic dolores eius eius. Eius rerum aliquid quidem.','<p>Est alias veniam vel sed consequatur. Officia non perspiciatis maxime magnam assumenda. Vitae eligendi eaque tempora doloribus ut.</p><p>Voluptatem occaecati error impedit deleniti eius velit a. Odio nesciunt natus voluptas sit sunt qui quisquam. Expedita et delectus dolor cupiditate. Porro magni totam ut voluptatem.</p><p>Sapiente temporibus qui nobis repellendus. Repellendus quis dolorum perspiciatis error ut. Sint fuga odit consectetur totam aut quo.</p><p>Rerum accusantium vel officiis est quod iste natus. Aliquid aut non qui labore aliquam. Consequuntur vel non maxime nobis commodi rem qui. Quaerat saepe quod labore.</p><p>Consequatur consequuntur ullam asperiores debitis at. Placeat facilis dolore incidunt et. Distinctio sed vero autem quaerat.</p><p>Est pariatur veniam eos voluptatem iste. Non eum minus sapiente id et. Fugit quam et eaque assumenda dolores. Voluptatibus eveniet nobis esse qui maxime.</p><p>Reiciendis culpa non nemo error officia aut nam vel. Voluptatem vel facere odit.</p><p>Perspiciatis nihil esse perspiciatis est illum. Rem rerum incidunt laudantium facilis animi vel. Quia et architecto non omnis. Sit rerum nesciunt sint corporis quis quos qui.</p><p>Molestiae nihil voluptatem esse molestias ea. Quia eos sit et. Fugiat necessitatibus dolorem quia recusandae doloremque ipsum et at.</p><p>Velit delectus nesciunt laborum quas. Sint sequi dolores esse consequuntur velit. Enim adipisci vel enim et exercitationem incidunt aut et. Ea perferendis voluptate quas est labore dolor asperiores et.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(8,2,1,'Voluptatem nulla dolore asperiores sequi.','unde-placeat-quo-doloribus-quae','Quae eaque minus aut magni aperiam. Tenetur nesciunt a repellat omnis perferendis earum quia. Odio est iusto quaerat iste expedita aliquam dolorum.','<p>Quos recusandae nesciunt aut. Nam sit ipsam dignissimos qui qui neque. Quae ea et beatae alias.</p><p>Sunt repudiandae eius esse non cupiditate provident. Suscipit odit voluptatibus quod accusamus omnis. Odit autem saepe consequatur perspiciatis minus et quos. Consequatur dolorum ipsam deleniti sed minima labore.</p><p>Veniam eaque asperiores perspiciatis at corrupti dolor sint doloremque. Corrupti cupiditate non facere. Neque error harum dolores qui. Amet error eaque dicta placeat error incidunt maiores.</p><p>Aut quis sunt omnis neque deserunt dolor illo provident. Quia repudiandae temporibus expedita sit dolores eligendi quis. Quos adipisci impedit qui.</p><p>Animi ab molestias non doloremque ut animi dolorum. Et repudiandae eligendi qui voluptas voluptatum placeat est. Incidunt consectetur omnis debitis perspiciatis ut nemo fugiat. Asperiores iure sit at.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(9,2,3,'Reprehenderit velit et deleniti minus neque veniam ad.','est-non-sed-dolorem-voluptas-ut-ipsa-itaque','Quidem sunt error placeat libero accusantium et molestias non. Et rem deleniti repudiandae velit repellendus laborum voluptatum. Illo doloribus nemo eius tempore.','<p>Sed aut fugiat temporibus a ea nisi. Qui et ut ab autem rerum numquam et. Soluta et eum est ea.</p><p>Fuga labore molestiae eum esse. Pariatur quidem omnis ipsum sint consequatur. Nihil repellat soluta quo temporibus dolor. Quam dolores saepe qui aut. Aliquam consectetur natus libero deleniti autem amet architecto.</p><p>Corrupti nihil aliquam sed perferendis dolor ad. Voluptate harum aliquid repellendus culpa. Et ipsam voluptate quia enim rem laborum.</p><p>Vero et facere ipsam molestias. Commodi neque dolore expedita possimus necessitatibus voluptates. Dolorem qui et quis nihil. Vel eum voluptatibus sit deserunt.</p><p>Quo quos laboriosam ad libero. Vitae quidem facere rerum. At quas repudiandae aut esse nihil dolor tenetur dolorum. Ipsum ab sapiente consequatur et.</p><p>Aut ipsa amet natus pariatur aut. Atque ut magnam ipsa consequatur maxime delectus. Adipisci nihil et assumenda id corrupti rerum.</p><p>Maxime quia aut aut quo et sunt temporibus. Earum iste excepturi architecto at totam necessitatibus enim. Distinctio tempora magni consequatur dolorem nostrum. Autem sit ipsum qui accusantium quia accusamus.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(10,1,1,'Eveniet et quia quaerat sit ut odio hic rerum odio a ea.','aut-explicabo-corrupti-quis-error-explicabo-consequatur','Enim neque natus enim aut laboriosam aut. Labore sed excepturi possimus quam. Magni at maxime qui veritatis quas alias est. Eligendi quo ex quas quibusdam officiis.','<p>Quis ex ab nisi quia. Dolorum dolorem ut sint hic labore excepturi rem. Enim eos nisi voluptatem dolores officia reprehenderit rerum. Corrupti officiis eius ea officiis cupiditate eos eligendi.</p><p>Nihil vel sunt nulla dolorum. Mollitia harum quasi sint qui quia blanditiis error expedita. Id sit est voluptas itaque. Voluptas aut autem sed nihil.</p><p>Ullam officia voluptatum error accusamus velit omnis nostrum quis. Fugit maiores sed et porro minus placeat. Aliquid veniam et necessitatibus nam. Reprehenderit omnis est sed.</p><p>Sit debitis blanditiis praesentium et ea labore minima. Porro voluptatum nihil alias laudantium iste omnis. Praesentium enim rem eligendi provident.</p><p>Corporis repudiandae nisi repudiandae est ut fuga quaerat ut. Consectetur amet voluptatum sint nesciunt ut omnis. Magnam ducimus atque neque numquam debitis.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(11,1,1,'Quam numquam qui voluptas nam qui totam iure itaque.','molestiae-facilis-rerum-deleniti-necessitatibus-quia-temporibus-doloremque','Vitae odit pariatur rerum rerum voluptas assumenda. Rerum magnam odit dignissimos accusantium. Rerum ad ut sit commodi est quia.','<p>Distinctio est quia qui qui id vitae. Voluptatem quaerat tempora est optio perspiciatis. Doloremque sed fugit mollitia molestiae.</p><p>Laborum provident tempora quaerat pariatur et. Impedit ipsa dolorem est earum fugit non ad. Fugiat maxime aliquid omnis. Doloribus quibusdam quis quo perferendis. Dolor sit laborum autem numquam.</p><p>Numquam a numquam labore enim exercitationem corporis. Consequuntur temporibus possimus quia sed ut aliquid quidem. Delectus est ea minima maiores est voluptates id.</p><p>Voluptatem suscipit quo fugiat quod ut distinctio. Voluptas omnis maxime odit corrupti et id. Animi minus praesentium provident id dolore.</p><p>Et eligendi amet expedita perferendis qui. Ex error sapiente explicabo ipsum sed non iusto. Fugit pariatur quod magni molestiae alias. Aut quo sequi qui et rerum aut.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(12,1,1,'Aut consequatur accusantium tempore.','rerum-et-atque-placeat-quia-et-qui-alias-et','Et eum sint qui tempore eum assumenda autem. Sunt quia aut mollitia aliquam saepe fugiat. Ipsum quia ipsa exercitationem provident.','<p>Sapiente est distinctio id ea placeat ut quam ut. Odit accusantium aut aut dolor. Voluptatem aliquid ea expedita necessitatibus.</p><p>Laboriosam maxime est quas qui doloremque sunt. Sed dolores qui non quo doloremque rerum.</p><p>Architecto autem ab nam rerum veniam qui. Ipsum velit alias et sit consequatur quis. A maiores similique expedita libero et et. A quaerat earum quia incidunt.</p><p>Deserunt vel quam non provident repudiandae laudantium et esse. Quae culpa et nesciunt accusamus molestias aut. Laudantium est nesciunt omnis quia. Sunt a sed quaerat perspiciatis temporibus provident qui ipsum.</p><p>Magnam perspiciatis accusantium voluptas rerum. Commodi labore rerum officiis ut.</p><p>Rerum ratione vero voluptas fugiat tempora deleniti voluptas. Ut blanditiis non unde illo natus quis. Sapiente ut facere nisi illum repellat fuga blanditiis et. Aut et cupiditate sunt natus nulla autem aspernatur accusantium.</p><p>Ipsa officia vitae nesciunt ab. Officiis et esse consequatur voluptas aut. Ut velit omnis voluptate aut consequatur. Sit corporis fugiat a perspiciatis rem quis soluta voluptatem. Iure saepe dolor et.</p><p>Expedita consequatur non asperiores blanditiis et. Omnis mollitia assumenda accusamus molestiae at ipsa rem velit. Qui nihil pariatur excepturi iusto rerum aut voluptas.</p><p>Expedita totam quo fugiat consequatur consequatur. Et quidem earum recusandae facere suscipit. Possimus est quo vel quam fugit dolores sed.</p><p>Voluptas quam quis eum. Dolores earum aperiam quis. Vel ut laboriosam quasi non.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(13,2,2,'Fugiat delectus iure expedita illum non deleniti itaque.','earum-saepe-ad-ratione-modi','Ut odit necessitatibus aut ipsa ullam et nobis. Expedita explicabo inventore illo nisi odio. Dolorem nemo repudiandae quia.','<p>Et voluptatibus amet quia et architecto. Harum nobis commodi architecto dolorum et qui dolorum. Iusto repellendus dicta et.</p><p>Deleniti perspiciatis sunt et ipsum odio omnis nulla. Iste eum mollitia maxime eius praesentium doloremque. In quos dolorem iure vero quia repudiandae.</p><p>Dolorem a qui aut eos. In vel officiis tempora aut voluptatem ut. Rem dolores expedita nihil illum vel laboriosam porro.</p><p>Dicta dolores hic veniam vel. Ut exercitationem inventore omnis reiciendis mollitia. Quia et id necessitatibus illo eos rerum quaerat porro.</p><p>Reprehenderit sunt atque quisquam nemo pariatur sunt et sint. Qui atque id illo quis. Consequuntur quae sint dolores similique eos quia ab.</p><p>Qui recusandae est aut unde. Magnam ex perspiciatis eum sint. Inventore a non iusto consequatur.</p><p>Sapiente voluptatem et inventore nostrum voluptas veritatis natus. Soluta ea incidunt vero maxime. Quam quae quidem consectetur aliquam dolorem. Nisi eius porro eius ut voluptas inventore aut.</p><p>Aut totam commodi aliquid ut maiores voluptatum praesentium. Consequuntur et aliquid dolor architecto odit impedit nostrum. Molestiae porro dolor rerum reprehenderit sunt quod.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(14,1,1,'Recusandae illum assumenda.','qui-sit-qui-sit-officiis-similique-id','Nostrum quo aut autem quam. Ex quia autem eum minima est iusto excepturi. Et aut doloribus rerum aut.','<p>Atque omnis ipsa odio iste. Aut corrupti provident sit deserunt nemo id aut. Alias deserunt consequatur voluptatibus placeat. Illum et dolore cumque sunt aut.</p><p>Sint sit fuga et quia. Cumque corrupti rem velit porro. Rerum saepe dolores accusamus porro quidem qui enim. Inventore sequi provident est et voluptates.</p><p>Hic in tempore vel assumenda. Repudiandae et qui atque quo ut maiores. Dolorum accusantium impedit hic harum voluptatem. Nobis est ea vitae praesentium libero.</p><p>Reprehenderit qui et ipsa sunt culpa est sed est. Voluptate nobis consequatur consequuntur minus est molestias. Natus voluptas doloribus natus laborum ea provident minus. Nobis dignissimos aut ut aut.</p><p>Velit incidunt voluptatem dolor. Mollitia est reprehenderit quasi enim architecto. Sit est soluta ipsam excepturi.</p><p>Vitae quia saepe cum maxime aut rem voluptatem. Eum quaerat assumenda dolor sed aliquid nobis et. Vero et ipsa consequatur debitis similique.</p><p>Consectetur et labore vitae accusamus quod beatae eius. Quas architecto eius nemo a magni omnis. Laborum aperiam corrupti cupiditate enim laboriosam eveniet eum dolorem. Voluptas consequatur dolore sunt ipsum.</p><p>Delectus consequatur magni fuga. Vel temporibus minima maiores quaerat delectus hic amet. Inventore et nostrum sit. Repellat odit ipsa quidem vel expedita.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(15,2,2,'Est vitae corrupti in.','at-earum-quaerat-officiis-unde-rerum-et-non','Molestias ut laboriosam aut error. Incidunt veritatis molestiae dolores sint et maiores.','<p>Et quam et quasi vel dolore odio. Labore voluptas illum eligendi rem cum praesentium. Qui accusamus mollitia voluptas sit. Repellendus sed libero maxime.</p><p>Nihil tempora eos debitis sed ratione. Sit eius non quae magni pariatur voluptatem occaecati. Excepturi qui minima qui omnis rerum ut. Excepturi libero dolorem labore dolores reiciendis.</p><p>Totam itaque nam incidunt ut quis perspiciatis. Rerum animi sed voluptas molestiae molestiae exercitationem. Sunt doloremque error iste.</p><p>Vel expedita tenetur illo aut enim ab. Ut distinctio voluptatibus ut mollitia itaque. Voluptatem aut eum unde vero minima iure consectetur.</p><p>Sint sint dolores repudiandae a quia quisquam. Assumenda eos facere vel laborum non.</p><p>Molestiae facere in facilis aliquam amet tempora omnis. Id tempora rerum asperiores qui accusamus. Voluptas est illo eaque quod rem illum. Voluptatem quae vel unde consequatur veritatis vel in.</p><p>Quidem eum soluta veniam aut soluta ut sequi. Officiis ducimus ut delectus occaecati. Sit et praesentium deserunt est.</p><p>Laboriosam doloremque debitis eos iusto modi iure eos ut. Nemo et est ducimus ducimus est. Unde sequi porro similique ut nesciunt.</p><p>Excepturi est adipisci aut. Et et ut reprehenderit magni assumenda neque officia. Aspernatur debitis possimus voluptatibus animi quas inventore iusto. Qui aut qui excepturi et expedita.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(16,1,3,'Excepturi minima cum pariatur laborum quia velit.','dolore-repellendus-ullam-quod','Repudiandae non possimus atque. Necessitatibus perferendis alias tempore quaerat ex. Quae et aperiam enim quidem voluptas sed.','<p>Doloribus aspernatur reprehenderit vitae. Culpa cum nihil voluptatem adipisci magni aut sapiente. Eaque quis commodi aut necessitatibus omnis.</p><p>Perferendis dignissimos voluptatem eos harum iure non omnis vel. Magni rem aliquid unde eligendi nihil. Atque dolore aut consectetur assumenda.</p><p>In totam laboriosam eaque enim. Distinctio et inventore velit aperiam quo nam. Quo omnis vel quia autem sequi qui vero.</p><p>Deleniti est et aut quidem molestias velit. Aut rerum quis et recusandae facere voluptatem qui. Sunt et ut sapiente et cum. Qui animi consequatur numquam amet. Alias nisi consequatur aut perferendis eos dolore vero quia.</p><p>Et officia tempore facilis. Doloremque facilis aut nemo repellendus numquam voluptatem ea. Laborum dicta sunt et eos dolorum. Atque reiciendis incidunt atque nesciunt quae.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(17,1,3,'Ipsa perspiciatis at odit aut qui.','sit-voluptatem-autem-maxime-accusamus','Facilis consectetur perferendis consequatur. Non et vel laborum aperiam sunt.','<p>Labore voluptatem qui eligendi ut similique. Sit assumenda possimus eaque ab nulla. Deserunt sit praesentium reprehenderit necessitatibus. Optio dolorem expedita hic ea.</p><p>Saepe qui numquam qui et unde. Dolores modi tenetur cupiditate nisi fugiat recusandae. Ea nesciunt eveniet aliquam hic. Quod id quia rerum exercitationem quia.</p><p>Quod sit mollitia earum ut. Ipsam quod esse incidunt quibusdam voluptatem. Assumenda fuga nihil cupiditate nemo. Quibusdam sequi cupiditate debitis optio iure placeat nesciunt expedita.</p><p>Corrupti sapiente accusantium voluptatem. Qui et dolorem vitae voluptatum.</p><p>Asperiores iusto reiciendis reprehenderit magni. Et aliquid iste tempora facere voluptatem. Et repellat cumque illum dolorem. Sunt asperiores occaecati dolor.</p><p>Ipsam qui quae sed. Eos doloribus accusamus aliquid minima rerum modi aut. Iusto commodi unde harum ratione dignissimos laborum nihil.</p><p>Neque eligendi beatae autem eveniet iusto. Mollitia mollitia ut quod molestiae veniam. Repellendus est quas cupiditate similique minus sit non.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(18,2,2,'Et vero iste id.','quos-autem-ea-autem-hic-eum','Architecto dolor rem eum qui enim temporibus. Eos beatae eligendi distinctio sit. Et dolores velit modi delectus odio ea ab. Porro assumenda assumenda tempore soluta laborum eos ut illo.','<p>Et est excepturi saepe et placeat nulla. Asperiores qui repellendus magnam sit. Modi eum placeat odio mollitia.</p><p>Ut sit qui et voluptatibus qui impedit. At laudantium enim fugiat. Dolores ratione dolores neque harum occaecati consequatur est. Ut voluptas enim iusto distinctio aut.</p><p>Totam cupiditate nostrum assumenda est. Consequatur aperiam sit et nemo recusandae ipsum voluptatem. Tempora aut odio cumque et sunt velit. Tempora et qui doloribus quasi exercitationem voluptatibus. Omnis consequatur at aut.</p><p>Ipsum non iste molestiae ut laboriosam facilis. Molestiae optio sed omnis blanditiis est. Quidem aut odio et. Ullam iure eligendi consectetur adipisci voluptatem non unde.</p><p>Facere necessitatibus ut sit voluptatem a quia. Eos dolor minima eaque qui. Vel at totam ipsam autem.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(19,1,1,'Eos eveniet qui exercitationem corporis ullam molestiae ratione fugit et quasi.','ex-porro-quia-illum-qui-perspiciatis-quam-omnis','Quisquam omnis animi sunt ut tempora illo tenetur. Suscipit omnis alias et facilis commodi.','<p>Eum illo labore ipsum a molestias aliquam nostrum. Necessitatibus perferendis dolorum et dicta veniam quasi accusantium. Laborum quam minus consequatur aut nostrum dolorem iste. Soluta vitae corrupti dolorem autem ipsa enim.</p><p>Qui quis dolore sit et. Eos consequatur rerum vel sit voluptatibus. Quibusdam et veniam itaque aut. Veritatis illo est ullam iste quos.</p><p>Non quae magni pariatur perferendis quae. Quidem reiciendis deserunt qui error odio est alias. Amet et minus est veniam.</p><p>Consectetur non repudiandae ad aut modi. Deserunt sed impedit est voluptatibus aliquam soluta optio facere. Aspernatur quaerat et ratione est.</p><p>Quae aspernatur dolorum adipisci porro ullam minus dolorem. Similique quisquam voluptatem sit et facere at recusandae hic. Dolores iste aut recusandae numquam blanditiis voluptatem voluptatem. Facilis officiis placeat esse pariatur sed odio.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27'),(20,1,3,'Illum fuga ea.','labore-nihil-dolores-distinctio','Id cupiditate voluptatem et. Eligendi et sit est voluptatem iste repellendus culpa possimus.','<p>Ipsam voluptatem et aperiam ut quae quis dolor doloremque. Beatae sit sapiente dolorem ut ducimus corrupti. Quam sunt consequatur recusandae quis accusantium doloremque provident placeat. Incidunt impedit rerum fuga et.</p><p>Ab hic ipsa natus cumque perspiciatis accusamus ut voluptatibus. Esse ea ea ipsam. Animi nobis soluta velit suscipit ut recusandae adipisci corrupti. Molestiae voluptatum veritatis consequatur veritatis a sunt dignissimos ut.</p><p>Voluptates sequi vel tempora dolor. Eveniet error maiores aut aut quo vero. Tenetur voluptatem optio et eaque dicta cum aperiam. Iusto quasi ea eum pariatur rerum mollitia sint.</p><p>Minus aut veritatis provident quaerat autem autem aliquid amet. Tempore sint quam delectus nam. Quo repellat quia delectus et rerum.</p><p>Eum quis excepturi fugit aspernatur et enim ut dolore. Libero aspernatur maxime qui fugit nisi sed officia. Est ut a dignissimos. Soluta et quia velit ipsa doloribus inventore autem.</p><p>Dolor eaque voluptas quibusdam doloremque. Architecto numquam expedita doloremque veritatis quasi dolores omnis. Quia et sunt tempora ratione tempora. Perspiciatis vitae ut illo voluptatem qui voluptatem voluptas.</p><p>Corrupti iure dolore inventore quas eos. Fugit laborum suscipit sit. Est et ea iusto nam harum architecto consectetur.</p><p>Sed quae qui porro exercitationem autem ex et. Qui et minus veritatis provident illo. Molestias qui sed voluptas sunt fuga deleniti et.</p>',NULL,'2022-09-21 21:10:27','2022-09-21 21:10:27');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kacung Tampubolon','kuswandari.ophelia','mulyani.humaira@example.org','2022-09-21 21:10:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','E5jx1Vj4AIhCiTSrQpFwrbe4hH0dgMpnEZ17QVHBN2sWePpqbz0mOSa4OXo5','2022-09-21 21:10:27','2022-09-21 21:10:27'),(2,'Viman Cakrabirawa Halim M.M.','wahyuni.capa','rusada@example.net','2022-09-21 21:10:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9mK8YH5Pmj','2022-09-21 21:10:27','2022-09-21 21:10:27'),(3,'Niyaga Siregar S.Farm','daniswara57','novi28@example.com','2022-09-21 21:10:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MkfkcMgmdq','2022-09-21 21:10:27','2022-09-21 21:10:27');
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

-- Dump completed on 2022-10-06 21:12:55
