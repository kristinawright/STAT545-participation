library(tidyverse)
library(gapminder)

gapminder 
write_csv(gapminder, './gapminder.csv')    #export as csv
view(gapminder)

#calculate mean life expectancy per continent
gapminder_sum <- gapminder %>%
  group_by(continent) %>%
  summarize(ave_lifeExp = mean(lifeExp))

view(gapminder_sum)
write_csv(gapminder_sum, './gapminder_sum.csv')
#write_csv(gapminder_sum, here::here("gapminder_sum.csv")

gapminder_sum %>%
  ggplot(aes(x = continent, y = ave_lifeExp)) +
  geom_point() +
  theme_bw()
