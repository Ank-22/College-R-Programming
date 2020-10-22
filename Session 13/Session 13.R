# TM-stringr.R

install.packages("babynames")

library(babynames)
library(dplyr)
glimpse(babynames)

names(babynames)

head(babynames)

View(babynames)

dim(babynames)

str(babynames$year)

length(unique(babynames$year))


b1=babynames%>%
  filter(year==2014)
View(b1)
dim(b1)
names(b1)

boys=b1%>%
    filter(sex=="M")
gorls=b1%>%
    filter(sex=="F")

boy_names=boys$name
View(boy_names)

girls_names=gorls$name
glimpse(girls_names)

install.packages("stringr")
library(stringr)


boynames_length=str_length(boy_names)
boynames_length

girlnames_length<-str_length(girls_names)
girlnames_length

str(girlnames_length)


mean(girlnames_length)-mean(boynames_length)

?str_sub


str_sub(c("Bruce","Wayne"),1,4)

str_sub(c("Bruce","Wayne"),-4,-1)

# Extract first letter from boy_names 
boy_first_letter <- str_sub(boy_names,1,1)

table(boy_first_letter)

# Extract Last letter from boy_names
boy_last_letter <- str_sub(boy_names,-1,-1)

table(boy_last_letter)

# Girls Name

# Extract first letter from girls_name
girls_first_letter <- str_sub(girls_names,1,1)

table(girls_first_letter)

# Extract Last letter from girls_names
girls_last_letter <- str_sub(girls_names,-1,-1)

table(girls_last_letter)

'''
 # OUTPUT #
 > str_sub(c("Bruce","Wayne"),1,4)
[1] "Bruc" "Wayn"
> str_sub(c("Bruce","Wayne"),1,4)
[1] "Bruc" "Wayn"
> str_sub(c("Bruce","Wayne",-4,-1))
[1] "Bruce" "Wayne" "-4"    "-1"
> str_sub(c("Bruce","Wayne"),-4,-1)
[1] "ruce" "ayne"
> boy_first_letter <- str_sub(boy_names,1,1)
> table(boy_first_letter)
boy_first_letter
   A    B    C    D    E    F    G    H    I    J    K    L    M    N    O    P       
1454  651  770  998  549  185  334  403  235 1390 1291  537  914  424  207  230       
   Q    R    S    T    U    V    W    X    Y    Z
  56  778  806  771   43  160  174   56  252  379
> boy_last_letter <- str_sub(boy_names,-1,-1)
>
> table(boy_last_letter)
boy_last_letter
   a    b    c    d    e    f    g    h    i    j    k    l    m    n    o    p       
 421  104   92  436 1148   66   82  583  705   57  349  945  389 4672  730   32       
   q    r    s    t    u    v    w    x    y    z
  19 1011  826  292   81   71   34   86  697  119
> girls_names=gorls$name
> glimpse(girls_names)
 chr [1:19181] "Emma" "Olivia" "Sophia" "Isabella" "Ava" "Mia" "Emily" ...
> girls_first_letter <- str_sub(girls_names,1,1)
>
> table(girls_first_letter)
girls_first_letter
   A    B    C    D    E    F    G    H    I    J    K    L    M    N    O    P       
3101  699  946  810  933  209  345  469  373 1430 1694 1122 1746  752  143  303       
   Q    R    S    T    U    V    W    X    Y    Z
  38  831 1369  683   28  214   85   62  294  502
> girls_last_letter <- str_sub(girls_names,-1,-1)
>
> table(girls_last_letter)
girls_last_letter
   a    b    c    d    e    f    g    h    i    j    k    l    m    n    o    p       
6632   20   13   81 3114    8   21 1942 1581   12   31  450  115 2608  105    3       
   q    r    s    t    u    v    w    x    y    z
   2  291  326  208   59    6   17   50 1435   51
'''
"
str_detect() -- retrun True or Flase
str_subset() - returms string that contian the pattern
str_count()- number of times the pattern occured in the string
"

pizzas =c("cheese","pepperoni","sausage and green peppers")

str_detect(string= pizzas, pattern="pepper")
str_subset(string= pizzas, pattern="pepper")
str_count(string= pizzas, pattern="pepper")

'''
### OUTPUT ###
str_detect(string= pizzas, pattern="pepper")
[1] FALSE  TRUE  TRUE
> str_subset(string= pizzas, pattern="pepper")
[1] "pepperoni"                 "sausage and green peppers"
> str_count(string= pizzas, pattern="pepper")
[1] 0 1 1
>
'''

# Look for pettern "zz" in boy_name and sore the result in contains_zz

contains_zz <-str_detect(boy_names,"zz")
str(contains_zz)
# How many boy name contain zz
sum(str_count(boy_names,"zz"))
# Which are the boy names contaning zz
boy_names[contains_zz]

# Find Girls Names Containing zz
str_subset(girls_names,"zz")

# Find girl_names that contain "u"

starts_U <- str_subset(girls_names,"U")
starts_U

# girl name starts with U and contains Z
str_subset(starts_U,"z")

'''
#### OUTPUT ####
> pizzas =c("cheese","pepperoni","sausage and green peppers")
>
> str_detect(string= pizzas, pattern="pepper")
[1] FALSE  TRUE  TRUE
> pizzas =c("cheese","pepperoni","sausage and green peppers")
>
> str_detect(string= pizzas, pattern="pepper")
[1] FALSE  TRUE  TRUE
> pizzas =c("cheese","pepperoni","sausage and green peppers")
>
> str_detect(string= pizzas, pattern="pepper")
[1] FALSE  TRUE  TRUE
> str_subset(string= pizzas, pattern="pepper")
[1] "pepperoni"                 "sausage and green peppers"
> str_count(string= pizzas, pattern="pepper")
[1] 0 1 1
> contains_zz <-str_detect(boy_names,"zz")
> str(contains_zz)
 logi [1:14047] FALSE FALSE FALSE FALSE FALSE FALSE ...
> sum(str_count(boy_names,"zz"))
[1] 16
> boy_names[contains_zz]
 [1] "Uzziah"    "Ozzie"     "Ozzy"      "Jazz"      "Uzziel"    "Chazz"
 [7] "Izzy"      "Azzam"     "Izzac"     "Izzak"     "Fabrizzio" "Jazziel"
[13] "Azzan"     "Izzaiah"   "Muizz"     "Yazziel"
> # Find Girls Names Containing zz
> str_subset(girls_names,"zz")
 [1] "Izzabella"  "Jazzlyn"    "Jazzlynn"   "Lizzie"     "Izzy"
 [6] "Lizzy"      "Mazzy"      "Izzabelle"  "Jazzmine"   "Jazzmyn"
[11] "Jazzelle"   "Jazzmin"    "Izzah"      "Jazzalyn"   "Jazzmyne"
[16] "Izzabell"   "Jazz"       "Mazzie"     "Alyzza"     "Izza"
[21] "Izzie"      "Jazzlene"   "Lizzeth"    "Jazzalynn"  "Jazzy"
[26] "Alizzon"    "Elizzabeth" "Jazzilyn"   "Jazzlynne"  "Jizzelle"
[31] "Izzabel"    "Izzabellah" "Izzibella"  "Jazzabella" "Jazzabelle"
[36] "Jazzel"     "Jazzie"     "Jazzlin"    "Jazzlyne"   "Aizza"
[41] "Brizza"     "Ezzah"      "Fizza"      "Izzybella"  "Rozzlyn"
> # Find girl_names that contain "u"
>
> starts_U <- str_subset(girls_names,"U")
> starts_U
 [1] "Unique"  "Uma"     "Unknown" "Una"     "Uriah"   "Ursula"  "Unity"
 [8] "Umaiza"  "Urvi"    "Ulyana"  "Ula"     "Udy"     "Urwa"    "Ulani"
[15] "Umaima"  "Umme"    "Ugochi"  "Ulyssa"  "Umika"   "Uriyah"  "Ubah"
[22] "Umaira"  "Umi"     "Ume"     "Urenna"  "Uriel"   "Urijah"  "Uyen"
> # girl name starts with U and contains Z
> str_subset(starts_U,"z")
[1] "Umaiza"
'''

# Ho many 'e's occur in each order

str_count(pizzas,"e")

str_count(pizzas,fixed("e"))

# Count Occurrences of "a" in girl_names

no_a<-str_count(girls_names,"a")
head(no_a)


no_A<-str_count(girls_names,"A")
head(no_A)
