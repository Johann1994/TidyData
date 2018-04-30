# Codebook 

## Variables

"subject"		person number [1-30]
"activity"		Acitivity (WALKING, WALKING_UPSTAIRS, 						WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
"trainortest"	Comes from which raw data train or test. Only in 				"RunAnalysis.txt"

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals  were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyaccelerometer-XYZ and timeGravityaccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyaccelerometerMag, timeGravityaccelerometerMag, timeBodyaccelerometerJerkMag, timeBodyGyroscopeMag, timeBodyGyroscopeJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequBodyaccelerometer-XYZ, frequBodyaccelerometerJerk-XYZ, frequBodyGyroscope-XYZ, frequBodyaccelerometerJerkMag, frequBodyGyroscopeMag, frequBodyGyroscopeJerkMag. (Note the 'frequ' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Then over this signals where calculating the average or the standard deviation.

"frequbodybodygyroscopejerkmag-std()"
"timebodyaccelerometer-mean()-x-axis"
"timebodyaccelerometer-mean()-y-axis"
"timebodyaccelerometer-mean()-z-axis"
"timebodyaccelerometer-std()-x-axis"
"timebodyaccelerometer-std()-y-axis"
"timebodyaccelerometer-std()-z-axis"
"timegravityaccelerometer-mean()-x-axis"
"timegravityaccelerometer-mean()-y-axis"
"timegravityaccelerometer-mean()-z-axis"
"timegravityaccelerometer-std()-x-axis"
"timegravityaccelerometer-std()-y-axis"
"timegravityaccelerometer-std()-z-axis"
"timebodyaccelerometerjerk-mean()-x-axis"
"timebodyaccelerometerjerk-mean()-y-axis"
"timebodyaccelerometerjerk-mean()-z-axis"
"timebodyaccelerometerjerk-std()-x-axis"
"timebodyaccelerometerjerk-std()-y-axis"
"timebodyaccelerometerjerk-std()-z-axis"
"timebodygyroscope-mean()-x-axis"
"timebodygyroscope-mean()-y-axis"
"timebodygyroscope-mean()-z-axis"
"timebodygyroscope-std()-x-axis"
"timebodygyroscope-std()-y-axis"
"timebodygyroscope-std()-z-axis"
"timebodygyroscopejerk-mean()-x-axis"
"timebodygyroscopejerk-mean()-y-axis"
"timebodygyroscopejerk-mean()-z-axis"
"timebodygyroscopejerk-std()-x-axis"
"timebodygyroscopejerk-std()-y-axis"
"timebodygyroscopejerk-std()-z-axis"
"timebodyaccelerometermag-mean()"
"timebodyaccelerometermag-std()"
"timegravityaccelerometermag-mean()"
"timegravityaccelerometermag-std()"
"timebodyaccelerometerjerkmag-mean()"
"timebodyaccelerometerjerkmag-std()"
"timebodygyroscopemag-mean()"
"timebodygyroscopemag-std()"
"timebodygyroscopejerkmag-mean()"
"timebodygyroscopejerkmag-std()"
"frequbodyaccelerometer-mean()-x-axis"
"frequbodyaccelerometer-mean()-y-axis"
"frequbodyaccelerometer-mean()-z-axis"
"frequbodyaccelerometer-std()-x-axis"
"frequbodyaccelerometer-std()-y-axis"
"frequbodyaccelerometer-std()-z-axis"
"frequbodyaccelerometerjerk-mean()-x-axis"
"frequbodyaccelerometerjerk-mean()-y-axis"
"frequbodyaccelerometerjerk-mean()-z-axis"
"frequbodyaccelerometerjerk-std()-x-axis"
"frequbodyaccelerometerjerk-std()-y-axis"
"frequbodyaccelerometerjerk-std()-z-axis"
"frequbodygyroscope-mean()-x-axis"
"frequbodygyroscope-mean()-y-axis"
"frequbodygyroscope-mean()-z-axis"
"frequbodygyroscope-std()-x-axis"
"frequbodygyroscope-std()-y-axis"
"frequbodygyroscope-std()-z-axis"
"frequbodyaccelerometermag-mean()"
"frequbodyaccelerometermag-std()"
"frequbodybodyaccelerometerjerkmag-mean()"
"frequbodybodyaccelerometerjerkmag-std()"
"frequbodybodygyroscopemag-mean()"
"frequbodybodygyroscopemag-std()"
"frequbodybodygyroscopejerkmag-mean()"

This variables are saved in two data sets. The first one has all the information saved from all the measurings "RunAnalysis.txt" and the second one consists the average from one subject from each activity "MeanRunAnalysis.txt".


## Exporimental study design

The raw data was downloaded from:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The experiments in the raw data have been carried out with a group of 30 persons between 18-48 years. Each person performed six activitities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##	Summary choices

The information saved in the MeanRunAnalysis data set was grouped and then was calculated the average for the subjects for each activity.
