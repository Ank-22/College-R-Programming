install.packages("dplyr")
install.packages("hflights")

library(dplyr)
library(hflights)

?hflights

dim(hflights)

str(hflights)

View(head(hflighs))

glimpse(hflights)

View(head(hflights))

names(hflights)

str(hflights$UniqueCharacter)

class(carrier.code_names)

str(carrier.code_names)

carrier.code_names["AA"]

hflights$Carrier = carrier.code_names[hflights$UniqueCarrier]

dim(hflights)

View(head(hflights))

str(hflights$CancellationCode)

unique(hflights$CancellationCode)

names(hflights)

dim(hflights)

##################################################
names(hflights)

select(hflights,ActualElapsedTime,
      AirTime,
      ArrDelay,
      DepDelay)


hflights$ActualElapsedTime



View(select(hflights,ActualElapsedTime,
            AirTime,
            ArrDelay,
            DepDelay)
)

hflights %>% 
  select(hflights,ActualElapsedTime,
                     AirTime,
                     ArrDelay,
                     DepDelay) %>% 
  View()

select(hflights,ends_with("Time"),ends_with("Delay"))


hflights%>%
  select(ends_with("Time"),ends_with("Delay"))%>%
  head(10)%>%
  View()

#################MUTATE


g1=mutate(hflights,ActualGroundTime=ActualElapsedTime-AirTime)

g1=hflights%>%
  mutate(ActualGroundTime=ActualElapsedTime-AirTime)

dim(g1)

names(g1)

g2=g1%>%
  mutate(GroundTime=TaxiIn+TaxiOut)

dim(g2)

g3=g2%>%
  mutate(AverageSpeed=Distance/AirTime*60)

dim(g3)




m1=hflights%>%
  mutate(loss=ArrDelay-DepDelay,loss_ratio=loss/DepDelay)

dim(m1)
names(m1)


m2=hflights%>%
  mutate(TotalTaxi=TaxiIn+TaxiOut,
         ActualGroundTime=ActualElapsedTime-AirTime,
         Diff=TotalTaxi-ActualGroundTime)
names(m2)





filter(hflights,Distance>=3000)

new=hflights%>%
  filter(Distance>=3000)
show(new)

temp=hflights%>%
  filter(Carrier == c("JetBlue","Southwest","Delta"))

######################################CONSOLE
* DONE (cli)
* installing *source* package ‘purrr’ ...
** package ‘purrr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c backports.c -o backports.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c coerce.c -o coerce.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c conditions.c -o conditions.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c flatten.c -o flatten.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c init.c -o init.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c map.c -o map.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c pluck.c -o pluck.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c transpose.c -o transpose.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c utils.c -o utils.o
gcc -std=gnu99 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o purrr.so backports.o coerce.o conditions.o flatten.o init.o map.o pluck.o transpose.o utils.o -L/usr/lib/R/lib -lR
installing to /home/mahijmomin/R/x86_64-pc-linux-gnu-library/3.6/00LOCK-purrr/00new/purrr/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (purrr)
* installing *source* package ‘ellipsis’ ...
** package ‘ellipsis’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c dots.c -o dots.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c init.c -o init.o
gcc -std=gnu99 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o ellipsis.so dots.o init.o -L/usr/lib/R/lib -lR
installing to /home/mahijmomin/R/x86_64-pc-linux-gnu-library/3.6/00LOCK-ellipsis/00new/ellipsis/libs
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ellipsis)
* installing *source* package ‘lifecycle’ ...
** package ‘lifecycle’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (lifecycle)
* installing *source* package ‘vctrs’ ...
** package ‘vctrs’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c altrep-rle.c -o altrep-rle.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c arg-counter.c -o arg-counter.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c arg.c -o arg.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c bind.c -o bind.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c c-unchop.c -o c-unchop.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c c.c -o c.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c callables.c -o callables.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c cast-bare.c -o cast-bare.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c cast-dispatch.c -o cast-dispatch.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c cast.c -o cast.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c compare.c -o compare.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c conditions.c -o conditions.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c dictionary.c -o dictionary.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c dim.c -o dim.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c equal.c -o equal.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c fields.c -o fields.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c group.c -o group.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c growable.c -o growable.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c hash.c -o hash.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c init.c -o init.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c names.c -o names.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c proxy-restore.c -o proxy-restore.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c proxy.c -o proxy.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c ptype2-dispatch.c -o ptype2-dispatch.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c rep.c -o rep.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c shape.c -o shape.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c size-common.c -o size-common.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c size.c -o size.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c slice-array.c -o slice-array.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c slice-assign-array.c -o slice-assign-array.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c slice-assign.c -o slice-assign.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c slice-chop.c -o slice-chop.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c slice.c -o slice.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c split.c -o split.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c subscript-loc.c -o subscript-loc.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c subscript.c -o subscript.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c translate.c -o translate.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c type-data-frame.c -o type-data-frame.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c type-date-time.c -o type-date-time.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c type-factor.c -o type-factor.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c type-info.c -o type-info.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c type-tibble.c -o type-tibble.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c type.c -o type.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c type2.c -o type2.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c typeof2-s3.c -o typeof2-s3.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c typeof2.c -o typeof2.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c unspecified.c -o unspecified.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c utils-dispatch.c -o utils-dispatch.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c utils.c -o utils.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG    -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c version.c -o version.o
gcc -std=gnu99 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o vctrs.so altrep-rle.o arg-counter.o arg.o bind.o c-unchop.o c.o callables.o cast-bare.o cast-dispatch.o cast.o compare.o conditions.o dictionary.o dim.o equal.o fields.o group.o growable.o hash.o init.o names.o proxy-restore.o proxy.o ptype2-dispatch.o rep.o shape.o size-common.o size.o slice-array.o slice-assign-array.o slice-assign.o slice-chop.o slice.o split.o subscript-loc.o subscript.o translate.o type-data-frame.o type-date-time.o type-factor.o type-info.o type-tibble.o type.o type2.o typeof2-s3.o typeof2.o unspecified.o utils-dispatch.o utils.o version.o -L/usr/lib/R/lib -lR
installing to /home/mahijmomin/R/x86_64-pc-linux-gnu-library/3.6/00LOCK-vctrs/00new/vctrs/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (vctrs)
* installing *source* package ‘pillar’ ...
** package ‘pillar’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (pillar)
* installing *source* package ‘tidyselect’ ...
** package ‘tidyselect’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (tidyselect)
* installing *source* package ‘tibble’ ...
** package ‘tibble’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c attributes.c -o attributes.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c coerce.c -o coerce.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c init.c -o init.o
gcc -std=gnu99 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c matrixToDataFrame.c -o matrixToDataFrame.o
gcc -std=gnu99 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o tibble.so attributes.o coerce.o init.o matrixToDataFrame.o -L/usr/lib/R/lib -lR
installing to /home/mahijmomin/R/x86_64-pc-linux-gnu-library/3.6/00LOCK-tibble/00new/tibble/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (tibble)
* installing *source* package ‘dplyr’ ...
** package ‘dplyr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c filter.cpp -o filter.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c funs.cpp -o funs.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c group_by.cpp -o group_by.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c group_data.cpp -o group_data.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c imports.cpp -o imports.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c init.cpp -o init.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c mutate.cpp -o mutate.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c slice.cpp -o slice.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG     -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-jbaK_j/r-base-3.6.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c summarise.cpp -o summarise.o
g++ -std=gnu++11 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o dplyr.so filter.o funs.o group_by.o group_data.o imports.o init.o mutate.o slice.o summarise.o -L/usr/lib/R/lib -lR
installing to /home/mahijmomin/R/x86_64-pc-linux-gnu-library/3.6/00LOCK-dplyr/00new/dplyr/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (dplyr)

The downloaded source packages are in
‘/tmp/RtmpuWUAm7/downloaded_packages’
> install.packages("hflights")
Installing package into ‘/home/mahijmomin/R/x86_64-pc-linux-gnu-library/3.6’
(as ‘lib’ is unspecified)
trying URL 'https://cloud.r-project.org/src/contrib/hflights_0.1.tar.gz'
Content type 'application/x-gzip' length 2205510 bytes (2.1 MB)
==================================================
  downloaded 2.1 MB

* installing *source* package ‘hflights’ ...
** package ‘hflights’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (hflights)

The downloaded source packages are in
‘/tmp/RtmpuWUAm7/downloaded_packages’
> select(hflights,ActualElapsedTime,
         +       AirTime,
         +       ArrDelay,
         +       DepDelay)
Error in select(hflights, ActualElapsedTime, AirTime, ArrDelay, DepDelay) : 
  could not find function "select"
> names(hflights)
Error: object 'hflights' not found
> library("hflights")
> library("dplyr")

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

> select(hflights,ActualElapsedTime,
         +       AirTime,
         +       ArrDelay,
         +       DepDelay)
ActualElapsedTime AirTime ArrDelay DepDelay
5424                 60      40      -10        0
5425                 60      45       -9        1
5426                 70      48       -8       -8
5427                 70      39        3        3
5428                 62      44       -3        5
5429                 64      45       -7       -1
5430                 70      43       -1       -1
5431                 59      40      -16       -5
5432                 71      41       44       43
5433                 70      45       43       43
5434                 70      42       29       29
5435                 56      41        5       19
5436                 63      44       -9       -2
5437                 67      47       -6       -3
5438                 60      44      -11       -1
5439                 70      41       -1       -1
5440                 64      48       84       90
5441                 60      42       -2        8
5442                 67      46       -7       -4
5443                 75      42       72       67
5444                 62      47      -11       -3
5445                 61      44      -14       -5
5446                 65      40       -9       -4
5447                 77      43        3       -4
5448                 60      40      -18       -8
5449                 62      40      -15       -7
5450                 62      40      -12       -4
5451                 66      46       -5       -1
5452                 60      46      -15       -5
5453                 57      39      -14       -1
5454                 72      39       43       41
6343                 72      41        5        8
6344                 62      43      -14       -1
6345                 77      46       -1       -3
6346                 67      46      -14       -6
6347                 64      44      -13       -2
6348                 62      44      -14       -1
6349                 76      42       -8       -9
6350                 52      40      -30       -7
6351                 75      51       -6       -6
6352                 63      44      -17       -5
6353                 63      44      -15       -3
6354                 60      42      -21       -6
6355                 79      49        6        2
6356                 73      47       -7       -5
6357                 74      49       -2       -1
6358                 60      45        8       23
6359                 78      54        7        4
6360                 66      46       -8        1
6361                 79      51       -2       -6
6362                 63      44      -13       -1
6363                 59      40      -24       -8
6364                 72      47       -6       -3
6365                 64      42      -21      -10
6366                 93      42       29       11
6367                 59      40      -17       -1
6368                 68      44      -11       -4
6369                 70      44      -10       -5
6370                 65      44       11       21
6371                 65      43      -10        0
6372                 64      44      -15       -4
6373                 58      40      -19       -2
8186                 67      44      -14       -6
8187                 69      48      -13       -7
8188                 67      42       47       55
8189                 68      44      -14       -7
8190                 68      41      -17      -10
8191                 57      44      -25       -7
8192                 70      44       35       40
8193                 64      43       13       24
8194                 58      44      -29      -12
8195                 58      39       -7       10
8196                 56      44       -4       15
8197                 70      45       69       74
8198                 83      42       -1       -9
8199                 61      44       11       25
8200                 69      44      -14       -8
8201                 54      44        3       24
8202                 77      45        1       -1
8203                 58      45       14       31
8204                 56      39      -23       -4
8205                 56      41       19       38
8206                 63      44      -13       -1
8207                 54      39      -17        4
8208                 51      40       10       34
8209                 61      42      -20       -6
8210                 93      43       12       -6
8211                 71      38      -15      -11
19266                65      37       -9        1
19267                83      46       14        6
19268                75      47       -7       -7
19269                63      43      -13       -1
19270                71      43       -5       -1
19271                67      43      -13       -5
19272                63      43      -12        0
19273                69      45       -9       -3
19274                76      50      126      125
19275                61      41       -5        9
19276                63      41       70       82
19277                68      44       -6        1
19278                63      45      -12        0
19279                65      47      -11       -1
19280                64      48       -9        2
19281                71      42       34       38
19282                72      51       -1        2
19283                75      45       -5       -5
19284                62      46      -14       -1
19285                71      41        7       11
19286                68      47        1        8
19287                79      47       -3       -7
19288                76      44       -7       -8
19289                88      43        4       -9
19290                66      41      -12       -3
19291                71      41        0        4
19292                66      43       -5        4
19293                65      44      -15       -5
19294                61      47      -14        0
19295                58      39      -12        5
19296                62      41       13       26
23655               136     113       -3        1
23656               129     112       17       28
23657               131     112       -9        0
23658               145     108        7        2
23659               129     107      -15       -4
23660               154     106        5       -9
23661               131     107       -7        2
23662               131     107      -15       -6
23663               133     110        8       15
23664               121     107       80       99
23665               128     111       41       53
23666               134     117      -13       -7
23667               159     110       12       -7
23668               127     110      -14       -1
23669               130     111      -16       -6
23670               150     113       22       12
23671               138     117        6        8
23672               135     114       39       44
23673               132     110      -12       -4
23674               144     111       -1       -5
23675               135     110       18       23
23676               125     109      -20       -5
23677               140     107       -2       -2
23678               138     113       31       33
23679               148     129        3       -5
23680               126     111       56       70
23681               137     106       14       17
23682               138     108       -7       -5
23683               129     105      -13       -2
23684               133     108       54       61
23685               124     104      -14        2
27063                66      44      -12       -3
27064                60      43        5       20
27065                63      40       -6        6
27066                68      42      -10       -3
27067                68      40      -13       -6
27068                92      45       48       31
27069                64      42      -20       -9
27070                60      41      -16       -1
27071                75      45       -3       -3
27072                69      45      -13       -7
27073                70      49       15       20
27074                67      42        5       13
27075                72      45        3        6
27076                71      42       -7       -3
27077                79      50       12        8
27078                65      42       -8        2
27079                66      38      -18       -9
27080                68      44       -7        0
27081                63      46      -14       -2
27082                65      44      -13       -3
27083                73      44       29       31
33051               155     117        7       -8
33052               133     112      -19      -12
33053               125     111      -17       -2
33054               127     109       -7        6
33055               130     108       -9        1
33056               122     105      -18        0
33057               126     107      -24      -10
33058               125     106      -16       -1
33059               129     110       -2        9
33060               156     132       34       18
33061               140     115       74       74
33062               128     113      -13       -1
33063               128     108      -14       -2
33064               123     110      -13        4
33065               138     114        0        2
33066               131     118       -8        1
33067               133     113       -8       -1
33068               135     118       -8       -3
33069               135     114       -9       -4
33070               130     107      -15       -5
33071               128     110      -15       -3
33072               139     112        5        6
33073               135     108      -13       -8
33074                NA      NA       NA       NA
33075               134     112       14       20
33076               134     110      -11       -5
33077               138     108       -5       -3
33078               118     104      -22        0
33079               131     108      -14       -5
33080               125     106      -16       -1
33081               143     100       -4       -7
35256                74      39       15        6
35257                63      47       -7       -5
35258                64      46       -2       -1
35259                73      41        9        1
35260                66      44        1        0
35261                66      41        0       -1
35262                72      43        6       -1
35263                66      39       -2       -3
35264                NA      NA       NA       NA
35265                72      43       19       12
35266                65      42        0        0
35267                59      41       -5        1
35268                66      46        1        0
35269                70      49        5        0
35270                67      52       19       17
35271                61      42       -4        0
35272                77      49       12        0
35273                59      43       24       30
35274                67      44        1       -1
35275                70      44       14        9
35276                66      44        2        1
35277                72      50        2       -5
35278                51      39       -2       12
35279                66      43        8        7
35280                60      40      -11       -6
35281                75      46        4       -6
35282                72      43        1       -6
35283                63      47       48       50
35284                66      44       -8       -9
35285                80      41        9       -6
35286                72      42        7        0
35375                71      45       -7       -3
35376                68      43      -15       -8
35377                72      41       25       28
35378                62      41      -18       -5
35379                69      44      -13       -7
35380                71      47       16       20
35381                80      45       -2       -7
35382                77      44       -5       -7
35383                69      46      -12       -6
39453               129     113       -9       -3
39454               138     115       -3       -6
39455               130     111      -10       -5
39456               145     115        8       -2
39457               139     111       -1       -5
39458               128     107       -7        0
39459               129     108      -10       -4
39460               132     105       -5       -2
[ reached 'max' / getOption("max.print") -- omitted 227246 rows ]
> hflights %>% 
  +   select(hflights,ActualElapsedTime,
             +                      AirTime,
             +                      ArrDelay,
             +                      DepDelay) %>% 
  +   View()
Note: Using an external vector in selections is ambiguous.
ℹ Use `all_of(hflights)` instead of `hflights` to silence this message.
ℹ See <https://tidyselect.r-lib.org/reference/faq-external-vector.html>.
This message is displayed once per session.
Error: Must subset columns with a valid subscript vector.
x Subscript has the wrong type `data.frame<
  Year             : integer
Month            : integer
DayofMonth       : integer
DayOfWeek        : integer
DepTime          : integer
ArrTime          : integer
UniqueCarrier    : character
FlightNum        : integer
TailNum          : character
ActualElapsedTime: integer
AirTime          : integer
ArrDelay         : integer
DepDelay         : integer
Origin           : character
Dest             : character
Distance         : integer
TaxiIn           : integer
TaxiOut          : integer
Cancelled        : integer
CancellationCode : character
Diverted         : integer
>`.
ℹ It must be numeric or character.
Run `rlang::last_error()` to see where the error occurred.
> select(hflights,ends_with("Time"),ends_with("Delay"))
DepTime ArrTime ActualElapsedTime AirTime ArrDelay DepDelay
5424     1400    1500                60      40      -10        0
5425     1401    1501                60      45       -9        1
5426     1352    1502                70      48       -8       -8
5427     1403    1513                70      39        3        3
5428     1405    1507                62      44       -3        5
5429     1359    1503                64      45       -7       -1
5430     1359    1509                70      43       -1       -1
5431     1355    1454                59      40      -16       -5
5432     1443    1554                71      41       44       43
5433     1443    1553                70      45       43       43
5434     1429    1539                70      42       29       29
5435     1419    1515                56      41        5       19
5436     1358    1501                63      44       -9       -2
5437     1357    1504                67      47       -6       -3
5438     1359    1459                60      44      -11       -1
5439     1359    1509                70      41       -1       -1
5440     1530    1634                64      48       84       90
5441     1408    1508                60      42       -2        8
5442     1356    1503                67      46       -7       -4
5443     1507    1622                75      42       72       67
5444     1357    1459                62      47      -11       -3
5445     1355    1456                61      44      -14       -5
5446     1356    1501                65      40       -9       -4
5447     1356    1513                77      43        3       -4
5448     1352    1452                60      40      -18       -8
5449     1353    1455                62      40      -15       -7
5450     1356    1458                62      40      -12       -4
5451     1359    1505                66      46       -5       -1
5452     1355    1455                60      46      -15       -5
5453     1359    1456                57      39      -14       -1
5454     1441    1553                72      39       43       41
6343      728     840                72      41        5        8
6344      719     821                62      43      -14       -1
6345      717     834                77      46       -1       -3
6346      714     821                67      46      -14       -6
6347      718     822                64      44      -13       -2
6348      719     821                62      44      -14       -1
6349      711     827                76      42       -8       -9
6350      713     805                52      40      -30       -7
6351      714     829                75      51       -6       -6
6352      715     818                63      44      -17       -5
6353      717     820                63      44      -15       -3
6354      714     814                60      42      -21       -6
6355      722     841                79      49        6        2
6356      715     828                73      47       -7       -5
6357      719     833                74      49       -2       -1
6358      743     843                60      45        8       23
6359      724     842                78      54        7        4
6360      721     827                66      46       -8        1
6361      714     833                79      51       -2       -6
6362      719     822                63      44      -13       -1
6363      712     811                59      40      -24       -8
6364      717     829                72      47       -6       -3
6365      710     814                64      42      -21      -10
6366      731     904                93      42       29       11
6367      719     818                59      40      -17       -1
6368      716     824                68      44      -11       -4
6369      715     825                70      44      -10       -5
6370      741     846                65      44       11       21
6371      720     825                65      43      -10        0
6372      716     820                64      44      -15       -4
6373      718     816                58      40      -19       -2
8186     1959    2106                67      44      -14       -6
8187     1958    2107                69      48      -13       -7
8188     2100    2207                67      42       47       55
8189     1958    2106                68      44      -14       -7
8190     1955    2103                68      41      -17      -10
8191     1958    2055                57      44      -25       -7
8192     2045    2155                70      44       35       40
8193     2029    2133                64      43       13       24
8194     1953    2051                58      44      -29      -12
8195     2015    2113                58      39       -7       10
8196     2020    2116                56      44       -4       15
8197     2119    2229                70      45       69       74
8198     1956    2119                83      42       -1       -9
8199     2030    2131                61      44       11       25
8200     1957    2106                69      44      -14       -8
8201     2029    2123                54      44        3       24
8202     2004    2121                77      45        1       -1
8203     2036    2134                58      45       14       31
8204     2001    2057                56      39      -23       -4
8205     2043    2139                56      41       19       38
8206     2004    2107                63      44      -13       -1
8207     2009    2103                54      39      -17        4
8208     2039    2130                51      40       10       34
8209     1959    2100                61      42      -20       -6
8210     1959    2132                93      43       12       -6
8211     1954    2105                71      38      -15      -11
19266    1631    1736                65      37       -9        1
19267    1636    1759                83      46       14        6
19268    1623    1738                75      47       -7       -7
19269    1629    1732                63      43      -13       -1
19270    1629    1740                71      43       -5       -1
19271    1625    1732                67      43      -13       -5
19272    1630    1733                63      43      -12        0
19273    1627    1736                69      45       -9       -3
19274    1835    1951                76      50      126      125
19275    1639    1740                61      41       -5        9
19276    1752    1855                63      41       70       82
19277    1631    1739                68      44       -6        1
19278    1630    1733                63      45      -12        0
19279    1629    1734                65      47      -11       -1
19280    1632    1736                64      48       -9        2
19281    1708    1819                71      42       34       38
19282    1632    1744                72      51       -1        2
19283    1625    1740                75      45       -5       -5
19284    1629    1731                62      46      -14       -1
19285    1641    1752                71      41        7       11
19286    1638    1746                68      47        1        8
19287    1623    1742                79      47       -3       -7
19288    1622    1738                76      44       -7       -8
19289    1621    1749                88      43        4       -9
19290    1627    1733                66      41      -12       -3
19291    1634    1745                71      41        0        4
19292    1634    1740                66      43       -5        4
19293    1625    1730                65      44      -15       -5
19294    1630    1731                61      47      -14        0
19295    1635    1733                58      39      -12        5
19296    1656    1758                62      41       13       26
23655    1756    2112               136     113       -3        1
23656    1823    2132               129     112       17       28
23657    1755    2106               131     112       -9        0
23658    1757    2122               145     108        7        2
23659    1751    2100               129     107      -15       -4
23660    1746    2120               154     106        5       -9
23661    1757    2108               131     107       -7        2
23662    1749    2100               131     107      -15       -6
23663    1810    2123               133     110        8       15
23664    1934    2235               121     107       80       99
23665    1848    2156               128     111       41       53
23666    1748    2102               134     117      -13       -7
23667    1748    2127               159     110       12       -7
23668    1754    2101               127     110      -14       -1
23669    1749    2059               130     111      -16       -6
23670    1807    2137               150     113       22       12
23671    1803    2121               138     117        6        8
23672    1839    2154               135     114       39       44
23673    1751    2103               132     110      -12       -4
23674    1750    2114               144     111       -1       -5
23675    1818    2133               135     110       18       23
23676    1750    2055               125     109      -20       -5
23677    1753    2113               140     107       -2       -2
23678    1828    2146               138     113       31       33
23679    1750    2118               148     129        3       -5
23680    1905    2211               126     111       56       70
23681    1812    2129               137     106       14       17
23682    1750    2108               138     108       -7       -5
23683    1753    2102               129     105      -13       -2
23684    1856    2209               133     108       54       61
23685    1757    2101               124     104      -14        2
27063     907    1013                66      44      -12       -3
27064     930    1030                60      43        5       20
27065     916    1019                63      40       -6        6
27066     907    1015                68      42      -10       -3
27067     904    1012                68      40      -13       -6
27068     941    1113                92      45       48       31
27069     901    1005                64      42      -20       -9
27070     909    1009                60      41      -16       -1
27071     907    1022                75      45       -3       -3
27072     903    1012                69      45      -13       -7
27073     930    1040                70      49       15       20
27074     923    1030                67      42        5       13
27075     916    1028                72      45        3        6
27076     907    1018                71      42       -7       -3
27077     918    1037                79      50       12        8
27078     912    1017                65      42       -8        2
[ reached 'max' / getOption("max.print") -- omitted 227330 rows ]
> hflights%>%
  +   select(ends_with("Time"),ends_with("Delay"))%>%
  +   head(10)
DepTime ArrTime ActualElapsedTime AirTime ArrDelay DepDelay
5424    1400    1500                60      40      -10        0
5425    1401    1501                60      45       -9        1
5426    1352    1502                70      48       -8       -8
5427    1403    1513                70      39        3        3
5428    1405    1507                62      44       -3        5
5429    1359    1503                64      45       -7       -1
5430    1359    1509                70      43       -1       -1
5431    1355    1454                59      40      -16       -5
5432    1443    1554                71      41       44       43
5433    1443    1553                70      45       43       43
> hflights%>%
  +   select(ends_with("Time"),ends_with("Delay"))%>%
  +   head(10)%>%
  +   View()
> dim(hflights)
[1] 227496     21
> g1=hflights%>%
  +   mutate(ActualGroundTime=ActualElapsedTime-AirTime)
> 
  > dim(g1)
[1] 227496     22
> names(g1)
[1] "Year"              "Month"             "DayofMonth"        "DayOfWeek"         "DepTime"          
[6] "ArrTime"           "UniqueCarrier"     "FlightNum"         "TailNum"           "ActualElapsedTime"
[11] "AirTime"           "ArrDelay"          "DepDelay"          "Origin"            "Dest"             
[16] "Distance"          "TaxiIn"            "TaxiOut"           "Cancelled"         "CancellationCode" 
[21] "Diverted"          "ActualGroundTime" 
> dim(g2)
Error: object 'g2' not found
> g2=g1%>%
  +   mutate(GroundTime=TaxIn+TaxiOut)
Error: Problem with `mutate()` input `GroundTime`.
x object 'TaxIn' not found
ℹ Input `GroundTime` is `TaxIn + TaxiOut`.
Run `rlang::last_error()` to see where the error occurred.
> g2=g1%>%
  +   mutate(GroundTime=TaxiIn+TaxiOut)
> dim(g2)
[1] 227496     23
>   mutate(AverageSpeed=Distance/AirTime*60)
Error in mutate(AverageSpeed = Distance/AirTime * 60) : 
  object 'Distance' not found
> g3=b2%>%
  +   mutate(AverageSpeed=Distance/AirTime*60)
Error in eval(lhs, parent, parent) : object 'b2' not found
> g3=g2%>%
  +   mutate(AverageSpeed=Distance/AirTime*60)
> dim(g3)
[1] 227496     24
> m1=hflights%>%
  +   mutate(loss=ArrDelay-DepDelay,loss_ratio=loss/DepDelay)
> dim(m1)
[1] 227496     23
> names(m1)
[1] "Year"              "Month"             "DayofMonth"        "DayOfWeek"         "DepTime"          
[6] "ArrTime"           "UniqueCarrier"     "FlightNum"         "TailNum"           "ActualElapsedTime"
[11] "AirTime"           "ArrDelay"          "DepDelay"          "Origin"            "Dest"             
[16] "Distance"          "TaxiIn"            "TaxiOut"           "Cancelled"         "CancellationCode" 
[21] "Diverted"          "loss"              "loss_ratio"       
> m2=hflights%>%
  +   mutate(TotalTaxi=TaxiIn+TaxiOut,
             +          ActualGroundTime=ActualElapsedTime-AirTime,
             +          Diff=TotalTaxi-ActualGroundTime)
> names(m2)
[1] "Year"              "Month"             "DayofMonth"        "DayOfWeek"         "DepTime"          
[6] "ArrTime"           "UniqueCarrier"     "FlightNum"         "TailNum"           "ActualElapsedTime"
[11] "AirTime"           "ArrDelay"          "DepDelay"          "Origin"            "Dest"             
[16] "Distance"          "TaxiIn"            "TaxiOut"           "Cancelled"         "CancellationCode" 
[21] "Diverted"          "TotalTaxi"         "ActualGroundTime"  "Diff"             
> filter(hflights,Distance>=3000)
Year Month DayofMonth DayOfWeek DepTime ArrTime UniqueCarrier FlightNum TailNum ActualElapsedTime
1  2011     1         31         1     924    1413            CO         1  N69063               529
2  2011     1         30         7     925    1410            CO         1  N76064               525
3  2011     1         29         6    1045    1445            CO         1  N69063               480
4  2011     1         28         5    1516    1916            CO         1  N77066               480
5  2011     1         27         4     950    1344            CO         1  N76055               474
6  2011     1         26         3     944    1350            CO         1  N76065               486
7  2011     1         25         2     924    1337            CO         1  N68061               493
8  2011     1         24         1    1144    1605            CO         1  N76064               501
9  2011     1         23         7     926    1335            CO         1  N76065               489
10 2011     1         22         6     942    1340            CO         1  N69063               478
11 2011     1         21         5     928    1334            CO         1  N76065               486
12 2011     1         20         4     938    1343            CO         1  N77066               485
13 2011     1         19         3     926    1341            CO         1  N76064               495
14 2011     1         18         2     927    1546            CO         1  N66057                NA
15 2011     1         17         1     924    1349            CO         1  N76065               505
16 2011     1         16         7     922    1343            CO         1  N69063               501
17 2011     1         15         6     945    1355            CO         1  N77066               490
18 2011     1         14         5    1117    1506            CO         1  N67058               469
19 2011     1         13         4     929    1348            CO         1  N76065               499
20 2011     1         12         3     937    1358            CO         1  N77066               501
21 2011     1         11         2     926    1425            CO         1  N67052               539
22 2011     1         10         1     940    1413            CO         1  N76064               513
23 2011     1          9         7     956    1417            CO         1  N69063               501
24 2011     1          8         6     927    1403            CO         1  N76065               516
25 2011     1          8         6    1156    1618            CO        73  N69063               502
26 2011     1          7         5     930    1355            CO         1  N76064               505
27 2011     1          7         5    1204    1619            CO        73  N76065               495
28 2011     1          6         4     932    1402            CO         1  N69063               510
29 2011     1          6         4    1145    1606            CO        73  N76064               501
30 2011     1          5         3     929    1406            CO         1  N77066               517
31 2011     1          5         3      NA      NA            CO        73                        NA
32 2011     1          4         2     941    1357            CO         1  N66051               496
33 2011     1          4         2    1144    1619            CO        73  N69063               515
34 2011     1          3         1     931    1354            CO         1  N76065               503
35 2011     1          3         1    1210    1620            CO        73  N77066               490
36 2011     1          2         7     939    1414            CO         1  N76064               515
37 2011     1          2         7    1151    1625            CO        73  N76065               514
38 2011     1          1         6     942    1356            CO         1  N69063               494
39 2011     1          1         6    1145    1612            CO        73  N76065               507
40 2011     1          1         6    1447    1925            CO        77  N76062               518
41 2011     2         28         1    1040    1517            CO         1  N77066               517
42 2011     2         27         7     932    1403            CO         1  N76065               511
43 2011     2         26         6     928    1409            CO         1  N76064               521
44 2011     2         25         5     937    1408            CO         1  N77066               511
45 2011     2         24         4     930    1358            CO         1  N76065               508
46 2011     2         23         3     927    1355            CO         1  N77066               508
47 2011     2         22         2     939    1405            CO         1  N66051               506
AirTime ArrDelay DepDelay Origin Dest Distance TaxiIn TaxiOut Cancelled CancellationCode Diverted
1      492       23       -1    IAH  HNL     3904      6      31         0                         0
2      493       20        0    IAH  HNL     3904     13      19         0                         0
3      459       55       80    IAH  HNL     3904      4      17         0                         0
4      463      326      351    IAH  HNL     3904      7      10         0                         0
5      455       -6       25    IAH  HNL     3904      4      15         0                         0
6      471        0       19    IAH  HNL     3904      5      10         0                         0
7      473      -13       -1    IAH  HNL     3904      5      15         0                         0
8      464      135      139    IAH  HNL     3904      7      30         0                         0
9      466      -15        1    IAH  HNL     3904      6      17         0                         0
10     465      -10       17    IAH  HNL     3904      3      10         0                         0
11     461      -16        3    IAH  HNL     3904      6      19         0                         0
12     469       -7       13    IAH  HNL     3904      4      12         0                         0
13     475       -9        1    IAH  HNL     3904      6      14         0                         0
14      NA       NA        2    IAH  HNL     3904      4      17         0                         1
15     478       -1       -1    IAH  HNL     3904      5      22         0                         0
16     481       -7       -3    IAH  HNL     3904      4      16         0                         0
17     472        5       20    IAH  HNL     3904      5      13         0                         0
18     452       76      112    IAH  HNL     3904      5      12         0                         0
19     478       -2        4    IAH  HNL     3904      4      17         0                         0
20     482        8       12    IAH  HNL     3904      6      13         0                         0
21     497       35        1    IAH  HNL     3904      4      38         0                         0
22     486       23       15    IAH  HNL     3904     11      16         0                         0
23     484       27       31    IAH  HNL     3904      5      12         0                         0
24     489       13        2    IAH  HNL     3904     14      13         0                         0
25     487        8       11    IAH  HNL     3904      4      11         0                         0
26     475        5        5    IAH  HNL     3904      7      23         0                         0
27     471        9       19    IAH  HNL     3904      6      18         0                         0
28     488       12        7    IAH  HNL     3904      5      17         0                         0
29     481       -4        0    IAH  HNL     3904      4      16         0                         0
30     493       16        4    IAH  HNL     3904      5      19         0                         0
31      NA       NA       NA    IAH  HNL     3904     NA      NA         1                A        0
32     472        7       16    IAH  HNL     3904      5      19         0                         0
33     494        9       -1    IAH  HNL     3904      6      15         0                         0
34     481        4        6    IAH  HNL     3904      6      16         0                         0
35     476       10       25    IAH  HNL     3904      5       9         0                         0
36     496       24       14    IAH  HNL     3904      5      14         0                         0
37     492       15        6    IAH  HNL     3904      4      18         0                         0
38     466        6       17    IAH  HNL     3904      5      23         0                         0
39     486        2        0    IAH  HNL     3904      4      17         0                         0
40     488       35       22    IAH  HNL     3904      8      22         0                         0
41     499       87       75    IAH  HNL     3904      3      15         0                         0
42     488       13        7    IAH  HNL     3904      4      19         0                         0
43     475       19        3    IAH  HNL     3904      4      42         0                         0
44     490       18       12    IAH  HNL     3904      4      17         0                         0
45     487        8        5    IAH  HNL     3904      4      17         0                         0
46     484        5        2    IAH  HNL     3904      4      20         0                         0
47     491       15       14    IAH  HNL     3904      3      12         0                         0
[ reached 'max' / getOption("max.print") -- omitted 480 rows ]
> new=hflights%>%
  +   filter(Distance>=3000)
> show(new)
Year Month DayofMonth DayOfWeek DepTime ArrTime UniqueCarrier FlightNum TailNum ActualElapsedTime
1  2011     1         31         1     924    1413            CO         1  N69063               529
2  2011     1         30         7     925    1410            CO         1  N76064               525
3  2011     1         29         6    1045    1445            CO         1  N69063               480
4  2011     1         28         5    1516    1916            CO         1  N77066               480
5  2011     1         27         4     950    1344            CO         1  N76055               474
6  2011     1         26         3     944    1350            CO         1  N76065               486
7  2011     1         25         2     924    1337            CO         1  N68061               493
8  2011     1         24         1    1144    1605            CO         1  N76064               501
9  2011     1         23         7     926    1335            CO         1  N76065               489
10 2011     1         22         6     942    1340            CO         1  N69063               478
11 2011     1         21         5     928    1334            CO         1  N76065               486
12 2011     1         20         4     938    1343            CO         1  N77066               485
13 2011     1         19         3     926    1341            CO         1  N76064               495
14 2011     1         18         2     927    1546            CO         1  N66057                NA
15 2011     1         17         1     924    1349            CO         1  N76065               505
16 2011     1         16         7     922    1343            CO         1  N69063               501
17 2011     1         15         6     945    1355            CO         1  N77066               490
18 2011     1         14         5    1117    1506            CO         1  N67058               469
19 2011     1         13         4     929    1348            CO         1  N76065               499
20 2011     1         12         3     937    1358            CO         1  N77066               501
21 2011     1         11         2     926    1425            CO         1  N67052               539
22 2011     1         10         1     940    1413            CO         1  N76064               513
23 2011     1          9         7     956    1417            CO         1  N69063               501
24 2011     1          8         6     927    1403            CO         1  N76065               516
25 2011     1          8         6    1156    1618            CO        73  N69063               502
26 2011     1          7         5     930    1355            CO         1  N76064               505
27 2011     1          7         5    1204    1619            CO        73  N76065               495
28 2011     1          6         4     932    1402            CO         1  N69063               510
29 2011     1          6         4    1145    1606            CO        73  N76064               501
30 2011     1          5         3     929    1406            CO         1  N77066               517
31 2011     1          5         3      NA      NA            CO        73                        NA
32 2011     1          4         2     941    1357            CO         1  N66051               496
33 2011     1          4         2    1144    1619            CO        73  N69063               515
34 2011     1          3         1     931    1354            CO         1  N76065               503
35 2011     1          3         1    1210    1620            CO        73  N77066               490
36 2011     1          2         7     939    1414            CO         1  N76064               515
37 2011     1          2         7    1151    1625            CO        73  N76065               514
38 2011     1          1         6     942    1356            CO         1  N69063               494
39 2011     1          1         6    1145    1612            CO        73  N76065               507
40 2011     1          1         6    1447    1925            CO        77  N76062               518
41 2011     2         28         1    1040    1517            CO         1  N77066               517
42 2011     2         27         7     932    1403            CO         1  N76065               511
43 2011     2         26         6     928    1409            CO         1  N76064               521
44 2011     2         25         5     937    1408            CO         1  N77066               511
45 2011     2         24         4     930    1358            CO         1  N76065               508
46 2011     2         23         3     927    1355            CO         1  N77066               508
47 2011     2         22         2     939    1405            CO         1  N66051               506
AirTime ArrDelay DepDelay Origin Dest Distance TaxiIn TaxiOut Cancelled CancellationCode Diverted
1      492       23       -1    IAH  HNL     3904      6      31         0                         0
2      493       20        0    IAH  HNL     3904     13      19         0                         0
3      459       55       80    IAH  HNL     3904      4      17         0                         0
4      463      326      351    IAH  HNL     3904      7      10         0                         0
5      455       -6       25    IAH  HNL     3904      4      15         0                         0
6      471        0       19    IAH  HNL     3904      5      10         0                         0
7      473      -13       -1    IAH  HNL     3904      5      15         0                         0
8      464      135      139    IAH  HNL     3904      7      30         0                         0
9      466      -15        1    IAH  HNL     3904      6      17         0                         0
10     465      -10       17    IAH  HNL     3904      3      10         0                         0
11     461      -16        3    IAH  HNL     3904      6      19         0                         0
12     469       -7       13    IAH  HNL     3904      4      12         0                         0
13     475       -9        1    IAH  HNL     3904      6      14         0                         0
14      NA       NA        2    IAH  HNL     3904      4      17         0                         1
15     478       -1       -1    IAH  HNL     3904      5      22         0                         0
16     481       -7       -3    IAH  HNL     3904      4      16         0                         0
17     472        5       20    IAH  HNL     3904      5      13         0                         0
18     452       76      112    IAH  HNL     3904      5      12         0                         0
19     478       -2        4    IAH  HNL     3904      4      17         0                         0
20     482        8       12    IAH  HNL     3904      6      13         0                         0
21     497       35        1    IAH  HNL     3904      4      38         0                         0
22     486       23       15    IAH  HNL     3904     11      16         0                         0
23     484       27       31    IAH  HNL     3904      5      12         0                         0
24     489       13        2    IAH  HNL     3904     14      13         0                         0
25     487        8       11    IAH  HNL     3904      4      11         0                         0
26     475        5        5    IAH  HNL     3904      7      23         0                         0
27     471        9       19    IAH  HNL     3904      6      18         0                         0
28     488       12        7    IAH  HNL     3904      5      17         0                         0
29     481       -4        0    IAH  HNL     3904      4      16         0                         0
30     493       16        4    IAH  HNL     3904      5      19         0                         0
31      NA       NA       NA    IAH  HNL     3904     NA      NA         1                A        0
32     472        7       16    IAH  HNL     3904      5      19         0                         0
33     494        9       -1    IAH  HNL     3904      6      15         0                         0
34     481        4        6    IAH  HNL     3904      6      16         0                         0
35     476       10       25    IAH  HNL     3904      5       9         0                         0
36     496       24       14    IAH  HNL     3904      5      14         0                         0
37     492       15        6    IAH  HNL     3904      4      18         0                         0
38     466        6       17    IAH  HNL     3904      5      23         0                         0
39     486        2        0    IAH  HNL     3904      4      17         0                         0
40     488       35       22    IAH  HNL     3904      8      22         0                         0
41     499       87       75    IAH  HNL     3904      3      15         0                         0
42     488       13        7    IAH  HNL     3904      4      19         0                         0
43     475       19        3    IAH  HNL     3904      4      42         0                         0
44     490       18       12    IAH  HNL     3904      4      17         0                         0
45     487        8        5    IAH  HNL     3904      4      17         0                         0
46     484        5        2    IAH  HNL     3904      4      20         0                         0
47     491       15       14    IAH  HNL     3904      3      12         0                         0
[ reached 'max' / getOption("max.print") -- omitted 480 rows ]
> head(hflights$Carrier)
NULL
> temp=hflights%>%
  +   filter(Carrier == c("JetBlue","Southwest","Delta"))
Error: Problem with `filter()` input `..1`.
x object 'Carrier' not found
ℹ Input `..1` is `Carrier == c("JetBlue", "Southwest", "Delta")`.
Run `rlang::last_error()` to see where the error occurred.
> 







