#
# TABLE STRUCTURE FOR: comment_video
#

DROP TABLE IF EXISTS `comment_video`;

CREATE TABLE `comment_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='комментарии к видео';

INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (1, 80, 'Sunt porro doloremque neque explicabo veniam. Assumenda odio non et veniam sapiente doloremque placeat. Voluptatem doloremque dolore labore aut qui. Quo alias voluptatem qui eaque provident.', '2020-01-29 14:20:37', '2013-11-24 08:46:46');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (2, 89, 'Voluptatem dolorem voluptas corporis. Sit ipsa asperiores quia facilis dolorem. Quia labore ut qui recusandae rerum nihil.', '2016-12-29 23:32:49', '2016-01-07 15:15:49');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (3, 10, 'Voluptas neque et ex quam molestiae non cumque. Ipsum cumque et corrupti incidunt nesciunt est. Molestiae voluptatem enim velit. Et commodi eveniet corporis a.', '2012-01-10 20:07:25', '2011-11-02 16:18:22');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (4, 85, 'Libero in laboriosam hic tempore. Voluptas mollitia voluptates aut rem nesciunt velit. Cumque et culpa repellat reprehenderit optio eum quae. Veritatis ea blanditiis omnis dolor quo maxime.', '2016-07-29 14:56:53', '2021-05-13 10:43:30');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (5, 10, 'Nobis et aut aut placeat. Ullam nemo quo amet fugiat aut sunt enim est. Vitae deserunt asperiores ut quidem quia ad.', '2012-08-02 23:38:00', '2019-12-28 16:07:16');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (6, 77, 'Doloremque repellat dolorem enim distinctio id accusantium corporis. Dicta sit quia delectus hic. Nobis voluptas ut qui suscipit cupiditate beatae.', '2015-10-08 17:44:45', '2012-09-13 00:33:11');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (7, 27, 'Quam qui aut adipisci optio deserunt praesentium. Deserunt voluptate omnis dicta sit voluptates possimus.', '2014-01-11 03:39:01', '2019-05-01 19:05:22');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (8, 81, 'Est ipsa sed rerum deleniti odit aliquam. Reprehenderit laborum impedit ratione laborum accusamus.', '2011-09-10 00:48:25', '2013-02-10 12:42:01');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (9, 40, 'Nihil ut omnis doloremque animi. Eos voluptas deleniti molestias minus eius voluptate. Sint nulla consequuntur est vel iusto qui veritatis.', '2020-06-06 02:38:58', '2014-10-20 01:23:02');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (10, 71, 'Nam enim occaecati quia officia numquam voluptatem. Porro porro exercitationem cumque aliquid. Perspiciatis quis velit asperiores est ea explicabo.', '2016-07-02 15:43:22', '2015-02-17 10:33:15');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (11, 75, 'Est eos ipsam et. Quidem vitae eum sed optio enim qui. Nostrum non quos sint reprehenderit enim ut optio ut. Natus totam molestiae earum.', '2020-03-16 01:46:57', '2016-07-31 09:22:17');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (12, 9, 'Nisi deserunt voluptatem totam modi. Cum corrupti nihil voluptatem. Est voluptatem atque reiciendis rerum vitae. Reprehenderit consequatur quam delectus.', '2019-05-16 22:32:55', '2016-06-08 20:37:05');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (13, 78, 'Autem aspernatur dolorem voluptates molestiae soluta molestias. Ullam expedita quibusdam qui et optio deleniti. Voluptate non numquam aperiam blanditiis. Provident rerum odio ut maiores est ullam dolorem.', '2015-02-08 08:07:46', '2017-06-05 07:20:43');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (14, 48, 'Perspiciatis est optio vero deserunt corrupti mollitia et aut. Explicabo dolorem iste veritatis. Dolorem nemo aut eligendi itaque et quisquam harum.', '2017-02-10 08:13:30', '2015-08-29 03:00:23');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (15, 62, 'Temporibus aut aut ipsum. Atque dolore fugiat quia unde. Illo est sequi deleniti et ut voluptatibus minima.', '2020-07-24 09:35:55', '2016-03-31 07:48:25');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (16, 26, 'Quasi vel qui voluptatem vero laboriosam quidem et. Fuga in et sit omnis.', '2014-01-03 13:20:16', '2013-12-23 16:37:18');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (17, 29, 'Omnis ratione ea explicabo debitis. Necessitatibus harum non nesciunt qui sequi aut. Voluptatibus sint odio reprehenderit expedita. Provident omnis autem sit quo quibusdam voluptates maxime.', '2018-11-20 08:33:43', '2019-11-17 15:56:02');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (18, 22, 'Quis expedita ipsam qui accusamus. Natus laborum sint quia enim repellendus eveniet eum. Corrupti a dolor aut et. Et magni quia cumque ut quia harum quia.', '2017-02-04 15:35:09', '2011-09-22 00:31:16');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (19, 60, 'Odit omnis autem blanditiis at nobis assumenda asperiores reiciendis. Occaecati in neque cupiditate voluptas qui. Dignissimos voluptatem dicta et numquam eius et ut. Doloremque autem minima cum vel iure.', '2018-07-07 16:12:37', '2019-09-16 03:01:19');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (20, 92, 'Dolores qui distinctio corporis qui. Laboriosam qui reprehenderit ducimus quas totam. Optio voluptas in laboriosam facilis blanditiis aut ut.', '2012-05-30 09:33:24', '2016-10-13 15:53:48');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (21, 42, 'Sint praesentium ea repudiandae. Corrupti velit rerum ut libero. Aut repellat nesciunt qui quam eligendi consectetur repellendus. Aut a aperiam quibusdam.', '2019-11-04 17:24:28', '2016-12-05 07:13:26');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (22, 92, 'Dolores aliquid accusantium ut in adipisci vel. Facere neque ea voluptatem est id accusantium est. Excepturi sed quis repellat aperiam sint. Ullam rerum nostrum cum quo enim.', '2016-06-05 16:23:16', '2017-12-04 19:25:29');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (23, 14, 'Ipsam veritatis at vel quis nobis. Nam dolor nobis magnam culpa architecto qui non.', '2019-03-04 21:59:49', '2020-02-06 02:21:50');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (24, 16, 'Sit enim est enim praesentium. Dolorum cum sed reprehenderit. Iusto voluptatem aspernatur aut et est id explicabo ut. Laborum magni non nihil nam vel odit.', '2012-05-19 11:15:15', '2020-08-20 06:58:14');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (25, 45, 'Quaerat et ut qui voluptas. Et rerum a sunt voluptatum doloribus. Vero enim iure qui molestiae sit dolor laborum.', '2020-01-27 05:47:33', '2019-08-10 06:53:36');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (26, 79, 'Voluptas maiores repudiandae hic incidunt. Eum aperiam dolores pariatur vitae sit. Maxime ad adipisci nam. Beatae exercitationem labore ipsum recusandae saepe.', '2018-06-13 19:08:30', '2021-05-15 12:52:15');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (27, 46, 'Quod sapiente fugit aut ipsam. Dicta veniam explicabo voluptatem est aut libero. Dolor voluptate quis reiciendis dolor quisquam dolor.', '2019-03-16 23:50:58', '2019-12-24 08:53:45');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (28, 9, 'Esse possimus deleniti soluta quia iusto qui qui. Suscipit numquam dolor expedita dolorem accusantium. Pariatur et adipisci sint enim et quia.', '2015-01-03 19:51:00', '2015-12-06 14:41:14');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (29, 36, 'Deserunt blanditiis sequi aut tenetur dolorem et. Repellat harum soluta eum molestiae reprehenderit veritatis. Quia quibusdam eaque rerum distinctio.', '2014-09-15 03:15:36', '2019-09-29 01:25:56');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (30, 72, 'Distinctio qui eos accusantium in vitae voluptates illum. Nobis sunt eveniet amet dolore a aut placeat. Error et numquam velit et sint et qui quia. Alias quo ipsa quam.', '2011-10-31 11:02:11', '2011-08-04 00:00:19');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (31, 1, 'Pariatur sint et autem optio voluptatem esse. Placeat placeat fugit quia fuga neque tenetur. Rerum odit nam sed dolores est. Et nam aut sunt ut expedita.', '2020-11-09 22:51:52', '2017-05-10 13:49:23');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (32, 15, 'Quae vitae culpa sed ratione nesciunt animi quibusdam. Consequatur dolores molestias repellat magni.', '2017-07-12 23:37:43', '2014-02-02 11:15:26');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (33, 89, 'Quis id rerum repellendus quibusdam. Corrupti non dolore et ut.', '2016-10-22 14:22:07', '2013-10-01 14:26:25');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (34, 20, 'Quibusdam reiciendis omnis fuga veritatis. Sit blanditiis sunt beatae voluptatum voluptas nobis ut. Alias pariatur maiores tempora architecto dolorum reprehenderit. Soluta qui deserunt qui eum cumque nobis qui nesciunt.', '2013-01-19 15:09:44', '2020-09-30 01:42:58');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (35, 25, 'Enim voluptatem pariatur velit quasi et optio. Temporibus delectus maiores eaque.', '2013-01-15 17:42:54', '2012-01-11 00:21:42');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (36, 81, 'Fugiat pariatur aut saepe. Repudiandae odit corporis rerum. Numquam possimus sit consequatur unde voluptatem.', '2016-03-09 23:07:57', '2019-12-22 07:52:10');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (37, 97, 'Et est delectus assumenda et. Sunt cupiditate tempora sunt mollitia facere consequatur. Iste facilis maxime dolore ut dicta. In temporibus quibusdam ab et et.', '2012-08-03 20:28:51', '2012-04-30 03:55:05');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (38, 96, 'Id minus laudantium nesciunt facere omnis atque nihil molestiae. Beatae rerum rerum ratione est esse soluta ab nobis.', '2012-06-05 04:25:16', '2013-07-14 17:04:43');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (39, 21, 'Vero expedita repudiandae minus tempore. Et nisi molestiae non. Facilis animi quaerat et et commodi aut veniam sint. Laboriosam corrupti pariatur veritatis quidem.', '2019-02-06 17:28:56', '2019-06-15 18:22:18');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (40, 41, 'Et sed sit id consequuntur a ipsa et. Non libero velit qui aspernatur qui tempore. Sed dolor et fuga.', '2018-04-07 10:37:11', '2017-12-10 21:30:42');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (41, 33, 'Ipsum facere velit voluptates mollitia quisquam. Qui ut animi sit unde expedita. Velit autem ipsa et autem autem ipsam laboriosam. Animi qui quia iure eos.', '2017-04-25 10:13:50', '2012-07-13 16:01:17');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (42, 11, 'Ut quia sit quia. Eveniet deserunt nostrum et ut atque id sed. Et laborum corrupti cumque modi accusamus magni eum cupiditate. Sequi voluptate dolores voluptatem aut fugit omnis sapiente.', '2018-01-30 00:40:37', '2018-05-03 07:26:26');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (43, 12, 'Officiis eos nemo aut quisquam vel delectus. Cupiditate assumenda ut ut nemo optio eos dolorum. Et labore aut voluptate ipsum dolorum nihil.', '2017-09-24 15:54:05', '2020-10-17 18:38:17');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (44, 77, 'Voluptates rerum quos qui voluptatem nobis doloribus neque. Dolorem dicta non distinctio. Sequi neque vel dicta est aliquam. Ratione nemo aspernatur sit vel omnis.', '2014-09-01 03:37:52', '2021-05-03 06:33:37');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (45, 55, 'Porro repellat magnam recusandae rem possimus omnis nesciunt. In modi blanditiis in dolores blanditiis. Fuga nisi modi et quae. Perferendis facilis voluptas dolor et temporibus cumque eius. Dolore vitae maiores eos iusto quae sequi et.', '2016-12-07 18:13:03', '2015-04-04 17:12:07');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (46, 10, 'Sunt ipsa est repudiandae at. Culpa laborum ab autem laborum est. Voluptas recusandae ex quos facere. Aut optio delectus provident dolor doloremque nostrum.', '2020-07-25 00:32:41', '2018-01-30 16:30:42');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (47, 21, 'Et quis nulla molestiae est ut aut facere sit. Commodi voluptates sit officia omnis voluptas sed dolores. Maxime ea dolorem sapiente nam impedit. Sit ut est provident enim. Magnam soluta cupiditate aperiam sit.', '2020-10-23 14:06:47', '2013-07-06 23:24:54');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (48, 27, 'Et omnis et enim enim ut. Optio veniam soluta nulla distinctio culpa odio. Velit cum minus consequatur molestiae voluptas ut occaecati.', '2014-06-06 04:17:40', '2012-04-14 00:27:58');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (49, 40, 'Sequi id reiciendis fugiat. Ut magnam numquam aperiam et ut accusamus ut. Maxime itaque non est. Aliquam voluptatum facere molestias et. Excepturi ut sed quas consequatur.', '2017-03-19 06:24:04', '2014-02-14 10:06:51');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (50, 99, 'Distinctio voluptate ex velit reprehenderit. Quas necessitatibus mollitia dolorem cumque non et. Dolor quia distinctio illo iste. Saepe neque fuga et consequatur.', '2015-02-19 11:35:28', '2013-05-07 06:45:56');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (51, 54, 'Odio doloribus possimus voluptatem impedit. Quia corrupti quia et ea dolorem natus consequatur. Distinctio corporis error nemo iusto ipsam eaque. Et velit voluptatem doloribus amet.', '2018-02-25 04:51:44', '2017-04-13 17:47:07');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (52, 38, 'Corrupti inventore qui repudiandae recusandae eum earum. Vel quod quis atque nisi. Ab similique similique molestias culpa.', '2015-05-03 16:09:21', '2018-07-27 17:16:39');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (53, 17, 'Accusantium at libero aut aut dolorem aliquam mollitia debitis. Exercitationem odio vel id. Placeat culpa totam culpa aliquid illum corrupti qui atque. Beatae deserunt quia vitae fugiat.', '2020-09-16 06:17:06', '2012-03-18 10:50:43');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (54, 30, 'Non sit accusantium velit. Debitis maxime voluptas velit ut. Ea nostrum perspiciatis sunt vitae. Pariatur voluptatum ducimus culpa nobis.', '2015-11-27 00:44:50', '2016-12-20 12:05:02');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (55, 95, 'Dolorum natus qui nisi. Qui id voluptatem aut qui eveniet cumque. Quia sunt commodi aut ipsam incidunt.', '2012-02-24 19:53:32', '2013-09-17 04:58:31');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (56, 73, 'Praesentium libero fugit repudiandae recusandae nobis porro nostrum officiis. Sint aut repellendus accusantium placeat deserunt pariatur perferendis omnis. Numquam et repudiandae illum ea sit.', '2011-07-23 06:33:19', '2019-05-22 16:42:24');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (57, 62, 'Eum delectus voluptate dolorem autem voluptate saepe fugiat. Corrupti culpa aspernatur omnis enim similique eum. Illum ut omnis eaque atque. Ea ad autem ut cupiditate quia dignissimos unde.', '2018-06-13 00:07:46', '2015-02-25 08:20:48');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (58, 29, 'Aut laborum ipsum quibusdam enim molestiae. Repudiandae et qui praesentium ut dolore facilis quia. Totam nobis illum amet maxime. Optio et odit cupiditate sed dignissimos et voluptatem ut.', '2018-11-26 17:34:52', '2015-03-19 13:37:15');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (59, 60, 'Cum animi necessitatibus sunt architecto nesciunt qui. Quisquam natus harum ab doloribus sunt. Non non et qui voluptatum. Occaecati distinctio temporibus dolore corrupti libero iusto.', '2019-03-04 19:01:14', '2013-09-01 16:45:33');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (60, 33, 'Libero quia eaque iusto. Facilis in quia vitae. Sunt sed ab excepturi nostrum doloremque. Iste consectetur labore temporibus ea molestiae. Culpa non corporis repellat nobis.', '2016-03-11 05:30:03', '2017-05-01 09:19:16');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (61, 46, 'Eveniet quo ipsa dolorem sed in et cum. A reprehenderit impedit est fugiat quia repellat quo. Porro necessitatibus tempora voluptatem illum voluptatum et officiis.', '2020-12-02 02:19:49', '2021-04-08 21:06:42');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (62, 82, 'Adipisci hic eos doloremque laudantium maiores. Reprehenderit nisi aut odio. Architecto voluptatum explicabo rerum repudiandae et aliquid. Omnis repellendus voluptatum et nisi.', '2016-04-07 12:30:28', '2014-10-05 23:07:40');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (63, 47, 'Similique maxime asperiores quis distinctio fuga quidem aut officiis. Et ipsam sed ad sunt. Aperiam adipisci consequuntur aut magni consequatur. Deleniti itaque similique odio velit delectus.', '2014-11-18 13:40:43', '2011-08-21 16:23:52');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (64, 54, 'Ut qui fugiat exercitationem porro corrupti ea omnis. Neque eum sit corrupti quos. Voluptas quia eum sed vitae asperiores a qui.', '2017-10-22 11:38:47', '2018-06-14 14:10:32');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (65, 70, 'Odio voluptatem earum quia voluptas. Delectus ullam maxime sequi soluta explicabo perferendis. Ad temporibus nemo quis quo totam. Veniam ut odit nobis laboriosam maxime.', '2013-06-29 02:22:10', '2011-07-30 05:53:24');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (66, 58, 'Odio error quaerat dicta sunt. Recusandae at tenetur non sed nesciunt. Molestiae quasi occaecati dicta magni.', '2012-01-31 02:00:21', '2015-04-01 14:06:26');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (67, 30, 'Sit repudiandae unde excepturi ut ullam. Itaque optio alias voluptatem sed quos aut voluptas. Corporis sint molestiae harum sunt itaque qui. Magni optio sint voluptas tenetur et non.', '2016-03-23 09:53:59', '2017-02-14 23:09:34');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (68, 6, 'Vero sed omnis fugiat dolorum neque molestiae sint. Reprehenderit veniam rem soluta a. Atque dolores adipisci optio ea repudiandae aut ex.', '2012-12-07 05:35:46', '2015-02-24 02:41:34');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (69, 12, 'Fugit labore vero dolorem facere vitae. Et sit maiores magni quis dicta. Totam nostrum nam ipsam eaque necessitatibus quisquam. Distinctio aut officia error necessitatibus molestias pariatur autem rem.', '2017-04-20 03:48:01', '2012-07-22 06:59:32');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (70, 60, 'Iusto qui a sint. Omnis ut pariatur nemo eum aut natus beatae aut. Veritatis molestias nam placeat id. Aperiam voluptate maxime rerum doloremque.', '2014-12-18 05:13:52', '2016-12-27 06:40:41');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (71, 63, 'Voluptates maiores accusamus ducimus et porro molestiae. Qui a possimus ut sit error ad.', '2018-01-25 08:55:35', '2019-01-10 17:06:10');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (72, 74, 'Architecto doloremque voluptas modi et aliquam qui. Et ullam molestiae maiores reiciendis beatae est eos nostrum. Et iure accusantium quas. Molestiae at debitis ipsam.', '2015-03-23 05:42:51', '2019-12-16 18:23:01');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (73, 83, 'Provident perferendis enim rerum aut nulla quos. Eveniet reprehenderit perspiciatis sunt. Aut dignissimos nam repellendus molestias aut.', '2018-02-21 16:10:23', '2021-01-26 02:17:20');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (74, 84, 'Qui cupiditate sed tempore non nisi praesentium iure. Sed quibusdam provident incidunt et reiciendis est voluptatum. Laudantium et dolores ipsum impedit quos hic. Repellendus cumque ut aut voluptatum.', '2016-04-26 15:06:31', '2017-09-15 09:32:44');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (75, 14, 'Odit atque non dolore enim suscipit. Praesentium ipsa in sint quo officiis ducimus et optio. Velit tempora quam voluptatum qui autem modi architecto. Nemo dignissimos omnis adipisci deserunt facilis. Et doloribus quaerat dolore.', '2011-08-03 11:27:00', '2016-04-06 18:18:47');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (76, 72, 'Eius asperiores in repellendus ut perspiciatis rerum non. Nihil omnis recusandae dolorem architecto non earum quia. Quia quis sint quod et quia officiis sapiente.', '2015-09-10 11:58:42', '2017-03-18 02:39:18');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (77, 5, 'Ab corporis quisquam voluptatum. Doloremque maxime non qui nihil maiores eos neque ut. Quae et sunt fuga aperiam doloribus ut.', '2020-07-02 07:01:47', '2018-02-20 18:38:25');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (78, 19, 'Dolores aut quo nisi ad repudiandae sunt aut ratione. Delectus est praesentium ratione explicabo porro tempora quo ut. Et in consequatur voluptatem in. Ipsum eos quam consequatur sint quia molestiae.', '2021-01-03 20:24:19', '2017-06-05 03:30:23');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (79, 99, 'Eum quisquam ipsa vero qui eaque dolorem ipsum. Sunt distinctio nulla sapiente rerum nisi quasi soluta. Possimus doloremque qui perspiciatis repellendus quod occaecati ratione ea. Consequatur veniam accusantium est veritatis laboriosam iusto.', '2017-01-14 00:26:11', '2018-06-19 02:09:22');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (80, 30, 'Sint voluptates alias hic ipsa. Sint sit impedit dolorum necessitatibus totam. Fuga qui omnis quia voluptates quasi. Fugit amet qui dolor sint perspiciatis laudantium minima.', '2021-01-24 21:12:31', '2018-10-15 05:48:14');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (81, 32, 'Et sed aut repellat vel iste et veniam. Maxime et nihil odit qui enim nihil. Nihil nostrum recusandae architecto eligendi voluptates qui earum.', '2016-03-28 22:03:51', '2021-02-02 00:06:11');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (82, 72, 'Quibusdam modi vero autem qui quis ducimus explicabo. Autem et dolores doloremque quis at accusantium omnis. Nemo ratione et tenetur earum iste aut. Quasi minima quod dolores ad voluptas temporibus.', '2013-06-14 02:33:53', '2020-11-18 04:06:33');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (83, 21, 'Maxime molestiae labore sequi. Odit est deleniti rerum quia dicta atque cumque. Mollitia dolore similique non deleniti.', '2021-04-17 11:57:07', '2017-01-25 20:02:12');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (84, 34, 'Omnis et fugit recusandae est. Reiciendis voluptatem dolores sed ea id rerum sint. Nobis quia vitae at quo voluptas nihil officiis.', '2014-02-24 13:41:17', '2015-03-28 08:38:21');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (85, 26, 'Perferendis non sit dolores suscipit. Amet cupiditate in distinctio veniam incidunt. Ut perspiciatis et placeat tenetur aut est.', '2017-08-27 10:29:14', '2019-08-05 04:50:29');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (86, 45, 'Eligendi consequuntur animi quis commodi enim excepturi occaecati. Qui hic ipsa perferendis non incidunt neque. Nihil accusantium dolor corporis. Cumque sunt illo incidunt quisquam quas quod porro.', '2019-10-01 11:31:25', '2011-06-11 20:50:47');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (87, 52, 'Laboriosam ut occaecati delectus et nemo blanditiis temporibus possimus. Quia fugit ut rerum labore voluptatibus vitae ipsum. Cum rerum sint enim adipisci labore. Et esse velit sed fugit ut.', '2016-12-10 02:08:37', '2018-12-29 18:37:54');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (88, 28, 'Rerum quasi est fugit adipisci sed magni. Blanditiis nihil quis veniam iusto eos corrupti. Aut autem cupiditate nulla voluptatum rem accusamus nihil.', '2020-04-02 14:21:24', '2011-06-13 21:10:01');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (89, 11, 'Eligendi rerum vel iure possimus perferendis et ratione. Odit officia non id porro dignissimos doloremque id. Sed dolor vel sed et necessitatibus omnis.', '2013-08-25 19:43:19', '2018-09-01 08:15:54');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (90, 73, 'Et eum sed maiores voluptate consequatur. Nesciunt voluptates est voluptatum est vel ut.', '2012-04-26 04:49:59', '2019-09-29 05:20:04');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (91, 69, 'Quos doloremque sit quas non. Delectus earum facilis assumenda ut voluptas dolor ipsum.', '2015-08-08 19:28:46', '2018-12-18 16:39:00');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (92, 3, 'Distinctio ut in illum delectus ut blanditiis. Tempora maiores sint ad id. Maiores dolor molestiae voluptatem fuga quidem voluptatem qui.', '2015-03-23 22:54:45', '2016-04-15 17:25:18');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (93, 69, 'Rerum ipsam fuga omnis exercitationem. Incidunt provident aut quas animi. Maxime illo minima vero aut veritatis asperiores libero.', '2013-03-17 01:57:38', '2014-05-30 07:47:36');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (94, 15, 'Distinctio unde dolores provident quaerat. Est assumenda expedita assumenda corporis facere dolorem. Iste accusamus aliquam exercitationem velit. Ut veniam possimus id illo hic perspiciatis.', '2014-07-23 21:41:44', '2013-06-16 09:34:35');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (95, 98, 'Eveniet soluta iste exercitationem reprehenderit qui distinctio enim quisquam. Et vitae aperiam dolorem reiciendis deserunt dolores eaque non. Sapiente deleniti iure distinctio autem dolorum at reprehenderit laboriosam.', '2014-01-04 23:07:49', '2020-11-01 00:04:44');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (96, 39, 'Fugiat et dolor dolores animi dicta natus iste ad. Veniam ea pariatur rerum praesentium et eveniet nihil.', '2013-06-24 12:19:14', '2018-03-23 04:37:30');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (97, 10, 'Et voluptatibus at qui qui dolorem numquam. Aperiam voluptate numquam aperiam ut aperiam qui deserunt. Deleniti voluptas optio quam nihil voluptas nisi fugit. Hic numquam quis sed voluptas est vel.', '2016-12-06 05:33:15', '2017-10-22 03:28:49');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (98, 68, 'Ut aperiam minus quod voluptatibus sed quis non. Iste itaque quaerat alias excepturi excepturi quod iusto praesentium. Quis qui et vel explicabo.', '2013-06-29 11:56:53', '2019-01-05 19:02:21');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (99, 78, 'Velit neque provident eius libero iste voluptatem. Nobis aliquam vitae tenetur ducimus. Voluptatum ullam explicabo perspiciatis non est consequatur. Adipisci natus ut reiciendis dolor. Sed sed ut dolorum.', '2013-03-17 01:41:44', '2017-02-14 09:40:05');
INSERT INTO `comment_video` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES (100, 83, 'A et laboriosam illum at. Ea voluptatibus exercitationem et est dignissimos. Sed sequi ea non voluptatem voluptatem quae. Similique soluta ea aut officia voluptatem impedit.', '2011-09-15 03:42:43', '2015-01-17 12:14:17');


