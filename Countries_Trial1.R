#practice lesson
#sharon solis
#Feb2019
#my version of it
library("ggplot2")
#initiate newvariable calledgapminder
gapminder<-read.csv("data/gapminder_data.csv", header = TRUE)
gapminder
#data subsetting
#looking at row 1, column 1
gapminder[1,1]
#look at row 1
gapminder[1,]
#look at row column 1
gapminder[,1]
#look top previous lies
head(gapminder)
#preview bottom lines
tail(gapminder)
#looking at middle
gapminder[900:905,]
#call ggplot function to create a new plot, GLOBAL option
#aes aesthetic properties 
#geo geometry, visual representation of data
ggplot(data = gapminder, aes(x = gdpPercap, y = (lifeExp) + geom_point()
#modify the line below, how life expectancy has changed over time
ggplot(data = gapminder, aes(x = gdpPercap y = year) + geom_point()
       ggplot(data = gapminder, aes(x = year, y = (lifeExp) + geom_poin
ggplot(data = gapminder, aes(x = gdpPercap y = year) + geom_point()
                                    ggplot(data = gapminder, aes(x = year, y = (lifeExp) + geom_point()
#new trial
ggplot(data = gapminder, aes(x = year y = (lifeExp)) + geom_point()
ggplot(data = gapminder, aes(x = gdpPercap, y = (lifeExp) + geom_point()       
ggplot(data = gapminder, aes(x = year, y = (lifeExp) + geom_point()
#somehow this works:
ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()
ggplot(data = gapminder, colors(x = year, y = lifeExp)) + geom_point()
#different visualization modes
ggplot(data = gapminder, aes(x = year, y = lifeExp, colors=continent)) + geom_point()                             
ggplot(data = gapminder, aes(x = year, y = lifeExp, color=continent)) + geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = continent)) + geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country, color = continent)) + geom_line()

#colum of countries as character, I first fixed at the console area, instead of factors 
countries_characters<-as.
countries_as_characters<-as.character(gapminder$country)

#geoline and geo country
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country, color = continent)) + geom_line() + geom_point()

#year as factor
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = year)) + geom_point()

#another version
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country, color = coountry) + geom_line()
ggplot(data = gapminder, aes(x = country, y = lifeExp, by=year, color = continent)) + geom_line()
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country, color = continent)) + geom_line() + geom_point()

#change backgroun
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country, color = continent)) + geom_line() + geom_point() + theme_minimal()
git status
       
       