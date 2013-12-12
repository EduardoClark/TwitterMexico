###############################
## Author: Eduardo Clark
## Project: Tweets by mexican municipality
## Date: December 2013
## Notes: for Alejandra Ibarra 
###############################

###Add Tweets to map for visual inspection
#Google Maps Layers
M <- get_map(location = "Mexico", zoom = 5, maptype = 'roadmap') 
G <- ggmap(M)

# Point Map
G1 <- G + geom_point(data=Tweets, aes(lon,lat))
Cairo(width=9.6, height=13.5, file="plots/Map1.pdf", type="pdf",units="in")
plot(G1)
dev.off()
#2D density map
G2 <- G + stat_density2d(data=Tweets, aes(lon, lat, fill=..level..),alpha=.3, geom="polygon")
Cairo(width=9.6, height=13.5, file="plots/Map2.pdf", type="pdf",units="in")
plot(G2)
dev.off()
G3 <- G + stat_density2d(data=Tweets, aes(lon, lat),alpha=.3, geom="polygon") 
Cairo(width=9.6, height=13.5, file="plots/Map4.pdf", type="pdf",units="in")
plot(G4)
dev.off()
#Point and Density Map
G4 <- G  + stat_density2d(data=Tweets, aes(lon, lat, fill=..level..),alpha=.3, geom="polygon") + geom_point(data=Tweets, aes(lon,lat))
Cairo(width=9.6, height=13.5, file="plots/Map4.pdf", type="pdf",units="in")
plot(G4)
dev.off()

#Remove Plotting Objects
remove(list=ls(pattern="G"), M)
system("rm ggmapTemp.png")
