# Web Engineering

## homework_01

1. Выберите все строки из таблицы suppliers. Предварительно подключитесь к базе данных northwind
2. Выберите только те строки из таблицы suppliers где company имеет значение Supplier A
3. Выберите все строки из таблицы purchase_orders
4. Выберите только те строки из таблицы purchase_orders где supplier_id = 2
5. Выберите supplier_id и shipping_fee из purchase_orders там где created_by равно 1 и supplier_id равен 5 Объясните полученный результат
6. Выберите last_name и first_name из таблицы employees там где адрес address имеет значение 123 2nd Avenue или 123 8th Avenue. Напишите запрос двумя способами - с применением оператора OR и оператора IN
7. Выведите все имена сотрудников, которые содержат английскую букву p в середине фамилии
8. Выберите все строки из таблицы orders там где нет информации о shipper_id
9. Отформатируйте стиль написания запросов
10. Сохраните запросы в виде файла с расширением .sql и загрузите на платформу

## homework_02

1. Выберите все строки из таблицы suppliers Предварительно подключитесь к базе данных northwind
2. Выведите столбцы id, order_id из таблицы order_details, а также вычисляемый столбец category в зависимости от значений unit_price Если unit_price > 10 то значение столбца category 'Expensive' В противном случае 'Cheap' Написать запрос двумя способами - с применением операторов IF и CASE
3. Вывести все строки там, где purchase_order_id не указано. При этом дополнительно создать столбец total_price как произведение quantity \* unit_price
4. Вывести один столбец из таблицы employees содержащий имя и фамилию написанные через пробел Вывести 3 строки начиная со второй
5. На основе таблицы orders вывести один столбец - с годом и месяцем из order_date в формате 'год-месяц'
6. Выведите уникальные имена компаний из таблицы customers Отсортируйте их по убыванию
7. Отформатируйте стиль написания запросов
8. Сохраните запросы в виде файла с расширением .sql и загрузите на платформу

## homework_03

1. Выведите Ваш возраст на текущий день в секундах
2. Выведите какая дата будет через 51 день
3. Отформатируйте предыдущей запрос - выведите день недели для этой даты Используйте документацию My SQL
4. Подключитесь к базе данных northwind. Выведите столбец с исходной датой создания транзакции transaction_created_date из таблицы inventory_transactions, а также столбец, полученный прибавлением 3 часов к этой дате
5. Выведите столбец с текстом 'Клиент с id <customer_id> сделал заказ <order_date>' из таблицы orders. Запрос написать двумя способами - с использованием неявных преобразований, а также с указанием изменения типа данных для столбца customer_id.
   Внимание В MySQL функция CAST не принимает VARCHAR в качестве параметра для длины. Вместо этого, нужно использовать CHAR для указания длины
6. Отформатируйте стиль написания запросов
7. Сохраните запросы в виде файла с расширением .sql и загрузите на платформу

## homework_04

1. Подключитесь к своей базе данных созданной на уроке
2. Создайте таблицу, которая отражает погоду в Вашем городе за последние 5 дней и включает следующее столбцы
- Id - первичный ключ, заполняется автоматически
- Дата - не может быть пропуском
- Дневная температура - целое число, принимает значения от -30 до 30
- Ночная температура - целое число, принимает значения от -30 до 30
- Скорость ветра - подумайте какой тип данных и ограничения необходимы для этого столбца
3. Заполните таблицу 5 строками - за последние 5 дней 
4. Увеличьте значения ночной температуры на градус если скорость ветра не превышала 3 м/с
5. На основе полученной таблицы создайте представление в своей базе данных - включите все строки Вашей таблицы и дополнительно рассчитанные столбцы:
Средняя суточная температура - среднее арифметическое между ночной и дневной температурами
Столбец на основе скорости ветра - если скорость ветра не превышала 2 м/с то значение ‘штиль’, от 2 включительно до 5 - ‘умеренный ветер’, в остальных случаях - ‘сильный ветер’
6. Отформатируйте стиль написания запросов
7. Сохраните запросы в виде файла с расширением .sql и загрузите на платформу
