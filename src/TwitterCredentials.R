###############################
## Author: Eduardo Clark
## Project: Tweets by mexican municipality
## Date: December 2013
## Notes: for Alejandra Ibarra 
###############################

##Autheticate twitter app using ROAuth
#source("src/CredentialsIgnore.R")
requestURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "http://api.twitter.com/oauth/access_token"
authURL <- "http://api.twitter.com/oauth/authorize"
#consumerKey <- "##################" ##Use your own consumer key
#consumerSecret <- "#################" ##Use your own consumer secret

# Use credentials with OAuth
my_oauth <- OAuthFactory$new(consumerKey=consumerKey,
                             consumerSecret=consumerSecret, requestURL=requestURL,
                             accessURL=accessURL, authURL=authURL)

message("go to the link to complete ROAuth")