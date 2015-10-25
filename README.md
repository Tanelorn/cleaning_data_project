# Getting-and-Cleaning-Data Project
This is the README file for the Getting and Cleaning Data Course Project (Coursera) that was prepared by Miguel Romance del Rio

## Description
The purpose of this project is to show the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The files submitted are the following: 

* CodeBook.md: information about raw and tidy data set
* README.md: this file
* run_analysis.R: R script to transform raw data set in a tidy one

## File run_analysis.R

This is an R script that collects the following tasks:

* It merges the training and the test sets to create one data set.
* It extracts only the measurements on the mean and standard deviation for each measurement.
* It uses descriptive activity names to name the activities in the data set
* It appropriately labels the data set with descriptive variable names.
* From the data set in the previous step, it creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 * It creates a couple of files containing the data set in txt format (tidy.txt) and in CSV format (tidy.csv)