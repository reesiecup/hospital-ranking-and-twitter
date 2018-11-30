library(tm)
library(wordcloud)
library(RColorBrewer)
setwd('/Users/reesetou/hospital-ranking-and-twitter')

# Create word cloud for institutional accounts
inst_tweets <- './inst_raw_text.txt'
inst_tweet_text <- readLines(inst_tweets)
inst_words <- Corpus(VectorSource(inst_tweet_text))

wordcloud(inst_words, scale=c(5,0.5), max.words=100, random.order=FALSE, rot.per=0.35, 
          use.r.layout=FALSE, colors=brewer.pal(8, 'Dark2'))

# Create word cloud for individual accounts
indi_tweets <- './indi_raw_text.txt'
indi_tweet_text <- readLines(indi_tweets)
indi_words <- Corpus(VectorSource(indi_tweet_text))

wordcloud(indi_words, scale=c(5,0.5), max.words=100, random.order=FALSE, rot.per=0.35, 
          use.r.layout=FALSE, colors=brewer.pal(8, 'Dark2'))