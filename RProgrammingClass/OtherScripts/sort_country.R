## grep function finds the character vector (e.g. "China") in the
## data$countries factor, and returns a vector of indexes. 
## > data$countries
## [1] China China USA   USA   UK    UK   
## Levels: China UK USA
## > grep("China",data$countries)
## [1] 1 2
## We then subset the main data frame, data, by these indexes
## > data [grep("China",data$countries),]
##     cities countries areakm2 populationk
## 1 Shanghai     China    2643       21766
## 2  Beijing     China    1368       21500
sort_country <- function (data, country, column){
  countrydata <- data [grep(country,data$countries),]
  orderdata <- countrydata[order(countrydata[,column]),]
  return (orderdata)
}