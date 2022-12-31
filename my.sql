-- 2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
-- В таблице должно быть четыре поля: id, name, age, address. 
-- Все поля в таблице обязательны для заполнения.

-- Необходимо добавить 5-10 одногруппников в данную таблицу.

-- Необходимо написать запрос на получение имен всех одногруппников 
-- (только имен, без всего остального), которые живут в Москве и их 
-- возраст находится в диапазоне [18, 30) лет.

-- Примечание:
-- Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", 
-- то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". 
-- Такой синтаксис нельзя использовать в sql, вам 
-- нужно найти решение, как такое условие можно записать в sql по-другому.


-- create
CREATE TABLE classmates (
  Id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INT,
  addr TEXT NOT NULL
);

-- insert
INSERT INTO classmates VALUES (0001, 'Olga', '25', 'St.Petersburg');
INSERT INTO classmates VALUES (0002, 'David', '19', 'Minsk');
INSERT INTO classmates VALUES (0003, 'Alex', '42', 'Moscow');
INSERT INTO classmates VALUES (0004, 'Anastasia', '36', 'Minsk');
INSERT INTO classmates VALUES (0005, 'Victoria', '33', 'Moscow');
INSERT INTO classmates VALUES (0006, 'Vitaliy', '34', 'Minsk');
INSERT INTO classmates VALUES (0007, 'Natalli', '34', 'Minsk');
INSERT INTO classmates VALUES (0008, 'Greta', '39', 'Moscow');

-- fetch 
SELECT name FROM classmates WHERE age BETWEEN 18 AND 30;
