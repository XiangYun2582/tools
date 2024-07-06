CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;-- 使用資料庫

-- constraints 限制 約束

CREATE TABLE `student` (
    `student_id` INT AUTO_INCREMENT,
    `name`  VARCHAR(20) NOT NULL, -- 不可以是遺失值
    -- `major` VARCHAR(20) UNIQUE, -- 不可重複
    `major` VARCHAR(20) DEFAUlT '歷史', -- 預設值是歷史
    PRIMARY KEY (`student_id`)
);

SELECT * FROM `student`;
-- INSERT INTO `student` VALUES(1,NULL,'英語'); 會ERROR 因為NAME不可為NULL
INSERT INTO `student` VALUES(1,'小藍','英語');
INSERT INTO `student` VALUES(2,'小白','數學');
INSERT INTO `student`(`name`, `student_id`) VALUES('小紅',3);
INSERT INTO `student`(`name`) VALUES('小綠');-- AUTO_INCREMENT 可以讓我們+1
INSERT INTO `student`(`name`,`major`) VALUES('小ㄟ','國文');-- AUTO_INCREMENT 可以讓我們+1