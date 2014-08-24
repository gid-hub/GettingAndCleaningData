CodeBook
========

The dataset includes the following files:
-----------------------------------------

* averages.txt: Shows subject number, activity, and averages of all mean and
  standard deviation columns of all measurements.



The source of the data
----------------------

The dataset is derived from another dataset retrieved from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 



How the dataset was derived
---------------------------

The dataset can be produced using the script run_analysis.R. Refer to README.md
for more details about the script.



Variables of the dataset
------------------------

* subject: Subject number
* activity: Activity name

The variables below came from the original dataset. Refer to the original
dataset's code book for more details.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag

Notes:

* Each value is the average of all measurements taken for that particular subject,
activity, and signal.
* '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* '-mean()' is used to denote mean value.
* '-std()' is used to denote standard devitaion.



Signal descriptions from the original dataset
---------------------------------------------

The descriptions below are reproduced from the code book of the original
dataset for your convenience. Refer to the original code book for the most up
to date description and other variables not included in this dataset.

> The features selected for this database come from the accelerometer and
> gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
> signals (prefix 't' to denote time) were captured at a constant rate of 50
> Hz. Then they were filtered using a median filter and a 3rd order low pass
> Butterworth filter with a corner frequency of 20 Hz to remove noise.
> Similarly, the acceleration signal was then separated into body and gravity
> acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low
> pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived
> in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also
> the magnitude of these three-dimensional signals were calculated using the
> Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
> tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals
> producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
> fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain
> signals). 


