# Getting-and-Cleaning-Data-Programming-Assignment

Human Activity Recognition Using Smartphones Dataset
==================================================================
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

Experiment Details
==================================================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Attribute Information
==================================================================
For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

How the script works
==================================================================
The task was to merge training and test data to create one data set and extract the measurements on the mean and standard deviation for each measurement. The final data "tidydata.txt" set was created by calculating the average of the mean and standar deviation measurements for each activity and each subject through following steps:
Training and tests data measurements were first merged with respective activity id, subject id and measurement names.
Both the data sets were merged to create one dataset
The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement
Activity name was added against each activity identifier
Descriptive variable names were given to each variable by replacing:
"^f" by "frequencyDomain"
"^t" by "timeDomain"
"Acc" by "Accelerometer"
"Gyro" by "Gyroscope"
"Mag" by "Magnitude"
"Freq" by "Frequency"
"mean" by "Mean"
"std" by "StandardDeviation"
"BodyBody" by "Body"
The average of the mean and standar deviation measurements for each activity and each subject to arrive at the final data file "tidydata.txt"

---- All the steps are explained through comments in the run_analysis.R file
