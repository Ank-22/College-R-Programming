install.packages("twitteR", dependencies = TRUE)
install.packages("RCurl")
install.packages("bitops")
install.packages("base64enc")
install.packages("httpuv")
install.packages("tm")
install.packages("wordcloud")
install.packages("stringr")


libs = c("twitteR", "RCurl", "tm", "stringr", "bitops", "base64enc", "httpuv", "wordcloud")

lapply(libs, require, character.only = TRUE)

install.packages("qdap")
library("qdap")
library("dplyr")
text <-"Text mining usually involves the practice of structuring
        the input text. The overarching goal is, essentially,
        to turn text into data for analysis, via application of natural
        language processing (NLP) and analytical methods."

str(text)

frequent_terms = freq_terms(text, 4)

frequent_terms



"
Steps for cleaning and preprocessing for text mining: 

1 remove Punctuation
2 lower case
3 remove numbers 
4 strip WhiteSpace
5 remove stop words
6 stemming words


Use belw common preprocessing TM functions

tolower()
- makes all text lowercase
- Before: Starbucks is from Seattle
- After: starbucks is from seattle

removePunctuation()
- removes punctuations like periods and exclamation
points
- Before: Watch out! That coffee is going to spill!
- After: Watch out That coffee is going to spill

removeNumbers()
- removes numbers
- Before: I drank 4 cups of coffee 2 days
- After: I drank cups of coffee days ago

stripWhiteSpace()
- removes tabs and extra spaces or lines
- Before: I like    coffee
- After: I like coffee

removeWords()
- Removes specific words (e.g. the, of) defined by
the data scientist
- Before: The coffee house and barista he visited
were nice, she said hello
- After: The coffee house barista visited nice, said
hello


Apply each of the following functions to text:

removePunctuation()
tolower()
removeNumbers()
stripWhitespace()
"

# Create the object: text
text <- "<b>She</b> woke up at       6 A.M. It\'s so early!  She was only 10% awake and began drinking coffee in front of her computer."







"------------------ Text Mining : Coffee Tweets-----------------"
coffee_tweets_org =
  read.csv("Session 15/coffee.csv",
           stringsAsFactors = FALSE)

dct = coffee_tweets_org

glimpse(dct)

dim(coffee_tweets_org)

names(dct)
View (head(dct))
tct = dct$text
str(tct)


head(tct)

View(tct)

"
Step 1:

Create a Scource Object from the coffee_tweets vector.
call this snew object coffee_source
"

sct = VectorSource(tct)
class(sct)

cct = VCorpus(sct)
cct

cct[[15]]

'''
class(sct)
[1] "VectorSource" "SimpleSource" "Source"
> cct = VCorpus(sct)
> cct
<<VCorpus>>
Metadata:  corpus specific: 0, document level (indexed): 0
Content:  documents: 1000
> cct[15]
<<VCorpus>>
Metadata:  corpus specific: 0, document level (indexed): 0
Content:  documents: 1
> cct[[15]]
<<PlainTextDocument>>
Metadata:  7
Content:  chars: 111
'''
content(cct[[15]])

cct[[15]][1]

content(cct[[10]])

'''
> cct[[15]]
<<PlainTextDocument>>
Metadata:  7
Content:  chars: 111
> contect(cct[[15]])
Error in contect(cct[[15]]) : could not find function "contect"
> content(cct[[15]])
[1] "@HeatherWhaley I was about 2 joke it takes 2 hands to hold hot coffee...then I read headline! #Don'tDrinkNShoot"
> cct[[15][1]]
Error: unexpected '[' in "cct[[15]["
> cct[[15]][1]
$content

[1] "
"
@HeatherWhaley I was about 2 joke it takes 2 hands to hold hot coffee...then I read headline! #Don'tDrinkNShoot"
"
>
 content(cct[[10]])
[1] "RT @Dorkv76: I can't care before coffee."
>
"
"'


# --------- Done Until Here --------------#
 "
Applying preprocessing pipeline steps to coffee_corpus using tm_map functions in below order:

removePunctuation()
content_transformer(tolower)
#removeNumbers()
removeWords
stripWhitespace()
"
cct[[15]][1]


ccc <-tm_map(cct, removePunctuation)
ccc <-tm_map(ccc, content_transformer(tolower))
ccc <-tm_map(ccc, removeWords, c(stopwords("en"),"coffe","mug"))
ccc <-tm_map(ccc, stripWhitespace)

ccc[[15]][1]