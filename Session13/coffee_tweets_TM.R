
#Text-Mining

"Text-mining provides a collection of techniques that allow us
to deliver actionable insights from these data.
Here we will use the Bag of worth(BoW) model for Text Mining"

#Below packages are required for reading in tweets and text mining

install.packages("twitteR", dependencies = TRUE)
install.packages("RCurl")
install.packages("bitops")
install.packages("base64enc")
install.packages("httpuv")
install.packages("tm")
install.packages("wordcloud")
install.packages("stringr")

#Load the libraries using lapply
#require islike loading the libraries

libs = c("twitteR", "RCurl", "tm", "stringr", "bitops", "base64enc", "httpuv", "wordcloud")

lapply(libs, require, character.only = TRUE)

install.packages("qdap")
library("qdap")
library("dplyr")

text <- "Text mining usually involves the practice of structuring
        the input text. The overarching goal is, essentially,
        to turn text into data for analysis, via application of natural
        language processing (NLP) and analytical methods."

str(text)

#Terms appearing atleast 4 times

frequent_terms = freq_terms(text, 4)

frequent_terms

"The frequent_terms object stores all unique words and their count.
You can then make a bar chart simply by calling the plot
function on the frequent_terms object"

plot(frequent_terms)


#Reading tweets stored in coffee.csv file

coffee_tweets_org =
  read.csv("C:/Users/HP/Downloads/coffee.csv",
           stringsAsFactors = FALSE)

#To modify data frame copy it so that original isn't lost

coffee_tweets = coffee_tweets_org

coffee_tweets

str(coffee_tweets)

glimpse(coffee_tweets)

View(head(coffee_tweets))

View(coffee_tweets)

#We are interested in the etxt column for text mining

coffee_tweets = coffee_tweets$text

str(coffee_tweets)

#View first five tweets

head(coffee_tweets, 5)

View(head(coffee_tweets, 5))

View(head(coffee_tweets, 8))

#Ensure that the 'tm' package is installed and loaded

"Step 1: Create a source object from coffee_tweets vector
Call this new object coffee_source"

#Make a vector source: coffee_source

coffee_source = VectorSource(coffee_tweets)

class(coffee_source)

#Make a volatile corpus: coffee_corpus

coffee_corpus = VCorpus(coffee_source)

class(coffee_corpus)

#Print out coffee_corpus

coffee_corpus

#Print the 15th tweet in coffee_corpus

coffee_corpus[[15]]

#Print the content of the 15th tweet in coffee_corpus

content(coffee_corpus[[15]])

#Now use the content to review plain text

content(coffee_corpus[[10]])


#--------Understanding corpus with example-----------------#

"Text data can be stored in dataframe or vector
-when corpus is created using data frame we get more data
as shown below"

example_text = data.frame(doc_id = c(1,2,3),
                          text = c("Text mining is a great time.",
                                   "Text analysis provides insights.",
                                   "qdap and tm are used in text mining"),
                          author = c("Author1", "Author2", "Author3"),
                          date = c("1514953399", "1514866998", "1514780598"))

example_text

vector_text = c("Text mining is a great time.",
                "Text analysis provides insights.",
                "qdap and tm are used in text mining")

#Compare a DataframeSource: df_source

df_source = DataframeSource(example_text)

df_source

#Create a VectorSource: vec_source

vec_source = VectorSource(example_text)

vec_source



















































