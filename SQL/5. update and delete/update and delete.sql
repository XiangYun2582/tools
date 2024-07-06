CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;-- 使用資料庫

-- update and delete data

SET SQL_SAFE_UPDATES = 0; -- 預設的更新模式關閉

CREATE TABLE `student` (
    `student id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `major` VARCHAR(20),
    `score` INT
);

INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('1', '小白', '英語', '50');
INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('2', '小黃', '生物', '90');
INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('3', '小綠', '歷史', '70');
INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('4', '小蘭', '英語', '80');
INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('5', '小黑', '化學', '20');
SELECT * FROM `student`;

UPDATE `student`
SET `major`='英語文學'
WHERE `major`='英語';

UPDATE `student`
SET `major` = '生化'
WHERE `major` = '生物' OR `major` = '化學';

UPDATE `student`
SET `name`='小灰',`major` = '物理'
WHERE `student id` = 1;

UPDATE `sql_tutorial`.`student` SET `name` = '老黃', `major` = '輝達', `score` = '100' WHERE (`student id` = '2');-- 也可以直接改

DELETE FROM `student`
WHERE  `student id` = 4;

DELETE FROM  `student`
WHERE `score` < 60;

DELETE FROM  `student`;-- 全丟
SELECT * FROM `student`;

DESCRIBE `student`;
DROP TABLE `student`;-- 當然也可以丟表格
drop database `sql_tutorial`;	