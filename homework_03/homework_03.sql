USE northwind;

-- 1. Выведите Ваш возраст на текущий день в секундах

SELECT 
	DATEDIFF(NOW(), '1977-02-05') * 86400 AS seconds_age;

-- Объяснение:
-- DATEDIFF(NOW(), '1977-02-05') — считает количество дней между текущей датой и датой рождения 1977-02-05.
-- 86400 — количество секунд в сутках (60 * 60 * 24).

-- Хотела вивести результат при помощи запроса:
-- SELECT  TIME_TO_SEC(DATEDIFF(NOW(), '1977-02-05')) AS seconds_age;
-- но запрос DATEDIFF() возвращает количество дней между датами, а TIME_TO_SEC() применяется к времени, поэтому такой вызов не сработает.

-- 2. Выведите какая дата будет через 51 день

SELECT 
	DATE_ADD(NOW(), INTERVAL 51 DAY) AS FutureDate;


-- 3. Отформатируйте предыдущей запрос - выведите день недели для этой даты Используйте документацию My SQL

SELECT 
	DAYNAME(DATE_ADD(NOW(), INTERVAL 51 DAY)) AS Weekday;


-- 4.  Подключитесь к базе данных northwind. Выведите столбец с исходной датой создания транзакции transaction_created_date из таблицы inventory_transactions, 
-- а также столбец, полученный прибавлением 3 часов к этой дате

SELECT 
    transaction_created_date,
    DATE_ADD(transaction_created_date, INTERVAL 3 HOUR) AS transaction_date_add_3H
FROM 
    inventory_transactions;


-- 5. Выведите столбец с текстом  'Клиент с id <customer_id> сделал заказ <order_date>' из таблицы orders.
-- Запрос написать двумя способами - с использованием неявных преобразований, а также с указанием изменения типа данных для столбца customer_id
-- Внимание В MySQL функция CAST не принимает VARCHAR в качестве параметра для длины. Вместо этого, нужно использовать CHAR для указания длины

-- 1) Неявное преобразование
SELECT 
    CONCAT('Клиент с id ', customer_id, ' сделал заказ ', order_date) AS customer_report
FROM orders;

-- 2) Явное преобразование
SELECT 
    CONCAT('Клиент с id ', CAST(customer_id AS CHAR), ' сделал заказ ', CAST(order_date AS CHAR)) AS customer_report
FROM orders;

-- 6.  Отформатируйте стиль написания запросов

-- 7. Сохраните запросы в виде файла с расширением .sql и загрузите на платформу