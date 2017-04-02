## Code Book

This code book describes the data fields in the `aggregate_table.txt` file (output of the `run_analysis.R` script)


### Identifier
* `subject` : id of the subject who performed the activity - Its range is from 1 to 30
* `activityid` : type of activity performed during the measurements. The types of activity are : 

    * WALKING (value = 1) : 
    * WALKING_UPSTAIRS (value = 2)
    * WALKING_DOWNSTAIRS (value = 3)
    * SITTING (value = 4)
    * STANDING (value = 5)
    * LAYING (value = 6)


### Experiment
_The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data._

_The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a B_

    
### DATA explaination

_The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. _

_Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). _

_Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). _
    

The set of variables that were estimated from these signals are: 

    mean: Mean value
    std: Standard deviation

### VAriables used in the script:
```
fnames: this data frame  contains the names of the variables
activities: ths data frame contains contains the activity codes and the related names
```

```
trainSet: the training dataset part is readed into this variable. The colnames are given to the read funtion directly.
testSet: the test dataset part is readed into this variable. The colnames are given to the read funtion directly.
imported_set: the full data set that contains all data binded together

```

```
activity_named: this is the smase like imported_set but it contains the activity in human readable format.

```

```
filetered_set: this data frame contains only the mean and std variables from the original data set. An the activity name in addition
```

```
aggregated_table: this data frame contains the summary of the original data set.
```
    
### MORE
For more information about this dataset contact: activityrecognition@smartlab.ws

###License:
Use of the original dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.