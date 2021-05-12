USE hw_5;

-- Заполнить created_at и updated_at текущеми датами и временем.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME 
) COMMENT "Покупатели";

SELECT * FROM users;

INSERT INTO 
users (name, birthday_at, created_at, updated_at)
VALUES 
('Alexander', '1990-10-05', NULL, NULL),
('Dmitry', '1984-11-12', NULL, NULL),
('Andrey', '1985-05-20', NULL, NULL),
('Casey', '1988-02-14', NULL, NULL),
('Chone', '1998-01-12', NULL, NULL),
('Cris', '2006-08-29', NULL, NULL);

UPDATE users SET
created_at = NOW(),
updated_at = NOW();

-- 2 Преобразовать поля created_at и updated_at к типу DATETIME сохранив введеные ранее значения.

DROP TABLE IF EXISTS users;

CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'name of customer',
birthday_at DATE COMMENT 'birthday',
created_at VARCHAR(255),
updated_at VARCHAR(255)
) COMMENT 'castomers';

INSERT INTO
users (name, birthday_at, created_at, updated_at)
VALUES
('Alexander', '1990-10-05', '07.01.2016 12:05', '07.01.2016 12:05'),
('Nataly', '1984-11-12', '20.05.2016 16:32', '20.06.2016 15:32'),
('Mary', '1985-05-20', '14.08.2016 20:10', '14.08.2016 20:10');

DESC users;

UPDATE users SET created_at = (SELECT STR_TO_DATE(created_at, '%d.%m.%Y%H:%i'));
UPDATE users SET updated_at = (SELECT STR_TO_DATE(updated_at, '%d.%m.%Y%H:%i'));
ALTER TABLE users MODIFY COLUMN updated_at DATETIME;
ALTER TABLE users MODIFY COLUMN created_at DATETIME;

SELECT DATE_FORMAT(created_at, GET_FORMAT(DATE, 'EUR')) FROM users; -- Возвращает дату в Европейском формате но без времени!

-- 3 Тема Операции, задание 3
-- В таблице складских запасов storehouses_products в поле value могут встречаться самые
-- разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения
-- значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO
  storehouses_products (storehouse_id, product_id, value)
VALUES
  (1, 543, 0),
  (1, 789, 2500),
  (1, 3432, 0),
  (1, 826, 30),
  (1, 719, 500),
  (1, 638, 1);
 
SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;

-- Тема Операции, задание 4
-- (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в
-- августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Геннадий', '1990-10-05', '07.01.2016 12:05', '07.01.2016 12:05'),
  ('Наталья', '1984-11-12', '20.05.2016 16:32', '20.05.2016 16:32'),
  ('Александр', '1985-05-20', '14.08.2016 20:10', '14.08.2016 20:10'),
  ('Сергей', '1988-02-14', '21.10.2016 9:14', '21.10.2016 9:14'),
  ('Иван', '1998-01-12', '15.12.2016 12:45', '15.12.2016 12:45'),
  ('Мария', '2006-08-29', '12.01.2017 8:56', '12.01.2017 8:56');
 
 SELECT * FROM users;


SELECT DATE_FORMAT(birthday_at, '%M') FROM users;
SELECT name FROM users WHERE DATE_FORMAT(birthday_at, '%M') IN ('may', 'august');

-- Тема Операции, задание 5
-- (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса.
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2);
-- Отсортируйте записи в порядке, заданном в списке IN.

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) COMMENT = 'Каталог';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
 SELECT * FROM catalogs;

SELECT * FROM catalogs WHERE id NOT IN (3, 4);
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY id;

-- Тема Агрегация, задание 1
-- Подсчитайте средний возраст пользователей в таблице users
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Геннадий', '1990-10-05', '07.01.2016 12:05', '07.01.2016 12:05'),
  ('Наталья', '1984-11-12', '20.05.2016 16:32', '20.05.2016 16:32'),
  ('Александр', '1985-05-20', '14.08.2016 20:10', '14.08.2016 20:10'),
  ('Сергей', '1988-02-14', '21.10.2016 9:14', '21.10.2016 9:14'),
  ('Иван', '1998-01-12', '15.12.2016 12:45', '15.12.2016 12:45'),
  ('Мария', '2006-08-29', '12.01.2017 8:56', '12.01.2017 8:56');
 
 SELECT * FROM users;


 SELECT name, TIMESTAMPDIFF(YEAR, birthday_at, NOW()) AS age FROM users;

SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS avarage_age FROM users;

SELECT AVG((TO_DAYS(NOW()) - TO_DAYS(birthday_at))/365.25) AS avarage_age FROM users;-- Не точное решение.

-- Тема Агрегация, задание 2
-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

UPDATE users SET birthday_at = DATE_FORMAT(birthday_at, '2021-%m-%d %T');

SELECT
DATE_FORMAT(birthday_at, '%W') AS decade, COUNT(*) AS total
FROM users
GROUP BY
decade;

-- Тема Агрегация, задание 3
-- (по желанию) Подсчитайте произведение чисел в столбце таблицы

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) COMMENT = 'Каталог';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
 SELECT * FROM catalogs;

SELECT EXP(SUM(LOG(id))) AS product FROM catalogs; -- Подсмотрел в google))

