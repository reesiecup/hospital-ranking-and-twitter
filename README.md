# hospital-ranking-and-twitter
This is a project using Python and R to analyze the relation between a hospital's Twitter managment and its ranking among the U.S. Top 20 Hospitals. This project focused on hospitals listed on the U.S. News & World Report 2017-2018 Hospital Honor Roll. We used data and meta-data from Twitter as indicators for hospitals' Twitter managment, and we obtained the list and each hospital's ranking from the U.S. News & World Report. The Python libraries used in this project included (but not limited to) twint, pandas, matplotlib, seaborn, bokeh, nltk. The R libraries used in this projecct included ggplot2 and worldcloud.

# The Data
## Twitter management data
We screened all the Twitter accounts that are affiliated to the U.S. Top 20 Hospitals by its profile description. We then used Python package twint to scrap all the tweets, number of likes to each tweet, number of likes to the account, and number of followers to the account. Each tweet was further processed by Python package nltk, and hence the frequency of word use, sentiment and subjectivity score were obtained. 
## Hospital ranking data
We obtained the list from the U.S. News & World Report.
## Others
Supporting information, such as geographic location of each hospital, was obtained from Wikipedia.

# Questions Asked
1. How has the U.S. News & World Report Hostpial Honor Roll changed over the past 10 years? Where are the majority of the hospitals located in?
2. Descriptive statistics of Twitter management of the U.S. Top 20 Hospitals
3. How do the users name their Twitter handles?
4. Does the naming convention predict a twitter account’s popularity?
5. What do the users tweet?
5a. Subjectivity analysis
5b. Sentiment analysis
5c. World clouds based on word use frequency
6. What are the factors associating with a hospital’s ranking? Number of individual accounts? Number of followers? Number of likes to the official accounts?
7. What are the hospital characteristics associating with the likability to a hospital’s Twitter accounts? Likability index? The age of the hospital? The type of the affiliation a hospital has to an academic institute?

# Note
This is a project that aims to provide insights to a specific hospital regarding how to improve their social media management. The final report is not uploaded here due to confidentiality concerns.
