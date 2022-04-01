import tensorflow as tf
from sklearn import preprocessing
import Function #model
import getTweetById
import related_news #related_news

import datetime
from datetime import timedelta
from datetime import timezone
import re
import pymongo
import urllib

myclient = pymongo.MongoClient("mongodb+srv://warangkana_kh:Sadaharu123@cluster0.h4ueo.mongodb.net/fakenews_db?retryWrites=true&w=majority")
db = myclient['fakenews_db']
warning_news = db['warning_news']


#model predict function
new_model = tf.keras.models.load_model('my_model_new')
def predicted(input_text):
    result = Function.preprocess_input_text(input_text)
    predicted = new_model.predict(result)
    predicted = preprocessing.binarize(predicted)
    result_binary = int(predicted[0][0])
    return result_binary


#search_related function
def search_related(input_text):
    search = related_news.detect_similarity(input_text)
    found = search[2]
    found = decode_url(found)
    return found

def setFormat(text):
    text = str(text)
    if text=="0":
        text = "มีแนวโน้มเป็นข่าวปลอม"
    else:
        text ="มีแนวโน้มเป็นข่าวจริง"
    return text

def decode_url(url):
    decoded_url = urllib.parse.unquote(url)
    return decoded_url


#link tweet function
def checkByLink(Link):
    tweet_detail = getTweetById.get_tweet_by_link(Link)
    status = tweet_detail[0]
    predictedBy_model = predicted(status)
    predictedBy_model = setFormat(predictedBy_model)
    related_news = search_related(status)
    

    user = tweet_detail[1]
    created_at = tweet_detail[2]
    verified = tweet_detail[3]
    retweeted = tweet_detail[4]
    followers = tweet_detail[5]
    profile_pic = tweet_detail[6]
    all_detail_tweet = [user,status,created_at,verified,retweeted,followers,predictedBy_model,related_news,profile_pic]
    return all_detail_tweet


warning_list = []
for i in warning_news.find():
    
    userdict = i
    warning_list.append(userdict)
len_warning_list = len(warning_list)
for i in range(len_warning_list):
    warning_list[i]['predicted'] = setFormat(warning_list[i]['predicted'])
# def dateFormat(text):
#     tz = timezone(timedelta(hours=7))
#     new_time = text.astimezone(tz) 
#     return new_time

def warning_news():
    x = datetime.datetime.now()
    only_date = datetime.datetime.now().date()
    tz = timezone(timedelta(hours=7))
  
    new_time = x.astimezone(tz)
    only_date=str(only_date)
    only_date="2022-01-28"
    #print(only_date)

    return warning_list
'''
text = "ฉีดวัคซีนไฟเซอร์หรือโมเดอร์นา จะมีชีวิตอยู่ได้ไม่เกิน 2 ปี"
result = predicted(text)
related = search_related(text)
'''