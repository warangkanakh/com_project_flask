import tweepy
import csv
import os
import datetime
from datetime import timedelta
from datetime import timezone
import pandas as pd
import all_function
import pymongo
"""**twitter API**

"""
#search setting
consumer_key='96Rm00PfMEwtkBjhBoWlGwzDG'#init key and secret for tweepy
consumer_secret='DUdU7P0CpbOAb0whx5pq28qEWlMsZOk3d9DkNZHyvj1bYOPldU'

access_token='1214597752098717696-ID8wKAYJgZ3H35ebMAFkVKV1py6w19'
access_token_secret='AYrRow7HiU2EUcdQx6co7ZT7dqMnweFOtvOdxHhyJZJYZ'
auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth, wait_on_rate_limit=True)#set tweepy api
query= ["ข่าวปลอม","อย่าแชร์","ข่าวปลอมอย่าแชร์","ไม่จริง","ไม่เป็นความจริง"]
count=100





x = datetime.datetime.now()
only_date = datetime.datetime.now().date()
tz = timezone(timedelta(hours=7))
  
new_time = x.astimezone(tz)
only_date=str(only_date)

import re
rt = 'RT'
covid_key = "โควิด"
vac_key ="วัคซีน"
news_list = []
news_list_detail = []

for i in query:
    for new_tweet in api.search_tweets(q=i,until=only_date):
        tweet = new_tweet.text
        if re.search(rt,tweet):
            continue
        else:
            if re.search(covid_key,tweet) or  re.search(vac_key,tweet):
                if tweet not in news_list:
                    news_list.append(tweet)
                    news_list_detail.append(new_tweet)



if len(news_list)!=0:
  predicted_list = []
  search_related_list = []
  datetime_list = []
  
  #predict and search related news
  for i in news_list:
      index = int(news_list.index(i))    
      predicted = all_function.predicted(i)
      related_news = all_function.search_related(i)
  
      predicted_list.append(predicted)
      search_related_list.append(related_news)
      datetime = str(news_list_detail[index].created_at)
      datetime_list.append(datetime)


  print("----------------------------------------")

  df = pd.DataFrame(columns=["datetime","news_text","predicted",'related_news'])
  df['datetime'] = datetime_list
  df['news_text'] = news_list
  df['predicted'] = predicted_list
  df['related_news'] = search_related_list
  news_dict = df.to_dict("records")
  
  #MongoDB access
  from pymongo import MongoClient
  client =  MongoClient("mongodb+srv://warangkana_kh:Sadaharu123@cluster0.h4ueo.mongodb.net/fakenews_db?retryWrites=true&w=majority")
  db = client['fakenews_db']
  warning_news = db['warning_news']


  #insert to MongoDB
  warning_news.insert_many(news_dict)
  print("add data completed ")
else:
    print("no news found")