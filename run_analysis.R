runAnalysis <- function(directory='.') {
    ## 'directory' is a character vector of length 1 indicating
    ## the root directory of the data files
    
    combinedDF <- combineData(directory)
    filteredDF <- filterAndRenameColumns(combinedDF)
    summaryDF <- summarizeData(filteredDF)
}

combineData <- function(directory) {
    ## 'directory' is a character vector of length 1 indicating
    ## the root directory of the data files
    activities <- read.table(paste(directory, 'activity_labels.txt', sep='/'), col.names = c('id', 'name'))
    features <- read.table(paste(directory, 'features.txt', sep='/'), col.names = c('num', 'name'))

    subdirs <- c('test', 'train')
    dfList <- list()
    for(subdir in subdirs) {
        fullPath <- paste(directory, subdir, sep='/')
        subjectFile <- paste(fullPath, '/', "subject", '_', subdir, '.txt', sep='')
        xFile <- paste(fullPath, '/', 'X', '_', subdir, '.txt', sep='')
        yFile <- paste(fullPath, '/','y', '_', subdir, '.txt', sep='')
        subjects <- read.table(subjectFile, col.names = c('subject'))
        xData <- read.table(xFile, col.names = features$name, check.names = FALSE)
        yData <- read.table(yFile, col.names = c('activity'))
        yData$activity <- factor(yData$activity, activities$id,
                                 gsub(pattern='_', replacement=' ', x=activities$name))
        df <- cbind(subjects, yData, xData)
        dfList[[length(dfList) + 1]] <- df
    }
    df <- do.call('rbind', dfList)
}

filterAndRenameColumns <- function(df) {
    ## 'df' is a data.frame from which we wish to filter the appropriate columns.
    ## We also rename the columns to have more descriptive names.
    filteredDF <- df[, grepl(pattern='subject|activity|mean\\(|std\\(', x=colnames(df))]
    cols <- make.names(colnames(filteredDF))
    cols <- gsub(pattern='\\.+', replacement=' ', x=cols)
    cols <- sub(pattern='\\s+$', replacement='', x = cols)
    cols <- gsub(pattern='std', replacement='sd', x=cols)
    cols <- gsub(pattern='Acc', replacement='Accelerometer', x=cols)
    cols <- gsub(pattern='Gyro', replacement='Gyroscope', x=cols)
    cols <- gsub(pattern='Mag', replacement='Magnitude', x=cols)
    cols <- gsub(pattern='BodyBody', replacement='Body', x=cols)
    colnames(filteredDF) <- cols
    filteredDF
}

summarizeData <- function(df) {
    ## 'df' is a data.frame which we wish to summarize.
    grouped <- select(df, subject, activity)
    data <- select(df, -subject, -activity)
    colnames(data) <- lapply(colnames(data), function(x) paste('mean of', x, sep=' '))
    summaryDF <- cbind(grouped, data) %>% group_by(subject, activity) %>% summarise_each(funs(mean))
}