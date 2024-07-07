
![image](https://github.com/XiangYun2582/tools/assets/110577553/83351cb2-a745-4936-934d-3cdaf3f31e28)

- COUNT
  
![image](https://github.com/XiangYun2582/tools/assets/110577553/f561b9fb-7efe-4c6b-a914-7fca500ed8f1)

![image](https://github.com/XiangYun2582/tools/assets/110577553/b7e04711-82a8-4f5c-b22e-2e39d484848c)

- AVERAGE

![image](https://github.com/XiangYun2582/tools/assets/110577553/bbe0f2ce-3804-4583-b01f-cd23b9063371)

- SUM

![image](https://github.com/XiangYun2582/tools/assets/110577553/349d89fb-9dcd-4552-be17-63826d61eca9)


- MAX

![image](https://github.com/XiangYun2582/tools/assets/110577553/7d685d87-fab1-4279-9396-e7fa3e0cb232)


- MIN
  
![image](https://github.com/XiangYun2582/tools/assets/110577553/c9e6ee2f-fa2e-450b-ae50-5587e9f94b20)

```mysql
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
```
