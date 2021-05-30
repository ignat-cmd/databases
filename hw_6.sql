-- Добмашка урок №6

-- 1. Создать и заполнить таблицы лайков и постов.

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
target_id INT UNSIGNED NOT NULL,
target_types ENUM('messages', 'users', 'posts', 'media') NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO likes -- Заполняем таблицу лайков
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    (SELECT name FROM target_types ORDER BY RAND() LIMIT 1),
    CURRENT_TIMESTAMP 
  FROM messages;
 
  -- Создадим таблицу постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SELECT * FROM posts WHERE created_at < updated_at;
UPDATE posts SET created_at = NOW();

DESC profiles;

ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
DESC messages;

ALTER TABLE messages
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
DESC friendship;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT friendship_friendship_status_id_fk
		FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id)
			ON DELETE CASCADE;
		
DESC communities_users;

ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_communities_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT communities_users_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
DESC posts;

ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT media_tupe_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON DELETE CASCADE;
 
DESC likes;

ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT likes_messeges_id_fk
		FOREIGN KEY (target_id) REFERENCES messages(id)
			ON DELETE CASCADE;
			
ALTER TABLE likes 
	DROP CONSTRAINT likes_user_id_fk,
	DROP CONSTRAINT likes_messeges_id_fk;

ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
	
ALTER TABLE posts                                -- Выдает ошибку! Cannot add or update a child row: a foreign key constraint fails (`vk`.`#sql-82_20`, CONSTRAINT `posts_community_id_fk` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE CASCADE)
	ADD CONSTRAINT posts_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE;
		
UPDATE posts SET community_id = NULL; -- Очистил значение поля community_id IN TABLE posts Связь установилась!

ALTER TABLE posts                                
	ADD CONSTRAINT posts_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE;
		
UPDATE posts SET media_id = NULL; -- Так же очисти столбец. С данными не получалось установить связь!

ALTER TABLE posts                                
	ADD CONSTRAINT posts_media_types_id_fk
		FOREIGN KEY (media_id) REFERENCES media_types(id)
			ON DELETE CASCADE;
		
-- Заполняем столбцы community_id and media_id по новой в ручную.
		
UPDATE posts SET community_id = FLOOR(1 + RAND() * 30); -- Изночально созда количество ID в фейкере больше чем количество сообществ)) разобрался!
UPDATE posts SET media_id = FLOOR(1 + RAND() * 4); -- Такая же ситуация! затупил)
UPDATE media SET user_id = FLOOR(1 + RAND() * 100);
UPDATE likes SET target_id = FLOOR(1 + RAND() * 80);

DELETE FROM likes WHERE id > 80;

ALTER TABLE likes
	ADD CONSTRAINT likes_users_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT likes_posts_id_fk
		FOREIGN KEY (target_id) REFERENCES posts(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT likes_media_id_fk
		FOREIGN KEY (target_id) REFERENCES media(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT likes_messages_id_fk
		FOREIGN KEY (target_id) REFERENCES messages(id)
			ON DELETE CASCADE;
		
		
-- 3 Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
	COUNT(*) AS amount,
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender
	FROM likes
	GROUP BY gender;

-- 4 Вывести для каждого пользователя количество созданных сообщений, постов, загруженных медиафайлов и поставленных лайков.

SELECT CONCAT(first_name, ' ', last_name) AS user,
(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) AS amount_messages,
(SELECT COUNT(*) FROM posts WHERE posts.user_id = users.id) AS posts_amount,
(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) AS media_amount,
(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) AS likes_amount
FROM users;


-- 5 (по желанию) Подсчитать количество лайков которые получили 10 самых молодых пользователей.


 SELECT CONCAT(first_name, ' ', last_name) AS user,
 (SELECT TIMESTAMPDIFF(YEAR, birthday, NOW()) FROM profiles WHERE profiles.user_id = users.id) AS age,
 (SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) AS likes_amount
 FROM users
ORDER BY age
LIMIT 10;


