# Dplyr 基礎的資料整理
## 變數篩選
* func: select pull 基礎行列表達
## 條件篩選
* func: filter
## 其他篩選
* func: unique slice家族
## 新增或變更
* func: mutate transmutate mutate_at mutate_if
## 變更變數名稱
* func: rename rename_with
## 資料彙整
* func: summary summarise group_by
# 轉置之類酷東西(left_join之類)
## 資料處理
* 上下資料合併 左右資料合併(不實用)
  * func: bind_rows() bind_cols()
  ```diff
  + OS:其實我更常用rbind cbind，因為很直觀。
  ```
* Join data
 * func: left_join() right_join() inner_join() full_join()
## 轉置 
* library(reshape2)  
  * Wide and long format寬轉長: melt  
  * long into widet長轉寬: dcast  
  * `tidyr package 進階版`
* library(tidyr)  
  * func: gather pivot_longer
