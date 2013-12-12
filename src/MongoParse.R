###############################
## Author: Eduardo Clark
## Project: Tweets by mexican municipality
## Date: December 2013
## Notes: for Alejandra Ibarra 
###############################

#mongo <- mongoDbConnect("test")
#output <- dbInsertDocument(mongo, "test_data", 'data-out/tweetsMexico.json')

##Extract and parse in batches in batches
P <- readLines("data-out/tweetsMexico.json"  ,n=100000000) #read as character vector
Lines <- (length(P) / 1000) + 1
message("Batch processing and parsing JSON Tweets to Dataframe, this might take a while")

for(i in 1:Lines){
  tmp <- 1 + ((i-1) * 1000)  
  tmp1 <- i*1000 
  tmp <- P[tmp:tmp1]
  tmp <- parseTweets(tmp)
  Tweets <- rbind(Tweets, tmp)
  tmp2 <- paste((i / 421 * 100),"%", "complete", sep=" ")
  message(tmp2)
  remove(tmp,tmp1)
}
remove(Linesm,i,P)
Tweets$lon <- as.numeric(Tweets$lon) #coordinates are extracted as numeric
Tweets$lat <- as.numeric(Tweets$lat)

#Drop US Tweets
Tweets <- subset(Tweets, Tweets$country_code=="MX")

#Write Tweets DF
write.csv(Tweets,"data-out/tweetsMexico.csv", row.names=FALSE)


