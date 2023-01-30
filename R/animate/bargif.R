#setwd("C:/Users/Huang/Desktop/新增資料夾/練習/output")
#year是資料清理後 是屬於每一年總合
cate <- rep(1:22,72) %>% as.data.frame()
plotyear <- cbind(year,cate)
names(plotyear)[4] <- "cate"
month <- data.frame()
monthbind <- data.frame()
for (i in 1:72) {
  monthbind <- rep(i,22) %>% as.data.frame()
  month <- rbind(monthbind,month)
}
names(month) <- "month"
month <-month %>%  arrange(month)
plotyear <- cbind(plotyear,month)

# libraries:
library(ggplot2)
library(gganimate)

# Make a ggplot, but add frame=year: one image per year
p<- ggplot(plotyear, aes(x=city, y=TotalUse, fill=city)) + 
  geom_bar(stat='identity') +
  theme_bw() +
  # gganimate specific bits:
  transition_states(
    date,
    transition_length = 2,
    state_length = 1
  ) +
  ease_aes('sine-in-out')+
  # gganimate specific bits:
  labs(title = 'Year-month: {frame_time}', x = '台灣縣市', y = '各地用電量(度)') +
  transition_time(date)

# Save at gif:
animate(
  p,
  duration = 20,
  fps = 60,
  width = 1200,
  height = 500,
  end_pause = 60,
  # 动画中最后一帧的重复次数
  res = 100,
  renderer = gifski_renderer()
)
anim_save("outputbar.gif")