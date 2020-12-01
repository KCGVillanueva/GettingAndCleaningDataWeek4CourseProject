This repository was made for the course project in Getting ang Cleaning Data and contains the following files:

- README.md, this actual file that gives an overview of the data set and how it was created.
- tidydata.txt that contains the date set.
- codebook.md that has the contents of the data set.
- run_analysis.R, the R script used to create the data set.

First thing to do is to download and unzip the data file into your R working directory.
Next would be to download the R source code into you R working directory.
And lastly, execute R source code to generate tidy data file.

Data Description:
The data was collected from 30 subjects within an age bracket of 19-48 years old.
Each subject did activities while wearing a smartphone on their waist.


Creating the data set:
- Read training, test, features and activity labels data.

- Merge the training and the test sets to create one data set.
Use cbind command for both train, test and subject datas,
then use rbind command to make single data table.
Remove individual data table using rm command to save memory.

- Extract only the measurements on the mean and standard deviation for each measurement.
Determine the columns of data set to keep based on the column name and keep the data in the same column name.

- Use descriptive activity names to name the activities in the data set.
Replace activity labels with named factor levels

- Appropriately label the data set with descriptive variable names.
Give descriptive variable names and remove special characters to make it look clean.
 
- Create a second, independent tidy set with the average of each variable for each activity and each subject.
Use pipeline command to create a new tidy dataset with group by subject and activity  and summarize using mean.

- Write the data set to the tidy_data.txt file.

The R script requires the dplyr package (Version 1.0.2 was used)