/*1.Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными*/
USE sql_homework1;
SELECT * FROM mobile_phones

/* Выведите название, производителя и цену для товаров, количество которых превышает 2 */
SELECT название, производитель, цена 
FROM mobile_phones 
GROUP BY название, производитель, цена 
HAVING COUNT(*) > 1;

/* 3.Выведите весь ассортимент товаров марки “Samsung”*/
SELECT название, производитель, цена 
FROM mobile_phones 
WHERE производитель = 'Samsung';

/* 4.1.4.1. Товары, в которых есть упоминание "Iphone" */
SELECT название, производитель, цена 
FROM mobile_phones 
WHERE название LIKE '%iphone%';

/*4.2. "Samsung"*/
SELECT название, производитель, цена 
FROM mobile_phones 
WHERE производитель LIKE '%samsung%';

/*4.3. Товары, в которых есть ЦИФРЫ*/
SELECT название, производитель, цена 
FROM mobile_phones 
WHERE название REGEXP '[0-9]';

/*4.4. Товары, в которых есть ЦИФРА "8"*/
SELECT название, производитель, цена 
FROM mobile_phones 
WHERE название LIKE '%8%';






