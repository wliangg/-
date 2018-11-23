pkgs <- c("gapminder", "dplyr")
install.packages(pkgs)
library(gapminder)
library(dplyr)

head(gapminder)
tail(gapminder)
summary(gapminder)
str(gapmindER)

# pipe operator %>% (Ctrl + Shift + M)
gapminder %>% head()
gapminder %>% tail()
gapminder %>% summary()
gapminder %>% str()

as.numeric(format(Sys.Date(), "%Y"))
Sys.Date() %>% 
  format("%Y") %>% 
  as.numeric()

as.numeric(format(as.Date("1950-08-12"), "%Y"))
"1950-08-12" %>% 
  as.Date() %>% 
  format("%Y") %>% 
  as.numeric()

# filter
tw <- gapminder %>% 
  filter(country == "Taiwan")
country_vec <- c("Taiwan", "China", "Japan", "Singapore")
tw_chn_jpn_sin <- gapminder %>% 
  filter(country %in% country_vec)

# select
gapminder %>% 
  filter(country %in% country_vec) %>% 
  select(country, lifeExp, gdpPercap)

# arrange
gapminder %>% 
  arrange(year, continent)

# mutate
gapminder %>% 
  mutate(
    gdp = gdpPercap * pop,
    country_uppercased = toupper(country)
  ) %>% 
  View()

# summarise
gapminder %>% 
  filter(year == 2007) %>% 
  summarise(ttl_pop = sum(as.numeric(pop)))

# group_by
gapminder %>% 
  filter(year == 2007) %>% 
  group_by(continent) %>% 
  summarise(ttl_pop = sum(as.numeric(pop)))

gapminder %>% 
  filter(year == 2007) %>% 
  group_by(continent) %>% 
  summarise(gdpPercap_median = median(gdpPercap))

gapminder %>% 
  filter(year == 2007) %>% 
  group_by(continent) %>% 
  summarise(no_countries = n())