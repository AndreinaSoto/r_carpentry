#learning about dplyr package
gapminder<- read.csv("data/gapminder_data.csv")

#subset the gapminder in base R
mean(gapminder[gapminder$continent=="Africa", "gdpPercap"])

#load package
library(dplyr)

#select colums (pipe)
year_country_gap<- gapminder %>% select(year,country,gdpPercap)

#select rows
year_country_gap_africa<-gapminder%>% filter(continent=="Africa") %>%
  select(year,country,gdpPercap)
head(year_country_gap_africa)

#summarise by groups. GDP by continents
gdp_by_continent <- gapminder %>% 
  group_by(continent) %>% 
  summarise(mean_gdp = mean(gdpPercap))

#summarise. Average by country
lifeExp_bycountry <- gapminder %>%
  group_by(country) %>%
  summarise(mean_lifeExp=mean(lifeExp))

#longest-shortest

#using filter
lifeExp_bycountry %>%
  filter(mean_lifeExp == min(mean_lifeExp))

lifeExp_bycountry %>%
  filter(mean_lifeExp == max(mean_lifeExp))
#using arrange
lifeExp_bycountry %>% arrange(mean_lifeExp)
lifeExp_bycountry %>% arrange(desc(mean_lifeExp))

#head and tail
head(lifeExp_bycountry %>% arrange(mean_lifeExp))
tail(lifeExp_bycountry %>% arrange(mean_lifeExp))

#use countr to find number of rows
gapminder %>%
  filter(year == 2008) %>%
  count(continent)
unique(gapminder$year)

#perform more than one function in summarise 

#mutate
gdp_pop_summarise <- gapminder %>%
  mutate(gdp_billions = gdpPercap/10^9) %>%
  group_by(continent,year) %>%
  summarise(mean_gdp_bill = mean(gdp_billions))
head(gdp_pop_summarise)
