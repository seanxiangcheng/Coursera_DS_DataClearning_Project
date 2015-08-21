# Getting and Cleaning Data
# by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD
# Class project by Xiang Cheng
# run_analysis.R
# You should create one R script called run_analysis.R that does the following. 
### 1. Merges the training and the test sets to create one data set.
### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
### 3. Uses descriptive activity names to name the activities in the data set
### 4. Appropriately labels the data set with descriptive variable names. 
### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# set working directory with the data folders
# setwd("/home/xcheng0907/GoogleDrive/Courses/DataScience_Coursera/DataCleaning/Project")

library(data.table)
library(dplyr)

# Load training and test data sets
X.train = read.table("./UCI_HAR_Dataset/train/X_train.txt") # 
X.test = read.table("./UCI_HAR_Dataset/test/X_test.txt")
y.train = read.table("./UCI_HAR_Dataset/train/y_train.txt")
y.test = read.table("./UCI_HAR_Dataset/test/y_test.txt")

# Load data of features, activity, and subjects
features = read.table("./UCI_HAR_Dataset/features.txt")[,2]
activity_labels = read.table("./UCI_HAR_Dataset/activity_labels.txt")[,2]
subj.train = read.table("./UCI_HAR_Dataset/train/subject_train.txt")[,1]
subj.test = read.table("./UCI_HAR_Dataset/test/subject_test.txt")[,1]

# Namen X and y of training and test data sets
colnames(X.train) = features
colnames(X.test) = features
y.train$activity = activity_labels[y.train$V1]
colnames(y.train)[1] = "activity_id"
y.test$activity = activity_labels[y.test$V1]
colnames(y.test)[1] = "activity_id"

# Get the colomns indices of mean and std
selected_features = grep("mean\\(\\)|std\\(\\)", features)
X.train = X.train[, selected_features]
X.test = X.test[, selected_features]

# bind X, y, and subjects
train = cbind(X.train, y.train, subject = subj.train)
test = cbind(X.test, y.test, subject = subj.test)

# bind train and test
data = rbind(train, test) 

# rename colnums
col.names = colnames(data)
col.names = gsub("\\(\\)","", col.names)
col.names<-gsub("^t", "time", col.names)
col.names<-gsub("^f", "frequency", col.names)
col.names<-gsub("Acc", "Accelerometer", col.names)
col.names<-gsub("Gyro", "Gyroscope", col.names)
col.names<-gsub("Mag", "Magnitude", col.names)
colnames(data) = col.names

# convert activity to characters
data$activity = as.character(data$activity)

# create a tidy data and write to txt file
tidy_data = aggregate(. ~ subject - activity, data = data, mean)
write.table(tidy_data, "TidyData.txt", row.name=FALSE)
