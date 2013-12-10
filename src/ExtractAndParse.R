###############################
## Author: Eduardo Clark
## Project: Tweets by mexican municipality
## Date: December 2013
## Notes: for Alejandra Ibarra 
###############################

#Extract Tweets with Streaming API
message("Extracting tweets, this will take a while")
T <- Sys.time() + 57600
message(paste("This should finish at ", T, sep=""))
remove(T)
filterStream( file="data-out/tweetsMexico.json",
             locations=c(-117.642,13.881 ,-86.616, 32.584), timeout=57600, oauth=my_oauth )


##Parse JSON to RDF
tweets <- parseTweets("data-out/tweetsMexico.json")
tweets <- subset(tweets, tweets$country_code=="MX")
tweets$lon <- as.numeric(tweets$lon) #coordinates are extracted as numeric
tweets$lat <- as.numeric(tweets$lat)
write.csv(tweets,"data-out/tweetsMexico.csv", row.names=FALSE)










