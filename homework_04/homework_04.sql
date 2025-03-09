-- 1. Подключитесь к своей базе данных созданной на уроке

-- 2. Создайте таблицу, которая отражает погоду в Вашем городе за последние 5 дней и включает следующее столбцы

-- Id - первичный ключ, заполняется автоматически
-- Дата - не может быть пропуском
-- Дневная температура - целое число, принимает значения от -30 до 30
-- Ночная температура - целое число, принимает значения от -30 до 30
-- Скорость ветра - подумайте какой тип данных и ограничения необходимы для этого столбца

CREATE TABLE weather_Dessau (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    daytime_temperature INT CHECK (daytime_temperature BETWEEN -30 AND 30),
    night_temperature INT CHECK (night_temperature BETWEEN -30 AND 30),
    wind_speed DECIMAL(4,1) NOT NULL CHECK (wind_speed >= 0)
);

-- 3. Заполните таблицу 5 строками - за последние 5 дней 

INSERT INTO weather_Dessau (date, daytime_temperature, night_temperature, wind_speed) 
VALUES 
    ('2025-03-06', 19, 0, 1.11),
    ('2025-03-07', 18, 0, 1.67),
    ('2025-03-08', 16, -1, 1.39),
    ('2025-03-09', 16, 3, 2.22),
    ('2025-03-10', 12, 3, 3.33);

-- 4. Увеличьте значения ночной температуры на градус если скорость ветра не превышала 3 м/с

UPDATE weather_Dessau 
SET 
    night_temperature = night_temperature + 1
WHERE
    wind_speed < 3;

-- 5. На основе полученной таблицы создайте представление в своей базе данных - включите все строки Вашей таблицы и дополнительно рассчитанные столбцы
-- Средняя суточная температура - среднее арифметическое между ночной и дневной температурами
-- Столбец на основе скорости ветра - если скорость ветра не превышала 2 м/с то значение ‘штиль’,
--  от 2 включительно до 5 - ‘умеренный ветер’, в остальных случаях - ‘сильный ветер’

CREATE VIEW weather_Dessau_view AS 
SELECT *,
    (daytime_temperature + night_temperature) / 2 AS average_daily_temperature,
    CASE
        WHEN wind_speed < 2 THEN 'штиль'
        WHEN wind_speed >= 2 AND wind_speed < 5 THEN 'умеренный ветер'
        ELSE 'сильный ветер'
    END AS wind_speed_value
FROM weather_Dessau; 

-- 6. Отформатируйте стиль написания запросов

-- 7. Сохраните запросы в виде файла с расширением .sql и загрузите на платформу