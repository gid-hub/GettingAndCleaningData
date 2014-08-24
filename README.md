GettingAndCleaningData
======================

Repository for Course Project for Getting and Cleaning Data on Coursera



How to run the script
---------------------

* The script is called run_analysis.R

* The data file for the script is
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* The data file should be unzipped into a folder.

* Before running the script in R GUI / R Studio, change the working directory to
  the "UCI HAR Dataset" folder of the unzipped data file, where the README.txt
  file is located.

* When the script is run, it will write the "tidy data set" to a file called
  "averages.txt" in the working directory.



How the script works
--------------------

* Step 1: To merge the training data and the test data, rbind() is used. The
  merged data is stored in a variable called merged_data.

* Step 2: To extract only the means and the standard deviations, grepl() is used
  to find feature names in features.txt that contain "-mean(" or "-std(". The
  extracted data is stored in a variable called mean_std_data.

* Step 3: To add descriptive activity names, merge() is used to join activity
  codes from y_train.txt and y_test.txt with activity names from
  activity_labels.txt, then cbind() is used to add the resulting column to the
  data. The combined data is stored in data_with_activity_names.

* Step 4: To add descriptive variable names, names() is used to change the
  column names of data_with_activity_names with the word "activity" and the
  feature names from features.txt that contain "-mean(" or "-std(" from Step 2
  above.

* Step 5: To create the tidy data set, for() loops are used to process each
  subject and activity and colMeans() is used to find the mean of each column.
  The result is accumulated in a variable called tidy_data, and after the loops
  end names() is used to change the column names. Finally, tidy_data is written
  to a file called averages.txt.
