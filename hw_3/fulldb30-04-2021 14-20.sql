#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'qui', '2013-04-13 20:49:48', '2014-07-08 16:55:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ut', '2011-08-21 07:38:58', '2020-06-09 10:50:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'consequuntur', '2020-01-20 22:42:01', '2021-02-06 22:29:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'facere', '2017-02-02 03:57:47', '2018-05-29 15:25:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'exercitationem', '2013-11-11 06:20:24', '2021-01-02 16:05:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'autem', '2013-03-02 07:46:17', '2019-01-23 03:16:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'voluptatibus', '2016-03-17 11:33:30', '2012-03-09 17:54:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'ea', '2013-06-14 18:18:15', '2018-07-10 10:54:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'veniam', '2015-09-13 01:30:10', '2016-05-13 12:59:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'inventore', '2014-11-30 19:55:31', '2015-07-23 15:43:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'quae', '2011-08-21 18:41:04', '2020-06-11 16:16:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'iure', '2018-12-23 23:35:11', '2016-06-24 11:08:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'sint', '2012-10-11 23:26:50', '2021-03-04 08:00:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'eveniet', '2017-04-09 13:11:26', '2016-11-30 23:10:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'atque', '2012-04-14 00:50:36', '2014-08-10 01:41:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'aliquid', '2013-09-01 08:57:50', '2019-01-21 07:34:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'quibusdam', '2013-06-02 00:24:25', '2013-04-12 20:43:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'quas', '2014-03-31 07:55:33', '2016-03-07 04:27:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'labore', '2015-10-02 17:40:03', '2017-09-25 21:33:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'eligendi', '2018-07-19 09:12:07', '2018-11-22 20:43:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'culpa', '2017-02-14 01:49:11', '2012-04-15 15:43:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'pariatur', '2014-08-14 06:28:12', '2017-04-01 07:54:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'optio', '2017-07-01 00:44:20', '2011-10-25 15:45:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'doloribus', '2016-12-24 15:54:47', '2013-04-15 21:10:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'quo', '2015-03-07 15:13:37', '2017-03-28 03:13:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'sit', '2017-02-02 22:32:13', '2014-12-05 03:18:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'maiores', '2011-09-04 18:55:28', '2020-02-09 04:23:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'dolor', '2011-09-17 07:07:32', '2014-11-13 01:20:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'vitae', '2017-10-05 13:15:06', '2013-02-24 23:34:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'et', '2013-10-18 23:11:20', '2015-02-15 05:24:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'aperiam', '2014-01-10 16:18:51', '2019-06-29 08:01:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'consectetur', '2013-09-10 22:43:19', '2017-12-20 00:19:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'quis', '2013-03-26 15:33:51', '2012-02-28 18:05:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'ipsa', '2014-02-19 02:27:06', '2011-06-26 10:53:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'aut', '2016-01-31 17:01:20', '2016-05-24 00:11:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'facilis', '2012-03-20 21:58:38', '2017-07-11 03:52:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'ullam', '2016-12-09 14:51:35', '2013-03-21 11:38:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'rem', '2015-10-13 13:19:48', '2011-08-01 16:59:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'dicta', '2020-02-22 14:08:30', '2014-10-12 15:13:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'nesciunt', '2020-11-28 20:53:00', '2013-12-18 19:15:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'explicabo', '2014-03-11 10:47:10', '2020-09-08 09:02:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'aliquam', '2018-10-14 12:13:48', '2021-04-10 15:33:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'id', '2018-08-25 20:55:11', '2017-06-07 17:19:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'alias', '2019-08-05 13:45:31', '2011-05-16 07:33:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'dolorem', '2016-07-27 09:08:03', '2013-10-21 23:55:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'molestiae', '2020-12-28 13:33:21', '2020-01-08 11:20:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'error', '2017-07-07 13:33:52', '2019-10-03 19:01:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'harum', '2020-02-21 20:55:35', '2015-08-30 16:45:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'commodi', '2017-05-14 23:45:06', '2018-09-25 20:59:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'cum', '2019-10-18 00:35:38', '2011-05-11 14:01:03');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2017-01-13 08:20:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 51, '2018-04-08 13:49:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2016-10-07 04:20:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '2014-08-23 21:08:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2018-01-26 22:35:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 53, '2015-01-26 10:57:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2015-09-22 08:14:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 54, '2017-08-20 11:58:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2013-03-19 02:26:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 55, '2013-05-31 06:58:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2011-06-06 22:56:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 56, '2013-12-11 08:31:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2019-08-10 03:34:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 57, '2012-01-26 03:03:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2013-01-10 12:04:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 58, '2020-03-22 15:32:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2013-06-01 21:10:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 59, '2015-09-01 15:24:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2015-03-30 14:39:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 60, '2017-12-16 07:49:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2018-04-24 19:08:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 61, '2019-04-04 21:47:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2017-06-13 05:44:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 62, '2014-08-07 18:54:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2016-06-11 02:13:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 63, '2019-07-02 05:57:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '2019-10-10 02:19:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 64, '2019-12-27 07:46:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2017-05-03 05:44:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 65, '2013-08-08 22:13:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '2012-05-31 05:45:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 66, '2018-11-23 02:31:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2016-12-24 20:46:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 67, '2016-04-25 07:58:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '2014-03-11 01:33:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 68, '2017-03-05 00:58:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '2017-09-27 00:28:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 69, '2018-02-26 14:27:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2016-08-10 20:57:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 70, '2014-01-01 21:54:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '2015-03-03 11:15:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 71, '2019-12-27 02:18:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2018-05-03 14:50:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 72, '2016-12-05 15:20:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '2016-01-03 03:43:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 73, '2017-10-21 14:05:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '2015-07-10 13:26:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 74, '2015-06-15 20:38:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '2011-08-11 14:22:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 75, '2017-12-08 06:27:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2015-10-05 03:47:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 76, '2013-08-06 12:09:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2015-02-18 14:04:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 77, '2018-09-22 01:21:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '2019-12-01 03:46:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 78, '2013-06-02 17:13:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '2011-09-11 19:39:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 79, '2016-01-15 08:00:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2017-01-12 09:51:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 80, '2019-07-21 15:57:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '2011-11-12 20:39:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 81, '2016-01-29 09:13:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '2018-01-25 12:10:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 82, '2019-06-05 14:49:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '2017-05-04 23:45:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 83, '2012-10-19 10:44:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2014-07-20 06:15:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 84, '2016-10-09 01:27:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '2016-05-10 10:58:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 85, '2014-04-13 00:01:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '2014-04-28 19:46:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 86, '2013-01-27 00:09:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '2019-07-21 10:33:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 87, '2021-01-27 09:22:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '2021-04-09 02:42:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 88, '2021-01-22 11:03:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2017-05-07 17:36:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 89, '2011-11-15 18:26:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '2016-11-06 21:00:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 90, '2017-10-30 17:17:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '2021-02-02 15:01:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 91, '2020-02-10 20:02:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '2015-01-01 10:25:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 92, '2013-10-25 22:45:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '2012-01-04 03:13:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 93, '2020-04-06 17:06:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '2017-03-19 16:44:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 94, '2020-10-14 07:37:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '2014-12-03 06:50:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 95, '2014-09-01 00:55:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '2016-07-25 13:30:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 96, '2011-07-19 17:22:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '2015-09-25 20:58:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 97, '2018-05-12 11:46:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '2019-03-14 18:54:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 98, '2017-10-26 07:18:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '2014-01-25 22:39:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 99, '2019-01-13 00:14:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '2016-07-23 07:50:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 100, '2018-11-27 11:10:23');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 10, 1, '2016-07-22 12:08:45', '2016-05-11 10:42:45', '2019-05-06 19:12:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 79, 1, '2017-11-04 18:12:13', '2018-10-18 23:15:12', '2012-12-08 03:43:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 98, 3, '2018-04-21 05:20:01', '2012-07-05 18:10:49', '2014-11-22 08:57:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 57, 3, '2013-11-14 21:40:21', '2012-11-20 06:33:42', '2014-12-16 14:45:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 28, 1, '2012-09-24 00:37:49', '2014-09-24 15:04:56', '2019-10-30 02:58:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 58, 2, '2020-02-28 23:31:13', '2016-08-11 03:00:02', '2017-01-20 12:20:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 45, 2, '2013-03-19 12:27:38', '2015-09-12 22:44:29', '2014-02-28 18:10:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 49, 2, '2016-05-24 20:47:17', '2018-03-15 21:02:32', '2019-01-10 08:30:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 90, 1, '2016-06-10 12:53:42', '2015-01-22 02:18:50', '2011-05-13 06:59:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 42, 1, '2012-11-01 05:29:36', '2014-10-16 14:18:41', '2014-06-11 10:44:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 47, 2, '2015-05-12 09:34:33', '2017-03-11 06:54:52', '2014-11-04 20:55:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 2, 2, '2017-11-25 03:43:47', '2018-05-24 04:50:29', '2020-03-20 18:24:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 65, 1, '2020-05-21 06:34:15', '2012-09-13 03:08:52', '2016-07-13 13:11:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 31, 2, '2019-09-03 05:35:09', '2020-07-10 20:55:05', '2018-10-17 14:57:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 77, 1, '2019-02-09 02:42:12', '2011-08-06 02:04:43', '2018-01-04 08:24:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 79, 1, '2014-08-21 23:40:19', '2014-04-20 03:27:47', '2013-05-19 10:16:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 8, 1, '2012-03-13 21:23:11', '2017-08-23 23:40:09', '2019-07-23 06:59:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 40, 4, '2020-09-09 02:53:38', '2018-11-08 23:21:48', '2012-07-05 07:54:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 51, 2, '2019-01-13 20:49:20', '2018-04-13 04:50:39', '2018-03-14 10:29:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 10, 3, '2011-09-12 10:28:58', '2013-05-02 10:56:46', '2012-08-30 10:32:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 79, 3, '2019-10-07 18:35:46', '2013-03-16 12:47:32', '2018-04-09 03:55:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 3, 2, '2018-07-07 17:24:41', '2016-06-10 01:46:50', '2020-05-13 06:18:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 57, 1, '2016-11-20 22:28:02', '2014-12-04 10:36:38', '2011-10-31 08:22:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 71, 4, '2014-02-13 11:14:00', '2018-01-24 22:22:35', '2012-12-15 10:24:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 97, 3, '2018-09-20 19:25:22', '2013-01-15 11:45:43', '2017-09-08 21:07:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 89, 3, '2011-07-03 02:55:03', '2011-07-15 01:24:43', '2016-05-19 08:45:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 53, 3, '2013-09-05 13:12:15', '2019-01-30 18:45:15', '2018-06-09 22:28:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 46, 3, '2013-12-23 12:04:40', '2020-05-02 02:11:58', '2016-04-11 21:48:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 99, 3, '2015-07-01 07:53:50', '2012-05-28 18:43:32', '2019-12-11 19:14:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 64, 3, '2015-10-04 17:03:46', '2019-07-05 01:23:42', '2013-02-10 16:53:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 87, 2, '2012-06-15 01:43:13', '2018-12-31 07:40:33', '2018-12-09 15:58:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 40, 1, '2012-03-19 02:47:04', '2012-08-27 02:55:44', '2013-03-24 02:22:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 3, 4, '2020-09-28 03:33:12', '2021-01-25 09:05:31', '2012-09-30 03:21:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 29, 3, '2020-03-11 10:53:32', '2011-06-06 10:00:57', '2011-10-15 06:35:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 19, 2, '2019-08-24 06:00:18', '2020-02-18 15:14:11', '2020-11-26 16:55:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 24, 2, '2020-01-17 17:07:13', '2015-05-10 09:22:38', '2014-10-18 11:06:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 27, 4, '2018-12-23 17:53:43', '2018-05-23 18:33:59', '2018-03-14 17:43:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 69, 1, '2020-08-30 19:31:08', '2017-03-19 23:55:39', '2019-12-30 11:20:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 64, 2, '2017-07-10 19:04:48', '2020-06-11 22:32:05', '2019-04-08 18:10:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 86, 1, '2016-08-19 06:17:06', '2016-09-30 18:36:49', '2011-09-21 03:01:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 10, 3, '2018-11-29 02:40:06', '2018-10-28 05:11:14', '2020-06-21 18:45:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 5, 2, '2016-11-12 03:34:01', '2016-07-31 00:46:48', '2014-09-08 07:35:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 42, 1, '2014-09-03 12:44:35', '2018-06-24 00:24:45', '2014-05-06 02:20:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 45, 2, '2017-07-20 09:50:31', '2015-01-30 23:35:24', '2016-02-16 10:11:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 100, 1, '2019-03-27 11:32:49', '2012-02-14 18:04:46', '2019-02-24 19:12:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 87, 4, '2017-11-11 15:53:44', '2017-07-05 06:02:32', '2014-05-13 15:08:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 23, 2, '2014-04-01 21:38:52', '2013-09-02 07:29:50', '2018-11-29 03:33:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 21, 1, '2014-03-28 04:03:34', '2013-08-26 18:28:53', '2016-04-07 18:55:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 43, 3, '2019-09-08 17:17:57', '2020-05-21 19:51:46', '2020-08-08 06:29:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 17, 2, '2011-11-06 01:02:08', '2018-11-26 08:44:48', '2012-07-06 02:14:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 7, 1, '2017-11-01 23:03:50', '2020-11-06 02:23:59', '2012-11-12 04:15:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 33, 4, '2012-07-03 05:28:46', '2021-02-18 07:37:29', '2016-03-08 05:44:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 18, 3, '2012-11-14 12:14:07', '2020-10-20 09:53:56', '2013-06-03 06:03:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 13, 4, '2014-05-13 08:12:48', '2018-05-13 11:07:32', '2016-07-18 20:30:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 15, 4, '2018-11-20 05:23:43', '2018-07-05 23:46:28', '2019-12-11 23:53:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 23, 2, '2017-10-29 18:51:30', '2011-07-10 02:22:20', '2017-05-01 22:09:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 49, 3, '2012-04-18 12:16:56', '2015-11-16 05:38:12', '2013-11-07 10:23:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 22, 4, '2019-06-23 11:49:56', '2014-09-14 01:32:00', '2013-01-01 07:09:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 89, 2, '2018-10-29 00:27:47', '2016-05-14 02:46:12', '2016-01-08 20:11:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 25, 2, '2014-05-22 07:15:20', '2016-03-14 14:58:26', '2016-02-05 20:09:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 41, 2, '2021-03-11 16:47:11', '2018-10-24 11:25:05', '2013-06-18 17:25:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 36, 4, '2017-01-17 19:20:40', '2017-05-22 02:36:45', '2014-04-30 04:20:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 85, 2, '2019-12-19 15:08:31', '2013-12-26 21:08:07', '2013-03-31 06:22:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 45, 3, '2016-12-19 14:20:46', '2017-05-16 20:32:13', '2017-04-18 13:55:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 91, 1, '2016-11-04 12:35:47', '2017-06-19 11:54:53', '2011-08-04 10:15:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 9, 2, '2012-02-08 00:33:56', '2015-05-29 10:13:41', '2017-01-28 16:40:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 73, 4, '2016-03-29 20:14:18', '2013-01-21 09:28:09', '2014-11-09 02:40:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 39, 1, '2011-06-29 11:45:45', '2016-10-14 19:54:04', '2018-10-03 17:54:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 29, 2, '2020-09-27 23:53:38', '2017-07-23 19:14:40', '2014-06-17 15:36:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 55, 1, '2013-09-28 09:40:21', '2020-03-20 10:38:42', '2013-02-02 04:58:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 43, 3, '2017-06-19 22:06:23', '2019-07-09 02:05:02', '2012-01-24 16:51:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 58, 1, '2017-08-20 04:18:24', '2018-02-02 09:45:34', '2013-05-26 21:26:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 71, 3, '2017-05-05 19:55:40', '2014-05-02 02:34:18', '2012-07-01 15:50:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 94, 3, '2011-06-08 13:04:25', '2011-09-30 11:45:33', '2013-04-05 17:11:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 63, 3, '2018-08-24 21:36:35', '2015-05-19 11:23:11', '2020-11-14 15:31:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 4, 1, '2012-09-18 13:12:53', '2019-01-02 06:41:48', '2018-03-29 12:13:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 24, 2, '2015-11-14 05:02:27', '2017-06-24 01:40:06', '2012-04-09 20:49:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 46, 4, '2011-08-06 20:20:23', '2021-02-12 18:06:12', '2017-03-28 02:30:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 42, 4, '2015-08-22 07:05:24', '2015-01-14 15:15:07', '2018-02-10 11:54:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 51, 3, '2015-04-28 10:28:06', '2017-05-08 19:01:37', '2020-02-18 16:51:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 82, 2, '2011-12-26 01:22:38', '2015-03-22 09:40:20', '2013-01-30 02:09:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 87, 1, '2015-05-29 02:52:18', '2015-04-17 03:22:38', '2020-10-02 10:11:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 2, 4, '2018-12-26 10:43:21', '2019-06-05 11:51:21', '2011-08-18 11:12:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 19, 1, '2013-05-21 02:09:06', '2017-05-11 08:14:02', '2020-07-07 08:53:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 86, 4, '2015-10-30 02:58:31', '2016-05-12 09:11:36', '2011-05-03 21:22:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 95, 4, '2021-03-06 22:08:38', '2012-04-22 16:10:01', '2014-10-13 11:23:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 36, 3, '2013-04-24 11:03:16', '2014-04-29 02:06:54', '2019-08-09 15:46:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 54, 3, '2011-06-28 13:14:33', '2017-10-23 01:09:15', '2018-10-09 11:58:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 33, 1, '2020-06-28 19:24:59', '2014-01-27 13:36:50', '2012-07-01 10:19:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 65, 2, '2017-03-01 01:13:15', '2015-03-05 12:50:32', '2013-10-11 21:49:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 28, 4, '2011-08-28 09:56:37', '2015-02-24 21:26:01', '2018-01-12 04:16:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 41, 2, '2013-03-25 08:34:23', '2012-12-03 23:22:37', '2015-09-24 02:40:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 50, 3, '2018-02-22 23:27:31', '2018-01-02 11:38:12', '2020-01-15 23:12:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 71, 4, '2013-06-19 12:35:41', '2013-11-07 04:31:40', '2014-06-04 09:50:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 82, 4, '2018-09-21 00:21:19', '2011-09-13 11:06:19', '2011-06-01 17:44:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 61, 2, '2020-03-05 00:21:10', '2020-12-21 18:31:28', '2019-05-19 14:25:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 75, 1, '2015-05-25 00:38:04', '2016-02-13 18:30:48', '2019-06-25 12:52:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 32, 1, '2012-01-30 23:29:45', '2017-08-17 15:31:49', '2012-05-23 07:47:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 75, 1, '2013-02-28 18:26:09', '2014-05-22 14:04:54', '2011-08-31 17:34:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 81, 2, '2020-12-25 04:54:57', '2013-06-03 03:31:12', '2015-10-25 15:14:56');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'friend', '2017-06-14 13:45:57', '2013-03-27 06:38:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'interested in', '2016-06-02 01:04:17', '2015-04-12 08:05:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'free', '2019-10-12 13:07:14', '2020-12-20 10:42:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'married', '2018-11-25 06:19:21', '2015-10-08 08:27:00');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, '1', 3, NULL, 1, '2017-01-31 01:35:36', '2019-08-03 04:31:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, '2', 43, NULL, 2, '2013-10-29 11:46:50', '2016-12-24 12:23:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, '3', 81654400, NULL, 3, '2016-04-04 11:16:49', '2012-04-04 13:55:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, '4', 206795, NULL, 4, '2016-11-23 17:37:00', '2013-02-25 14:37:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, '5', 2, NULL, 5, '2015-07-30 02:26:25', '2013-03-24 07:32:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, '6', 10587945, NULL, 6, '2013-03-05 18:34:38', '2020-11-14 17:47:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, '7', 57458709, NULL, 7, '2020-09-13 15:03:12', '2014-10-21 23:36:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, '8', 8259735, NULL, 8, '2017-02-02 03:18:43', '2015-01-27 16:40:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, '9', 345966, NULL, 9, '2018-11-28 14:13:34', '2019-04-14 11:55:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, '10', 565739, NULL, 10, '2016-07-05 02:19:35', '2017-02-05 18:59:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, '11', 526917, NULL, 11, '2011-10-04 10:40:20', '2017-09-23 02:25:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, '12', 496714464, NULL, 12, '2013-09-02 05:09:11', '2013-06-17 15:25:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, '13', 2411, NULL, 13, '2015-11-04 10:15:24', '2018-08-15 20:21:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, '14', 6272044, NULL, 14, '2012-05-14 14:37:07', '2017-08-11 12:39:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, '15', 8500206, NULL, 15, '2019-08-05 17:51:45', '2019-08-24 17:36:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, '16', 4078, NULL, 16, '2015-02-21 12:10:51', '2011-10-30 11:40:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, '17', 92148356, NULL, 17, '2012-01-13 16:06:35', '2012-09-11 02:15:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, '18', 1723, NULL, 18, '2020-08-22 19:04:32', '2015-01-17 07:05:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, '19', 7140, NULL, 19, '2016-11-30 20:32:28', '2015-06-05 19:19:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, '20', 58691, NULL, 20, '2012-08-18 03:58:07', '2015-05-29 08:16:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, '21', 545, NULL, 21, '2017-01-19 15:26:58', '2014-03-17 19:46:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, '22', 9, NULL, 22, '2020-01-01 17:08:50', '2011-09-08 21:46:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, '23', 3077, NULL, 23, '2013-09-10 12:51:04', '2013-09-27 20:51:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, '24', 6, NULL, 24, '2020-03-24 01:47:32', '2012-08-10 16:56:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, '25', 71689, NULL, 25, '2016-10-06 08:20:15', '2013-09-04 08:24:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, '26', 3, NULL, 26, '2015-09-25 12:45:20', '2017-06-08 06:58:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, '27', 3, NULL, 27, '2012-05-09 00:58:52', '2018-05-01 11:17:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, '28', 134579924, NULL, 28, '2019-06-09 04:05:13', '2017-07-30 20:43:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, '29', 20722, NULL, 29, '2021-04-15 20:15:35', '2011-11-28 00:06:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, '30', 29868, NULL, 30, '2019-08-02 10:47:24', '2012-10-11 18:37:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, '31', 0, NULL, 31, '2015-07-29 18:02:20', '2012-08-26 12:24:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, '32', 686932473, NULL, 32, '2011-11-23 12:06:27', '2019-07-16 05:46:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, '33', 752, NULL, 33, '2017-03-13 15:23:18', '2011-09-01 16:44:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, '34', 0, NULL, 34, '2016-05-16 15:28:25', '2012-03-12 01:47:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, '35', 5572, NULL, 35, '2017-01-31 10:23:28', '2014-01-28 18:44:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, '36', 7527, NULL, 36, '2016-04-01 12:10:24', '2013-09-08 09:38:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, '37', 893163191, NULL, 37, '2012-01-07 15:46:37', '2016-07-02 21:55:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, '38', 57957, NULL, 38, '2018-10-08 07:56:25', '2019-06-15 16:44:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, '39', 83668238, NULL, 39, '2017-06-10 17:47:33', '2012-12-06 17:43:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, '40', 2706, NULL, 40, '2017-12-03 22:07:22', '2017-07-31 00:38:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, '41', 156, NULL, 41, '2019-10-02 10:06:08', '2017-08-10 01:18:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, '42', 77395, NULL, 42, '2017-12-20 07:09:56', '2015-11-11 22:26:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, '43', 120941, NULL, 43, '2012-09-02 07:25:40', '2013-03-28 13:43:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, '44', 5247, NULL, 44, '2020-09-02 17:06:52', '2012-02-27 03:16:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, '45', 0, NULL, 45, '2012-04-10 18:24:27', '2019-10-06 09:32:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, '46', 175058, NULL, 46, '2019-08-27 10:18:50', '2016-05-03 16:26:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, '47', 802, NULL, 47, '2015-01-31 11:12:12', '2011-07-30 04:46:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, '48', 23, NULL, 48, '2014-03-05 04:41:00', '2014-07-05 18:08:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, '49', 84241765, NULL, 49, '2016-01-01 12:14:20', '2017-10-25 10:37:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, '50', 0, NULL, 50, '2015-03-03 12:15:35', '2016-08-04 23:23:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, '51', 8624133, NULL, 51, '2015-01-17 09:43:19', '2017-09-22 04:39:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, '52', 32992165, NULL, 52, '2014-07-14 06:27:12', '2012-03-31 21:05:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, '53', 58, NULL, 53, '2016-08-12 14:05:44', '2016-07-23 10:42:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, '54', 9, NULL, 54, '2018-05-26 22:55:16', '2012-05-01 19:20:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, '55', 929490, NULL, 55, '2015-06-07 16:44:46', '2018-06-20 10:28:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, '56', 99, NULL, 56, '2016-12-30 22:27:27', '2019-05-03 09:36:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, '57', 2, NULL, 57, '2019-12-13 03:37:20', '2018-02-19 17:34:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, '58', 160, NULL, 58, '2013-02-05 18:25:52', '2014-09-04 12:47:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, '59', 5, NULL, 59, '2014-12-19 04:04:12', '2014-10-27 07:04:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, '60', 35, NULL, 60, '2014-05-02 22:14:33', '2014-02-21 02:41:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, '61', 968362347, NULL, 61, '2012-08-16 03:24:37', '2012-07-24 14:23:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, '62', 0, NULL, 62, '2011-05-20 10:48:43', '2020-09-12 17:00:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, '63', 119, NULL, 63, '2021-01-30 14:42:24', '2014-04-28 13:21:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, '64', 42, NULL, 64, '2013-06-25 08:03:24', '2013-12-30 09:55:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, '65', 4706, NULL, 65, '2011-07-12 19:49:08', '2020-08-18 01:12:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, '66', 2, NULL, 66, '2013-01-18 13:33:48', '2016-04-16 13:44:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, '67', 8764393, NULL, 67, '2020-08-10 05:54:41', '2017-05-14 04:48:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, '68', 8488, NULL, 68, '2019-10-08 00:13:39', '2020-06-24 01:49:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, '69', 64546171, NULL, 69, '2014-01-30 09:05:01', '2015-01-19 21:33:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, '70', 345837, NULL, 70, '2019-04-17 01:49:26', '2019-07-19 08:31:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, '71', 96, NULL, 71, '2016-06-10 14:13:25', '2020-11-10 00:43:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, '72', 23936, NULL, 72, '2019-02-02 22:04:46', '2016-08-14 13:33:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, '73', 73, NULL, 73, '2017-09-11 23:17:00', '2012-12-10 11:46:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, '74', 200948046, NULL, 74, '2020-03-30 15:40:41', '2021-01-07 09:54:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, '75', 98682540, NULL, 75, '2017-03-05 07:54:57', '2016-03-02 02:54:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, '76', 11, NULL, 76, '2011-08-17 13:46:46', '2013-10-31 22:10:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, '77', 5339, NULL, 77, '2020-03-23 08:10:19', '2016-02-25 04:17:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, '78', 871377, NULL, 78, '2016-12-18 10:49:33', '2013-06-28 17:18:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, '79', 55340689, NULL, 79, '2018-11-14 15:52:23', '2016-08-09 00:10:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, '80', 5842788, NULL, 80, '2012-02-04 03:05:35', '2011-08-11 09:03:54');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'id', '2015-01-07 15:34:46', '2014-05-19 01:28:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'nisi', '2011-10-31 14:27:26', '2021-01-02 23:40:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'pariatur', '2013-10-16 07:48:04', '2017-08-26 05:32:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dolores', '2017-01-14 09:50:44', '2018-10-05 06:12:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'saepe', '2017-05-31 03:35:59', '2011-05-11 15:37:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'deleniti', '2020-02-10 06:46:54', '2019-05-06 14:17:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'aut', '2011-09-16 17:03:21', '2015-07-13 15:22:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'voluptas', '2012-12-27 21:27:47', '2011-11-26 21:51:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'illo', '2011-10-26 10:47:35', '2014-07-05 08:00:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'qui', '2020-02-16 21:29:07', '2012-04-22 12:29:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'veritatis', '2015-10-11 06:00:25', '2014-06-12 03:51:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'quasi', '2021-04-27 10:28:56', '2019-05-29 14:12:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'eos', '2017-03-05 15:04:59', '2014-05-26 20:59:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'suscipit', '2020-06-10 03:18:12', '2017-05-09 08:00:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'rem', '2021-01-20 12:13:12', '2015-07-04 14:17:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'at', '2014-11-19 21:58:16', '2016-08-02 21:03:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'aperiam', '2015-10-11 13:49:03', '2016-09-12 12:43:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'vel', '2014-04-07 21:40:06', '2013-08-13 09:22:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'omnis', '2017-10-08 10:52:58', '2013-04-01 06:07:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'repudiandae', '2012-06-06 02:48:01', '2016-05-21 02:52:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'exercitationem', '2012-12-07 13:42:29', '2011-05-15 15:08:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'in', '2018-04-27 06:03:04', '2020-12-06 15:11:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'odit', '2014-11-21 12:46:03', '2018-12-14 11:01:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'iste', '2012-09-27 21:02:55', '2014-08-13 02:22:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'doloribus', '2019-11-23 18:08:04', '2014-10-14 01:16:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'animi', '2019-08-01 11:39:33', '2014-10-09 11:06:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'quibusdam', '2013-05-20 03:21:32', '2013-10-28 22:20:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'voluptatem', '2016-04-16 20:16:21', '2012-07-23 12:50:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'a', '2021-03-06 09:53:44', '2016-10-15 23:03:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'soluta', '2013-07-03 03:35:39', '2011-07-24 21:23:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'cumque', '2012-05-27 19:28:33', '2016-09-06 19:23:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'accusantium', '2012-12-12 05:14:01', '2018-06-07 14:44:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'dolor', '2019-05-18 05:30:24', '2020-04-03 02:15:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'corporis', '2016-10-27 15:12:31', '2019-08-21 19:03:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'ad', '2017-10-07 12:50:47', '2018-05-21 19:35:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'maxime', '2021-01-29 04:35:30', '2021-02-05 16:20:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'consequatur', '2014-05-22 09:30:10', '2011-07-04 07:13:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'autem', '2012-11-25 16:38:47', '2019-07-07 05:21:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'maiores', '2011-07-13 05:13:25', '2017-10-27 22:49:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'quisquam', '2012-03-20 16:52:18', '2016-01-30 21:38:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'vero', '2012-08-22 21:25:16', '2014-07-07 14:13:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'ex', '2017-11-20 00:49:53', '2017-05-05 11:30:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'ullam', '2018-09-28 20:21:53', '2019-01-24 08:14:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'recusandae', '2016-11-29 11:01:41', '2021-04-05 13:38:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'temporibus', '2019-03-25 02:16:37', '2016-08-31 08:53:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'repellat', '2019-03-01 03:42:32', '2017-07-07 01:04:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'necessitatibus', '2016-06-07 23:11:16', '2016-02-07 00:14:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'enim', '2017-09-19 22:36:51', '2015-11-17 15:26:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'quidem', '2020-05-27 14:25:12', '2013-10-23 00:13:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'ut', '2019-02-16 02:00:11', '2014-11-23 15:44:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'esse', '2014-12-27 22:22:50', '2017-08-08 05:07:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'quaerat', '2012-03-16 03:44:37', '2011-08-12 08:30:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'nostrum', '2020-02-16 13:04:56', '2020-02-12 11:10:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'et', '2016-10-24 09:49:12', '2014-04-18 03:25:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'illum', '2014-07-31 06:14:20', '2018-02-05 23:31:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'quod', '2020-07-26 17:36:43', '2017-10-30 00:18:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'unde', '2011-11-14 21:50:40', '2019-04-09 08:24:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'veniam', '2012-12-02 07:53:23', '2011-12-29 09:35:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'fugit', '2018-08-25 21:08:54', '2019-11-02 08:33:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'minima', '2014-02-25 03:55:52', '2015-03-31 16:15:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'inventore', '2020-03-12 01:55:39', '2019-03-26 05:15:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'atque', '2015-08-20 01:21:35', '2012-08-29 18:29:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'doloremque', '2013-09-15 09:49:10', '2018-05-19 17:45:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'cupiditate', '2016-09-16 16:54:15', '2016-04-03 20:34:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'eum', '2013-10-14 10:07:46', '2017-09-08 11:15:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'quo', '2013-02-01 03:58:13', '2011-06-16 03:56:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'nobis', '2020-03-27 05:05:55', '2016-12-30 21:39:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'mollitia', '2020-08-27 05:38:12', '2015-04-07 02:08:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'sequi', '2020-06-23 05:29:26', '2014-07-02 01:45:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'fugiat', '2012-06-11 23:16:09', '2013-06-13 19:19:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'eius', '2019-05-20 20:12:33', '2015-07-02 22:07:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'voluptatum', '2018-06-11 17:24:24', '2014-09-09 01:10:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'molestias', '2016-09-13 11:30:47', '2015-11-07 00:52:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'perspiciatis', '2011-06-28 21:49:53', '2012-07-31 22:40:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'nihil', '2013-12-24 16:52:29', '2016-10-16 05:36:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'molestiae', '2013-08-07 02:26:57', '2017-03-13 03:32:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'quis', '2014-12-04 09:51:12', '2018-05-16 06:20:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'sed', '2015-06-22 19:34:35', '2018-06-11 03:46:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'voluptate', '2019-08-18 19:17:00', '2015-04-27 10:39:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'consequuntur', '2020-03-03 00:38:57', '2017-07-24 07:36:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'quia', '2011-11-21 05:48:02', '2014-01-28 18:41:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'impedit', '2018-05-22 11:42:56', '2014-03-03 05:23:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'sint', '2020-02-17 00:56:03', '2016-05-08 15:29:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'occaecati', '2015-03-21 16:55:13', '2014-01-24 16:39:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'ipsum', '2019-10-25 02:31:37', '2018-10-30 04:04:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'architecto', '2012-11-11 07:19:13', '2013-07-15 20:22:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'harum', '2011-12-02 14:48:42', '2016-05-15 05:32:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'blanditiis', '2017-01-21 05:34:05', '2020-04-27 04:57:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'vitae', '2015-01-16 16:23:20', '2019-08-04 01:50:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'alias', '2014-11-21 07:42:25', '2012-03-29 10:47:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'sunt', '2015-01-15 17:17:09', '2012-12-17 04:19:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'numquam', '2019-12-24 06:00:02', '2016-11-21 13:11:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'ipsa', '2017-10-02 03:00:37', '2019-06-23 21:06:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'magni', '2021-01-14 07:59:47', '2019-12-13 07:43:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'sapiente', '2019-10-05 16:06:36', '2014-11-15 02:04:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'consectetur', '2020-03-15 13:16:43', '2012-12-10 19:06:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'nesciunt', '2019-09-11 12:39:16', '2015-10-25 11:29:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'velit', '2013-07-16 11:36:33', '2015-12-04 20:17:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'excepturi', '2014-07-16 06:23:03', '2015-09-13 02:14:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'laboriosam', '2020-04-29 16:28:49', '2017-06-13 19:03:29');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 89, 55, 'Aut et dicta inventore mollitia ut sequi neque. Voluptatem placeat eos quis.', 1, 0, '2011-07-14 10:23:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 56, 43, 'Et dolor expedita eum fugit porro et veritatis. Ab omnis est voluptas rerum eveniet. Id maiores sapiente mollitia consequatur sit velit. Necessitatibus dolor molestiae ut vel exercitationem ullam.', 0, 0, '2019-05-23 14:37:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 22, 78, 'Suscipit a quidem maiores incidunt quibusdam sit. Provident commodi est molestiae commodi vitae. Corrupti aliquam asperiores non nesciunt. Aliquam facilis velit aut adipisci distinctio rerum dolorem.', 0, 0, '2013-01-16 15:30:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 98, 23, 'Distinctio veniam soluta aliquid debitis perferendis. Incidunt animi repellendus magnam. Quos quis aut accusantium incidunt est provident distinctio.', 0, 1, '2016-12-09 13:29:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 28, 36, 'Et architecto voluptatum accusamus eum. Eaque vitae eaque accusamus sit blanditiis est nihil reiciendis. Cumque maxime modi aut autem. Consequatur suscipit aliquam adipisci aliquam facere qui.', 0, 1, '2020-12-06 12:57:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 84, 4, 'Ducimus non iste explicabo et ut. Qui eius debitis quod autem facere. Dolor quia ut quae exercitationem molestiae optio dolorem vitae.', 0, 0, '2017-01-08 01:39:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 49, 19, 'Illo blanditiis deserunt optio omnis eveniet. Veniam nulla aliquam voluptatem totam et numquam reiciendis vel. Recusandae sed nisi numquam sed commodi autem earum. Tenetur aut qui alias nihil qui sapiente adipisci architecto.', 0, 1, '2020-04-10 19:49:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 32, 47, 'Et fugit a consequatur illo. Aliquid sit est earum soluta. Sapiente quaerat ut dolor veniam culpa beatae. Qui est excepturi adipisci eum facere sunt quia.', 0, 1, '2020-12-21 13:06:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 33, 78, 'Voluptate praesentium quia porro molestiae voluptates quas quibusdam. Animi omnis asperiores incidunt ad. Molestiae doloribus rerum aut ut culpa dolor.', 1, 0, '2019-01-27 15:22:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 7, 52, 'Aut ipsum ut est cum reprehenderit hic non. Nostrum quaerat qui voluptate. Aliquam omnis sint et animi labore. Commodi voluptatum autem sed.', 0, 0, '2013-07-11 00:37:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 91, 75, 'Non quasi non qui optio delectus ipsum molestiae. Distinctio et magnam qui distinctio id. Odio quas voluptatum consequuntur eos omnis. Cumque est assumenda ut maxime velit ut.', 0, 1, '2011-05-11 15:49:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 14, 2, 'Ut magni laborum aspernatur autem est. Ut voluptatem fugit dolorem rerum. Placeat est totam rerum doloremque maiores. Enim eum magni eum ut quo ea aspernatur.', 1, 0, '2020-03-29 04:05:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 70, 80, 'Ex repellat sed et. Eos repellendus consequuntur magnam dolores. Delectus aliquam repellat impedit sequi explicabo. Tempore ratione tempore quod repellendus dolor dolores.', 1, 0, '2019-04-14 09:17:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 55, 93, 'Id beatae inventore aut. Voluptatem quae non et qui eius deserunt. Libero qui qui quidem voluptatibus cupiditate eos rerum molestiae.', 0, 0, '2015-03-29 08:23:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 23, 47, 'Adipisci ratione sed dolores iste repellat. Facilis autem reprehenderit commodi omnis ut ipsam quo. Dolores facere ut et voluptatum maiores.', 1, 1, '2011-09-26 18:58:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 45, 74, 'Non vel maxime adipisci libero laudantium. Ratione excepturi et nam ex et quia ab. Autem at consequatur quo culpa hic aliquam. Eum est voluptates illo consequatur. Temporibus recusandae libero sint laboriosam laboriosam.', 0, 1, '2013-07-11 19:55:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 72, 92, 'Suscipit error inventore occaecati dolores eos autem fugit. Ea maxime at odit enim exercitationem. Perferendis nobis occaecati aut aut beatae sed autem. Qui vero est soluta natus nam.', 1, 1, '2016-12-13 04:12:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 55, 85, 'Saepe molestiae ea nam qui. Ex aut ut quod minima. Nostrum eius est et. Ut dignissimos praesentium minus cum quos maiores.', 1, 0, '2014-06-26 18:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 38, 12, 'Quidem molestiae non eum. Harum rerum assumenda autem et ea et placeat odit. Qui consequatur quidem veniam est tempore. Omnis adipisci voluptas sint aut aspernatur totam facilis qui. Deserunt eum dolorem quibusdam cupiditate animi iusto.', 0, 0, '2019-05-04 22:10:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 57, 51, 'Natus et et deserunt ut cum. Beatae ea esse ipsa et.', 0, 1, '2016-08-21 18:25:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 60, 39, 'Voluptate eaque repellat voluptates optio. Et commodi similique hic repellendus. Tenetur numquam qui et et sit eius sit.', 0, 1, '2016-06-13 07:14:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 17, 95, 'Totam vero ut consequatur. Sunt dolor sint qui.', 0, 0, '2016-07-05 17:20:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 31, 73, 'Sunt quisquam dolorum ea. Eius rerum eum facere repudiandae consectetur. Nisi quibusdam ipsam explicabo iusto.', 0, 0, '2013-08-07 07:58:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 58, 40, 'Autem asperiores quos debitis similique voluptatem rerum. Quo omnis voluptate minima et doloremque aut. Et ab doloribus non non sit. Et rem consequuntur cumque.', 0, 1, '2014-03-30 02:06:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 2, 22, 'Tempore quis corporis nulla id distinctio quas. Tenetur tempore quia ut animi quaerat mollitia non. Quos maxime hic nam voluptas dolor dolores. Aperiam omnis nam id quia.', 0, 0, '2015-11-16 18:59:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 96, 95, 'Eos quia et quia enim blanditiis. Alias natus dolor non harum. Sint ea quidem velit eius.', 0, 0, '2014-10-28 01:40:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 99, 17, 'Ut consequatur qui accusamus est. Odio magni minima amet veniam ut saepe et. Expedita iusto eos aut in neque dicta est. Rerum consequatur modi omnis sint non deleniti.', 0, 0, '2016-10-26 02:43:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 36, 10, 'Necessitatibus alias ut molestiae et repudiandae tempore. Illo rem vitae dolores molestiae voluptatum. Enim quo quibusdam ab minima voluptate quia quia.', 0, 1, '2015-06-04 12:15:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 55, 90, 'Dolorem nihil natus quos temporibus. Et delectus esse fugit reprehenderit ipsa numquam aut ex. Et voluptas sint nesciunt. Animi cum et iure aut.', 1, 0, '2011-07-31 18:48:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 20, 88, 'Corporis dolores cupiditate tempora culpa velit. Et est quas ut nihil. Quis numquam aut debitis enim.', 0, 0, '2015-02-08 00:17:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 5, 93, 'Quasi quisquam dolorum excepturi et enim maxime. Quisquam amet ab iusto amet tempore nesciunt. Accusamus unde iusto sed recusandae.', 0, 0, '2018-02-04 02:01:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 66, 23, 'Dolorem nam nisi odit aut. Neque amet voluptas et tenetur saepe. Quod ut voluptatem aut architecto minus quos velit. Corporis placeat est architecto voluptatibus unde ut rerum. Laborum et praesentium cum reprehenderit dolores qui.', 0, 0, '2015-07-25 13:26:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 91, 86, 'Itaque pariatur quidem iste vitae fugiat laborum dolor. Earum illum odit voluptatem ab voluptatum suscipit corrupti a. Molestiae accusantium ut aliquam aut laboriosam. Repellendus harum laudantium ipsa quo veritatis dignissimos cum.', 1, 1, '2015-03-24 22:51:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 88, 89, 'Autem nobis aliquam dolore quis quasi ipsam. Consequatur dicta dolor et explicabo beatae eos qui. Modi est quos ex tenetur.', 0, 0, '2016-03-31 17:30:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 82, 95, 'Quia soluta quo voluptatum quia voluptatum vel est. Rem velit qui mollitia.', 0, 0, '2012-12-07 01:26:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 9, 59, 'Quo cupiditate amet deleniti ipsum necessitatibus. Nobis officiis consequatur ad blanditiis provident blanditiis. Tenetur vero vitae numquam et libero.', 1, 0, '2016-08-21 15:40:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 97, 97, 'Ipsum eveniet eum repudiandae repellendus eum error ea. Ab nulla quia totam est est. Eveniet dolores cumque quibusdam quisquam. Rerum corporis autem nesciunt sint velit nobis ut.', 1, 0, '2011-10-24 12:38:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 40, 47, 'Eveniet enim quo laboriosam. Illum aut voluptatem iusto quo. Consequatur veritatis impedit rerum rerum soluta eligendi consequatur. Ea et magni ducimus est.', 0, 0, '2019-11-09 12:43:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 92, 2, 'Facilis quaerat cumque maxime. Aut qui nulla voluptas assumenda sed maiores. Accusamus architecto et omnis ut quisquam eveniet ipsum qui.', 0, 1, '2014-10-11 06:34:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 89, 45, 'Sed quos dolor sint et. Necessitatibus accusamus ut consequatur veniam quo sed blanditiis. A occaecati nulla vero ad ut qui occaecati asperiores. Aut enim qui omnis.', 1, 1, '2018-09-24 03:55:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 72, 47, 'Unde deleniti magni similique nobis. Aperiam temporibus iusto sed et. Aut porro totam provident error quod porro. Consequuntur sit ut pariatur vel fugit.', 1, 1, '2018-07-09 05:58:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 46, 89, 'Eaque quidem cum totam sed incidunt deserunt. Iusto sunt doloremque quia.', 0, 1, '2015-06-26 04:27:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 13, 50, 'Autem ut quas explicabo dicta ut ipsam. Distinctio voluptas omnis nihil deleniti officiis. Sint veritatis qui distinctio aut iste. Exercitationem earum enim dolorem voluptas tempora quaerat.', 1, 1, '2020-03-17 04:17:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 5, 68, 'Eos repellendus asperiores ex. Similique fugiat est est laboriosam eius est harum. Occaecati consectetur sed quod. Id nobis harum vel eos non.', 1, 1, '2012-11-05 20:50:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 96, 79, 'Similique quos quia minima. Quo ullam non et. Hic et voluptas commodi blanditiis nulla nobis molestias. Dolorem dolorem amet explicabo dignissimos natus.', 1, 1, '2012-10-25 08:40:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 80, 18, 'Porro et doloribus nihil voluptates enim voluptatum. Consequatur repellat aut voluptatem provident. Rerum deserunt ratione consequatur veritatis accusantium voluptatem.', 1, 1, '2017-12-22 01:17:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 44, 41, 'Nemo ea iure numquam tenetur enim exercitationem. Facere totam sunt sapiente. Magnam nihil voluptas molestias qui non sit fugiat. Voluptas velit molestiae exercitationem occaecati debitis magni.', 1, 0, '2019-05-05 07:36:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 12, 68, 'Earum velit rerum neque placeat consectetur et. Dolorum dolores nam non illum. Vitae eos tempora saepe rem molestiae.', 1, 1, '2015-10-28 21:26:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 54, 47, 'Amet eum qui aut aut ipsa itaque. Ipsa odio quo maxime. Et nobis qui reprehenderit et.', 0, 1, '2014-10-22 14:16:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 26, 57, 'Maiores eaque cupiditate voluptate. Debitis adipisci sunt quia et qui mollitia non nihil. Quia animi quia voluptas qui velit laudantium blanditiis.', 0, 1, '2018-08-20 17:15:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 55, 80, 'Iste eveniet culpa debitis provident incidunt rerum eligendi. Aut impedit eum quia fuga officiis. Et veniam esse consequatur blanditiis qui.', 1, 1, '2020-11-21 04:09:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 14, 85, 'Et illo est rerum reprehenderit magni qui veniam. Voluptas neque non et doloribus. Ut id occaecati facere officiis minus maiores consequatur.', 1, 1, '2020-05-07 03:02:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 79, 48, 'Vitae placeat vero doloribus. Veritatis optio voluptatem asperiores quisquam distinctio porro cum aut. Est aspernatur est fuga eum quia voluptatem nihil.', 0, 1, '2013-10-06 00:49:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 77, 62, 'Error quidem consequatur ut consectetur. Maiores cum incidunt ducimus eum et dignissimos a. Est et possimus facere rerum est rerum possimus qui. Est neque dignissimos illum ipsum.', 1, 1, '2015-10-21 01:42:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 66, 77, 'Quis consectetur quis aut voluptatem distinctio at. Est est velit praesentium non dicta facilis. Vitae possimus nam sit aut. Velit consequuntur repellat cum voluptate.', 1, 1, '2016-01-31 21:49:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 64, 54, 'Magni sit cupiditate dolor illum deserunt. Culpa est nihil ad suscipit. Est eum illum modi.', 0, 1, '2012-01-04 20:01:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 78, 65, 'Nihil cupiditate enim cum occaecati dolorem. Laboriosam similique fugiat odio consequuntur. Sed perferendis magni consequatur omnis perspiciatis nihil et. Sed et dolor eius ipsum omnis corrupti impedit.', 1, 0, '2012-03-18 16:19:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 42, 39, 'Voluptas ullam minima aut. Quae cum occaecati iusto. Voluptas sint alias ea.', 0, 1, '2014-01-17 16:59:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 4, 78, 'Eveniet ipsum corporis veniam sed ut mollitia velit. In non vero quia aspernatur repudiandae. Odit voluptates dignissimos ipsum officia quis et nihil. Laudantium et eligendi distinctio aut vitae.', 1, 0, '2014-02-21 09:52:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 62, 22, 'Autem modi minima eum aspernatur repellendus nam enim. Dolor sapiente ducimus aliquid neque quis iure ut. Deserunt quod nihil aliquam possimus quaerat quis.', 0, 1, '2020-05-18 17:05:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 89, 67, 'Consequatur quibusdam quia blanditiis quibusdam ea dicta iure ratione. Excepturi et tenetur odio at dolor. Mollitia quis velit modi omnis voluptatem recusandae iure ut.', 1, 1, '2019-03-17 06:20:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 74, 73, 'Sit et repellendus sit et. Quas beatae sit officia non. Est recusandae dolorum ut est eligendi amet reiciendis.', 0, 1, '2016-05-16 11:52:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 67, 28, 'Dicta odio qui distinctio. Molestias vel error id nisi necessitatibus praesentium qui magnam. Sint quasi quia doloremque perferendis sed vero rerum veniam.', 0, 0, '2016-08-15 17:52:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 60, 29, 'Dolorem incidunt perspiciatis rerum fugiat similique quia quia. Quia eveniet velit architecto aut dicta. Et sequi facere voluptatem sed dignissimos laboriosam ut. Error ut praesentium impedit esse fugiat et.', 0, 1, '2013-03-16 12:45:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 76, 100, 'A ab deleniti laudantium mollitia sed. Qui nesciunt omnis repudiandae dolores. Libero facilis impedit aut. Odio itaque laudantium sint excepturi sequi quo.', 1, 0, '2018-10-08 07:27:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 30, 99, 'Culpa omnis exercitationem doloribus optio nam. Perspiciatis velit consequatur et molestiae. Id voluptatem quas excepturi natus. Placeat aliquid quia ratione velit adipisci possimus.', 0, 0, '2015-02-12 15:40:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 20, 91, 'Totam dignissimos omnis cupiditate voluptatem. Qui earum quia velit veritatis voluptas et aut. Rerum hic magni quo reiciendis.', 0, 1, '2017-05-20 16:55:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 9, 45, 'Aut sit omnis quo. Sint ipsa enim velit placeat est nesciunt odit. Magnam laudantium consequatur magnam quis odio. Reiciendis dolor cupiditate eos magnam corrupti natus officia quaerat.', 0, 0, '2013-06-22 06:22:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 87, 30, 'Qui praesentium odit corrupti eos. Quod est corporis commodi dicta ea vitae. Est voluptas repellat rerum debitis sed sint repudiandae.', 1, 1, '2015-06-22 00:12:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 25, 94, 'Necessitatibus voluptatum officiis sunt esse est non. Quibusdam eveniet dolore hic animi veniam velit. Labore quas sunt et id et sed consequatur numquam.', 0, 0, '2014-02-12 16:44:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 54, 92, 'Dolores voluptatem inventore ea. Consequuntur dolore molestiae fugit neque assumenda et et. Quo rerum voluptatibus veritatis consequatur suscipit.', 1, 1, '2011-12-31 07:31:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 85, 32, 'Ut aspernatur rerum perferendis repellat et. Quia excepturi voluptatibus omnis pariatur. Quam sequi est voluptatum corrupti. Nesciunt tempore unde et molestiae eum voluptatem.', 0, 1, '2012-11-11 07:32:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 59, 35, 'In porro nihil quasi ea minima et quis. Officiis et maiores debitis voluptatum explicabo excepturi quis sit. Est atque provident non expedita et. Dolor non reiciendis quas quo.', 0, 1, '2020-07-01 10:20:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 46, 73, 'Sed et vel aut odit rerum omnis. Exercitationem dolorem blanditiis at labore porro. Quidem quas sapiente ratione incidunt ut quaerat. Laboriosam omnis fugit molestiae fuga repudiandae quaerat.', 0, 1, '2015-05-03 04:08:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 29, 62, 'Ullam omnis doloribus autem asperiores et. Magnam odio commodi ad adipisci modi. Nam rerum quo animi commodi id.', 1, 0, '2020-05-20 18:37:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 52, 38, 'Ipsa et officia adipisci ut doloribus officiis ut qui. Et quas animi voluptas. Molestias cumque corporis tempora. Excepturi omnis enim aliquid consequatur dicta.', 0, 1, '2019-07-06 22:23:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 12, 53, 'Dolorem quos enim tenetur aut sunt ex. Alias accusantium ipsam velit veniam quia qui ut. Ea perspiciatis placeat in exercitationem qui rerum tempora. Quas vero est quia expedita facere dolor est. Odio ut dolore omnis et non animi ratione.', 0, 0, '2013-02-28 23:22:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 23, 77, 'Qui repudiandae explicabo iusto perferendis labore optio eum. Nisi quia qui id distinctio veniam aut reiciendis. Voluptate velit iste autem dolores porro quas. Aut aut dolores rerum voluptatem dolorem molestiae expedita.', 0, 0, '2013-11-21 01:23:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 71, 26, 'Blanditiis est architecto quis ipsum consectetur blanditiis quod. Cum totam molestiae soluta magni. Vero ut fugit magnam consectetur similique molestiae. Dolore aspernatur omnis numquam dignissimos sunt.', 0, 1, '2016-09-19 09:48:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 45, 90, 'Rerum fugiat est explicabo sapiente qui sunt. Optio aperiam vel facere dolores doloremque delectus qui. Eos odit consequatur et odit at dignissimos et. Aliquam voluptas consequatur numquam perferendis voluptate labore. Quaerat qui rerum ab autem.', 0, 0, '2018-12-24 06:45:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 16, 2, 'Ipsam ipsa beatae officiis est rerum totam. Nesciunt cum est sunt pariatur. Modi impedit rerum aut voluptates quaerat necessitatibus.', 0, 1, '2013-01-19 17:39:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 23, 7, 'Quaerat quo doloremque adipisci nulla. Quaerat voluptatem enim et voluptas totam. At in et assumenda. Voluptatum blanditiis quod perferendis voluptate. Quod impedit ea porro suscipit.', 0, 0, '2020-05-14 02:06:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 77, 44, 'Ipsam rerum ut sit est. Porro praesentium dolores magnam consectetur. Velit repellat perferendis dolores suscipit. Reiciendis incidunt eveniet cupiditate beatae qui.', 0, 0, '2014-11-27 14:44:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 25, 85, 'Enim quam doloribus consequatur officia molestias aliquid. Hic maxime autem molestias ipsum. Dolorem et eveniet aut itaque totam qui aut aperiam. Ipsum rerum laudantium ex dignissimos quis commodi.', 1, 1, '2012-11-08 14:28:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 48, 93, 'Culpa veniam amet mollitia ut dolorem quia. Iusto corrupti enim et a sed quis. Accusantium consequatur doloribus voluptatibus autem soluta doloremque dolores.', 1, 1, '2012-11-10 00:46:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 73, 28, 'Sunt aut eveniet possimus aut a. Delectus rerum quidem sed harum rerum. Veniam nostrum enim dolorum quis non nemo sit possimus.', 0, 0, '2021-02-04 06:47:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 74, 66, 'Culpa ratione optio velit. Dicta sunt temporibus et et labore et. Consequatur eaque possimus similique tempora.', 0, 1, '2018-06-09 11:08:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 11, 100, 'Nihil exercitationem voluptatem omnis optio facere molestias sunt. Porro ut et perspiciatis ut. Rem est ad vel maxime harum voluptatem tenetur. Exercitationem fugit labore ipsam deleniti.', 1, 0, '2013-12-11 20:29:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 71, 10, 'Suscipit quam odio sed neque eaque. Vitae ut et voluptatibus laborum. Voluptas voluptatem id ipsum est eius. Reprehenderit vitae repudiandae vitae nemo ut.', 1, 0, '2013-04-27 19:49:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 30, 8, 'Voluptatem reprehenderit accusamus et. Eos corporis veritatis fugit recusandae. Repudiandae odit praesentium ut quasi. Voluptas blanditiis praesentium blanditiis distinctio tenetur.', 1, 0, '2018-07-26 19:13:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 59, 70, 'Porro ut nulla libero quasi corrupti et nesciunt culpa. Sint minima voluptas corporis quos incidunt animi. Sunt atque occaecati eos et. Placeat error sed quae nisi.', 1, 1, '2016-03-08 02:32:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 24, 44, 'Ut eos beatae et similique atque. Officiis esse quia exercitationem aut aut autem dolores. Quos molestiae quis fugit voluptatem doloremque tempora qui blanditiis. Fugiat sit illum iure eos.', 0, 0, '2018-10-01 06:47:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 48, 58, 'Animi ut eum autem qui. Unde incidunt nulla ut.', 0, 1, '2016-02-22 06:48:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 71, 18, 'Facilis atque est dolorum et. Officia maxime laborum id illum tenetur.', 0, 0, '2020-09-29 23:54:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 89, 35, 'Nemo aliquid et tempora esse. Et et error placeat quibusdam ea odit omnis. Saepe eius optio nihil eum quidem autem. Aut suscipit et accusamus ratione sit cumque. Minima quas et assumenda earum quia ad.', 1, 1, '2013-09-22 09:43:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 6, 59, 'Voluptatibus voluptas excepturi quibusdam quia dolores repudiandae consectetur. Est quo adipisci aliquid veniam eum velit aut. Illo repellat iusto quia ipsam perspiciatis illum.', 0, 1, '2018-08-08 20:05:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 44, 69, 'Impedit iusto et rerum est commodi deserunt id. Aut consequuntur harum voluptate aspernatur at impedit quia. Eius dolor quisquam ex est porro. Praesentium voluptates nihil eos repudiandae corporis. Magnam quas voluptatem rerum nisi consequatur asperiores nisi.', 1, 1, '2018-12-09 13:04:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 69, 31, 'Repellendus expedita esse perspiciatis nobis aut. Sed ut dolorem nemo quis nisi. Eveniet incidunt voluptatem vitae eaque. Nostrum neque corrupti sequi recusandae.', 1, 0, '2012-12-30 05:23:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 83, 17, 'Ipsam expedita cum id. Excepturi non neque optio ipsa veritatis. Aut velit sed eligendi totam iste est cum.', 0, 1, '2011-11-03 22:53:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 31, 47, 'Iure fugiat eligendi illo voluptas. Consequatur dolor similique molestiae dolores sit aut odit autem. Aut ullam cum quod consequatur autem dolores animi. Veniam libero autem amet excepturi totam et officiis.', 1, 0, '2013-04-15 11:26:12');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'm', '1970-08-02', 'East Destinyview', 'Liberia', '2019-07-20 10:01:25', '2012-09-23 08:44:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '2002-11-05', 'Lake Rafael', 'Portugal', '2012-03-11 15:50:13', '2017-01-10 17:23:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'm', '1984-11-17', 'West Cristobal', 'Mayotte', '2012-02-21 00:59:35', '2011-06-10 14:06:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '1975-05-15', 'New Annamarieshire', 'Bangladesh', '2021-04-16 01:55:36', '2015-02-13 03:37:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'm', '1982-04-21', 'Lake Tavaresville', 'Singapore', '2016-05-29 05:07:07', '2014-02-06 02:05:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '1999-01-27', 'Port Conorhaven', 'Iran', '2018-11-23 16:47:06', '2017-04-20 23:58:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'm', '1983-11-10', 'East Kristopherbury', 'Aruba', '2016-12-01 12:44:58', '2013-05-28 20:56:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'm', '1992-05-07', 'West Aurelie', 'Panama', '2013-09-12 23:24:35', '2011-08-13 21:13:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'm', '2007-08-23', 'Carrieville', 'Tanzania', '2016-04-06 10:06:28', '2019-05-27 21:18:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1975-01-11', 'Port Sandyland', 'Mongolia', '2018-08-20 08:50:34', '2019-03-16 09:08:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'f', '2015-05-08', 'Lake Antonette', 'Costa Rica', '2014-10-09 19:18:48', '2013-01-09 00:27:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'f', '1970-12-15', 'Candiceberg', 'Croatia', '2013-08-05 02:48:34', '2020-04-04 15:37:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '2006-10-23', 'North Esperanzaland', 'Libyan Arab Jamahiriya', '2018-05-08 13:17:57', '2013-04-06 09:21:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'm', '1978-10-06', 'West Shawn', 'Yemen', '2020-05-17 17:06:39', '2011-05-22 19:40:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'f', '1980-01-24', 'Soniashire', 'Venezuela', '2019-05-22 03:18:12', '2015-09-10 21:49:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '1993-06-10', 'Starkchester', 'Chad', '2016-08-08 14:45:01', '2020-12-22 05:21:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '2013-01-05', 'Metzbury', 'Guinea-Bissau', '2013-12-31 05:55:35', '2015-03-25 02:28:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '1986-10-05', 'North Laverne', 'Vietnam', '2017-06-17 04:47:02', '2016-02-07 07:12:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'f', '2000-10-16', 'Romashire', 'Rwanda', '2017-12-01 14:25:03', '2016-10-18 05:47:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'm', '2002-03-02', 'New Lorenza', 'Bhutan', '2017-10-24 16:11:11', '2018-04-14 18:39:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'm', '2019-08-11', 'Port Brionna', 'Australia', '2018-11-18 14:16:51', '2018-04-11 16:25:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'f', '1986-09-06', 'North Richmondborough', 'France', '2014-05-22 04:27:55', '2020-01-22 17:23:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'm', '1973-11-21', 'Demariomouth', 'Albania', '2017-12-22 19:26:46', '2020-01-25 05:31:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'f', '2018-05-08', 'Blickburgh', 'Luxembourg', '2012-06-17 04:13:42', '2014-05-12 11:14:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'f', '1986-08-02', 'Bahringerburgh', 'Qatar', '2013-09-11 22:35:21', '2012-02-22 17:25:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '2012-10-21', 'South Garrickborough', 'Uruguay', '2017-04-27 22:03:29', '2020-06-08 12:28:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'f', '2020-02-09', 'North Katrina', 'Gabon', '2015-09-30 07:44:38', '2013-05-14 23:30:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'f', '1972-09-08', 'Bartolettiland', 'Mauritania', '2013-10-08 13:51:24', '2017-02-03 00:30:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'm', '2004-08-23', 'Port Magnoliastad', 'Bolivia', '2012-03-17 22:15:10', '2017-08-20 03:58:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '1994-02-04', 'Lake Jadon', 'Turkmenistan', '2021-01-16 04:16:53', '2020-06-22 13:27:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '2000-07-31', 'Boyerfort', 'Bahrain', '2015-02-20 03:46:40', '2018-02-27 07:19:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'f', '1988-01-01', 'Coraberg', 'Senegal', '2018-09-25 08:48:46', '2017-05-28 14:19:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'f', '2017-08-14', 'Nonachester', 'Slovakia (Slovak Republic)', '2014-08-04 09:17:52', '2011-11-18 15:17:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'f', '2011-07-30', 'Lynchside', 'Belarus', '2016-01-02 14:49:05', '2013-09-06 11:20:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'f', '1995-02-04', 'Brownside', 'Honduras', '2019-06-14 18:54:48', '2017-02-03 17:18:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'f', '1995-04-27', 'West Antwanview', 'Equatorial Guinea', '2017-07-13 11:16:14', '2014-12-20 14:01:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '1995-04-05', 'Lake Toney', 'Mauritania', '2013-06-26 15:13:14', '2015-11-11 17:57:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'm', '2014-04-07', 'West Geovanni', 'Nepal', '2020-08-10 09:25:05', '2019-11-29 16:38:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'm', '2018-07-06', 'East Alex', 'Zimbabwe', '2012-09-06 13:59:21', '2014-10-12 23:12:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'm', '2001-12-11', 'Hammesmouth', 'Saint Kitts and Nevis', '2013-12-09 12:49:35', '2015-05-24 00:22:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'f', '1975-01-24', 'Parisberg', 'Lesotho', '2019-11-28 12:40:42', '2012-02-25 15:54:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'm', '2011-11-03', 'Friesenmouth', 'Jamaica', '2014-03-20 17:25:51', '2014-08-07 20:17:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'm', '2018-01-26', 'Geovannyfurt', 'Taiwan', '2017-06-07 20:45:06', '2021-03-17 10:25:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'm', '1999-05-22', 'West Danikaburgh', 'Benin', '2021-04-13 14:50:43', '2013-10-21 01:40:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'm', '2014-06-25', 'New Carrollberg', 'Peru', '2014-08-13 04:16:51', '2015-05-23 05:16:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'm', '2013-07-11', 'South Daniella', 'Vietnam', '2017-03-30 00:54:29', '2011-12-03 14:56:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '1983-09-30', 'Leonardmouth', 'Greece', '2014-07-30 22:28:55', '2020-09-21 01:26:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'm', '1984-05-07', 'Alexishaven', 'Armenia', '2017-07-30 05:33:41', '2013-01-11 04:56:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '1972-01-18', 'Lake Louisa', 'Libyan Arab Jamahiriya', '2015-03-10 17:12:38', '2021-02-11 02:16:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'f', '2010-01-25', 'Kesslerberg', 'Liechtenstein', '2011-07-01 06:45:05', '2018-07-19 10:58:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'm', '2011-01-10', 'Lake Nina', 'Niger', '2017-10-12 05:24:41', '2016-11-28 00:05:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '2003-12-15', 'Emmerichbury', 'Myanmar', '2017-08-16 06:06:24', '2016-01-28 12:04:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'm', '2009-08-04', 'Rosaleeburgh', 'Chad', '2012-03-05 06:19:43', '2015-12-12 11:53:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'f', '1980-10-17', 'Runtemouth', 'Niue', '2017-04-30 14:02:21', '2013-07-24 13:47:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'f', '2015-02-16', 'Port Donnell', 'Thailand', '2011-10-31 17:04:25', '2012-01-03 05:14:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'f', '1972-08-22', 'Port Ivah', 'Bangladesh', '2020-10-19 09:00:11', '2016-04-04 10:26:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '1972-09-29', 'South Sedrickbury', 'Gabon', '2013-09-01 13:56:00', '2019-06-29 10:08:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'f', '1981-04-20', 'Terryberg', 'Colombia', '2015-02-06 16:23:21', '2018-07-17 20:28:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'f', '1977-12-23', 'Schulistfort', 'Liechtenstein', '2016-12-25 17:16:28', '2019-02-11 20:45:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'm', '1997-08-07', 'Vanessamouth', 'Guinea', '2017-03-25 09:16:00', '2020-04-20 04:31:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'f', '1986-08-24', 'Effertzland', 'Nigeria', '2012-01-02 04:55:39', '2020-10-17 02:31:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'm', '2020-09-13', 'Morarberg', 'Guyana', '2011-08-07 21:33:38', '2019-04-02 15:19:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'f', '1991-02-23', 'West Madisenshire', 'Mozambique', '2014-08-31 20:11:04', '2012-07-31 02:19:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '1985-05-12', 'Goldnerview', 'Nepal', '2016-01-06 04:21:41', '2014-09-07 21:53:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'f', '1999-01-24', 'Lake Victorside', 'Brazil', '2021-01-19 07:11:39', '2018-04-20 07:22:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'm', '1981-08-17', 'East Lesleytown', 'Mali', '2016-10-18 14:03:51', '2015-08-07 18:39:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'f', '1983-10-20', 'Stiedemannhaven', 'Brunei Darussalam', '2013-06-02 03:55:10', '2018-04-20 10:58:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'f', '1980-03-05', 'Chynaview', 'Korea', '2016-05-18 02:25:54', '2013-07-15 17:24:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '1982-10-16', 'Rosettahaven', 'Comoros', '2017-03-12 15:27:51', '2020-03-17 01:23:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '2009-11-27', 'West Nathan', 'Latvia', '2016-06-24 17:14:12', '2016-05-16 12:38:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '2019-08-03', 'West Makennaview', 'Saint Vincent and the Grenadines', '2017-05-18 06:52:03', '2018-09-05 14:41:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'm', '2000-04-10', 'Port Josianne', 'Bangladesh', '2014-02-19 07:35:29', '2015-06-19 02:43:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'm', '1996-02-08', 'Daytonbury', 'French Southern Territories', '2012-01-01 23:39:09', '2013-02-14 08:59:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'm', '2018-10-31', 'Whiteview', 'Korea', '2020-10-31 18:07:57', '2013-02-15 13:50:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'f', '1972-12-16', 'New Elwin', 'Peru', '2012-07-22 18:07:29', '2013-11-28 15:54:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'f', '2015-11-14', 'Sauerport', 'Dominica', '2016-02-03 21:36:30', '2015-12-02 14:57:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'f', '2019-06-29', 'New Albertochester', 'Aruba', '2020-10-10 23:04:55', '2018-09-14 01:37:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '1992-09-10', 'Rosemaryborough', 'Georgia', '2020-07-12 21:25:24', '2020-05-27 13:01:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'f', '1982-07-29', 'East Samsonstad', 'Nauru', '2019-04-13 10:09:55', '2020-10-17 07:37:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'm', '1990-09-16', 'South Alfonso', 'Macedonia', '2019-01-10 22:30:44', '2018-06-01 16:01:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '1981-02-07', 'Robynburgh', 'Mongolia', '2019-08-14 03:09:55', '2012-03-21 13:05:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'm', '2001-11-06', 'Hoseachester', 'Heard Island and McDonald Islands', '2013-06-10 19:36:59', '2020-08-14 02:48:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'f', '1980-10-05', 'Lake Elainahaven', 'Iceland', '2011-10-08 02:28:44', '2019-10-07 14:14:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '1999-08-15', 'North Halie', 'Bangladesh', '2011-10-28 04:57:11', '2016-06-02 06:08:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'f', '1979-04-19', 'Port Kristina', 'Tonga', '2012-07-15 22:53:35', '2018-12-12 08:37:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'f', '2006-07-31', 'Moenton', 'Niger', '2018-03-12 04:31:04', '2018-07-31 04:29:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'f', '1999-03-19', 'Roelview', 'Lebanon', '2013-05-27 14:58:49', '2014-12-16 10:15:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '2011-05-11', 'East Kaydenview', 'Liberia', '2012-10-30 09:27:19', '2019-04-23 14:39:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'f', '1977-04-13', 'Port Alishaton', 'Mayotte', '2020-11-29 03:23:00', '2018-02-26 17:32:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'f', '1981-08-04', 'West Petra', 'Saint Barthelemy', '2013-07-21 13:14:58', '2013-10-09 10:09:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '1993-02-10', 'Laurianebury', 'Chad', '2014-05-26 08:13:39', '2012-09-29 03:26:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'f', '1975-03-01', 'Catherinemouth', 'Oman', '2013-09-08 06:38:53', '2016-03-08 19:56:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'f', '2001-12-10', 'Zionmouth', 'Chile', '2018-03-25 03:56:48', '2019-04-30 18:18:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '1998-07-14', 'Autumnton', 'Guernsey', '2019-03-01 23:58:26', '2017-02-09 08:54:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'm', '1982-10-13', 'Makenziefort', 'Svalbard & Jan Mayen Islands', '2019-09-02 05:05:47', '2016-03-05 06:03:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '1994-11-06', 'North Adonis', 'Afghanistan', '2014-06-06 14:18:13', '2017-09-24 04:01:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'f', '2000-07-07', 'New Roxane', 'Austria', '2017-04-19 05:49:57', '2017-02-12 13:26:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'f', '1989-10-08', 'Whitefort', 'Guadeloupe', '2015-03-26 12:54:22', '2019-07-07 11:29:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'f', '1981-11-11', 'Eunaside', 'Mozambique', '2019-03-17 06:42:45', '2018-05-28 01:42:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '1983-10-05', 'West Dangelo', 'Poland', '2016-04-28 01:16:08', '2013-08-26 20:38:51');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Fidel', 'Johns', 'smitham.sydnee@example.net', '07459732693', '2018-02-18 03:56:02', '2011-08-21 10:20:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Ned', 'West', 'adam46@example.org', '02598902106', '2012-09-30 08:19:23', '2017-04-12 16:59:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Trisha', 'Bayer', 'willms.katelynn@example.com', '+76(4)8507937172', '2011-09-01 02:48:19', '2017-09-12 02:52:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Mandy', 'Dibbert', 'gutkowski.maybelle@example.net', '990-750-0765x9119', '2014-10-26 04:19:15', '2020-10-07 11:43:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Princess', 'Kassulke', 'cole.julian@example.org', '377-154-5212x406', '2015-08-07 13:33:33', '2017-06-17 14:27:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Leanne', 'Kub', 'griffin85@example.com', '09599674055', '2016-12-30 11:54:26', '2012-02-12 23:05:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Addie', 'Ryan', 'meredith10@example.com', '1-782-695-8588x0588', '2018-02-26 14:34:59', '2015-08-03 07:27:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Zackery', 'Legros', 'howell.rodger@example.org', '(984)521-5537', '2019-02-18 14:00:07', '2020-12-28 22:39:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Juana', 'Wolf', 'sbrekke@example.net', '(877)058-7900x42462', '2019-09-14 17:05:38', '2020-10-15 22:09:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Donavon', 'Conn', 'mariam32@example.org', '206.386.2161x73083', '2016-12-13 22:05:22', '2011-12-22 17:22:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Alexandrea', 'Mayer', 'leffler.prince@example.net', '627.639.5701x01344', '2015-03-03 23:20:48', '2014-11-15 02:17:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Verdie', 'Quigley', 'seamus54@example.org', '(308)424-5176', '2018-03-26 16:21:52', '2013-01-05 13:09:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Eleanora', 'Morar', 'ruthie.koepp@example.org', '+97(4)6701848259', '2017-11-03 17:57:05', '2014-08-16 14:02:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Nettie', 'Shanahan', 'kristoffer.swaniawski@example.net', '114-256-3513x44980', '2016-11-08 08:15:59', '2012-02-17 15:24:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Araceli', 'Predovic', 'davon.green@example.net', '1-964-439-0478x418', '2016-04-12 06:55:16', '2013-10-14 22:15:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Gregorio', 'Blanda', 'stanton.hudson@example.org', '(001)031-5515x7780', '2012-04-09 13:22:09', '2016-09-18 00:03:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Brett', 'Bode', 'ophelia.funk@example.net', '508.724.4658x75294', '2016-04-03 19:50:48', '2018-02-17 06:05:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Elna', 'Torp', 'wilber47@example.com', '023-919-1871x6634', '2013-11-10 17:00:21', '2013-08-18 01:06:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Gideon', 'Swift', 'bernadette.krajcik@example.org', '00333891387', '2019-12-30 01:11:22', '2013-02-25 17:44:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Ida', 'Schowalter', 'ihintz@example.net', '699.693.7618', '2017-12-19 05:52:44', '2020-01-25 06:24:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Theodore', 'Bogisich', 'matt.klein@example.org', '383.959.8944x0383', '2017-12-28 19:29:48', '2018-06-30 23:34:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Billy', 'Goldner', 'gsatterfield@example.com', '1-076-889-7423x676', '2014-05-11 13:27:14', '2015-06-17 23:56:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Seth', 'Macejkovic', 'ramona.ernser@example.com', '(771)519-5837x85586', '2012-08-31 16:00:23', '2021-02-17 18:40:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Estevan', 'Emmerich', 'boyd.halvorson@example.com', '019.087.2632x8536', '2018-12-13 10:33:43', '2021-04-16 21:35:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Braxton', 'Predovic', 'vilma43@example.net', '307.388.4813', '2019-03-20 05:49:59', '2021-03-19 12:38:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Carmela', 'Yost', 'casper.delia@example.org', '378.254.0387', '2018-03-31 14:20:18', '2021-01-12 23:54:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Hector', 'Friesen', 'msipes@example.net', '865.540.3884', '2019-02-25 08:55:00', '2020-02-29 14:01:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Josianne', 'Windler', 'jovan.wunsch@example.org', '391.048.2763x5560', '2014-10-06 12:31:24', '2015-05-01 14:50:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Annabell', 'Hane', 'mroob@example.net', '(269)642-8000', '2013-08-29 00:25:51', '2018-08-20 13:47:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Conner', 'Shields', 'parisian.gudrun@example.org', '618.382.5637x259', '2021-04-07 14:06:55', '2019-03-19 21:55:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Adela', 'McDermott', 'cora37@example.net', '04549991854', '2021-01-25 22:27:25', '2020-10-05 15:54:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Kareem', 'Schneider', 'tbuckridge@example.org', '1-857-347-5574x007', '2016-08-12 05:15:47', '2020-10-04 19:12:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Delbert', 'Lesch', 'delmer83@example.net', '115.072.8823x495', '2016-06-11 15:56:41', '2016-12-09 23:16:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Osbaldo', 'Vandervort', 'roberts.royal@example.com', '1-669-390-0567', '2013-01-10 13:39:59', '2018-01-03 06:02:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Lucio', 'Gusikowski', 'nolan.nicklaus@example.org', '00352554670', '2021-02-18 14:50:23', '2016-09-08 08:29:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Andreanne', 'Donnelly', 'nbarton@example.com', '1-476-814-8364', '2012-03-01 08:21:29', '2016-03-25 19:02:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Karelle', 'Bernier', 'blanda.lilla@example.com', '1-698-627-1756x36186', '2017-01-06 01:35:14', '2012-07-23 07:09:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Eldon', 'Fisher', 'kelsi.pollich@example.net', '(114)324-5143x5301', '2019-11-08 16:25:52', '2014-07-24 05:11:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Danielle', 'Gerhold', 'darrick.douglas@example.com', '(404)499-4058x870', '2015-07-30 02:29:25', '2019-05-26 02:10:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Kellie', 'Beier', 'hermann.davonte@example.net', '080.349.7441', '2016-10-13 14:06:41', '2018-07-22 17:40:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Yoshiko', 'Von', 'eli82@example.net', '+96(8)0094157791', '2020-08-12 22:53:38', '2014-11-20 10:24:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Isac', 'Hermann', 'beahan.hilma@example.com', '1-015-195-4248x641', '2016-05-27 17:39:45', '2017-08-10 05:23:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Emmalee', 'Maggio', 'maximo.o\'keefe@example.net', '(310)984-2399x65591', '2015-11-22 18:43:05', '2018-10-08 02:40:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Annabelle', 'Swift', 'dach.letitia@example.com', '1-252-292-3217x1040', '2017-04-01 03:02:03', '2018-02-25 17:42:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Georgiana', 'Effertz', 'clint90@example.org', '(573)620-8040x2831', '2012-03-05 18:06:52', '2017-11-20 20:31:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Rebeka', 'Stehr', 'jamel.predovic@example.com', '+16(8)9158508007', '2014-01-16 05:35:34', '2017-05-21 23:48:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Green', 'Paucek', 'krystel.bode@example.net', '887.845.6001x62447', '2017-09-11 21:17:21', '2017-08-05 22:57:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Della', 'Koss', 'prosacco.reynold@example.org', '212.501.0802', '2013-08-02 13:39:05', '2015-02-08 03:25:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Holly', 'Botsford', 'heathcote.nannie@example.net', '1-327-638-8433x046', '2015-09-23 20:10:12', '2017-01-06 21:41:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Dominique', 'Roberts', 'yfeil@example.com', '1-602-276-3570x234', '2014-03-14 08:50:56', '2013-01-08 17:08:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Stephan', 'Hermiston', 'kailee06@example.net', '1-454-159-1319x3238', '2013-01-18 21:29:04', '2011-09-25 18:15:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Loma', 'Blick', 'braden.mohr@example.org', '589-247-4417x19418', '2012-01-20 14:51:45', '2012-07-08 20:35:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Elinor', 'Barton', 'antwon.herman@example.com', '+28(3)3319911335', '2015-05-27 06:17:38', '2020-01-02 15:10:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Nathanial', 'Lakin', 'chuels@example.com', '611-897-8798', '2015-02-01 04:26:10', '2020-10-09 14:32:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Doyle', 'VonRueden', 'ggorczany@example.org', '1-233-526-4457x99053', '2017-06-14 08:34:28', '2019-10-29 16:18:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Noe', 'Wiegand', 'lschowalter@example.net', '1-691-959-4513', '2019-12-28 03:44:24', '2021-04-17 01:35:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Ezequiel', 'Lowe', 'keegan.stokes@example.net', '882.127.1999x29870', '2017-10-20 02:32:53', '2016-11-13 23:50:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Efren', 'Block', 'lindsay.marks@example.net', '+04(5)8074093674', '2016-12-21 08:35:59', '2019-11-28 04:14:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Jerome', 'Steuber', 'pkuphal@example.com', '(002)277-5018x75808', '2018-08-10 23:24:07', '2015-02-20 20:57:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Liam', 'Marquardt', 'wuckert.breana@example.net', '735-077-8159x490', '2016-10-05 16:03:14', '2016-06-01 04:28:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Aimee', 'Ondricka', 'xgusikowski@example.net', '003-136-6974', '2015-03-13 21:12:51', '2019-02-17 22:00:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Liam', 'Oberbrunner', 'tcremin@example.com', '933.205.8176x4855', '2011-08-14 01:48:04', '2018-10-19 15:17:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Destiny', 'Kuhn', 'becker.calista@example.com', '(865)351-1705x5091', '2016-01-11 01:43:06', '2013-12-02 12:11:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Ozella', 'Gibson', 'caleigh.bahringer@example.net', '(500)206-0077', '2017-04-12 02:57:28', '2020-09-05 13:31:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Major', 'Kuvalis', 'qbatz@example.com', '310-744-1060', '2020-02-07 06:27:37', '2018-02-03 02:52:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Jarrett', 'Bashirian', 'halvorson.isadore@example.org', '(599)991-3451', '2013-08-21 01:03:23', '2011-10-14 14:57:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Marty', 'Herman', 'jheidenreich@example.org', '+91(0)2699468292', '2012-08-30 04:03:05', '2020-04-17 16:10:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Jerome', 'Haley', 'fabiola35@example.net', '1-838-087-8335', '2020-10-19 23:41:07', '2021-03-06 01:33:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Clarissa', 'Dicki', 'triston.schowalter@example.net', '615.503.9662x828', '2018-12-16 18:55:47', '2019-07-07 17:12:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Madyson', 'Cummings', 'clare.torphy@example.com', '012.704.1982', '2020-09-20 00:50:37', '2011-12-05 00:59:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Jena', 'Kling', 'sven40@example.com', '1-380-020-5545x232', '2017-10-29 01:39:08', '2016-08-13 21:12:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Karli', 'Ernser', 'tgusikowski@example.net', '(531)293-2383', '2017-09-01 08:20:55', '2012-04-20 06:00:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Camylle', 'Boyle', 'gerlach.america@example.net', '(126)661-6155x632', '2017-08-08 06:29:13', '2021-02-21 19:36:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Jaiden', 'Windler', 'dannie44@example.org', '1-978-567-9114x2800', '2013-07-14 07:44:02', '2014-06-01 16:44:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Lorenzo', 'Bradtke', 'beahan.paul@example.org', '1-958-917-8732x137', '2017-08-20 02:02:28', '2020-12-06 18:35:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Liliana', 'Schowalter', 'morar.king@example.com', '(827)831-1965x949', '2013-10-09 02:48:38', '2014-10-14 11:44:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Loren', 'Hettinger', 'cynthia74@example.org', '(763)314-5261', '2015-09-11 04:25:52', '2019-01-04 05:12:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Hermina', 'Herzog', 'tmoen@example.net', '618.561.0176x53239', '2011-12-13 05:49:15', '2017-02-08 15:22:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Mattie', 'Witting', 'imonahan@example.org', '(196)335-5292x7253', '2016-11-05 23:32:20', '2016-03-23 01:24:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Tatum', 'McKenzie', 'carmel.bauch@example.org', '07088950487', '2011-09-09 07:07:55', '2016-02-19 22:30:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Maurice', 'Kilback', 'stokes.harold@example.com', '(399)433-8907x166', '2015-04-25 06:12:22', '2014-08-14 21:41:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Catharine', 'Bailey', 'bailey.tristin@example.org', '891.825.9386', '2015-05-09 03:02:20', '2019-12-24 16:41:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Carson', 'Wiegand', 'beer.norberto@example.org', '1-967-199-0631x5567', '2012-02-02 09:37:35', '2014-05-04 19:44:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Cristobal', 'Kunde', 'renner.brain@example.org', '184.995.6115x994', '2018-06-12 02:12:23', '2016-01-08 22:59:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Anna', 'Stracke', 'blanda.tristian@example.org', '(935)775-0771x10662', '2017-01-23 14:15:03', '2018-02-09 09:41:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Tremayne', 'Fadel', 'sbeahan@example.net', '294-595-2182x8388', '2015-08-25 11:09:16', '2011-09-01 07:15:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Jeanette', 'Koch', 'mckenzie.schuster@example.net', '+82(5)2006531806', '2020-10-25 12:46:01', '2018-01-30 08:02:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Vincenzo', 'Brekke', 'may11@example.com', '1-645-338-8880x861', '2014-01-14 07:22:24', '2017-11-11 05:01:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Kaylin', 'Dach', 'larry.nitzsche@example.net', '683-854-5496x76881', '2018-03-24 01:02:17', '2018-10-10 05:18:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Viola', 'Schumm', 'rmorar@example.org', '481.057.5208x3797', '2013-04-04 09:33:11', '2017-02-09 18:32:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Erin', 'Morissette', 'fschmeler@example.com', '04062445443', '2015-09-27 03:28:37', '2020-11-19 00:53:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Virgie', 'Watsica', 'crona.ashley@example.org', '1-928-230-6615x16275', '2014-05-05 09:45:47', '2018-08-05 20:15:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Rosalind', 'Stracke', 'ikessler@example.org', '1-598-954-4456x3376', '2021-03-27 09:34:57', '2020-08-07 18:10:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Dasia', 'Hartmann', 'clemmie.runolfsson@example.net', '955.104.4305x97556', '2014-11-11 07:05:14', '2019-01-17 12:57:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Myron', 'Hills', 'hstanton@example.org', '416.428.0442x275', '2013-03-05 16:51:03', '2012-07-15 07:31:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Macey', 'Mertz', 'alice95@example.org', '1-182-949-1994x499', '2017-10-30 22:51:22', '2012-01-12 17:31:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Nash', 'Cremin', 'rickey23@example.net', '1-867-987-3851x96107', '2019-01-06 18:44:22', '2015-01-31 09:20:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Mose', 'Russel', 'rosalyn89@example.net', '(076)506-9705x96324', '2014-04-12 06:44:48', '2019-02-06 11:02:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Ozella', 'Hansen', 'alexandre.bartoletti@example.com', '010-065-4493x74553', '2015-09-29 17:06:05', '2013-06-23 17:28:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Howard', 'Brekke', 'rolfson.vida@example.org', '136-724-8534x2295', '2015-03-25 07:34:35', '2011-08-05 09:22:16');


