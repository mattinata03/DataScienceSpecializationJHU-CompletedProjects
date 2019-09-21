## Subsetting data by column, we get a factor:
## > class(data[,2])
## [1] "factor"
## One way to extract a vector from the factor is by subsetting it by its levels.
## levels(data[,2]) returns a vector of the levels:
## [1] "China" "UK"    "USA"
## levels(data[,2])[data[,2]] returns a vector with the content of [data[,2]]
## [1] "China" "China" "USA"   "USA"   "UK"    "UK"  
## data[,2] would return a factor, that for our purposes is harder to handle
## [1] China China USA   USA   UK    UK   
## Levels: China UK USA
## SuppressWarnings() stops the warning alerts from R. When we coerce a mixed list of numeric and character
## into a numeric vector, text becomes automatically NA, but it's a forced coercion and R sends a warning.
## This is the case of our column 3 and 4, where "Unknown" becomes NA.
## complete.cases() returns the indexes of the rows that don't have any NA. By subsetting the matrix by these
## indexes we get a data frame with only complete cases.
sort_by_column_NA <- function(data,column){
    for (i in 3:4){
        data[,i] <- suppressWarnings(as.numeric(levels(data[,i])[data[,i]]))
    }
    orderdata <- data[order(data[,column]),]
    orderdata <- orderdata[complete.cases(orderdata),] 
    return(orderdata)
}