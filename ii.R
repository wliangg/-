typeof(87.87)
class(87.87)
class("I am a string")
class(TRUE)
class(FALSE)
class(NA)
class(NULL)
length(NA)
length(NULL)

my_vec <- c(1, 2, 3, NA)
sum(my_vec, na.rm = TRUE)
my_vec <- c(1, 2, 3, NULL)
sum(my_vec)

sys_time <- Sys.time()
sys_date <- Sys.Date()
format(sys_time, "%B %d, %Y")
format(sys_date, "%A")
format(sys_date, "%j")
format(sys_date, "%W")

class(sys_time)
class(sys_date)
class("2018-11-16")
"2018-11-16" + 1
sys_date + 1

sys_date - as.numeric(sys_date)
as.numeric(as.Date("1969-12-31"))
sys_time - as.numeric(sys_time)
as.numeric(as.POSIXct("1970-01-01 07:59:59"))
greenwich_origin <- as.POSIXct("1970-01-01 00:00:00",
                               tz = "GMT")
OlsonNames()
