# 目錄
## 文字處理
* base
  * grep
  * grepl
  * nchar
  * substr
  * substring
  * trimws
  * toupper
  * paste0和paste
  * strsplit
* stringr
  * paste0和paste
  * str_sub
  * str_subset
  * str_count
  * str_subset
  * str_detect
  * str_locate
  * str_extract
```python
# extract the characters on either side of the vowel
str_match(x, "(.)[aeiou](.)")
str_replace(x, "[aeiou]", "?")
str_split(c("a,b", "c,d,e"), ",")
```
## 正規表達式
> [參考連結一](https://atedev.wordpress.com/2007/11/23/%E6%AD%A3%E8%A6%8F%E8%A1%A8%E7%A4%BA%E5%BC%8F-regular-expression/)  
> [參考連結二](https://stat.ethz.ch/R-manual/R-devel/library/base/html/regex.html)

| 正規表示式的特定字元  | 說明 | 	等效的正規表示式 |
| ------------- |:-------------:|:-------------:|
|\d	|數字	|[0-9]|
|\D	|非數字	|[^0-9]|
|\w	|數字、字母、底線	|[a-zA-Z0-9_]|
|\W	|非 \w	|[^a-zA-Z0-9_]|
|\s	|空白字元	|[ \r\t\n\f]|
|\S	|非空白字元	|[^ \r\t\n\f]|

| 正規表示式的特定字元  | 說明 | 
| ------------- |:-------------:|
|/a?/|	零或一個 a（若要比對? 字元，請使用 \?）|
|/a+/|	一或多個 a（若要比對+ 字元，請使用 \+）|
|/a*/|	零或多個 a（若要比對* 字元，請使用 \*）|
|/a{4}/|	四個 a|
|/a{5,10}/|	五至十個 a|
|/a{5,}/|	至少五個 a|
|/a{,3}/|	至多三個 a|
|/a.{5}b/|	a 和 b中間夾五個（非換行）字元|

## 日期和時間
* base
* lubridate
  * ymd
