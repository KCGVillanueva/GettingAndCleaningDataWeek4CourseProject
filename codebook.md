A codebook for Getting and Cleaning Data Course Project

The Data
The tidy data has 180 rows and 81 columns.
Each row, for a given subject and activity, has averaged variables.

The Subject
The subject column ranges from 1 to 30.
The subject variable is an integer type.

The Activity
The activity column has 6 possible values:
1. WALKING
2. WALKING_UPSTAIRS
3. wALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
The activity variable is a factor type.

Two Domain Classifications
1. Time-domain
"timeDomainBodyAccelerometerJerkMagnitudeMean"                  
"timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"     
"timeDomainBodyAccelerometerJerkMeanX"                          
"timeDomainBodyAccelerometerJerkMeanZ"                          
"timeDomainBodyAccelerometerJerkStandardDeviationX"             
"timeDomainBodyAccelerometerJerkStandardDeviationY"             
"timeDomainBodyAccelerometerJerkStandardDeviationZ"             
"timeDomainBodyAccelerometerMagnitudeMean"                      
"timeDomainBodyAccelerometerMagnitudeStandardDeviation"         
"timeDomainBodyAccelerometerMeanX"                              
"timeDomainBodyAccelerometerMeanY"                              
"timeDomainBodyAccelerometerMeanZ"                              
"timeDomainBodyAccelerometerStandardDeviationX"                 
"timeDomainBodyAccelerometerStandardDeviationY"                 
"timeDomainBodyAccelerometerStandardDeviationZ"                 
"timeDomainBodyGyroscopeJerkMagnitudeMean"                      
"timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"         
"timeDomainBodyGyroscopeJerkMeanX"                              
"timeDomainBodyGyroscopeJerkMeanY"                              
"timeDomainBodyGyroscopeJerkMeanZ"                              
"timeDomainBodyGyroscopeJerkStandardDeviationX"                 
"timeDomainBodyGyroscopeJerkStandardDeviationY"                 
"timeDomainBodyGyroscopeJerkStandardDeviationZ"                 
"timeDomainBodyGyroscopeMagnitudeMean"                          
"timeDomainBodyGyroscopeMagnitudeStandardDeviation"             
"timeDomainBodyGyroscopeMeanX"                                  
"timeDomainBodyGyroscopeMeanY"                                  
"timeDomainBodyGyroscopeMeanZ"                                  
"timeDomainBodyGyroscopeStandardDeviationX"                     
"timeDomainBodyGyroscopeStandardDeviationY"                     
"timeDomainBodyGyroscopeStandardDeviationZ"                     
"timeDomainGravityAccelerometerMagnitudeMean"                   
"timeDomainGravityAccelerometerMagnitudeStandardDeviation"      
"timeDomainGravityAccelerometerMeanX"                           
"timeDomainGravityAccelerometerMeanY"                           
"timeDomainGravityAccelerometerMeanZ"                           
"timeDomainGravityAccelerometerStandardDeviationX"              
"timeDomainGravityAccelerometerStandardDeviationY"              
"timeDomainGravityAccelerometerStandardDeviationZ"  

2. Frequency-domain
"frequencyDomainBodyAccelerometerJerkMagnitudeMean"             
"frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"    
"frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
"frequencyDomainBodyAccelerometerJerkMeanFrequencyX"            
"frequencyDomainBodyAccelerometerJerkMeanFrequencyY"            
"frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"            
"frequencyDomainBodyAccelerometerJerkMeanX"                     
"frequencyDomainBodyAccelerometerJerkMeanY"                     
"frequencyDomainBodyAccelerometerJerkMeanZ"                     
"frequencyDomainBodyAccelerometerJerkStandardDeviationX"        
"frequencyDomainBodyAccelerometerJerkStandardDeviationY"        
"frequencyDomainBodyAccelerometerJerkStandardDeviationZ"        
"frequencyDomainBodyAccelerometerMagnitudeMean"                 
"frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"        
"frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"    
"frequencyDomainBodyAccelerometerMeanFrequencyX"                
"frequencyDomainBodyAccelerometerMeanFrequencyY"                
"frequencyDomainBodyAccelerometerMeanFrequencyZ"                
"frequencyDomainBodyAccelerometerMeanX"                         
"frequencyDomainBodyAccelerometerMeanY"                         
"frequencyDomainBodyAccelerometerMeanZ"                         
"frequencyDomainBodyAccelerometerStandardDeviationX"            
"frequencyDomainBodyAccelerometerStandardDeviationY"            
"frequencyDomainBodyAccelerometerStandardDeviationZ"            
"frequencyDomainBodyGyroscopeJerkMagnitudeMean"                 
"frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency"        
"frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"    
"frequencyDomainBodyGyroscopeMagnitudeMean"                     
"frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"            
"frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"        
"frequencyDomainBodyGyroscopeMeanFrequencyX"                    
"frequencyDomainBodyGyroscopeMeanFrequencyY"                    
"frequencyDomainBodyGyroscopeMeanFrequencyZ"                    
"frequencyDomainBodyGyroscopeMeanX"                             
"frequencyDomainBodyGyroscopeMeanY"                             
"frequencyDomainBodyGyroscopeMeanZ"                             
"frequencyDomainBodyGyroscopeStandardDeviationX"                
"frequencyDomainBodyGyroscopeStandardDeviationY"                
"frequencyDomainBodyGyroscopeStandardDeviationZ" 

The training and test sets were merged to create one data set.
The variable names were expanded with descriptive variable names and letters t and f were replaced by timeDomain and frequencyDomain respectively.
The final data set was created with the average of each variable for each activity and subject.

The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.