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

INSERT INTO `video_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'VR', '2016-03-07 15:42:51', '2021-03-21 17:34:41');
INSERT INTO `video_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, '360', '2013-10-22 00:39:42', '2013-07-30 09:46:48');
INSERT INTO `video_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'H263', '2020-12-23 21:23:11', '2021-01-15 21:44:46');


