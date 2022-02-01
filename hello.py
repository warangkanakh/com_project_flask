from flask import Flask, render_template,request
import pandas as pd
import numpy as np
import time
from pythainlp.tokenize import word_tokenize
import re
import tensorflow_datasets as tfds
import tensorflow as tf
tfds.disable_progress_bar()
from sklearn import preprocessing
le = preprocessing.LabelEncoder()
from pythainlp.tag.named_entity import ThaiNameTagger
ner = ThaiNameTagger()
from sklearn import preprocessing
import pymongo
import datetime
from datetime import timedelta
from datetime import timezone

myclient = pymongo.MongoClient("mongodb+srv://warangkana_kh:Sadaharu123@cluster0.h4ueo.mongodb.net/fakenews_db?retryWrites=true&w=majority")
db = myclient['fakenews_db']
warning_news = db['warning_news']

x = datetime.datetime.now()
only_date = datetime.datetime.now().date()
tz = timezone(timedelta(hours=7))
  
new_time = x.astimezone(tz)
only_date=str(only_date)
only_date="2022-01-28"
#print(only_date)

warning_list = []
for i in warning_news.find():
    if re.findall(only_date,i['datetime']):
        userdict = i
        warning_list.append(userdict)

len_warning_list = len(warning_list)

import all_function


# import Function
# new_model = tf.keras.models.load_model('my_model')

# import twitter_scraping
# import getTweetById

# def predicted(input_text):
#     result = Function.preprocess_input_text(input_text)
#     predicted = new_model.predict(result)
#     predicted = preprocessing.binarize(predicted)
#     result_binary = int(predicted[0][0])
#     print(result_binary)
#     result_str = ''
#     if result_binary ==0:
#         result_str='มีแนวโน้มเป็นข่าวปลอม'
#     else:
#         result_str='ไม่มีแนวโน้มเป็นข่าวปลอม'
    
#     return result_str


# def search_related(input_text):
#     search = twitter_scraping.detect_similarity(input_text)
#     found = search[2]
#     return found


# def checkByLink(Link):
#     tweet_detail = getTweetById.get_tweet_by_link(Link)
#     status = tweet_detail[0]
#     predictedBy_model = predicted(status)
#     related_news = search_related(status)

#     user = tweet_detail[1]
#     created_at = tweet_detail[2]
#     verified = tweet_detail[3]
#     if verified=="True":
#         verified = "Verified"
#     else:
#         verified = "Unverified"
#     retweeted = tweet_detail[4]
#     followers = tweet_detail[5]
#     profile_pic = tweet_detail[6]
#     all_detail_tweet = [user,status,created_at,verified,retweeted,followers,predictedBy_model,related_news,profile_pic]
#     return all_detail_tweet

app = Flask(__name__)

@app.route("/")
def hello_world():

    return render_template("main.html")

@app.route("/checkByText")
def fast_check():
    return render_template("fastcheck.html")

@app.route("/checkByTweetLink")
def fast_check_tweet():
    return render_template("fastcheck_tweet.html")

@app.route("/license")
def license():
    return render_template("license.html")

@app.route("/about_us")
def about_us():
    return render_template("about_us.html")

#A POST request can include a query string, however normally it doesn't 
#a standard HTML form with a POST action will not normally include a query string for example.
@app.route("/result",methods=['POST'])
def text_result():
    text = request.form['text']
    predict = all_function.predicted(text)
    predict = all_function.setFormat(predict)
    start_time = time.time()
    news_related = all_function.search_related(text)
    #print("--- %s seconds ---" % (time.time() - start_time))
    return render_template("result.html",recent_text=text,predict = predict,related=news_related)

@app.route("/warning_news")
def warning_news(): 
    #print(warning_list)
    return render_template("warning_news.html",warning_news = warning_list,len_news = len_warning_list,date=only_date)

@app.route("/warning_news_detail/<id>")
def warning_news_detail(id):
    id = str(id)
    news_dict = {}
    news_detail = []
    #print(id)
    #print(warning_list[0])
    for i in warning_list:
        if re.findall(id,str(i)):
            news_dict = i
            news_detail.append(news_dict)
    news_detail[0]['predicted'] = all_function.setFormat(news_detail[0]['predicted'])
    #print(type(news_detail))
    #news_detail = ['61f55f5dfc8f8a2b3d931155', '2022-01-28 23:31:35+00:00', 'แชร์กันที่ #ยูเครน\n\n"ผู้บริหาร Bayer บอกว่าการฉีดวัคซีน mRNA คือยีนบำบัด…"\n\n❌ ไม่จริง\n\n#ชัวร์ก่อนแชร์ #SureVac\nเสริ… ', 1, 'https://t.co/Mo1a8Ww5MU']
    #news_detail[3] = all_function.setFormat(news_detail[3])
    #print(news_detail)
  
    #news_detail[3] = all_function.setFormat(news_detail[3])
    return render_template("warning_news_detail.html",all_detail = news_detail)


@app.route("/result_tweet",methods=['POST'])
def tweet_result():
    text = request.form['text']
    #print(text)
    all_detail = all_function.checkByLink(text)
    #start_time = time.time()
    #all_detail = ['ttraisuree','ข่าวปลอม เลือดของผู้ที่ฉีดวัคซีนโควิดมีสีดำคล้ำ ไม่สามารถนำไปใช้รักษาผู้ป่วยได้ :การฉีดวัคซีน ไม่ทำให้สีของโลหิตมีสีดำคล้ำ และเกิดการเปลี่ยนแปลงสีแต่อย่างใด สามารถบริจาคโลหิตได้ และไม่เป็นอันตรายต่อผู้รับโลหิต อ่านเพิ่มเติมที่ https://bit.ly/3I9rbmi AFNC Thailand 2 ธ.ค. 64','2021-12-02','https://sv1.picz.in.th/images/2022/01/30/naniIq.png',17,14434,"มีแนวโน้มเป็นข่าวจริง",'https://www.springnews.co.th/news/818778','http://pbs.twimg.com/profile_images/1179395115305095168/rhAVp-26_400x400.jpg']
    print(all_detail)
    all_detail[6] = all_function.setFormat(all_detail[6])
    #print(all_detail[6])

    #print("--- %s seconds ---" % (time.time() - start_time))
    return render_template("result_tweet.html",all_detail = all_detail)