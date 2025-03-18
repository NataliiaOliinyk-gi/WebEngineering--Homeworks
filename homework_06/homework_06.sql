USE northwind;

-- 1. Выведите одним запросом с использованием UNION столбцы id, employee_id из таблицы orders и соответствующие 
-- им столбцы из таблицы purchase_orders. В таблице purchase_orders  created_by соответствует employee_id

SELECT 
	id, 
	employee_id 
FROM 
	orders
UNION
SELECT 
	id, 
	created_by AS employee_id 
FROM 
	purchase_orders;

-- 2. Из предыдущего запроса удалите записи там где employee_id не имеет значения Добавьте дополнительный столбец 
-- со сведениями из какой таблицы была взята запись

SELECT 
    id, 
    employee_id,
    'orders' AS source_table
FROM 
    orders
WHERE 
    employee_id IS NOT NULL
UNION
SELECT 
    id, 
    created_by AS employee_id,
    'purchase_orders' AS source_table
FROM 
    purchase_orders
WHERE 
    created_by IS NOT NULL;

-- 3. Выведите все столбцы таблицы order_details а также дополнительный столбец payment_method 
-- из таблицы purchase_orders Оставьте только заказы для которых известен payment_method 

SELECT 
	order_details.*,
    payment_method
FROM 
	order_details
JOIN purchase_orders ON order_details.purchase_order_id = purchase_orders.id
WHERE 
	purchase_orders.payment_method IS NOT NULL;
    
-- 4. Выведите заказы orders и фамилии клиентов customers для тех заказов по которым были инвойсы таблица invoices

SELECT 
	invoices.order_id,
    customers.last_name
FROM 
	invoices
JOIN orders ON invoices.order_id = orders.id
JOIN customers ON orders.customer_id = customers.id;

-- 5. Подсчитайте количество инвойсов для каждого клиента из предыдущего запроса

SELECT 
    customers.last_name,
    COUNT(invoices.id) AS invoice_count
FROM 
    invoices
JOIN orders ON invoices.order_id = orders.id
JOIN customers ON orders.customer_id = customers.id
GROUP BY customers.last_name;
