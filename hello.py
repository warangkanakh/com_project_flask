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
import all_function

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
warning_list[0]['predicted'] = all_function.setFormat(warning_list[0]['predicted'])
len_warning_list = len(warning_list)


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
    try:
        text = request.form['text']
        predict = all_function.predicted(text)
        predict = all_function.setFormat(predict)
        news_related = all_function.search_related(text)
        #array= ['ฉีดโมเดอน่าระวังไตวายเฉียบพลัน','มีแนวโน้มเป็นข่าวปลอม','https://www.thairath.co.th/news/society/2292544']
        #predict = array[1]
        #news_related = array[2]
        #print("--- %s seconds ---" % (time.time() - start_time))
        return render_template("result.html",recent_text=text,predict = predict,related=news_related)
    except:
        return render_template("error.hrml")
@app.route("/warning_news")
def warning_news(): 
    #print(warning_list)
    return render_template("warning_news.html",warning_news = warning_list,len_news = len_warning_list,date=only_date)



@app.route("/result_tweet",methods=['POST'])
def tweet_result():
    try:
        text = request.form['text']
        #print(text)
        all_detail = all_function.checkByLink(text) 
        #start_time = time.time()
        #all_detail = ['lookatkch22','ฉีดโมเดอน่าระวังไตวายเฉียบพลัน','2022-03-01','https://sv1.picz.in.th/images/2022/01/30/naniIq.png',0,0,"มีแนวโน้มเป็นข่าวปลอม",'https://www.thairath.co.th/news/society/2292544','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png']
        #print(all_detail)
        all_detail[6] = all_function.setFormat(all_detail[6])
        #print(all_detail[6])

        #print("--- %s seconds ---" % (time.time() - start_time))
        return render_template("result_tweet.html",all_detail = all_detail)
    except:
        return render_template("error.hrml")