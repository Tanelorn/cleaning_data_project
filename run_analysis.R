# Course Project for "Getting and Cleaning data"
# By Miguel Romance del Rio
# October 22th, 2015

# First of all we give a function fo loadiing the Data 
# from the "UCI HAR Dataset" subfolder by using read.table's
loadData <- function (type) {
        folder <- "UCI HAR Dataset/"
        filetype <- ".txt"
        
        subjects <- read.table(paste(folder, type, "/subject_", type, filetype, sep= ""))
        y <- read.table(paste(folder, type, "/y_", type, filetype, sep= ""))
        
        featuresName <- read.table(paste(folder, "features", filetype, sep= ""))
        x <- read.table(paste(folder, type, "/X_", type, filetype, sep= ""))
        
        # we put header of the feature value with features name
        names(x) <- featuresName[, 2]
        
        # we put header of the activity value and subject with proper name
        colnames(subjects) <- "subject"
        colnames(y) <- "activity"
        
        #we combine the y, subject and x together
        df <- cbind(cbind(subjects, y), x)
        return(df)
}
# we load the test data and we store them in the environment test
test <- loadData("test")
# we load the trainig data and we store them in the environment train
train <- loadData("train")

# the (row) combination of the train data and test data is stored in fulData
fulData <- rbind(train, test)

# we replace the activity with corresponding activity name
activityNames <- read.table("UCI HAR Dataset/activity_labels.txt")
fulData$activity <- sapply (fulData$activity, function(x)activityNames[x, 2])

# we keep features that represents for mean and standard deviation (std)
featuresNames <- read.table("UCI HAR Dataset/features.txt")
colnames(featuresNames) <- c("fId", "featurename")
keepFeatures <- subset(featuresNames, grepl("mean|std", featurename))[, 2]

# we select the features 
preData <- subset(fulData, select = c(cbind("subject", "activity"), 
                                      as.character(keepFeatures)))

# we create the dataframe with identity vaible "subject" and "activity"
# first we have to load the reshape library (we need to have it installed previously)
library(reshape)
tidyMelted <- melt(preData, id = c("subject", "activity"))

# now, we create the tidy data with measurements with respect to each subject and activities
tidy <- cast(tidyMelted, subject + activity ~ variable, mean)
dim(tidy)

# we present the summary of the tidy data
summary(tidy)

# finally, we output tidy as tidy.txt and tidy.csv
# the txtx file is created with write.table() by using row.name=FALSE in order to avoid 
# the row names 
write.table(tidy, "tidy.txt", row.names = FALSE)
write.csv(tidy, "tidy.csv")

# END OF THE ANALYSIS
