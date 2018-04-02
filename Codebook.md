# Getting-and-Cleaning-Data-Programming-Assignment

Available Datasets
=================================

All the data for the project can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Data Tidying Steps :
=================================
- Training and tests data measurements were first merged with respective activity id, subject id and measurement names.
- Both the data sets were merged to create one dataset
- The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement
- Activity name was added against each activity identifier
- Descriptive variable names were given to each variable by replacing:
     -    "^f" by "frequencyDomain"
     -    "^t" by "timeDomain"
     -    "Acc" by "Accelerometer"
     -    "Gyro" by "Gyroscope"
     -    "Mag" by "Magnitude"
     -    "Freq" by "Frequency"
     -    "mean" by "Mean"
     -    "std" by "StandardDeviation"
     -    "BodyBody" by "Body" 
- The average of the mean and standar deviation measurements for each activity and each subject to arrive at the final data file "tidydata.txt"


Variable Details in "Tidydata.txt":
=================================
Identifiers:

- subject_ID : Subject identifier (Volunteer), integer, range : 1 to 30
- activity_ID : Activity identifier for each activity type, integer, range : 1 to 6
- activity_name : Activity name for each activity, string

Average Measurements:

The rest of columns are the average of mean and standard deviations of all the measurements in the frequency and time domain for each subject and activity type:

Average and Standard Deviation of Time Domain Body Acceleration along XYZ axis
- timeDomainBodyAccelerometer-Mean()-X
- timeDomainBodyAccelerometer-Mean()-Y
- timeDomainBodyAccelerometer-Mean()-Z
- timeDomainBodyAccelerometer-StandardDeviation()-X
- timeDomainBodyAccelerometer-StandardDeviation()-Y
- timeDomainBodyAccelerometer-StandardDeviation()-Z

Average and Standard Deviation of Time Domain Gravity Acceleration along XYZ axis
- timeDomainGravityAccelerometer-Mean()-X
- timeDomainGravityAccelerometer-Mean()-Y
- timeDomainGravityAccelerometer-Mean()-Z
- timeDomainGravityAccelerometer-StandardDeviation()-X
- timeDomainGravityAccelerometer-StandardDeviation()-Y
- timeDomainGravityAccelerometer-StandardDeviation()-Z

Average and Standard Deviation of Time Domain Body Acceleration Jerk along XYZ axis
- timeDomainBodyAccelerometerJerk-Mean()-X
- timeDomainBodyAccelerometerJerk-Mean()-Y
- timeDomainBodyAccelerometerJerk-Mean()-Z
- timeDomainBodyAccelerometerJerk-StandardDeviation()-X
- timeDomainBodyAccelerometerJerk-StandardDeviation()-Y
- timeDomainBodyAccelerometerJerk-StandardDeviation()-Z

Average and Standard Deviation of Time Domain Body Angular Velocity along XYZ axis
- timeDomainBodyGyroscope-Mean()-X
- timeDomainBodyGyroscope-Mean()-Y
- timeDomainBodyGyroscope-Mean()-Z
- timeDomainBodyGyroscope-StandardDeviation()-X
- timeDomainBodyGyroscope-StandardDeviation()-Y
- timeDomainBodyGyroscope-StandardDeviation()-Z

Average and Standard Deviation of Time Domain Body Angular Velocity Jerk along XYZ axis
- timeDomainBodyGyroscopeJerk-Mean()-X
- timeDomainBodyGyroscopeJerk-Mean()-Y
- timeDomainBodyGyroscopeJerk-Mean()-Z
- timeDomainBodyGyroscopeJerk-StandardDeviation()-X
- timeDomainBodyGyroscopeJerk-StandardDeviation()-Y
- timeDomainBodyGyroscopeJerk-StandardDeviation()-Z

Average and Standard Deviation of Time Domain Body Accelearation Magnitude 
- timeDomainBodyAccelerometerMagnitude-Mean()
- timeDomainBodyAccelerometerMagnitude-StandardDeviation()

Average and Standard Deviation of Time Domain Gravity Accelearation Magnitude 
- timeDomainGravityAccelerometerMagnitude-Mean()
- timeDomainGravityAccelerometerMagnitude-StandardDeviation()

Average and Standard Deviation of Time Domain Gravity Body Accelearation Jerk Magnitude
- timeDomainBodyAccelerometerJerkMagnitude-Mean()
- timeDomainBodyAccelerometerJerkMagnitude-StandardDeviation()

Average and Standard Deviation of Time Domain Body Angular Velocity Magnitude 
- timeDomainBodyGyroscopeMagnitude-Mean()
- timeDomainBodyGyroscopeMagnitude-StandardDeviation()

Average and Standard Deviation of Time Domain Body Angular Velocity Jerk Magnitude along
- timeDomainBodyGyroscopeJerkMagnitude-Mean()
- timeDomainBodyGyroscopeJerkMagnitude-StandardDeviation()

Average and Standard Deviation of Frequency Domain Body Acceleration along XYZ axix
- frequencyDomainBodyAccelerometer-Mean()-X
- frequencyDomainBodyAccelerometer-Mean()-Y
- frequencyDomainBodyAccelerometer-Mean()-Z
- frequencyDomainBodyAccelerometer-StandardDeviation()-X
- frequencyDomainBodyAccelerometer-StandardDeviation()-Y
- frequencyDomainBodyAccelerometer-StandardDeviation()-Z

Average of Frequency componenet in the Frequency Domain Body Acceleration along XYZ axix
- frequencyDomainBodyAccelerometer-MeanFrequency()-X
- frequencyDomainBodyAccelerometer-MeanFrequency()-Y
- frequencyDomainBodyAccelerometer-MeanFrequency()-Z

Average of Frequency Domain Body Acceleration Jerk along XYZ axix
- frequencyDomainBodyAccelerometerJerk-Mean()-X
- frequencyDomainBodyAccelerometerJerk-Mean()-Y
- frequencyDomainBodyAccelerometerJerk-Mean()-Z

Standard Deviation of Frequency Domain Body Acceleration Jerk along XYZ axix
- frequencyDomainBodyAccelerometerJerk-StandardDeviation()-X
- frequencyDomainBodyAccelerometerJerk-StandardDeviation()-Y
- frequencyDomainBodyAccelerometerJerk-StandardDeviation()-Z

Average of Frequency componenet in the Frequency Domain Body Acceleration Jerk along XYZ axix
- frequencyDomainBodyAccelerometerJerk-MeanFrequency()-X
- frequencyDomainBodyAccelerometerJerk-MeanFrequency()-Y
- frequencyDomainBodyAccelerometerJerk-MeanFrequency()-Z

Average and Standard Deviation of Frequency Domain Angular Velocity along XYZ axix
- frequencyDomainBodyGyroscope-Mean()-X
- frequencyDomainBodyGyroscope-Mean()-Y
- frequencyDomainBodyGyroscope-Mean()-Z
- frequencyDomainBodyGyroscope-StandardDeviation()-X
- frequencyDomainBodyGyroscope-StandardDeviation()-Y
- frequencyDomainBodyGyroscope-StandardDeviation()-Z

Average of Frequency component of Frequency Domain Angular Velocity along XYZ axix
- frequencyDomainBodyGyroscope-MeanFrequency()-X
- frequencyDomainBodyGyroscope-MeanFrequency()-Y
- frequencyDomainBodyGyroscope-MeanFrequency()-Z

Average and Standard Deviation of Frequency Domain Body Acceleration Magniture
- frequencyDomainBodyAccelerometerMagnitude-Mean()
- frequencyDomainBodyAccelerometerMagnitude-StandardDeviation()

Average of Frequency Component of Frequency Domain Acceleration Magnitude
- frequencyDomainBodyAccelerometerMagnitude-MeanFrequency()

Average and Standard Deviation of Frequency Domain Body Acceleration Jerk Magniture
- frequencyDomainBodyAccelerometerJerkMagnitude-Mean()
- frequencyDomainBodyAccelerometerJerkMagnitude-StandardDeviation()

Average of Frequency Component of Frequency Domain Acceleration Jerk Magnitude
- frequencyDomainBodyAccelerometerJerkMagnitude-MeanFrequency()

Average and Standard Deviation of Frequency Domain Angular Velocity Magnitude
- frequencyDomainBodyGyroscopeMagnitude-Mean()
- frequencyDomainBodyGyroscopeMagnitude-StandardDeviation()

Average of Frequency Component of Frequency Domain Angular Velocity Magnitude
-frequencyDomainBodyGyroscopeMagnitude-MeanFrequency()

Average and Standard Deviation of Frequency Domain Angular Velocity Jerk Magnitude
- frequencyDomainBodyGyroscopeJerkMagnitude-Mean()
- frequencyDomainBodyGyroscopeJerkMagnitude-StandardDeviation()

Average of Frequency Component of Frequency Domain Angular Velocity Jerk Magnitude
- frequencyDomainBodyGyroscopeJerkMagnitude-MeanFrequency

