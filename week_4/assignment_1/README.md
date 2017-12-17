### Course Project
[![JHU](https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-university-assets.s3.amazonaws.com/74/7ae340ec6911e5b395490a2a565172/JHU-Logo-Square-Mini_180px.png?auto=format%2Ccompress&dpr=0.800000011920929&w=56px&h=56px&auto=format%2Ccompress&dpr=1&w=&h=)](https://www.jhu.edu/)

#### The Resources
* It is the course project for [Getting and Cleaning Data](https://www.coursera.org/course/getdata)
* This course project bases on data from ["Human Activity Recognition Using Smartphones"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* The link to the place where the rawest data were acquired https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* The rawest data were copied into `data` folder

#### Course Project Tasks
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### Script Requirements and Steps
1. update initial data in `data` directory if necessary
2. run `run_analysis.R` script which should be located to the same directory where `data` directory is
3. script libraries requirements: magrittr, reshape2
4. script step 1: check that every necessary file exists
5. script step 2: load both train and test data - X, y, subject
6. script step 3: merge both datasets
7. script step 4: add row with names of features
8. script step 5: pick out subset only with mean and standard deviation columns
9. script step 6: replace each activity integer with appropriate activity name
10. script step 7: process each label to create more descriptive name

More details about tidy dataset and raw data you may find in [CodeBook](CodeBook.md)
