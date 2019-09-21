corr <- function(directory, threshold = 0){
  #assumption - specdata is a directory in the current working directory
  i <- 1
  specfiles <- list.files(directory, full.names=TRUE)
  corr_data <- c()
  while (i <= length(specfiles)) {
    spec_data <- read.csv(specfiles[i])
    num_compl <- sum(complete.cases(spec_data) == TRUE)
    if(num_compl >= threshold){
      compl_rows <- na.omit(spec_data)
      sulf <- compl_rows[,'sulfate']
      nitr <- compl_rows[,'nitrate']
      corr_data <- c(corr_data, cor(sulf, nitr))
    }
    i <- i + 1
  }
  corr_data
}