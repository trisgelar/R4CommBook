download.file("https://raw.githubusercontent.com/smach/NICAR15data/master/BostonWinterSnowfalls.csv", "dataset/BostonWinterSnowfalls.csv")

snowdata <- rio::import("dataset/BostonWinterSnowfalls.csv")

library(htmltab)
citytable <- htmltab(
  "https://en.wikipedia.org/wiki/List_of_United_States_cities_by_population",
  which = 5,
)
colnames(citytable)
str(citytable)

citytable$PopEst2018 <- readr::parse_number(citytable$`2018estimate`)
Encoding(citytable$State) <- 'UTF-8'

citytable <- janitor::clean_names(citytable)
names(citytable)

download.file("https://raw.githubusercontent.com/smach/R4JournalismBook/master/data/bostonzips.txt", "dataset/bostonzips.txt")

zips <- rio::import("dataset/bostonzips.txt", colClasses=rep("character", 2), encoding="UTF-8")
str(zips)

data(package=.packages(all.available=TRUE))
