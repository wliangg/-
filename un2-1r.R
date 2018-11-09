my_num1 <- 2.33
my_num1

my_num2 <- 2.0
my_num2

my_num3 <- 2
my_num3

my_int1 <- 2L
my_int1

my_int2 <- 2.0L
my_int2

my_int3 <- 2.33L
my_int3

TRUE
FALSE
T
F
True
true

8 > 7 # 判斷 8 是否???於 7
8 < 7 # 判斷 8 是否???於 7
8 >= 7 # 判斷 8 是否???於等於 7
8 <= 7 # 判斷 8 是否???於等於 7
8 == 7 # 判斷 8 是否等於 7
8 != 7 # 判斷 8 是否不等於 7
7 %in% c(8, 7) # 判斷 7 是否包含於???個 c(8, 7) 之中

first_name <- "Tony"
first_name
class(first_name)

sys_date <- Sys.Date() # 系統???期
sys_date # 看起來跟???字相同
class(sys_date)

sys_time <- Sys.time() # 系統時間
sys_time # 看起來跟???字相同
class(sys_time)

my_weight
my_height <- 159
my_weight <- 55

class(2)
class(2L)
class(TRUE)
class("Learning R the easy way")
class(Sys.Date())
class(Sys.time())

my_int1 <- 2L
class(my_int1)
my_int2 <- 2.0L
class(my_int2)
my_int3 <- 2.33L
class(my_int3)
class(TRUE)
class(FALSE)
class(T)
class(F)
class(True)
class(true)
first_name <- 'Tony'
first_name
class(first_name)

is.numeric(8.7)
is.numeric("8.7")
is.integer(7L)
is.integer(7)

is.logical(FALSE)
is.logical("FALSE")

is.character("TRUE")
is.character(TRUE)

inherits(Sys.Date(), what = "Date") # Sys.Date() 是???期類型
inherits("1970-01-01", what = "Date") # "1970-01-01" 是???字類型

as.numeric(7L)
as.numeric(TRUE)
as.numeric(FALSE)
as.numeric(Sys.Date())
as.numeric(Sys.time())
