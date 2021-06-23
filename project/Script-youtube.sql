-- Итоговый проект на примере сайта YouTube

-- Предпологаемые таблицы для работы видеохостинга.

-- 1. users
-- 2. profiles
-- 3. channels
-- 4. videos
-- 5.1 video_types
-- 6. likes
-- 7. like_type
-- 8. comment_video
-- 9. subscriptions
-- 10. history_whatch
-- 11. playlists
-- 12. views

-- !скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами); +
-- ! создать ERDiagram для БД; +
-- ! скрипты наполнения БД данными; +
-- ! Создать индексы 
-- ! скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы) "самый популярный канал/пользователь, 10 видео с самым большим количеством просмотров/лайков/комментариев" +
-- ! представления (минимум 2); +
-- ! хранимые процедуры / триггеры; (триггер для невозможности поставить лайк одним пользователем несклько раз для одно и того же видео)
-- Не смог реализовать задумманную процедуру в части невозможности пользователя поставить лайк одному и томуже видео или комментарию( т.е нужно найти строку именно этого пользователя и проверить ее на соответствие
-- и таких строк может быть несколь) сначала думал сделать с помощью функции и цикла но похоже что реализация должна быть с помощью курсора. Подскажите код или направьте в правльном направлении!)

-- Создать триггер для невозможности одного пользователя поставить несколько лайков одному видео
-- Исправить данные для таблицы коммлентариев
-- 


CREATE DATABASE youtube;
USE youtube;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
email VARCHAR(100) NOT NULL,
phone VARCHAR(100) NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
user_id INT UNSIGNED NOT NULL PRIMARY KEY,
gender CHAR(1) NOT NULL,
birthday DATE,
city VARCHAR(100) NOT NULL,
country VARCHAR(100) NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица каналов видео
DROP TABLE IF EXISTS channels;
CREATE TABLE channels (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
name VARCHAR(255) NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица видео-роликов канала(ов).Видео могут загружать только каналы
DROP TABLE IF EXISTS videos;
CREATE TABLE videos (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
channel_id INT NOT NULL,
name VARCHAR(255) NOT NULL,
hashtags VARCHAR(255) COMMENT 'Хэштеги для продвижения видео',
video_type_id INT NOT NULL COMMENT 'тип видео VR, 360',
size INT NOT NULL,
metadate JSON,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица типов видео(360, VR, H263)
DROP TABLE IF EXISTS video_types;
CREATE TABLE video_types (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица лайков для видео-роликов
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
like_type_id INT NOT NULL COMMENT 'лайк или дизлайк',
target_id INT UNSIGNED NOT NULL COMMENT 'какому видео поставили лайк',
target_types ENUM('comment_video', 'videos') NOT NULL
)COMMENT 'чему поставили лайк видео или комментарию';

/*-- Таблица типов лайков "ЛАЙК" "ДИЗЛАЙК"
DROP TABLE IF EXISTS like_type;
CREATE TABLE like_type (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL COMMENT 'Лайк или Дизлайк',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);*/

-- Таблица комментариев к видео
DROP TABLE IF EXISTS comment_video;
CREATE TABLE comment_video (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
video_id INT NOT NULL COMMENT 'какое видео прокомментировано',
user_id INT UNSIGNED NOT NULL COMMENT 'кто прокоментрировал',
body TEXT NOT NULL COMMENT 'текст коммента',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'комментарии к видео';

-- Таблица подписчиков канала пользователя
DROP TABLE IF EXISTS subscriptions;
CREATE TABLE subscriptions (
channel_id INT NOT NULL COMMENT 'канал',
user_id INT NOT NULL COMMENT 'подписчик',
PRIMARY KEY (user_id, channel_id),
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) COMMENT 'подписчики';

-- Таблица истории просмотров пользователя. Хотел сделать как плейлист истории. Но его можно формировать в процессе работы базы данных. Надобность отпала.
/*DROP TABLE IF EXISTS history_whatch;
CREATE TABLE history_whatch (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
video_id INT NOT NULL COMMENT 'по id video определим популярный канал',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);*/

-- Таблица плейлистов видео пользователя
DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
name VARCHAR(255) NOT NULL,
video_id INT NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица просмотров видео
DROP TABLE IF EXISTS views;
CREATE TABLE views (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL COMMENT 'кто посмотрел',
video_id INT NOT NULL COMMENT 'просмотренное видео',
dur_view TIME NOT NULL COMMENT 'продолжительность просмотра видео',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SHOW TABLES;

SELECT * FROM users;
SELECT * FROM profiles;
SELECT * FROM channels;
SELECT * FROM videos;
SELECT * FROM video_types;
SELECT * FROM likes;
SELECT * FROM comment_video;
SELECT * FROM subscriptions;
SELECT * FROM playlists;
SELECT * FROM views;

-- Заполняем таблицу комеентариев к видео
INSERT INTO `comment_video` VALUES 
(1,133,73,'Culpa et quasi autem voluptate. Eum mollitia animi sed eos rerum ad provident. Molestias debitis voluptatem nisi consequatur. Distinctio nobis dolores dolore deleniti.','2013-05-25 21:44:38','2016-08-15 03:39:29'),(2,3,5,'Saepe ut et iusto fuga. Et inventore corporis praesentium minus corporis. Excepturi blanditiis voluptatibus vel. Soluta nihil molestiae qui sunt maxime.','2012-07-11 11:11:26','2015-09-03 13:42:09'),(3,24,66,'Est quibusdam neque est sequi voluptatem. Omnis hic voluptatem eos recusandae quia. Voluptas qui quia minus placeat aut dicta asperiores.','2020-03-23 14:01:59','2018-10-25 04:15:32'),(4,172,94,'Distinctio autem et rerum. Saepe aut ad culpa nihil mollitia iure voluptatem. Hic quis omnis aut earum asperiores.','2017-11-20 16:51:36','2017-03-18 21:39:44'),(5,74,66,'Dolor quaerat temporibus quae ut sint fugit et. Eum enim atque iure. Est quis eos voluptatem consequatur ea amet.','2013-09-02 12:36:16','2018-12-29 15:27:26'),(6,162,22,'Aut est magnam explicabo omnis voluptatem. Voluptatem id sit mollitia cupiditate saepe fugit eos. Sit repudiandae consequatur eligendi quam. Non accusamus ex a libero.','2019-02-19 16:18:07','2014-11-09 02:59:22'),(7,63,30,'Reiciendis quo harum asperiores fugiat autem totam. Ab aperiam est harum cumque dolor et. Dolores sit possimus sint tempora.','2018-03-30 08:09:31','2019-02-02 03:16:48'),(8,15,32,'Quae porro eum voluptas odio voluptas consequatur. Id quae voluptatibus a sed voluptatum voluptatem. Vero omnis labore a.','2020-12-20 14:06:58','2013-05-11 15:28:41'),(9,181,79,'Enim vel totam dolores et voluptas rerum quibusdam ipsa. Distinctio architecto rerum voluptatem et. Rem quia distinctio voluptas quasi delectus dolores. Rerum sapiente unde minus.','2015-05-19 17:01:18','2013-01-01 08:38:23'),(10,102,43,'Explicabo consectetur nam quas qui magni laboriosam. Nihil fuga dolorum aut odio magnam explicabo tempora. Debitis quibusdam consequatur voluptatem odio quidem dolorem.','2017-07-17 14:17:26','2019-03-24 16:51:24'),(11,109,9,'Voluptatibus consequatur ea aut praesentium et id sit. Sit soluta dignissimos vero est eius. Ad quaerat porro sequi veritatis corrupti vel deleniti distinctio. Omnis illum laborum numquam necessitatibus ex tempore in.','2015-06-25 11:41:21','2013-07-04 11:10:40'),(12,61,20,'Tempore quam tenetur fuga repellendus laborum ab. Natus amet quasi eius voluptatem. Sed cum impedit est ut consequatur.','2017-03-28 01:24:08','2013-11-11 08:15:21'),(13,184,10,'Ut maiores nostrum iure quis labore molestias. Nihil velit doloribus ea accusantium ut rerum harum. Consequuntur est error fugit corrupti nihil.','2015-11-06 05:06:26','2015-12-31 15:47:00'),(14,62,59,'Aut dolor quibusdam natus. Labore quia sint maxime dolorem exercitationem. Quaerat velit temporibus adipisci et numquam.','2012-08-11 20:36:49','2015-01-14 08:06:47'),(15,18,35,'Libero iure consequatur magnam illo officiis aut. Quia suscipit officiis cumque ad est aperiam exercitationem.','2013-01-06 19:43:45','2015-02-07 20:14:39'),(16,120,89,'Voluptatibus aliquid consequatur ut occaecati doloribus ipsum et et. Sit repellendus quo sit illo est magnam. Iure qui doloribus cumque quia est occaecati mollitia placeat.','2019-05-08 10:04:52','2017-12-15 03:56:04'),(17,23,97,'Quis et accusamus et iusto cum quaerat. Quisquam libero voluptas non est. Consectetur perspiciatis exercitationem qui in harum impedit.','2019-11-27 15:38:54','2018-02-22 13:38:12'),(18,163,21,'Assumenda iure consequatur iste dignissimos sapiente iste commodi. Quia nemo sapiente enim cumque voluptatem recusandae eaque saepe. Consequatur ut voluptas rerum. Aut corporis deserunt excepturi quis. Qui fuga qui tenetur.','2012-09-21 04:07:40','2018-03-16 06:09:49'),(19,166,86,'Nisi excepturi fugit corrupti distinctio quibusdam. Autem repudiandae at molestias. Vel odio explicabo consequatur sunt.','2019-04-06 08:24:53','2016-05-08 16:37:30'),(20,60,60,'Perferendis delectus sequi iusto adipisci quia. Maiores porro sit rem sunt blanditiis voluptates quo. Placeat et fuga ut ipsam. Eos aliquam blanditiis qui soluta.','2020-03-11 07:34:02','2013-11-11 15:33:18'),(21,177,86,'Aut nisi nisi quam sed. Ut quae commodi optio natus eos voluptatem. Voluptatem nihil ex et voluptas asperiores nemo. Ex doloremque eos vitae explicabo.','2013-08-13 07:08:26','2012-08-13 05:56:23'),(22,173,65,'Nesciunt odit voluptatem veniam nesciunt est fugiat sint. Et numquam voluptatem quidem fugiat esse cumque consectetur quaerat. Aut vitae libero cum nobis molestiae.','2016-10-23 00:06:46','2013-02-28 11:39:58'),(23,103,16,'Id sed unde odit aliquam velit dolor autem. Ratione vero labore enim esse. Itaque quod earum voluptatem et eos. Ea eum delectus aut.','2018-02-11 13:39:50','2020-12-29 19:38:58'),(24,187,26,'Ad voluptas ullam quibusdam itaque assumenda voluptatibus. Quisquam modi qui eum illo incidunt cumque aut. Quasi recusandae eum vel in sed.','2014-07-09 10:27:01','2016-02-28 15:16:46'),(25,22,26,'At nihil voluptas ut blanditiis exercitationem aut. Iste voluptates molestiae deserunt eum hic quis. In quae quisquam cupiditate et.','2017-11-08 06:35:54','2013-10-25 16:40:25'),(26,178,14,'Quia voluptatem libero tempora et quia saepe ut. Ipsam in est deleniti culpa quia. Aut facere natus cum hic nisi reprehenderit explicabo aut. Sunt repellendus sed rem ipsam omnis accusamus quibusdam veniam.','2020-09-20 12:56:49','2021-02-11 04:37:32'),(27,83,100,'Nobis rem a voluptas tempora et ullam quia. Pariatur molestiae fugit doloremque animi qui.','2013-02-23 10:43:33','2019-02-27 12:23:59'),(28,13,56,'Ratione eos voluptas ad quas quo fuga. Assumenda officiis ut natus et. Sed ut et sed dolores quo. Et qui esse distinctio qui unde voluptates doloribus.','2011-08-25 10:58:49','2017-09-20 23:08:48'),(29,138,27,'Quos eius voluptate cupiditate qui laborum omnis et. Est sapiente culpa et numquam et pariatur illo. Minima in non quia ut reiciendis.','2011-06-15 21:00:45','2017-02-07 17:18:22'),(30,154,70,'Rerum quos corporis facilis non eos. Nemo eum vero provident laboriosam omnis sunt rerum. Et aliquam sapiente sint et ut. Fugit ullam in repellat.','2012-01-13 15:58:38','2012-07-31 05:41:19'),(31,104,96,'Soluta ducimus explicabo asperiores commodi dolores eos dicta. Qui sit repudiandae asperiores placeat odit quasi voluptatem. Ipsam iusto est perspiciatis eum itaque suscipit. Aut modi mollitia aliquid.','2019-04-27 21:23:49','2017-02-25 07:59:33'),(32,61,48,'Nihil quia sed excepturi nihil et. Quibusdam non cum a nulla quam neque. Qui excepturi accusamus libero qui sed hic laboriosam eius.','2016-10-24 19:39:02','2016-06-15 09:49:34'),(33,152,17,'Odio quasi natus incidunt quae laboriosam. Nisi optio molestiae ipsam vel. Doloremque iure voluptas ut tempora qui perspiciatis et.','2020-12-04 13:48:19','2014-06-06 20:55:07'),(34,194,21,'Cum placeat non laborum vel. Corrupti voluptate cumque adipisci libero quis cumque modi et. Nihil nihil quia magni corporis. Laborum maxime non amet exercitationem.','2014-06-28 04:25:21','2015-04-08 07:41:34'),(35,16,36,'Officiis impedit error cum qui reiciendis repellendus voluptas. Eveniet natus nesciunt molestiae fugit non perferendis qui atque. Neque itaque explicabo veniam sapiente excepturi rerum. Et sit consequatur ab omnis. Fugiat voluptatem libero id ex.','2011-11-04 02:20:09','2012-08-16 04:00:04'),(36,23,83,'Aliquid commodi vitae unde ut. Aut et consequatur harum vel soluta quo qui. Non ratione similique iste illo omnis eos cum. Quo reprehenderit dolorem et blanditiis saepe consequatur.','2020-05-10 00:46:13','2019-11-16 11:50:46'),(37,168,14,'Sed vero nihil quas. Natus dolor eaque dolores et. Natus quam cupiditate at. Hic praesentium alias veritatis ullam alias quas possimus.','2018-06-10 06:44:39','2014-10-16 08:57:26'),(38,16,29,'Delectus omnis saepe quae. Sit iure quam maiores rerum eius omnis. Voluptatem consequuntur quia est consequuntur qui. Et dolore et quod qui odio eum illum omnis.','2012-09-09 15:01:53','2020-04-29 08:56:12'),(39,47,94,'Molestias et modi et ea. Hic at autem saepe in.','2014-01-11 17:33:40','2016-08-26 20:36:05'),(40,153,93,'Sit quia earum soluta sunt sint repellat deserunt. Iure asperiores quia rerum debitis. Exercitationem rerum asperiores quis quis non laborum deleniti. Optio ea dolorem quod eligendi similique illo ex.','2016-03-08 11:47:16','2017-11-02 16:20:03'),(41,92,88,'Sunt non iusto velit impedit et sint. Asperiores dicta exercitationem officia. Quae mollitia aperiam labore. Veniam voluptatem dolorem corporis. Excepturi inventore reprehenderit modi maiores dolorum.','2017-05-16 23:56:23','2018-03-24 03:13:18'),(42,39,91,'Explicabo rerum aut accusantium aut dolorem. Odio possimus est voluptates aut non non. Voluptates mollitia ut hic molestias corrupti accusamus laborum. Consequatur iure non ullam cum molestias velit.','2019-03-17 10:43:32','2017-03-28 06:45:51'),(43,22,16,'Blanditiis ipsum cumque sint assumenda ex. Vel ut quasi sunt molestias consequatur voluptas perferendis deserunt. Rerum ad unde quia quibusdam voluptatem nihil fuga. Quaerat debitis laudantium ex debitis sunt rerum. Sequi facilis incidunt ipsum ratione omnis ut esse.','2016-03-23 18:55:24','2015-07-17 03:01:49'),(44,198,27,'Modi ut aut nobis dolores cumque sint autem. Excepturi dolorum quo harum voluptatum quas fugiat provident. Perspiciatis qui rerum incidunt at eligendi id.','2016-01-13 07:00:17','2016-09-08 16:07:33'),(45,132,50,'Aut et ratione deleniti eum est quod. Aut illum et aperiam rerum et aliquam nostrum. Aut sit repellendus magni ea ut quisquam. Qui rerum vel facilis et. A id facere magni ea laborum quia.','2020-04-14 10:28:39','2014-08-26 02:13:02'),(46,66,68,'Ipsam est dolorem nulla cupiditate et eius. Accusamus qui fugit tempore sequi sit iure cum. Quia repellendus et hic necessitatibus voluptatum eius minus.','2019-02-08 03:03:40','2014-05-16 12:53:58'),(47,194,18,'Sed omnis repudiandae non cumque. Ea eum dignissimos ut labore quod quam dolore ex. Aperiam quidem quasi accusamus eius voluptatem vitae dolorem.','2018-05-23 11:31:43','2013-04-28 04:03:02'),(48,67,65,'Et totam quis quaerat est. Magni cupiditate illo sapiente qui nesciunt dicta maiores. Aspernatur enim ipsam placeat est rerum. Aut laboriosam esse animi.','2012-09-02 05:41:57','2016-12-30 22:51:07'),(49,101,16,'Omnis ipsam soluta aut assumenda. Expedita deleniti et assumenda cumque. Nobis alias rerum vitae aut corrupti.','2016-12-24 19:39:18','2019-04-08 03:03:19'),(50,128,33,'Et repudiandae distinctio totam omnis. Molestiae tempore distinctio quia sapiente. Perspiciatis est dolorum iusto. Culpa repellendus eligendi est incidunt.','2015-04-01 13:30:46','2016-03-26 23:43:28'),(51,163,68,'Consectetur ut et minus deleniti vitae est. Et earum voluptas facilis corrupti quae. Ut dolorem blanditiis ut laudantium est reiciendis.','2020-09-29 20:53:55','2019-11-22 02:53:38'),(52,153,61,'Vitae quaerat ut quidem eaque. Aut aut omnis non. Deserunt nostrum quia iste ducimus ipsa. Ratione eos iure dolor amet autem molestias.','2017-11-20 10:44:21','2017-08-09 14:16:41'),(53,122,62,'Et recusandae iusto ut assumenda officia reiciendis. Nobis voluptatem voluptatem non molestias vitae laborum a. Omnis eos dicta dolorem minus sed et assumenda.','2014-03-05 08:24:16','2013-05-31 04:15:27'),(54,119,46,'Omnis saepe consequuntur totam ex dolor sint. Sit aut occaecati et eligendi inventore. Praesentium aut quis qui soluta. Et provident rem commodi et vitae earum.','2015-06-14 11:15:51','2021-04-06 14:35:04'),(55,191,52,'Aspernatur totam quod animi dolor. Omnis aut eaque omnis ut possimus quo minima. Eius fugit architecto enim ab.','2011-08-24 17:56:31','2020-10-11 10:07:30'),(56,141,71,'Officia tempore est ratione iure fugit est. Tenetur amet est dolor ea nam eveniet est natus. Est autem similique distinctio culpa.','2020-08-14 18:25:07','2018-12-11 21:49:20'),(57,185,5,'Reiciendis minima eius officiis sit. Ex officia molestiae voluptatem modi modi. Eos pariatur rerum ut aperiam debitis voluptas magni.','2020-06-19 13:18:59','2014-10-19 03:32:08'),(58,20,26,'Repellendus rerum minima voluptas quaerat molestiae. Dicta expedita et sint asperiores. Quia natus voluptas dolore recusandae.','2014-03-15 23:50:29','2015-06-18 02:44:14'),(59,75,62,'Rerum ea aspernatur veritatis. Distinctio nemo voluptatibus adipisci nihil laborum illo reiciendis. Iure minima est excepturi iusto et recusandae quis necessitatibus. Fuga illo nobis incidunt amet ipsum tempore nemo quae.','2014-12-19 00:22:14','2019-09-21 00:41:34'),(60,1,80,'Beatae esse sit adipisci soluta eum corporis ut rerum. Quaerat dignissimos sit in fuga impedit. Error rerum saepe eligendi dolor.','2013-02-01 17:47:06','2016-10-31 21:50:06'),(61,177,4,'Veniam repudiandae sed possimus pariatur nesciunt nihil beatae. Eos maxime atque perferendis dolorem. Aperiam voluptas et reiciendis praesentium praesentium eum.','2018-12-10 09:35:29','2021-02-10 12:58:10'),(62,162,38,'Dolorum quia eius vitae modi qui unde est. Eveniet est enim illo illo. Veniam rem dolorum perferendis fugit veritatis quasi cumque.','2015-08-14 15:43:52','2019-07-04 09:15:48'),(63,143,78,'Ut velit excepturi earum est quasi. Amet blanditiis doloremque reiciendis expedita est. Aut saepe ea temporibus quisquam dolor est.','2014-10-28 18:40:18','2017-05-11 20:08:01'),(64,40,85,'Autem ut et perferendis voluptatem quis. Est ad deleniti autem soluta pariatur sed. Tempora repudiandae delectus animi nihil ab et rerum.','2011-07-27 18:55:32','2019-04-13 11:04:13'),(65,57,97,'Omnis eos aperiam dolor atque enim officiis labore. Maxime cupiditate voluptas fuga aut delectus. Qui provident ducimus id exercitationem eligendi. Sequi omnis doloremque qui alias id ipsam.','2015-10-21 09:50:23','2016-08-20 11:08:37'),(66,127,99,'Eos reprehenderit perferendis et. Velit laboriosam sunt omnis aspernatur molestiae iste. Dolor qui corporis sed qui. Laborum quisquam autem in veniam.','2016-10-24 02:37:43','2020-11-04 09:19:34'),(67,62,19,'Omnis est culpa excepturi impedit temporibus ea laborum. Modi ad accusantium repellendus explicabo iure sunt quis. Repellendus voluptate minus et optio excepturi et nostrum. Ea qui occaecati velit.','2015-06-26 22:32:26','2021-01-18 03:14:28'),(68,40,44,'Sit totam quis officia et repellendus exercitationem sed. Ad quia sit nobis eius perspiciatis a. Dolores vel eligendi saepe reprehenderit deleniti consequuntur ut.','2015-05-30 08:54:22','2020-11-23 12:00:33'),(69,49,90,'Sed consectetur earum distinctio. Deleniti quas corporis quae ratione magnam. Sapiente nostrum eum in natus quos repudiandae.','2013-09-24 04:14:47','2016-04-30 00:59:58'),(70,26,78,'Ut nostrum alias et non aut ut. Voluptatem rerum minima debitis qui omnis voluptatibus molestiae a. Aspernatur voluptas cumque dolores ad molestias sit.','2014-12-03 19:15:15','2014-08-10 18:51:17'),(71,2,36,'Sit quia molestiae est et exercitationem illo dolorem. Dolor magni rerum expedita ut sint laborum aut iure. Mollitia aut magni architecto ratione. Soluta suscipit at iure similique esse sit vero.','2013-04-24 15:40:39','2017-03-29 09:29:43'),(72,181,27,'Tenetur et voluptatum dolorum perferendis consequuntur doloribus ut. Ut eligendi dolore maxime voluptatibus rerum natus ratione quas. Quisquam consequatur et facere quia voluptatem. Asperiores modi dignissimos cum et doloribus itaque sint aut. Quaerat quidem ut itaque qui.','2011-06-26 18:11:49','2020-12-16 23:49:58'),(73,96,8,'Adipisci dolorem quisquam eos quisquam. Possimus fuga quia natus qui. Dicta doloribus autem velit numquam autem. Saepe suscipit aut ipsa architecto expedita ut quidem. Quisquam excepturi deleniti voluptatem nisi reiciendis.','2016-03-09 13:52:59','2017-07-06 09:45:32'),(74,102,15,'Tempora adipisci est commodi sit esse. Sequi ex eius placeat provident repudiandae ipsam saepe. Rerum eius dolorum eveniet eos possimus.','2020-02-28 05:26:49','2016-10-22 15:58:31'),(75,105,86,'Ut quia libero est. Doloremque et enim numquam et qui et. Nostrum qui eligendi quia sit qui quis error dolore.','2019-01-05 08:22:50','2015-05-31 09:27:01'),(76,63,64,'Ea eaque commodi provident. Soluta impedit sit tempora quo sed. Laudantium aut voluptatibus et nihil accusantium et dignissimos.','2012-10-20 22:52:27','2019-12-17 22:13:13'),(77,76,41,'Aliquid impedit quam magnam asperiores illo. Tempora quibusdam temporibus voluptate exercitationem eaque impedit. Dignissimos ipsum non quo. Molestias natus et rem eveniet laudantium repellat.','2017-09-25 06:31:12','2016-01-12 20:18:19'),(78,174,26,'Minus voluptatem non ipsum maxime sint quis quam doloremque. Et facilis dolores omnis facere ab officia.','2019-09-03 06:08:56','2018-02-04 02:03:35'),(79,37,2,'Reiciendis quaerat voluptatum maxime rerum quae. Et impedit facere voluptas ab commodi voluptas non. Tempora qui doloribus rerum doloremque.','2014-05-22 21:39:00','2014-03-01 11:55:23'),(80,89,59,'Doloremque quisquam omnis non unde molestiae. Aut enim enim vel aut quos voluptas magnam impedit. Repellendus totam architecto autem qui optio.','2019-05-18 12:18:55','2015-02-02 07:50:56'),(81,194,38,'Et non enim nisi autem et. Sed ipsa autem velit fuga numquam eos repudiandae aut. Enim numquam velit quo ipsa quaerat. Asperiores ut ad earum aut sequi impedit nesciunt ipsum.','2018-04-23 19:48:54','2015-07-06 21:48:15'),(82,174,6,'A quia sunt ad voluptatem. Harum neque itaque deserunt qui reiciendis. Qui ipsum tenetur et harum possimus autem.','2015-04-06 21:53:52','2011-07-28 21:14:18'),(83,40,45,'Vel voluptas quis voluptates est quos. Vero optio cumque sit voluptas nihil ratione. Aut rem repellat iste magni.','2016-11-04 09:46:45','2015-10-11 02:00:55'),(84,193,38,'Blanditiis dolor enim velit itaque. Ea nobis placeat voluptates eveniet molestiae dolores. Autem qui et saepe molestiae dolorem molestiae quo aut.','2017-02-27 08:26:22','2021-04-05 03:13:32'),(85,182,16,'Optio est officiis autem ut. Eaque ut aspernatur et ducimus. Rerum optio optio et qui at. Impedit voluptates odio est corporis.','2012-05-16 07:11:26','2021-04-15 21:16:24'),(86,138,68,'Optio dolor et porro alias voluptatibus laborum. Accusamus velit alias magnam aut est. Qui assumenda voluptates fugit quos reiciendis harum quia. Ratione nostrum tempore omnis autem qui architecto est.','2014-04-13 15:28:24','2011-09-16 09:00:25'),(87,24,98,'Aut ut distinctio aut commodi nihil. Qui doloribus rem blanditiis totam dicta. Quos consequatur laboriosam expedita dignissimos assumenda quo. Veritatis doloremque aliquid quis qui et aperiam molestiae.','2018-09-30 04:43:16','2019-01-12 08:04:39'),(88,108,43,'Praesentium non maxime eius in in corrupti animi. Rerum itaque hic cumque consectetur quis quis quia eos. Vitae natus architecto repellendus eaque quos placeat qui laboriosam. Sit enim voluptatem voluptatem tempore.','2019-08-11 20:33:02','2017-09-11 11:02:16'),(89,83,76,'Sed qui autem nisi suscipit dolor. Repellendus et impedit officia voluptatem. Et et voluptas quos illum sunt.','2013-09-26 19:07:15','2011-08-16 21:42:19'),(90,26,14,'Consequatur sapiente quo sint nulla deleniti voluptatem. Fugiat sint deserunt sit laborum suscipit. Dolorem nam magni recusandae.','2019-10-02 02:20:52','2018-07-16 16:39:53'),(91,113,92,'Vero ex soluta cum totam. Optio nobis culpa eum harum sit debitis aut. Et nobis qui sequi nihil. Et voluptas optio voluptatem aspernatur sit.','2015-06-29 03:28:05','2019-11-02 06:12:48'),(92,5,68,'Molestias modi ab veritatis consequatur. Reprehenderit voluptate eligendi consequatur ex quas. Officiis sunt corrupti vel occaecati. Occaecati vel non eum ipsa fuga in quibusdam.','2012-05-21 21:01:38','2020-01-05 14:15:33'),(93,105,30,'Quo saepe nostrum perferendis voluptatem quibusdam fugit odio. Commodi placeat est odit optio est explicabo veniam.','2012-06-05 09:13:30','2016-02-23 04:45:46'),(94,160,24,'Maiores consequatur expedita consequatur modi. Ut earum libero et ut quos voluptatem. Recusandae est aut iure quas. Quia corporis quod quia beatae.','2013-05-07 02:56:17','2013-06-04 22:20:33'),(95,20,63,'Enim a repudiandae ex in commodi. Eligendi alias tenetur commodi nemo necessitatibus qui.','2017-04-12 19:49:24','2011-12-23 18:24:26'),(96,54,85,'Sunt dolor id quae est non voluptate. Aliquam quod nisi a incidunt ratione hic. Minus ratione itaque accusantium expedita ex.','2017-07-13 21:00:40','2015-02-24 19:01:32'),(97,142,27,'Voluptatum quis voluptas reiciendis cum. Dicta similique ullam officiis consequatur. Rem deserunt sunt rerum officiis nulla unde rerum sed.','2016-06-26 08:48:30','2012-02-04 17:49:45'),(98,118,88,'Explicabo aut magni sunt earum nemo. Doloremque rerum dolorem omnis qui eaque natus quo. Esse odit est hic excepturi ex atque modi.','2018-07-30 11:29:07','2013-05-26 12:30:11'),(99,28,26,'Possimus omnis vitae esse omnis quasi. Et recusandae quae ducimus non. Repellat nobis dolor laborum enim.','2016-05-26 02:54:05','2015-08-09 03:38:35'),(100,61,18,'Non eos qui veniam consequatur vel fugiat. Tempora dolore pariatur qui sint cumque impedit. Sunt pariatur inventore ab. In ut voluptatem qui. Omnis placeat dolor voluptatem consequuntur corrupti.','2012-06-19 01:59:41','2019-03-30 08:06:59');

-- Заполняем таблицу профелей пользователей
INSERT INTO `profiles` VALUES 
(1,'f','2004-07-31','Gleasonburgh','Cyprus','2021-05-19 10:54:21','2014-02-05 04:28:24'),(2,'m','1975-03-17','Blickberg','Sri Lanka','2016-12-10 15:51:12','2011-08-11 09:47:51'),(3,'f','1971-08-06','West Madge','Netherlands','2013-05-11 18:44:57','2021-06-03 16:00:21'),(4,'f','2016-05-21','Predovicville','French Southern Territories','2017-06-13 23:05:44','2015-07-07 23:06:18'),(5,'f','1988-02-06','Hesselchester','Cyprus','2017-12-26 09:53:34','2013-10-14 06:25:22'),(6,'f','1987-07-18','Lake Florence','Slovenia','2016-05-06 01:46:41','2011-10-02 01:43:18'),(7,'f','1993-03-05','South Hillard','Wallis and Futuna','2016-09-10 01:15:17','2011-08-05 20:10:40'),(8,'f','1984-07-06','South Brionnamouth','Samoa','2019-10-25 12:11:14','2013-01-17 13:40:41'),(9,'m','2009-07-05','Corineland','Lebanon','2016-01-21 04:16:17','2017-08-15 23:49:25'),(10,'f','1993-08-21','West Dan','Mozambique','2020-11-05 18:08:31','2018-11-10 18:45:09'),(11,'m','1990-01-12','North Jailynburgh','South Africa','2011-08-19 22:33:34','2014-01-13 02:21:17'),(12,'f','1971-02-20','Mitchellmouth','Somalia','2014-01-07 18:24:09','2014-08-25 13:42:47'),(13,'m','1976-05-10','O\'Keefestad','Venezuela','2015-07-05 23:34:08','2019-12-13 10:11:54'),(14,'m','2019-11-08','Christopherchester','Ghana','2020-06-04 15:13:27','2018-10-23 21:15:42'),(15,'m','2020-03-16','Lake Junior','Qatar','2017-01-10 00:24:18','2019-09-24 11:43:52'),(16,'f','1992-01-29','Lake Retha','Central African Republic','2016-07-11 20:10:11','2016-02-28 11:03:01'),(17,'f','1981-12-16','Kuhicbury','Bulgaria','2015-07-26 10:44:54','2015-02-05 20:17:50'),(18,'m','1999-08-09','Lake Sabrinaberg','Sudan','2021-04-29 08:05:51','2013-10-29 16:51:01'),(19,'f','1993-08-28','Mayraside','Mexico','2018-11-15 11:37:00','2016-04-20 10:23:17'),(20,'f','1971-06-24','Lake Gloriaside','Ecuador','2020-02-29 02:10:22','2017-08-13 02:24:03'),(21,'f','2007-01-09','Collinsberg','Martinique','2014-11-02 18:53:30','2011-11-03 14:34:53'),(22,'f','1988-11-15','Reedbury','Bangladesh','2017-03-21 12:58:04','2015-07-31 16:27:06'),(23,'m','1989-01-20','North Tracestad','Lao People\'s Democratic Republic','2019-07-25 00:43:40','2017-06-10 12:32:59'),(24,'m','1983-12-20','Cummingshaven','Saint Martin','2015-02-06 16:40:48','2021-05-03 16:48:19'),(25,'f','1995-11-09','Waynetown','Oman','2020-02-10 06:36:34','2020-09-12 08:40:15'),(26,'f','1996-05-16','Barrowsborough','Zambia','2019-05-29 05:48:55','2019-07-14 03:24:58'),(27,'m','2000-12-06','Waltonland','Saudi Arabia','2013-12-13 04:27:49','2019-03-05 20:19:32'),(28,'m','2015-06-30','Candiceburgh','Qatar','2013-09-21 03:52:21','2014-03-13 18:47:57'),(29,'m','1990-05-31','Rolfsonside','Lithuania','2018-03-03 04:53:28','2018-07-02 06:19:09'),(30,'f','1980-02-06','Jerrodchester','Nigeria','2020-12-13 09:10:44','2015-07-14 03:18:03'),(31,'m','1976-03-15','Conroyland','Senegal','2016-01-02 00:55:35','2017-05-12 00:37:32'),(32,'m','2014-09-19','Lake Mariela','Eritrea','2013-12-21 07:06:57','2011-06-28 07:47:32'),(33,'f','1994-03-21','Jordychester','Tanzania','2015-10-22 17:53:55','2013-02-27 21:28:39'),(34,'m','1973-03-03','West Justyn','Morocco','2014-10-12 05:47:43','2014-05-15 21:07:31'),(35,'f','1973-07-19','Fredaberg','Switzerland','2019-02-10 10:35:14','2021-04-06 15:06:00'),(36,'m','1994-05-25','Dallaschester','Switzerland','2019-07-06 05:40:08','2015-08-25 11:25:19'),(37,'f','2003-03-18','Edythefurt','Kazakhstan','2016-04-15 08:45:54','2013-10-25 01:18:56'),(38,'f','1986-12-13','Bartolettifurt','Vanuatu','2015-01-01 16:15:16','2017-10-14 16:55:29'),(39,'f','1979-04-30','Kreigermouth','Albania','2019-08-18 00:44:13','2015-01-10 22:30:21'),(40,'f','1974-01-28','Port Alverta','Mauritania','2018-05-13 05:57:19','2020-01-22 21:01:28'),(41,'f','2002-08-03','Friedachester','Cape Verde','2019-12-28 20:33:48','2019-07-22 02:01:58'),(42,'f','1987-07-09','New Shayleetown','Serbia','2012-09-06 17:08:04','2017-06-15 22:31:42'),(43,'f','1988-04-22','South Lucie','Kiribati','2015-05-03 08:35:07','2017-03-22 12:33:57'),(44,'m','1975-06-14','Carrollmouth','Zimbabwe','2014-02-23 13:36:33','2011-06-04 13:58:12'),(45,'f','2016-05-23','North Jovanyborough','Burkina Faso','2014-11-03 01:19:37','2017-04-23 00:25:48'),(46,'m','1990-06-15','Bartellshire','Bosnia and Herzegovina','2016-08-17 07:05:56','2016-03-01 08:51:26'),(47,'f','2002-06-03','Hagenesfurt','Singapore','2020-04-14 16:13:32','2012-10-17 15:50:19'),(48,'f','1995-09-16','Jacintheport','San Marino','2016-10-02 21:37:15','2019-08-28 00:46:54'),(49,'f','1973-02-03','Keatonbury','Yemen','2011-08-13 15:39:20','2020-08-03 16:05:23'),(50,'m','2015-12-10','Lake Chloebury','Somalia','2019-04-02 08:07:30','2019-07-21 06:04:09'),(51,'m','2004-11-04','Fritschfort','Mozambique','2016-02-29 12:13:51','2014-07-12 21:59:55'),(52,'f','1999-04-24','Lehnerview','Guinea','2015-05-04 04:59:14','2018-08-31 08:00:04'),(53,'f','2000-02-10','Renemouth','Guinea','2020-06-05 20:44:42','2014-04-19 16:58:13'),(54,'m','1975-03-19','New Anitaview','Ghana','2018-09-16 13:02:33','2019-02-13 18:53:11'),(55,'m','1983-06-29','West Shayleeport','Svalbard & Jan Mayen Islands','2015-06-11 11:04:46','2014-06-12 03:28:56'),(56,'f','2013-12-01','Rowanburgh','Bulgaria','2018-06-02 06:12:08','2017-08-22 15:04:25'),(57,'f','1979-08-13','New Gail','Holy See (Vatican City State)','2013-10-03 13:26:19','2021-05-30 21:31:27'),(58,'f','2017-09-21','Cassinchester','Saint Barthelemy','2019-01-21 07:31:07','2014-09-04 03:11:22'),(59,'m','1977-02-13','East Alisha','Madagascar','2020-03-30 11:38:34','2018-04-23 13:08:21'),(60,'f','2011-02-23','New Ofelia','Nicaragua','2018-07-26 16:00:26','2017-04-03 10:02:06'),(61,'m','2005-10-11','Lake Justina','Zimbabwe','2020-05-13 16:44:25','2012-08-20 23:30:30'),(62,'f','2005-05-20','Lake Elyssaburgh','Tuvalu','2014-06-10 11:35:00','2015-12-10 09:18:04'),(63,'m','1977-03-21','South Ginobury','Lebanon','2020-04-26 04:42:07','2015-10-01 18:03:26'),(64,'f','2012-10-30','New Deondrestad','Niger','2021-01-30 01:25:06','2012-09-12 14:59:49'),(65,'m','1977-08-09','East Candice','Togo','2020-10-17 00:01:12','2014-09-21 05:30:32'),(66,'m','1996-09-02','Lylahaven','Gambia','2019-11-12 09:28:26','2013-09-21 23:50:31'),(67,'m','1992-02-29','Danykafurt','Central African Republic','2020-02-18 05:57:07','2014-11-06 08:01:13'),(68,'f','2012-08-16','New Jermain','Lithuania','2020-07-07 07:18:18','2014-03-06 03:41:13'),(69,'f','1991-01-10','East Rodger','Australia','2016-11-08 16:58:38','2020-11-05 03:02:06'),(70,'f','2010-06-23','North Maribel','Saudi Arabia','2017-07-02 00:14:46','2019-09-03 22:31:40'),(71,'m','1992-08-30','Trantowport','Saudi Arabia','2019-12-25 06:58:28','2013-08-25 02:36:07'),(72,'f','1981-04-09','New Blanche','Senegal','2014-04-11 00:54:25','2013-05-29 06:16:03'),(73,'m','1995-04-10','Barrowsmouth','Sao Tome and Principe','2015-03-05 10:40:54','2019-10-03 23:43:01'),(74,'f','1992-12-16','West Rebekahshire','Paraguay','2016-10-29 07:57:35','2020-04-25 01:41:45'),(75,'f','1987-12-28','Lake Chaz','Vanuatu','2018-12-15 06:07:46','2021-06-02 01:25:26'),(76,'m','1988-10-26','Port Eric','Zambia','2015-02-12 08:03:38','2012-07-12 15:23:22'),(77,'m','2016-01-23','Beerburgh','Poland','2016-11-19 20:32:13','2012-11-15 22:42:50'),(78,'f','1994-01-26','Lake Kennafort','Mozambique','2016-01-26 11:28:22','2012-10-14 10:29:33'),(79,'m','2017-09-12','Leuschkeburgh','Iran','2013-09-20 16:14:41','2016-02-21 03:33:30'),(80,'m','1988-06-20','East Britney','Holy See (Vatican City State)','2012-04-04 16:02:43','2020-07-13 18:26:41'),(81,'f','1990-12-03','Rozellaberg','Canada','2020-10-13 16:42:57','2019-08-22 15:43:34'),(82,'m','2006-12-27','West Camila','Algeria','2018-09-24 03:41:47','2014-09-19 16:18:45'),(83,'m','1986-02-28','Enolaland','Colombia','2014-11-18 13:14:31','2015-09-14 05:06:12'),(84,'f','1976-07-29','Kihnview','Turkey','2012-04-30 04:34:45','2017-07-02 12:12:08'),(85,'f','1983-07-13','West Nia','Nigeria','2019-04-12 20:23:08','2021-01-29 13:43:01'),(86,'f','1972-01-28','Darronland','Korea','2017-01-15 10:10:05','2021-03-26 21:27:24'),(87,'f','1989-08-17','New Sonya','Serbia','2020-09-19 18:29:18','2011-11-26 06:59:34'),(88,'f','2004-01-09','Arlenechester','Namibia','2014-08-20 06:45:46','2014-04-10 22:46:09'),(89,'f','1994-08-24','Rooseveltmouth','Liechtenstein','2018-01-24 01:51:30','2012-04-15 11:39:24'),(90,'f','1972-11-20','Lake Mohammedshire','Senegal','2020-07-04 17:52:08','2012-06-10 01:46:02'),(91,'f','1989-05-08','Walshport','Mauritania','2015-08-24 03:28:40','2016-03-21 10:19:50'),(92,'m','1977-07-16','New Kristoferside','Kenya','2014-02-14 17:43:55','2015-03-29 23:55:26'),(93,'f','2014-06-01','Port Miguel','Norway','2019-03-23 02:49:58','2011-11-29 11:55:10'),(94,'f','2014-10-11','Savannaborough','Pitcairn Islands','2020-09-08 17:09:37','2020-12-14 13:34:38'),(95,'f','1983-08-10','Abbottburgh','Cook Islands','2011-10-09 13:00:14','2017-08-22 14:04:09'),(96,'m','2011-12-14','West Blancaview','Nigeria','2014-07-19 20:36:19','2017-10-21 15:02:54'),(97,'f','2001-03-14','New Lance','United Kingdom','2015-11-22 21:51:34','2018-03-01 16:06:12'),(98,'f','2016-04-20','Emardville','Saudi Arabia','2019-12-31 01:07:58','2011-12-29 14:29:44'),(99,'m','2011-06-03','South Burnice','Bosnia and Herzegovina','2014-02-06 06:17:22','2011-08-07 03:30:39'),(100,'m','2009-04-25','Runtehaven','Ethiopia','2012-11-07 11:22:28','2018-03-07 07:28:01');

-- Заполняем таблицу пользователй
INSERT INTO `users` VALUES 
(1,'Ericka','Purdy','kessler.osbaldo@example.net','568-912-4038','2018-12-14 16:02:47','2011-08-04 05:57:08'),(2,'Paxton','Reichel','larkin.donny@example.org','(269)376-7384','2014-09-04 23:15:06','2019-07-25 19:40:51'),(3,'Shaun','Ondricka','maryse.schultz@example.net','(330)795-4679','2013-06-23 11:05:00','2018-08-27 01:23:45'),(4,'Floy','Kiehn','jaunita.crist@example.org','02371366647','2014-03-04 06:34:28','2021-03-21 05:44:10'),(5,'Titus','Hilll','robbie.tillman@example.org','(894)919-1319x940','2017-06-15 18:53:03','2014-10-05 15:09:20'),(6,'Bernardo','Hodkiewicz','lucile97@example.org','(976)836-5262x913','2019-06-05 05:30:39','2020-09-19 08:53:05'),(7,'Bridie','Cruickshank','lsipes@example.net','05546259676','2020-08-28 13:40:04','2013-04-18 00:00:30'),(8,'Alexis','Wilderman','gerda86@example.com','+42(5)4503268387','2020-09-13 04:28:07','2020-04-29 19:21:14'),(9,'Zachery','Kutch','giles.stark@example.com','(453)699-2343x14949','2018-04-27 03:43:11','2013-04-13 13:55:35'),(10,'Edgardo','O\'Keefe','golda35@example.net','396-291-3266','2020-01-16 05:09:20','2015-10-05 15:33:05'),(11,'Marcelo','Leannon','udaugherty@example.org','1-200-386-3555','2011-10-23 09:47:25','2021-03-14 07:52:15'),(12,'Deshawn','Schulist','everett.mraz@example.net','00346091907','2016-09-09 06:37:47','2014-04-02 01:08:41'),(13,'Meghan','Prosacco','haylee37@example.com','00584892153','2014-06-30 23:47:05','2015-09-26 08:31:26'),(14,'Coby','O\'Hara','rosenbaum.bernita@example.net','1-046-034-7990','2018-06-07 21:47:56','2013-04-13 21:50:58'),(15,'Ally','Yost','olga.swaniawski@example.net','1-950-757-3322x7564','2015-11-21 13:02:33','2014-05-29 04:51:52'),(16,'Clementina','Strosin','qkoss@example.com','00141398721','2015-11-04 03:59:22','2015-06-07 13:27:09'),(17,'Lavern','Stracke','jaylan.hamill@example.com','162.219.9118','2019-10-15 18:58:57','2016-06-16 23:55:54'),(18,'Maida','Walker','dubuque.destany@example.org','1-178-883-3330x86268','2017-08-01 19:34:33','2019-01-02 04:15:52'),(19,'Russ','Bergnaum','dylan.dietrich@example.com','878.090.8834','2017-06-08 22:38:10','2017-06-17 11:47:37'),(20,'Tamara','Stanton','kaitlyn.schmeler@example.com','(958)843-0758x981','2014-10-16 01:11:22','2017-04-01 23:16:15'),(21,'Pat','Bernhard','swaniawski.carlie@example.org','987-518-1184x9987','2021-01-17 05:22:59','2015-08-20 17:21:13'),(22,'Isom','Leannon','reichel.adah@example.org','806-279-6270','2020-11-16 15:49:48','2016-01-06 12:41:19'),(23,'Dorian','Jast','bins.cristian@example.net','920.725.1212x00842','2012-04-15 07:36:54','2019-10-03 19:40:26'),(24,'Fiona','Schinner','etrantow@example.net','(431)984-6396','2019-12-01 22:32:37','2012-06-27 12:39:25'),(25,'Leonora','Berge','ogerhold@example.org','095-764-2623x68994','2019-06-29 12:56:23','2012-06-05 01:38:59'),(26,'Marielle','Senger','ed.klocko@example.net','1-967-503-3500','2018-04-21 20:57:33','2017-01-03 16:12:28'),(27,'Karley','Watsica','dpadberg@example.net','586.814.2566','2017-08-06 21:10:10','2015-09-14 01:13:47'),(28,'Dewitt','O\'Connell','cristian98@example.net','557.397.9779x15835','2013-08-23 04:55:31','2011-07-27 01:54:20'),(29,'Angela','Blick','lolson@example.org','440.990.0185','2012-03-14 18:54:23','2020-08-18 08:25:07'),(30,'Sonia','Smitham','candice70@example.com','1-923-888-4390x410','2014-12-24 09:53:22','2014-12-07 01:37:49'),(31,'Crystal','Herman','prippin@example.net','089.560.3992x70075','2011-10-01 11:42:24','2019-03-13 19:52:08'),(32,'Ana','Eichmann','ykeebler@example.org','027-596-0586x165','2014-04-18 08:40:45','2014-06-10 12:17:52'),(33,'Luna','Corwin','jennings75@example.net','09275712064','2012-12-04 19:10:55','2016-04-04 10:25:58'),(34,'Annie','Doyle','dallas.murazik@example.org','271-768-2483','2013-09-12 19:49:16','2016-11-12 02:57:53'),(35,'Nia','Kozey','kristian.stamm@example.net','+27(6)2400570830','2021-04-03 11:05:26','2019-08-07 02:55:53'),(36,'Tamara','Dare','swaniawski.jaylon@example.net','(308)471-7364','2020-08-10 10:31:18','2012-07-19 13:40:11'),(37,'Bridgette','Bashirian','smitham.alexa@example.net','1-219-191-1821x4164','2019-08-30 05:00:03','2018-01-12 11:36:03'),(38,'Akeem','Hilll','kylie59@example.org','09799708652','2020-03-20 11:54:26','2011-11-27 13:01:28'),(39,'Moises','Sporer','tillman.alfred@example.org','(545)313-3896','2013-02-11 13:33:31','2017-01-27 14:31:14'),(40,'Patricia','Strosin','betsy76@example.net','(501)728-9917x45477','2019-05-20 09:08:40','2012-10-01 18:13:46'),(41,'Andreane','O\'Kon','mitchel.schuppe@example.net','714.056.6050x43217','2021-03-14 00:34:24','2019-06-28 14:00:22'),(42,'Jimmy','Kovacek','turcotte.franco@example.net','306-229-2692x815','2012-05-29 03:16:49','2019-10-05 01:04:52'),(43,'Providenci','Sauer','uhoeger@example.org','(964)506-6792','2018-10-31 21:36:50','2019-06-15 23:43:44'),(44,'Giuseppe','McCullough','west.lyla@example.com','+33(0)0542304254','2013-09-19 20:51:57','2012-06-05 03:24:18'),(45,'Kyra','Leuschke','michaela99@example.com','(525)231-5388x7463','2016-10-21 19:23:51','2015-01-16 11:56:12'),(46,'Kelli','Stoltenberg','goodwin.allen@example.net','(991)260-8747','2021-04-11 02:28:50','2012-05-21 12:03:56'),(47,'Madonna','Jast','jordi.champlin@example.org','1-669-258-3686x4374','2019-07-24 12:04:28','2015-07-22 17:34:08'),(48,'Una','Friesen','jnikolaus@example.org','507-014-9301x9678','2015-09-07 16:58:37','2018-08-24 22:58:37'),(49,'Elenor','Hagenes','quinton44@example.net','413.634.6395','2012-06-04 19:18:34','2012-03-13 13:03:39'),(50,'Savanna','Jerde','daniel.reid@example.org','(656)492-6650x470','2017-02-11 16:54:39','2017-04-22 03:16:46'),(51,'Gracie','Will','hamill.isabelle@example.net','(816)042-2846','2018-12-13 20:47:18','2014-03-20 23:57:53'),(52,'Tyrell','Mertz','melvina.langworth@example.com','700-002-0129x44446','2017-09-21 08:14:29','2021-04-08 10:50:44'),(53,'Wendell','Bailey','fpfeffer@example.org','1-630-369-1978','2015-05-03 11:42:44','2016-02-17 03:32:31'),(54,'Lisa','Welch','roxane74@example.com','1-458-277-0496','2013-02-23 09:46:15','2020-12-05 02:50:05'),(55,'Gilda','Goldner','geo.kulas@example.net','02259154594','2019-06-18 14:04:37','2017-10-23 18:46:41'),(56,'Trinity','Mertz','twaelchi@example.net','599.943.1222','2013-05-14 01:04:40','2014-05-23 20:25:30'),(57,'Cheyenne','Schmeler','monserrate06@example.org','1-198-323-6408x9441','2014-11-19 12:14:24','2013-12-30 01:37:59'),(58,'Franz','Bayer','mackenzie.white@example.net','013.120.9925x9952','2020-11-19 03:33:17','2013-01-21 15:05:11'),(59,'Lucie','Thiel','cara25@example.net','01366160583','2019-02-14 20:52:51','2018-10-15 17:11:17'),(60,'Ken','Bartell','isaias.runte@example.com','(296)303-0784x76050','2019-03-28 23:21:30','2014-02-23 05:30:51'),(61,'Rebeca','Wisozk','twila47@example.net','192-024-2131x1556','2013-09-10 09:00:22','2014-07-30 22:15:55'),(62,'Rigoberto','Stracke','king.elvie@example.org','(765)266-4870x24048','2017-04-01 17:48:19','2019-01-15 16:17:35'),(63,'Alia','Friesen','xhegmann@example.org','568.193.5576x714','2016-09-24 22:20:12','2017-01-21 15:12:01'),(64,'Florida','Gorczany','perry78@example.org','(206)562-9453','2019-06-22 06:39:55','2013-06-01 19:40:08'),(65,'Flo','Krajcik','jlindgren@example.com','(424)370-3133x92298','2019-09-07 19:44:56','2011-11-07 13:29:08'),(66,'Gideon','Leffler','alicia98@example.org','(505)791-0405','2015-02-01 15:02:03','2017-03-11 19:03:12'),(67,'Emelia','Turner','dino.quitzon@example.org','095-379-2684x27050','2017-06-26 07:23:37','2017-08-17 05:54:26'),(68,'Alfred','Feeney','hhartmann@example.net','455.058.3520','2020-02-04 02:24:23','2012-06-21 11:45:20'),(69,'Neva','Ziemann','pamela87@example.com','381.705.8434x73657','2015-04-05 00:38:02','2015-02-17 05:59:17'),(70,'Sandy','Heidenreich','kfranecki@example.net','1-161-338-4798x27942','2016-06-08 18:50:44','2013-03-31 11:26:29'),(71,'River','Medhurst','dach.franz@example.com','731-905-1787x985','2012-11-01 17:57:38','2018-08-26 17:17:13'),(72,'Sydnee','Friesen','garret.deckow@example.net','(465)070-8226x0573','2016-04-10 12:15:12','2013-08-27 03:08:38'),(73,'Cristian','Blick','tgoyette@example.org','110-459-9978','2021-01-03 00:07:04','2012-07-17 16:01:07'),(74,'Moriah','Boyer','molly.hudson@example.com','068.351.9602x7903','2012-08-05 05:25:20','2019-09-26 17:15:16'),(75,'Rachelle','Lakin','simone.mills@example.org','940.205.6268','2013-04-06 08:44:58','2013-10-25 04:05:06'),(76,'Freddie','Kovacek','toy.schimmel@example.com','(184)770-7452x0021','2015-09-01 23:54:06','2014-03-05 19:47:39'),(77,'Dorthy','Quitzon','hilpert.annette@example.com','1-733-985-3631x4076','2014-06-13 05:45:42','2016-05-30 20:32:58'),(78,'Matilda','Simonis','medhurst.javier@example.com','251-487-3797x1104','2016-08-15 03:18:53','2015-03-26 08:54:08'),(79,'Kiel','Steuber','glittel@example.com','1-826-985-5118x7026','2018-09-25 19:38:51','2015-06-12 10:13:29'),(80,'Darby','Gleichner','cummings.dane@example.org','1-900-893-2619x146','2020-01-21 07:18:48','2015-07-17 04:55:14'),(81,'Jasmin','Romaguera','kelsi02@example.org','039.806.3534','2013-09-16 10:14:55','2020-05-03 07:25:54'),(82,'Yolanda','Lubowitz','monserrat05@example.net','05882549089','2020-08-01 00:15:58','2011-09-26 05:41:05'),(83,'June','Dickinson','aurelie80@example.org','261.049.4146x12423','2012-06-02 22:11:36','2021-05-30 14:38:14'),(84,'Earlene','Weber','lindgren.roscoe@example.com','1-603-729-8136x0170','2020-06-22 17:06:51','2016-02-03 07:21:31'),(85,'Elizabeth','Balistreri','alec21@example.com','1-646-111-0273x83438','2016-04-22 08:16:17','2020-06-15 06:10:32'),(86,'Judy','McKenzie','joseph73@example.net','719-152-8499','2018-12-22 19:34:46','2017-10-11 20:35:25'),(87,'Matteo','Hegmann','bcarroll@example.org','(291)654-4883','2020-04-27 05:36:49','2018-12-16 07:33:01'),(88,'Dayton','Pollich','xkoss@example.net','04152531494','2019-05-16 15:38:38','2013-09-22 00:37:53'),(89,'Jacques','Bartoletti','veronica24@example.org','1-221-418-4616','2018-02-20 01:01:14','2018-11-24 15:14:52'),(90,'Carmel','Douglas','fritz40@example.com','822.528.2464','2018-04-10 06:25:56','2020-10-14 03:37:54'),(91,'Nico','Robel','streich.concepcion@example.com','1-224-614-5955x284','2013-08-20 15:46:19','2011-09-12 11:47:04'),(92,'Maude','Tromp','otha96@example.net','375.359.2485x8248','2017-08-09 08:34:00','2018-07-28 17:33:13'),(93,'Kennedy','Walter','creola.yost@example.net','1-029-889-1865x71559','2018-08-26 18:30:03','2015-07-28 00:09:10'),(94,'Susana','Nicolas','gaetano99@example.net','(551)306-7653','2011-08-19 19:06:19','2012-02-18 19:03:24'),(95,'Christop','Willms','xjaskolski@example.com','643-344-3949','2020-10-01 13:17:45','2014-06-09 23:19:41'),(96,'Fleta','Block','elton33@example.com','(265)796-7292','2019-07-17 03:46:49','2019-08-09 18:25:41'),(97,'Gabriella','Goodwin','ward.casper@example.org','(765)538-2987','2020-03-21 20:29:11','2011-10-27 14:49:36'),(98,'Trystan','Larson','tara.schultz@example.org','1-010-262-5113x955','2020-01-29 16:51:13','2021-02-23 07:15:20'),(99,'Hosea','Becker','eichmann.henriette@example.org','1-481-924-7609x340','2015-11-14 10:19:45','2016-07-05 11:39:50'),(100,'Deborah','Effertz','rath.abe@example.com','(356)923-7972','2012-04-13 21:59:25','2019-10-25 09:04:41');

-- Заполняем таблицу каналов пользователей
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (1, 32, 'mollitia', '2013-11-14 22:57:46', '2015-02-13 22:21:01');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (2, 16, 'voluptatem', '2014-12-25 15:36:59', '2012-10-01 10:20:59');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (3, 72, 'numquam', '2018-08-21 16:36:30', '2016-05-29 08:41:07');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (4, 46, 'cum', '2017-10-12 22:57:15', '2013-04-09 04:49:17');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (5, 1, 'recusandae', '2020-11-29 12:52:19', '2020-01-01 13:42:31');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (6, 75, 'illo', '2012-12-09 04:00:25', '2011-08-30 18:39:00');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (7, 18, 'aliquid', '2019-07-25 07:35:11', '2014-05-17 00:11:05');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (8, 21, 'et', '2017-06-10 09:03:24', '2015-07-03 14:45:33');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (9, 45, 'incidunt', '2018-09-09 15:14:20', '2011-12-16 04:39:24');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (10, 88, 'voluptate', '2018-01-16 23:15:29', '2018-07-08 02:31:52');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (11, 86, 'quidem', '2020-11-02 14:14:08', '2018-03-10 00:32:06');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (12, 50, 'consequatur', '2017-11-25 14:13:25', '2011-11-19 10:23:54');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (13, 80, 'quibusdam', '2013-05-01 04:13:14', '2019-01-27 08:24:54');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (14, 98, 'fuga', '2021-02-06 09:26:34', '2013-03-06 09:18:42');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (15, 38, 'ut', '2021-01-25 14:01:10', '2015-08-15 22:10:33');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (16, 69, 'nulla', '2015-10-06 03:27:40', '2016-06-03 02:18:02');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (17, 96, 'velit', '2021-04-14 03:10:33', '2017-04-10 07:02:45');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (18, 49, 'maxime', '2013-10-29 16:17:47', '2012-11-25 04:28:13');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (19, 8, 'omnis', '2021-05-23 07:55:13', '2014-09-29 22:41:50');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (20, 9, 'molestiae', '2016-02-15 11:57:38', '2014-06-12 11:39:24');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (21, 11, 'amet', '2016-12-16 16:25:08', '2019-05-02 19:36:52');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (22, 13, 'labore', '2019-11-19 16:22:37', '2014-12-15 01:24:30');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (23, 53, 'omnis', '2013-07-10 03:53:27', '2016-07-17 09:54:58');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (24, 48, 'accusamus', '2015-08-16 11:30:15', '2017-10-31 19:11:17');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (25, 59, 'sit', '2019-03-21 16:44:30', '2021-05-09 15:47:05');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (26, 40, 'ipsa', '2014-08-21 07:00:20', '2018-03-31 14:15:59');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (27, 78, 'eveniet', '2012-01-03 21:12:40', '2021-03-06 13:35:07');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (28, 36, 'quaerat', '2019-10-25 03:48:09', '2015-05-06 19:06:52');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (29, 55, 'est', '2013-01-26 18:32:36', '2017-01-01 11:49:45');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (30, 89, 'distinctio', '2018-06-05 11:03:02', '2012-06-02 09:48:49');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (31, 23, 'porro', '2017-08-18 17:45:35', '2015-07-26 08:15:55');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (32, 51, 'dolorem', '2016-11-18 09:45:17', '2015-04-13 00:02:09');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (33, 58, 'exercitationem', '2020-03-06 01:15:09', '2015-05-02 08:58:35');
INSERT INTO `channels` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES (34, 37, 'odio', '2020-03-26 22:32:21', '2013-01-03 17:58:54');

-- Заполняем таблицу плейлистов
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (1, 21, 'magni', 1, '2017-09-19 11:34:37', '2016-11-30 12:26:17');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (2, 10, 'id', 2, '2011-08-17 09:03:08', '2020-05-21 12:49:01');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (3, 43, 'earum', 3, '2017-10-23 19:49:56', '2017-09-10 19:53:14');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (4, 3, 'maxime', 4, '2012-06-22 01:45:18', '2015-05-12 06:07:49');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (5, 81, 'perferendis', 5, '2018-11-16 11:38:12', '2012-12-29 05:52:53');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (6, 19, 'reiciendis', 6, '2015-08-15 05:34:02', '2018-04-24 01:23:17');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (7, 92, 'vitae', 7, '2016-02-29 18:32:11', '2020-08-29 07:17:39');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (8, 65, 'facilis', 8, '2016-03-23 02:46:47', '2016-10-03 13:48:13');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (9, 59, 'sunt', 9, '2012-04-18 17:31:06', '2014-06-23 19:33:00');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (10, 64, 'deleniti', 10, '2013-01-07 20:37:51', '2020-11-01 02:29:35');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (11, 60, 'eaque', 11, '2017-03-12 10:19:02', '2012-10-29 23:12:39');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (12, 29, 'debitis', 12, '2013-01-17 18:52:41', '2017-11-22 12:07:32');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (13, 31, 'id', 13, '2014-10-05 02:46:45', '2016-06-05 06:44:58');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (14, 73, 'facere', 14, '2018-02-24 12:40:47', '2012-07-26 15:45:42');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (15, 70, 'quaerat', 15, '2021-02-07 13:39:28', '2015-02-09 12:22:27');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (16, 19, 'ea', 16, '2015-03-06 12:42:35', '2020-12-11 18:17:21');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (17, 61, 'magni', 17, '2016-03-09 20:07:25', '2015-03-18 21:54:42');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (18, 79, 'eligendi', 18, '2012-02-04 16:07:53', '2013-07-09 19:46:53');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (19, 39, 'reprehenderit', 19, '2016-03-11 10:14:34', '2018-05-22 03:48:18');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (20, 11, 'aut', 20, '2014-10-12 12:28:18', '2021-05-23 02:26:42');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (21, 4, 'voluptatem', 21, '2020-05-20 12:37:35', '2017-09-04 22:47:42');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (22, 61, 'dolores', 22, '2020-03-01 23:34:39', '2019-01-02 20:20:02');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (23, 55, 'necessitatibus', 23, '2019-06-15 22:04:01', '2012-01-08 10:05:37');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (24, 53, 'ratione', 24, '2012-01-26 03:46:39', '2015-09-29 03:04:14');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (25, 62, 'dolores', 25, '2020-06-27 02:51:54', '2018-12-24 20:53:51');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (26, 46, 'officiis', 26, '2016-10-17 08:01:23', '2017-06-15 12:06:41');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (27, 98, 'quidem', 27, '2016-07-09 06:52:48', '2016-06-02 19:49:34');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (28, 59, 'nihil', 28, '2014-11-05 05:42:33', '2013-02-11 12:59:53');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (29, 46, 'quia', 29, '2018-09-21 21:51:44', '2020-02-27 17:21:06');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (30, 4, 'dolores', 30, '2019-06-25 20:55:12', '2017-09-22 14:10:08');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (31, 89, 'non', 31, '2018-09-20 02:29:26', '2013-07-01 21:29:38');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (32, 64, 'libero', 32, '2017-10-08 06:12:10', '2015-05-08 14:05:18');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (33, 72, 'ut', 33, '2012-07-23 02:28:47', '2016-10-15 22:40:58');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (34, 56, 'quis', 34, '2017-02-13 11:30:52', '2021-01-13 00:24:54');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (35, 79, 'aut', 35, '2021-01-16 02:40:07', '2018-01-30 20:39:20');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (36, 56, 'id', 36, '2020-07-07 03:42:41', '2015-04-02 13:03:41');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (37, 78, 'voluptatibus', 37, '2011-07-07 07:16:05', '2017-06-09 17:13:30');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (38, 98, 'voluptatibus', 38, '2019-07-07 18:02:43', '2018-04-09 05:31:01');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (39, 4, 'consequatur', 39, '2012-03-30 10:48:15', '2016-04-04 13:51:04');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (40, 61, 'quia', 40, '2015-05-01 07:36:58', '2015-01-09 10:49:27');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (41, 1, 'adipisci', 41, '2013-01-17 02:20:51', '2017-12-30 23:35:01');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (42, 52, 'et', 42, '2019-05-19 10:57:09', '2016-03-12 15:42:55');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (43, 26, 'voluptas', 43, '2015-11-29 15:37:50', '2012-12-22 12:37:38');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (44, 93, 'laborum', 44, '2017-10-03 16:40:27', '2012-03-31 13:39:39');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (45, 98, 'quo', 45, '2018-05-07 18:02:38', '2011-06-19 23:07:52');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (46, 71, 'perferendis', 46, '2019-06-30 14:04:46', '2011-08-29 04:37:30');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (47, 69, 'vel', 47, '2014-12-11 07:06:45', '2016-05-23 20:31:07');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (48, 53, 'aut', 48, '2014-11-23 14:53:17', '2017-09-12 12:40:30');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (49, 92, 'quia', 49, '2019-08-07 15:30:11', '2018-01-11 11:32:00');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (50, 97, 'facilis', 50, '2021-01-11 04:52:09', '2019-05-25 16:50:48');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (51, 37, 'qui', 51, '2013-08-14 03:38:09', '2015-12-14 06:10:58');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (52, 52, 'quasi', 52, '2019-12-21 01:19:51', '2014-09-19 04:59:19');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (53, 74, 'temporibus', 53, '2018-07-30 17:39:43', '2018-04-09 06:31:17');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (54, 34, 'facere', 54, '2013-10-18 15:38:40', '2012-04-09 00:21:05');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (55, 11, 'ea', 55, '2018-10-29 11:08:25', '2019-03-19 05:09:49');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (56, 74, 'qui', 56, '2016-03-26 08:10:15', '2011-07-07 20:02:32');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (57, 44, 'est', 57, '2014-10-04 14:05:52', '2012-09-10 11:57:45');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (58, 79, 'et', 58, '2015-10-24 02:29:56', '2016-03-16 01:27:25');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (59, 95, 'et', 59, '2016-02-07 15:22:45', '2015-01-07 14:20:52');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (60, 73, 'ab', 60, '2019-04-01 00:28:13', '2015-01-26 22:49:33');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (61, 2, 'et', 61, '2013-07-04 23:17:32', '2017-01-03 23:22:29');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (62, 96, 'corrupti', 62, '2019-05-31 08:26:03', '2020-06-18 03:36:42');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (63, 78, 'architecto', 63, '2014-09-22 05:59:32', '2016-04-03 05:03:43');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (64, 32, 'omnis', 64, '2018-10-06 23:40:12', '2015-09-16 15:21:59');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (65, 38, 'assumenda', 65, '2015-10-09 21:17:07', '2018-05-11 13:57:06');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (66, 26, 'et', 66, '2016-10-24 23:25:01', '2018-10-29 01:17:01');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (67, 25, 'vel', 67, '2017-10-11 11:09:17', '2014-02-14 06:17:53');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (68, 91, 'deleniti', 68, '2016-12-24 07:27:28', '2015-07-16 20:11:45');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (69, 42, 'ut', 69, '2013-11-02 12:17:28', '2012-01-23 04:41:22');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (70, 25, 'quidem', 70, '2013-07-29 20:35:31', '2011-12-16 13:36:28');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (71, 6, 'eos', 71, '2018-08-14 19:37:42', '2015-06-11 06:21:55');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (72, 40, 'molestias', 72, '2015-08-31 13:15:59', '2019-11-01 10:17:38');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (73, 15, 'qui', 73, '2019-03-11 00:06:45', '2013-01-13 03:39:57');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (74, 70, 'quisquam', 74, '2016-11-21 23:36:53', '2011-09-12 14:22:25');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (75, 91, 'commodi', 75, '2017-07-14 12:55:31', '2014-07-27 09:44:30');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (76, 97, 'ipsa', 76, '2014-11-06 01:28:31', '2012-12-20 23:29:08');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (77, 14, 'molestias', 77, '2018-12-10 22:51:39', '2021-02-28 13:06:13');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (78, 34, 'eos', 78, '2011-09-27 18:17:01', '2019-10-20 23:59:30');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (79, 76, 'sunt', 79, '2018-03-26 21:36:18', '2018-10-22 12:46:18');
INSERT INTO `playlists` (`id`, `user_id`, `name`, `video_id`, `created_at`, `updated_at`) VALUES (80, 72, 'amet', 80, '2011-06-15 04:22:18', '2018-10-31 08:33:45');


-- Заполняем таблицу подписчиков канала
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (13, 2, '1977-04-03 15:13:35');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (27, 2, '1992-08-03 07:55:32');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (10, 3, '1998-01-25 20:08:42');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (8, 4, '2012-06-30 14:27:36');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (24, 4, '1996-06-06 12:40:11');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (15, 5, '1970-10-11 08:25:08');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (29, 5, '1981-07-16 06:41:05');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (5, 7, '1972-01-13 03:50:37');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (11, 8, '2014-04-09 16:21:03');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (21, 8, '1977-01-31 05:57:36');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (5, 9, '2018-03-02 14:46:21');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (23, 9, '2010-02-11 11:42:32');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (34, 15, '1981-09-07 08:59:21');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (13, 17, '1971-04-24 21:09:37');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (16, 19, '1990-12-26 12:20:04');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (12, 20, '1988-08-21 15:42:16');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (4, 21, '1998-06-13 11:15:49');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (31, 21, '1979-08-10 08:21:18');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (26, 22, '1971-03-14 09:17:21');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (17, 23, '1992-02-18 05:02:15');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (2, 24, '2008-06-22 03:57:36');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (22, 24, '1975-02-10 18:31:57');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (24, 24, '1980-03-03 02:10:49');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (3, 27, '2018-04-22 18:38:08');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (33, 27, '1970-07-27 04:56:32');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (4, 28, '1989-02-27 22:20:03');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (32, 28, '1993-05-21 07:08:36');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (33, 28, '2003-11-29 07:50:09');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (3, 30, '1979-12-16 09:21:31');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (15, 31, '2014-06-01 05:14:35');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (32, 31, '2012-03-11 00:42:00');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (17, 32, '2000-01-22 06:36:42');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (20, 32, '1977-05-05 11:31:00');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (6, 33, '1985-03-27 19:19:17');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (9, 34, '1999-01-31 02:10:12');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (31, 34, '2017-09-18 14:42:20');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (11, 35, '1970-05-21 06:55:44');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (8, 37, '1988-07-12 23:19:39');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (30, 37, '1980-02-09 00:10:35');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (32, 37, '2005-09-10 22:22:12');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (12, 38, '2012-12-20 19:02:32');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (27, 38, '2004-10-25 15:52:21');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (28, 38, '2012-03-04 08:56:55');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (20, 39, '1997-03-09 20:08:15');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (2, 41, '2020-02-13 22:45:44');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (23, 43, '2002-09-22 15:27:53');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (24, 43, '2008-01-25 21:36:47');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (11, 44, '2005-09-12 21:21:27');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (19, 45, '1975-03-19 15:40:50');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (3, 46, '1988-03-22 08:55:03');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (7, 46, '1986-01-17 11:07:54');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (25, 47, '1994-01-30 07:10:03');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (30, 47, '1973-05-19 01:04:22');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (14, 48, '1995-01-17 22:28:45');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (23, 48, '2020-08-26 13:22:52');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (1, 50, '1995-03-20 20:44:37');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (6, 50, '1980-03-20 10:40:47');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (22, 50, '2019-04-04 11:53:35');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (29, 53, '2013-07-10 17:01:48');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (2, 56, '1997-11-05 17:00:09');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (31, 56, '1982-09-03 11:40:59');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (22, 57, '1970-03-20 10:06:38');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (1, 61, '2015-10-10 02:24:21');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (4, 61, '2013-07-22 05:56:52');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (28, 61, '1985-06-06 18:37:59');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (19, 62, '2011-10-10 11:32:53');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (29, 63, '1979-11-06 16:11:15');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (15, 64, '1985-04-08 13:28:12');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (13, 65, '2008-08-11 04:38:44');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (10, 68, '1973-04-14 22:03:31');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (14, 68, '2016-05-17 21:20:07');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (7, 70, '1988-10-01 23:08:32');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (16, 70, '1994-02-12 07:43:22');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (18, 71, '1980-03-19 01:14:02');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (21, 71, '1986-04-13 20:50:06');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (14, 78, '1987-12-07 10:32:34');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (28, 78, '1988-04-06 16:02:46');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (5, 79, '1975-10-03 23:40:53');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (26, 81, '1975-08-19 12:05:49');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (8, 84, '1994-10-20 23:43:24');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (9, 84, '2003-10-17 18:43:12');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (19, 85, '2000-12-02 16:32:00');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (6, 89, '2000-03-26 00:53:32');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (7, 90, '1981-08-22 10:05:28');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (12, 90, '1972-07-05 10:33:59');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (25, 90, '1983-09-28 03:56:54');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (26, 90, '2015-12-01 10:13:34');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (34, 90, '2000-09-28 15:54:05');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (9, 91, '1997-02-20 16:27:15');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (1, 92, '1987-02-27 05:49:34');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (17, 92, '2018-06-19 02:14:27');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (18, 94, '2010-12-29 03:27:13');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (20, 94, '1992-04-17 15:34:50');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (10, 95, '2008-04-13 16:31:41');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (30, 95, '1976-12-28 12:33:38');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (25, 96, '2014-03-08 10:54:08');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (27, 96, '2007-01-23 03:09:25');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (18, 98, '1988-04-16 07:45:59');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (21, 98, '2001-05-04 08:45:52');
INSERT INTO `subscriptions` (`channel_id`, `user_id`, `created_at`) VALUES (16, 100, '1998-12-12 09:57:10');





 -- Меняем тип CHAR на ENUM в таблице профилей!
ALTER TABLE profiles CHANGE gender gendr ENUM('m', 'f') NOT NULL;
DESC profiles;

-- Убираем таблицу like_type и меняем столбец в таблице likes на ENUM
ALTER TABLE likes CHANGE like_type_id like_type ENUM('like', 'dislike');
DESC likes;

-- Очищаем столбец like_type для последующего рандомного заполнения
UPDATE likes SET like_type = NULL;

-- Создаем временную таблицу для рандомного заполнения like-type
CREATE TEMPORARY TABLE like_t (
name VARCHAR(255)
);
INSERT INTO like_t (name) VALUES
('like'), ('dislike');

SELECT * FROM like_t;

-- Заполняем табицу likes столбец like_type
UPDATE likes SET like_type = (SELECT name FROM like_t ORDER BY RAND() LIMIT 1);


-- Проверяем данные created_at and updated_at таблицы users
SELECT * FROM users WHERE created_at > updated_at;

-- Исправляем недостоверность в 57 строках.
UPDATE users SET created_at = NOW() WHERE created_at > updated_at;
UPDATE users SET updated_at = NOW() WHERE created_at > updated_at;

-- Проверяем таблицу users
SELECT * FROM users WHERE created_at > updated_at;

-- Проверяем данные created_at and updated_at таблицы profiles
SELECT * FROM profiles WHERE created_at > updated_at;

-- Исправляем недостоверность в 45 строках.
UPDATE profiles SET created_at = NOW() WHERE created_at > updated_at;
UPDATE profiles SET updated_at = NOW() WHERE created_at > updated_at;


-- Приводим в порядок все остальные таблицы
SELECT * FROM channels WHERE created_at > updated_at;

UPDATE channels SET created_at = NOW() WHERE created_at > updated_at;

UPDATE channels SET updated_at = NOW() WHERE created_at > updated_at;

-- Таблица videos
SELECT id FROM videos WHERE created_at > updated_at;

UPDATE videos SET created_at = NOW() WHERE created_at > updated_at;

UPDATE videos SET updated_at = NOW() WHERE created_at > updated_at;

-- Таблица video_types
SELECT id FROM video_types WHERE created_at > updated_at;
UPDATE video_types SET created_at = NOW() WHERE created_at > updated_at;
UPDATE video_types SET updated_at = NOW() WHERE created_at > updated_at;

-- Таблица comment_video
SELECT id FROM comment_video WHERE created_at > updated_at;
UPDATE comment_video SET created_at = NOW() WHERE created_at > updated_at;
UPDATE comment_video SET updated_at = NOW() WHERE created_at > updated_at;

-- Таблица history_whatch
SELECT id FROM history_whatch WHERE created_at > updated_at; -- Все в полном порядке

-- Таблица playlists
SELECT id FROM playlists WHERE created_at > updated_at;
UPDATE playlists SET created_at = NOW() WHERE created_at > updated_at;
UPDATE playlists SET updated_at = NOW() WHERE created_at > updated_at;

-- Таблица views
SELECT id FROM views WHERE created_at > updated_at;
UPDATE views SET created_at = NOW() WHERE created_at > updated_at;
UPDATE views SET updated_at = NOW() WHERE created_at > updated_at;

-- Редактируем столбец video_id в таблице views.
UPDATE views SET video_id = FLOOR(1 + (RAND() * 150));

-- Обновляем размер файлов в таблице videos
UPDATE videos SET size = FLOOR(100000 + (RAND() * 10000000)) WHERE size < 10000;

-- Заполняем метаданные в таблице videos
UPDATE videos SET metadate = CONCAT('{"owner":"', (SELECT CONCAT(name, ' ', 'channel_id', ' ', id) FROM channels WHERE id = channel_id),'"}');

-- Добовляем в UNSIGNED для channel_id что бы исправить ошибку несовместимости
ALTER TABLE videos MODIFY COLUMN channel_id INT UNSIGNED NOT NULL;
ALTER TABLE videos MODIFY COLUMN video_type_id INT UNSIGNED NOT NULL;


-- Так же редактируем столбец в таблице comment_video
ALTER TABLE comment_video MODIFY COLUMN video_id INT UNSIGNED NOT NULL;

-- Исправляем таблицу subscriptions для инициализации внешнего ключа
ALTER TABLE subscriptions MODIFY COLUMN channel_id INT UNSIGNED NOT NULL;
ALTER TABLE subscriptions MODIFY COLUMN user_id INT UNSIGNED NOT NULL;

-- Исправляем таблицу playlists для инициализации внешнего ключа
ALTER TABLE playlists MODIFY COLUMN user_id INT UNSIGNED NOT NULL;
ALTER TABLE playlists MODIFY COLUMN video_id INT UNSIGNED NOT NULL;

-- Исправляем таблицу views для инициализации внешнего ключа
ALTER TABLE views MODIFY COLUMN user_id INT UNSIGNED NOT NULL;
ALTER TABLE views MODIFY COLUMN video_id INT UNSIGNED NOT NULL;

-- *********************************************************************** Устанавливаем внешние ключи *************************************************

ALTER TABLE profiles 
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		

ALTER TABLE channels 
	ADD CONSTRAINT channels_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;

-- Связи для таблицы videos
DESC videos;
		
ALTER TABLE videos 
	ADD CONSTRAINT videos_channel_id_fk
		FOREIGN KEY (channel_id) REFERENCES channels(id)
			ON DELETE CASCADE;
		
ALTER TABLE videos 		
	ADD CONSTRAINT videos_video_type_id_fk
		FOREIGN KEY (video_type_id) REFERENCES video_types(id)
			ON DELETE CASCADE;
		
ALTER TABLE comment_video 		
	ADD CONSTRAINT comment_video_video_id_videos_id_fk
		FOREIGN KEY (video_id) REFERENCES videos(id)
			ON DELETE CASCADE;

ALTER TABLE comment_video 		
	ADD CONSTRAINT comment_video_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;

			
ALTER TABLE subscriptions 		
	ADD CONSTRAINT subscriptions_channels_id_fk
		FOREIGN KEY (channel_id) REFERENCES channels(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT subscriptions_users_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
DESC playlists;
		
ALTER TABLE playlists 		
	ADD CONSTRAINT playlists_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT playlists_videos_id_fk
		FOREIGN KEY (video_id) REFERENCES videos(id)
			ON DELETE CASCADE;
		
DESC views;

ALTER TABLE views 		
	ADD CONSTRAINT views_users_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT views_videos_id_fk
		FOREIGN KEY (video_id) REFERENCES videos(id)
			ON DELETE CASCADE;
		
DESC likes;

ALTER TABLE likes 	
	ADD CONSTRAINT likes_users_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
-- **************************************************************** СОЗДАЕМ ИНДЕКСЫ ****************************************************************
		
-- Индексы для таблицы users
		
CREATE INDEX users_first_name_last_name_indx
	ON users(first_name, last_name);

-- Уникальный индекс для поля e-mail

CREATE UNIQUE INDEX users_email_uniq ON users(email);

-- Уникальный индекс для поля телефон

CREATE UNIQUE INDEX users_phone_uq ON users(phone);

-- Индекс для названия канала пользователя

CREATE INDEX channels_name_idx on channels(name);

-- На название видео

CREATE INDEX videos_name_idx ON videos(name);

DESC users;
		
-- ************************************************************* Выборки *******************************************

-- Определить TOP 10 видероликов по количеству просмотров!

DESC views;

SELECT COUNT(user_id) AS user, video_id AS top_view_video 
	FROM views 
	GROUP BY video_id 
	ORDER BY user 
	DESC LIMIT 10;

-- Определить канал чье видео набрало больше всех просмотров поправить

SELECT COUNT(views.user_id) AS users, views.video_id, videos.name 
	FROM views
	LEFT JOIN videos
	ON views.video_id = videos.id
	GROUP BY video_id
	ORDER BY users
	DESC LIMIT 10;
	
SELECT * FROM views WHERE video_id = 111;

-- Определить видео с большем количеством лайков

SELECT COUNT(like_type) AS total_like, target_id 
	FROM likes
	WHERE like_type = 'like' 
	GROUP BY target_id 
	ORDER BY total_like 
	DESC;

-- Определить чьи видео набрали большее количество лайков

SELECT 
COUNT(likes.user_id) AS total_likes,
likes.target_id AS target_id,
videos.channel_id,
channels.name AS channel_name,
CONCAT(users.first_name, ' ', users.last_name) AS owner_channel
FROM likes
LEFT JOIN videos
	ON likes.target_id = videos.id
LEFT JOIN channels
	ON videos.channel_id = channels.id
LEFT JOIN users
	ON channels.id = users.id
WHERE likes.like_type = 'like'
GROUP BY target_id
ORDER BY total_likes
DESC;

-- ************************************************  Представления **********************************

-- Создадим представление для Таблицы channels где имя канала будет содержаться в отсортерованном виде

CREATE VIEW chan AS SELECT * FROM channels ORDER BY name;

SELECT * FROM chan;

-- Создадим представление где отсортируем пользователей кому больше 18 лет

DROP VIEW IF EXISTS age_18;
CREATE VIEW age_18 AS SELECT profiles.user_id,
CONCAT(users.first_name, ' ', users.last_name) AS users,
TIMESTAMPDIFF(YEAR, profiles.birthday, NOW()) AS age
FROM profiles
LEFT JOIN users
	ON profiles.user_id = users.id
WHERE TIMESTAMPDIFF(YEAR, profiles.birthday, NOW()) > 18
ORDER BY age;

SELECT * FROM age_18;

-- ************************************************  ТРИГГЕРЫ *****************************************

-- Создаем функцию проверки значений для таблицы лайков ( взята из уроков).


DDROP FUNCTION IF EXISTS is_row_exists;

DELIMITER //

CREATE FUNCTION is_row_exists (target_id INT, target_type VARCHAR(50))
RETURNS BOOLEAN READS SQL DATA -- Происходит обращение к данным таблицы!

BEGIN
  CASE target_type
    WHEN 'comment_video' THEN
      RETURN EXISTS(SELECT 1 FROM comment_video WHERE id = target_id);
    WHEN 'videos' THEN 
      RETURN EXISTS(SELECT 1 FROM videos WHERE id = target_id);
      RETURN FALSE;
  END CASE;
END//

DELIMITER ;

SELECT is_row_exists(118, 'videos');

-- Тригер для проверки

DROP TRIGGER IF EXISTS likes_validation;
DELIMITER //

CREATE TRIGGER likes_validation BEFORE INSERT ON likes

FOR EACH ROW BEGIN
  IF !is_row_exists(NEW.target_id, NEW.target_types) THEN -- Если строка не существует то вызывается ошибка!
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding like! Target table doesn't contain row id provided!";
  END IF;
END//

DELIMITER ;

INSERT INTO likes (user_id, like_type, target_id, target_types) VALUES (95, 'like', 1000, 'videos');

DESC likes;
		

-- Тригер для извлечения количества пользователей 18+ в переменную @age_18_plus

DROP TRIGGER IF EXISTS count_age_users;
DELIMITER //

CREATE TRIGGER count_age_users AFTER INSERT ON profiles

FOR EACH ROW 
BEGIN
	
  SELECT COUNT(*) INTO @age_18_plus FROM age_18;
  
END//

DELIMITER ;

SELECT @age_18_plus;
		
		
INSERT INTO profiles (user_id, gendr, birthday, city, country) VALUES
(101, 'f', '1985-03-31', 'Moscow', 'Russia');

INSERT INTO users (id, first_name, last_name, email, phone) VALUES
(101, 'Alex', 'Pelikan', 'pelikan@gmail.com', 78965432913);

SELECT * FROM profiles;
	

















































