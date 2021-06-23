#
# TABLE STRUCTURE FOR: like_type
#

DROP TABLE IF EXISTS `like_type`;

CREATE TABLE `like_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Лайк или Дизлайк',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `like_type` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'like', '2013-08-09 06:45:33', '2013-06-03 09:35:43');
INSERT INTO `like_type` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'dislike', '2016-01-11 09:09:06', '2019-11-10 09:26:12');


