# -*- coding: utf-8 -*-
"""
Created on Mon Jan 17 14:43:23 2022

@author: WiN 10
"""
import tweepy
import time
consumer_key='96Rm00PfMEwtkBjhBoWlGwzDG'
consumer_secret='DUdU7P0CpbOAb0whx5pq28qEWlMsZOk3d9DkNZHyvj1bYOPldU'
    
access_token='1214597752098717696-ID8wKAYJgZ3H35ebMAFkVKV1py6w19'
access_token_secret='AYrRow7HiU2EUcdQx6co7ZT7dqMnweFOtvOdxHhyJZJYZ'
auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth, wait_on_rate_limit=True)


def get_tweet_by_link(url):
    import tweepy
    
    id_status = url.split('status/')[-1]

    #create tweepy's api
    
    #query
    status = api.get_status(id_status, tweet_mode="extended")
    content = status.full_text
    author = status.author.screen_name
    create_date = status.created_at
    user = api.get_user(screen_name=author)
    verified = user.verified
    verified_pic=""
    if verified==True:
        verified_pic ="https://sv1.picz.in.th/images/2022/01/30/nauem1.png"
    else:
        verified_pic="https://sv1.picz.in.th/images/2022/01/30/naniIq.png"
    retweeted = status.retweet_count
    followers_count = user.followers_count
    profile_pic = user.profile_image_url
    profile_pic = profile_pic.replace("_normal.jpg","_400x400.jpg")
    
    # get the screen names of the retweeters and follower
    retweet_list = []
    for retweet in api.get_retweets(id=id_status):
        retweet_list.append(retweet.user.screen_name)

    follower_list = []
    for follower in api.get_followers(screen_name=author):
        follower_list.append(follower.screen_name)
    return([content,author,create_date,verified_pic,retweeted,followers_count,profile_pic])

#start = time.time()
#print(get_tweet_by_link("https://twitter.com/ttraisuree/status/1466343303998181378"))
#")
#print('\ntimer %s seconds'%(time.time()-start))
