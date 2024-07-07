CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;-- 使用資料庫
SHOW `sql_tutorial`;

-- union聯集
SELECT * FROM `employee`;
SELECT * FROM `branch`;

-- 1.員工名字 union客戶名字(上下合併)
SELECT `name`
FROM `employee`
UNION
SELECT `client_name`
FROM `client`
UNION
SELECT `branch_name`
FROM  `branch`;
-- 合併的屬性個數要相同

-- 2.員工id員工名字 union客户id+客戶名字
SELECT `emp_id`, `name`
FROM `employee` I
UNION
SELECT `client_id`, `client_name`
FROM `client`;

-- 3.員工薪水 union 銷售金額
SELECT salary AS `total_money`
FROM `employee`
UNION
SELECT`total_sales`
FROM `works_with`;
