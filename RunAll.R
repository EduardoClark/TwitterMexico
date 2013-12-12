###############################
## Author: Eduardo Clark
## Project: Tweets by mexican municipality
## Date: December 2013
## Notes: for Alejandra Ibarra 
###############################
##Run one script at a time to avoid problems with ROAuth

#Load libraries
source("src/loadLibraries.R")

#Autheticate Twitter and streamR
source("src/TwitterCredentials.R") #requires user input to complete

#Extract and Parse tweets
source("src/ExtractAndParse.R")
soruce("src/MongoParse.R")

#Get tweets by location
source("src/TweetsByPlace.R")

#Create Maps
source("src//MapIt.R")

