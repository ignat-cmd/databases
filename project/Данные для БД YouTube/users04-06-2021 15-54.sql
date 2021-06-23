#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Jerry', 'Gerlach', 'ana.grady@example.com', '174.112.1911x36374', '2013-06-05 14:40:23', '2014-07-19 15:43:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Hosea', 'Wolff', 'graham.lila@example.org', '537-586-1675x213', '2013-12-10 14:58:48', '2011-07-12 10:31:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Destini', 'Wyman', 'keeley.murray@example.net', '374-195-7998', '2020-05-02 19:31:21', '2018-06-17 04:54:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Anibal', 'Thompson', 'jarvis.pollich@example.org', '+76(2)1047896857', '2016-05-26 15:58:42', '2020-03-06 11:38:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Newton', 'Nitzsche', 'wilson32@example.org', '(599)819-3337x471', '2018-11-08 19:01:28', '2014-11-14 13:36:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Koby', 'Hudson', 'runolfsson.fidel@example.net', '1-331-816-3765x75942', '2011-10-03 08:59:14', '2012-08-26 01:12:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Eveline', 'Graham', 'mraynor@example.net', '635.678.3587', '2015-07-28 00:29:18', '2016-03-08 04:54:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Karley', 'Fadel', 'rocky21@example.com', '352-433-2316x392', '2019-03-27 07:00:07', '2013-10-09 16:34:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Omer', 'Walter', 'harley15@example.net', '1-199-719-2555', '2016-03-13 22:07:52', '2017-12-07 09:06:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Jeffery', 'Wiegand', 'jarmstrong@example.net', '+38(0)8995734619', '2014-01-30 13:40:52', '2021-01-01 10:53:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Christa', 'Schmeler', 'goyette.judge@example.org', '954.842.4283x68844', '2017-01-27 17:45:53', '2012-11-25 05:30:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Willa', 'Yundt', 'minerva69@example.org', '(448)010-2218x4763', '2021-04-28 19:54:21', '2013-03-12 17:08:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Mabelle', 'Upton', 'mpfeffer@example.com', '674-688-5362x6617', '2018-07-17 22:37:51', '2019-09-12 13:30:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Belle', 'Hermiston', 'coralie22@example.org', '(787)888-0083', '2015-11-13 23:10:04', '2012-03-01 20:28:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Jamey', 'Medhurst', 'kellie12@example.org', '1-220-772-5985x45707', '2014-10-07 10:33:32', '2012-11-06 01:16:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Brad', 'Farrell', 'wolff.maude@example.org', '482-637-0451', '2018-04-27 18:37:39', '2019-06-13 08:45:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Dylan', 'Marquardt', 'jbecker@example.com', '149.175.3674', '2011-10-06 12:14:32', '2018-09-29 01:46:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Lexie', 'Graham', 'arturo.hegmann@example.net', '223.148.8038x372', '2017-04-08 05:04:34', '2019-01-22 21:50:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Casper', 'Abernathy', 'schiller.duane@example.net', '00559137768', '2020-02-08 11:35:46', '2013-05-12 11:19:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Darion', 'Will', 'keyshawn46@example.com', '(886)325-7197x3614', '2019-09-30 17:14:53', '2016-06-21 10:45:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Adalberto', 'Reynolds', 'nlubowitz@example.org', '1-072-730-0499x3698', '2017-12-18 11:20:02', '2012-10-16 19:12:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Ulises', 'Bruen', 'reichel.jazmyn@example.com', '139.870.3230x0633', '2016-05-12 23:44:34', '2018-06-03 20:50:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Stanton', 'Bosco', 'katherine00@example.com', '726.821.5789', '2020-05-15 22:28:40', '2017-08-10 16:33:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Haven', 'Hettinger', 'orosenbaum@example.com', '08763644474', '2015-11-11 18:41:37', '2018-06-26 13:59:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Larissa', 'McLaughlin', 'opal72@example.net', '1-781-507-9197x94234', '2016-09-03 20:54:27', '2021-05-11 05:24:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Graham', 'Cummerata', 'jannie.kunze@example.net', '(054)979-5109x8013', '2021-06-02 16:29:16', '2017-04-23 15:35:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Cary', 'Kertzmann', 'leonard70@example.net', '04808680097', '2019-11-19 01:23:25', '2013-02-05 18:24:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Guiseppe', 'Kutch', 'pbergnaum@example.org', '1-781-358-7464', '2018-09-05 09:09:38', '2013-07-15 19:47:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Gerda', 'Reinger', 'bechtelar.zora@example.com', '(016)156-0993x04006', '2017-07-29 04:29:30', '2016-12-15 12:06:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Alexanne', 'Kutch', 'ulangworth@example.com', '1-104-521-7591x5115', '2016-11-17 21:05:12', '2019-01-18 05:48:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Monique', 'Lebsack', 'yschultz@example.org', '1-438-765-4084x710', '2017-01-02 10:34:54', '2020-04-17 03:06:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Eleazar', 'O\'Reilly', 'tspinka@example.com', '06574639616', '2014-06-15 19:37:22', '2016-02-28 00:02:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Eugene', 'Pollich', 'felicita.cummings@example.org', '547-582-1033x82023', '2019-07-10 09:28:28', '2019-06-19 03:04:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Adolf', 'Pacocha', 'fritsch.loraine@example.org', '188.293.2517x2383', '2017-04-17 16:45:39', '2011-11-27 12:05:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Christophe', 'Williamson', 'lind.nathan@example.com', '(803)928-7106', '2020-11-03 13:16:12', '2020-10-18 06:51:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Braxton', 'Schuppe', 'mitchel95@example.com', '869.215.7069x227', '2014-10-17 09:00:24', '2014-08-05 04:21:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Valentin', 'Berge', 'lizzie75@example.org', '016-126-4074', '2012-02-01 15:15:10', '2016-05-02 13:33:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Tiana', 'Jenkins', 'collier.elbert@example.net', '467-147-1493x734', '2011-09-05 01:23:58', '2012-11-20 06:42:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Ena', 'Spencer', 'econroy@example.com', '(120)885-9689x05450', '2018-03-12 05:00:15', '2018-06-15 06:52:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Franz', 'Gutkowski', 'strosin.marguerite@example.net', '(072)628-3173x128', '2014-07-07 13:06:47', '2014-01-06 04:18:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Henderson', 'Veum', 'cathy62@example.org', '09726055058', '2012-08-15 11:44:02', '2017-11-16 18:07:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Yvette', 'Dare', 'trantow.anna@example.com', '1-018-241-9929x9612', '2019-12-12 13:29:15', '2014-10-28 09:41:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Kaleigh', 'Rowe', 'gparisian@example.net', '(939)606-8095', '2018-02-10 23:19:06', '2015-11-05 05:17:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Colin', 'Okuneva', 'uhessel@example.org', '(875)815-9694', '2013-09-03 02:21:23', '2012-05-29 23:31:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Carmela', 'Kertzmann', 'shany29@example.org', '07917076157', '2016-09-26 19:21:44', '2011-07-04 12:50:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Gilbert', 'Satterfield', 'cschulist@example.net', '761.157.1021x327', '2018-09-17 16:05:59', '2013-11-30 09:44:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Assunta', 'Boehm', 'fay.elta@example.org', '811.210.7595', '2019-11-24 18:20:32', '2014-04-12 18:18:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Will', 'Bradtke', 'charlene10@example.org', '(015)655-6615x65782', '2014-10-17 08:39:17', '2013-06-14 04:55:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Izabella', 'Rippin', 'gmurazik@example.net', '627-283-6358x48062', '2013-01-24 06:42:46', '2021-02-05 09:10:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Addison', 'Prosacco', 'judah74@example.net', '+21(4)3136655590', '2013-02-12 07:58:06', '2015-08-23 08:29:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Brandyn', 'Connelly', 'monahan.jasper@example.com', '671-707-3512x98272', '2016-09-25 06:09:01', '2014-08-15 17:55:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Gianni', 'Reichert', 'hodkiewicz.jimmie@example.net', '+65(1)1463480598', '2015-10-30 11:23:14', '2015-12-18 10:10:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Hilario', 'Johnston', 'yasmine.keeling@example.net', '+82(4)5074544881', '2020-11-14 12:43:26', '2017-03-06 15:13:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Arnold', 'Frami', 'isaiah.torphy@example.net', '903.378.0309x986', '2014-01-30 12:26:36', '2013-02-10 06:04:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Chasity', 'Hills', 'brayan.mcglynn@example.com', '(480)164-2894x962', '2011-12-19 22:47:57', '2020-04-01 17:38:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Armando', 'Shields', 'nichole61@example.com', '999-530-6222', '2015-12-01 05:35:41', '2013-04-25 00:35:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Romaine', 'Greenfelder', 'zziemann@example.net', '03891428844', '2014-09-07 06:07:18', '2021-02-05 14:59:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Timmothy', 'Ratke', 'minerva42@example.com', '830-364-2701', '2016-09-09 13:57:21', '2013-01-04 17:19:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Dayna', 'Turner', 'israel02@example.org', '259.486.7802x14330', '2020-01-15 00:52:54', '2013-03-28 04:13:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Preston', 'Harber', 'tremblay.alta@example.com', '1-465-880-1352', '2019-09-03 18:17:57', '2012-01-29 16:43:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Kasandra', 'Harber', 'qmoen@example.com', '06532975793', '2019-04-08 03:33:36', '2019-11-02 05:41:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Christ', 'Trantow', 'flatley.justice@example.net', '980.688.9164', '2017-06-28 18:12:42', '2013-10-06 18:31:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Alfreda', 'Ankunding', 'torphy.lauryn@example.net', '(601)083-8461x17688', '2016-07-18 10:39:01', '2012-07-27 04:30:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Aylin', 'Sipes', 'logan.leannon@example.net', '02378196251', '2020-07-09 19:42:20', '2014-02-03 08:45:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Darwin', 'Spencer', 'lkeebler@example.net', '793.918.8556', '2020-07-21 13:34:37', '2018-10-22 19:25:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Bertrand', 'Stracke', 'goodwin.vilma@example.org', '(034)046-5489x327', '2014-08-30 20:01:12', '2012-01-30 22:04:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Keegan', 'Wilderman', 'kamron83@example.org', '775.398.8170', '2016-05-16 10:29:32', '2019-09-08 23:40:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Albert', 'Stokes', 'mjacobi@example.net', '(868)427-1309x2504', '2014-05-28 04:18:12', '2018-01-30 07:45:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Evert', 'Boyer', 'ibernier@example.com', '856-871-9320', '2016-02-20 02:39:12', '2016-02-14 18:55:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Gayle', 'Hodkiewicz', 'alycia75@example.net', '899-166-1528', '2016-06-30 08:44:57', '2015-07-05 07:05:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Ocie', 'Kemmer', 'letitia.white@example.org', '06080425706', '2012-09-28 08:54:39', '2018-04-26 06:30:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Della', 'Schmeler', 'iveum@example.com', '972-568-0451', '2016-05-25 03:15:39', '2018-09-29 14:43:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Ron', 'Feest', 'yhalvorson@example.org', '428-500-7012x4560', '2018-06-10 15:06:10', '2012-01-28 00:41:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Darion', 'Anderson', 'kautzer.angelina@example.org', '724.478.4579x8144', '2013-02-10 20:21:05', '2020-08-08 12:22:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Greta', 'Wehner', 'aufderhar.jovan@example.net', '543-721-8978', '2011-12-14 01:11:52', '2011-07-10 13:10:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Toni', 'Kling', 'kessler.marcellus@example.com', '473.186.2916x374', '2017-12-24 02:50:04', '2014-11-04 04:26:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Dillan', 'Fahey', 'mallie.friesen@example.net', '03561834963', '2020-04-26 03:45:22', '2017-07-29 12:01:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Raleigh', 'Blanda', 'jheathcote@example.net', '09455158150', '2014-07-20 23:09:23', '2018-04-30 02:42:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Russel', 'Grant', 'bechtelar.duncan@example.org', '1-960-395-7160', '2017-08-19 08:57:08', '2011-08-15 01:25:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Baron', 'Emmerich', 'cedrick47@example.net', '+26(1)3438415007', '2019-09-11 18:54:47', '2017-07-09 06:51:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Janis', 'Schiller', 'lkutch@example.net', '721-251-8055x3326', '2018-10-21 05:24:04', '2020-07-01 16:45:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Howard', 'Ledner', 'bconroy@example.com', '525.056.5820', '2014-04-13 18:12:34', '2016-10-23 11:17:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Reid', 'Marquardt', 'colin.ortiz@example.org', '(502)367-6888x0679', '2012-07-14 06:55:14', '2012-11-28 08:29:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Austin', 'Borer', 'hackett.bertrand@example.com', '1-923-316-6635x07863', '2011-11-01 08:07:44', '2017-07-02 11:33:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Tianna', 'Gaylord', 'iolson@example.com', '039.228.5184x93953', '2014-02-24 06:35:10', '2020-05-19 09:20:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Alexandrine', 'Ortiz', 'green.amani@example.com', '893.112.0833x2959', '2020-03-14 02:34:33', '2016-06-13 03:53:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Murphy', 'Osinski', 'tavares49@example.org', '1-178-163-2413', '2016-11-25 11:16:48', '2020-05-11 10:56:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Brant', 'Morissette', 'uwelch@example.net', '344.494.3082x122', '2016-06-01 00:08:23', '2016-11-21 03:33:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Augustine', 'Leuschke', 'xbartell@example.net', '1-731-330-2729x160', '2018-10-09 02:41:00', '2017-05-31 19:18:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Monty', 'Robel', 'jordon.lind@example.com', '958-179-6476x6448', '2015-09-10 00:50:02', '2018-12-19 12:11:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Kelvin', 'Swift', 'minnie.murphy@example.net', '650.924.5233x30409', '2021-03-09 18:52:38', '2019-03-04 11:42:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Cora', 'Reynolds', 'easter.carter@example.org', '+34(1)9231523864', '2020-04-16 15:57:19', '2019-07-24 04:09:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Augustus', 'Langosh', 'ulowe@example.org', '(446)837-1209x531', '2020-04-29 03:12:13', '2018-07-01 18:08:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Albina', 'Turcotte', 'tschmitt@example.org', '(478)402-7990x8981', '2011-12-14 09:47:39', '2015-02-09 21:42:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Ernie', 'Weimann', 'sschneider@example.org', '852.866.8241x7504', '2020-05-14 23:42:40', '2016-02-12 12:57:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Lindsay', 'Brown', 'schmidt.robyn@example.net', '797-958-7629', '2016-03-18 17:03:01', '2013-09-15 16:54:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Bernhard', 'Konopelski', 'jaylen.osinski@example.com', '(964)784-6826x2352', '2016-08-31 05:16:17', '2014-02-07 02:36:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Barton', 'Schumm', 'freda.murazik@example.com', '487.721.3729x0562', '2019-01-17 08:03:44', '2020-06-02 16:57:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Tamara', 'Labadie', 'ryost@example.com', '09375106007', '2012-06-21 07:46:17', '2014-01-20 00:45:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Bonita', 'Conroy', 'keeley04@example.org', '084.193.0398x399', '2016-06-27 01:02:47', '2015-04-19 22:51:13');


