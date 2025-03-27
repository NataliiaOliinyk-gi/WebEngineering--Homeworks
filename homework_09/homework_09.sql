USE northwind;

-- 1. Для каждого заказа order_id выведите минимальный, максмальный и средний unit_cost

SELECT
    purchase_order_id,
    unit_cost,
    MIN(unit_cost) OVER (PARTITION BY purchase_order_id) AS min_unit_cost,
    MAX(unit_cost) OVER (PARTITION BY purchase_order_id) AS max_unit_cost,
	AVG(unit_cost) OVER (PARTITION BY purchase_order_id) AS average_unit_cost
FROM 
	purchase_order_details;

-- 2. Оставьте только уникальные строки из предыдущего запроса

SELECT 
    purchase_order_id,
    MIN(unit_cost) AS min_unit_cost,
    MAX(unit_cost) AS max_unit_cost,
    AVG(unit_cost) AS average_unit_cost
FROM 
    purchase_order_details
GROUP BY 
    purchase_order_id;


-- 3. Посчитайте стоимость продукта в заказе как quantity*unit_cost 
-- Выведите суммарную стоимость продуктов с помощью оконной функции 
-- Сделайте то же самое с помощью GROUP BY

-- С помощью оконной функции:

SELECT 
	purchase_order_id,
    product_id,
    quantity,
    unit_cost,
    quantity * unit_cost AS cost_product,
	SUM(quantity * unit_cost) OVER (PARTITION BY purchase_order_id) AS total_cost_products_in_order
FROM 
	purchase_order_details;

-- С помощью GROUP BY:

-- В этом случае можно вывести только суммарную стоимость продуктов
SELECT 
	purchase_order_id,
	SUM(quantity * unit_cost) AS total_cost_products_in_order
FROM 
	purchase_order_details
GROUP BY 
    purchase_order_id;
    
-- хочу вывести все колонки, как и в запросе с помощью оконной функции, использую подзапрос
SELECT 
    purchase_order_id,
    product_id,
    SUM(quantity) AS total_quantity,
    unit_cost,
    SUM(quantity * unit_cost) AS cost_product,
    (SELECT 
		SUM(quantity * unit_cost) 
     FROM 
		purchase_order_details pod 
     WHERE 
		pod.purchase_order_id = pod_out.purchase_order_id
    ) AS total_cost_products_in_order
FROM 
    purchase_order_details pod_out
GROUP BY 
    purchase_order_id, product_id, unit_cost
ORDER BY purchase_order_id;

-- тоже самое вывожу все колонки, как и в запросе с помощью оконной функции, использую cte
WITH products_total_cost AS (
    SELECT 
		purchase_order_id,
		SUM(quantity * unit_cost) AS total_cost_products_in_order
	FROM 
		purchase_order_details
	GROUP BY 
		purchase_order_id
)

SELECT 
	purchase_order_details.purchase_order_id,
    purchase_order_details.product_id,
    purchase_order_details.quantity,
    purchase_order_details.unit_cost,
    purchase_order_details.quantity * unit_cost AS cost_product,
    products_total_cost.total_cost_products_in_order
FROM purchase_order_details
LEFT JOIN products_total_cost ON purchase_order_details.purchase_order_id = products_total_cost.purchase_order_id
ORDER BY purchase_order_id;

-- 4. Посчитайте количество заказов по дате получения и posted_to_inventory Если оно превышает 1 то выведите '>1' в противном случае '=1' 
-- Выведите purchase_order_id, date_received и вычисленный столбец

SELECT 
    purchase_order_id,
    date_received,
    posted_to_inventory,
    COUNT(*) OVER (PARTITION BY date_received, posted_to_inventory) AS order_count,
    CASE 
        WHEN COUNT(*) OVER (PARTITION BY date_received, posted_to_inventory) > 1 THEN '>1'
        ELSE '=1'
    END AS order_status
FROM 
    purchase_order_details
WHERE
	date_received IS NOT NULL;
