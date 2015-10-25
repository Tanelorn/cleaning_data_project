# Code Book

This file describes the variables, data, and any transformations or work that you performed to clean up the data used in the Project of the course "Getting and cleaning data" of Coursera. This file was prepared by Miguel Romance del Rio.

## Raw Data Colletion

The Raw data for this project were obtained from UCI Machine Learning repository given in the description of the Project of the course "Getting and cleaning data" (John Hopkings University, Coursera).

### Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING PSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record in the dataset it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

## Tidy data set

This is the data set produced by our analysis and it conains the average of each variable for each activity and each subject. The data is obtained in txt format (tidy.txt) and CSV (tidy.csv).

### Variables included

The tidy data set, either in the txt file (tidy.txt) and CSV (tidy.csv) , contains:

* an identifier of the subject who carried out the experiment (Subject). Its range is from 1 to 30.
* an activity label (Activity): WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING.
* mean of all other variables are measurement collected from the accelerometer and gyroscope 3-axial raw signal (numeric value).

The variable name convention is like the following:

* measurement: the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable: gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean,tBodyGyroJerkMean.

* .mean/std: mean or standard deviation of the measurement

* .X/Y/Z: one direction of a 3-axial signal
* .mean: global mean value