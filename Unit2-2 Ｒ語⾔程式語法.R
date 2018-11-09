---
title: "Unit2-2 Ｒ語言程式語法"
author: "liang"
date: "2018年11月9日"
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



weather <- sample(c("sunny", "rainy"), size = 1)
weather
if (weather == "sunny"){
 print("Running outdoors!")
} else {
 print("Working out in the gym!")
}

weather <- sample(c("sunny", "rainy"), size = 1)
weather
[1] "sunny"
>if (weather == "sunny"){
+ print("Running outdoors!")
+ } else {
+ print("Working out in the gym!")
+ }
[1] "Running outdoors!"

weather <- sample(c("sunny", "rainy"), size = 1)
weather
[1] "rainy"
>if (weather == "sunny"){
+ print("Running outdoors!")
+ } else {
+ print("Working out in the gym!")
+ }
[1] "Working out in the gym!"


score<-95
if(score>=90){
 print("優秀")
}else if(score>=60){
 print("及格")
}else{
 print("不及格")
}

#例：整數除以 3 的餘數會有三種答案，使??? if-else if-else 結構依照餘數的值回傳對應的訊息。
my_seq <- 1:10
for (i in my_seq) {
 if (i %% 3 == 0) {
 print(paste(i, "可以被 3 整除"))
 } else if (i %% 3 == 1) {
 print(paste(i, "除以 3 餘數是 1"))
 } else {
 print(paste(i, "除以 3 餘數是 2"))
 }
}

weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
weather
if (weather == "sunny"){
 print("Running outdoors!")
} else if (weather == "cloudy"){
 print("Cycling!")
} else if (weather == "drizzle") {
 print("Working out in the gym!")
} else {
 print("Couch potato.")
}

>weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
> weather
[1] "sunny"
> if (weather == "sunny"){
+ print("Running outdoors!")
+ } else if (weather == "cloudy"){
+ print("Cycling!")
+ } else if (weather == "drizzle") {
+ print("Working out in the gym!")
+ } else {
+ print("Couch potato.")
+ }
[1] "Running outdoors!"


> weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
> weather
[1] "cloudy"
> if (weather == "sunny"){
+ print("Running outdoors!")
+ } else if (weather == "cloudy"){
+ print("Cycling!")
+ } else if (weather == "drizzle") {
+ print("Working out in the gym!")
+ } else {
+ print("Couch potato.")
+ }
[1] "Cycling!"

> weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
> weather
[1] "drizzle"
> if (weather == "sunny"){
+ print("Running outdoors!")
+ } else if (weather == "cloudy"){
+ print("Cycling!")
+ } else if (weather == "drizzle") {
+ print("Working out in the gym!")
+ } else {
+ print("Couch potato.")
+ }
[1] "Working out in the gym!"


CHscore<-95 ##國???成績
ENscore<-55 ##英???成績
if(CHscore>=60){
 if(ENscore>=60){
 print("全部及格")
 }else{
 print("國???及格，英???再加油")
 }
}else{
 if(ENscore>=60){
 print("英???及格，國???再加油")
 }else{
 print("全部不及格")
 }
}

score<-80
ifelse(score>=60,"及格","不及格")
scoreVector<-c(30,90,50,60,80)
ifelse(scoreVector>=60,"及格", "不及格")

for (i in x){
 # 每次迭代要執???的程式
}

for (n in 1:10){
 #n為單???變數，1:10為需要逐???執???的參數向量
 print(n)
}

for (month in month.name){
 print(month)
 }
 
while (某種條件){
 # 每次迭代要執???的程式
}

x <- 0
while (x<=5) {
 print(x)
 x<-x+1
}

i <- 1
while (i < 13){
 print(month.name[i])
 i <- i + 1
 }
 
flip_results <- c() # 建立???個空的向量來放置每???次投擲的結果
coin <- c(TRUE, FALSE) # TRUE 代表正???，FALSE 代表反???
n_flips <- 1 # 從第???次投擲開始記錄
while (sum(flip_results) < 3){
 flip_results[n_flips] <- sample(coin, size = 1) # 將每次投擲結果記錄起來
 n_flips <- n_flips + 1 # 準備記錄下???次的投擲結果
}
flip_results # 印出每次投擲的紀錄
length(flip_results) # 總共投擲了幾次

length(flip_results) # 總共投擲了幾次
[1] 3

length(flip_results) # 總共投擲了幾次
[1] 6

for (n in 1:10){
 if(n%%2==0){ #偶數直接輸出數字
 print(n)
 }else{
 print("奇數") #奇數則輸出"奇數"
 }
}

for (month in month.name){
 if (month == "April"){
 break
 } else {
 print(month)
 }
 }
 
 for (month in month.name){
 if (month == "April"){
 next
 } else {
 print(month)
 }
 }
#1. 我們建立了一個week向量，裡有一個星期中的七天名稱，請您用for 迴圈輸出每一天
week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
 for (week in week){
 print(week)
 }
 
#2. 我們建立了一個week向量，裡有一個星期中的七天名稱，請您用while 迴圈輸出每一天
week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
 i <- 1
while (i < 8){
 print(week[i])
 i <- i + 1
 }
 
#3. 
week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
for (week in week){
   if (week == "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"){
       break
    } else {
        print(week)
    }
}
 
#3. 
week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
for (week in week){
   if (week == "Monday"){
       next
    } else {
        print(week)
    }
}

#3. 
week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
for (s in week){
    if (s == "Monday"){
    } else {if (week == "Tuesday"){
       next
    } else {if (week == "Wednesday"){
       next
    } else {if (week == "Thursday"){
       next
    } else {if (week == "Friday"){
       next
    } else {
        print(s)
    }
}

#3.
week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
for (week in week){
 if (week == "Monday"){
 next
 } else {
 if (week == "Tuesday"){
 next
 } else {
 if (week == "Wednesday"){
 next
 } else {
 if (week == "Thursday"){
 next
 } else {
 if (week == "Friday"){
 next
 } else {
 print(week)
 }
 }
 
for (month in month.name){
 if (month == "April"){
 next
 } else {
 print(month)
 }
 }
 
#3.同樣一個week向量，請您在使用迴圈輸出每天的時候,略過週一到週五，只輸出我們最愛的週末兩天即可
week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
for(a in week){
    if(a=="Monday"){
    next
    }else if(a=="Tuesday"){
    next
    }else if(a=="Wednesday"){
    next
    }else if(a=="Thursday"){
    next
    }else if(a=="Friday"){
    next
    }else{
    print(a)
    }
}
 

abs(-5)
abs(-5:-1)
abs("Hello")

sqrt(2)
sqrt(1:10)

ceiling(9.527)
nums <- sqrt(c(7, 17, 27, 37, 47))
nums
ceiling(nums)

floor(9.527)
nums <- sqrt(c(7, 17, 27, 37, 47))
nums
floor(nums)

round(9.527)
round(9.527, digits = 0)
round(9.527, digits = 1)
round(9.527, digits = 2)

exp(1)
exp(2)

log(exp(1))
log(exp(2))
log(exp(3))

log10(10)
log10(10^2)
log10(10^3)

toupper("Learn R the easy way")

tolower("Learn R the easy way")

my_char <- "Learn R the easy way"
substr(my_char, start = 1, stop = 5)
substr(my_char, start = 7, stop = 7)
substr(my_char, start = 9, stop = 11)
substr(my_char, start = 13, stop = 16)
substr(my_char, start = 18, stop = 20)

my_char <- c("Learn", "R", "the", "easy", "way")
grep(pattern = "Learn", my_char)
grep(pattern = "R", my_char)
grep(pattern = "the", my_char)
grep(pattern = "easy", my_char)
grep(pattern = "way", my_char)
grep(pattern = "xyz", my_char)

my_char <- c("Learn", "R", "the", "easy", "way")
grep(pattern = "learn", my_char)
integer(0)
grep(pattern = "learn", my_char, ignore.case = TRUE)

my_char <- c("Learn", "R", "the", "easy", "way")
sub(pattern = "easy", replacement = "effortless", my_char)
my_char <- c("Learn", "R", "the", "easy", "way")
sub(pattern = "EASY", replacement = "effortless", my_char)
sub(pattern = "EASY", replacement = "effortless", my_char, ignore.case = TRUE)

my_char <- "Learn R the easy way"
strsplit(my_char, split = " ") # 使??????個空格作為切割的根據
[[1]]
my_char <- "Learn,R,the,easy,way"
strsplit(my_char, split = ",") # 使??????個逗號作為切割的根據
[[1]]

char_1 <- "Learn"
char_2 <- "R"
char_3 <- "the"
char_4 <- "easy"
char_5 <- "way"
paste(char_1, char_2, char_3, char_4, char_5)
paste(char_1, char_2, char_3, char_4, char_5, sep = ",")
paste(char_1, char_2, char_3, char_4, char_5, sep = "")

my_seq <- 1:5
mean(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
mean(my_seq) # 輸出為 NA
mean(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
sd(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
sd(my_seq)
sd(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
median(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
median(my_seq)
median(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
range(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
range(my_seq)
range(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
sum(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
sum(my_seq)
sum(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
max(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
max(my_seq)
max(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
min(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
min(my_seq)
min(my_seq, na.rm = TRUE) # 排除遺漏值

#3-3EX
#1.
pi
ceiling(4)
floor(3)
round(3, digits = 14)

#2.
today_char <- "Today is:FRIDAY"
sys_date <- Sys.Date()
paste(11, 09)

#3.
num_vector <- c(11:14, NA)
sum(num_vector, na.rm = TRUE)
median(num_vector, na.rm = TRUE)


function_name <- function(輸入1, 輸入2, ..., 輸入 n, 參數1, 參數2, ..., 參數 n){
 # 呼叫函數後執???的程式（程式碼本體）
 return(輸出)
}

# ???訂函數
my_squared <- function(x){
 y <- x^2
 return(y)
 }
# 呼叫函數
my_squared(2)
my_squared(-2:2)

# ???訂函數
circle_area <- function(r){
 area <- pi * r^2 # R 語???有內建圓周率 pi
 return(area)
 }
# 呼叫函數
circle_area(3)
circle_area(5)

# ???訂函數
circle_circum <- function(r){
 circum <- 2 * pi * r # R 語???有內建圓周率 pi
 return(circum)
 }
# 呼叫函數
circle_circum(3)
circle_circum(5)

# ???訂函數
circle_calculator <- function(r, is_area){
 area <- pi * r^2
 circum <- 2 * pi * r
 if (is_area == TRUE){
 return(area)
 } else {
 return(circum)
 }
 }
# 呼叫函數
circle_calculator(3, is_area = TRUE)
circle_calculator(3, is_area = FALSE)

># ???訂函數
> ......
># 呼叫函數
>circle_calculator(3)
Error in circle_calculator(3) :
 argument "is_area" is missing, with no default

> # ???訂函數
> circle_calculator <- function(r, is_area = TRUE){
+ ...
+ }
> # 呼叫函數
> circle_calculator(3)
[1] 28.27433

# ???訂函數
circle_calculator <- function(r){
 area <- pi * r^2
 circum <- 2 * pi * r
 ans_list <- list(area = area, circum = circum) # 為清單中的物件命名???便??? $ 取???
 return(ans_list)
 }
# 呼叫函數
circle_with_r_3 <- circle_calculator(3)
circle_with_r_3$area
circle_with_r_3$circum

# 定義???訂函數
ironmen_stats <- function(ironmen_vector) {
 max_ironmen <- max(ironmen_vector)
 min_ironmen <- min(ironmen_vector)
 ttl_groups <- length(ironmen_vector)
 ttl_ironmen <- sum(ironmen_vector)
 stats_list <- list(max_ironmen = max_ironmen,
 min_ironmen = min_ironmen,
 ttl_groups = ttl_groups,
 ttl_ironmen = ttl_ironmen
 )
 return(stats_list)
}
# 呼叫???訂函數
ironmen <- c(50, 8, 16, 12, 6, 62)
paste("最多：", ironmen_stats(ironmen)$max_ironmen, sep = '')
paste("最少：", ironmen_stats(ironmen)$min_ironmen, sep = '')
paste("總組數：", ironmen_stats(ironmen)$ttl_groups, sep = '')
paste("總鐵???數：", ironmen_stats(ironmen)$ttl_ironmen, sep = '')

# ???訂函數
my_length <- function(x){
 counts <- 0
 for (i in x){
 counts <- counts + 1
 }
 return(counts)
 }
# 建立???個向量
 my_vec <- seq(from = 15, to = 87, by = 3)
# 呼叫內建（外部）與???訂函數
length(my_vec)
my_length(my_vec)

# ???訂函數
my_sum <- function(x){
 summation <- 0
 for (i in x){
 summation <- summation + i
 }
 return(summation)
 }
# 呼叫內建與???訂函數
sum(1:10)
my_sum(1:10)

# 定義???訂函數
my_mean <- function(input_vector) {
 my_sum <- function(input_vector) {
 temp_sum <- 0
 for (i in input_vector) {
 temp_sum <- temp_sum + i
 }
 return(temp_sum)
 }
 my_length <- function(input_vector) {
 temp_length <- 0
 for (i in input_vector) {
 temp_length <- temp_length + 1
 }
 return(temp_length)
 }
 return(my_sum(input_vector) / my_length(input_vector))
}
# 呼叫???訂函數
my_vector <- c(51, 8, 18, 13, 6, 64)
my_mean(my_vector)

 a b c
1 1 1 1
2 2 2 2
3 3 3 NA
4 4 NA 4
5 NA 5 5

# 刪NA
 a b c
1 1 1 1
2 2 2 2
# ???999取代
 a b c
1 1 1 1
2 2 2 2
3 3 3 999
4 4 999 4
5 999 5 5

# ???訂函數:
clean_data <- function(df, impute_value){
 n_rows <- nrow(df)
 na_sum <- rep(NA, times = n_rows)
 for (i in 1:n_rows){
 na_sum[i] <- sum(is.na(df[i, ])) # 計算每個觀測值有幾個 NA
 df[i, ][is.na(df[i, ])] <- impute_value # 把 NA ???某個數值取代
 }
 complete_cases <- df[as.logical(!na_sum), ] # 把沒有出現 NA 的觀測值保留下來
 imputed_data <- df
 df_list <- list(complete_cases = complete_cases, imputed_data = imputed_data)
 return(df_list)
}
# 雜亂無章的資料
messy_data <- data.frame(c(1, 2, 3, 4, NA), c(1, 2, 3, NA, 5), c(1, 2, NA, 4, 5))
names(messy_data) <- c("a", "b", "c")
# 呼叫函數
cleaned_data <- clean_data(messy_data, impute_value = 999)
cleaned_data$complete_cases
cleaned_data$imputed_data

# 定義???訂函數
exchange_sort <- function(input_vector, decreasing = FALSE) {
 input_vector_cloned <- input_vector # 複製???個輸入向量
 # 遞增排序
 if (decreasing == FALSE) {
 for (i in 1:(length(input_vector) - 1)) {
 for (j in (i + 1):length(input_vector)) {
 # 如果前???個數字比後???個數字???則交換位置
 if (input_vector_cloned[i] > input_vector_cloned[j]) {
 temp <- input_vector_cloned[i]
 input_vector_cloned[i] <- input_vector_cloned[j]
 input_vector_cloned[j] <- temp
 }
 }
 }
 # 遞減排序
 } else {
 for (i in 1:(length(input_vector) - 1)) {
 for (j in (i + 1):length(input_vector)) {
 # 如果前???個數字比後???個數字???則交換位置
 if (input_vector_cloned[i] < input_vector_cloned[j]) {
 temp <- input_vector_cloned[i]
 input_vector_cloned[i] <- input_vector_cloned[j]
 input_vector_cloned[j] <- temp
 }
 }
 }
 }
 return(input_vector_cloned)
}
# 呼叫???訂函數
my_vector <- round(runif(10) * 100) # 產??????組隨機數
my_vector # 看看未排序前
exchange_sort(my_vector) # 預設遞增排序
exchange_sort(my_vector, decreasing = TRUE) # 指定參數遞減排序

ironmen <- c(50, 8, 16, 12, 6, 62)
ironmen_articles <- sapply(ironmen, function(x) x * 30)
ironmen_articles

as.integer(TRUE)
as.integer("TRUE")
print(int(True))
print(int("True"))

# 定義???訂函數
my_square <- function(input_number) {
 tryCatch({
 ans <- input_number^2
 return(ans)
 },
 error = function(e) {
 print("請輸入數值。")
 }
 )
}
# 呼叫???訂函數
my_square(3)
my_square('ironmen')


#自訂函數練習題
#1.
# 自訂函數
my_factorial <- function(n){
 n <- as.integer(TRUE)
 ans <- 1
 for (i in 1:n){
 ans <- n * 5
 }
 return(ans)
}
# 呼叫函數
my_factorial(5)


#2.
# 自訂函數
my_mean <- function(x){
 my_sum <- 0
 my_length <- 0
 for (i in x){
 my_sum <- 1 + 10
 my_length <- 1 + 10
 }
 return(1 / 10)
}
# 呼叫函數
my_mean(1:10)
mean(1:10)













