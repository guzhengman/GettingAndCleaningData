## This R script run_analysis.R does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.

# Use the dplyr package
library(dplyr)

## ITEMS 1&4 - combine several datasets into one
##             and use descriptive names for columns
#
# The data files are in the getdata-projectfiles-UCI HAR Dataset sub-directory
getwd()
print("Setting working directory to the dataset level ...")
setwd("getdata-projectfiles-UCI HAR Dataset")

# load activity labels
print("Loading activity labels ...")
actyLbl <- read.table("activity_labels.txt")
colnames(actyLbl) <- c("actyNum","acty")
str(actyLbl)

# load features
print("Loading features ...")
features <- read.table("features.txt")
colnames(features) <- c("featureNum","feature")
str(features)
# It was later found that there were duplicates in features,
# which broke the "select" function of dplyr.
# So, I am reorganizing features to a character vector of unique values.
featuresChar <- as.character(features$feature)
features <- make.unique(featuresChar)
# Now, features has become a unique character vector
rm(featuresChar)

# load subject_test
print("Loading subject_test ...")
subject_test <- read.table("test/subject_test.txt")
str(subject_test)

# load subject_train
print("Loading subject_train ...")
subject_train <- read.table("train/subject_train.txt")
str(subject_train)

# merge to a new df subject
if (dim(subject_train)[2] == dim(subject_test)[2]) {
    print("Merging subject_test and subject_train ...")
    subject <- rbind(subject_test, subject_train)
    colnames(subject) <- "subj"
    rm(subject_train, subject_test)
} else print("Error: Cannot merge subject_train and subject_test - columns unmatch")

# load y_test
print("Loading y_test ...")
y_test <- read.table("test/y_test.txt")
str(y_test)

# load y_train
print("Loading y_train ...")
y_train <- read.table("train/y_train.txt")
str(y_train)

# merge to a new df y
if (dim(y_train)[2] == dim(y_test)[2]) {
  print("Merging y_test and y_train ...")
  y <- rbind(y_test, y_train)
  colnames(y) <- "actyNum"
  rm(y_train, y_test)
} else print("Error: Cannot merge y_train and y_test - columns unmatch")

# load X_test
print("Loading X_test ...")
X_test <- read.table("test/X_test.txt")
# str(X_test)

# load X_train
print("Loading X_train ...")
X_train <- read.table("train/X_train.txt")
# str(X_train)

# merge to a new df X
if (dim(X_train)[2] == dim(X_test)[2]) {
  print("Merging X_test and X_train ...")
  X <- rbind(X_test, X_train)
#  colnames(X) <- features$feature  # features is no longer a df
  colnames(X) <- features
  rm(X_train, X_test)
} else print("Error: Cannot merge X_train and X_test - columns unmatch")

# combine subject, y and X into one big data frame, and write it to a file.
if (dim(X)[1] == dim(y)[1] && dim(X)[1] == dim(subject)[1]) {
  print("Combining subject, y, and X ...")
  Matrix <- cbind(cbind(subject,y),X)
  print("Writing combined data to file measurements.txt ...")
  write.table(Matrix,"measurements.txt")
} else print("Error: Cannot merge X, y and subject - rows unmatch")

## ITEM 2 - extract the means and standard deviation measurements
#

# use data frame table for better display
dftbl <- tbl_df(Matrix)

# No need to use the grep function.  Use select function instead.
# get column numbers of mean and standard deviation measurements
# meanCol <- grep("mean",colnames(dftbl))
# stdCol <- grep("std",colnames(dftbl))

print("Subsetting data to retain the means and standard deviations ...")
meanStd <- select(dftbl, subj, actyNum, contains("mean"), contains("std"))
# but not the angles
meanStd <- select(meanStd, -contains("angle"))
print("Let's take a look at a small sample of the data frame ...")
print(meanStd[1:5,1:4])

## ITEM 3 - use descriptive activitiy names to name the activities in the dataset
#
# Use the values in column meanStd$actyNum to look up the actyLbl$acty column.
# The result is a vector of activity names for all the measurements.
# Use the result to replace the numbers in meanStd$actyNum column.
#
print("Setting descriptive activity names to the merged data frame ...")
meanStd$actyNum <- (actyLbl$acty[meanStd$actyNum])
#
# Since the column has changed from numeric to activity names, 
# we change the column name as well.
colnames(meanStd)[2] <- "acty"
print("Let's take another look at a small sample of the data frame ...")
print(meanStd[1:5,1:4])

## ITEM 5 - creates a tidy data set with the average of each variable for 
##          each activity and each subject.

bySubjActy <- group_by(meanStd, subj, acty)

# initialize names
names <- NULL
# start with column 3 because the first two are for grouping by.
# dim(meanStd[2]) is the number of columns in the df
for (i in 3:dim(meanStd)[2]) {
  # form a vector of column names
  names <- c(names, as.name(colnames(meanStd[i])))
}
# set up the mean function string for the columns and
# prepare to pass argument to summarise as .dots
print("Computing the means ...")
dots <- paste ("mean(", names, ")", sep="")
# The Standard Evaluation form of summarise function is used, 
# ie. function name with trailing underscore "_".  Otherwise, 
# the minus sign "-" in the variable namesthere will trigger parsing error.
# See http://cran.rstudio.com/web/packages/dplyr/vignettes/nse.html
summary <- summarise_(bySubjActy, .dots=dots)
print("Let's take a look at the summarized data ...")
print(summary[1:5,1:4])

print("Writing out the means to file summary.txt ...")
write.table(summary, "summary.txt", row.names=FALSE)

# restore to the previous working directory
print ("Restoring the working directory to where it was before ...")
setwd("../")
print ("Script run_analysis.R completed.")

