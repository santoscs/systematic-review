
### tidy data 002

# os artigos foram selecionados manual a partir dos criterios de inclusao 
library(tidyverse)
library(janitor)
artigos <- read.csv2("~/Dropbox/RStudio/systematic-review/data/tidy_data/quadro_artigo.csv", sep=";")

artigos <- janitor::clean_names(artigos)



saveRDS(artigos, file = 'data/tidy_data/artigos.rds')

