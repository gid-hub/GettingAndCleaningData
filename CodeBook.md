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

