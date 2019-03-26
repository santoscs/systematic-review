
#install.packages("revtools")
library(revtools)

df.bib <-  read_bibliography(filename = "data/raw_data/scopus_propensity_to_patent.ris")

screen_topics(df.bib)
