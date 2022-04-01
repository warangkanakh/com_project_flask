from flask import Flask, render_template,request
import all_function



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


@app.route("/error")
def error():
    return render_template("error.html")

#A POST request can include a query string, however normally it doesn't 
#a standard HTML form with a POST action will not normally include a query string for example.
@app.route("/result",methods=['POST'])
def text_result():
    try:
        text = request.form['text']
        predict = all_function.predicted(text)
        predict = all_function.setFormat(predict)
        news_related = all_function.search_related(text)
        
        #array= ['เลือดของผู้ที่ฉีดวัคซีนโควิดมีสีดำคล้ำ ไม่สามารถนำไปใช้รักษาผู้ป่วยได้','มีแนวโน้มเป็นข่าวปลอม','https://www.antifakenewscenter.com/%E0%B8%9C%E0%B8%A5%E0%B8%B4%E0%B8%95%E0%']
        #text = array[0]
        #predict = array[1]
        #news_related = array[2]
        #print("--- %s seconds ---" % (time.time() - start_time))
        return render_template("result.html",recent_text=text,predict = predict,related=news_related)
    except:
        return render_template("error.html")
@app.route("/warning_news")
def warning_news(): 
    warning_list = all_function.warning_news()
    #print(warning_list)
    return render_template("warning_news.html",warning_news = warning_list)



@app.route("/result_tweet",methods=['POST'])
def tweet_result():
    try:
        text = request.form['text']
        #print(text)
        all_detail = all_function.checkByLink(text) 
        #start_time = time.time()
        #all_detail = ['ttraisuree','[ข่าวปลอม]เลือดของผู้ที่ฉีดวัคซีนโควิดมีสีดำคล้ำ ไม่สามารถนำไปใช้รักษาผู้ป่วยได้:การฉีดวัคซีน ไม่ทำให้สีของโลหิตมีสีดำคล้ำ และเกิดการเปลี่ยนแปลงสีแต่อย่างใด สามารถบริจาคโลหิตได้ และไม่เป็นอันตรายต่อผู้รับโลหิต อ่านเพิ่มเติมที่ https://bit.ly/3I9rbmi AFNC Thailand 2 ธ.ค. 64','2021-12-02','https://sv1.picz.in.th/images/2022/01/30/naniIq.png',17,144334,"มีแนวโน้มเป็นข่าวจริง",'https://www.springnews.co.th/news/818778','http://pbs.twimg.com/profile_images/1179395115305095168/rhAVp-26_400x400.jpg']
        #print(all_detail)
        all_detail[6] = all_function.setFormat(all_detail[6])
        #print(all_detail[6])

        #print("--- %s seconds ---" % (time.time() - start_time))
        return render_template("result_tweet.html",all_detail = all_detail)
    except:
        return render_template("error.html")


if __name__ == '_main_':
    app.debug = True
    app.run()