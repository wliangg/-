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
  ggplot(aes(x = continent, y = medidan_gdpPercap)) + 
  geom_bar(stat = "identity")

# histogram
ggplot(gapminder, aes(x = gdpPercap)) +
  geom_histogram(bins = 50)

# Asia
gapminder %>% 
  filter(continent == "Asia") %>% 
  ggplot(aes(x = gdpPercap)) +
  geom_histogram(bins = 50)

# Europe
gapminder %>% 
  filter(continent == "Europe") %>% 
  ggplot(aes(x = gdpPercap)) +
  geom_histogram(bins = 50)

# Histogram + facet
ggplot(gapminder, aes(x = gdpPercap, fill = continent)) +
  geom_histogram(bins = 30) + 
  facet_wrap(~ continent, scales = "free")

# boxplot
ggplot(gapminder, aes(x = continent, y = gdpPercap, fill = continent)) +
  geom_boxplot()

# scatter
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, 
                      color = continent, size = pop)) +
  geom_point() +
  facet_wrap(~continent, scales = "free")

# line
gapminder %>% 
  group_by(continent, year) %>% 
  summarise(medianGdpPercap = median(gdpPercap)) %>% 
  ggplot(aes(x = year, y = medianGdpPercap, linetype = continent, color = continent)) +
  geom_line()

p <- ggplot(mpg, aes(class, hwy))
p + geom_boxplot(outlier.shape = NA) +
  geom_jitter(width = 0.2)

# Project
zip_file_url <- "https://storage.googleapis.com/jhu_coursera_data/exdata_NEI_data.zip"
zip_file_path <- "c:/Users/shu/Desktop/nei.zip"
download.file(zip_file_url, destfile = zip_file_path)
desktop_path <- "c:/Users/shu/Desktop"
unzip(zip_file_path, exdir = desktop_path)

NEI <- readRDS("c:/Users/shu/Desktop/summarySCC_PM25.rds")
SCCode <- readRDS("c:/Users/shu/Desktop/Source_Classification_Code.rds")
head(NEI)
length(unique(NEI$fips))
SCCode %>% 
  filter(SCC == "10200401")
length(unique(NEI$Pollutant))
unique(NEI$type)
unique_years <- unique(NEI$year)
# Answer 1
p <- NEI %>% 
  group_by(year) %>% 
  summarise(ttl_emissions = sum(Emissions)) %>% 
  ggplot(aes(x = year, y = ttl_emissions))

p + geom_line(size = 2, color = "#FF004D") +
  geom_point(size = 4, color = "#FF004D") +
  xlab("Year") +
  ylab("PM2.5 Emissions") +
  ggtitle("PM2.5 emissions in the US have decreased over 1999-2008") +
  scale_x_continuous(breaks = unique_years) +
  theme_minimal()
# Answer 2
p <- NEI %>%
  filter(fips == "24510") %>% 
  group_by(year) %>% 
  summarise(ttl_emissions = sum(Emissions)) %>% 
  ggplot(aes(x = year, y = ttl_emissions))

p + geom_line(size = 2, color = "#FF004D") +
  geom_point(size = 4, color = "#FF004D") +
  xlab("Year") +
  ylab("PM2.5 Emissions") +
  ggtitle("PM2.5 emissions in Baltimore City have decreased over 1999-2008") +
  scale_x_continuous(breaks = unique_years) +
  theme_minimal()
# Answer 3
p <- NEI %>%
  filter(fips == "24510") %>% 
  group_by(year, type) %>% 
  summarise(ttl_emissions = sum(Emissions)) %>% 
  ggplot(aes(x = year, y = ttl_emissions, color = type))

p + geom_line(size = 2) +
  geom_point(size = 4) +
  xlab("Year") +
  ylab("PM2.5 Emissions") +
  ggtitle("PM2.5 emissions in Baltimore City have decreased over 1999-2008 except POINT type") +
  scale_x_continuous(breaks = unique_years) +
  theme_minimal()
# Answer 4
unique_ei_sectors <- SCCode$EI.Sector %>% 
  unique() %>% 
  as.character()
grepl(pattern = "Coal", unique_ei_sectors)
has_coal <- grepl(pattern = "Coal", SCCode$EI.Sector)
coal_scc <- SCCode$SCC[has_coal]

p <- NEI %>%
  filter(SCC %in% coal_scc) %>% 
  group_by(year) %>% 
  summarise(ttl_emissions = sum(Emissions)) %>% 
  ggplot(aes(x = year, y = ttl_emissions))

p + geom_line(size = 2, color = "#373838") +
  geom_point(size = 4, color = "#373838") +
  xlab("Year") +
  ylab("PM2.5 Emissions") +
  ggtitle("PM2.5 emissions from coal in the US have decreased over 1999-2008") +
  scale_x_continuous(breaks = unique_years) +
  theme_minimal()

# Answer 5
has_mobile <- grepl(pattern = "Mobile", SCCode$EI.Sector)
mobile_scc <- SCCode$SCC[has_mobile]

p <- NEI %>%
  filter(SCC %in% mobile_scc) %>%
  filter(fips == "24510") %>% 
  group_by(year) %>% 
  summarise(ttl_emissions = sum(Emissions)) %>% 
  ggplot(aes(x = year, y = ttl_emissions))

p + geom_line(size = 2, color = "#008083") +
  geom_point(size = 4, color = "#008083") +
  xlab("Year") +
  ylab("PM2.5 Emissions") +
  ggtitle("PM2.5 emissions from mobile in Baltimore City have decreased over 1999-2008") +
  scale_x_continuous(breaks = unique_years) +
  theme_minimal()

# Answer 6
has_mobile <- grepl(pattern = "Mobile", SCCode$EI.Sector)
mobile_scc <- SCCode$SCC[has_mobile]
sum(has_mobile)
unique_years <- unique(NEI$year)

NEI %>% 
  filter(SCC %in% mobile_scc) %>% 
  filter(fips %in% c('06037', '24510')) %>% 
  group_by(year, fips) %>% 
  summarise(ttl_emissions = sum(Emissions)) %>% 
  ggplot(aes(x = year, y = ttl_emissions, color = fips)) +
  geom_line(size = 2) +
  geom_point(size = 4) +
  xlab("Year") +
  ylab("PM2.5 Emissions from Mobile") +
  ggtitle("PM2.5 emissions from mobile in Los Angeles have increased over 1999-2008") +
  scale_x_continuous(breaks = unique_years) +
  theme_minimal()