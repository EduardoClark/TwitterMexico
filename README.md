Twitter Streaming API for tweets in México
============================

The following script uses existing R packages to link to the twitter Streaming API and extract tweets in Mexico in real time.


### Running the scripts

Run the scripts in the "RunAll.r" one script at a time. The main reason being that you need to input a response for the twitter credential authentication. Also you must write your own api keys at the "TwitterCredentials.R" script. You can get them from the twitter developers site.

If you run the "RunAll.r" script you will get the following output

- "data/tweetsMexico.json" which includes all the extracted tweets in the original json format.

- "out-data/tweetsMexico.csv" which includes all the extracted tweets in a csv format.

- "out-data/Places1.csv" which includes the number of tweets that were extracted for each location (according to the twitter georeferencing)

- "plots/Map1-4.pdf" 4 different maps that show the extracted tweets both as points and as 2 dimension densities on a map of México



