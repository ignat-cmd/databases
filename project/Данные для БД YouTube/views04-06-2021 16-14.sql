#
# TABLE STRUCTURE FOR: views
#

DROP TABLE IF EXISTS `views`;

CREATE TABLE `views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'кто посмотрел',
  `video_id` int(11) NOT NULL COMMENT 'просмотренное видео',
  `dur_view` time NOT NULL COMMENT 'продолжительность просмотра видео',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (1, 10, 1, '21:31:13', '2012-04-07 16:50:57', '2020-02-03 17:40:32');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (2, 13, 2, '05:28:58', '2018-03-15 07:44:33', '2016-08-22 07:06:11');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (3, 16, 3, '00:45:47', '2013-08-18 16:51:05', '2018-03-03 05:49:03');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (4, 46, 4, '10:11:56', '2016-04-19 15:01:57', '2016-09-22 13:10:40');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (5, 47, 5, '14:10:31', '2014-06-04 17:28:56', '2019-07-25 06:30:17');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (6, 98, 6, '00:24:23', '2018-09-26 10:52:16', '2012-09-23 02:06:09');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (7, 20, 7, '20:46:33', '2018-06-23 15:11:04', '2014-07-26 20:28:44');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (8, 48, 8, '08:14:23', '2017-01-09 00:41:59', '2020-08-30 20:32:47');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (9, 7, 9, '15:18:00', '2020-07-04 07:20:46', '2021-05-23 11:32:43');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (10, 59, 10, '16:10:15', '2015-07-05 22:28:12', '2013-11-15 05:31:38');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (11, 53, 11, '18:11:38', '2014-08-28 06:49:34', '2017-06-12 06:15:31');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (12, 69, 12, '15:01:46', '2012-06-05 21:14:50', '2014-10-16 14:10:44');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (13, 84, 13, '14:48:43', '2016-06-21 03:38:23', '2020-08-08 21:32:05');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (14, 90, 14, '21:19:12', '2019-12-23 23:48:37', '2011-12-06 17:21:49');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (15, 86, 15, '02:22:55', '2020-10-27 04:13:23', '2016-04-30 15:56:27');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (16, 83, 16, '22:37:59', '2020-07-29 15:53:24', '2015-02-22 20:00:28');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (17, 35, 17, '04:12:49', '2017-10-14 08:16:31', '2016-09-30 16:06:58');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (18, 99, 18, '16:21:54', '2021-05-02 21:47:14', '2017-08-04 01:38:41');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (19, 2, 19, '08:18:41', '2019-07-07 16:58:32', '2015-03-03 12:45:27');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (20, 67, 20, '05:06:35', '2014-06-26 09:33:18', '2015-11-11 11:57:50');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (21, 34, 21, '20:04:40', '2013-07-22 18:33:28', '2017-06-14 00:41:53');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (22, 60, 22, '11:40:09', '2018-03-11 04:28:56', '2017-02-28 04:29:50');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (23, 18, 23, '04:58:46', '2018-12-03 12:01:03', '2016-05-31 07:39:09');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (24, 89, 24, '04:40:01', '2018-01-04 01:44:04', '2019-04-08 12:34:48');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (25, 100, 25, '11:01:03', '2018-01-18 14:47:57', '2014-06-25 01:54:34');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (26, 14, 26, '07:00:00', '2015-02-07 10:22:19', '2012-12-29 00:23:16');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (27, 93, 27, '22:10:32', '2014-04-13 01:54:49', '2011-06-10 20:50:09');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (28, 15, 28, '07:15:54', '2015-09-19 10:19:12', '2016-04-18 15:11:05');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (29, 31, 29, '18:28:39', '2019-12-25 19:01:54', '2015-03-05 17:23:41');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (30, 27, 30, '04:28:04', '2018-12-02 02:16:59', '2020-10-13 23:34:38');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (31, 92, 31, '05:03:20', '2018-03-26 21:26:48', '2020-09-25 03:31:12');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (32, 68, 32, '22:01:35', '2017-04-03 04:16:58', '2012-04-29 04:50:47');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (33, 78, 33, '15:51:04', '2020-06-27 04:07:45', '2017-04-28 05:56:28');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (34, 80, 34, '06:31:42', '2011-07-01 17:59:37', '2017-04-23 05:58:24');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (35, 37, 35, '22:31:34', '2018-09-04 13:26:13', '2012-06-09 02:25:32');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (36, 46, 36, '10:29:23', '2013-05-24 05:01:33', '2019-07-11 21:54:17');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (37, 81, 37, '00:06:31', '2012-04-07 21:39:21', '2019-04-22 23:45:54');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (38, 54, 38, '03:46:18', '2015-06-21 23:56:24', '2014-08-23 01:08:13');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (39, 43, 39, '05:01:23', '2011-12-02 07:45:19', '2013-09-08 18:28:39');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (40, 20, 40, '10:29:26', '2016-06-12 13:28:20', '2016-09-17 10:56:37');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (41, 91, 41, '05:48:36', '2017-06-17 21:10:16', '2020-04-14 23:12:32');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (42, 82, 42, '03:37:08', '2011-06-18 09:05:17', '2015-12-12 06:53:33');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (43, 16, 43, '16:08:29', '2018-01-27 14:24:35', '2014-09-24 07:58:44');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (44, 10, 44, '16:35:02', '2020-01-02 01:32:02', '2013-12-08 09:46:47');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (45, 32, 45, '22:09:02', '2019-12-29 01:41:53', '2019-07-31 04:16:28');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (46, 32, 46, '13:02:46', '2013-08-21 22:33:08', '2018-06-30 10:43:06');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (47, 4, 47, '18:19:12', '2021-02-08 00:16:02', '2019-03-07 15:03:14');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (48, 78, 48, '07:04:29', '2018-06-16 19:44:37', '2016-08-28 03:39:24');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (49, 63, 49, '17:34:33', '2013-08-28 08:04:45', '2015-06-30 17:19:46');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (50, 78, 50, '14:21:16', '2019-08-18 14:40:09', '2017-07-11 20:18:58');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (51, 80, 51, '16:19:41', '2019-01-27 04:01:38', '2014-07-04 09:11:56');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (52, 55, 52, '08:31:54', '2018-11-21 04:05:14', '2014-09-26 20:24:23');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (53, 8, 53, '15:29:07', '2014-02-10 02:57:52', '2014-10-17 17:18:55');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (54, 86, 54, '13:59:52', '2013-02-24 15:23:22', '2012-08-27 16:07:39');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (55, 79, 55, '21:45:02', '2017-12-24 16:45:32', '2016-11-11 20:35:34');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (56, 34, 56, '10:15:59', '2014-10-03 09:51:15', '2013-05-09 22:57:27');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (57, 43, 57, '08:54:36', '2015-03-11 11:35:51', '2014-08-23 07:22:17');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (58, 100, 58, '03:18:42', '2020-03-07 08:42:48', '2021-05-01 08:24:42');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (59, 4, 59, '12:38:01', '2017-02-19 03:52:41', '2015-08-26 13:48:38');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (60, 4, 60, '12:28:46', '2019-06-09 00:11:40', '2019-11-04 03:32:12');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (61, 76, 61, '02:04:19', '2011-11-09 19:03:26', '2011-08-16 01:17:16');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (62, 93, 62, '23:05:30', '2012-01-12 06:28:24', '2014-06-08 22:38:06');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (63, 63, 63, '19:52:49', '2020-07-20 20:11:19', '2019-02-23 11:18:39');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (64, 6, 64, '14:46:24', '2017-12-09 19:35:15', '2015-10-14 01:30:13');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (65, 47, 65, '00:19:25', '2016-08-03 22:48:47', '2011-07-01 19:17:02');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (66, 10, 66, '23:30:40', '2015-10-28 17:49:21', '2016-02-22 20:43:28');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (67, 52, 67, '07:05:11', '2017-08-20 15:00:58', '2017-08-25 15:13:31');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (68, 25, 68, '00:27:52', '2017-03-17 05:04:47', '2019-09-20 19:08:40');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (69, 77, 69, '11:13:22', '2013-06-18 19:31:41', '2019-10-23 04:43:42');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (70, 92, 70, '02:28:31', '2013-01-25 17:48:09', '2014-03-17 17:14:06');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (71, 9, 71, '06:09:46', '2018-09-24 05:59:55', '2013-07-01 22:04:17');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (72, 51, 72, '04:50:42', '2015-08-14 05:33:07', '2016-07-24 04:31:10');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (73, 52, 73, '03:24:55', '2016-05-03 02:29:45', '2012-05-02 21:37:15');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (74, 89, 74, '21:30:10', '2016-10-04 12:48:27', '2019-03-02 23:58:38');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (75, 98, 75, '05:19:17', '2012-10-27 23:03:18', '2013-07-12 09:50:54');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (76, 58, 76, '07:07:04', '2019-04-03 04:15:44', '2018-09-29 20:15:11');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (77, 44, 77, '12:59:13', '2013-02-05 17:34:09', '2020-06-29 11:46:32');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (78, 60, 78, '02:16:27', '2013-01-08 18:40:50', '2014-08-07 14:59:16');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (79, 95, 79, '07:45:56', '2016-09-15 00:46:03', '2017-08-03 18:34:02');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (80, 63, 80, '03:39:12', '2013-01-15 19:52:41', '2020-05-14 06:03:22');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (81, 68, 81, '02:47:19', '2015-09-08 01:43:53', '2012-11-12 00:56:49');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (82, 95, 82, '05:31:37', '2017-10-05 01:42:33', '2015-08-10 04:47:56');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (83, 22, 83, '00:08:17', '2018-06-03 18:30:57', '2020-03-16 23:39:45');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (84, 58, 84, '02:58:14', '2013-11-18 02:11:10', '2015-11-15 06:32:43');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (85, 80, 85, '22:51:57', '2018-03-24 00:10:22', '2018-06-13 05:38:06');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (86, 27, 86, '19:04:05', '2012-09-01 12:50:54', '2013-04-18 01:38:03');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (87, 90, 87, '01:48:47', '2012-11-30 01:57:32', '2017-05-20 08:05:59');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (88, 91, 88, '00:56:32', '2013-01-26 16:42:56', '2014-01-24 03:24:08');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (89, 54, 89, '06:43:19', '2014-07-31 02:12:00', '2019-01-03 22:49:04');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (90, 90, 90, '13:00:55', '2013-05-15 01:10:41', '2020-10-06 02:39:47');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (91, 25, 91, '06:36:24', '2015-06-09 09:33:01', '2015-03-21 15:31:53');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (92, 71, 92, '01:19:32', '2021-03-10 05:53:59', '2018-05-29 00:29:58');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (93, 75, 93, '02:23:47', '2020-03-04 05:09:31', '2019-01-24 10:14:36');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (94, 6, 94, '13:27:00', '2014-05-05 10:07:35', '2012-06-06 08:36:04');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (95, 44, 95, '16:30:06', '2017-04-09 19:59:29', '2015-11-07 16:57:23');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (96, 19, 96, '03:47:55', '2013-06-24 05:37:39', '2012-05-18 18:57:43');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (97, 80, 97, '12:03:31', '2018-04-05 22:23:33', '2019-01-23 23:15:03');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (98, 76, 98, '08:10:59', '2011-08-06 06:55:25', '2013-10-25 02:39:44');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (99, 6, 99, '00:11:00', '2017-04-27 05:37:40', '2014-05-06 14:43:07');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (100, 94, 100, '22:07:43', '2018-04-09 03:22:13', '2015-07-15 05:31:16');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (101, 30, 101, '13:12:27', '2012-08-04 08:28:45', '2014-10-20 10:38:13');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (102, 7, 102, '03:43:11', '2019-10-19 17:06:31', '2018-09-21 05:17:25');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (103, 55, 103, '08:08:44', '2018-11-16 00:01:28', '2018-03-24 06:42:00');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (104, 43, 104, '08:10:12', '2018-08-06 20:34:01', '2011-06-24 07:10:16');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (105, 39, 105, '06:02:33', '2011-08-03 05:44:55', '2014-01-11 20:01:06');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (106, 31, 106, '20:11:42', '2015-04-29 13:28:16', '2013-04-07 17:33:59');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (107, 27, 107, '10:46:46', '2017-10-25 14:22:44', '2021-06-01 19:35:47');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (108, 95, 108, '11:36:46', '2015-09-01 00:36:20', '2016-04-29 15:30:36');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (109, 4, 109, '11:20:52', '2018-07-27 04:13:50', '2021-04-27 05:39:32');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (110, 78, 110, '04:25:59', '2017-05-19 04:10:37', '2018-08-27 12:30:35');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (111, 47, 111, '13:30:01', '2015-12-27 07:06:58', '2019-01-08 07:20:54');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (112, 63, 112, '21:01:30', '2011-06-29 22:57:49', '2017-02-03 23:37:27');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (113, 63, 113, '13:20:11', '2012-06-03 03:35:19', '2012-04-01 14:00:12');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (114, 85, 114, '05:51:05', '2015-09-24 04:49:17', '2012-03-22 19:08:19');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (115, 68, 115, '16:28:35', '2019-01-18 21:22:27', '2016-12-20 05:29:54');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (116, 89, 116, '10:27:44', '2012-06-20 12:35:40', '2020-10-29 22:30:58');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (117, 25, 117, '02:48:59', '2012-11-26 08:49:44', '2021-04-21 13:30:31');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (118, 88, 118, '15:58:58', '2016-08-21 01:03:25', '2020-04-23 08:52:44');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (119, 64, 119, '07:27:49', '2019-04-17 11:04:42', '2017-07-16 02:26:18');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (120, 49, 120, '17:54:42', '2011-09-21 11:15:08', '2014-05-07 21:36:22');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (121, 21, 121, '02:50:50', '2019-10-15 15:14:28', '2016-02-20 10:25:43');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (122, 95, 122, '12:33:19', '2017-12-26 20:21:25', '2019-05-29 21:57:02');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (123, 78, 123, '23:10:09', '2013-02-27 08:19:20', '2016-11-26 06:49:23');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (124, 29, 124, '14:24:14', '2013-03-06 21:59:00', '2012-01-23 19:53:30');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (125, 28, 125, '02:01:14', '2015-06-16 09:35:36', '2012-07-17 16:15:27');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (126, 6, 126, '23:30:45', '2015-02-16 18:18:21', '2014-10-11 04:04:03');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (127, 61, 127, '00:19:37', '2019-06-10 04:49:19', '2017-08-08 17:53:32');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (128, 20, 128, '08:01:37', '2012-03-10 16:03:09', '2019-12-04 14:50:45');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (129, 16, 129, '21:46:01', '2013-08-16 13:08:05', '2018-07-13 10:40:31');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (130, 67, 130, '08:30:44', '2014-11-09 15:27:22', '2019-04-09 09:00:58');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (131, 88, 131, '10:25:11', '2020-09-30 15:12:03', '2015-03-31 02:39:52');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (132, 68, 132, '04:29:38', '2014-05-03 17:11:15', '2011-08-07 13:07:47');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (133, 3, 133, '20:24:04', '2012-08-29 08:08:08', '2012-08-19 09:09:55');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (134, 34, 134, '14:43:19', '2016-01-08 02:34:46', '2017-06-02 09:22:46');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (135, 24, 135, '12:57:33', '2015-04-13 12:58:53', '2015-05-11 12:50:01');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (136, 91, 136, '17:06:07', '2011-11-24 02:31:48', '2012-08-31 00:06:27');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (137, 14, 137, '17:23:23', '2015-02-16 13:53:13', '2012-01-02 20:53:31');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (138, 21, 138, '01:11:56', '2013-11-06 07:49:29', '2012-11-08 21:35:00');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (139, 83, 139, '07:18:18', '2016-11-05 18:56:16', '2011-11-05 07:42:39');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (140, 49, 140, '03:01:36', '2013-08-28 09:56:21', '2013-10-10 14:27:47');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (141, 18, 141, '21:40:37', '2013-11-03 05:07:12', '2016-02-18 14:57:22');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (142, 17, 142, '06:44:56', '2015-03-03 06:14:58', '2018-05-06 14:51:59');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (143, 35, 143, '14:57:55', '2014-08-01 04:51:35', '2021-02-02 11:14:26');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (144, 6, 144, '08:51:38', '2013-11-17 11:53:38', '2020-11-03 15:24:45');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (145, 42, 145, '15:25:55', '2020-10-11 21:58:29', '2020-02-11 03:47:48');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (146, 78, 146, '12:32:10', '2016-02-08 17:53:22', '2020-08-04 04:47:49');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (147, 17, 147, '04:19:27', '2014-09-15 23:33:34', '2014-11-19 05:42:47');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (148, 37, 148, '20:59:58', '2018-02-04 13:32:14', '2020-02-08 21:31:50');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (149, 32, 149, '18:05:12', '2014-05-25 15:40:40', '2014-05-18 04:15:05');
INSERT INTO `views` (`id`, `user_id`, `video_id`, `dur_view`, `created_at`, `updated_at`) VALUES (150, 50, 150, '20:36:39', '2014-09-16 09:02:52', '2015-10-25 15:10:05');


