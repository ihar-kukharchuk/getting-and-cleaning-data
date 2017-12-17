library(magrittr)
library(reshape2)

## check that everything is available
data_files <- c(
        "./data/activity_labels.txt",
        "./data/features.txt",
        "./data/train/subject_train.txt",
        "./data/train/X_train.txt",
        "./data/train/y_train.txt",
        "./data/test/subject_test.txt",
        "./data/test/X_test.txt",
        "./data/test/y_test.txt"
)
invisible(lapply(data_files, function(x) stopifnot(file.exists(x))))

load_data <- function(pathes) {
        ## load train and test sets of research data according to pathes
        ## join loaded data into one data set
        join_data <- function(x_path, y_path, subject_path) {
                x_data <- read.table(x_path)
                y_data <- read.table(y_path)
                subject_data <- read.table(subject_path)
                cbind(x_data, y_data, subject_data)
        }
        train <- join_data(pathes[2], pathes[3], pathes[1])
        test <- join_data(pathes[5], pathes[6], pathes[4])
        rbind(train, test)
}

bind_features_name <- function(dataset, names_path) {
        ## add row with names from provided file to dataset
        ## add names for two extra column at the end ("activity", "subject")
        features_name <- as.character(read.table(names_path)[, 2])
        features_name <- c(features_name, "activity", "subject")
        names(dataset) <- tolower(features_name)
        dataset
}

get_only_mean_and_std_data <- function(dataset) {
        ## choose columns with mean, std, activity and subject words in names
        idxs <- grepl("mean\\(\\)|std\\(\\)|activity|subject", names(dataset))
        dataset[, idxs]
}

bind_activity_names <- function(dataset, activities_name_path) {
        ## replace integer activity values with appropriate character name
        activities_name <- read.table(activities_name_path)[, 2]
        dataset$activity <- factor(dataset$activity, labels = activities_name)
        dataset
}

beautify_labels <- function(dataset) {
        ## modify column names in a way of usage more descriptive names
        process_labels <- function(feature_name) {
                feature_name %>% gsub("-", "_", .) %>%
                        gsub("\\(\\)", "", .) %>%
                        gsub("^t", "time", .) %>%
                        gsub("^f", "frequency", .) %>%
                        gsub("bodybody", "body", .) %>%
                        gsub("body", "_body", .) %>%
                        gsub("acc", "_acceleration", .) %>%
                        gsub("mag", "_magnitude", .) %>%
                        gsub("gyro", "_gyroscope", .) %>%
                        gsub("jerk", "_jerk", .) %>%
                        gsub("gravity", "_gravity", .)
        }
        names(dataset) <- process_labels(names(dataset))
        dataset
}

get_average_activity_subject_relationship <- function(dataset) {
        ## create new data set, which provides average values for each
        ## activity from each subject
        melted <- melt(dataset, id = c("subject", "activity"))
        dcast(melted, subject + activity ~ variable, mean)
}

work_data <- load_data(data_files[3:8]) %>%
                bind_features_name(data_files[2]) %>%
                get_only_mean_and_std_data() %>%
                bind_activity_names(data_files[1]) %>%
                beautify_labels()
tidy_data <- get_average_activity_subject_relationship(work_data)
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)