####文字處理####
txt <- c("arm","foot","lefroo", "bafoobar")
#grep回傳是哪一個位置含有"oo"
grep("oo", txt)
#grepl回傳是否含有"oo"
grepl("oo", txt)
#nchar字串個數
x <- c("asfef", "qwerty", "yuiop[",
       "b", "stuff.blah.yech")
nchar(x)
#substr擷取每一個位置2到5
substr(x, 2, 5)
#substring(text,start,end)
substring(x, 3, 4:6)
##不同之處於處理向量
x <- c(
  "abcdefghij",
  "ABCDEFGHIJ",
  "1234567890"
)
substr(x, 1:4, 8)
substring(x, 1:4, 8)#開始會跑完4個(會回頭算)
#OS:我目前很單純只用到1對1的情況
substr(x, 2, 7)
x <- " Some text. "
x
#trimws去空白(左右)
trimws(x)
#left
trimws(x, "l")
#right
trimws(x, "r")
#gsub取代為甚麼很好用，尤其是在處理單位之類
gsub("oo","#", txt)
#全部大寫
toupper(txt)
#paste和paste的黏貼function時候或是print或是字串都很好用
nth <- paste0(1:12, c("st", "nd", "rd", 
                        rep("th", 9)))
#month.name
paste(month.abb, 
         "is the", 
         nth, 
         "month of the year.")
paste(month.abb, letters, sep=",")
paste(month.abb, letters, collapse=",")
x <- c(as = "asfef", qu = "qwerty", 
         "yuiop[", "b", "stuff.blah.yech")
#分割以e
strsplit(x, "e")
#分割後分開fixed=T
strsplit("foo+bar+Foo+BAR", "+", fixed = TRUE)
x.str <- c("foo bar Foo BAR", "abc def")
strsplit(x.str, " ", fixed = TRUE)
#unlist去list化
unlist(strsplit(x, "e"))
#迴圈sapply(x,function(x){})
sapply(strsplit(x, "e"),head,1)#只取第一個
####stringr####
#https://stringr.tidyverse.org/
library(stringr)
fruit.head = head(fruit)
fruit.head
x <- c("why", "video", "cross", "extra", "deal", "authority")
str_length(x) 
str_c(x, collapse = ", ")
str_sub(x, 1, 2)
str_subset(x, "[aeiou]")
str_count(x, "[aeiou]")
str_detect(x, "[aeiou]")
str_count(x, "[aeiou]")
str_subset(x, "[aeiou]")
str_locate(x, "[aeiou]")
str_extract(x, "[aeiou]")
# extract the characters on either side of the vowel
str_match(x, "(.)[aeiou](.)")
str_replace(x, "[aeiou]", "?")
str_split(c("a,b", "c,d,e"), ",")
####正規表達式#####
#https://stat.ethz.ch/R-manual/R-devel/library/base/html/regex.html
#https://atedev.wordpress.com/2007/11/23/%E6%AD%A3%E8%A6%8F%E8%A1%A8%E7%A4%BA%E5%BC%8F-regular-expression/
library(nycflights13)
library(dplyr)
names(flights)
flights %>% select(matches("m"))
flights %>% select(matches('^.{1,}m.{1,}$'))
check=unique(flights$tailnum)
View(table(check))
#找分機號碼中有A?A編號的航班
head(grep("A.A",flights$tailnum,value = TRUE))
#找分機號碼中有AA$結尾編號的航班
head(grep("AA$",flights$tailnum,value = TRUE))
#N的後面必須是1或3
head(grep("N[1|3]",flights$tailnum,value = TRUE))
#含字母 “A” 的字串#不符合"BBC"
head(grep("A",flights$tailnum,value = TRUE))
#含字母 “A” 以及其後任一個字元的字串#不符合"A" "BA"
head(grep("A.",flights$tailnum,value = TRUE))
#以 “N99” 開始的字串#不符合"N96" "AN99"
head(grep("^N99",flights$tailnum,value = TRUE))
#含數字或小寫字母之字串
head(grep("[a-z0-9]",flights$tailnum,value = TRUE))
#N後面一定有連續三個1或3
head(grep("N[1|3]{3}",flights$tailnum,value = TRUE))
head(grep("N[13]{3}",flights$tailnum,value = TRUE))
head(grep("N.{2}\\D{2}",flights$tailnum,value = TRUE))

x <- "123(45)657"
pattern <- "\\((.*))\\"
cat(pattern)

strvec <- c(
  "Beamite",
  "Gazelow",
  "Gazairy",
  "Pantheon",
  "Chimeton",
  "Sandite",
  "Zebrawl",
  "Barrazel",
  "Bellibou",
  "Sandapiss"
)
#Get the indexes of all the names in the list starting with B
grep("B.", strvec)
grep("B.", strvec, value = TRUE)

##長度恰好是7個字元

grep(".{7}$", strvec, value = TRUE)#超過七個，所以要刮住
grep("^(.){7}$", strvec, value = TRUE)


regexpr("ite$", strvec)#第五個字走三個

regmatches(strvec, regexpr("S.*", strvec))#寫出來value
sub("[Bb]","%%",strvec)#將遇到第一個的換掉
gsub("[Bb]","☆☆☆☆",strvec)#將任意一個換掉


#####日期####
#系統
Sys.Date()
Sys.time()
Sys.timezone()
class(Sys.Date())
class(Sys.time())
class(Sys.time())
#轉時間
today.c = "2021-04-06"
today.dt = as.Date(today.c) 
today.dt+1
#as.POSIXct as.POSIXlt
as.Date(1, origin="1970-01-01")
as.POSIXct(1, origin="1970-01-01")#1sec+8:00(local)
as.POSIXct(1, origin="1970-01-01",tz = "GMT")#1sec
class(as.POSIXct(1, origin="1970-01-01"))
now.dt = Sys.time()
s.now.dt.witz = strftime(now.dt, 
                            format = "%a %b %d %X %Y", 
                            tz = "Asia/Taipei", 
                            usetz = TRUE)
s.now.dt.witz#轉文字
format(as.Date(1, origin="1970-01-01"))#轉文字
##lubridate
library(lubridate)
target.dt = ymd("2016-01-01")
month(target.dt)
with_tz(target.dt,tz="America/New_York")
force_tz(target.dt,tz="America/New_York")
#時間算數?ymd
today() - ymd(19791014)
