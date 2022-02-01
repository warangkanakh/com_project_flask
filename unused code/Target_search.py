# -*- coding: utf-8 -*-
"""
Created on Sun Sep  6 09:31:33 2020

@author: WiN 10
"""

import tweepy
import csv
# -*- coding: utf-8 -*-
#test section
consumer_key='96Rm00PfMEwtkBjhBoWlGwzDG'
consumer_secret='DUdU7P0CpbOAb0whx5pq28qEWlMsZOk3d9DkNZHyvj1bYOPldU'

access_token='1214597752098717696-ID8wKAYJgZ3H35ebMAFkVKV1py6w19'
access_token_secret='AYrRow7HiU2EUcdQx6co7ZT7dqMnweFOtvOdxHhyJZJYZ'
auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth, wait_on_rate_limit=True)

'''users = ['@js100radio','@kapookdotcom','@TNAMCOT','@thaich8news','@mthai',
         '@ThaiPBSNews', '@BKK_BEST' , '@ThaiPBS' , '@Thairath_News' , '@tnnthailand' ,
         '@Ch3ThailandNews' , '@nnanews' , '@PostToday' , '@onenews31','@AFNCThailand',
         '@ZhentingLiu','@ERnewsroom','@naewna_news','@Kom_chad_luek',"@InfoQuestNews","@fm91trafficpro",
         '@SPRiNGNEWS_TH','@thethaiger_th','@sarawitnstda','@Mono29News','@Rachadaspoke','@thaipost',"@Isra_News",
         '@siamrath_online','@NewsReport79','@rthonline1',"@nnthotnews",'@prasitchai_k','@chabablack','@Earth2204','@sunyo29','@PR_mof',
         '@i88888888','@HealthUpdateTh','@newsplusTH','@Thansettakij','@siamflashnews','@SureAndShare','@ttraisuree','@Thailandplus1','@tWC7yViRnDecq4y',
         '@IPD_THANN','@brickbybrix','@techoffside','@salehere1','@chakhaoden','@aec10news',
         '@siamrath_online', '@MOTOneTransport',"@naewna_news"]
'''


'''users = ['@js100radio','@kapookdotcom','@TNAMCOT','@thaich8news','@mthai',
         '@ThaiPBSNews', '@ThaiPBS' , '@Thairath_News' , '@tnnthailand' ,
         '@Ch3ThailandNews' , '@nnanews' , '@PostToday' , '@onenews31']'''
users= ['@CofactThailand','@pr_dms']

#query = ["น้ำท่วม","พายุ","ฝนตกหนัก","เขื่อนแตก","ดินถล่ม","แผ่นดินไหว","อากาศหนาว","หนาวจัด","ไฟไหม้"]#search topic
query=['ข่าวปลอม','#ข่าวปลอม','ไม่เป็นความจริง','ไม่จริง']
count_searched = 0

for index in range(0,len(users)):
    for i in tweepy.Cursor(api.user_timeline, screen_name=users[index], tweet_mode="extended").items():
        for j in range(len(query)):
            if (query[j] in i.full_text) and (('RT @' or 'RT@') not in i.full_text):
                print(i.created_at,i.author.screen_name,"has tweeted: \n",i.full_text,"\n")
                count_searched += 1
                f=open('all_Account_search_fake_news.csv', 'a+',encoding="utf-8", newline='')
                writer = csv.writer(f)
                writer.writerow([i.created_at,i.id,i.author.screen_name,i.full_text])
                f.close()
    
    print("Total ",count_searched," has been tweeted at ", users[index],' user')