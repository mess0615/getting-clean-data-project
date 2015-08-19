# Codebook for Programming Assignment
#### Columns 3-68 represent the mean of those measurements grouped by subject and activity.
#### Columns 3-68 are derived from source data where values were normalized and bounded within [-1,1].

| Column Index | Column Name | Column Type | Description |
| ---------------: | ---------------- | --------------- | ------------- |
| 1 | subject | int | Subject ID (as listed in raw data)
| 2 | activity | factor (6 levels) | Activity name (decoded using activity_labels.txt)
| 3 | mean of tBodyAccelerometer mean X | num | Mean of mean of time domain body linear acceleration along X axis  |
| 4 | mean of tBodyAccelerometer mean Y | num | Mean of mean of time domain body linear acceleration along Y axis |
| 5 | mean of tBodyAccelerometer mean Z | num |  Mean of mean of time domain body linear acceleration along Z axis |
| 6 | mean of tBodyAccelerometer sd X | num |  Mean of standard deviation of time domain body linear acceleration along X axis |
| 7 | mean of tBodyAccelerometer sd Y | num |  Mean of standard deviation of time domain body linear acceleration along Y axis |
| 8 | mean of tBodyAccelerometer sd Z | num |  Mean of standard deviation of time domain body linear acceleration along Z axis |
| 9 | mean of tGravityAccelerometer mean X | num | Mean of mean of time domain gravity linear acceleration along X axis  |
| 10 | mean of tGravityAccelerometer mean Y | num | Mean of mean of time domain gravity linear acceleration along Y axis  |
| 11 | mean of tGravityAccelerometer mean Z | num | Mean of mean of time domain gravity linear acceleration along Z axis  |
| 12 | mean of tGravityAccelerometer sd X | num | Mean of standard deviation of time domain gravity linear acceleration along X axis |
| 13 | mean of tGravityAccelerometer sd Y | num | Mean of standard deviation of time domain gravity linear acceleration along Y axis |
| 14 | mean of tGravityAccelerometer sd Z | num | Mean of standard deviation of time domain gravity linear acceleration along Z axis |
| 15 | mean of tBodyAccelerometerJerk mean X | num | Mean of mean of time domain body linear acceleration jerk along X axis  |
| 16 | mean of tBodyAccelerometerJerk mean Y | num | Mean of mean of time domain body linear acceleration jerk along Y axis  |
| 17 | mean of tBodyAccelerometerJerk mean Z | num | Mean of mean of time domain body linear acceleration jerk along Z axis  |
| 18 | mean of tBodyAccelerometerJerk sd X | num | Mean of standard deviation of time domain body linear acceleration jerk along X axis  |
| 19 | mean of tBodyAccelerometerJerk sd Y | num | Mean of standard deviation of time domain body linear acceleration jerk along Y axis  |
| 20 | mean of tBodyAccelerometerJerk sd Z | num | Mean of standard deviation of time domain body linear acceleration jerk along Z axis  |
| 21 | mean of tBodyGyroscope mean X | num | Mean of mean of time domain body angular velocity along X axis  |
| 22 | mean of tBodyGyroscope mean Y | num | Mean of mean of time domain body angular velocity along Y axis  |
| 23 | mean of tBodyGyroscope mean Z | num | Mean of mean of time domain body angular velocity along Z axis  |
| 24 | mean of tBodyGyroscope sd X | num | Mean of standard deviation of time domain body angular velocity along X axis  |
| 25 | mean of tBodyGyroscope sd Y | num | Mean of standard deviation of time domain body angular velocity along Y axis  |
| 26 | mean of tBodyGyroscope sd Z | num | Mean of standard deviation of time domain body angular velocity along Z axis  |
| 27 | mean of tBodyGyroscopeJerk mean X | num | Mean of mean of time domain body angular velocity jerk along X axis  |
| 28 | mean of tBodyGyroscopeJerk mean Y | num | Mean of mean of time domain body angular velocity jerk along Y axis  |
| 29 | mean of tBodyGyroscopeJerk mean Z | num | Mean of mean of time domain body angular velocity jerk along Z axis  |
| 30 | mean of tBodyGyroscopeJerk sd X | num | Mean of standard deviation of time domain body angular velocity jerk along X axis |
| 31 | mean of tBodyGyroscopeJerk sd Y | num | Mean of standard deviation of time domain body angular velocity jerk along Y axis |
| 32 | mean of tBodyGyroscopeJerk sd Z | num | Mean of standard deviation of time domain body angular velocity jerk along Z axis |
| 33 | mean of tBodyAccelerometerMagnitude mean | num | Mean of mean of time domain body linear acceleration magnitude |
| 34 | mean of tBodyAccelerometerMagnitude sd | num |  Mean of standard deviation of time domain body linear acceleration magnitude |
| 35 | mean of tGravityAccelerometerMagnitude mean | num | Mean of mean of time domain gravity linear acceleration magnitude |
| 36 | mean of tGravityAccelerometerMagnitude sd | num | Mean of standard deviation of time domain gravity linear acceleration magnitude |
| 37 | mean of tBodyAccelerometerJerkMagnitude mean | num | Mean of mean of time domain body linear acceleration jerk magnitude |
| 38 | mean of tBodyAccelerometerJerkMagnitude sd | num | Mean of standard deviation of time domain body linear acceleration jerk magnitude |
| 39 | mean of tBodyGyroscopeMagnitude mean | num | Mean of mean of time domain body angular velocity magnitude |
| 40 | mean of tBodyGyroscopeMagnitude sd | num | Mean of standard deviation of time domain body angular velocity magnitude |
| 41 | mean of tBodyGyroscopeJerkMagnitude mean | num | Mean of mean of time domain body angular velocity jerk magnitude |
| 42 | mean of tBodyGyroscopeJerkMagnitude sd | num | Mean of standard deviation of time domain body angular velocity jerk magnitude |
| 43 | mean of fBodyAccelerometer mean X | num | Mean of mean of frequency domain body linear acceleration along X axis  |
| 44 | mean of fBodyAccelerometer mean Y | num | Mean of mean of frequency domain body linear acceleration along Y axis  |
| 45 | mean of fBodyAccelerometer mean Z | num | Mean of mean of frequency domain body linear acceleration along Z axis  |
| 46 | mean of fBodyAccelerometer sd X | num | Mean of standard deviation of frequency domain body linear acceleration along X axis  |
| 47 | mean of fBodyAccelerometer sd Y | num | Mean of standard deviation of frequency domain body linear acceleration along Y axis  |
| 48 | mean of fBodyAccelerometer sd Z | num | Mean of standard deviation of frequency domain body linear acceleration along Z axis  |
| 49 | mean of fBodyAccelerometerJerk mean X | num | Mean of mean of frequency domain body linear acceleration jerk along X axis  |
| 50 | mean of fBodyAccelerometerJerk mean Y | num | Mean of mean of frequency domain body linear acceleration jerk along Y axis  |
| 51 | mean of fBodyAccelerometerJerk mean Z | num | Mean of mean of frequency domain body linear acceleration jerk along Z axis  |
| 52 | mean of fBodyAccelerometerJerk sd X | num | Mean of standard deviation of frequency domain body linear acceleration jerk along X axis  |
| 53 | mean of fBodyAccelerometerJerk sd Y | num | Mean of standard deviation of frequency domain body linear acceleration jerk along Y axis  |
| 54 | mean of fBodyAccelerometerJerk sd Z | num | Mean of standard deviation of frequency domain body linear acceleration jerk along Z axis  |
| 55 | mean of fBodyGyroscope mean X | num | Mean of mean of frequency domain body angular velocity along X axis  |
| 56 | mean of fBodyGyroscope mean Y | num | Mean of mean of frequency domain body angular velocity along Y axis  |
| 57 | mean of fBodyGyroscope mean Z | num | Mean of mean of frequency domain body angular velocity along Z axis  |
| 58 | mean of fBodyGyroscope sd X | num | Mean of standard deviation of frequency domain body angular velocity along X axis  |
| 59 | mean of fBodyGyroscope sd Y | num | Mean of standard deviation of frequency domain body angular velocity along Y axis  |
| 60 | mean of fBodyGyroscope sd Z | num | Mean of standard deviation of frequency domain body angular velocity along Z axis  |
| 61 | mean of fBodyAccelerometerMagnitude mean | num | Mean of mean of frequency domain body linear acceleration magnitude |
| 62 | mean of fBodyAccelerometerMagnitude sd | num | Mean of standard deviation of frequency domain body linear acceleration magnitude |
| 63 | mean of fBodyAccelerometerJerkMagnitude mean | num | Mean of mean of frequency domain body linear acceleration jerk magnitude |
| 64 | mean of fBodyAccelerometerJerkMagnitude sd | num | Mean of standard deviation of frequency domain body linear acceleration jerk magnitude |
| 65 | mean of fBodyGyroscopeMagnitude mean | num | Mean of mean of frequency domain body angular velocity magnitude |
| 66 | mean of fBodyGyroscopeMagnitude sd | num | Mean of standard deviation of frequency domain body angular velocity magnitude |
| 67 | mean of fBodyGyroscopeJerkMagnitude mean | num | Mean of mean of frequency domain body angular velocity jerk magnitude |
| 68 | mean of fBodyGyroscopeJerkMagnitude sd | num | Mean of standard deviation of frequency domain body angular velocity jerk magnitude |
