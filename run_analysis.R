library('dplyr')
library('tidyr')
getwd()
# All the files to be used were put in one working directory
setwd("C:/Users/Udit.Ranjan/Desktop/Practise/Getting and Cleanng Data Assignment/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/Final Data Prep")

#reading training data
traindata <- read.table("X_train.txt") # data
trainlabel <- read.table("y_train.txt") # activity_labels
subject_train <- read.table("subject_train.txt") # subject_IDs


#reading test data 
testdata <- read.table("X_test.txt") # data
testlabel <- read.table("y_test.txt") # activity_labels
subject_test <- read.table("subject_test.txt") # subject_IDs


#reading activity and feature details
activity<-read.table("activity_labels.txt")
featurenames <- read.table("features.txt")

#assigning the featurenames to the columns in training and test data sets
colnames(traindata) <- featurenames[,2]
colnames(testdata) <- featurenames[,2]

#assigning columnnames to activity labels and subject IDs
colnames(testlabel) <- "activity_ID"
colnames(trainlabel) <- "activity_ID"

colnames(subject_train) <- "subject_ID"
colnames(subject_test) <- "subject_ID"

colnames(activity) <- c("activity_ID", "activity_name")

# preparing train data set
traindata_f <- cbind( subject_train, trainlabel, traindata)

# preparing test data set
testdata_f <- cbind( subject_test, testlabel, testdata)

# merging train and test data set
data_merge <- rbind(traindata_f, testdata_f)

VarNames <- colnames(data_merge)

# extracting columns with mean and standard deviation values
mean_std <- (   grepl("activity_ID" , VarNames) | 
                    grepl("subject_ID" , VarNames) |
                    grepl("mean.." , VarNames) | 
                    grepl("std.." , VarNames) 
)

# subsetting dataframe with only mean and standard deviation values
data_f <- data_merge[, mean_std] 

# assigning activity names to each activity ID
data_f2 <- merge(data_f, activity, by='activity_ID', all.x = TRUE)

# expanding abbreviations and cleaning up names
VarNames <- colnames(data_f2)

VarNames <- gsub("^f", "frequencyDomain", VarNames)
VarNames <- gsub("^t", "timeDomain", VarNames)
VarNames <- gsub("Acc", "Accelerometer", VarNames)
VarNames <- gsub("Gyro", "Gyroscope", VarNames)
VarNames <- gsub("Mag", "Magnitude", VarNames)
VarNames<- gsub("Freq", "Frequency", VarNames)
VarNames <- gsub("mean", "Mean", VarNames)
VarNames <- gsub("std", "StandardDeviation", VarNames)
VarNames <- gsub("BodyBody", "Body", VarNames)

colnames(data_f2) <- VarNames

# reordering columns so that activity names show as 3rd column
data_f3 <- data_f2[,c(1,2,82,3:81)]

   
# grouping data by subject_ID and activity_ID
data_group <- group_by(data_f3, subject_ID, activity_ID, activity_name)

#obtaining the average of each variable for each activity and each subject
tidydata <- summarise_all(data_group, mean)

#writing the final data into text file
write.table(tidydata, "tidydata.txt", row.names = FALSE)

              
