# Data Visualization with R
pkgs <- c("gapminder", "dplyr", "ggplot2")
install.packages(pkgs)
library(gapminder)
library(dplyr)
library(ggplot2)

dim(gapminder) # shape
head(gapminder) # first 6 rows

# bar plot
ggplot(gapminder, aes(x = continent)) +
  geom_bar()

gapminder %>% 
  group_by(continent) %>% 
  summarise(counts = n())

gapminder %>% 
  filter(year == 2007) %>% 
  group_by(continent) %>% 
  summarise(medidan_gdpPercap = median(gdpPercap)) %>% 
  ggplot(aes(x = continent)) + 
  geom_bar()

gapminder %>% 
  filter(year == 2007) %>% 
  group_by(continent) %>% 
  summarise(medidan_gdpPercap = median(gdpPercap)) %>% 
  ggplot(aes(x = continent, y = medidan_gdpPercap)) + 
  geom_bar(stat = "identity")