# -*- coding: utf-8 -*-
"""
Created on Tue Nov  3 22:49:06 2020

@author: WiN 10
"""


import tweepy
import csv
import os
import datetime
#from apscheduler.schedulers.blocking import BlockingScheduler
# -*- coding: utf-8 -*-
#test section
def timed_job():
    consumer_key='96Rm00PfMEwtkBjhBoWlGwzDG'#init key and secret for tweepy
    consumer_secret='DUdU7P0CpbOAb0whx5pq28qEWlMsZOk3d9DkNZHyvj1bYOPldU'

    access_token='1214597752098717696-ID8wKAYJgZ3H35ebMAFkVKV1py6w19'
    access_token_secret='AYrRow7HiU2EUcdQx6co7ZT7dqMnweFOtvOdxHhyJZJYZ'
    auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)
    api = tweepy.API(auth, wait_on_rate_limit=True)#set tweepy api

    max_tweets = 100000#set maximum tweet that search
    query = "#ข่าวปลอม"#search topic
    searched_tweets = []#list for append tweet
    
    
    while len(searched_tweets) < max_tweets:#loop while used for search
        count = max_tweets-len(searched_tweets)
        try:
            new_tweets = api.search_tweets(q=query,count=count, tweet_mode = "extended")
            if(new_tweets not in searched_tweets):
                searched_tweets.extend(new_tweets)
                   
        except tweepy.errors.TweepyException:
            max_tweets = 0

    count_searched = 0

    for i in searched_tweets:#loop for append to list and crate to CSV
        if 'RT @' not in i.text:
            print (i.created_at,"ID :",i.author.id,"screen_name :",i.author.screen_name,"has tweeted: \n",i.text,"\n")
            count_searched += 1
            f=open('keyword_search.csv', 'a+',encoding="utf-8", newline='')
            writer = csv.writer(f)
            if(os.stat("keyword_search.csv").st_size == 0):
                writer.writerow(['Time','ID','Name','Text'])
            writer.writerow([i.created_at,i.id,i.author.screen_name,i.text])
            print(i.text)
            f.close()
    
    print("Total ",count_searched," has been tweeted")
    print("At time")
    print(datetime.datetime.now())

import time
start_time = time.time()
timed_job()
print("--- %s seconds ---" % (time.time() - start_time))
'''
scheduler = BlockingScheduler()
scheduler.add_job(timed_job, 'interval', hours=2)
scheduler.start()
'''