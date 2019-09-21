library(dplyr)
library(tidyr)
library(readr)
library(sqldf)
library(reshape2)


print("Loading files into environment.")

headerFile <- as.tbl(read.table("./UCI HAR Dataset/features.txt",
                         col.names = c("key", "name")))

keepCols <- grep("mean|std", headerFile$name)
dupeTest <- duplicated(headerFile$name)
dupes <- grep("TRUE", dupeTest)

numDupes <- intersect(keepCols, dupes)

if (length(numDupes) != 0){print("Warning: there are duplicate values in 
                                 headerFile. Data needs to be scrubbed.") }

print("no duplicates found...files being processed")

xtrain <- as.tbl(read.table("./UCI HAR Dataset/train/X_train.txt"))
ytrain <- as.tbl(read.table("./UCI HAR Dataset/train/y_train.txt",
                     col.names = c("activityCode")))
subtrain <-as.tbl(read.table("./UCI HAR Dataset/train/subject_train.txt",
                      col.names = c("subjectID")))

xtest <- as.tbl(read.table("./UCI HAR Dataset/test/X_test.txt"))
ytest<- as.tbl(read.table("./UCI HAR Dataset/test/y_test.txt",
                     col.names = c("activityCode")))
subtest <- as.tbl(read.table("./UCI HAR Dataset/test/subject_test.txt",
                      col.names = c("subjectID")))

checkUniqueSubjectID <- intersect(unique(subtest[,1]),
                                  unique(subtrain[,1]))
if(dim(checkUniqueSubjectID)[1] != 0) {
        message("Warning: One or more SubjectID is in both the training 
                and test data: ", checkUniqueSubjectID, "\nSummary results 
                will not be as expected")
}

# convert all of the activity names to lower case so it looks better with
# the final output
activity <- as.tbl(read.table("./UCI HAR Dataset/activity_labels.txt",
                       col.names = c("activityCode", "activity")))
activity[[2]] <- tolower(activity[[2]])


print("Data is loaded.")

colnames(xtest) <- (headerFile$name)
colnames(xtrain) <- (headerFile$name)

xtestKeep <- xtest[, c(keepCols)]
xtrainKeep <- xtrain[, c(keepCols)]


print("Combining test and training files.")
testHAR <- as.tbl(bind_cols(subtest, ytest, xtestKeep))
trainHAR <- as.tbl(bind_cols(subtrain, ytrain, xtrainKeep))
dataHAR <- as.tbl(bind_rows(testHAR, trainHAR))


meltHAR<-melt(dataHAR, id=c("subjectID","activityCode")) 

tidyHAR1<- dcast(meltHAR, subjectID+activityCode
                ~ variable,fun.aggregate=mean)

print("Data combined. Cleaning up files and creating
      user friedly column headings....")

headerName <- names(tidyHAR1)
headerName <- gsub("\\(\\)", "", headerName) 
headerName <- gsub("BodyBody", "Body", headerName)
headerName <- gsub('^f', "Average of: f", headerName)
headerName <- gsub('^t', "Average of: t", headerName)
names(tidyHAR1) <- headerName


tidyHAR1 <- as.tbl(merge(tidyHAR1, activity, by = "activityCode"))
tidyHAR1 <- select(tidyHAR1, subjectID, activityCode, activity, 
                  everything())
tidyHARfinal <- tidyHAR1[order(tidyHAR1$subjectID, 
                               tidyHAR1$activityCode),]



rm("testHAR", "trainHAR", 
   "subtest", "ytest", "xtest", 
   "subtrain", "ytrain", "xtrain",
   "dupes", "dupeTest", 
   "xtestKeep", "xtrainKeep", 
   "headerFile", "numDupes",
   "dataHAR", "tidyHAR1", 
   "headerName", "keepCols",
   "meltHAR","activity")

print("Unneeded files deleted.")

