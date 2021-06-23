#
# TABLE STRUCTURE FOR: history_whatch
#

DROP TABLE IF EXISTS `history_whatch`;

CREATE TABLE `history_whatch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL COMMENT 'по id video определим популярный канал',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (1, 40, 1, '2015-10-29 15:50:33', '2015-10-21 02:52:25');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (2, 83, 2, '2011-08-03 04:59:06', '2020-11-21 10:17:46');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (3, 53, 3, '2014-07-03 08:13:51', '2014-12-18 03:23:44');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (4, 96, 4, '2016-11-21 16:08:45', '2012-11-27 00:47:45');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (5, 44, 5, '2020-06-29 09:38:33', '2020-03-01 11:11:11');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (6, 39, 6, '2017-04-08 00:16:58', '2018-08-27 17:41:16');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (7, 69, 7, '2016-08-21 02:08:16', '2014-01-17 15:06:28');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (8, 89, 8, '2019-07-10 21:11:07', '2012-09-30 23:29:02');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (9, 68, 9, '2013-09-03 06:03:48', '2019-07-07 19:37:12');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (10, 45, 10, '2013-02-04 18:57:10', '2018-05-20 15:17:13');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (11, 18, 11, '2019-08-15 15:36:17', '2012-04-29 21:01:06');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (12, 69, 12, '2012-08-18 01:03:16', '2012-10-07 14:51:29');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (13, 79, 13, '2016-07-19 11:54:51', '2016-04-21 04:22:32');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (14, 29, 14, '2019-08-11 01:05:32', '2014-05-15 14:05:19');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (15, 89, 15, '2011-10-25 09:27:08', '2011-10-24 15:28:13');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (16, 19, 16, '2014-05-01 06:49:33', '2018-10-16 22:13:08');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (17, 91, 17, '2013-05-17 09:08:50', '2020-07-31 21:35:57');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (18, 86, 18, '2011-08-19 15:10:33', '2019-05-18 17:32:56');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (19, 8, 19, '2014-06-10 00:00:25', '2012-03-15 13:42:26');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (20, 54, 20, '2017-10-31 15:45:26', '2011-12-06 08:49:16');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (21, 99, 21, '2014-06-09 10:28:05', '2020-02-13 19:49:27');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (22, 21, 22, '2018-03-22 04:02:01', '2013-07-23 09:59:17');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (23, 40, 23, '2016-05-09 19:11:14', '2011-09-03 10:54:15');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (24, 11, 24, '2016-03-29 12:00:24', '2011-09-15 10:30:05');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (25, 73, 25, '2020-01-29 15:46:57', '2019-02-14 10:38:11');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (26, 86, 26, '2017-01-27 19:19:29', '2012-02-26 06:26:02');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (27, 70, 27, '2021-02-09 12:43:51', '2019-08-10 17:03:36');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (28, 21, 28, '2014-07-26 04:33:57', '2011-07-28 04:26:51');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (29, 1, 29, '2019-01-20 23:18:14', '2017-03-17 14:34:21');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (30, 89, 30, '2016-02-20 15:05:01', '2013-02-05 23:14:03');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (31, 15, 31, '2019-08-25 13:46:38', '2011-07-30 20:20:09');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (32, 44, 32, '2011-11-15 12:07:16', '2014-04-05 10:38:29');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (33, 54, 33, '2020-08-07 11:57:50', '2018-08-21 21:47:47');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (34, 6, 34, '2021-01-17 06:59:20', '2019-10-01 08:43:33');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (35, 89, 35, '2020-05-17 03:12:56', '2017-01-16 22:04:34');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (36, 77, 36, '2019-04-04 16:10:11', '2012-03-25 05:53:44');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (37, 68, 37, '2012-08-18 00:46:10', '2018-05-31 22:59:35');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (38, 72, 38, '2011-09-04 03:18:38', '2014-07-04 19:53:06');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (39, 90, 39, '2017-04-23 01:22:42', '2012-01-21 11:19:29');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (40, 42, 40, '2012-08-04 22:25:36', '2013-07-11 22:45:45');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (41, 46, 41, '2013-05-04 02:23:24', '2014-06-23 03:35:20');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (42, 28, 42, '2012-06-18 12:46:12', '2019-03-14 17:39:41');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (43, 98, 43, '2020-07-15 09:48:50', '2018-09-30 20:28:39');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (44, 41, 44, '2015-05-03 04:01:41', '2016-07-24 00:10:53');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (45, 43, 45, '2016-01-24 05:42:15', '2017-10-26 10:42:44');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (46, 60, 46, '2014-12-04 20:20:32', '2019-02-12 05:52:30');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (47, 36, 47, '2012-09-24 11:22:47', '2013-03-17 00:01:05');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (48, 1, 48, '2016-08-26 16:05:26', '2017-02-20 11:13:28');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (49, 7, 49, '2018-09-06 07:45:21', '2016-03-12 19:27:13');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (50, 40, 50, '2011-07-13 03:10:34', '2018-04-21 17:11:50');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (51, 59, 51, '2016-03-07 17:37:02', '2019-04-20 08:02:34');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (52, 10, 52, '2018-06-30 14:07:57', '2016-11-05 22:43:19');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (53, 53, 53, '2020-12-02 22:17:13', '2013-06-08 05:06:36');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (54, 100, 54, '2016-10-22 00:20:13', '2014-07-01 17:41:29');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (55, 13, 55, '2018-06-07 18:16:22', '2013-06-30 06:09:19');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (56, 5, 56, '2015-12-29 09:51:42', '2019-02-02 21:05:12');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (57, 97, 57, '2015-05-15 08:25:41', '2014-07-15 10:46:02');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (58, 56, 58, '2018-03-16 01:47:35', '2015-12-20 14:39:51');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (59, 66, 59, '2020-04-05 20:06:53', '2018-01-02 20:54:05');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (60, 63, 60, '2011-09-03 02:52:23', '2011-08-23 14:58:39');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (61, 68, 61, '2014-09-18 11:41:50', '2017-02-11 03:34:27');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (62, 42, 62, '2013-06-26 06:58:16', '2017-09-17 02:38:10');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (63, 33, 63, '2020-07-31 21:04:35', '2017-12-07 13:42:40');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (64, 46, 64, '2019-11-03 01:25:20', '2015-03-30 12:46:41');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (65, 87, 65, '2015-12-15 20:58:31', '2011-06-23 23:24:55');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (66, 53, 66, '2015-09-27 13:10:33', '2012-12-08 05:40:47');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (67, 86, 67, '2016-04-24 07:14:57', '2018-11-25 08:12:55');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (68, 98, 68, '2018-12-24 15:14:51', '2013-05-02 05:58:11');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (69, 42, 69, '2012-10-29 23:18:25', '2020-08-30 21:17:17');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (70, 42, 70, '2012-04-01 19:17:05', '2016-09-19 14:38:41');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (71, 16, 71, '2015-07-27 07:12:27', '2014-04-16 04:02:49');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (72, 43, 72, '2015-08-13 21:29:20', '2013-07-12 14:58:16');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (73, 17, 73, '2016-06-20 14:56:30', '2017-09-17 14:37:06');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (74, 13, 74, '2016-05-01 06:03:26', '2021-04-17 08:50:38');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (75, 51, 75, '2019-02-23 09:08:17', '2020-05-19 08:25:12');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (76, 57, 76, '2021-05-28 21:57:32', '2011-11-15 23:40:12');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (77, 26, 77, '2012-11-20 14:15:13', '2014-10-09 16:02:46');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (78, 63, 78, '2019-10-14 10:46:50', '2016-08-23 18:12:05');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (79, 93, 79, '2013-08-18 03:40:14', '2015-09-26 12:21:18');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (80, 36, 80, '2021-03-22 15:03:25', '2016-05-06 21:15:58');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (81, 31, 81, '2020-05-01 00:39:20', '2013-03-02 14:15:04');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (82, 62, 82, '2012-06-30 01:11:52', '2019-09-05 21:16:44');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (83, 31, 83, '2013-06-29 11:44:51', '2020-07-09 08:15:51');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (84, 90, 84, '2019-12-20 01:39:07', '2018-10-02 01:35:21');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (85, 26, 85, '2014-07-03 23:45:34', '2018-06-16 00:14:31');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (86, 15, 86, '2011-06-29 21:33:13', '2016-06-10 05:37:19');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (87, 5, 87, '2011-12-06 13:34:00', '2019-01-01 17:04:11');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (88, 38, 88, '2018-03-03 13:35:47', '2016-02-22 23:21:27');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (89, 90, 89, '2013-10-27 06:37:06', '2015-09-03 15:26:46');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (90, 89, 90, '2020-07-10 12:42:11', '2016-06-11 21:09:35');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (91, 15, 91, '2015-09-21 10:13:46', '2015-03-15 16:39:23');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (92, 24, 92, '2018-05-09 06:13:13', '2015-09-12 04:24:02');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (93, 53, 93, '2011-09-08 04:40:20', '2017-08-29 00:47:04');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (94, 65, 94, '2015-02-09 23:15:20', '2019-04-05 04:44:01');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (95, 80, 95, '2013-08-25 11:32:42', '2011-11-18 07:49:06');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (96, 87, 96, '2014-10-23 08:03:56', '2020-09-02 10:29:53');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (97, 47, 97, '2020-08-07 10:45:50', '2018-12-30 02:44:27');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (98, 94, 98, '2020-05-07 10:25:27', '2020-02-05 12:22:48');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (99, 70, 99, '2014-12-01 06:46:06', '2014-11-15 23:28:34');
INSERT INTO `history_whatch` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES (100, 78, 100, '2013-02-14 05:01:26', '2013-05-01 22:46:36');


