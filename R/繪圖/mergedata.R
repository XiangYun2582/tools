library(dplyr)
library(data.table)
my_data <- fread("C:/Users/Huang/Desktop/新增資料夾/練習/datamap/台灣電力公司.csv",encoding="UTF-8")
names(my_data) <- c("date","city","houseSaleElec","housePercent","serviceUseElec","servicePercent","agriSaleElec","agriPercent","industrySaleElec","industryPercent","saleTotal","cityUseTotal")
#detect Percent
a <- (my_data$housePercent+my_data$servicePercent+my_data$agriPercent+my_data$industryPercent)
sum(a<0.999)
#時間
my_data$date <- gsub("年","-",my_data$date)
my_data$date <- gsub("月","",my_data$date)
my_data$date <- ym(my_data$date)
class(my_data$date)
my_data <- my_data %>% mutate(TotalUse = serviceUseElec / servicePercent) %>% mutate(
  houseUse = TotalUse * housePercent,
  agriUse = TotalUse * agriPercent,
  industryUse = TotalUse * industryPercent
)
names(my_data)
####台灣近六年來用電量折線圖&縣市長條圖####----
##抓出2016~2021
years=c(2016:2021)
data2016 = my_data %>% filter(grepl(paste0(years[1]), my_data$date)) %>% arrange(date)
data2017 = my_data %>% filter(grepl(paste0(years[2]), my_data$date)) %>% arrange(date)
data2018 = my_data %>% filter(grepl(paste0(years[3]), my_data$date)) %>% arrange(date)
data2019 = my_data %>% filter(grepl(paste0(years[4]), my_data$date)) %>% arrange(date)
data2020 = my_data %>% filter(grepl(paste0(years[5]), my_data$date)) %>% arrange(date)
data2021 = my_data %>% filter(grepl(paste0(years[6]), my_data$date)) %>% arrange(date)


Use2016<- data2016 %>% select(city,
                              serviceUseElec,
                              cityUseTotal,
                              houseUse,
                              agriUse,
                              industryUse,
                              TotalUse) %>% group_by(city) %>% summarise(
                                house = mean(houseUse),
                                agri = mean(agriUse),
                                industry = mean(industryUse),
                                Total = mean(TotalUse)
                              )
Use2017<- data2017 %>% select(city,
                              serviceUseElec,
                              cityUseTotal,
                              houseUse,
                              agriUse,
                              industryUse,
                              TotalUse) %>% group_by(city) %>% summarise(
                                house = mean(houseUse),
                                agri = mean(agriUse),
                                industry = mean(industryUse),
                                Total = mean(TotalUse)
                              )
Use2018<- data2018 %>% select(city,
                              serviceUseElec,
                              cityUseTotal,
                              houseUse,
                              agriUse,
                              industryUse,
                              TotalUse) %>% group_by(city) %>% summarise(
                                house = mean(houseUse),
                                agri = mean(agriUse),
                                industry = mean(industryUse),
                                Total = mean(TotalUse)
                              )
Use2019<- data2019 %>% select(city,
                              serviceUseElec,
                              cityUseTotal,
                              houseUse,
                              agriUse,
                              industryUse,
                              TotalUse) %>% group_by(city) %>% summarise(
                                house = mean(houseUse),
                                agri = mean(agriUse),
                                industry = mean(industryUse),
                                Total = mean(TotalUse)
                              )
Use2020<- data2020 %>% select(city,
                              serviceUseElec,
                              cityUseTotal,
                              houseUse,
                              agriUse,
                              industryUse,
                              TotalUse) %>% group_by(city) %>% summarise(
                                house = mean(houseUse),
                                agri = mean(agriUse),
                                industry = mean(industryUse),
                                Total = mean(TotalUse)
                              )
Use2021<- data2021 %>% select(city,
                              serviceUseElec,
                              cityUseTotal,
                              houseUse,
                              agriUse,
                              industryUse,
                              TotalUse) %>% group_by(city) %>% summarise(
                                house = mean(houseUse),
                                agri = mean(agriUse),
                                industry = mean(industryUse),
                                Total = mean(TotalUse)
                              )

cityUse <- rbind(Use2016,Use2017,Use2018,Use2019,Use2020,Use2021)
cityUse <- cityUse %>% group_by(city) %>% summarise(newTotal=mean(Total))
cityUse <- cityUse[-5,]
cityUse

year  <-  rbind(data2016,data2017,data2018,data2019,data2020,data2021) %>% select(date,city,
                                                                                TotalUse)%>% group_by(date,city) %>% filter(city!="合計")
year <- year %>% as.data.frame()