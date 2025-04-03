USE 281024_nataliia;

SELECT * 
FROM employees;

-- 1 Вывести id департамента , в котором работает сотрудник, в зависимости от Id сотрудника

DELIMITER //

CREATE PROCEDURE get_department_id(IN emp_id INT)
BEGIN
    SELECT 
		department_id
    FROM 
		employees 
    WHERE 
		id = emp_id;
END //

DELIMITER ;

CALL get_department_id(21);


-- 2 Создайте хранимую процедуру get_employee_age, которая принимает id сотрудника (IN-параметр) и возвращает его возраст через OUT-параметр.

DELIMITER //

CREATE PROCEDURE get_employee_age(IN emp_id INT, OUT emp_age INT)
BEGIN
    SELECT 
		age
	INTO emp_age 
    FROM 
		employees 
    WHERE 
		id = emp_id;
END //

DELIMITER ;

CALL get_employee_age(12, @age);
SELECT @age;

-- 3 Создайте хранимую процедуру increase_salary, которая принимает зарплату сотрудника (INOUT-параметр) и уменьшает ее на 10%.

DELIMITER //

CREATE PROCEDURE increase_salary(INOUT emp_salary INT)
BEGIN
    SET emp_salary = emp_salary * 0.9;
END //

DELIMITER ;

SET @salary = 5000;
CALL increase_salary(@salary);
SELECT (@salary);

