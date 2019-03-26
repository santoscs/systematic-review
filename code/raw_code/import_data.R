
### Import data 001

library(litsearchr)
referencias <- litsearchr::import_results(directory="data/raw_data/", 
                                      filename=NULL,
                                      remove_duplicates = FALSE, 
                                      clean_dataset = FALSE)
### Exclui as duplicadas
referencias <- litsearchr::deduplicate(referencias, use_abstracts = FALSE, use_titles = TRUE, method = "quick")

write.csv2(referencias, file = 'data/tidy_data/referencias.csv')
