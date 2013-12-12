###############################
## Author: Eduardo Clark
## Project: Tweets by mexican municipality
## Date: December 2013
## Notes: for Alejandra Ibarra 
###############################

#Extract Tweets with Streaming API
message("Extracting Tweets, this will take a while")
T <- Sys.time() + 57600
message(paste("This should finish at ", T, sep=""))
remove(T)
filterStream( file="data-out/TweetsMexico.json",
             locations=c(-117.642,13.881 ,-86.616, 32.584), timeout=57600, oauth=my_oauth )


##Parse JSON to RDF (File to large to parse with this method, use method in MongoParse)
#Tweets <- parseTweets("data-out/TweetsMexico.json")
#Tweets <- subset(Tweets, Tweets$country_code=="MX")
#Tweets$lon <- as.numeric(Tweets$lon) #coordinates are extracted as numeric
#Tweets$lat <- as.numeric(Tweets$lat)
#write.csv(Tweets,"data-out/tweetsMexico.csv", row.names=FALSE)










