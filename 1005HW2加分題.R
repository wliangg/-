---
title: "HW2"
author: "LIANGW"
date: "2018年10月5日"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.





seq(from = 3, to = 99, by = 2)
2:8

# 使???用C函數集結元素
x <- c(1,2,3,4)  #數字向量量 
x
season_1 <- "spring" 
season_2 <- "summer" 
season_3 <- "autumn" 
season_4 <- "winter"

four_seasons <- c("spring", "summer", "autumn", "winter") #文字向量four_seasons

rep("2", times = 10) 
rep("R", times = 10)

seq(from = 1, to = 10, by = 1) #等差函數
1:10


lucky_numbers <- c(7L, 24) 
class(lucky_numbers[1])

lucky_numbers <- c(7L, FALSE) 
lucky_numbers 
class(lucky_numbers[2])

mixed_vars <- c(TRUE, 7L, 24, "spring") 
mixed_vars 
class(mixed_vars[1]) 
class(mixed_vars[2]) 
class(mixed_vars[3])

#???方法一：中括號搭配索引值

favorite_season <- four_seasons[3] 
favorite_season

favorite_seasons <- four_seasons[c(-2, -4)] # 我喜歡春天或秋天 
favorite_seasons

#???方法二：判斷運算子

my_favorite_season <- four_seasons == "autumn" 
four_seasons[my_favorite_season]

my_favorite_seasons <- four_seasons == "spring" | four_seasons == "autumn" # 我喜歡春天或秋天 
four_seasons[my_favorite_seasons]


numvec<-1:10 # c(1,2,3,4,5,6,7,8,9,10)

numvec+3 # 所有元素+3 
numvec*2 # 所有元素*2

numvec1<-1:3 ## c(1,2,3) 
numvec2<-4:6 ## c(4,5,6) 
numvec1+numvec2 
numvec1*numvec2

weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday") 
favorite_day <- weekdays[5] 
favorite_day

weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

not_blue_monday <- weekdays != "Monday"
without_monday <- weekdays[5] 
without_monday

speed_char <- c("slow", "fast") 
speed_factor <- ___(speed_char, ordered = ___, levels = c("___", "___")) 
speed_factor


my_mat <- matrix(1:6, nrow = 2) 
my_mat

my_mat <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE) 
my_mat


my_mat <- matrix(1:6, nrow = 2) 
my_mat

#方法一：中括號搭配索引值

my_mat[2, 3] # 選出位於（2, 3）這個位置的 6
my_mat[2, ] # 選出所有第???二列列（2nd row）的元素
my_mat[, 3] # 選出所有第三欄欄（2nd column）的元素

#方法二：判斷運算子

filter <- my_mat < 6 & my_mat > 1 
my_mat[filter]


team_name <- c("Chicago Bulls", "Golden State Warriors") 
wins <- c(72, 73) 
losses <- c(10, 9) 
is_champion <- c(TRUE, FALSE) 
season <- c("1995-96", "2015-16")

great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season) 
View(great_nba_teams)

great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE) 
str(great_nba_teams)

team_name <- c("Chicago Bulls", "Golden State Warriors") 
wins <- c(72, 73) 
losses <- c(10, 9) 
is_champion <- c(TRUE, FALSE) 
season <- c("1995-96", "2015-16")

#方法一：stringsAsFactors = FALSE 
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE)

#方法二:as.character() 
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season) 
great_nba_teams[, 1]<- as.character(great_nba_teams[, 1])
great_nba_teams[, 5] <- as.character(great_nba_teams[, 5])


team_name <- c("Chicago Bulls", "Golden State Warriors") wins <- c(72, 73) losses <- c(10, 9) is_champion <- c(TRUE, FALSE) season <- c("1995-96", "2015-16")
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
#???方法???一：中括號搭配索引值 
great_nba_teams[1, 1] # 選出第???一個變數的第???一個觀測值 "Chicago Bulls" 
great_nba_teams[1, ] # 選出第???一個觀測值 
great_nba_teams[, 1] # 選出第???一個變數

#???方法???二：使???用變數名稱來來選擇 
great_nba_teams[, "season"]

# **???方法三：使???用變數名稱與$來來選擇** 
great_nba_teams$team_name

#???方法四：使???用判斷運算???子 
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE) 
filter <- great_nba_teams$is_champion == TRUE 
great_nba_teams[filter, ] # 注意這個逗號


my_mat <- matrix(1:9, nrow = 3) 
my_mat[1, 2]

my_mat <- matrix(1:9, nrow = 3) 
my_mat[2, 3]

my_mat <- matrix(1:9, nrow = 3) 
filter <- my_mat %% 2 == 1
my_mat[filter]



team_name <- c("Chicago Bulls", "Golden State Warriors") 
wins <- c(72, 73) 
losses <- c(10, 9) 
is_champion <- c(TRUE, FALSE) 
season <- c("1995-96", "2015-16")

great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season) 
View(great_nba_teams)

team_name <- c("Chicago Bulls", "Golden State Warriors") 
wins <- c(72, 73) 
losses <- c(10, 9)

is_champion <- c(TRUE, FALSE) 
season <- c("1995-96", "2015-16")
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE)
# 利用 `$變數名稱`
great_nba_teams$is_champion

# 利用`[, "變數名稱"]` 
greate_nba_teams[, "is_champion"]
