#
# TABLE STRUCTURE FOR: video_types
#

DROP TABLE IF EXISTS `video_types`;

CREATE TABLE `video_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `video_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, '360', '2017-09-21 03:49:30', '2016-06-27 08:25:53');
INSERT INTO `video_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'H263', '2015-10-05 22:18:16', '2017-01-07 08:16:02');
INSERT INTO `video_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'VR', '2021-01-17 18:25:55', '2015-01-18 00:25:47');


