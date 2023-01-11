####資料處理#####
library(dplyr)
##bind_rows()：上下資料合併
mtcars_am0 = mtcars %>% filter(am==0)
mtcars_am1 = mtcars %>% filter(am==1)
mtcars_am0 %>% bind_rows(mtcars_am1)
bind_rows(list(am0 = mtcars_am0, am1 = mtcars_am1), .id = 'source')
##bind_cols()：左右資料合併 不實用
mtcars_1 = mtcars %>% select(vs, am, gear, carb)
mtcars_0 = mtcars %>% select(mpg, cyl, disp)
mtcars_0 %>% bind_cols(mtcars_1) %>% head()
bind_cols(mtcars_0, mtcars_1) %>% head()
##Join data
#left_join()right_join()inner_join()full_join()
df1 = data.frame(CustomerId=c(1:6), 
                    sex = c("f","m","f","f","m", "m"), 
                    Product=c(rep("Toaster",3), 
                                rep("Radio",3))
                    )
df2 = data.frame(CustomerId=c(2,4,6,7),
                    sex = c( "m", "f", "m", "f"), 
                    State=c(rep("Alabama",3), 
                              rep("Ohio",1))
                    )
df1 %>% left_join(df2)
##不同名稱但是同意思
df3 = df2 %>% rename(id=CustomerId)
df1 %>% left_join(df3)
df1 %>% left_join(df3,by=c("CustomerId"="id"))
##我更常用rbind()和cbind()

####Wide and long format寬轉長####
library(reshape2)
# 空氣質量原始資料
head(airquality)
dim(airquality)
str(airquality)
names(airquality) <- tolower(names(airquality))

qirquality_m <- airquality %>% melt(id.vars=c("month", "day"))
unique(qirquality_m$variable)
#月和天變重要標籤其餘變成值
head(qirquality_m)
dim(qirquality_m)
####long into widet長轉寬####
aql <- melt(airquality,id.vars = c("month", "day"))
aqw <- dcast(aql, month + day ~ variable)
head(aqw)
head(airquality) # original data
##匯總數據
dcast(aql,
      month ~ variable,
      fun.aggregate = mean,
      na.rm = TRUE)
##tidyr package 進階版
library(tidyr)
aql.g <- airquality %>% 
  gather(key=variable, 
           value=value,
           ozone,solar.r,wind,temp)
aql.p <- airquality %>% 
  pivot_longer(c(ozone,solar.r,wind,temp), 
                 names_to = "my.variable", 
                 values_to = "my.value")

