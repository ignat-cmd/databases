#
# TABLE STRUCTURE FOR: playlists
#

DROP TABLE IF EXISTS `playlists`;

CREATE TABLE `playlists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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


