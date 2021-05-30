

-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

SHOW TABLES;
SELECT * FROM users;

START TRANSACTION;

INSERT INTO sample.users SELECT id, name FROM shop.users WHERE id = 1;

SELECT * FROM sample.users;

COMMIT;


-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products
-- и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW procat AS SELECT products.name AS product, catalogs.name AS type_of_products FROM products LEFT JOIN catalogs ON products.catalog_id = catalogs.id;

SELECT * FROM procat;

-- 3. по желанию) Пусть имеется таблица с календарным полем created_at. В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.


-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.


-- -------------------------- Практическое задание по теме “Хранимые процедуры и функции, триггеры" -------------------------------------------


-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
--  с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DELIMITER //

CREATE FUNCTION hello ()
RETURNS VARCHAR(255) DETERMINISTIC -- Почему не работает NOT DETERMINISTIC
BEGIN
  DECLARE hour INT;
  SET hour = hour(NOW());
  IF(hour BETWEEN 6 AND 12) THEN 
  RETURN 'Доброе утро';
  ELSEIF(hour BETWEEN 12 AND 18) THEN RETURN 'Добрый день';
  ELSEIF(hour BETWEEN 18 AND 24) THEN RETURN 'Доброй ночи';
  END IF;
END//

DELIMITER ;

SELECT hello();

-- Изначально писал такой код но он выдает ошибку! Везде return присутствует как и в верхнем решении

DELIMITER //

CREATE FUNCTION hello ()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  IF (TIME(NOW()) BETWEEN '06:00:00' AND '12:00:00') THEN RETURN 'Доброе утро';
  ELSEIF (TIME(NOW()) BETWEEN '12:00:00' AND '18:00:00') THEN RETURN 'Добрый день';
  ELSEIF (TIME(NOW()) BETWEEN '18:00:00' AND '24:00:00') THEN RETURN 'Доброй ночи';
  END IF;
END//

DELIMITER ;

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
 -- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение
 -- NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
 -- При попытке присвоить полям NULL-значение необходимо отменить операцию.























