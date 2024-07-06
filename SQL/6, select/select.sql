CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;-- 使用資料庫

-- update and delete data

SET SQL_SAFE_UPDATES = 0; -- 預設的更新模式關閉

CREATE TABLE `student` (
    `student_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `major` VARCHAR(20),
    `score` INT
);

INSERT INTO `sql_tutorial`.`student` (`student_id`, `name`, `major`, `score`) VALUES ('1', '小白', '英語', '20');
INSERT INTO `sql_tutorial`.`student` (`student_id`, `name`, `major`, `score`) VALUES ('2', '小黃', '生物', '90');
INSERT INTO `sql_tutorial`.`student` (`student_id`, `name`, `major`, `score`) VALUES ('3', '小綠', '歷史', '70');
INSERT INTO `sql_tutorial`.`student` (`student_id`, `name`, `major`, `score`) VALUES ('4', '小蘭', '英語', '80');
INSERT INTO `sql_tutorial`.`student` (`student_id`, `name`, `major`, `score`) VALUES ('5', '小黑', '化學', '20');
SELECT * FROM `student`;

-- 取得資料
SELECT  `name` , `major` FROM `student`;
SELECT  * FROM `student`;

SELECT *
FROM `student`
ORDER BY `SCORE` DESC,`student_id`; -- 由高到低 相反->ASC

SELECT *
FROM `student` 
ORDER BY `SCORE` ASC
LIMIT 3; -- 看前三筆低的資料

SELECT *
FROM `student` 
WHERE `major`='英語' OR score <> 70 -- <> 不等於
LIMIT 2;

SELECT *
FROM `student` 
WHERE `major` IN('歷史','英語','生物');
-- WHERE `major` ='歴史' OR `major` ='英語' OR `major` ='生物';等價

DESCRIBE `student`;
DROP TABLE `student`;-- 當然也可以丟表格
drop database `sql_tutorial`;	