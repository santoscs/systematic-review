

# Instalando e ativando os pacotes
# install.packages("tm")
# install.packages("SnowballC")
# install.packages("wordcloud")

library(tm)
library(SnowballC)
library(wordcloud)

### arquivo insumo para a wordcloud


aux <- artigos$variaveis 

# aux <- str_split(aux, ",", simplify = TRUE)
# aux <- aux[str_count(aux)>0]
# aux <- tolower(aux)
# aux <- stripWhitespace(aux)
# aux <- str_replace_all(aux, "^ +", "")
# aux <- str_replace_all(aux, " $", "")
# aux <- str_replace_all(aux, "\\.", "")



aux <- str_replace_all(aux, ",", "")
tweetsDS.Corpus <- Corpus(VectorSource(aux))



##Data Cleaning and Wrangling

tweetsDS.Clean<-tm_map(tweetsDS.Corpus, PlainTextDocument)
tweetsDS.Clean<-tm_map(tweetsDS.Clean,tolower)
tweetsDS.Clean<-tm_map(tweetsDS.Clean,removeNumbers)
tweetsDS.Clean<-tm_map(tweetsDS.Clean,removeWords,stopwords("pt"))
# tweetsDS.Clean<-tm_map(tweetsDS.Clean,removePunctuation)
tweetsDS.Clean<-tm_map(tweetsDS.Clean,stripWhitespace)
# tweetsDS.Clean<-tm_map(tweetsDS.Clean,stemDocument)


wc <- wordcloud(tweetsDS.Clean, max.words = 100,random.color = TRUE,random.order=FALSE)
saveRDS(wc, file = "data/tidy_data/wordcloud.rds")
