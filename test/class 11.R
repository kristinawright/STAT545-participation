library(tidyverse)
gapminder_csv <-read_csv('./gapminder_sum.csv')
#on windows: .\gapminder_sum.csv

view(gapminder_sum)



ls()
list=ls()
remove(list=ls()) #remove all variables in working directory
ls()

#restart r to remove packages too


library(here)
ls()


#platform agnostic to: read_csv('./test/tes/te/t/gapminder_sum.csv)
read_csv(here::here("test","tes","te", "t", "gapminder_sum.csv"))





#data import

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

#read_csv can directly import URLS but read_excel requires you to first download it

#THIS IS THE OLD WAY
download.file(url = data_url,
              destfile = paste('./datasets/', file_name))
#Task: change above to use the "here::here" package
download.file(url = data_url,
              destfile = here::here
              ("test", "greatestGivers.xls"))


#recommendation: Use "basename"
file_name <- basename(data_url)
("test", basename(data_url)) #?


library(readxl) #load in excel files
#assign the imported data to a tibble
philanthropists <-read_excel(here::here("test",file_name), trim_ws = TRUE)
view(philanthropists)



library("readxl")
mri_file = here("test","Firas-MRI.xlsx")

mri <-read_excel(mri_file, range = "A1:L12")
view(mri)

mri <- mri[, -10]

mri <- mri %>%
  pivot_longer(cols = 'Slice 1':'Slice 8',
               names_to = 'slice_number',
               values_to  = 'value')
view(mri)






