### CodeBook
This is a codebook which describes the contents, structure, and layout of a data collection, any transformations which was performed to clean up the data.

#### Source data
* Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Copy of this data is located in [data](data) directory in this repository

#### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.
Presented tidy dataset includes average indicators values for each activity for each person separately.

#### The Directory Structure
The dataset includes the following files:
* `README.txt` - describes taken action under the rawest data
* `run_analysis.R` - R script, which performs transofmation under the rawest data to present tidy dataset
* `data` - directory with the rawest data from research labaratory

#### The Tidy Data Set Structure
The tidy dataset includes the following variables:
* `subject` - [1; 30] the ordinal number of a person taking the experiment
* `activity` - [WALKING; WALKING_UPSTAIRS; WALKING_DOWNSTAIRS; SITTING; STANDING; LAYING] the type of activity taken by a subject
* `time_body_acceleration_mean_x` - **[-1; 1]** the body mean of time domain signal for accelerator by x axis
* `time_body_acceleration_mean_y` - **[-1; 1]** the body mean of time domain signal for accelerator by y axis
* `time_body_acceleration_mean_z` - **[-1; 1]** the body mean of time domain signal for accelerator by z axis
* `time_body_acceleration_std_x` - **[-1; 1]** the body standard deviation of time domain signal for accelerator by x axis
* `time_body_acceleration_std_y` - **[-1; 1]** the body standard deviation of time domain signal for accelerator by y axis
* `time_body_acceleration_std_z` - **[-1; 1]** the body standard deviation of time domain signal for accelerator by z axis
* `time_gravity_acceleration_mean_x` - **[-1; 1]** the gravity mean of time domain signal for accelerator by x axis
* `time_gravity_acceleration_mean_y` - **[-1; 1]** the gravity mean of time domain signal for accelerator by y axis
* `time_gravity_acceleration_mean_z` - **[-1; 1]** the gravity mean of time domain signal for accelerator by z axis
* `time_gravity_acceleration_std_x` - **[-1; 1]** the gravity standard deviation of time domain signal for accelerator by x axis
* `time_gravity_acceleration_std_y` - **[-1; 1]** the gravity standard deviation of time domain signal for accelerator by y axis
* `time_gravity_acceleration_std_z` - **[-1; 1]** the gravity standard deviation of time domain signal for accelerator by z axis
* `time_body_acceleration_jerk_mean_x` - **[-1; 1]** the jerk signal of body mean of time domain signal for accelerator by x axis
* `time_body_acceleration_jerk_mean_y` - **[-1; 1]** the jerk signal of body mean of time domain signal for accelerator by y axis
* `time_body_acceleration_jerk_mean_z` - **[-1; 1]** the jerk signal of body mean of time domain signal for accelerator by z axis
* `time_body_acceleration_jerk_std_x` - **[-1; 1]** the jerk signal of body standard deviation of time domain signal for accelerator by x axis
* `time_body_acceleration_jerk_std_y` - **[-1; 1]** the jerk signal of body standard deviation of time domain signal for accelerator by y axis
* `time_body_acceleration_jerk_std_z` - **[-1; 1]** the jerk signal of body standard deviation of time domain signal for accelerator by z axis
* `time_body_gyroscope_mean_x` - **[-1; 1]** the body mean of time domain signal for gyroscope by x axis
* `time_body_gyroscope_mean_y` - **[-1; 1]** the body mean of time domain signal for gyroscope by y axis
* `time_body_gyroscope_mean_z` - **[-1; 1]** the body mean of time domain signal for gyroscope by z axis
* `time_body_gyroscope_std_x` - **[-1; 1]** the body standard deviation of time domain signal for gyroscope by x axis
* `time_body_gyroscope_std_y` - **[-1; 1]** the body standard deviation of time domain signal for gyroscope by y axis
* `time_body_gyroscope_std_z` - **[-1; 1]** the body standard deviation of time domain signal for gyroscope by z axis
* `time_body_gyroscope_jerk_mean_x` - **[-1; 1]** the jerk signal of body mean of time domain signal for gyroscope by x axis
* `time_body_gyroscope_jerk_mean_y` - **[-1; 1]** the jerk signal of body mean of time domain signal for gyroscope by y axis
* `time_body_gyroscope_jerk_mean_z` - **[-1; 1]** the jerk signal of body mean of time domain signal for gyroscope by z axis
* `time_body_gyroscope_jerk_std_x` - **[-1; 1]** the jerk signal of body standard deviation of time domain signal for gyroscope by x axis
* `time_body_gyroscope_jerk_std_y` - **[-1; 1]** the jerk signal of body standard deviation of time domain signal for gyroscope by y axis
* `time_body_gyroscope_jerk_std_z` - **[-1; 1]** the jerk signal of body standard deviation of time domain signal for gyroscope by z axis
* `time_body_acceleration_magnitude_mean` - **[-1; 1]** the body magnitude mean of time domain signal for accelerator
* `time_body_acceleration_magnitude_std` - **[-1; 1]** the body magnitude standard deviation of time domain signal for accelerator
* `time_gravity_acceleration_magnitude_mean` - **[-1; 1]** the gravity magnitude mean of time domain signal for accelerator
* `time_gravity_acceleration_magnitude_std` - **[-1; 1]** the gravity magnitude standard deviation of time domain signal for accelerator
* `time_body_acceleration_jerk_magnitude_mean` - **[-1; 1]** the jerk signal of body mean of time domain signal for accelerator
* `time_body_acceleration_jerk_magnitude_std` - **[-1; 1]** the jerk signal of body standard deviation of time domain signal for accelerator
* `time_body_gyroscope_magnitude_mean` - **[-1; 1]** the body magnitude mean of time domain signal for gyroscope
* `time_body_gyroscope_magnitude_std` - **[-1; 1]** the body magnitude standard deviation of time domain signal for gyroscope
* `time_body_gyroscope_jerk_magnitude_mean` - **[-1; 1]** the jerk signal of body mean of time domain signal for gyroscope
* `time_body_gyroscope_jerk_magnitude_std` - **[-1; 1]** the jerk signal of body standard deviation of time domain signal for gyroscope
* `frequency_body_acceleration_mean_x` - **[-1; 1]** the body mean of frequency domain signal for accelerator by x axis
* `frequency_body_acceleration_mean_y` - **[-1; 1]** the body mean of frequency domain signal for accelerator by y axis
* `frequency_body_acceleration_mean_z` - **[-1; 1]** the body mean of frequency domain signal for accelerator by z axis
* `frequency_body_acceleration_std_x` - **[-1; 1]** the body standard deviation of frequency domain signal for accelerator by x axis
* `frequency_body_acceleration_std_y` - **[-1; 1]** the body standard deviation of frequency domain signal for accelerator by y axis
* `frequency_body_acceleration_std_z` - **[-1; 1]** the body standard deviation of frequency domain signal for accelerator by z axis
* `frequency_body_acceleration_jerk_mean_x` - **[-1; 1]** the jerk signal of body mean of frequency domain signal for accelerator by x axis
* `frequency_body_acceleration_jerk_mean_y` - **[-1; 1]** the jerk signal of body mean of frequency domain signal for accelerator by y axis
* `frequency_body_acceleration_jerk_mean_z` - **[-1; 1]** the jerk signal of body mean of frequency domain signal for accelerator by z axis
* `frequency_body_acceleration_jerk_std_x` - **[-1; 1]** the jerk signal of body standard deviation of frequency domain signal for accelerator by x axis
* `frequency_body_acceleration_jerk_std_y` - **[-1; 1]** the jerk signal of body standard deviation of frequency domain signal for accelerator by y axis
* `frequency_body_acceleration_jerk_std_z` - **[-1; 1]** the jerk signal of body standard deviation of frequency domain signal for accelerator by z axis
* `frequency_body_gyroscope_mean_x` - **[-1; 1]** the body mean of frequency domain signal for gyroscope by x axis
* `frequency_body_gyroscope_mean_y` - **[-1; 1]** the body mean of frequency domain signal for gyroscope by y axis
* `frequency_body_gyroscope_mean_z` - **[-1; 1]** the body mean of frequency domain signal for gyroscope by z axis
* `frequency_body_gyroscope_std_x` - **[-1; 1]** the body standard deviation of frequency domain signal for gyroscope by x axis
* `frequency_body_gyroscope_std_y` - **[-1; 1]** the body standard deviation of frequency domain signal for gyroscope by y axis
* `frequency_body_gyroscope_std_z` - **[-1; 1]** the body standard deviation of frequency domain signal for gyroscope by z axis
* `frequency_body_acceleration_magnitude_mean` - **[-1; 1]** the body magnitude mean of frequency domain signal for accelerator
* `frequency_body_acceleration_magnitude_std` - **[-1; 1]** the body magnitude standard deviation of frequency domain signal for accelerator
* `frequency_body_acceleration_jerk_magnitude_mean` - **[-1; 1]** the jerk signal of body mean of frequency domain signal for accelerator
* `frequency_body_acceleration_jerk_magnitude_std` - **[-1; 1]** the jerk signal of body standard deviation of frequency domain signal for accelerator
* `frequency_body_gyroscope_magnitude_mean` - **[-1; 1]** the body magnitude mean of frequency domain signal for gyroscope
* `frequency_body_gyroscope_magnitude_std` - **[-1; 1]** the body magnitude standard deviation of frequency domain signal for gyroscope
* `frequency_body_gyroscope_jerk_magnitude_mean` - **[-1; 1]** the jerk signal of body mean of frequency domain signal for gyroscope
* `frequency_body_gyroscope_jerk_magnitude_std` - **[-1; 1]** the jerk signal of body standard deviation of frequency domain signal for gyroscope

#### Transformation details
The following steps were applied for incoming data:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### Script requirements and steps
* libraries requirements: magrittr, reshape2
* Step 1: check that every necessary file exists
* Step 2: load both train and test data - X, y, subject
* Step 3: merge both datasets
* Step 4: add row with names of features
* Step 5: pick out subset only with mean and standard deviation columns
* Step 6: replace each activity integer with appropriate activity name
* Step 7: process each label to create more descriptive name
