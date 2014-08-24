# Step 1: Merge training set and test set

merged_data <- rbind(
    read.table("train/X_train.txt"),
    read.table("test/X_test.txt"))


# Step 2: Extract only means and standard deviations

features <- read.table("features.txt", col.names=c("num", "name"))
mean_std_cols <- features$num[grepl("-mean\\(|-std\\(", features$name)]
mean_std_data <- merged_data[,mean_std_cols]


# Step 3: Add descriptive activity names

activities <- rbind(
  read.table("train/y_train.txt", col.names=c("id")),
  read.table("test/y_test.txt", col.names=c("id")))

activity_labels <- read.table("activity_labels.txt", 
    col.names=c("id", "activity"))

data_with_activity_names <- cbind(
  merge(activities, activity_labels, by="id")$activity,
  mean_std_data)


# Step 4: Add descriptive variable names

col_names <- c(as.vector(features$name[mean_std_cols]), "activity")
names(data_with_activity_names) <- col_names


# Step 5: Create the independent tidy data set and write to a file

subjects <- rbind(
    read.table("train/subject_train.txt", col.names=c("id")),
    read.table("test/subject_test.txt", col.names=c("id")))

unique_subjects <- unique(sort(subjects$id))

options(stringsAsFactors=FALSE)
tidy_data <- data.frame()
for (subject in unique_subjects) {
    for (activity in activity_labels$id) {
        activity_name <- as.character(
            activity_labels$activity[activity_labels$id == activity])
        means <- colMeans(mean_std_data[subjects$id == subject,])
        tidy_data <- rbind(tidy_data, c(subject, activity_name, means))
    }
}
names(tidy_data) <- c("subject", "activity",
    as.character(features$name[mean_std_cols]))

write.table(tidy_data, file="averages.txt", row.names=FALSE)

