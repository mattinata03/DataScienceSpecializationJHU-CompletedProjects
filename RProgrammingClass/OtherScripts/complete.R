complete <- function(directory, id) {
  #assumption - specdata is a directory in the current working directory
  full_filelist <- list.files(directory, full.names=TRUE) 
  df_comp <- setNames(data.frame(matrix(ncol = 2, nrow = 0)), c("id","nobs"))
  for (i in id) {
    df_nob <- data.frame("id" = i, "nobs" = nrow(na.omit(read.csv(full_filelist[i]))))
    df_comp <- rbind(df_comp, df_nob)
  }
  df_comp
}