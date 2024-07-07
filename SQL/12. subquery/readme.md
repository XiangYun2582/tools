## subquery子查詢
- 查詢再查詢(串表)
### 1.
![image](https://github.com/XiangYun2582/tools/assets/110577553/95e0ba2c-3488-4cb7-b688-9c5890b9f9dc)

![image](https://github.com/XiangYun2582/tools/assets/110577553/00d05992-5d1f-4bfa-a014-e6b1ddfc355e)

```mysql
-- 1.找出研發部門的經理名字
SELECT * FROM `employee`;
SELECT * FROM `branch`;

SELECT manager_id
FROM `branch`
WHERE `branch_name`='研發';

SELECT  `name`,`emp_id` -- 目標
FROM  `employee`
WHERE `emp_id` = (-- 找到主管id==員工id
SELECT `manager_id`
FROM  `branch`
WHERE`branch_name`='研發'
);
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/94b2ff1f-416e-4570-b29d-a4c99634ac62)

### 2.
![image](https://github.com/XiangYun2582/tools/assets/110577553/b0edf6fd-1b51-4aac-8c62-e3612c1d51c9)

```mysql
-- 2.找出對單一位客戶銷售金額超50,000的員工名字
SELECT * FROM `works_with`;

SELECT `emp_id`
FROM  `works_with`
WHERE `total_sales` > 50000;

SELECT `name`, `emp_id`, `birth_date`
FROM  `employee`
WHERE `emp_id` IN(
SELECT `emp_id`
FROM `works_with`
WHERE `total_sales` > 50000
);
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/8b374a12-4f67-4fd7-bbc1-0d211f5282df)







