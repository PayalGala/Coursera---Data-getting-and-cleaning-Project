The code book provides summary of the variables in tidy.txt

Subject - Id of the subject
Activity - the type of the activity performed

Each row contains 79 average signal measurements for a given subject and activity

Activity labels -
WALKING - subject was walking
WALKING_UPSTAIRS - subject was walking upstairs
WALKING_DOWNSTAIRS - subject was walking downstairs
SITTING - subject was sitting
STANDING - subject was standing
LAYING - subject was laying

The features in this text file come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

List of the features -
TimeDomainBodyAccelerationMeanX                                      
TimeDomainBodyAccelerationMeanY                                      
TimeDomainBodyAccelerationMeanZ                                   
TimeDomainBodyAccelerationStandardDeviationX                      
TimeDomainBodyAccelerationStandardDeviationY                          
TimeDomainBodyAccelerationStandardDeviationZ                          
TimeDomainGravityAccelerationMeanX                           
TimeDomainGravityAccelerationMeanY                                    
TimeDomainGravityAccelerationMeanZ                                    
TimeDomainGravityAccelerationStandardDeviationX               
TimeDomainGravityAccelerationStandardDeviationY                       
TimeDomainGravityAccelerationStandardDeviationZ                       
TimeDomainBodyAccelerationJerkMeanX                        
TimeDomainBodyAccelerationJerkMeanY                                   
TimeDomainBodyAccelerationJerkMeanZ                                   
TimeDomainBodyAccelerationJerkStandardDeviationX                      
TimeDomainBodyAccelerationJerkStandardDeviationY                     
TimeDomainBodyAccelerationJerkStandardDeviationZ                   
TimeDomainBodyGyroMeanX                                         
TimeDomainBodyGyroMeanY                                               
TimeDomainBodyGyroMeanZ                                               
TimeDomainBodyGyroStandardDeviationX                            
TimeDomainBodyGyroStandardDeviationY                                
TimeDomainBodyGyroStandardDeviationZ                                  
TimeDomainBodyGyroJerkMeanX                                   
TimeDomainBodyGyroJerkMeanY                                           
TimeDomainBodyGyroJerkMeanZ                                           
TimeDomainBodyGyroJerkStandardDeviationX                         
TimeDomainBodyGyroJerkStandardDeviationY                              
TimeDomainBodyGyroJerkStandardDeviationZ                              
TimeDomainBodyAccelerationMagnitudeMean                           
TimeDomainBodyAccelerationMagnitudeStandardDeviation         
TimeDomainGravityAccelerationMagnitudeMean                   
TimeDomainGravityAccelerationMagnitudeStandardDeviation        
TimeDomainBodyAccelerationJerkMagnitudeMean                
TimeDomainBodyAccelerationJerkMagnitudeStandardDeviation
TimeDomainBodyGyroMagnitudeMean                           
TimeDomainBodyGyroMagnitudeStandardDeviation                      
TimeDomainBodyGyroJerkMagnitudeMean                          
TimeDomainBodyGyroJerkMagnitudeStandardDeviation                    
FrequencyuencyDomainBodyAccelerationMeanX                       
FrequencyuencyDomainBodyAccelerationMeanY                             
FrequencyuencyDomainBodyAccelerationMeanZ                             
FrequencyuencyDomainBodyAccelerationStandardDeviationX            
FrequencyuencyDomainBodyAccelerationStandardDeviationY            
FrequencyuencyDomainBodyAccelerationStandardDeviationZ                
FrequencyuencyDomainBodyAccelerationMeanFrequencyX             
FrequencyuencyDomainBodyAccelerationMeanFrequencyY                    
FrequencyuencyDomainBodyAccelerationMeanFrequencyZ                    
FrequencyuencyDomainBodyAccelerationJerkMeanX                     
FrequencyuencyDomainBodyAccelerationJerkMeanY                         
FrequencyuencyDomainBodyAccelerationJerkMeanZ                         
FrequencyuencyDomainBodyAccelerationJerkStandardDeviationX 
FrequencyuencyDomainBodyAccelerationJerkStandardDeviationY            
FrequencyuencyDomainBodyAccelerationJerkStandardDeviationZ         
FrequencyuencyDomainBodyAccelerationJerkMeanFrequencyX           
FrequencyuencyDomainBodyAccelerationJerkMeanFrequencyY            
FrequencyuencyDomainBodyAccelerationJerkMeanFrequencyZ           
FrequencyuencyDomainBodyGyroMeanX                                 
FrequencyuencyDomainBodyGyroMeanY                                
FrequencyuencyDomainBodyGyroMeanZ                                
FrequencyuencyDomainBodyGyroStandardDeviationX                      
FrequencyuencyDomainBodyGyroStandardDeviationY                      
FrequencyuencyDomainBodyGyroStandardDeviationZ                       
FrequencyuencyDomainBodyGyroMeanFrequencyX                         
FrequencyuencyDomainBodyGyroMeanFrequencyY                         
FrequencyuencyDomainBodyGyroMeanFrequencyZ                       
FrequencyuencyDomainBodyAccelerationMagnitudeMean                   
FrequencyuencyDomainBodyAccelerationMagnitudeStandardDeviation      
FrequencyuencyDomainBodyAccelerationMagnitudeMeanFrequency          
FrequencyuencyDomainBodyBodyAccelerationJerkMagnitudeMean         
FrequencyuencyDomainBodyBodyAccelerationJerkMagnitudeStandardDeviation
FrequencyuencyDomainBodyBodyAccelerationJerkMagnitudeMeanFrequency    
FrequencyuencyDomainBodyBodyGyroMagnitudeMean                         
FrequencyuencyDomainBodyBodyGyroMagnitudeStandardDeviation            
FrequencyuencyDomainBodyBodyGyroMagnitudeMeanFrequency              
FrequencyuencyDomainBodyBodyGyroJerkMagnitudeMean      
FrequencyuencyDomainBodyBodyGyroJerkMagnitudeStandardDeviation   
FrequencyuencyDomainBodyBodyGyroJerkMagnitudeMeanFrequency

