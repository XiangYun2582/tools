library(sf)
getwd()
taiwan.map <- st_read("~/datamap/gadm36_TWN_2.shp")
#head(taiwan.map)
#dim(taiwan.map)
#print(taiwan.map, n = 22)
plot(taiwan.map[1])
plot(st_geometry(taiwan.map))
plot(taiwan.map["NL_NAME_2"], axes = TRUE)
windows()
st_geometry(taiwan.map)
cityUse$city <- as.character(cityUse$city)
taiwan.map$NL_NAME_2

my.taiwan.map <- taiwan.map[c("NL_NAME_2", "geometry")]
my.taiwan.map$NL_NAME_2 <- as.character(my.taiwan.map$NL_NAME_2)
head(my.taiwan.map)
my.taiwan.map$NL_NAME_2[c(2,5,6)] <- c("連江縣","台中市","台南市")
cityUse$city
#合併
my.taiwan.map.data <- left_join(my.taiwan.map, cityUse,
                                by = c("NL_NAME_2" = "city"))
#write.csv(cityUse,"cityUse.csv",row.names = F)
head(my.taiwan.map.data)
library(ggplot2)
windows()
ggplot(data = my.taiwan.map.data) +
  geom_sf(aes(fill = newTotal))+
  scale_fill_distiller(palette = "Spectral")+
  ggtitle("台灣近六年各縣市平均用電量")+
  theme(plot.title = element_text(hjust = 1))+
  labs(caption = "註記:單位為度 2.5e+09為25億")

#scale_fill_gradientn(colours = terrain.colors(10))
#scale_fill_viridis_c(option = "plasma", trans = "sqrt")


library(dplyr)
city.map <- st_read("C:/Users/Huang/Desktop/研究/bigdata/mapdata202209220943/COUNTY_MOI_1090820.shp")
windows()
plot(city.map[2])
newcity.map <-
  st_read("C:/Users/Huang/Desktop/研究/bigdata/mapdata202209220431/TOWN_MOI_1100415.shp") %>% filter(COUNTYNAME ==
                                                                                                     "新北市")
plot(newcity.map[2])
names(newcity.map)
