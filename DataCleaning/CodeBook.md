## Creating a Tidy Data Set from Human Activity Recognition (HAR) Smartphone Data
### CodeBook.md

#### Getting and Cleaning Data Course -- Final Project
#### *Lisa Murray*

## Raw data files used in this project
Description of the raw data files *(taken from the README.txt from the Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine study)* [1]

* features.txt': List of all features. *(i.e. the measurement data descriptions)*
* activity_labels.txt': Links the class labels with their activity name
* train/X_train.txt': Training set
* train/y_train.txt': Training labels *(activity code for each observation)*
* train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* test/X_test.txt': Test set
* test/y_test.txt': Test labels *(activity code for each observation)*
* subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

## Input files to the run_analysis.R script

### activity
##### read from activity_labels.txt)

##### Dimensions:


|Feature                 |   Result|
|------------------------|---------|
|Number of observations  |        6|
|Number of variables     |        2|


##### Summary Table:


|Variable              | Class     |                           
|----------------------|-----------|
| activityCode         | integer   |                         
| activity             | character |

### headerFile
##### (read from features_info.txt)

##### Dimensions:

|Feature                 |   Result|
|------------------------|---------|
|Number of observations  |      561|
|Number of variables     |       2 |


##### Summary Table:

|Variable              | Class     |                           
|----------------------|-----------|
|key    | integer          561  0.00 %                
|name   factor           477  0.00 %                


### subtest / subtrain
##### (read from subject_test.txt and subject_train.txt)

##### Dimensions:


|Feature                 |   Result|
|------------------------|---------|
|Number of observations  |     2947|
|Number of variables     |       1 |


##### Summary Table:


|Variable              | Class     |                           
|----------------------|-----------|
|subjectID             | integer   |

### ytest / ytrain
##### (read from y_test.txt and y_train.txt)

##### Dimensions:

|Feature                 |   Result|
|------------------------|---------|
|Number of observations  |     2947|
|Number of variables     |        1|
*(7352 observations for y_train)*

##### Summary Table:


|Variable              | Class     |                           
|----------------------|-----------|
|activityCode          | integer   |

### xtest / xtrain
##### (read from x_test.txt and x_train.txt)

##### Dimensions:

|Feature                 |   Result|
|------------------------|---------|
|Number of observations  |     2947|
|Number of variables     |      561|


##### Summary Table:

|Variable                              | Class   |
|--------------------------------------|---------|
|tBodyAcc-mean()-X                     | numeric |
|tBodyAcc-mean()-Y                     | numeric |
|tBodyAcc-mean()-Z                     | numeric |
|tBodyAcc-std()-X                      | numeric |
|tBodyAcc-std()-Y                      | numeric |
|tBodyAcc-std()-Z                      | numeric |
|tBodyAcc-mad()-X                      | numeric |
|tBodyAcc-mad()-Y                      | numeric |
|tBodyAcc-mad()-Z                      | numeric |
|tBodyAcc-max()-X                      | numeric |
|tBodyAcc-max()-Y                      | numeric |
|tBodyAcc-max()-Z                      | numeric |
|tBodyAcc-min()-X                      | numeric |
|tBodyAcc-min()-Y                      | numeric |
|tBodyAcc-min()-Z                      | numeric |
|tBodyAcc-sma()                        | numeric |
|tBodyAcc-energy()-X                   | numeric |
|tBodyAcc-energy()-Y                   | numeric |
|tBodyAcc-energy()-Z                   | numeric |
|tBodyAcc-iqr()-X                      | numeric |
|tBodyAcc-iqr()-Y                      | numeric |
|tBodyAcc-iqr()-Z                      | numeric |
|tBodyAcc-entropy()-X                  | numeric |
|tBodyAcc-entropy()-Y                  | numeric |
|tBodyAcc-entropy()-Z                  | numeric |
|tBodyAcc-arCoeff()-X,1                | numeric |
|tBodyAcc-arCoeff()-X,2                | numeric |
|tBodyAcc-arCoeff()-X,3                | numeric |
|tBodyAcc-arCoeff()-X,4                | numeric |
|tBodyAcc-arCoeff()-Y,1                | numeric |
|tBodyAcc-arCoeff()-Y,2                | numeric |
|tBodyAcc-arCoeff()-Y,3                | numeric |
|tBodyAcc-arCoeff()-Y,4                | numeric |
|tBodyAcc-arCoeff()-Z,1                | numeric |
|tBodyAcc-arCoeff()-Z,2                | numeric |
|tBodyAcc-arCoeff()-Z,3                | numeric |
|tBodyAcc-arCoeff()-Z,4                | numeric |
|tBodyAcc-correlation()-X,Y            | numeric |
|tBodyAcc-correlation()-X,Z            | numeric |
|tBodyAcc-correlation()-Y,Z            | numeric |
|tGravityAcc-mean()-X                  | numeric |
|tGravityAcc-mean()-Y                  | numeric |
|tGravityAcc-mean()-Z                  | numeric |
|tGravityAcc-std()-X                   | numeric |
|tGravityAcc-std()-Y                   | numeric |
|tGravityAcc-std()-Z                   | numeric |
|tGravityAcc-mad()-X                   | numeric |
|tGravityAcc-mad()-Y                   | numeric |
|tGravityAcc-mad()-Z                   | numeric |
|tGravityAcc-max()-X                   | numeric |
|tGravityAcc-max()-Y                   | numeric |
|tGravityAcc-max()-Z                   | numeric |
|tGravityAcc-min()-X                   | numeric |
|tGravityAcc-min()-Y                   | numeric |
|tGravityAcc-min()-Z                   | numeric |
|tGravityAcc-sma()                     | numeric |
|tGravityAcc-energy()-X                | numeric |
|tGravityAcc-energy()-Y                | numeric |
|tGravityAcc-energy()-Z                | numeric |
|tGravityAcc-iqr()-X                   | numeric |
|tGravityAcc-iqr()-Y                   | numeric |
|tGravityAcc-iqr()-Z                   | numeric |
|tGravityAcc-entropy()-X               | numeric |
|tGravityAcc-entropy()-Y               | numeric |
|tGravityAcc-entropy()-Z               | numeric |
|tGravityAcc-arCoeff()-X,1             | numeric |
|tGravityAcc-arCoeff()-X,2             | numeric |
|tGravityAcc-arCoeff()-X,3             | numeric |
|tGravityAcc-arCoeff()-X,4             | numeric |
|tGravityAcc-arCoeff()-Y,1             | numeric |
|tGravityAcc-arCoeff()-Y,2             | numeric |
|tGravityAcc-arCoeff()-Y,3             | numeric |
|tGravityAcc-arCoeff()-Y,4             | numeric |
|tGravityAcc-arCoeff()-Z,1             | numeric |
|tGravityAcc-arCoeff()-Z,2             | numeric |
|tGravityAcc-arCoeff()-Z,3             | numeric |
|tGravityAcc-arCoeff()-Z,4             | numeric |
|tGravityAcc-correlation()-X,Y         | numeric |
|tGravityAcc-correlation()-X,Z         | numeric |
|tGravityAcc-correlation()-Y,Z         | numeric |
|tBodyAccJerk-mean()-X                 | numeric |
|tBodyAccJerk-mean()-Y                 | numeric |
|tBodyAccJerk-mean()-Z                 | numeric |
|tBodyAccJerk-std()-X                  | numeric |
|tBodyAccJerk-std()-Y                  | numeric |
|tBodyAccJerk-std()-Z                  | numeric |
|tBodyAccJerk-mad()-X                  | numeric |
|tBodyAccJerk-mad()-Y                  | numeric |
|tBodyAccJerk-mad()-Z                  | numeric |
|tBodyAccJerk-max()-X                  | numeric |
|tBodyAccJerk-max()-Y                  | numeric |
|tBodyAccJerk-max()-Z                  | numeric |
|tBodyAccJerk-min()-X                  | numeric |
|tBodyAccJerk-min()-Y                  | numeric |
|tBodyAccJerk-min()-Z                  | numeric |
|tBodyAccJerk-sma()                    | numeric |
|tBodyAccJerk-energy()-X               | numeric |
|tBodyAccJerk-energy()-Y               | numeric |
|tBodyAccJerk-energy()-Z               | numeric |
|tBodyAccJerk-iqr()-X                  | numeric |
|tBodyAccJerk-iqr()-Y                  | numeric |
|tBodyAccJerk-iqr()-Z                  | numeric |
|tBodyAccJerk-entropy()-X              | numeric |
|tBodyAccJerk-entropy()-Y              | numeric |
|tBodyAccJerk-entropy()-Z              | numeric |
|tBodyAccJerk-arCoeff()-X,1            | numeric |
|tBodyAccJerk-arCoeff()-X,2            | numeric |
|tBodyAccJerk-arCoeff()-X,3            | numeric |
|tBodyAccJerk-arCoeff()-X,4            | numeric |
|tBodyAccJerk-arCoeff()-Y,1            | numeric |
|tBodyAccJerk-arCoeff()-Y,2            | numeric |
|tBodyAccJerk-arCoeff()-Y,3            | numeric |
|tBodyAccJerk-arCoeff()-Y,4            | numeric |
|tBodyAccJerk-arCoeff()-Z,1            | numeric |
|tBodyAccJerk-arCoeff()-Z,2            | numeric |
|tBodyAccJerk-arCoeff()-Z,3            | numeric |
|tBodyAccJerk-arCoeff()-Z,4            | numeric |
|tBodyAccJerk-correlation()-X,Y        | numeric |
|tBodyAccJerk-correlation()-X,Z        | numeric |
|tBodyAccJerk-correlation()-Y,Z        | numeric |
|tBodyGyro-mean()-X                    | numeric |
|tBodyGyro-mean()-Y                    | numeric |
|tBodyGyro-mean()-Z                    | numeric |
|tBodyGyro-std()-X                     | numeric |
|tBodyGyro-std()-Y                     | numeric |
|tBodyGyro-std()-Z                     | numeric |
|tBodyGyro-mad()-X                     | numeric |
|tBodyGyro-mad()-Y                     | numeric |
|tBodyGyro-mad()-Z                     | numeric |
|tBodyGyro-max()-X                     | numeric |
|tBodyGyro-max()-Y                     | numeric |
|tBodyGyro-max()-Z                     | numeric |
|tBodyGyro-min()-X                     | numeric |
|tBodyGyro-min()-Y                     | numeric |
|tBodyGyro-min()-Z                     | numeric |
|tBodyGyro-sma()                       | numeric |
|tBodyGyro-energy()-X                  | numeric |
|tBodyGyro-energy()-Y                  | numeric |
|tBodyGyro-energy()-Z                  | numeric |
|tBodyGyro-iqr()-X                     | numeric |
|tBodyGyro-iqr()-Y                     | numeric |
|tBodyGyro-iqr()-Z                     | numeric |
|tBodyGyro-entropy()-X                 | numeric |
|tBodyGyro-entropy()-Y                 | numeric |
|tBodyGyro-entropy()-Z                 | numeric |
|tBodyGyro-arCoeff()-X,1               | numeric |
|tBodyGyro-arCoeff()-X,2               | numeric |
|tBodyGyro-arCoeff()-X,3               | numeric |
|tBodyGyro-arCoeff()-X,4               | numeric |
|tBodyGyro-arCoeff()-Y,1               | numeric |
|tBodyGyro-arCoeff()-Y,2               | numeric |
|tBodyGyro-arCoeff()-Y,3               | numeric |
|tBodyGyro-arCoeff()-Y,4               | numeric |
|tBodyGyro-arCoeff()-Z,1               | numeric |
|tBodyGyro-arCoeff()-Z,2               | numeric |
|tBodyGyro-arCoeff()-Z,3               | numeric |
|tBodyGyro-arCoeff()-Z,4               | numeric |
|tBodyGyro-correlation()-X,Y           | numeric |
|tBodyGyro-correlation()-X,Z           | numeric |
|tBodyGyro-correlation()-Y,Z           | numeric |
|tBodyGyroJerk-mean()-X                | numeric |
|tBodyGyroJerk-mean()-Y                | numeric |
|tBodyGyroJerk-mean()-Z                | numeric |
|tBodyGyroJerk-std()-X                 | numeric |
|tBodyGyroJerk-std()-Y                 | numeric |
|tBodyGyroJerk-std()-Z                 | numeric |
|tBodyGyroJerk-mad()-X                 | numeric |
|tBodyGyroJerk-mad()-Y                 | numeric |
|tBodyGyroJerk-mad()-Z                 | numeric |
|tBodyGyroJerk-max()-X                 | numeric |
|tBodyGyroJerk-max()-Y                 | numeric |
|tBodyGyroJerk-max()-Z                 | numeric |
|tBodyGyroJerk-min()-X                 | numeric |
|tBodyGyroJerk-min()-Y                 | numeric |
|tBodyGyroJerk-min()-Z                 | numeric |
|tBodyGyroJerk-sma()                   | numeric |
|tBodyGyroJerk-energy()-X              | numeric |
|tBodyGyroJerk-energy()-Y              | numeric |
|tBodyGyroJerk-energy()-Z              | numeric |
|tBodyGyroJerk-iqr()-X                 | numeric |
|tBodyGyroJerk-iqr()-Y                 | numeric |
|tBodyGyroJerk-iqr()-Z                 | numeric |
|tBodyGyroJerk-entropy()-X             | numeric |
|tBodyGyroJerk-entropy()-Y             | numeric |
|tBodyGyroJerk-entropy()-Z             | numeric |
|tBodyGyroJerk-arCoeff()-X,1           | numeric |
|tBodyGyroJerk-arCoeff()-X,2           | numeric |
|tBodyGyroJerk-arCoeff()-X,3           | numeric |
|tBodyGyroJerk-arCoeff()-X,4           | numeric |
|tBodyGyroJerk-arCoeff()-Y,1           | numeric |
|tBodyGyroJerk-arCoeff()-Y,2           | numeric |
|tBodyGyroJerk-arCoeff()-Y,3           | numeric |
|tBodyGyroJerk-arCoeff()-Y,4           | numeric |
|tBodyGyroJerk-arCoeff()-Z,1           | numeric |
|tBodyGyroJerk-arCoeff()-Z,2           | numeric |
|tBodyGyroJerk-arCoeff()-Z,3           | numeric |
|tBodyGyroJerk-arCoeff()-Z,4           | numeric |
|tBodyGyroJerk-correlation()-X,Y       | numeric |
|tBodyGyroJerk-correlation()-X,Z       | numeric |
|tBodyGyroJerk-correlation()-Y,Z       | numeric |
|tBodyAccMag-mean()                    | numeric |
|tBodyAccMag-std()                     | numeric |
|tBodyAccMag-mad()                     | numeric |
|tBodyAccMag-max()                     | numeric |
|tBodyAccMag-min()                     | numeric |
|tBodyAccMag-sma()                     | numeric |
|tBodyAccMag-energy()                  | numeric |
|tBodyAccMag-iqr()                     | numeric |
|tBodyAccMag-entropy()                 | numeric |
|tBodyAccMag-arCoeff()1                | numeric |
|tBodyAccMag-arCoeff()2                | numeric |
|tBodyAccMag-arCoeff()3                | numeric |
|tBodyAccMag-arCoeff()4                | numeric |
|tGravityAccMag-mean()                 | numeric |
|tGravityAccMag-std()                  | numeric |
|tGravityAccMag-mad()                  | numeric |
|tGravityAccMag-max()                  | numeric |
|tGravityAccMag-min()                  | numeric |
|tGravityAccMag-sma()                  | numeric |
|tGravityAccMag-energy()               | numeric |
|tGravityAccMag-iqr()                  | numeric |
|tGravityAccMag-entropy()              | numeric |
|tGravityAccMag-arCoeff()1             | numeric |
|tGravityAccMag-arCoeff()2             | numeric |
|tGravityAccMag-arCoeff()3             | numeric |
|tGravityAccMag-arCoeff()4             | numeric |
|tBodyAccJerkMag-mean()                | numeric |
|tBodyAccJerkMag-std()                 | numeric |
|tBodyAccJerkMag-mad()                 | numeric |
|tBodyAccJerkMag-max()                 | numeric |
|tBodyAccJerkMag-min()                 | numeric |
|tBodyAccJerkMag-sma()                 | numeric |
|tBodyAccJerkMag-energy()              | numeric |
|tBodyAccJerkMag-iqr()                 | numeric |
|tBodyAccJerkMag-entropy()             | numeric |
|tBodyAccJerkMag-arCoeff()1            | numeric |
|tBodyAccJerkMag-arCoeff()2            | numeric |
|tBodyAccJerkMag-arCoeff()3            | numeric |
|tBodyAccJerkMag-arCoeff()4            | numeric |
|tBodyGyroMag-mean()                   | numeric |
|tBodyGyroMag-std()                    | numeric |
|tBodyGyroMag-mad()                    | numeric |
|tBodyGyroMag-max()                    | numeric |
|tBodyGyroMag-min()                    | numeric |
|tBodyGyroMag-sma()                    | numeric |
|tBodyGyroMag-energy()                 | numeric |
|tBodyGyroMag-iqr()                    | numeric |
|tBodyGyroMag-entropy()                | numeric |
|tBodyGyroMag-arCoeff()1               | numeric |
|tBodyGyroMag-arCoeff()2               | numeric |
|tBodyGyroMag-arCoeff()3               | numeric |
|tBodyGyroMag-arCoeff()4               | numeric |
|tBodyGyroJerkMag-mean()               | numeric |
|tBodyGyroJerkMag-std()                | numeric |
|tBodyGyroJerkMag-mad()                | numeric |
|tBodyGyroJerkMag-max()                | numeric |
|tBodyGyroJerkMag-min()                | numeric |
|tBodyGyroJerkMag-sma()                | numeric |
|tBodyGyroJerkMag-energy()             | numeric |
|tBodyGyroJerkMag-iqr()                | numeric |
|tBodyGyroJerkMag-entropy()            | numeric |
|tBodyGyroJerkMag-arCoeff()1           | numeric |
|tBodyGyroJerkMag-arCoeff()2           | numeric |
|tBodyGyroJerkMag-arCoeff()3           | numeric |
|tBodyGyroJerkMag-arCoeff()4           | numeric |
|fBodyAcc-mean()-X                     | numeric |
|fBodyAcc-mean()-Y                     | numeric |
|fBodyAcc-mean()-Z                     | numeric |
|fBodyAcc-std()-X                      | numeric |
|fBodyAcc-std()-Y                      | numeric |
|fBodyAcc-std()-Z                      | numeric |
|fBodyAcc-mad()-X                      | numeric |
|fBodyAcc-mad()-Y                      | numeric |
|fBodyAcc-mad()-Z                      | numeric |
|fBodyAcc-max()-X                      | numeric |
|fBodyAcc-max()-Y                      | numeric |
|fBodyAcc-max()-Z                      | numeric |
|fBodyAcc-min()-X                      | numeric |
|fBodyAcc-min()-Y                      | numeric |
|fBodyAcc-min()-Z                      | numeric |
|fBodyAcc-sma()                        | numeric |
|fBodyAcc-energy()-X                   | numeric |
|fBodyAcc-energy()-Y                   | numeric |
|fBodyAcc-energy()-Z                   | numeric |
|fBodyAcc-iqr()-X                      | numeric |
|fBodyAcc-iqr()-Y                      | numeric |
|fBodyAcc-iqr()-Z                      | numeric |
|fBodyAcc-entropy()-X                  | numeric |
|fBodyAcc-entropy()-Y                  | numeric |
|fBodyAcc-entropy()-Z                  | numeric |
|fBodyAcc-maxInds-X                    | numeric |
|fBodyAcc-maxInds-Y                    | numeric |
|fBodyAcc-maxInds-Z                    | numeric |
|fBodyAcc-meanFreq()-X                 | numeric |
|fBodyAcc-meanFreq()-Y                 | numeric |
|fBodyAcc-meanFreq()-Z                 | numeric |
|fBodyAcc-skewness()-X                 | numeric |
|fBodyAcc-kurtosis()-X                 | numeric |
|fBodyAcc-skewness()-Y                 | numeric |
|fBodyAcc-kurtosis()-Y                 | numeric |
|fBodyAcc-skewness()-Z                 | numeric |
|fBodyAcc-kurtosis()-Z                 | numeric |
|fBodyAcc-bandsEnergy()-1,8            | numeric |
|fBodyAcc-bandsEnergy()-9,16           | numeric |
|fBodyAcc-bandsEnergy()-17,24          | numeric |
|fBodyAcc-bandsEnergy()-25,32          | numeric |
|fBodyAcc-bandsEnergy()-33,40          | numeric |
|fBodyAcc-bandsEnergy()-41,48          | numeric |
|fBodyAcc-bandsEnergy()-49,56          | numeric |
|fBodyAcc-bandsEnergy()-57,64          | numeric |
|fBodyAcc-bandsEnergy()-1,16           | numeric |
|fBodyAcc-bandsEnergy()-17,32          | numeric |
|fBodyAcc-bandsEnergy()-33,48          | numeric |
|fBodyAcc-bandsEnergy()-49,64          | numeric |
|fBodyAcc-bandsEnergy()-1,24           | numeric |
|fBodyAcc-bandsEnergy()-25,48          | numeric |
|fBodyAcc-bandsEnergy()-1,8            | numeric |
|fBodyAcc-bandsEnergy()-9,16           | numeric |
|fBodyAcc-bandsEnergy()-17,24          | numeric |
|fBodyAcc-bandsEnergy()-25,32          | numeric |
|fBodyAcc-bandsEnergy()-33,40          | numeric |
|fBodyAcc-bandsEnergy()-41,48          | numeric |
|fBodyAcc-bandsEnergy()-49,56          | numeric |
|fBodyAcc-bandsEnergy()-57,64          | numeric |
|fBodyAcc-bandsEnergy()-1,16           | numeric |
|fBodyAcc-bandsEnergy()-17,32          | numeric |
|fBodyAcc-bandsEnergy()-33,48          | numeric |
|fBodyAcc-bandsEnergy()-49,64          | numeric |
|fBodyAcc-bandsEnergy()-1,24           | numeric |
|fBodyAcc-bandsEnergy()-25,48          | numeric |
|fBodyAcc-bandsEnergy()-1,8            | numeric |
|fBodyAcc-bandsEnergy()-9,16           | numeric |
|fBodyAcc-bandsEnergy()-17,24          | numeric |
|fBodyAcc-bandsEnergy()-25,32          | numeric |
|fBodyAcc-bandsEnergy()-33,40          | numeric |
|fBodyAcc-bandsEnergy()-41,48          | numeric |
|fBodyAcc-bandsEnergy()-49,56          | numeric |
|fBodyAcc-bandsEnergy()-57,64          | numeric |
|fBodyAcc-bandsEnergy()-1,16           | numeric |
|fBodyAcc-bandsEnergy()-17,32          | numeric |
|fBodyAcc-bandsEnergy()-33,48          | numeric |
|fBodyAcc-bandsEnergy()-49,64          | numeric |
|fBodyAcc-bandsEnergy()-1,24           | numeric |
|fBodyAcc-bandsEnergy()-25,48          | numeric |
|fBodyAccJerk-mean()-X                 | numeric |
|fBodyAccJerk-mean()-Y                 | numeric |
|fBodyAccJerk-mean()-Z                 | numeric |
|fBodyAccJerk-std()-X                  | numeric |
|fBodyAccJerk-std()-Y                  | numeric |
|fBodyAccJerk-std()-Z                  | numeric |
|fBodyAccJerk-mad()-X                  | numeric |
|fBodyAccJerk-mad()-Y                  | numeric |
|fBodyAccJerk-mad()-Z                  | numeric |
|fBodyAccJerk-max()-X                  | numeric |
|fBodyAccJerk-max()-Y                  | numeric |
|fBodyAccJerk-max()-Z                  | numeric |
|fBodyAccJerk-min()-X                  | numeric |
|fBodyAccJerk-min()-Y                  | numeric |
|fBodyAccJerk-min()-Z                  | numeric |
|fBodyAccJerk-sma()                    | numeric |
|fBodyAccJerk-energy()-X               | numeric |
|fBodyAccJerk-energy()-Y               | numeric |
|fBodyAccJerk-energy()-Z               | numeric |
|fBodyAccJerk-iqr()-X                  | numeric |
|fBodyAccJerk-iqr()-Y                  | numeric |
|fBodyAccJerk-iqr()-Z                  | numeric |
|fBodyAccJerk-entropy()-X              | numeric |
|fBodyAccJerk-entropy()-Y              | numeric |
|fBodyAccJerk-entropy()-Z              | numeric |
|fBodyAccJerk-maxInds-X                | numeric |
|fBodyAccJerk-maxInds-Y                | numeric |
|fBodyAccJerk-maxInds-Z                | numeric |
|fBodyAccJerk-meanFreq()-X             | numeric |
|fBodyAccJerk-meanFreq()-Y             | numeric |
|fBodyAccJerk-meanFreq()-Z             | numeric |
|fBodyAccJerk-skewness()-X             | numeric |
|fBodyAccJerk-kurtosis()-X             | numeric |
|fBodyAccJerk-skewness()-Y             | numeric |
|fBodyAccJerk-kurtosis()-Y             | numeric |
|fBodyAccJerk-skewness()-Z             | numeric |
|fBodyAccJerk-kurtosis()-Z             | numeric |
|fBodyAccJerk-bandsEnergy()-1,8        | numeric |
|fBodyAccJerk-bandsEnergy()-9,16       | numeric |
|fBodyAccJerk-bandsEnergy()-17,24      | numeric |
|fBodyAccJerk-bandsEnergy()-25,32      | numeric |
|fBodyAccJerk-bandsEnergy()-33,40      | numeric |
|fBodyAccJerk-bandsEnergy()-41,48      | numeric |
|fBodyAccJerk-bandsEnergy()-49,56      | numeric |
|fBodyAccJerk-bandsEnergy()-57,64      | numeric |
|fBodyAccJerk-bandsEnergy()-1,16       | numeric |
|fBodyAccJerk-bandsEnergy()-17,32      | numeric |
|fBodyAccJerk-bandsEnergy()-33,48      | numeric |
|fBodyAccJerk-bandsEnergy()-49,64      | numeric |
|fBodyAccJerk-bandsEnergy()-1,24       | numeric |
|fBodyAccJerk-bandsEnergy()-25,48      | numeric |
|fBodyAccJerk-bandsEnergy()-1,8        | numeric |
|fBodyAccJerk-bandsEnergy()-9,16       | numeric |
|fBodyAccJerk-bandsEnergy()-17,24      | numeric |
|fBodyAccJerk-bandsEnergy()-25,32      | numeric |
|fBodyAccJerk-bandsEnergy()-33,40      | numeric |
|fBodyAccJerk-bandsEnergy()-41,48      | numeric |
|fBodyAccJerk-bandsEnergy()-49,56      | numeric |
|fBodyAccJerk-bandsEnergy()-57,64      | numeric |
|fBodyAccJerk-bandsEnergy()-1,16       | numeric |
|fBodyAccJerk-bandsEnergy()-17,32      | numeric |
|fBodyAccJerk-bandsEnergy()-33,48      | numeric |
|fBodyAccJerk-bandsEnergy()-49,64      | numeric |
|fBodyAccJerk-bandsEnergy()-1,24       | numeric |
|fBodyAccJerk-bandsEnergy()-25,48      | numeric |
|fBodyAccJerk-bandsEnergy()-1,8        | numeric |
|fBodyAccJerk-bandsEnergy()-9,16       | numeric |
|fBodyAccJerk-bandsEnergy()-17,24      | numeric |
|fBodyAccJerk-bandsEnergy()-25,32      | numeric |
|fBodyAccJerk-bandsEnergy()-33,40      | numeric |
|fBodyAccJerk-bandsEnergy()-41,48      | numeric |
|fBodyAccJerk-bandsEnergy()-49,56      | numeric |
|fBodyAccJerk-bandsEnergy()-57,64      | numeric |
|fBodyAccJerk-bandsEnergy()-1,16       | numeric |
|fBodyAccJerk-bandsEnergy()-17,32      | numeric |
|fBodyAccJerk-bandsEnergy()-33,48      | numeric |
|fBodyAccJerk-bandsEnergy()-49,64      | numeric |
|fBodyAccJerk-bandsEnergy()-1,24       | numeric |
|fBodyAccJerk-bandsEnergy()-25,48      | numeric |
|fBodyGyro-mean()-X                    | numeric |
|fBodyGyro-mean()-Y                    | numeric |
|fBodyGyro-mean()-Z                    | numeric |
|fBodyGyro-std()-X                     | numeric |
|fBodyGyro-std()-Y                     | numeric |
|fBodyGyro-std()-Z                     | numeric |
|fBodyGyro-mad()-X                     | numeric |
|fBodyGyro-mad()-Y                     | numeric |
|fBodyGyro-mad()-Z                     | numeric |
|fBodyGyro-max()-X                     | numeric |
|fBodyGyro-max()-Y                     | numeric |
|fBodyGyro-max()-Z                     | numeric |
|fBodyGyro-min()-X                     | numeric |
|fBodyGyro-min()-Y                     | numeric |
|fBodyGyro-min()-Z                     | numeric |
|fBodyGyro-sma()                       | numeric |
|fBodyGyro-energy()-X                  | numeric |
|fBodyGyro-energy()-Y                  | numeric |
|fBodyGyro-energy()-Z                  | numeric |
|fBodyGyro-iqr()-X                     | numeric |
|fBodyGyro-iqr()-Y                     | numeric |
|fBodyGyro-iqr()-Z                     | numeric |
|fBodyGyro-entropy()-X                 | numeric |
|fBodyGyro-entropy()-Y                 | numeric |
|fBodyGyro-entropy()-Z                 | numeric |
|fBodyGyro-maxInds-X                   | numeric |
|fBodyGyro-maxInds-Y                   | numeric |
|fBodyGyro-maxInds-Z                   | numeric |
|fBodyGyro-meanFreq()-X                | numeric |
|fBodyGyro-meanFreq()-Y                | numeric |
|fBodyGyro-meanFreq()-Z                | numeric |
|fBodyGyro-skewness()-X                | numeric |
|fBodyGyro-kurtosis()-X                | numeric |
|fBodyGyro-skewness()-Y                | numeric |
|fBodyGyro-kurtosis()-Y                | numeric |
|fBodyGyro-skewness()-Z                | numeric |
|fBodyGyro-kurtosis()-Z                | numeric |
|fBodyGyro-bandsEnergy()-1,8           | numeric |
|fBodyGyro-bandsEnergy()-9,16          | numeric |
|fBodyGyro-bandsEnergy()-17,24         | numeric |
|fBodyGyro-bandsEnergy()-25,32         | numeric |
|fBodyGyro-bandsEnergy()-33,40         | numeric |
|fBodyGyro-bandsEnergy()-41,48         | numeric |
|fBodyGyro-bandsEnergy()-49,56         | numeric |
|fBodyGyro-bandsEnergy()-57,64         | numeric |
|fBodyGyro-bandsEnergy()-1,16          | numeric |
|fBodyGyro-bandsEnergy()-17,32         | numeric |
|fBodyGyro-bandsEnergy()-33,48         | numeric |
|fBodyGyro-bandsEnergy()-49,64         | numeric |
|fBodyGyro-bandsEnergy()-1,24          | numeric |
|fBodyGyro-bandsEnergy()-25,48         | numeric |
|fBodyGyro-bandsEnergy()-1,8           | numeric |
|fBodyGyro-bandsEnergy()-9,16          | numeric |
|fBodyGyro-bandsEnergy()-17,24         | numeric |
|fBodyGyro-bandsEnergy()-25,32         | numeric |
|fBodyGyro-bandsEnergy()-33,40         | numeric |
|fBodyGyro-bandsEnergy()-41,48         | numeric |
|fBodyGyro-bandsEnergy()-49,56         | numeric |
|fBodyGyro-bandsEnergy()-57,64         | numeric |
|fBodyGyro-bandsEnergy()-1,16          | numeric |
|fBodyGyro-bandsEnergy()-17,32         | numeric |
|fBodyGyro-bandsEnergy()-33,48         | numeric |
|fBodyGyro-bandsEnergy()-49,64         | numeric |
|fBodyGyro-bandsEnergy()-1,24          | numeric |
|fBodyGyro-bandsEnergy()-25,48         | numeric |
|fBodyGyro-bandsEnergy()-1,8           | numeric |
|fBodyGyro-bandsEnergy()-9,16          | numeric |
|fBodyGyro-bandsEnergy()-17,24         | numeric |
|fBodyGyro-bandsEnergy()-25,32         | numeric |
|fBodyGyro-bandsEnergy()-33,40         | numeric |
|fBodyGyro-bandsEnergy()-41,48         | numeric |
|fBodyGyro-bandsEnergy()-49,56         | numeric |
|fBodyGyro-bandsEnergy()-57,64         | numeric |
|fBodyGyro-bandsEnergy()-1,16          | numeric |
|fBodyGyro-bandsEnergy()-17,32         | numeric |
|fBodyGyro-bandsEnergy()-33,48         | numeric |
|fBodyGyro-bandsEnergy()-49,64         | numeric |
|fBodyGyro-bandsEnergy()-1,24          | numeric |
|fBodyGyro-bandsEnergy()-25,48         | numeric |
|fBodyAccMag-mean()                    | numeric |
|fBodyAccMag-std()                     | numeric |
|fBodyAccMag-mad()                     | numeric |
|fBodyAccMag-max()                     | numeric |
|fBodyAccMag-min()                     | numeric |
|fBodyAccMag-sma()                     | numeric |
|fBodyAccMag-energy()                  | numeric |
|fBodyAccMag-iqr()                     | numeric |
|fBodyAccMag-entropy()                 | numeric |
|fBodyAccMag-maxInds                   | numeric |
|fBodyAccMag-meanFreq()                | numeric |
|fBodyAccMag-skewness()                | numeric |
|fBodyAccMag-kurtosis()                | numeric |
|fBodyBodyAccJerkMag-mean()            | numeric |
|fBodyBodyAccJerkMag-std()             | numeric |
|fBodyBodyAccJerkMag-mad()             | numeric |
|fBodyBodyAccJerkMag-max()             | numeric |
|fBodyBodyAccJerkMag-min()             | numeric |
|fBodyBodyAccJerkMag-sma()             | numeric |
|fBodyBodyAccJerkMag-energy()          | numeric |
|fBodyBodyAccJerkMag-iqr()             | numeric |
|fBodyBodyAccJerkMag-entropy()         | numeric |
|fBodyBodyAccJerkMag-maxInds           | numeric |
|fBodyBodyAccJerkMag-meanFreq()        | numeric |
|fBodyBodyAccJerkMag-skewness()        | numeric |
|fBodyBodyAccJerkMag-kurtosis()        | numeric |
|fBodyBodyGyroMag-mean()               | numeric |
|fBodyBodyGyroMag-std()                | numeric |
|fBodyBodyGyroMag-mad()                | numeric |
|fBodyBodyGyroMag-max()                | numeric |
|fBodyBodyGyroMag-min()                | numeric |
|fBodyBodyGyroMag-sma()                | numeric |
|fBodyBodyGyroMag-energy()             | numeric |
|fBodyBodyGyroMag-iqr()                | numeric |
|fBodyBodyGyroMag-entropy()            | numeric |
|fBodyBodyGyroMag-maxInds              | numeric |
|fBodyBodyGyroMag-meanFreq()           | numeric |
|fBodyBodyGyroMag-skewness()           | numeric |
|fBodyBodyGyroMag-kurtosis()           | numeric |
|fBodyBodyGyroJerkMag-mean()           | numeric |
|fBodyBodyGyroJerkMag-std()            | numeric |
|fBodyBodyGyroJerkMag-mad()            | numeric |
|fBodyBodyGyroJerkMag-max()            | numeric |
|fBodyBodyGyroJerkMag-min()            | numeric |
|fBodyBodyGyroJerkMag-sma()            | numeric |
|fBodyBodyGyroJerkMag-energy()         | numeric |
|fBodyBodyGyroJerkMag-iqr()            | numeric |
|fBodyBodyGyroJerkMag-entropy()        | numeric |
|fBodyBodyGyroJerkMag-maxInds          | numeric |
|fBodyBodyGyroJerkMag-meanFreq()       | numeric |
|fBodyBodyGyroJerkMag-skewness()       | numeric |
|fBodyBodyGyroJerkMag-kurtosis()       | numeric |
|angle(tBodyAccMean,gravity)           | numeric |
|angle(tBodyAccJerkMean),gravityMean)  | numeric |
|angle(tBodyGyroMean,gravityMean)      | numeric |
|angle(tBodyGyroJerkMean,gravityMean)  | numeric |
|angle(X,gravityMean)                  | numeric |
|angle(Y,gravityMean)                  | numeric |
|angle(Z,gravityMean)                  | numeric |


### Interim Files

### testHAR / trainHAR / dataHAR

Result from binding columns of the testHAR and trainHAR datasets *(only the std() and mean() measurements are included in these files -- this data was removed from the xtest and ytest earlier in run_analysis.R -- see README.md for details)*

##### Dimensions:

|Feature                 |   Result|
|------------------------|---------|
|Number of observations  |    10299|
|Number of variables     |       81|
*(7352 for trainHAR, 2947 for testHAR)*
##### Summary Table:

|Variable                       | Class     |                           
|-------------------------------|-----------|
|subjectID                      | integer   |
|activityCode                   | integer   |
|tBodyAcc-mean()-X              | numeric   |
|tBodyAcc-mean()-Y              | numeric   |
|tBodyAcc-mean()-Z              | numeric   |
|tBodyAcc-std()-X               | numeric   |
|tBodyAcc-std()-Y               | numeric   |
|tBodyAcc-std()-Z               | numeric   |
|tGravityAcc-mean()-X           | numeric   |
|tGravityAcc-mean()-Y           | numeric   |
|tGravityAcc-mean()-Z           | numeric   |
|tGravityAcc-std()-X            | numeric   |
|tGravityAcc-std()-Y            | numeric   |
|tGravityAcc-std()-Z            | numeric   |
|tBodyAccJerk-mean()-X          | numeric   |
|tBodyAccJerk-mean()-Y          | numeric   |
|tBodyAccJerk-mean()-Z          | numeric   |
|tBodyAccJerk-std()-X           | numeric   |
|tBodyAccJerk-std()-Y           | numeric   |
|tBodyAccJerk-std()-Z           | numeric   |
|tBodyGyro-mean()-X             | numeric   |
|tBodyGyro-mean()-Y             | numeric   |
|tBodyGyro-mean()-Z             | numeric   |
|tBodyGyro-std()-X              | numeric   |
|tBodyGyro-std()-Y              | numeric   |
|tBodyGyro-std()-Z              | numeric   |
|tBodyGyroJerk-mean()-X         | numeric   |
|tBodyGyroJerk-mean()-Y         | numeric   |
|tBodyGyroJerk-mean()-Z         | numeric   |
|tBodyGyroJerk-std()-X          | numeric   |
|tBodyGyroJerk-std()-Y          | numeric   |
|tBodyGyroJerk-std()-Z          | numeric   |
|tBodyAccMag-mean()             | numeric   |
|tBodyAccMag-std()              | numeric   |
|tGravityAccMag-mean()          | numeric   |
|tGravityAccMag-std()           | numeric   |
|tBodyAccJerkMag-mean()         | numeric   |
|tBodyAccJerkMag-std()          | numeric   |
|tBodyGyroMag-mean()            | numeric   |
|tBodyGyroMag-std()             | numeric   |
|tBodyGyroJerkMag-mean()        | numeric   |
|tBodyGyroJerkMag-std()         | numeric   |
|fBodyAcc-mean()-X              | numeric   |
|fBodyAcc-mean()-Y              | numeric   |
|fBodyAcc-mean()-Z              | numeric   |
|fBodyAcc-std()-X               | numeric   |
|fBodyAcc-std()-Y               | numeric   |
|fBodyAcc-std()-Z               | numeric   |
|fBodyAcc-meanFreq()-X          | numeric   |
|fBodyAcc-meanFreq()-Y          | numeric   |
|fBodyAcc-meanFreq()-Z          | numeric   |
|fBodyAccJerk-mean()-X          | numeric   |
|fBodyAccJerk-mean()-Y          | numeric   |
|fBodyAccJerk-mean()-Z          | numeric   |
|fBodyAccJerk-std()-X           | numeric   |
|fBodyAccJerk-std()-Y           | numeric   |
|fBodyAccJerk-std()-Z           | numeric   |
|fBodyAccJerk-meanFreq()-X      | numeric   |
|fBodyAccJerk-meanFreq()-Y      | numeric   |
|fBodyAccJerk-meanFreq()-Z      | numeric   |
|fBodyGyro-mean()-X             | numeric   |
|fBodyGyro-mean()-Y             | numeric   |
|fBodyGyro-mean()-Z             | numeric   |
|fBodyGyro-std()-X              | numeric   |
|fBodyGyro-std()-Y              | numeric   |
|fBodyGyro-std()-Z              | numeric   |
|fBodyGyro-meanFreq()-X         | numeric   |
|fBodyGyro-meanFreq()-Y         | numeric   |
|fBodyGyro-meanFreq()-Z         | numeric   |
|fBodyAccMag-mean()             | numeric   |
|fBodyAccMag-std()              | numeric   |
|fBodyAccMag-meanFreq()         | numeric   |
|fBodyBodyAccJerkMag-mean()     | numeric   |
|fBodyBodyAccJerkMag-std()      | numeric   |
|fBodyBodyAccJerkMag-meanFreq() | numeric   |
|fBodyBodyGyroMag-mean()        | numeric   |
|fBodyBodyGyroMag-std()         | numeric   |
|fBodyBodyGyroMag-meanFreq()    | numeric   |
|fBodyBodyGyroJerkMag-mean()    | numeric   |
|fBodyBodyGyroJerkMag-std()     | numeric   |
|fBodyBodyGyroJerkMag-meanFreq()| numeric   |

### meltHAR

##### Dimensions:

|Feature                 |   Result|
|------------------------|---------|
|Number of observations  |  813621 |
|Number of variables     |       4 |


#### Summary Table:
|Variable              | Class     |                           
|----------------------|-----------|
|subjectID             | integer   |
|activityCode          | integer   |
|variable              | factor    |                
|value                 | numeric   |


##### tidyHARprep

This data set has the same layout as the final file **tidyHAR** the only differences are in the field names which were modified for final output. The change that were made are:

1. All fields that start with |fBodyBody** where modified to fBody**, the fields affected are:

* |fBodyBodyAccJerkMag-std()                        
* |fBodyBodyAccJerkMag-meanFreq()                 
* |fBodyBodyGyroMag-mean()                         
* |fBodyBodyGyroMag-std()                         
* |fBodyBodyGyroMag-meanFreq()                      
* |fBodyBodyGyroJerkMag-mean()                     
* |fBodyBodyGyroJerkMag-std()                    
* |fBodyBodyGyroJerkMag-meanFreq()   

2. All data fields were modified to add the verbiage **Average-** at the beginning. *(see summary for tidyHAR below)*

### tidyHAR
The final clean data set

##### Dimensions:

Feature                  |   Result|
|------------------------|---------|
|Number of observations  |     180 |
|Number of variables     |      82 |


##### Summary Table::

|Variable                           | Class     |
|-----------------------------------|-----------|
|subjectID                          | integer   |
|activityCode                       | integer   |
|activity                           | character |
|Average-tBodyAcc-mean-X            | numeric   |
|Average-tBodyAcc-mean-Y            | numeric   |
|Average-tBodyAcc-mean-Z            | numeric   |
|Average-tBodyAcc-std-X             | numeric   |
|Average-tBodyAcc-std-Y             | numeric   |
|Average-tBodyAcc-std-Z             | numeric   |
|Average-tGravityAcc-mean-X         | numeric   |
|Average-tGravityAcc-mean-Y         | numeric   |
|Average-tGravityAcc-mean-Z         | numeric   |
|Average-tGravityAcc-std-X          | numeric   |
|Average-tGravityAcc-std-Y          | numeric   |
|Average-tGravityAcc-std-Z          | numeric   |
|Average-tBodyAccJerk-mean-X        | numeric   |
|Average-tBodyAccJerk-mean-Y        | numeric   |
|Average-tBodyAccJerk-mean-Z        | numeric   |
|Average-tBodyAccJerk-std-X         | numeric   |
|Average-tBodyAccJerk-std-Y         | numeric   |
|Average-tBodyAccJerk-std-Z         | numeric   |
|Average-tBodyGyro-mean-X           | numeric   |
|Average-tBodyGyro-mean-Y           | numeric   |
|Average-tBodyGyro-mean-Z           | numeric   |
|Average-tBodyGyro-std-X            | numeric   |
|Average-tBodyGyro-std-Y            | numeric   |
|Average-tBodyGyro-std-Z            | numeric   |
|Average-tBodyGyroJerk-mean-X       | numeric   |
|Average-tBodyGyroJerk-mean-Y       | numeric   |
|Average-tBodyGyroJerk-mean-Z       | numeric   |
|Average-tBodyGyroJerk-std-X        | numeric   |
|Average-tBodyGyroJerk-std-Y        | numeric   |
|Average-tBodyGyroJerk-std-Z        | numeric   |
|Average-tBodyAccMag-mean           | numeric   |
|Average-tBodyAccMag-std            | numeric   |
|Average-tGravityAccMag-mean        | numeric   |
|Average-tGravityAccMag-std         | numeric   |
|Average-tBodyAccJerkMag-mean       | numeric   |
|Average-tBodyAccJerkMag-std        | numeric   |
|Average-tBodyGyroMag-mean          | numeric   |
|Average-tBodyGyroMag-std           | numeric   |
|Average-tBodyGyroJerkMag-mean      | numeric   |
|Average-tBodyGyroJerkMag-std       | numeric   |
|Average-fBody Acc-mean-X           | numeric   |
|Average-fBody Acc-mean-Y           | numeric   |
|Average-fBody Acc-mean-Z           | numeric   |
|Average-fBody Acc-std-X            | numeric   |
|Average-fBody Acc-std-Y            | numeric   |
|Average-fBody Acc-std-Z            | numeric   |
|Average-fBody Acc-meanFreq-X       | numeric   |
|Average-fBody Acc-meanFreq-Y       | numeric   |
|Average-fBody Acc-meanFreq-Z       | numeric   |
|Average-fBody AccJerk-mean-X       | numeric   |
|Average-fBody AccJerk-mean-Y       | numeric   |
|Average-fBody AccJerk-mean-Z       | numeric   |
|Average-fBody AccJerk-std-X        | numeric   |
|Average-fBody AccJerk-std-Y        | numeric   |
|Average-fBody AccJerk-std-Z        | numeric   |
|Average-fBody AccJerk-meanFreq-X   | numeric   |
|Average-fBody AccJerk-meanFreq-Y   | numeric   |
|Average-fBody AccJerk-meanFreq-Z   | numeric   |
|Average-fBody Gyro-mean-X          | numeric   |
|Average-fBody Gyro-mean-Y          | numeric   |
|Average-fBody Gyro-mean-Z          | numeric   |
|Average-fBody Gyro-std-X           | numeric   |
|Average-fBody Gyro-std-Y           | numeric   |
|Average-fBody Gyro-std-Z           | numeric   |
|Average-fBody Gyro-meanFreq-X      | numeric   |
|Average-fBody Gyro-meanFreq-Y      | numeric   |
|Average-fBody Gyro-meanFreq-Z      | numeric   |
|Average-fBody AccMag-mean          | numeric   |
|Average-fBody AccMag-std           | numeric   |
|Average-fBody AccMag-meanFreq      | numeric   |
|Average-fBody AccJerkMag-mean      | numeric   |
|Average-fBody AccJerkMag-std       | numeric   |
|Average-fBody AccJerkMag-meanFreq  | numeric   |
|Average-fBody GyroMag-mean         | numeric   |
|Average-fBody GyroMag-std          | numeric   |
|Average-fBody GyroMag-meanFreq     | numeric   |
|Average-fBody GyroJerkMag-mean     | numeric   |
|Average-fBody GyroJerkMag-std      | numeric   |
|Average-fBody GyroJerkMag-meanFreq | numeric   |


### Acknowledgments

* makeCodebook from the package dataMaid was used to create part of this CodeBook
* [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
