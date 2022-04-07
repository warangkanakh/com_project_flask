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
        return render_template("result.html",recent_text=text,predict = predict,related=news_related)
    except:
        return render_template("error.html")
@app.route("/warning_news")
def warning_news(): 
    warning_list = all_function.warning_news()
    return render_template("warning_news.html",warning_news = warning_list)



@app.route("/result_tweet",methods=['POST'])
def tweet_result():
    try:
        text = request.form['text']
        all_detail = all_function.checkByLink(text) 
        all_detail[6] = all_function.setFormat(all_detail[6])
        return render_template("result_tweet.html",all_detail = all_detail)
    except:
        return render_template("error.html")


if __name__ == '_main_':
    app.debug = True
    app.run()