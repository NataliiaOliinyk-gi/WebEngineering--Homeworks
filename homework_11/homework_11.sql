-- Создать кастомные функции
-- 1. Функция для расчета площади круга
-- 2. Функция для расчета гипотенузы треугольника

DELIMITER //
CREATE FUNCTION getAreaOfCircle(radius DOUBLE)
RETURNS DOUBLE
DETERMINISTIC
BEGIN
	DECLARE area_circle DOUBLE;
	SET area_circle = PI() * radius * radius;
	RETURN area_circle;
END //

SELECT getAreaOfCircle(5);


DELIMITER //
CREATE FUNCTION getHypotenuse(number1 DOUBLE, number2 DOUBLE)
RETURNS DOUBLE
DETERMINISTIC
BEGIN
	DECLARE hypotenuse DOUBLE;
	SET hypotenuse = SQRT(number1 * number1 + number2 * number2);
	RETURN hypotenuse;
END //

SELECT getHypotenuse(3, 4);