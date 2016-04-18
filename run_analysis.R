# by Travis Ho 
# Put "UCI HAR Dataset" folder in my working space
# or change path for the current location
path_data = "UCI HAR Dataset/"
path_forTest  =  paste(path_data,"test/", sep ='')
path_forTrain =  paste(path_data,"train/", sep ='')

printS <- function(...) {
  cat("Running:  ", ..., "\n")
}

getTest <- function(name) {
  paste(path_forTest, name, ".txt", sep = "")
}
getTrain <- function(name) {
  paste(path_forTrain, name, ".txt", sep = "")
}
getFeature <- function(name) {
  paste(path_data, name, ".txt", sep = "")
}

run_analysis <- function(){
  
  printS("Getting and Cleaning Assignment")

  # Loading the features and Activities 
  printS("Loading features ... ")
  features <- read.table(getFeature("features"), col.names=c("fID", "featureName"))
  meanFeatures <- grep("mean\\(", features$featureName)
  stdFeatures <- grep("std\\(", features$featureName)
  selected <- grep("mean\\(|std\\(", features$featureName)
  activities <- read.table(getFeature("activity_labels"), col.names=c("aID", "activityName"))
  
  # Loading the test and training data 
  printS("Loading the test data ... ")
  subject_test = read.table(getTest("subject_test"))
  X_test = read.table(getTest("X_test"))
  Y_test = read.table(getTest("Y_test"))
  
  printS("Loading the train data ... ")
  subject_train = read.table(getTrain("subject_train"))
  X_train = read.table(getTrain("X_train"))
  Y_train = read.table(getTrain("Y_train"))

  
  # merge the test and train data 
  printS("Merging data ... ")
  subject <- rbind(subject_test, subject_train)
  names(subject) <- "sID"
  X <- rbind(X_test, X_train)
  X <- X[, selected]
  names(X) <- features$featureName[selected]
  Y <- rbind(Y_test, Y_train)
  names(Y) = "aID"
  activity <- merge(Y, activities, by="aID")$activityName
  data <- cbind(subject, X, activity)

  # Output the File
  printS("Merging data ... ")  
  library(data.table)
  dataTable <- data.table(data)
  CleaningData<- dataTable[, lapply(.SD, mean), by=c("sID", "activity")]
  write.table(CleaningData, "tidy_data.txt", row.name=FALSE)
}