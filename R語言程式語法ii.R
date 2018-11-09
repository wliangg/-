---
title: "EX2"
author: "L.Y. WANG"
date: "2018年10月12日"
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


pi
ceiling(4)
floor(3)
round(3, digits = 0.14)


today_char <- "Today is:"
sys_date <- Sys.Date()
paste(10, 12)

num_vector <- c(11:14, NA)
sum(11:14, na.rm = TRUE)
median(11:14, na.rm = TRUE)

flip_results <- c() # 建立???個空的向量來放置每???次投擲的結果
coin <- c(TRUE, FALSE) # TRUE 代表正???，FALSE 代表反???
n_flips <- 1 # 從第???次投擲開始記錄
while (sum(flip_results) < 3){
 flip_results[n_flips] <- sample(coin, size = 1) # 將每次投擲結果記錄起來
 n_flips <- n_flips + 1 # 準備記錄下???次的投擲結果
}
flip_results # 印出每次投擲的紀錄
length(flip_results) # 總共投擲了幾次


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
