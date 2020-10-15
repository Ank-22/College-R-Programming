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

"
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
"
