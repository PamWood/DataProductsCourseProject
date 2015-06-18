library(devtools)
library(slidify)
install_version("stringr", version="0.6.2")
library(knitr)
setwd("C:/Users/pame5815/Documents/Training/DataScienceClass/DataProducts/CourseProject/Slidify")
author("first_deck")
slidify('index.Rmd')
browseURL('index.html')

