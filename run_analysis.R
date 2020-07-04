library(reshape2)

zipFolder <- "UCI HAR Dataset.zip"
dataZip <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists(zipFolder)){
    download.file(dataZip, zipFolder, mode = "wb")
}  

projectDataset <- "UCI HAR Dataset"
if (!file.exists(projectDataset)) { 
  unzip(zipFolder) 
}

activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", sep ="", as.is = TRUE)
activityLabels[,2] <- as.character(activityLabels[,2])
colnames(activityLabels) <- c("activityId", "activityLabel")

features <- read.table("UCI HAR Dataset/features.txt", sep="")

subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt",sep = "", header = FALSE)

xTest <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)

yTest <- read.table("UCI HAR Dataset/test/y_test.txt", sep = "", header = FALSE)

testDataset <- cbind(subjectTest, yTest, xTest)

subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt",sep = "")

xTrain <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "")

yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", sep = "")

trainDataset <- cbind(subjectTrain, yTrain, xTrain)

# Merging train and test dataset
MergedDataset <- rbind(trainDataset, testDataset)

colnames(MergedDataset) <- c("Subject", "Activity", features[,2])

# Extracting mean and standard deviation
featuresExtracted <- grep("Subject|Activity|mean|std", colnames(MergedDataset))

MergedDataset <- MergedDataset[, featuresExtracted]

# Using descriptive activity names to name the activities in the data set
MergedDataset$Activity <- factor(MergedDataset$Activity, levels = activityLabels[,1], labels = activityLabels[,2])

# Appropriately labeling the data set with descriptive variable names
MergedDatasetColumns <- colnames(MergedDataset)

MergedDatasetColumns <- gsub("mean", "Mean", MergedDatasetColumns)
MergedDatasetColumns <- gsub("std", "StandardDeviation", MergedDatasetColumns)
MergedDatasetColumns <- gsub("^f", "FrequencyDomain", MergedDatasetColumns)
MergedDatasetColumns <- gsub("^t", "TimeDomain", MergedDatasetColumns)
MergedDatasetColumns <- gsub("Mag", "Magnitude", MergedDatasetColumns)
MergedDatasetColumns <- gsub("Freq", "Frequency", MergedDatasetColumns)
MergedDatasetColumns <- gsub("Acc", "Acceleration", MergedDatasetColumns)
MergedDatasetColumns <- gsub("[-()]", "", MergedDatasetColumns)

colnames(MergedDataset) <- MergedDatasetColumns


# From the data set in step 4, created a second, independent tidy data set with the average of each variable for 
# each activity and each subject.
MergedDatasetMelt <- melt(MergedDataset, id = c("Subject", "Activity"))
MergedDatasetAverage <- dcast(MergedDatasetMelt, Subject + Activity ~ variable, mean)

write.table(MergedDatasetAverage, "tidy.txt", row.names = FALSE, quote=FALSE)
