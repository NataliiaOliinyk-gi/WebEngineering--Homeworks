USE northwind;

-- 1. Вывести названия продуктов таблица products, включая количество заказанных единиц quantity для каждого продукта таблица order_details.
-- Решить задачу с помощью cte и подзапроса

-- С помощью подзапроса:

SELECT 
	product_name, 
    total_quantity
FROM (
    SELECT 
		order_details.product_id AS product_id,
		SUM(order_details.quantity) AS total_quantity
	FROM order_details
	GROUP BY product_id
) AS products_quantity
JOIN products ON products_quantity.product_id = products.id;

-- С помощью cte:

WITH products_quantity AS (
    SELECT 
		order_details.product_id AS product_id,
		SUM(order_details.quantity) AS total_quantity
	FROM order_details
	GROUP BY product_id
)

SELECT 
	product_name, 
    total_quantity
FROM products_quantity
JOIN products ON products_quantity.product_id = products.id;

-- 2. Найти все заказы таблица orders, сделанные после даты самого первого заказа клиента Lee таблица customers.

SELECT 
    *
FROM 
    orders
WHERE order_date > (
    SELECT 
        MIN(order_date)
    FROM 
        orders
    JOIN customers ON orders.customer_id = customers.id
    WHERE customers.last_name = 'Lee'
);

-- 3. Найти все продукты таблицы  products c максимальным target_level

SELECT 
	*
FROM 
	products
WHERE target_level = (
    SELECT 
		MAX(target_level) 
	FROM 
		products
);
