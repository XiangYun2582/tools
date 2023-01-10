library(dplyr)
#####dplyr#####
#使用的資料 ?starwars
summary(starwars)
names(starwars)
####變數篩選####
select(starwars, height, mass)
starwars %>% select(height, mass)
starwars %>% select(c(height, mass))
starwars %>% select(name:mass)
starwars %>% select(is.numeric)
starwars %>% select(where(is.numeric))
#pull但是輸出時為vector
mtcars %>% pull(-1)#倒數一欄
mtcars %>% pull(1)#第一欄
mtcars %>% pull(cyl)#指定
starwars %>% pull(height, name)
####變數篩選####
#library(ggplot2) for diamonds dataset
?? diamonds
names(diamonds)
diamonds %>%
  select(one_of('carat', 'price'))
theCols <- c('carat', 'price')
diamonds %>% select(theCols)
diamonds %>%
  select(one_of(theCols))
#取消
diamonds %>% select(-carat,-price)
diamonds %>% select(-c(carat,price))
#正規表達式
diamonds %>% select(starts_with('c'))
diamonds %>% select(matches('^c'))#這個比較好用
diamonds %>% select(contains('l'))
#基礎行列表達 base
diamonds[,c('carat','price')]
diamonds[,c(1,7)]
####filter條件篩選####
# Filtering by one criterion
filter(starwars, species == "Human")
filter(starwars, mass>1000)
# Filtering by multiple criteria within a single logical expression
filter(starwars, hair_color == "none" & eye_color == "black")
filter(starwars, hair_color == "none" | eye_color == "black")
# When multiple expressions are used, they are combined using &
filter(starwars, hair_color == "none", eye_color == "black")
##其他篩選
mtcars
unique(names(mtcars))#獨一去重複
slice_head(mtcars)
slice_tail(mtcars)
slice_max(mtcars)
slice_min(mtcars)
####新增或變更 mutate#####
iris %>%
  mutate(S.Ratio = Sepal.Length / Sepal.Width,
         P.Ratio = Petal.Length / Petal.Width)
iris %>%
  transmute(S.Ratio = Sepal.Length / Sepal.Width,
            P.Ratio = Petal.Length / Petal.Width)
starwars %>%
  select(name, height, mass, homeworld) %>%
  mutate(mass = NULL,
         height = height * 0.0328084)
scale2 <- function(x, na.rm = FALSE){(x - mean(x, na.rm = na.rm)) / sd(x, na.rm)}
starwars %>%
  mutate_at(c("height", "mass"), scale2)#套入function
starwars %>%
  mutate_at(c("height", "mass"), scale2,
            na.rm = TRUE)
starwars %>%
  mutate_if(is.numeric, scale2, na.rm = TRUE)
iris %>%
  mutate_if(is.numeric,
            list(scale = scale2, ln = log))
####rename變更變數名稱 new=old####
names(iris)
rename(iris, petal_length = Petal.Length)
rename_with(iris, toupper)#大寫
rename_with(iris, toupper, starts_with("Petal"))

mtcars %>%
  select(cyl, mpg) %>%
  group_by(cyl) %>%
  rename(cyl_new = cyl) %>% summarise(n = n())
####summarise資料彙整#####
#summary
# A summary applied to ungrouped tbl returns a single row
mtcars %>%
  summarise(mean = mean(disp), n = n())
# Usually, you'll want to group first
mtcars %>%
  group_by(cyl) %>%
  summarise(mean = mean(disp), n = n())
