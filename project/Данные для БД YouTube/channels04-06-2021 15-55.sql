#
# TABLE STRUCTURE FOR: channels
#

DROP TABLE IF EXISTS `channels`;

CREATE TABLE `channels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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


