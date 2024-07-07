CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;-- 使用資料庫

-- wildcards萬用字元代表多個字元,代表一個字元
SELECT * FROM `employee`;
SELECT * FROM `client`;

-- 1.取得電話號碼尾數是24的客户
SELECT *
FROM `client`
WHERE `phone` LIKE '%24';-- 不支援正規表達式

-- 2.取得姓名中有chen的客戶
SELECT *
FROM `client`
WHERE `client_name` LIKE 'chen';-- 可用正規表達式

-- 3.取得生日在1月的员工
SELECT *
FROM `employee`
WHERE `birth_date` LIKE '_____01%';-- %任意

SELECT *
FROM `employee`
WHERE `birth_date` REGEXP '^.{5}01';-- 這個才支援正規表達式
