CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;-- 使用資料庫

CREATE TABLE `student` (
    `student_id` INT,
    `name` VARCHAR(20),
    `major` VARCHAR(20),
    PRIMARY KEY(`student_id`)
);

SELECT * FROM `student`;-- 搜尋 
INSERT INTO `student` VALUES(1,'小白','歴史'); -- 加入變數資料
INSERT INTO `student` VALUES(2,'小黑','生物');
INSERT INTO `student` VALUES(3,'小綠',NULL);
INSERT INTO `student` VALUES(4,'小紅','英文');
-- INSERT INTO `student` VALUES(3,'小紅','英文'); 立即報錯;因為主鍵
INSERT INTO `student`(`name`, `major`, `student_id`) VALUES('小藍','英文',5);
INSERT INTO `student`(`major`, `student_id`) VALUES('英文',6);
-- INSERT INTO `student`(`major`) VALUES('英文'); 立即報錯;因為主鍵不可沒有

DESCRIBE `student`;
DROP TABLE `student`;-- 當然也可以丟表格
drop database `sql_tutorial`;	
