R: MySQL

# installing package
install.packages("RMySQL")

# library package
library(DBI)

host <- "rsqltrain.ced04jhfjfgi.ap-northeast-1.rds.amazonaws.com"
port <- 3306
dbname <- "nba"
user <- "trainstudent"
password <- "csietrain"
engine <- dbConnect(RMySQL::MySQL(),
                    host = host,
                    port = port,
                    dbname = dbname,
                    user = user,
                    password = password
)
chicago_bulls <- dbReadTable(engine, name = 'chicago_bulls')
dbDisconnect(engine)

# Useful functions to examine a data.frame
class(chicago_bulls)
View(chicago_bulls)
head(chicago_bulls)
tail(chicago_bulls)
dim(chicago_bulls)
nrow(chicago_bulls)
ncol(chicago_bulls)
summary(chicago_bulls)
str(chicago_bulls)

# extract partial observations from database
engine <- dbConnect(RMySQL::MySQL(),
                    host = host,
                    port = port,
                    dbname = dbname,
                    user = user,
                    password = password

query_str <- "SELECT * FROM chicago_bulls WHERE Player IN ('Michael Jordan', 'Scottie Pippen', 'Dennis Rodman');"
trio <- dbGetQuery(engine, query_str)

dim(trio)
dbDisconnect(engine)

# Extracting Ray Allen, Paul Pierce, Kevin Garnett from boston_celtics
engine <- dbConnect(RMySQL::MySQL(),
                    host = host,
                    port = port,
                    dbname = dbname,
                    user = user,
                    password = password
)                    
query_str <- "SELECT * FROM boston_celtics WHERE Player IN ('Ray Allen', 'Paul Pierce', 'Kevin Garnett');"
trio <- dbGetQuery(engine, query_str)
dbDisconnect(engine)
dim(trio)


# Extracting Ray Allen, Paul Pierce, Kevin Garnett from boston_celtics
boston_celtics <- dbReadTable(engine, "boston_celtics")
dim(boston_celtics)
is_gap <- boston_celtics$No. %in% c(20, 5, 34)
gap <- boston_celtics[is_gap, ]
gap
query_str <- "SELECT * FROM boston_celtics WHERE Player IN ('Ray Allen', 'Kevin Garnett', 'Paul Pierce');"
gap <- dbGetQuery(engine, query_str)
dbDisconnect(engine)
gap




