GettingAndCleaningData
======================

This is my class project for the data scientist Coursera course "Getting And Cleaning Data".

Raw Data for Wearable Computing
-------------------------------

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The raw data can be down loaded from this link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

How to Use run_analysis.R
-------------------------

The R Script run_analysis.R performs the following functions:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This script requires use of the package dplyr.  For more information on dplyr, please refer to:
http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html
http://cran.r-project.org/web/packages/dplyr/dplyr.pdf

To execute run_analysis.R:

1. Get a copy of the script from this repo to a working directory.
2. Down load the compressed (zip) file from the second link mentioned in the section, then uncompress it to the working directory of step 1.
3. Run the script from an R console or RStudio window.

What you will get from run_analysis.R
-------------------------------------

The script will output a tidy data file summary.txt in the "getdata-projectfiles-UCI HAR Dataset" directory" which is the top level directory of the downloaded data.  You can browse the file with Notepad++, or with the following command in R:
View(summary)

The script displays informative messages about what it is doing.  Here is a sample of the run log:

> source("run_analysis.R")

Attaching package: ‘dplyr’

The following object is masked from ‘package:stats’:

    filter

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

[1] "Setting working directory to the dataset level ..."
[1] "Loading activity labels ..."
'data.frame':	6 obs. of  2 variables:
 $ actyNum: int  1 2 3 4 5 6
 $ acty   : Factor w/ 6 levels "LAYING","SITTING",..: 4 6 5 2 3 1
[1] "Loading features ..."
'data.frame':	561 obs. of  2 variables:
 $ featureNum: int  1 2 3 4 5 6 7 8 9 10 ...
 $ feature   : Factor w/ 477 levels "angle(tBodyAccJerkMean),gravityMean)",..: 243 244 245 250 251 252 237 238 239 240 ...
[1] "Loading subject_test ..."
'data.frame':	2947 obs. of  1 variable:
 $ V1: int  2 2 2 2 2 2 2 2 2 2 ...
[1] "Loading subject_train ..."
'data.frame':	7352 obs. of  1 variable:
 $ V1: int  1 1 1 1 1 1 1 1 1 1 ...
[1] "Merging subject_test and subject_train ..."
[1] "Loading y_test ..."
'data.frame':	2947 obs. of  1 variable:
 $ V1: int  5 5 5 5 5 5 5 5 5 5 ...
[1] "Loading y_train ..."
'data.frame':	7352 obs. of  1 variable:
 $ V1: int  5 5 5 5 5 5 5 5 5 5 ...
[1] "Merging y_test and y_train ..."
[1] "Loading X_test ..."
[1] "Loading X_train ..."
[1] "Merging X_test and X_train ..."
[1] "Combining subject, y, and X ..."
[1] "Writing combined data to file measurements.txt ..."
[1] "Subsetting data to retain the means and standard deviations ..."
[1] "Let's take a look at a small sample of the data frame ..."
Source: local data frame [5 x 4]

  subj actyNum tBodyAcc-mean()-X tBodyAcc-mean()-Y
1    2       5         0.2571778       -0.02328523
2    2       5         0.2860267       -0.01316336
3    2       5         0.2754848       -0.02605042
4    2       5         0.2702982       -0.03261387
5    2       5         0.2748330       -0.02784779
[1] "Setting descriptive activity names to the merged data frame ..."
[1] "Let's take another look at a small sample of the data frame ..."
Source: local data frame [5 x 4]

  subj     acty tBodyAcc-mean()-X tBodyAcc-mean()-Y
1    2 STANDING         0.2571778       -0.02328523
2    2 STANDING         0.2860267       -0.01316336
3    2 STANDING         0.2754848       -0.02605042
4    2 STANDING         0.2702982       -0.03261387
5    2 STANDING         0.2748330       -0.02784779
[1] "Computing the means ..."
[1] "Let's take a look at the summarized data ..."
Source: local data frame [5 x 4]
Groups: subj

  subj               acty mean(`tBodyAcc-mean()-X`)
1    1             LAYING                 0.2215982
2    1            SITTING                 0.2612376
3    1           STANDING                 0.2789176
4    1            WALKING                 0.2773308
5    1 WALKING_DOWNSTAIRS                 0.2891883
Variables not shown: mean(`tBodyAcc-mean()-Y`) (dbl)
[1] "Writing out the means to file summary.txt ..."
[1] "Restoring the working directory to where it was before ..."
[1] "Script run_analysis.R completed."
> 
