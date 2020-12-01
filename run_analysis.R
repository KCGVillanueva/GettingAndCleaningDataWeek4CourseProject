library(dplyr)

# Read training data
TrainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
TrainValues <- read.table("./UCI HAR Dataset/train/X_train.txt")
TrainActivity <- read.table("./UCI HAR Dataset/train/Y_train.txt")

# Read test data
TestSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
TestValues <- read.table("./UCI HAR Dataset/test/X_test.txt")
TestActivity <- read.table("./UCI HAR Dataset/test/Y_test.txt")

# Read features
features <- read.table("./UCI HAR Dataset/features.txt", as.is = TRUE)

#Read activity labels
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(ActivityLabels) <- c("actId", "actLabel")

# Part 1: Merge the training and the test sets to create one data set.
TrainData <- cbind(TrainSubject, TrainValues, TrainActivity)
TestData <- cbind(TestSubject, TestValues, TestActivity)
SingleData <- rbind(TrainData, TestData)
rm(TrainSubject, TrainValues, TrainActivity,
   TestSubject, TestValues, TestActivity)
colnames(SingleData) <- c("subject", features[ ,2], "activity")

# Part 2: Extract only the measurements on the mean and standard deviation for each measurement.
SelectedVariables <- grepl("subject|activity|mean|std", colnames(SingleData))
SingleData2 <- SingleData[, SelectedVariables]

# Part 3: Use descriptive activity names to name the activities in the data set
SingleData2$activity <- factor(SingleData2$activity, levels = ActivityLabels[, 1], labels = ActivityLabels[, 2])

# Part 4: Appropriately label the data set with descriptive variable names.
Actions <- colnames(SingleData2)
Actions <- gsub("[\\(\\)-]", "", Actions)
Actions <- gsub("^f", "frequencyDomain", Actions)
Actions <- gsub("^t", "timeDomain", Actions)
Actions <- gsub("Acc", "Accelerometer", Actions)
Actions <- gsub("Gyro", "Gyroscope", Actions)
Actions <- gsub("Mag", "Magnitude", Actions)
Actions <- gsub("Freq", "Frequency", Actions)
Actions <- gsub("mean", "Mean", Actions)
Actions <- gsub("std", "StandardDeviation", Actions)
Actions <- gsub("BodyBody", "Body", Actions)
colnames(SingleData2) <- Actions

# Part 5: From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
SingleData2Mean <- SingleData2 %>% group_by(subject, activity) %>% summarize_each(funs(mean))
write.table(SingleData2Mean, file = "./UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)