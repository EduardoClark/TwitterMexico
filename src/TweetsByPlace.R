###############################
## Author: Eduardo Clark
## Project: Tweets by mexican municipality
## Date: December 2013
## Notes: for Alejandra Ibarra 
###############################

##Use Twitter Location Aproximation for first location table
Places1 <- ldply(table(tweets$full_name))
Places1 <- arrange(Places1, desc(Places1$V1))
write.csv(Places1, "data-out/Places1.csv", row.names=FALSE)
