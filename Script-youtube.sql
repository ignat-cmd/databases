-- Итоговый проект на примере сайта YouTube

-- Предпологаемые таблицы для работы видеохостинга.

-- 1. users
-- 2. profiles
-- 3. channels
-- 4. videos
-- 5.1 video_types
-- 6. likes
-- 7. like_type
-- 8. comment_video
-- 9. subscriptions
-- 10. history_whatch
-- 11. playlists
-- 12. views

-- Создать триггер для невозможности одного пользователя поставить несколько лайков одному видео
-- Исправить данные для таблицы коммлентариев


CREATE DATABASE youtube;
USE youtube;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
email VARCHAR(100) NOT NULL,
phone VARCHAR(100) NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
user_id INT UNSIGNED NOT NULL PRIMARY KEY,
gender CHAR(1) NOT NULL,
birthday DATE,
city VARCHAR(100) NOT NULL,
country VARCHAR(100) NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица каналов видео
DROP TABLE IF EXISTS channels;
CREATE TABLE channels (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
name VARCHAR(255) NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица видео-роликов канала(ов).Видео могут загружать только каналы
DROP TABLE IF EXISTS videos;
CREATE TABLE videos (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
channel_id INT NOT NULL,
name VARCHAR(255) NOT NULL,
hashtags VARCHAR(255) COMMENT 'Хэштеги для продвижения видео',
video_type_id INT NOT NULL COMMENT 'тип видео VR, 360',
size INT NOT NULL,
metadate JSON,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица типов видео(360, VR, H263)
DROP TABLE IF EXISTS video_types;
CREATE TABLE video_types (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица лайков для видео-роликов
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
like_type_id INT NOT NULL COMMENT 'лайк или дизлайк',
target_id INT UNSIGNED NOT NULL COMMENT 'кому поставили лайк',
target_types ENUM('comment_video', 'videos') NOT NULL
);

-- Таблица типов лайков "ЛАЙК" "ДИЗЛАЙК"
DROP TABLE IF EXISTS like_type;
CREATE TABLE like_type (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL COMMENT 'Лайк или Дизлайк',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица комментариев к видео
DROP TABLE IF EXISTS comment_video;
CREATE TABLE comment_video (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
video_id INT NOT NULL,
user_id INT UNSIGNED NOT NULL,
body TEXT NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'комментарии к видео';

-- Таблица подписчиков канала пользователя
DROP TABLE IF EXISTS subscriptions;
CREATE TABLE subscriptions (
channel_id INT NOT NULL COMMENT 'канал',
user_id INT NOT NULL COMMENT 'подписчик',
PRIMARY KEY (user_id, channel_id),
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) COMMENT 'подписчики';

-- Таблица истории просмотров пользователя. Хотел сделать как плейлист истории. Но его можно формировать в процессе работы базы данных. Надобность отпала.
DROP TABLE IF EXISTS history_whatch;
CREATE TABLE history_whatch (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
video_id INT NOT NULL COMMENT 'по id video определим популярный канал',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица плейлистов видео пользователя
DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
name VARCHAR(255) NOT NULL,
video_id INT NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица просмотров видео
DROP TABLE IF EXISTS views;
CREATE TABLE views (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL COMMENT 'кто посмотрел',
video_id INT NOT NULL COMMENT 'просмотренное видео',
dur_view TIME NOT NULL COMMENT 'продолжительность просмотра видео',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SHOW TABLES;

SELECT * FROM users;
SELECT * FROM profiles;
SELECT * FROM channels;
SELECT * FROM videos;
SELECT * FROM comment_video;































































