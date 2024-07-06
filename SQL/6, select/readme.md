## 簡單的搜索功能

```mysql
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
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/b7fbce0a-bdcc-444c-b4f7-ca80285189d3)

### 取得資料

```mysql
-- 取得資料
SELECT  `name` , `major` FROM `student`;
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/73396ba5-a724-4e33-b554-d7e794117908)

### 升冪與降冪

```mysql
SELECT *
FROM `student` 
ORDER BY `SCORE` ASC
LIMIT 3; -- 看前三筆低的資料
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/bec639e6-c7f7-4e3b-b8a6-e3af98ef6480)


### 加上條件句

```mysql
SELECT *
FROM `student` 
WHERE `major`='英語' OR score <> 70 -- <> 不等於
LIMIT 2;
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/5b648285-ef46-4886-98e7-24d22c49cee9)

```mysql
SELECT *
FROM `student` 
WHERE `major` IN('歷史','英語','生物');
-- WHERE `major` ='歴史' OR `major` ='英語' OR `major` ='生物';等價
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/7e238cef-355f-412d-8cd6-23e3c7bae449)





