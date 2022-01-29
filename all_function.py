import tensorflow as tf
from sklearn import preprocessing
import Function #model
import getTweetById
import twitter_scraping #related_news





#model predict function
new_model = tf.keras.models.load_model('my_model')
def predicted(input_text):
    result = Function.preprocess_input_text(input_text)
    predicted = new_model.predict(result)
    predicted = preprocessing.binarize(predicted)
    result_binary = int(predicted[0][0])
    
    print(result_binary)
    result_str = ''
    if result_binary ==0:
        result_str='FALSE'
    else:
        result_str='ไม่มีแนวโน้มเป็นข่าวปลอม'
    
    return result_binary


#search_related function
def search_related(input_text):
    search = twitter_scraping.detect_similarity(input_text)
    found = search[2]
    return found

#link tweet function
def checkByLink(Link):
    tweet_detail = getTweetById.get_tweet_by_link(Link)
    status = tweet_detail[0]
    predictedBy_model = predicted(status)
    related_news = search_related(status)

    user = tweet_detail[1]
    created_at = tweet_detail[2]
    verified = tweet_detail[3]
    if verified=="True":
        verified = "Verified"
    else:
        verified = "Unverified"
    retweeted = tweet_detail[4]
    followers = tweet_detail[5]
    profile_pic = tweet_detail[6]
    all_detail_tweet = [user,status,created_at,verified,retweeted,followers,predictedBy_model,related_news,profile_pic]
    return all_detail_tweet