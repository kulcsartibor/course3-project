# Include libraries
library(dplyr)

# This part is about to read the general variables from the text files. These are the feature names, which will be 
# used as column names in the final dataset, and the activities with proper naming.
fnames <- read.table("UCI HAR Dataset/features.txt", col.names = c("FeatureId","Feature"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("ActivityId", "ActivityName"))

# ---------------------------------------------------------------------------------------------------------------------

## 1. Merges the training and the test sets to create one data set.
## 4. Appropriately labels the data set with descriptive variable names.
###################################################################

# Here comes the reading of the train and test time serieses. I read two files (x and y) in a shot and bind them
# immidiatelly. I solved the 1 and 4 point is one shot, because I assigmend the variable names direcly from the
# table read. 
trainSet <- cbind(read.table("UCI HAR Dataset/train/x_train.txt", col.names = fnames$Feature),
                  read.table("UCI HAR Dataset/train/y_train.txt", col.names = c("ActivityId")),
                  read.table("UCI HAR Dataset/train/subject_train.txt", col.names = c("Subject")))
testSet  <- cbind(read.table("UCI HAR Dataset/test/x_test.txt", col.names = fnames$Feature),
                  read.table("UCI HAR Dataset/test/y_test.txt",   col.names = c("ActivityId")),
                  read.table("UCI HAR Dataset/test/subject_test.txt", col.names = c("Subject")))

# The train and test series arebinded together et this point.
imported_set <- rbind(trainSet, testSet)

# ---------------------------------------------------------------------------------------------------------------------

## 3. Uses descriptive activity names to name the activities in the data set
############################################################################
# I merge the dataset and the activity naming table together. At this point the data frame contains the name of the 
# activity in a human readable format also.
activity_named <- merge(imported_set, activities, by = "ActivityId")

# ---------------------------------------------------------------------------------------------------------------------

## 2 Extracts only the measurements on the mean and standard deviation for each measurement.
# Here I extract only the mean and std values from the dataset. There is an additional variable name in the regular
# expression "ActivityName". This is needed because I solved the assignment points in a different order
filetered_set <- select(activity_named, grep("([Mm]ean)|([Ss]td)|(ActivityName)", names(activity_named)))


# ---------------------------------------------------------------------------------------------------------------------

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable
# for each activity and each subject.
aggregated_table <- activity_named %>% group_by(ActivityName, Subject) %>%  summarise_each(funs(mean))
write.table(aggregated_table, "aggregated_table.txt", row.name=FALSE)

