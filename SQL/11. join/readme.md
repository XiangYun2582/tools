## Join
```mysql
INSERT INTO `branch` VALUES(4, '油水',NULL);
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/ea9c970b-0aae-4401-aac6-4aa58d3793b1)

![image](https://github.com/XiangYun2582/tools/assets/110577553/f9a91cae-9117-490b-a11f-d6e293c55adf)

```mysql
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
```

### join

```mysql
SELECT `emp_id`, `name`, `branch_name`,`salary`-- 只選`employee`中特定四個屬性而已
FROM `employee`
JOIN `branch` -- 以這個為主
ON `emp_id` = `manager_id`;
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/a32c9367-b1b2-4ec8-a263-b65cf5b3ab7e)

### left join

```mysql
SELECT `employee`.`emp_id`, `employee`. `name`, `branch`. `branch_name`
FROM  `employee`
LEFT JOIN `branch`
ON `employee`.`emp_id` = `branch`. `manager_id`;
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/b903e52d-48ae-4b63-a1cd-45a081d27312)

```mysql
SELECT *
FROM  `employee`
LEFT JOIN `branch`
ON `employee`.`emp_id` = `branch`. `manager_id`;
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/d4e093cd-70a9-4fff-81d6-4531fa6f0080)

### right join
```mysql
SELECT  `employee`.`emp_id`, `employee`.`name`, `branch`.`branch_name`
FROM `employee`
RIGHT JOIN `branch` 
ON `employee`.`emp_id` = `branch`.`manager_id`;
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/ea50169a-27bf-4c01-b06f-6cea7cf16b83)







