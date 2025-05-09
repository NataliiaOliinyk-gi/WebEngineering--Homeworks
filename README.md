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

## homework_05

База данных northwind
Работаем с таблицей purchase_order_details

1. Посчитайте основные статистики - среднее, сумму, минимум, максимум столбца unit_cost.
2. Посчитайте количество уникальных заказов purchase_order_id
3. Посчитайте количество продуктов product_id в каждом заказе purchase_order_id Отсортируйте полученные данные по убыванию количества
4. Посчитайте заказы по дате доставки date_received Считаем только те продукты, количество quantity которых больше 30
5. Посчитайте суммарную стоимость заказов в каждую из дат Стоимость заказа - произведение quantity на unit_cost
6. Сгруппируйте товары по unit_cost и вычислите среднее и максимальное значение quantity только для товаров где purchase_order_id не больше 100
7. Выберите только строки где есть значения в столбце inventory_id Создайте столбец category - если unit_cost > 20 то 'Expensive' в остальных случаях 'others' Посчитайте количество продуктов в каждой категории

## homework_06

1. Выведите одним запросом с использованием UNION столбцы id, employee_id из таблицы orders и соответствующие им столбцы из таблицы purchase_orders В таблице purchase_orders created_by соответствует employee_id
2. Из предыдущего запроса удалите записи там где employee_id не имеет значения Добавьте дополнительный столбец со сведениями из какой таблицы была взята запись
3. Выведите все столбцы таблицы order_details а также дополнительный столбец payment_method из таблицы purchase_orders Оставьте только заказы для которых известен payment_method
4. Выведите заказы orders и фамилии клиентов customers для тех заказов по которым были инвойсы таблица invoices
5. Подсчитайте количество инвойсов для каждого клиента из предыдущего запроса

## homework_07

1. Вывести названия продуктов таблица products, включая количество заказанных единиц quantity для каждого продукта таблица order_details.
   Решить задачу с помощью cte и подзапроса
2. Найти все заказы таблица orders, сделанные после даты самого первого заказа клиента Lee таблица customers.
3. Найти все продукты таблицы products c максимальным target_level

## homework_08

Схема базы данных состоит из четырех таблиц:

- Product (производитель, модель, тип)
- PC (код, модель, скорость, ОЗУ, жесткий диск, CD, цена)
- Laptop (код, модель, скорость, ОЗУ, жесткий диск, экран, цена)
- Printer (код, модель, цвет, тип, цена)

Таблица Product содержит данные о производителе, номере модели и типе продукта ('PC', 'Laptop' или 'Printer'). Предполагается, что номера моделей в таблице Product уникальны для всех производителей и типов продуктов. Каждый персональный компьютер в таблице PC однозначно идентифицируется уникальным кодом и дополнительно характеризуется своей моделью (внешний ключ, ссылающийся на таблицу Product), скоростью процессора (в МГц) — поле speed, объемом оперативной памяти (в Мб) — поле ram, объемом жесткого диска (в Гб) — поле hd, скоростью CD-ROM (например, '4x') — поле cd и его ценой. Таблица Laptop аналогична таблице PC, за исключением того, что вместо скорости CD-ROM она содержит размер экрана (в дюймах) — поле screen. Для каждого принтера в таблице Printer указывается его тип вывода ('y' для цветного и 'n' для монохромного) — поле color, технология печати ('Laser', 'Jet' или 'Matrix') — поле type, а также цена.

1. Найдите все записи таблицы Printer для цветных принтеров.
2. Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
3. Найдите производителя, выпускающего ПК, но не ПК-блокноты.
4. Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
5. Найдите среднюю скорость ПК.
6. Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов. Вывести: maker, средний размер экрана.

## homework_09

Таблица purchase_order_details

1. Для каждого заказа order_id выведите минимальный, максмальный и средний unit_cost
2. Оставьте только уникальные строки из предыдущего запроса
3. Посчитайте стоимость продукта в заказе как quantity\*unit_cost Выведите суммарную стоимость продуктов с помощью оконной функции Сделайте то же самое с помощью GROUP BY
4. Посчитайте количество заказов по дате получения и posted_to_inventory Если оно превышает 1 то выведите '>1' в противном случае '=1'
   Выведите purchase_order_id, date_received и вычисленный столбец

## homework_10

Таблица order_details

1. Для каждого product_id выведите inventory_id а также предыдущий и последующей inventory_id по убыванию quantity
2. Выведите максимальный и минимальный unit_price для каждого order_id с помощью функции FIRST VALUE Вывести order_id и полученные значения
3. Выведите order_id и столбец с разнице между unit_price для каждой заказа и минимальным unit_price в рамках одного заказа Задачу решить двумя способами - с помощью First VAlue и MIN
4. Присвойте ранг каждой строке используя RANK по убыванию quantity
5. Из предыдущего запроса выберите только строки с рангом до 10 включительно

## homework_11

База данных с доступом на запись:
hostname: ich-edit.edu.itcareerhub.de

Создать кастомные функции

1. Функция для расчета площади круга
2. Функция для расчета гипотенузы треугольника

## homework_12

База данных с доступом на запись:
hostname: ich-edit.edu.itcareerhub.de

1. Вывести id департамента , в котором работает сотрудник, в зависимости от Id сотрудника
2. Создайте хранимую процедуру get_employee_age, которая принимает id сотрудника (IN-параметр) и возвращает его возраст через OUT-параметр.
3. Создайте хранимую процедуру increase_salary, которая принимает зарплату сотрудника (INOUT-параметр) и уменьшает ее на 10%.

## homework_13

База данных с доступом на чтение:
hostname: ich-db.edu.itcareerhub.de

Все запросы пишем в интерфейсе DBeaver На платформу загружаем скрины выполненных запросов

1. Выберите только те строки из таблицы suppliers где company имеет значение Supplier A
2. Вывести все строки там, где purchase_order_id не указано. При этом дополнительно создать столбец total_price как произведение quantity \* unit_price
3. Выведите какая дата будет через 51 день
4. Посчитайте количество уникальных заказов purchase_order_id
5. Выведите все столбцы таблицы order_details а также дополнительный столбец payment_method из таблицы purchase_orders Оставьте только заказы для которых известен payment_method

## homework_14

**mongoDB**

1. Из коллекции customers выяснить из какого города "Sven Ottlieb"
2. Из коллекции ich.US_Adult_Income найти возраст самого взрослого человека
3. Из 2 задачи выясните, сколько человек имеют такой же возраст
4. Найти \_id ObjectId документа, в котором education " IT-career-hub"
5. ыяснить количество людей в возрасте между 20 и 30 годами

## homework_15

**mongoDB**

1. Коллекция imdb : Используя оператор $size , найдите фильмы, написанные 3 сценаристами (writers) и снятые 2 режиссерами (directors)
2. Коллекция bookings: Найдите адрес нахождения автомобиля с vin WME4530421Y135045 по самой последней дате (и времени) final_date
3. Коллекция bookings: подсчитайте, у скольких автомобилей при окончании аренды закончилось топливо (final_fuel)
4. Коллекция bookings: найдите номерной знак и vin номер авто, с самым большим километражом (distance)
5. Коллекция imdb. Найдите фильм с участием "Brad Pitt" с самым высоким рейтингом (imdb.rating)

# homework_16

**mongoDB**

1. Найдите средний возраст из коллекции ich.US_Adult_Income
2. Поменяв подключение к базе данных, создать коллекцию orders_NAME (для уникальности - добавим ваше имя в название) со свойствами id, customer, product, amount, city, используя следующие данные:

   1 Olga Apple 15.55 Berlin
   2 Anna Apple 10.05 Madrid
   3 Olga Kiwi 9.6 Berlin
   4 Anton Apple 20 Roma
   5 Olga Banana 8 Madrid
   6 Petr Orange 18.3 Paris

3. Найти сколько всего было совершено покупок
4. Найти сколько всего раз были куплены яблоки
5. Вывести идентификаторы трех самые дорогих покупок
6. Найти сколько всего покупок было совершено в Берлине
7. Найти количество покупок яблок в городах Берлин и Мадрид
8. Найти сколько было потрачено каждым покупателем
9. Найти в каких городах совершала покупки Ольга

# homework_17

**mongoDB**

1. Тестовая коллекция в mongo atlas sample_mflix.theaters
   Найти все кинотеатры в Калифорнии и посчитать их количество
2. Тестовая коллекция в mongo atlas sample_airbnb.listingsAndReviews
   Найти недвижимость с самым большим количеством спален (bedrooms) и напишите ее название
3. Тестовая коллекция в mongo atlas sample_airbnb.listingsAndReviews
   Найти недвижимость с самым высоким рейтингом review_scores_rating при минимальном количестве отзывов 50 (number_of_reviews) и напишите ее название

# homework_18

**mongoDB**

1. Из коллекции sample_airbnb.listingsAndReviews найдите среднюю цену за сутки проживания на Гавайских островах.
2. Подсчитайте в коллекции sample_mflix.movies, сколько фильмов имеют imdb рейтинг выше 8 и выходили в период с 2015 до 2023 года (используем year). Какой из них имеет самый высокий рейтинг ?

# homework_19

**mongoDB**

Из базы данных ich работаем с коллекцией ich.Spotify_Youtube:

1. Найдите трек с наивысшими показателями Danceability и Energy.
2. У какого трека (но не compilation) самая большая длительность?
3. В каком одном альбоме самое большее количество треков?
4. Сколько просмотров видео на youtube у трека с самым высоким количеством прослушиваний на spotify (Stream)?
5. Экспортируйте 20 самых популярных (прослушивания или просмотры) треков по версиям youtube и spotify и импортируйте в базу ich_edit их с именами top20youtube и top20spotify, и добавьте им свои имена для уникальности.

# homework_20

1. Подключитесь к базе данных hr (которая находится на удаленном сервере). USE hr;
2. Выведите количество сотрудников в базе
3. Выведите количество департаментов (отделов) в базе
4. Подключитесь к базе данных World (которая находится на удаленном сервере).
5. Выведите среднее население в городах Индии (таблица City, код Индии - IND)
6. Выведите минимальное население в индийском городе и максимальное.
7. Выведите самую большую площадь территории.
8. Выведите среднюю продолжительность жизни по странам.
9. Найдите самый населенный город (подсказка: использовать подзапросы)
