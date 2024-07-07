## wildcard

[正規表達式](https://atedev.wordpress.com/2007/11/23/%E6%AD%A3%E8%A6%8F%E8%A1%A8%E7%A4%BA%E5%BC%8F-regular-expression/)

![image](https://github.com/XiangYun2582/tools/assets/110577553/f74f02ca-9949-44a6-b7c7-6c0fc97d687a)

![image](https://github.com/XiangYun2582/tools/assets/110577553/26dd601c-27f2-42d8-ad8c-af559b67c6e6)

```mysql
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
```
### 1.取得電話號碼尾數是24的客户

![image](https://github.com/XiangYun2582/tools/assets/110577553/70b533fe-75dc-4d7d-b01d-c2d660354027)

### 2.取得姓名中有chen的客戶

![image](https://github.com/XiangYun2582/tools/assets/110577553/9a40f051-6876-4218-9365-240b13bc54b1)

### 3.取得生日在1月的员工

![image](https://github.com/XiangYun2582/tools/assets/110577553/497ec735-24ee-48f0-a147-00cd5365b899)


![image](https://github.com/XiangYun2582/tools/assets/110577553/22edee9b-0b85-4431-9170-36196a36aa3d)
