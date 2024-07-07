-- subquery子查詢
CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;-- 使用資料庫
SHOW TABLES FROM `sql_tutorial`;
SHOW TABLES;


-- 1.找出研發部門的經理名字
SELECT * FROM `employee`;
SELECT * FROM `branch`;

SELECT manager_id
FROM `branch`
WHERE `branch_name`='研發';

SELECT  `name`,`emp_id` -- 目標
FROM  `employee`
WHERE `emp_id` = (-- 找到主管id==員工id
SELECT `manager_id`
FROM  `branch`
WHERE`branch_name`='研發'
);

-- 2.找出對單一位客戶銷售金額超50,000的員工名字
SELECT * FROM `works_with`;

SELECT `emp_id`
FROM  `works_with`
WHERE `total_sales` > 50000;

SELECT `name`, `emp_id`, `birth_date`
FROM  `employee`
WHERE `emp_id` IN(
SELECT `emp_id`
FROM `works_with`
WHERE `total_sales` > 50000
);
