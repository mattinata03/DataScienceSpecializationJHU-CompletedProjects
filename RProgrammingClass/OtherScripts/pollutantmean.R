pollutantmean <- function(directory, pollutant, id = 1:332) {
  #assumption - specdata is a directory in the current working directory
  full_filelist <- list.files(directory, full.names=TRUE) #create list of files
  df_pollutant <- data.frame() #create an empty dataframe for data sample
  #populate the dataframe with the data sample to be analyzed
  for (i in id) {
    df_file <- read.csv(full_filelist[i])
    df_pollutant <- rbind(df_pollutant, df_file)
  }
  mean(df_pollutant[, pollutant], na.rm = TRUE) #calculate mean omitting NA
}