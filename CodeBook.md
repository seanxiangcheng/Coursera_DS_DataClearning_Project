# Smartphones Dataset of Human Activities
A version of tidy data set for the class project of Getting and Cleaning Data

## Source 
* Full description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. The acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer_XYZ and timeGravityAccelerometer_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk_XYZ and timeBodyGyroscopeJerk_XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

For each record it is provided the mean and standard deviation (if any) of:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

In the features names:   
* mean: Mean value
* std: Standard deviation


## Variables / features
* 1. "subject"     
              subject number, 1...30
* 2. "activity"
    Acitivity label
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"

* 3. "timeBodyAccelerometer_mean_X"
              see data description. 
* 4. "timeBodyAccelerometer_mean_Y"                    
* 5. "timeBodyAccelerometer_mean_Z"                    
* 6. "timeBodyAccelerometer_std_X"                     
* 7. "timeBodyAccelerometer_std_Y"                     
* 8. "timeBodyAccelerometer_std_Z"                     
* 9. "timeGravityAccelerometer_mean_X"                 
* 10. "timeGravityAccelerometer_mean_Y"                 
* 11. "timeGravityAccelerometer_mean_Z"                 
* 12. "timeGravityAccelerometer_std_X"                  
* 13. "timeGravityAccelerometer_std_Y"                  
* 14. "timeGravityAccelerometer_std_Z"                  
* 15. "timeBodyAccelerometerJerk_mean_X"                
* 16. "timeBodyAccelerometerJerk_mean_Y"                
* 17. "timeBodyAccelerometerJerk_mean_Z"                
* 18. "timeBodyAccelerometerJerk_std_X"                 
* 19. "timeBodyAccelerometerJerk_std_Y"                 
* 20. "timeBodyAccelerometerJerk_std_Z"                 
* 21. "timeBodyGyroscope_mean_X"                        
* 22. "timeBodyGyroscope_mean_Y"                        
* 23. "timeBodyGyroscope_mean_Z"                        
* 24. "timeBodyGyroscope_std_X"                         
* 25. "timeBodyGyroscope_std_Y"                         
* 26. "timeBodyGyroscope_std_Z"                         
* 27. "timeBodyGyroscopeJerk_mean_X"                    
* 28. "timeBodyGyroscopeJerk_mean_Y"                    
* 29. "timeBodyGyroscopeJerk_mean_Z"                    
* 30. "timeBodyGyroscopeJerk_std_X"                     
* 31. "timeBodyGyroscopeJerk_std_Y"                     
* 32. "timeBodyGyroscopeJerk_std_Z"                     
* 33. "timeBodyAccelerometerMagnitude_mean"             
* 34. "timeBodyAccelerometerMagnitude_std"              
* 35. "timeGravityAccelerometerMagnitude_mean"          
* 36. "timeGravityAccelerometerMagnitude_std"           
* 37. "timeBodyAccelerometerJerkMagnitude_mean"         
* 38. "timeBodyAccelerometerJerkMagnitude_std"          
* 39. "timeBodyGyroscopeMagnitude_mean"                 
* 40. "timeBodyGyroscopeMagnitude_std"                  
* 41. "timeBodyGyroscopeJerkMagnitude_mean"             
* 42. "timeBodyGyroscopeJerkMagnitude_std"              
* 43. "frequencyBodyAccelerometer_mean_X"               
* 44. "frequencyBodyAccelerometer_mean_Y"               
* 45. "frequencyBodyAccelerometer_mean_Z"               
* 46. "frequencyBodyAccelerometer_std_X"                
* 47. "frequencyBodyAccelerometer_std_Y"                
* 48. "frequencyBodyAccelerometer_std_Z"                
* 49. "frequencyBodyAccelerometerJerk_mean_X"           
* 50. "frequencyBodyAccelerometerJerk_mean_Y"           
* 51. "frequencyBodyAccelerometerJerk_mean_Z"           
* 52. "frequencyBodyAccelerometerJerk_std_X"            
* 53. "frequencyBodyAccelerometerJerk_std_Y"            
* 54. "frequencyBodyAccelerometerJerk_std_Z"            
* 55. "frequencyBodyGyroscope_mean_X"                   
* 56. "frequencyBodyGyroscope_mean_Y"                   
* 57. "frequencyBodyGyroscope_mean_Z"                   
* 58. "frequencyBodyGyroscope_std_X"                    
* 59. "frequencyBodyGyroscope_std_Y"                    
* 60. "frequencyBodyGyroscope_std_Z"                    
* 61. "frequencyBodyAccelerometerMagnitude_mean"        
* 62. "frequencyBodyAccelerometerMagnitude_std"         
* 63. "frequencyBodyBodyAccelerometerJerkMagnitude_mean"
* 64. "frequencyBodyBodyAccelerometerJerkMagnitude_std" 
* 65. "frequencyBodyBodyGyroscopeMagnitude_mean"        
* 66. "frequencyBodyBodyGyroscopeMagnitude_std"         
* 67. "frequencyBodyBodyGyroscopeJerkMagnitude_mean"    
* 68. "frequencyBodyBodyGyroscopeJerkMagnitude_std"     
* 69. "activity_id"                                     
