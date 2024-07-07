-- join 連接
INSERT INTO `branch` VALUES(4, '油水',NULL);
SELECT * FROM `employee`;
SELECT * FROM `branch`;

-- 取得所有部門經理的名字
SELECT `emp_id`, `name`, `branch_name`,`salary`-- 只選`employee`中特定四個屬性而已
FROM `employee`
JOIN `branch` -- 以這個為主
ON `emp_id` = `manager_id`;

SELECT *
FROM  `employee`
LEFT JOIN `branch`
ON `employee`.`emp_id` = `branch`. `manager_id`;

SELECT `employee`.`emp_id`, `employee`. `name`, `branch`. `branch_name`
FROM  `employee`
LEFT JOIN `branch`
ON `employee`.`emp_id` = `branch`. `manager_id`;

SELECT  `employee`.`emp_id`, `employee`.`name`, `branch`.`branch_name`
FROM `employee`
RIGHT JOIN `branch` 
ON `employee`.`emp_id` = `branch`.`manager_id`;

