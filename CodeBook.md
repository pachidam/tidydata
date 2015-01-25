## Code Book

This will describe the data used in this project, and the processing required to create the resulting tidy data set.

### Source Data

The data used for this activity is from Human Activity Recognition Using Smartphones Dataset.

The source data for this work is available in the below location 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Overview

The experiments have been carried out with a group of 30 volunteers 
within an age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration 
and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been 
video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, 
where 70% of the volunteers was selected for generating the training data and 30% the test data. 



### Explanation of each file

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.


More information about the files is available in `README.txt`. More information about the features is available in `features_info.txt`.

### Data files that were not used

This analysis was performed using only the files above, and did not use the raw signal data. Therefore, the data files in the "Inertial Signals" folders were ignored.

### Processing steps

Step 1: Read the data
Step 2: Merge Data
Step 3: Identify the Mean and StdDev Columns in data set and Create Factor For Activity
Step 4: Create Tidy Data Set and caculate the Mean
Step 5: Create Tidy Text File
