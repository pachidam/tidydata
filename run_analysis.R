## Set the Working Directory
setwd("C:/Unison/DataScience/R/RWD/data/UCI HAR Dataset")

## Step 1: Read the data
features <- read.table("features.txt")
ColNames <- features[,2]
x_train <- read.table("train\\X_train.txt", sep="", col.name=ColNames, header=FALSE)
x_test <- read.table("test\\X_test.txt", sep="", col.name=ColNames,, header=FALSE)
y_train <- read.table("train\\y_train.txt", sep="", col.names="Activity",header=FALSE)
y_test <- read.table("test\\y_test.txt", sep="", col.names="Activity", header=FALSE)
vol_train <- read.table("train\\subject_train.txt",col.names="Volunteer")
vol_test <- read.table("test\\subject_test.txt",col.names="Volunteer")


## Step 2: Merge Data
train.c <- cbind(vol_train, y_train, x_train)
test.c <- cbind(vol_test, y_test, x_test)
df.m <- rbind(train.c, test.c)

## Step 3: Identify the Mean and StdDev Columns in data set

col_set <- grepl("mean...", names(df.m)) |grepl("std...", names(df.m))|
  grepl("Volunteer", names(df.m))|grepl("Activity", names(df.m))
df_sub <- df.m[,col_set]


df_sub$Activity <- factor(df_sub$Activity, labels=c("Walking","Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

## Step 4: Create Tidy Data Set and caculate the Mean

library(reshape2)
melted.ds <- melt(df_sub, id=c("Volunteer","Activity"))
tidy.ds <- dcast(melted.ds, Volunteer+Activity ~ variable, mean)

## Step 5: Write into txt File
write.csv(tidy.ds, "tidy.txt", row.names=FALSE)
