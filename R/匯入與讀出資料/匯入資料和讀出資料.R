getwd()
library(data.table)#fread()
##csv----
write.csv(iris,"iris.csv",fileEncoding = "utf-8",row.names = F)
read.csv("iris.csv",fileEncoding = "utf-8")
library(readr)
read_csv("iris.csv")
##excel---
#readxl 自動將非 ASCII 字符重新編碼為 UTF-8
library(writexl)
write_xlsx(x=iris, 
           path="iris1.xlsx")
write_xlsx(list(mysheet = iris), 
           path="iris2.xlsx")
write_xlsx(list(iris = iris, 
                cars = cars, 
                mtcars = mtcars),
           "mydata3.xlsx")
library(readxl)
read_excel(path = "iris1.xlsx",
           sheet = "Sheet1")
#Json
library(jsonlite)
my.json <- toJSON(mtcars, 
       pretty=TRUE)#轉json
write(my.json, "my_mtcars.json")
#1讀檔
fromJSON("my_mtcars.json")
#2
readfile <- read_file("my_mtcars.json")
my.json2 = fromJSON(readfile)
# 引入 sas7bdat 套件
library(sas7bdat)
# 讀取 SAS7BDAT 格式的 SAS 檔案
df <- read.sas7bdat("airline.sas7bdat")
#https://officeguide.cc/r-read-sas7bdat-format-sas-file-tutorial-examples/