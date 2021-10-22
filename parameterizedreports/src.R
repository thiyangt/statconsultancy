
# Code to generate papers
library(here)
library(tidyverse)
library(rmarkdown)



saveid <- 1:2
name <- c("xx", "yy")
date <- c("2021-10-15", "2021-10-16")

for (i in 1:2){
  render(here("parameterizedreports", "letter.Rmd"), 
         params=list(date = date[i], 
                     name = name[i]),
         output_file=paste0("index", saveid[i], ".pdf"))
}
