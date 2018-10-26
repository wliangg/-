---
title: "HW1026"
author: "LIANG"
date: "201810る26ら"
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


# read.csv() ㄏ???ノ箇砞把把计 
csv_url <- "https://storage.googleapis.com/ds_data_import/chicago_bulls_1995_1996.csv" 
csv_df <- read.csv(csv_url) 
View(csv_df)

# read.csv() ??????︽︽﹚跑计嘿 
csv_url <- "https://storage.googleapis.com/ds_data_import/chicago_bulls_1995_1996.csv" 
csv_df <- read.csv(csv_url, skip = 1, header = FALSE, col.names = c('number', 'player', 'pos', 'ht', 'wt', 'birth_date', 'college')) 
View(csv_df)


url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data" 
iris_df <- read.table(url, header = FALSE, sep =" ")

url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data" 
iris_df <- read.table(url, header = FALSE, sep =" ") 
names(iris_df) <- c("min","max","mean","sd","class correlation)
View(iris_df)

file_path <- "___" # ???璹 
write.csv(cars, file = file_path, row.names = FALSE)
