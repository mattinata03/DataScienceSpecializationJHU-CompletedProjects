## argument decreasing = TRUE inverts the direction of the order. Numbers from biggest to smallest and 
## characters from Z to A. This is helpful when we consider rank#1 the biggest city.
## as.character () will return the vector with the name of the city. If we just return orderdata[rank,1] 
## we get a factor instead.
find_city_rank <- function(data,column,rank){
    orderdata <- data[order(decreasing = TRUE,data[,column]),]
    return(as.character(orderdata[rank,1]))
}