#
# TABLE STRUCTURE FOR: subscriptions
#

DROP TABLE IF EXISTS `subscriptions`;

CREATE TABLE `subscriptions` (
  `channel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`,`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='подписчики';

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


