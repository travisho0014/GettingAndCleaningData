# Getting and Cleaning Data

This assignment inclued these files.

1 README.md      ---  Readme for this project.

2 run_analysis.R --- The Script for cleaning the data.

3 Cookbook.md    --- Describe the variables' feature.


## The Goal 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.


## Data Source
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## Run the code 

1. Put ttps://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip in your working directory.

2. In run_analysis.R, set the data path for this project. If the data folder is already in current working directory, the path do not need to be changed.

3. In command line, source("run_analysis")

4. execute run_analysi() 

5. Then output the tidy_data.txt in currentworking directory.

## How the scrip work

1. Loading test data and train data.

2. Merging the test and train data.

3. Setup the features name includeing features and activiies. 

4. Combining the data and features into a data table.

5. Using lapply to selected the data from mean and sd. 
