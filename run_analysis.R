run_analysis <- function(){
        library(dplyr)
        ## Read in Rawdata files
        FileInputTrain <- read.table("RawData\\train\\X_train.txt")
        FileInputTest <- read.table("RawData\\test\\x_test.txt")
        
        ##Set Variablenames and repleace it with better names
        VariableNames <- read.table("RawData\\features.txt")
        VariableNames <- tolower(VariableNames$V2)
        VariableNames <- gsub("acc", "accelerometer", VariableNames)
        VariableNames <- gsub("^t", "time", VariableNames)
        VariableNames <- gsub("^f", "frequ", VariableNames)
        VariableNames <- gsub("gyro", "gyroscope", VariableNames)
        VariableNames <- gsub("-x$", "-x-axis", VariableNames)
        VariableNames <- gsub("-y$", "-y-axis", VariableNames)
        VariableNames <- gsub("-z$", "-z-axis", VariableNames)
        names(FileInputTrain)<- VariableNames
        names(FileInputTest) <- VariableNames
        
        ## Search for the Variables which have an mean() or an std() in the name
        MeanAndStd <- grepl("(mean|std)\\(\\)", VariableNames)
        FileInputTest <- FileInputTest[,MeanAndStd]
        FileInputTrain <- FileInputTrain[,MeanAndStd]
        
        ## Read in the labels for the activity
        ActivityLabels <- read.table("RawData\\activity_labels.txt")
        ActivityLabels <- as.character(ActivityLabels$V2)
        
        ## Read in the activity and make an factor with clear names
        ActivityTrain <- read.table("RawData\\train\\y_train.txt")
        ActivityTrain <- as.factor(ActivityTrain$V1)
        levels(ActivityTrain) <- ActivityLabels
        
        ## Add the subject, activity and information from which data set it was
        ##comming to the data fram
        SubjectTrain <- read.table("RawData\\Train\\subject_train.txt")
        FileInputTrain <- mutate(FileInputTrain, trainortest = "Train",
                activity = ActivityTrain, subject = SubjectTrain$V1 )
        
        ## The same as before for the test data
        ActivityTest <- read.table("RawData\\test\\y_test.txt")
        ActivityTest <- as.factor(ActivityTest$V1)
        levels(ActivityTest) <- ActivityLabels
        SubjectTest <- read.table("RawData\\Test\\subject_test.txt")
        FileInputTest <- mutate(FileInputTest, trainortest = "Test",
                activity = ActivityTest, subject = SubjectTest$V1 )
        
        
        ## bring the new columns to the front
        NumCol <- ncol(FileInputTest)
        FileInputTest <- FileInputTest[, c(NumCol: (NumCol-3), 1:(NumCol-4))]
        FileInputTrain <- FileInputTrain[, c(NumCol: (NumCol-3), 1:(NumCol-4))]
        
        ## merge it together
        RunAnalysis <- rbind(FileInputTest, FileInputTrain)
        
        ##order it by subject and activity
        RunAnalysis <- arrange(RunAnalysis, subject, activity)
        
        ## Calculate the mean for each subject and activity in a new data frame
        MeanRunAnalysis <- group_by(RunAnalysis, subject, activity)
        MeanRunAnalysis$trainortest <- NULL
        MeanRunAnalysis <- summarise_all(MeanRunAnalysis, mean)
        
        ## write out the two tidy data sets
        write.table(RunAnalysis, "RunAnalysis.txt", row.names = FALSE)
        write.table(MeanRunAnalysis, "MeanRunAnalysis.txt", row.names = FALSE)
}