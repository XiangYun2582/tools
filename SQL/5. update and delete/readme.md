##update and delete
- 預設的資料
```mysql
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

-- 可以於表格內直接修改
INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('1', '小白', '英語', '50');
INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('2', '小黃', '生物', '90');
INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('3', '小綠', '歷史', '70');
INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('4', '小蘭', '英語', '80');
INSERT INTO `sql_tutorial`.`student` (`student id`, `name`, `major`, `score`) VALUES ('5', '小黑', '化學', '20');
SELECT * FROM `student`;
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/2f8779f0-ce91-4efc-acc4-40ade71648ad)

### update + select condition

```mysql
UPDATE `student`
SET `major`='英語文學'
WHERE `major`='英語';
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/568de8fd-bab9-4e5d-91b2-2b0c56af98a0)

```mysql
UPDATE `student`
SET `major` = '生化'
WHERE `major` = '生物' OR `major` = '化學';
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/cca76131-d7fb-4772-9644-701445538584)

```mysql
UPDATE `student`
SET `name`='小灰',`major` = '物理'
WHERE `student id` = 1;
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/fd82dbad-e0e0-4e66-bca8-86bde4442606)


### delete + select condition

```mysql
UPDATE `sql_tutorial`.`student` SET `name` = '老黃', `major` = '輝達', `score` = '100' WHERE (`student id` = '2');-- 也可以直接改

DELETE FROM `student`
WHERE  `student id` = 4;
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/f8cc3f01-8b32-41d6-9871-10cb7fa0f136)

```mysql
DELETE FROM  `student`
WHERE `score` < 60;

DELETE FROM  `student`;-- 全丟
SELECT * FROM `student`;
```
![image](https://github.com/XiangYun2582/tools/assets/110577553/19256056-2de2-40ce-b8ee-2d2069d8fc13)
