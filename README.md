# Amazon_Vine_Analysis

## Overview of the analysis
The purpose of our analysis was to analyze Amazon reviews written by members of the paid Amazon Vine program and those not participating. We utilized Amazon Web Services for the datase, Google Colaboratory for creating the tables, and I used SQL for analyzing the results.

## Results: Using bulleted lists and images of DataFrames as support, address the following questions:

### How many Vine reviews and non-Vine reviews were there? 

From our filtered down dataset (total votes over 20, 50%+ found favorable), the video game reviews had 94 vine member reviews and 40,471 non-member reviews.

![totals](https://user-images.githubusercontent.com/86527135/138608568-dd0bd0bd-695f-47bd-bc7f-68cac571f210.PNG)

### How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars? What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?

Out of these reviews, 48 (51%) were 5 stars from the vine members, and 15,663 (39%) from the non-members.

![total 5 star](https://user-images.githubusercontent.com/86527135/138608652-30dd660b-8ba0-4b1c-887d-d0b2790815f4.PNG)

## Summary: In your summary, state if there is any positivity bias for reviews in the Vine program. Use the results of your analysis to support your statement. Then, provide one additional analysis that you could do with the dataset to support your statement.

Since about half of the vine-member reviews were 5 stars and only a little over a third of the non-member reviews were 5 stars, we can conclude that there seems to be a bias for vine=members to rate items more favorably. We could also look at the distribution of other star ratings to see if there is a material difference in the amount of 1-star reviews, etc between the two types of reviewers.
