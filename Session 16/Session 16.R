# Text mining of coffee tweets stored in csv file

# Below packages are required for reading in tweets & text mining
# Install only once, load each time you restart your RStudio

install.packages("twitteR", dependencies=TRUE)
install.packages("RCurl")
install.packages('bitops')
install.packages('base64enc')
install.packages('httpuv')
install.packages('tm')
install.packages('wordcloud')
install.packages("stringr")



# Load the libraries using require function in lapply

libs = c("twitteR", "RCurl", "tm", "stringr", "wordcloud")
lapply(libs, require, character.only=TRUE)


# To know about lapply : get R documentation using help ? command

?lapply


# You need dplyr for data manipulation
library(dplyr) # dplyr is required for all R applications



#------------------- Text Mining: Coffee tweets --------------------#

# Reading tweets stroed in coffee.csv file

# Load corpus

coffee_tweets_org =
  read.csv("Session 15/coffee.csv",
           stringsAsFactors = FALSE)

coffee_tweets = coffee_tweets_org


glimpse(coffee_tweets)


dim(coffee_tweets_org)
#[1] 1000   15


names(coffee_tweets)

View(head(coffee_tweets))


# We're interested in the text column for text mining

# Get the tweets in the text column and store in coffee_tweets df

coffee_tweets = coffee_tweets$text

str(coffee_tweets)
#chr [1:1000] "@ayyytylerb that is so true drink lots of coffee" ...


# View first 5 tweets
head(coffee_tweets, 5)


View(head(coffee_tweets, 8))

# Ensure the at the text mining package "tm" is loaded

"
Step 1:

Create a Source object from the coffee_tweets vector.
Call this new object coffee_source.

"

# Make a vector source: coffee_source
coffee_source = VectorSource(coffee_tweets)

class(coffee_source)
#[1] "VectorSource" "SimpleSource" "Source"    

# Make a volatile corpus: coffee_corpus
coffee_corpus = VCorpus(coffee_source)

# Print out coffee_corpus
coffee_corpus
'
<<VCorpus>>
Metadata:  corpus specific: 0, document level (indexed): 0
Content:  documents: 1000
'

# Note : Each document in our corpus is a tweet

# Print the 15th document in coffee_corpus
coffee_corpus[[15]]
'
<<PlainTextDocument>>
Metadata:  7
Content:  chars: 111
'

# Print the contents of the 15th document in coffee_corpus

content(coffee_corpus[[15]])
'
[1] "@HeatherWhaley I was about 2 joke it takes 2 hands to hold
hot coffee...then I read headline! #Don tDrinkNShoot"
'

#OR

coffee_corpus[[15]][1]
#$content
#[1] "@HeatherWhaley I was about 2 joke it takes 2 hands to hold hot coffee...then I read headline! #Don'tDrinkNShoot"


# Now use content to review plain text
content(coffee_corpus[[10]])
#[1] "RT @Dorkv76: I can't care before coffee."

"
Boom shaka-laka! I see lots of VCorpora in your future.
"

#---- done until here ----------#

"
Applying preprocessing pipeline steps to coffee_corpus using tm_map functions in below order:

removePunctuation()
content_transformer(tolower)
#removeNumbers()
removeWords
stripWhitespace()
"

# Before preprocessing : see the 15th tweet
coffee_corpus[[15]][1]

#$content
#[1] "@HeatherWhaley I was about 2 joke it takes 2 hands to hold hot coffee...then I read headline! #Don'tDrinkNShoot"



# Remove punctuation
coffee_clean_corpus <- tm_map(coffee_corpus, removePunctuation)
# Transform to lower case
coffee_clean_corpus <- tm_map(coffee_clean_corpus, content_transformer(tolower))
# Add more stopwords
coffee_clean_corpus <- tm_map(coffee_clean_corpus, removeWords, c(stopwords("en"), "coffee", "mug"))
# Strip whitespace
coffee_clean_corpus <- tm_map(coffee_clean_corpus, stripWhitespace)

coffee_clean_corpus[[15]][1]

#$content
#[1] "heatherwhaley 2 joke takes 2 hands hold hot coffeethen read headline dontdrinknshoot"


# Remove numbers from the cleaned corupus
coffee_clean_corpus <- tm_map(coffee_clean_corpus, removeNumbers)


coffee_clean_corpus[[15]][1]
#$content
#[1] "heatherwhaley  joke takes  hands hold hot coffeethen read headline dontdrinknshoot"





#---- Function for preprocessing pipeline -----------#
"
Since these pre-processing steps are almost always required for text mining,
let's write a function clean_corpus() to do it all at once

"

# Input is the original corpus
# We apply the preprocessing pipeline to clean the corpus
# and return the cleaned corpus


clean_corpus <- function(corpus) {
  # Remove punctuation
  clean_corpus <- tm_map(corpus, removePunctuation)
  # Transform to lower case
  clean_corpus <- tm_map(clean_corpus, content_transformer(tolower))
  # Add more stopwords
  clean_corpus <- tm_map(clean_corpus, removeWords, c(stopwords("en"), "coffee", "mug"))
  # Strip whitespace
  clean_corpus <- tm_map(clean_corpus, stripWhitespace)
  return(clean_corpus)
}


coffee_corpus[[227]][1]
#$content
#[1] "Also, dogs aren't smart enough to dip the donut in the coffee and then eat the part that's been dipped. #ladyandthetramp"


# call the function to do the pipeline prepreocessing
coffee_clean_corpus2 = clean_corpus(coffee_corpus)

coffee_clean_corpus2[[227]][1]
#$content
#[1] "also dogs arent smart enough dip donut eat part thats dipped ladyandthetramp"



"
You may modify the function to add removenumbers  and test the the 15th tweet

"
coffee_corpus[[15]][1]

#$content
#[1] "@HeatherWhaley I was about 2 joke it takes 2 hands to hold hot coffee...then I read headline! #Don'tDrinkNShoot"


coffee_clean_corpus2[[15]][1]
#$content
#[1] "heatherwhaley 2 joke takes 2 hands hold hot coffeethen read headline dontdrinknshoot"



# Modify the function to add remove numbers in preprocessing pipeline

clean_corpus2 <- function(corpus) {
  # Remove punctuation
  clean_corpus <- tm_map(corpus, removePunctuation)
  # Transform to lower case
  clean_corpus <- tm_map(clean_corpus, content_transformer(tolower))
  # Add more stopwords
  clean_corpus <- tm_map(clean_corpus, removeWords, c(stopwords("en"), "coffee", "mug"))
  # Strip whitespace
  clean_corpus <- tm_map(clean_corpus, stripWhitespace)
  # Remove numbers
  clean_corpus <- tm_map(clean_corpus,removeNumbers)
  return(clean_corpus)
}


# Call the modified function with remove numbers for preprocessing pipeline
coffee_clean_corpus3 = clean_corpus2(coffee_corpus)


# After modifying the function now

coffee_clean_corpus3[[15]][1]
#$content
#[1] "heatherwhaley  joke takes  hands hold hot coffeethen read headline dontdrinknshoot"



#------------- TDM and DTM : Frequency of the terms --------------------------------------------#
" After cleaning the corpus we have to create a frequency table of the words TDM
- is the term document matrix, terms are in rows and docuemnt number is the column and each cell is the freq of the term
Tweet1 Tweet2 Tweet3 ... TweetN
Term 1 0 0 0 0 Term 2 1 1 0 0 Term 3 1 0 0 0 ... Term M 0 0 3 1 DTM - document term matrix is the transpose fo TDM Term 1 Term 2 Term 3 ... Term M Tweet 1 0 1 1 0 Tweet 2 0 1 0 0 Tweet 3 0 0 0 3 ... Tweet N 0 0 0 1 "

coffee_clean_corpus3


coffee_tdm=TermDocumentMatrix(coffee_clean_corpus3)

coffee_tdm

str(coffee_tdm)

coffee_tdm_m=as.matrix(coffee_tdm)

str(coffee_tdm_m)

dim(coffee_tdm_m)

coffee_tdm_m[2593:2595,475:478]


coffee_dtm=DocumentTermMatrix(coffee_clean_corpus3)
coffee_dtm_m = as.matrix(coffee_dtm)
coffee_dtm_m[475:478, 2593:2594]


coffee_tdm_m[1:4,4:1]

tdm_term_frequency = rowSums(coffee_tdm_m)

str(tdm_term_frequency)

"""
coffee_tdm_m[1:4,4:1]
              Docs
Terms          4 3 2 1
  abasc        0 0 0 0
  abbslovesfed 0 0 0 0
  abbycastro   0 0 0 0
  abc          0 0 0 0
> tdm_term_frequency = rowSums(coffee_tdm_m)

"""
tdm_term_frequency[1:4]

head(tdm_term_frequency)

tdm_term_frequency = sort(tdm_term_frequency, decreasing = TRUE)

head(tdm_term_frequency)

sort(tdm_term_frequency)[1:10]


barplot(tdm_term_frequency[1:10])

barplot(tdm_term_frequency[1:10], col ="tan")

barplot(tdm_term_frequency[1:10], col ="tan", las=2)


dtm_term_frequency = rowSums(coffee_dtm_m)
dtm_term_frequency = sort(dtm_term_frequency, decreasing = TRUE)
dtm_term_frequency[1:10]
barplot(dtm_term_frequency[1:10], col ="tan", las=2)




head(names(tdm_term_frequency))

tdm_terms_vec = names(tdm_term_frequency)

tdm_word_freq_df = data.frame(term = tdm_terms_vec,freq =tdm_term_frequency)
head(tdm_word_freq_df)


wordcloud(tdm_word_freq_df$term,
          tdm_word_freq_df$freq,
          max.word = 50,
          min.freq = 40,
          colors ='red')


dtm_terms_vec = names(dtm_term_frequency)

dtm_word_freq_df = data.frame(term = dtm_terms_vec,freq =dtm_term_frequency)
head(dtm_word_freq_df)

wordcloud(dtm_word_freq_df$term,
          dtm_word_freq_df$freq,
          max.word = 50,
          min.freq = 40,
          colors ='red')