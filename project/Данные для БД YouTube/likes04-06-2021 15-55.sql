#
# TABLE STRUCTURE FOR: likes
#

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `like_type_id` int(11) NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `target_types` enum('comment_video','videos') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (1, 95, 1, 118, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (2, 63, 2, 124, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (3, 20, 1, 174, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (4, 15, 2, 28, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (5, 85, 1, 74, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (6, 49, 2, 142, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (7, 44, 1, 1, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (8, 97, 2, 69, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (9, 16, 1, 133, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (10, 83, 2, 55, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (11, 67, 1, 197, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (12, 70, 2, 72, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (13, 3, 1, 161, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (14, 94, 2, 16, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (15, 19, 1, 120, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (16, 56, 2, 132, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (17, 10, 1, 41, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (18, 25, 2, 137, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (19, 91, 1, 184, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (20, 69, 2, 40, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (21, 54, 1, 12, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (22, 30, 2, 42, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (23, 72, 1, 49, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (24, 71, 2, 13, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (25, 95, 1, 148, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (26, 41, 2, 180, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (27, 59, 1, 26, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (28, 85, 2, 196, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (29, 56, 1, 139, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (30, 11, 2, 112, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (31, 92, 1, 113, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (32, 25, 2, 101, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (33, 43, 1, 185, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (34, 20, 2, 4, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (35, 84, 1, 187, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (36, 40, 2, 148, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (37, 77, 1, 16, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (38, 12, 2, 35, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (39, 8, 1, 100, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (40, 38, 2, 59, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (41, 14, 1, 34, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (42, 91, 2, 59, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (43, 91, 1, 141, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (44, 87, 2, 86, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (45, 76, 1, 4, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (46, 52, 2, 41, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (47, 66, 1, 117, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (48, 61, 2, 133, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (49, 72, 1, 24, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (50, 65, 2, 123, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (51, 99, 1, 13, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (52, 35, 2, 83, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (53, 81, 1, 148, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (54, 46, 2, 24, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (55, 9, 1, 91, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (56, 14, 2, 42, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (57, 16, 1, 81, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (58, 87, 2, 19, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (59, 13, 1, 198, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (60, 37, 2, 121, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (61, 19, 1, 129, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (62, 23, 2, 75, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (63, 19, 1, 108, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (64, 13, 2, 177, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (65, 75, 1, 157, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (66, 64, 2, 91, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (67, 87, 1, 90, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (68, 68, 2, 102, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (69, 71, 1, 48, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (70, 84, 2, 22, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (71, 68, 1, 106, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (72, 19, 2, 84, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (73, 17, 1, 76, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (74, 17, 2, 198, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (75, 36, 1, 51, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (76, 71, 2, 54, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (77, 21, 1, 48, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (78, 16, 2, 52, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (79, 63, 1, 64, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (80, 1, 2, 42, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (81, 35, 1, 63, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (82, 6, 2, 51, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (83, 16, 1, 52, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (84, 59, 2, 179, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (85, 41, 1, 97, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (86, 64, 2, 92, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (87, 47, 1, 72, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (88, 56, 2, 3, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (89, 60, 1, 77, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (90, 75, 2, 164, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (91, 39, 1, 149, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (92, 30, 2, 150, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (93, 5, 1, 110, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (94, 51, 2, 41, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (95, 61, 1, 71, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (96, 48, 2, 56, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (97, 80, 1, 38, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (98, 69, 2, 158, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (99, 57, 1, 197, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (100, 17, 2, 98, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (101, 45, 1, 114, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (102, 59, 2, 18, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (103, 71, 1, 13, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (104, 39, 2, 75, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (105, 35, 1, 62, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (106, 86, 2, 28, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (107, 73, 1, 148, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (108, 80, 2, 186, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (109, 19, 1, 158, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (110, 57, 2, 37, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (111, 63, 1, 37, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (112, 11, 2, 114, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (113, 42, 1, 95, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (114, 26, 2, 42, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (115, 70, 1, 197, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (116, 59, 2, 57, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (117, 39, 1, 171, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (118, 36, 2, 67, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (119, 15, 1, 156, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (120, 95, 2, 41, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (121, 26, 1, 24, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (122, 99, 2, 99, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (123, 91, 1, 67, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (124, 41, 2, 122, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (125, 56, 1, 170, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (126, 2, 2, 18, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (127, 30, 1, 26, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (128, 9, 2, 1, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (129, 7, 1, 169, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (130, 72, 2, 95, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (131, 69, 1, 22, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (132, 94, 2, 115, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (133, 84, 1, 134, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (134, 32, 2, 127, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (135, 16, 1, 108, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (136, 26, 2, 113, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (137, 76, 1, 86, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (138, 57, 2, 17, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (139, 94, 1, 116, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (140, 18, 2, 42, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (141, 61, 1, 36, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (142, 69, 2, 110, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (143, 78, 1, 196, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (144, 6, 2, 6, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (145, 82, 1, 114, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (146, 6, 2, 121, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (147, 38, 1, 173, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (148, 78, 2, 127, 'comment_video');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (149, 60, 1, 103, 'videos');
INSERT INTO `likes` (`id`, `user_id`, `like_type_id`, `target_id`, `target_types`) VALUES (150, 17, 2, 181, 'comment_video');


