---
title: "weather"
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




weather <- sample(c("sunny", "rainy", "cloudy"), size = 1)
weather
if (weather == "sunny"){
 print("Running outdoors!")
} else if (weather == "cloudy"){
 print("Cycling!")
} else {
 print("Working out in the gym!")

weather <- sample(c("sunny", "rainy", "cloudy"), size = 1)
weather
if (weather == "sunny"){
   print("Running outdoors!")
} else if (weather == "cloudy"){
    print("Cycling!")
} else {
   print("Working out in the gym!")
}


score<-95
if(score>=90){
 print("優秀")
} else if(score>=60){
    print("及格")
} else{
    print("不及格")
 
 
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
 
 

 
pi
ceiling(4)
floor(3)
round(3, digits =0.14 )
 