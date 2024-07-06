CREATE DATABASE `sql_tutorial`;-- 新增資料庫 sql_tutorial 或 `sql_tutorial`
SHOW DATABASES;-- 查看資料庫(包含base)
USE `sql_tutorial`;-- 使用資料庫
DROP DATABASE `sql_tutorial`; -- 丟掉資料庫


-- 新增student的表格
CREATE TABLE `student` (
    `studnet_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `major` VARCHAR(20)
    -- PRIMARY KEY(`studnet_id`) -- 也可以這樣寫
);

DESCRIBE `student`;
DROP TABLE `student`;-- 當然也可以丟表格

ALTER TABLE `student` ADD gpa DECIMAL(3,2);
ALTER TABLE `student` DROP COLUMN gpa;-- 丟表格student 的屬性gpa