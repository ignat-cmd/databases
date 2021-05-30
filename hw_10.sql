

-- 1. Проанализировать какие запросы могут выполняться наиболее часто
-- в процессе работы приложения и добавить необходимые индексы.

SHOW INDEX FROM users;

DROP INDEX users_last_name_idx ON users;

CREATE INDEX users_first_name_last_name_idx ON users(first_name, last_name);

DESC posts;

CREATE INDEX posts_user_id_idx ON posts(user_id);
CREATE INDEX posts_head_media_id_idx ON posts(head, media_id);

DESC media;

CREATE INDEX media_filename_idx ON media(filename);

DESC communities;

CREATE INDEX communities_name_idx ON communities(name);

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах (сумма количестива пользователей во всех группах делённая на количество групп)
-- самый молодой пользователь в группе (желательно вывести имя и фамилию)
-- самый старший пользователь в группе (желательно вывести имя и фамилию)
-- количество пользователей в группе
-- всего пользователей в системе (количество пользователей в таблице users)
-- отношение в процентах для последних двух значений (общее количество пользователей в группе / всего пользователей в системе) * 100


SELECT communities.name,
((SELECT SUM(communities_users.user_id) FROM communities_users) / (SELECT SUM(communities.id) FROM communities;)) OVER() AS avarage,
SELECT 


-- Пока что не разобрался(( Постараюсь применить в иноговом проекте!















