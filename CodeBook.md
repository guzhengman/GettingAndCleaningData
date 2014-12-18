Code Book for *summary.txt*
===========================
 
 The *summary.txt* file is created by the *run_analysis.R* script.  It has 81 variables which are described below.
 
 
 [1] "subj" - subject, a number between 1 and 30
 
 [2] "acty" - activity, a factor of 6 levels:
              WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 
Variables 3 through 81 are the means (averages) of measurements grouped by subject and activity.  The acronyms in the variable names, e.g t, Body, Acc, Jerk, etc are explained in the features.txt file which is supplied along with the raw data files.
 
 [3] "mean(`tBodyAcc-mean()-X`)"
 
 [4] "mean(`tBodyAcc-mean()-Y`)"
 
 [5] "mean(`tBodyAcc-mean()-Z`)"
 
 [6] "mean(`tGravityAcc-mean()-X`)"
 
 [7] "mean(`tGravityAcc-mean()-Y`)"
 
 [8] "mean(`tGravityAcc-mean()-Z`)"
 
 [9] "mean(`tBodyAccJerk-mean()-X`)"
 
[10] "mean(`tBodyAccJerk-mean()-Y`)"

[11] "mean(`tBodyAccJerk-mean()-Z`)"

[12] "mean(`tBodyGyro-mean()-X`)"

[13] "mean(`tBodyGyro-mean()-Y`)"

[14] "mean(`tBodyGyro-mean()-Z`)"

[15] "mean(`tBodyGyroJerk-mean()-X`)"

[16] "mean(`tBodyGyroJerk-mean()-Y`)"

[17] "mean(`tBodyGyroJerk-mean()-Z`)"

[18] "mean(`tBodyAccMag-mean()`)"

[19] "mean(`tGravityAccMag-mean()`)"

[20] "mean(`tBodyAccJerkMag-mean()`)"

[21] "mean(`tBodyGyroMag-mean()`)"

[22] "mean(`tBodyGyroJerkMag-mean()`)"

[23] "mean(`fBodyAcc-mean()-X`)"

[24] "mean(`fBodyAcc-mean()-Y`)"

[25] "mean(`fBodyAcc-mean()-Z`)"

[26] "mean(`fBodyAcc-meanFreq()-X`)"

[27] "mean(`fBodyAcc-meanFreq()-Y`)"

[28] "mean(`fBodyAcc-meanFreq()-Z`)"

[29] "mean(`fBodyAccJerk-mean()-X`)"

[30] "mean(`fBodyAccJerk-mean()-Y`)"

[31] "mean(`fBodyAccJerk-mean()-Z`)"

[32] "mean(`fBodyAccJerk-meanFreq()-X`)"

[33] "mean(`fBodyAccJerk-meanFreq()-Y`)"

[34] "mean(`fBodyAccJerk-meanFreq()-Z`)"

[35] "mean(`fBodyGyro-mean()-X`)"

[36] "mean(`fBodyGyro-mean()-Y`)"

[37] "mean(`fBodyGyro-mean()-Z`)"

[38] "mean(`fBodyGyro-meanFreq()-X`)"

[39] "mean(`fBodyGyro-meanFreq()-Y`)"

[40] "mean(`fBodyGyro-meanFreq()-Z`)"

[41] "mean(`fBodyAccMag-mean()`)"

[42] "mean(`fBodyAccMag-meanFreq()`)"

[43] "mean(`fBodyBodyAccJerkMag-mean()`)"

[44] "mean(`fBodyBodyAccJerkMag-meanFreq()`)"

[45] "mean(`fBodyBodyGyroMag-mean()`)"

[46] "mean(`fBodyBodyGyroMag-meanFreq()`)"

[47] "mean(`fBodyBodyGyroJerkMag-mean()`)"

[48] "mean(`fBodyBodyGyroJerkMag-meanFreq()`)"

[49] "mean(`tBodyAcc-std()-X`)"

[50] "mean(`tBodyAcc-std()-Y`)"

[51] "mean(`tBodyAcc-std()-Z`)"

[52] "mean(`tGravityAcc-std()-X`)"

[53] "mean(`tGravityAcc-std()-Y`)"

[54] "mean(`tGravityAcc-std()-Z`)"

[55] "mean(`tBodyAccJerk-std()-X`)"

[56] "mean(`tBodyAccJerk-std()-Y`)"

[57] "mean(`tBodyAccJerk-std()-Z`)"

[58] "mean(`tBodyGyro-std()-X`)"

[59] "mean(`tBodyGyro-std()-Y`)"

[60] "mean(`tBodyGyro-std()-Z`)"

[61] "mean(`tBodyGyroJerk-std()-X`)"

[62] "mean(`tBodyGyroJerk-std()-Y`)"

[63] "mean(`tBodyGyroJerk-std()-Z`)"

[64] "mean(`tBodyAccMag-std()`)"             

[65] "mean(`tGravityAccMag-std()`)"         

[66] "mean(`tBodyAccJerkMag-std()`)"         

[67] "mean(`tBodyGyroMag-std()`)"           

[68] "mean(`tBodyGyroJerkMag-std()`)"        

[69] "mean(`fBodyAcc-std()-X`)"             

[70] "mean(`fBodyAcc-std()-Y`)"             

[71] "mean(`fBodyAcc-std()-Z`)"           

[72] "mean(`fBodyAccJerk-std()-X`)"     

[73] "mean(`fBodyAccJerk-std()-Y`)"      

[74] "mean(`fBodyAccJerk-std()-Z`)"       

[75] "mean(`fBodyGyro-std()-X`)"          

[76] "mean(`fBodyGyro-std()-Y`)"         

[77] "mean(`fBodyGyro-std()-Z`)"       

[78] "mean(`fBodyAccMag-std()`)"        

[79] "mean(`fBodyBodyAccJerkMag-std()`)"

[80] "mean(`fBodyBodyGyroMag-std()`)"

[81] "mean(`fBodyBodyGyroJerkMag-std()`)"


The contents of the text file *features_info.txt* is reproduced below:

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
