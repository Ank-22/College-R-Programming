library(readr)
library(ggplot2)
library(dplyr)

car= read.csv("Seesion 10/cars.csv" , stringsAsFactors=TRUE)
glimpse(car)
names(car)
View(head(car))
str(car)
unique(car$name)
"
@@@OUTPUT@@@

> library(readr)
> library(ggplot2)
> library(dplyr)

Attaching package: 'dplyr'

The following objects are masked from 'package:stats':

    filter, lag

The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union

>
> car= read.csv("Seesion 10/cars.csv" , stringsAsFactors=TRUE)
> glimpse(car)
Rows: 428
Columns: 19
$ name        <fct> Chevrolet Aveo 4dr, Chevrolet Aveo LS 4dr hatch, Chevro...
$ sports_car  <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,...
$ suv         <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,...
$ wagon       <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,...
$ minivan     <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,...
$ pickup      <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,...
$ all_wheel   <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,...
$ rear_wheel  <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,...
$ msrp        <int> 11690, 12585, 14610, 14810, 16385, 13670, 15040, 13270,...
$ dealer_cost <int> 10965, 11802, 13697, 13884, 15357, 12849, 14086, 12482,...
$ eng_size    <dbl> 1.6, 1.6, 2.2, 2.2, 2.2, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, ...
$ ncyl        <int> 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4...
$ horsepwr    <int> 103, 103, 140, 140, 140, 132, 132, 130, 110, 130, 130, ...
$ city_mpg    <int> 28, 28, 26, 26, 26, 29, 29, 26, 27, 26, 26, 32, 36, 32,...
$ hwy_mpg     <int> 34, 34, 37, 37, 37, 36, 36, 33, 36, 33, 33, 38, 44, 38,...
$ weight      <int> 2370, 2348, 2617, 2676, 2617, 2581, 2626, 2612, 2606, 2...
$ wheel_base  <int> 98, 98, 104, 104, 104, 105, 105, 103, 103, 103, 103, 10...
$ length      <int> 167, 153, 183, 183, 183, 174, 174, 168, 168, 168, 168, ...
$ width       <int> 66, 66, 69, 68, 69, 67, 67, 67, 67, 67, 67, 67, 67, 68,...
> names(car)
 [1] "name"        "sports_car"  "suv"         "wagon"       "minivan"    
 [6] "pickup"      "all_wheel"   "rear_wheel"  "msrp"        "dealer_cost"
[11] "eng_size"    "ncyl"        "horsepwr"    "city_mpg"    "hwy_mpg"    
[16] "weight"      "wheel_base"  "length"      "width"      
> View(head(car))
> str(car)
'data.frame':   428 obs. of  19 variables:
 $ name       : Factor w/ 425 levels "Acura 3.5 RL 4dr",..: 66 67 68 69 70 114 115 133 
129 130 ...
 $ sports_car : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
 $ suv        : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
 $ wagon      : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
 $ minivan    : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
 $ pickup     : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
 $ all_wheel  : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
 $ rear_wheel : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
 $ msrp       : int  11690 12585 14610 14810 16385 13670 15040 13270 13730 15460 ...
 $ dealer_cost: int  10965 11802 13697 13884 15357 12849 14086 12482 12906 14496 ...   
 $ eng_size   : num  1.6 1.6 2.2 2.2 2.2 2 2 2 2 2 ...
 $ ncyl       : int  4 4 4 4 4 4 4 4 4 4 ...
 $ horsepwr   : int  103 103 140 140 140 132 132 130 110 130 ...
 $ city_mpg   : int  28 28 26 26 26 29 29 26 27 26 ...
 $ hwy_mpg    : int  34 34 37 37 37 36 36 33 36 33 ...
 $ weight     : int  2370 2348 2617 2676 2617 2581 2626 2612 2606 2606 ...
 $ wheel_base : int  98 98 104 104 104 105 105 103 103 103 ...
 $ length     : int  167 153 183 183 183 174 174 168 168 168 ...
 $ width      : int  66 66 69 68 69 67 67 67 67 67 ...
> unique(car$name)
  [1] Chevrolet Aveo 4dr
  [2] Chevrolet Aveo LS 4dr hatch
  [3] Chevrolet Cavalier 2dr
  [4] Chevrolet Cavalier 4dr
  [5] Chevrolet Cavalier LS 2dr
  [6] Dodge Neon SE 4dr
  [7] Dodge Neon SXT 4dr
  [8] Ford Focus ZX3 2dr hatch
  [9] Ford Focus LX 4dr
 [10] Ford Focus SE 4dr
 [11] Ford Focus ZX5 5dr
 [12] Honda Civic DX 2dr
 [13] Honda Civic HX 2dr
 [14] Honda Civic LX 4dr
 [15] Hyundai Accent 2dr hatch
 [16] Hyundai Accent GL 4dr
 [17] Hyundai Accent GT 2dr hatch
 [18] Hyundai Elantra GLS 4dr
 [19] Hyundai Elantra GT 4dr
 [20] Hyundai Elantra GT 4dr hatch
 [21] Kia Optima LX 4dr
 [22] Kia Rio 4dr manual
 [23] Kia Rio 4dr auto
 [24] Kia Spectra 4dr
 [25] Kia Spectra GS 4dr hatch
 [26] Kia Spectra GSX 4dr hatch
 [27] Mazda3 i 4dr
 [28] Mini Cooper
 [29] Mitsubishi Lancer ES 4dr
 [30] Mitsubishi Lancer LS 4dr
 [31] Nissan Sentra 1.8 4dr
 [32] Nissan Sentra 1.8 S 4dr
 [33] Pontiac Sunfire 1SA 2dr
 [34] Saturn Ion1 4dr
 [35] Saturn lon2 4dr
 [36] Saturn lon3 4dr
 [37] Saturn lon2 quad coupe 2dr
 [38] Saturn lon3 quad coupe 2dr
 [39] Scion xA 4dr hatch
 [40] Suzuki Aeno S 4dr
 [41] Suzuki Aerio LX 4dr
 [42] Suzuki Forenza S 4dr
 [43] Suzuki Forenza EX 4dr
 [44] Toyota Corolla CE 4dr
 [45] Toyota Corolla S 4dr
 [46] Toyota Corolla LE 4dr
 [47] Toyota Echo 2dr manual
 [48] Toyota Echo 2dr auto
 [49] Toyota Echo 4dr
 [50] Buick Century Custom 4dr
 [51] Chevrolet Impala 4dr
 [52] Chevrolet Malibu 4dr
 [53] Chevrolet Malibu LS 4dr
 [54] Chevrolet Monte Carlo LS 2dr
 [55] Chrysler PT Cruiser 4dr
 [56] Chrysler PT Cruiser Limited 4dr
 [57] Chrysler Sebring 4dr
 [58] Chrysler Sebring Touring 4dr
 [59] Dodge Intrepid SE 4dr
 [60] Dodge Stratus SXT 4dr
 [61] Dodge Stratus SE 4dr
 [62] Ford Focus SVT 2dr
 [63] Ford Taurus LX 4dr
 [64] Ford Taurus SES Duratec 4dr
 [65] Honda Accord LX 2dr
 [66] Honda Accord EX 2dr
 [67] Honda Civic EX 4dr
 [68] Honda Civic Si 2dr hatch
 [69] Honda Civic Hybrid 4dr manual (gas/electric)
 [70] Honda Insight 2dr (gas/electric)
 [71] Hyundai Sonata GLS 4dr
 [72] Hyundai Sonata LX 4dr
 [73] Kia Optima LX V6 4dr
 [74] Mazda3 s 4dr
 [75] Mazda6 i 4dr
 [76] Mercury Sable GS 4dr
 [77] Mini Cooper S
 [78] Mitsubishi Galant ES 2.4L 4dr
 [79] Mitsubishi Lancer OZ Rally 4dr auto
 [80] Nissan Altima S 4dr
 [81] Nissan Sentra SE-R 4dr
 [82] Oldsmobile Alero GX 2dr
 [83] Pontiac Grand Am GT 2dr
 [84] Pontiac Grand Prix GT1 4dr
 [85] Pontiac Sunfire 1SC 2dr
 [86] Saturn L300-2 4dr
 [87] Subaru Impreza 2.5 RS 4dr
 [88] Subaru Legacy L 4dr
 [89] Suzuki Verona LX 4dr
 [90] Toyota Camry LE 4dr
 [91] Toyota Camry LE V6 4dr
 [92] Toyota Camry Solara SE 2dr
 [93] Toyota Camry Solara SE V6 2dr
 [94] Toyota Prius 4dr (gas/electric)
 [95] Volkswagen Golf GLS 4dr
 [96] Volkswagen GTI 1.8T 2dr hatch
 [97] Volkswagen Jetta GLS TDI 4dr
 [98] Volkswagen New Beetle GLS 1.8T 2dr
 [99] Acura RSX Type S 2dr                         
[100] Acura TSX 4dr
[101] Audi A4 1.8T 4dr
[102] BMW 325i 4dr
[103] Buick LeSabre Custom 4dr
[104] Buick Regal LS 4dr
[105] Buick Regal GS 4dr
[106] Chevrolet Impala LS 4dr
[107] Chevrolet Impala SS 4dr
[108] Chevrolet Malibu LT 4dr
[109] Chevrolet Monte Carlo SS 2dr
[110] Chrysler 300M 4dr
[111] Chrysler Concorde LX 4dr
[112] Chrysler Concorde LXi 4dr
[113] Chrvsler PT Cruiser GT 4dr
[114] Chrysler Sebring convertible 2dr             
[115] Dodge Intrepid ES 4dr
[116] Ford Crown Victoria 4dr
[117] Ford Crown Victoria LX 4dr
[118] Honda Accord LX V6 4dr
[119] Honda Accord EX V6 2dr
[120] Hyundai XG350 4dr
[121] Hyundai XG350 L 4dr
[122] Infiniti G35 4dr
[123] Infiniti G35 Sport Coupe 2dr
[124] Jaguar X-Type 2.5 4dr
[125] Kia Amanti 4dr
[126] Mercedes-Benz C230 Sport 2dr
[127] Mercedes-Benz C320 Sport 2dr
[128] Mercury Grand Marquis GS 4dr
[129] Mercury Grand Marquis LS Premium 4dr
[130] Mercury Sable LS Premium 4dr
[131] Mitsubishi Diamante LS 4dr
[132] Mitsubishi Galant GTS 4dr
[133] Nissan Altima SE 4dr
[134] Nissan Maxima SE 4dr
[135] Nissan Maxima SL 4dr
[136] Oldsmobile Alero GLS 2dr
[137] Pontiac Grand Prix GT2 4dr
[138] Subaru Legacy GT 4dr
[139] Subaru Outback Limited Sedan 4dr
[140] Subaru Outback H6 4dr
[141] Toyota Avalon XL 4dr
[142] Toyota Camry XLE V6 4dr
[143] Toyota Camry Solara SLE V6 2dr
[144] Volkswagen Jetta GLI VR6 4dr
[145] Volkswagen New Beetle GLS convertible 2dr
[146] Volkswagen Passat GLS 4dr
[147] Volvo S40 4dr
[148] Acura TL 4dr
[149] Audi A41.8T convertible 2dr
[150] Audi A4 3.0 4dr
[151] Audi A4 3.0 Quattro 4dr manual
[152] Audi A4 3.0 Quattro 4dr auto
[153] Audi A6 3.0 4dr
[154] Audi A6 3.0 Quattro 4dr
[155] BMW 325Ci 2dr
[156] BMW 325Ci convertible 2dr
[157] BMW 325xi 4dr
[158] BMW 330i 4dr
[159] BMW 330Ci 2dr
[160] BMW 330xi 4dr
[161] BMW 525i 4dr
[162] Buick LeSabre Limited 4dr
[163] Buick Park Avenue 4dr
[164] Cadillac CTS VVT 4dr
[165] Chrysler 300M Special Edition 4dr
[166] Chrysler Sebring Limited convertible 2dr
[167] Ford Crown Victoria LX Sport 4dr             
[168] Infiniti I35 4dr
[169] Jaguar X-Type 3.0 4dr
[170] Lexus ES 330 4dr
[171] Lexus IS 300 4dr manual
[172] Lexus IS 300 4dr auto
[173] Lincoln LS V6 Luxury 4dr
[174] Lincoln LS V6 Premium 4dr
[175] Mercedes-Benz C240 4dr
[176] Mercedes-Benz C320 Sport 4dr
[177] Mercedes-Benz C320 4dr
[178] Mercury Grand Marquis LS Ultimate 4dr
[179] Mercury Marauder 4dr
[180] Pontiac Bonneville GXP 4dr
[181] Saab 9-3 Arc Sport 4dr
[182] Saab 9-3 Aero 4dr
[183] Saab 9-5 Arc 4dr
[184] Saab 9-5 Aero 4dr
[185] Subaru Outback H-6 VDC 4dr
[186] Toyota Avalon XLS 4dr
[187] Volkswagen Passat GLX V6 4MOTION 4dr
[188] Volkswagen Passat W8 4MOTION 4dr
[189] Volvo S60 2.5 4dr
[190] Volvo S60 T5 4dr
[191] Volvo S60 R 4dr
[192] Volvo S80 2.9 4dr
[193] Volvo S80 2.5T 4dr
[194] Acura 3.5 RL 4dr
[195] Acura 3.5 RL w/Navigation 4dr
[196] Audi A4 3.0 convertible 2dr
[197] Audi A4 3.0 Quattro convertible 2dr
[198] Audi A6 2.7 Turbo Quattro 4dr
[199] Audi A6 4.2 Quattro 4dr
[200] Audi A8 L Quattro 4dr
[201] Audi S4 Quattro 4dr
[202] BMW 330Ci convertible 2dr
[203] BMW 530i 4dr
[204] BMW 545iA 4dr
[205] BMW 745i 4dr
[206] BMW 745Li 4dr
[207] Buick Park Avenue Ultra 4dr
[208] Cadillac Deville 4dr
[209] Cadillac Deville DTS 4dr
[210] Cadillac Seville SLS 4dr
[211] Infiniti M45 4dr
[212] Infiniti Q45 Luxury 4dr
[213] Jaguar S-Type 3.0 4dr
[214] Jaguar S-Type 4.2 4dr
[215] Jaguar S-Type R 4dr
[216] Jaguar Vanden Plas 4dr
[217] Jaguar XJ8 4dr
[218] Jaguar XJR 4dr
[219] Lexus GS 300 4dr
[220] Lexus GS 430 4dr
[221] Lexus LS 430 4dr
[222] Lincoln LS V8 Sport 4dr
[223] Lincoln LS V8 Ultimate 4dr
[224] Lincoln Town Car Signature 4dr
[225] Lincoln Town Car Ultimate 4dr
[226] Lincoln Town Car Ultimate L 4dr
[227] Mercedes-Benz C32 AMG 4dr
[228] Mercedes-Benz CL500 2dr
[229] Mercedes-Benz CL600 2dr
[230] Mercedes-Benz CLK320 coupe 2dr (convertible)
[231] Mercedes-Benz CLK500 coupe 2dr (convertible) 
[232] Mercedes-Benz E320 4dr
[233] Mercedes-Benz E500 4dr
[234] Mercedes-Benz S430 4dr
[235] Mercedes-Benz S500 4dr
[236] Saab 9-3 Arc convertible 2dr
[237] Saab 9-3 Aero convertible 2dr
[238] Volkswagen Phaeton 4dr
[239] Volkswagen Phaeton W12 4dr
[240] Volvo C70 LPT convertible 2dr
[241] Volvo C70 HPT convertible 2dr
[242] Volvo S80 T6 4dr
[243] Acura NSX coupe 2dr manual S
[244] Audi RS 6 4dr
[245] Audi TT 1.8 convertible 2dr (coupe)
[246] Audi TT 1.8 Quattro 2dr (convertible)
[247] Audi TT 3.2 coupe 2dr (convertible)
[248] BMW M3 coupe 2dr
[249] BMW M3 convertible 2dr
[250] BMW Z4 convertible 2.5i 2dr
[251] BMW Z4 convertible 3.0i 2dr
[252] Cadillac XLR convertible 2dr
[253] Chevrolet Corvette 2dr
[254] Chevrolet Corvette convertible 2dr
[255] Chrysler Crossfire 2dr
[256] Dodge Viper SRT-10 convertible 2dr
[257] Ford Mustang 2dr (convertible)
[258] Ford Mustang GT Premium convertible 2dr      
[259] Ford Thunderbird Deluxe convert w/hardtop 2dr
[260] Honda S2000 convertible 2dr
[261] Hyundai Tiburon GT V6 2dr
[262] Jaguar XK8 coupe 2dr
[263] Jaguar XK8 convertible 2dr
[264] Jaguar XKR coupe 2dr
[265] Jaguar XKR convertible 2dr
[266] Lexus SC 430 convertible 2dr
[267] Mazda MX-5 Miata convertible 2dr
[268] Mazda MX-5 Miata LS convertible 2dr
[269] Mazda RX-8 4dr automatic
[270] Mazda RX-8 4dr manual
[271] Mercedes-Benz SL500 convertible 2dr
[272] Mercedes-Benz SL55 AMG 2dr
[273] Mercedes-Benz SL600 convertible 2dr
[274] Mercedes-Benz SLK230 convertible 2dr
[275] Mercedes-Benz SLK32 AMG 2dr
[276] Mitsubishi Eclipse GTS 2dr
[277] Mitsubishi Eclipse Spyder GT convertible 2dr 
[278] Mitsubishi Lancer Evolution 4dr
[279] Nissan 350Z coupe 2dr
[280] Nissan 350Z Enthusiast convertible 2dr
[281] Pontiac GTO 2dr
[282] Porsche 911 Carrera convertible 2dr (coupe)
[283] Porsche 911 Carrera 4S coupe 2dr (convert)
[284] Porsche 911 Targa coupe 2dr
[285] Porsche 911 GT2 2dr
[286] Porsche Boxster convertible 2dr
[287] Porsche Boxster S convertible 2dr
[288] Subaru Impreza WRX 4dr
[289] Subaru Impreza WRX STi 4dr
[290] Toyota Celica GT-S 2dr
[291] Toyota MR2 Spyder convertible 2dr
[292] Cadillac Escaladet
[293] Cadillac SRX V8
[294] Chevrolet Suburban 1500 LT
[295] Chevrolet Tahoe LT
[296] Dodge Durango SLT
[297] Ford Excursion 6.8 XLT
[298] Ford Expedition 4.6 XLT
[299] GMC Envoy XUV SLE
[300] CMC Yukon 1500 SLE
[301] GMC Yukon XL 2500 SLT
[302] Hummer H2
[303] Isuzu Ascender S
[304] Lincoln Navigator Luxury
[305] Nissan Pathfinder Armada SE
[306] Toyota Sequoia SR5
[307] Acura MDX
[308] BMW X3 3.0i
[309] BMW X5 4.4i
[310] Buick Rainier
[311] Buick Rendezvous CX
[312] Chevrolet TrailBlazer LT
[313] Ford Explorer XLT V6
[314] Honda Pilot LX
[315] Isuzu Rodeo S
[316] Jeep Grand Cherokee Laredo
[317] Kia Sorento LX
[318] Land Rover Range Rover HSE
[319] Lexus GX 470
[320] Lexus LX 470
[321] Lexus RX 330
[322] Lincoln Aviator Ultimate
[323] Mercedes-Benz G500
[324] Mercedes-Benz ML500
[325] Mercury Mountaineer
[326] Mitsubishi Endeavor XLS
[327] Mitsubishi Montero XLS
[328] Nissan Pathfinder SE
[329] Pontiac Aztekt
[330] Porsche Cayenne S
[331] Saturn VUE
[332] Suzuki XL-7 EX
[333] Toyota 4Runner SR5 V6
[334] Toyota Highlander V6
[335] Toyota Land Cruiser
[336] Volkswagen Touareg V6
[337] Volvo XC90 T6
[338] Chevrolet Tracker
[339] Ford Escape XLS
[340] Honda CR-V LX
[341] Honda Element LX
[342] Hyundai Santa Fe GLS
[343] Jeep Liberty Sport
[344] Jeep Wrangler Sahara convertible 2dr
[345] Land Rover Discovery SE
[346] Land Rover Freelander SE
[347] Mazda Tribute DX 2.0
[348] Mitsubishi Outlander LS
[349] Nissan Xterra XE V6
[350] Suzuki Vitara LX
[351] Toyota RAV4
[352] Audi A6 3.0 Avant Quattro
[353] Audi S4 Avant Quattro
[354] BMW 325xi Sport
[355] Chevrolet Malibu Maxx LS
[356] Chrysler Pacifica
[357] Ford Focus ZTW
[358] Ford Taurus SE
[359] Infiniti FX35
[360] Infiniti FX45
[361] Kia Rio Cinco
[362] Lexus IS 300 SportCross
[363] Mercedes-Benz C240
[364] Mercedes-Benz E320
[365] Mercedes-Benz E500
[366] Mercury Sable GS
[367] Mitsubishi Lancer Sportback LS
[368] Nissan Murano SL
[369] Pontiac Vibe
[370] Saab 9-5 Aero
[371] Saturn L300 2
[372] Scion xB
[373] Subaru Forester X
[374] Subaru Outback
[375] Suzuki Aerio SX
[376] Toyota Matrix XR
[377] Volkswagen Jetta GL
[378] Volkswagen Passat GLS 1.8T
[379] Volkswagen Passat W8
[380] Volvo V40
[381] Volvo XC70
[382] Chevrolet Astro
[383] Chevrolet Venture LS
[384] Chrysler Town and Country LX
[385] Chrysler Town and Country Limited
[386] Dodge Caravan SE
[387] Dodge Grand Caravan SXT
[388] Ford Freestar SE
[389] GMC Safari SLE
[390] Honda Odyssey LX
[391] Honda Odyssey EX
[392] Kia Sedona LX
[393] Mazda MPV ES
[394] Mercury Monterey Luxury
[395] Nissan Quest S
[396] Nissan Quest SE
[397] Oldsmobile Silhouette GL
[398] Pontiac Montana
[399] Pontiac Montana EWB
[400] Toyota Sienna CE
[401] Toyota Sienna XLE Limited
[402] Cadillac Escalade EXT
[403] Chevrolet Avalanche 1500
[404] Chevrolet Colorado Z85                       
[405] Chevrolet Silverado 1500 Regular Cab
[406] Chevrolet Silverado SS
[407] Chevrolet SSR
[408] Dodge Dakota Regular Cab
[409] Dodge Dakota Club Cab                        
[410] Dodge Ram 1500 Regular Cab ST
[411] Ford F-150 Regular Cab XL
[412] Ford F-150 Supercab Lariat
[413] Ford Ranger 2.3 XL Regular Cab
[414] GMC Canyon Z85 SL Regular Cab
[415] GMC Sierra Extended Cab 1500
[416] GMC Sierra HD 2500
[417] GMC Sonoma Crew Cab
[418] Mazda B2300 SX Regular Cab
[419] Mazda B4000 SE Cab Plus
[420] Nissan Frontier King Cab XE V6
[421] Nissan Titan King Cab XE
[422] Subaru Baja
[423] Toyota Tacoma
[424] Toyota Tundra Regular Cab V6
[425] Toyota Tundra Access Cab V6 SR5
425 Levels: Acura 3.5 RL 4dr Acura 3.5 RL w/Navigation 4dr ... Volvo XC90 T6
>
"

### Session 9 Recap:

tr(car$weight)

table(car$weight)

ggplot(car,aes(x=weight))+geom_dotplot(dotsize=0.22)

"
Histogram
"

ggplot(data=car,aes(x=weight))+geom_histogram()

"
Density plot
"
ggplot(car,aes(x=weight))+geom_density()

"
Boxplot
"
ggplot(car, aes(x=1,y=weight))+geom_boxplot()

ggplot(car, aes(x=1,y=weight))+geom_boxplot()+coord_flip()

summary(car$weight)

# Lets explore the highway mpg

str(car$hwy_mpg)

summary(car$hwy_mpg)
ggplot(car,aes(x=hwy_mpg))+geom_histogram()
ggplot(car,aes(x=hwy_mpg))+geom_density()

ggplot(car,aes(x=1,y=hwy_mpg))+geom_boxplot()

ggplot(car,aes(x=hwy_mpg))+geom_histogram()+facet_wrap(~pickup)

ggplot(car,aes(x=hwy_mpg))+geom_boxplot()+facet_wrap(~pickup)

pickcar=car%>%
        filter(pickup ==TRUE)

summary(pickcar$hwy_mpg)        

nonpickcar=car%>%
        filter(pickup !=TRUE)

summary(nonpickcar$hwy_mpg)
"
summary(car$weigth)
Length  Class   Mode
     0   NULL   NULL
> summary(car$weight)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's
   1850    3102    3474    3577    3974    7190       2
> str(car$hwy_mpg)
 int [1:428] 34 34 37 37 37 36 36 33 36 33 ...
> summary(car$hwy_mpg)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's
  12.00   24.00   26.00   26.91   29.00   66.00      14
> summary(pickcar$hwy_mpg)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's
  17.00   18.50   20.00   21.17   22.50   29.00       1
> nonpickcar=car%>%
+         filter(pickup !=TRUE)
>
> summary(nonpickcar$hwy_mpg)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's
  12.00   24.00   26.00   27.24   30.00   66.00      13
>
"  
 # So using facet_wrap we can get distribution for the categories without having a filter

str(car$city_mpg)

summary(car$city_mpg)
ggplot(car,aes(x=city_mpg))+geom_histogram()
ggplot(car,aes(x=city_mpg))+geom_density()

ggplot(car,aes(x=1,y=city_mpg))+geom_boxplot()

ggplot(car,aes(x=city_mpg))+geom_histogram()+facet_wrap(~suv)

ggplot(car,aes(x=city_mpg))+geom_boxplot()+facet_wrap(~suv)

suv=car%>%
        filter(suv ==TRUE)

summary(suv$hwy_mpg)        

Nonsuv=car%>%
        filter(suv !=TRUE)

summary(Nonsuv$hwy_mpg)

"
summary(car$city_mpg)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's
  10.00   17.00   19.00   20.09   21.00   60.00      14
suv=car%>%
+         filter(suv ==TRUE)
>
> summary(suv$hwy_mpg)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's
  12.00   18.50   21.00   20.63   22.50   27.00       1
>
> Nonsuv=car%>%
+         filter(suv !=TRUE)
>
> summary(Nonsuv$hwy_mpg)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's
  17.00   25.00   27.00   27.95   30.00   66.00      13
"

### Start of session 10

"
Plot a histrogram of city_mgp faceted by
"

str(car$city_mpg)

str(car$suv)
ggplot(car,aes(x=city_mpg))+geom_histogram()+facet_wrap(~suv)
ggplot(car,aes(x=city_mpg,fill=suv))+geom_histogram()

ggplot(car,aes(x=hwy_mpg,fill=suv))+geom_histogram()+facet_wrap(~suv)
ggplot(car,aes(x=hwy_mpg,fill=suv))+geom_histogram()

View(head(car,100))
ggplot(car,aes(x=hwy_mpg,fill=suv))+geom_histogram()+facet_wrap(~pickup)
ggplot(car,aes(x=hwy_mpg,fill=pickup))+geom_histogram()

str(car$eng_size)

NonPickupCar =car%>%
        filter(eng_size <2.0)
dim(NonPickupCar)
dim(car)
View(NonPickupCar)
NonPickupCar

## ====== Conditional Histrogram ======= ##
ggplot(NonPickupCar,aes(x=hwy_mpg,fill=sports_car))+geom_histogram(binwidth=5)


## ====== Conditional Desnsity Plot ======= ##
ggplot(NonPickupCar,aes(x=hwy_mpg))+geom_density()
ggplot(NonPickupCar,aes(x=hwy_mpg))+geom_density(bw=5)



str(car$horsepwr)
summary(car$horsepwr)
ggplot(car,aes(x=horsepwr,fill=suv))+geom_histogram(binwidth=5)
ggplot(car,aes(x=horsepwr,fill=suv))+geom_histogram()
ggplot(car,aes(x=horsepwr,fill=pickup))+geom_histogram()
ggplot(car,aes(x=horsepwr,fill=sports_car))+geom_histogram()+ggtitle("Distribution of horsepower")
ggplot(car,aes(x=horsepwr))+geom_histogram(bw=3)+ggtitle("Distribution of horsepower with bandwidth of 3")

ggplot(car,aes(x=horsepwr))+geom_histogram(bw=30)+ggtitle("Distribution of horsepower with bandwidth of 30")
ggplot(car,aes(x=horsepwr))+geom_histogram(bw=60)+ggtitle("Distribution of horsepower with bandwidth of 60")


"
Plot the hsitrogram for horsepower fot cars with mrp less than 25000

"

glimpse(car)

CarLessThanTT = car%>%
                filter(msrp< 25000)

glimpse(CarLessThanTT)
dim(CarLessThanTT)
ggplot(CarLessThanTT,aes(x=horsepwr))+geom_histogram()+ggtitle("Distribution of horsepower with MRP Less Than 25000")
summary(CarLessThanTT$horsepwr)
ggplot(CarLessThanTT,aes(x=horsepwr))+geom_histogram()+xlim(c(90,550))+ggtitle("Distribution of horsepower with MRP Less Than 25000")

str(car$ncyl)

unique(car$ncyl)

table(car$ncyl)


CarMostNcyl = car%>%
                filter(ncyl == 4 | ncyl == 6 | ncyl==8)  

dim(CarMostNcyl)
dim(car)

CarMostNcyl2 <- filter(car,ncyl %in% c(4,6,8))  

dim(CarMostNcyl2)


ggplot(CarMostNcyl,aes(x=1,y=city_mpg))+geom_boxplot()

summary(CarMostNcyl$city_mpg)

## Create Side by side boxplot for city_mpg wwrt ncyl

ggplot(CarMostNcyl,aes(x= as.factor(ncyl) ,y=city_mpg))+geom_boxplot()

ggplot(CarMostNcyl,aes(x=city_mpg, fill= as.factor(ncyl)))+geom_density()