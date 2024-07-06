![image](https://github.com/XiangYun2582/tools/assets/110577553/cb9fc3f7-bf47-4b71-98b9-4b4d41e5cc2f)
```mysql
CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;-- 使用資料庫

-- 創建公司資料庫表格
CREATE TABLE `employee` (
    `emp_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `birth_date` DATE,
    `sex` VARCHAR(1),
    `salary` INT,
    `branch_id` INT,
    `sup_id` INT
);
SELECT * FROM `employee`;

CREATE TABLE `branch`(
`branch_id` INT PRIMARY KEY,
`branch_name` VARCHAR(20),
`manager_id` INT,
FOREIGN KEY (`manager_id`) REFERENCES `employee` (`emp_id`) ON DELETE SET NULL); -- 對應的表格是employee
SELECT * FROM `branch`;

INSERT INTO `sql_tutorial`.`branch` (`branch_id`, `branch_name`, `manager_id`) VALUES ('1', '研發', '206');
INSERT INTO `sql_tutorial`.`branch` (`branch_id`, `branch_name`, `manager_id`) VALUES ('2', '行政', '207');
INSERT INTO `sql_tutorial`.`branch` (`branch_id`, `branch_name`, `manager_id`) VALUES ('3', '資訊', '208');
SELECT * FROM `branch`;


ALTER TABLE `employee`
ADD FOREIGN KEY(`branch id`)
REFERENCES `branch` (`branch_id`)
ON DELETE SET NULL;

ALTER TABLE `employee`
ADD FOREIGN KEY(`sup_id`)
REFERENCES`employee`(`emp_id`)
ON DELETE SET NULL;

CREATE TABLE `client`(
`client_id` INT PRIMARY KEY,
`client_name` VARCHAR(20),
`phone` VARCHAR(20)
);

CREATE TABLE `works_with` (
    `emp_id` INT,
    `client_id` INT,
    `total_sales` INT,
    PRIMARY KEY (`emp_id` , `client_id`),
    FOREIGN KEY (`emp_id`)
        REFERENCES `employee` (`emp_id`)
        ON DELETE CASCADE,
    FOREIGN KEY (`client_id`)
        REFERENCES `client` (`client_id`)
        ON DELETE CASCADE
);
SELECT * FROM `works_with`;

-- key in your data

INSERT INTO `sql_tutorial`.`employee` (`emp_id`, `name`, `birth_date`, `sex`, `salary`, `branch_id`, `sup_id`) VALUES ('206', '紫瑄', '1998-10-08', 'F', '50000', '1', NULL);
INSERT INTO `sql_tutorial`.`employee` (`emp_id`, `name`, `birth_date`, `sex`, `salary`, `branch_id`, `sup_id`) VALUES ('207', '子誠', '1985-09-16', 'M', '29000', '2', '206');
INSERT INTO `sql_tutorial`.`employee` (`emp_id`, `name`, `birth_date`, `sex`, `salary`, `branch_id`, `sup_id`) VALUES ('208', '家瑞', '2000-12-19', 'M', '35000', '3', '206');
INSERT INTO `sql_tutorial`.`employee` (`emp_id`, `name`, `birth_date`, `sex`, `salary`, `branch_id`, `sup_id`) VALUES ('209', '姿穎', '1997-01-22', 'F', '39000', '4', '207');
INSERT INTO `sql_tutorial`.`employee` (`emp_id`, `name`, `birth_date`, `sex`, `salary`, `branch_id`, `sup_id`) VALUES ('210', '瓊雯', '1999-01-21', 'F', '84000', '5', '207');
SELECT * FROM `employee`;

INSERT INTO `sql_tutorial`.`client` (`client_id`, `client_name`, `phone`) VALUES ('400', '施姐', '0943424242');
INSERT INTO `sql_tutorial`.`client` (`client_id`, `client_name`, `phone`) VALUES ('401', '咸豐', '0943422424');
INSERT INTO `sql_tutorial`.`client` (`client_id`, `client_name`, `phone`) VALUES ('402', 'chen', '0923113124');
INSERT INTO `sql_tutorial`.`client` (`client_id`, `client_name`, `phone`) VALUES ('403', '學謙', '0967828726');
INSERT INTO `sql_tutorial`.`client` (`client_id`, `client_name`, `phone`) VALUES ('404', '彥凱', '0945032053');
SELECT * FROM `client`;

INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `total_sales`) VALUES ('206', '400', '70000');
INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `total_sales`) VALUES ('207', '401', '24000');
INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `total_sales`) VALUES ('208', '400', '9800');
INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `total_sales`) VALUES ('208', '403', '24000');
INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `total_sales`) VALUES ('210', '404', '78980');
SELECT * FROM `works_with`;

-- 練習
-- 1.取得所有員工資料
SELECT * FROM `employee`;

-- 2.取得所有客戶資料
SELECT * FROM `client`;

-- 3.按薪水低到高取得員工資料
SELECT * FROM `employee` ORDER BY `salary`;

-- 4.取得薪水前3高的員工
SELECT * FROM `employee` ORDER BY `salary` DESC LIMIT 3;

-- 5.取得所有員工得名字
SELECT `name` FROM `employee`;

-- 6.性別有?不重複
SELECT distinct `sex` FROM `employee`;
SELECT distinct `branch_id` FROM `employee`;

DESCRIBE `student`;
DROP TABLE `works_with`;-- 當然也可以丟表格
drop database `sql_tutorial`;	
```
