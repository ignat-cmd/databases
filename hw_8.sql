-- 3 Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
	COUNT(*) AS amount,
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender
	FROM likes
	GROUP BY gender;

-- Решение с JOIN

SELECT profiles.gender, COUNT(likes.user_id) AS likes FROM profiles JOIN likes
ON profiles.user_id = likes.user_id
GROUP BY profiles.gender
ORDER BY likes 
DESC
LIMIT 1;
	

-- 4 Вывести для каждого пользователя количество созданных сообщений, постов, загруженных медиафайлов и поставленных лайков.

SELECT * FROM messages WHERE from_user_id = 2;
SELECT * FROM posts;
SELECT * FROM users;
SELECT * FROM profiles;
SELECT * FROM likes;

SELECT CONCAT(first_name, ' ', last_name) AS user,
(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) AS amount_messages,
(SELECT COUNT(*) FROM posts WHERE posts.user_id = users.id) AS posts_amount,
(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) AS media_amount,
(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) AS likes_amount
FROM users;

-- Вариант решения с JOIN

SELECT CONCAT(users.first_name, ' ', users.last_name) AS users,
COUNT(messages.from_user_id) AS message,
COUNT(posts.user_id) AS post,
COUNT(media.filename) AS media,
COUNT(likes.created_at) AS likes
	FROM users LEFT OUTER JOIN messages
	ON users.id = messages.from_user_id
	LEFT JOIN posts
	ON users.id = posts.user_id
	LEFT JOIN media
	ON users.id = media.user_id
	LEFT JOIN likes
	ON users.id = likes.user_id
		GROUP BY users;


-- 5 (по желанию) Подсчитать количество лайков которые получили 10 самых молодых пользователей.


 SELECT CONCAT(first_name, ' ', last_name) AS user,
 (SELECT TIMESTAMPDIFF(YEAR, birthday, NOW()) FROM profiles WHERE profiles.user_id = users.id) AS age,
 (SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) AS likes_amount
 FROM users
ORDER BY age
LIMIT 10;

-- Вариант решения с JOIN

SELECT CONCAT(users.first_name, ' ', users.last_name) AS users, TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age, likes.created_at AS likes
FROM users LEFT JOIN profiles
ON users.id = profiles.user_id
LEFT JOIN likes
ON users.id = likes.user_id
ORDER BY age
LIMIT 10;

---------------------------------------------------------------------

SELECT CONCAT(users.first_name, ' ', users.last_name) AS users,
COUNT(likes.created_at) AS likes,
profiles.birthday
	FROM users
	LEFT JOIN likes
	ON users.id = likes.user_id
	LEFT JOIN profiles
	ON users.id = profiles.user_id
		GROUP BY users; -- почему то не считает




