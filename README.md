# Getting and Cleaning Data - Course Project

## Prerequisites:
- dplyr library must be installed in R.
- Download the UCI data from here:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
- Extract the zip file to a directory and make note of the path to the data directory.

## Script Usage (in R):

```
setwd("path_to_script")
source("run_analysis.R")

# If no data directory is passed to the function, the current working directory is used.
# tidyData will be a data.frame containing a wide tidy data set.
 
tidyData <- runAnalysis("path_to_data_directory")
## OR ##
setwd("path_to_data_directory")
tidyData <- runAnalysis()
```

## Transformations Performed on Raw Data:

The tidy data set was created in 3 steps.

### Load / Combine Data:
- First, load the activities data from 'activity_labels.txt' and the feature definitions from 'features.txt' (using read.table).
- Loop once per subdirectory (for test and train data) since we will be combining both:
  - Read the subject file using read.table. The subject file will become the subject column for our combined dataset.
  - Read the X file using read.table.  This file contains the actual features.  We use the feature names from feature.txt as the column names.
  - Read the Y file using read.table.  This file contains the activity values for each row corresponding to the feature data in X. After loading this, we convert the column to a factor using activity labels (from activity_labels.txt) as the levels.
  - Bind the subject data (subject column), Y data (activity column) and X data (feature columns) using cbind into a combined data frame.
  - Add the data frame to a list (which will eventually contain a data frame for the test and train data).
- Call rbind on the list of data frames to combine the rows from test and train data into one data frame.

### Filter / Rename Columns:
 - Filter the columns to only contain subject, activity and any feature columns containing 'mean(' or 'std('
 - Rename the columns (sourced originally from features.txt) to be more descriptive using the following rules:
   - Call make.names() on them to remove invalid characters.
   - Convert one or more dots to a single dot.
   - Remove any trailing dots.
   - Rename std to sd.
   - Rename Acc to Accelerometer.
   - Rename Gyro to Gyroscope.
   - Rename Mag to Magnitude.
   - Rename BodyBody to Body (assumed to be a typo).

### Summarize Data:
- Rename feature columns (all columns besides subject and activity) to be prefixed with 'mean of'.  This is to clearly indicate that these columns will now contain the aggregated mean of the data grouped by subject and activity.
- Use dplyr's group_by() and summarise_each() to group the data by subject and activity and then summarize using the mean function.

## Assumptions:

- A wide tidy data set was chosen to be ideal, with a row for each subject and activity combination and the mean of each feature as a separate column or variable.
- The assignment's requirement to extract only means and standard deviations of measurements was interpreted to be any feature containing the string 'mean(' or 'std('.  This results in 66 features or variables.
- The subject, X and Y files in the test and train directories are sufficient.  The data in Inertial Signals subdirectories was not used.
- Appropriately labeling the data set with descriptive variable names was interpreted as:
  - Remove all invalid punctuation (using make.names()).
  - Replace multiple periods with a single period and remove trailing periods.
  - Expand shortened words to make them clearer.
  - Replace BodyBody to Body as it seemed to be a typo.
  - Replace std with sd to indicate standard deviation.
