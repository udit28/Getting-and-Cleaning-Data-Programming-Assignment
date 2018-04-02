# Getting-and-Cleaning-Data-Programming-Assignment

Available Datasets
=================================

All the data for the project can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Variable Details:
=================================
Identifiers:

- subject_ID : Subject identifier (Volunteer), integer, range : 1 to 30
- activity_ID : Activity identifier for each activity type, integer, range : 1 to 6
- activity_name : Activity name for each activity, string

Average Measurements:

The rest of columns are the average of mean and standard deviations of all the measurements in the frequency and time domain for each subject and activity type

Data Tidying Steps :
=================================
1. Training and tests data measurements were first merged with respective activity id, subject id and measurement names. 
2. Both the data sets were merged to create one dataset
3. The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement
4. Activity name was added against each activity identifier
5. Descriptive variable names were given to each variable by replacing:
    -   "^f" by "frequencyDomain"
    -   "^t" by "timeDomain"
    -   "Acc" by "Accelerometer"
    -   "Gyro" by "Gyroscope"
    -   "Mag" by "Magnitude"
    -   "Freq" by "Frequency"
    -   "mean" by "Mean"
    -   "std" by "StandardDeviation"
    -   "BodyBody" by "Body"
6. The average of the mean and standar deviation measurements for each activity and each subject to arrive at the final data file "tidydata.txt"
