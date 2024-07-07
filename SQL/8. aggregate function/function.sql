-- aggregate functions聚合函數
-- 1.取得員工人數
SELECT COUNT(*) FROM `employee`;
SELECT COUNT(`sup_id`) FROM `employee`;-- 主管有多少人

-- 2.取得所有出生於1978-01-01 之後的女性員工人數
SELECT * FROM `employee`;
SELECT COUNT(*)
FROM `employee`
WHERE `birth_date` > '1998-01-01' AND `sex` = 'F';

-- 3.取得所有員工的平均薪水
SELECT AVG(`salary`) FROM `employee`;

-- 4.取得所有員工薪水的總和
SELECT SUM(`salary`) FROM `employee`;

-- 5.取得薪水最高的員工
SELECT MAX(`salary`) FROM `employee`;

-- 6.取得薪水最低的員工
SELECT MIN(`salary`) FROM `employee`;

