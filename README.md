# Geting and Cleanin Data course project solution

## Reading the descriptor data
In the first section the scripts loads the descriptor files, that are containing the variable and the activity names
```
fnames: this data frame  contains the names of the variables
activities: ths data frame contains contains the activity codes and the related names
```

## REAding the time series
In this section I read the time series into two variables and after that I merge the together.
```
trainSet: the training dataset part is readed into this variable. The colnames are given to the read funtion directly.
testSet: the test dataset part is readed into this variable. The colnames are given to the read funtion directly.
imported_set: the full data set that contains all data binded together

```

## Merge the data with activity names
In this section I merge the time series data to the activity names, and assign it to a variable. This data frame contains
the activity in huma readable format.
```
activity_named: this is the smase like imported_set but it contains the activity in human readable format.

```

## Filter the mean and deviation variable
In this section I select only those variables in the data frame which's names contains the "mean" or "std" quotes. In
addition I select the ActivityName colomn, so the data frame has the activity in human readable format also.
```
filetered_set: this data frame contains only the mean and std variables from the original data set. An the activity name in addition
```

## Aggregate the values over subject and activity
In this section I calculate the mean of all variablegrouped by the subject and the activity. This data frame will be
exported at the very end.
```
aggregated_table: this data frame contains the summary of the original data set.
```
