Code Book for *summary.txt*
===========================
 
 The *summary.txt* file is created by the *run_analysis.R* script.  It has 81 variables which are described below.
 
 
 [1] subj - subject, a number between 1 and 30
 
 [2] acty - activity, a factor of 6 levels:
              WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 
Variables 3 through 81 are the means (averages) of measurements grouped by subject and activity.  The acronyms in the variable names, e.g t, Body, Acc, Jerk, etc are explained in the features.txt file which is supplied along with the raw data files.
 
 [3] meantBodyAccMeanX
 
 [4] meantBodyAccMeanY
 
 [5] meantBodyAccMeanZ
 
 [6] meantGravityAccMeanX
 
 [7] meantGravityAccMeanY
 
 [8] meantGravityAccMeanZ
 
 [9] meantBodyAccJerkMeanX
 
[10] meantBodyAccJerkMeanY

[11] meantBodyAccJerkMeanZ

[12] meantBodyGyroMeanX

[13] meantBodyGyroMeanY

[14] meantBodyGyroMeanZ

[15] meantBodyGyroJerkMeanX

[16] meantBodyGyroJerkMeanY

[17] meantBodyGyroJerkMeanZ

[18] meantBodyAccMagMean

[19] meantGravityAccMagMean

[20] meantBodyAccJerkMagMean

[21] meantBodyGyroMagMean

[22] meantBodyGyroJerkMagMean

[23] meanfBodyAccMeanX

[24] meanfBodyAccMeanY

[25] meanfBodyAccMeanZ

[26] meanfBodyAccMeanFreqX

[27] meanfBodyAccMeanFreqY

[28] meanfBodyAccMeanFreqZ

[29] meanfBodyAccJerkMeanX

[30] meanfBodyAccJerkMeanY

[31] meanfBodyAccJerkMeanZ

[32] meanfBodyAccJerkMeanFreqX

[33] meanfBodyAccJerkMeanFreqY

[34] meanfBodyAccJerkMeanFreqZ

[35] meanfBodyGyroMeanX

[36] meanfBodyGyroMeanY

[37] meanfBodyGyroMeanZ

[38] meanfBodyGyroMeanFreqX

[39] meanfBodyGyroMeanFreqY

[40] meanfBodyGyroMeanFreqZ

[41] meanfBodyAccMagMean

[42] meanfBodyAccMagMeanFreq

[43] meanfBodyBodyAccJerkMagMean

[44] meanfBodyBodyAccJerkMagMeanFreq

[45] meanfBodyBodyGyroMagMean

[46] meanfBodyBodyGyroMagMeanFreq

[47] meanfBodyBodyGyroJerkMagMean

[48] meanfBodyBodyGyroJerkMagMeanFreq

[49] meantBodyAccStdX

[50] meantBodyAccStdY

[51] meantBodyAccStdZ

[52] meantGravityAccStdX

[53] meantGravityAccStdY

[54] meantGravityAccStdZ

[55] meantBodyAccJerkStdX

[56] meantBodyAccJerkStdY

[57] meantBodyAccJerkStdZ

[58] meantBodyGyroStdX

[59] meantBodyGyroStdY

[60] meantBodyGyroStdZ

[61] meantBodyGyroJerkStdX

[62] meantBodyGyroJerkStdY

[63] meantBodyGyroJerkStdZ

[64] meantBodyAccMagStd

[65] meantGravityAccMagStd

[66] meantBodyAccJerkMagStd

[67] meantBodyGyroMagStd

[68] meantBodyGyroJerkMagStd

[69] meanfBodyAccStdX

[70] meanfBodyAccStdY

[71] meanfBodyAccStdZ

[72] meanfBodyAccJerkStdX

[73] meanfBodyAccJerkStdY

[74] meanfBodyAccJerkStdZ

[75] meanfBodyGyroStdX

[76] meanfBodyGyroStdY

[77] meanfBodyGyroStdZ

[78] meanfBodyAccMagStd

[79] meanfBodyBodyAccJerkMagStd

[80] meanfBodyBodyGyroMagStd

[81] meanfBodyBodyGyroJerkMagStd

The contents of the file *features_info.txt* is reproduced below:

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
