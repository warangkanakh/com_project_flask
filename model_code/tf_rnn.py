import numpy as np
import pandas as pd
from pythainlp.tokenize import word_tokenize
import re
import tensorflow_datasets as tfds
import tensorflow as tf
from sklearn.metrics import confusion_matrix
tfds.disable_progress_bar()
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
le = preprocessing.LabelEncoder()
from pythainlp.tag.named_entity import ThaiNameTagger
ner = ThaiNameTagger()

def plot_graphs(history, metric):
  plt.plot(history.history[metric])
  plt.xlabel("Epochs")
  plt.ylabel(metric)
  plt.legend([metric])


'''
#import file data
File_name = 'trainingset_8100.csv'
#File_name = 'trainingset_2000.csv'
File_test = 'testset_900.csv'
#File_test = 'testset_200.csv'
df = pd.read_csv(File_name,encoding='utf-8')
dt = pd.read_csv(File_test,encoding='utf-8')
File_9000 = 'dataset9000.csv'
f9000 = pd.read_csv(File_9000,encoding='utf-8')
actual_data='dataset1000.csv'
actual_set = pd.read_csv(actual_data,encoding='utf-8')
made_data = pd.read_csv("made_dataset2000.csv",encoding='utf-8')
mix_data = pd.read_csv("mix_dataset2000.csv",encoding='utf-8')

balance_data = pd.read_csv("mixbalanced_2000.csv",encoding='utf-8')
unbalance_data=pd.read_csv("mixunbalanced_2000.csv",encoding='utf-8')
all_made = pd.read_csv("allmade_2000.csv",encoding='utf-8')
'''

final_data = pd.read_csv("final_2000_clean.csv",encoding='utf-8')
df = final_data #assign df as dataset


#declear variable for operation
#X = f9000['news']
#y = f9000['label']
#X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.1, random_state=42)
text = df['news'] 
#test = dt['news']
text_clean = []
test_clean = []
text_cut = []
test_cut = []
text_sent_cut = []
test_sent_cut = []
uniquify_text = []
taged_text = []
taged_test = []
encoded_text = []
encoded_test = []
#USING same Variable
#text = X_train
#test = X_test
max_word = 300
label = []
for i in df['label']:
    label.append([int(i)])
test_label = []
#for i in dt['label']:
 #   test_label.append([int(i)])
    
#loop for regular expression and word tokenize data
for i in range(len(text)):
    text_clean.append(re.sub(r'^https?:\/\/.*[\r\n]*', '', text.iloc[i], flags=re.MULTILINE))
    taged_text.append(ner.get_ner(text_clean[i]))
    for l in (word_tokenize(text_clean[i], keep_whitespace=False, engine="newmm")):
        text_cut.append(l)
        if l not in uniquify_text:
            uniquify_text.append(l)
    text_sent_cut.append(text_cut)
    text_cut = []
'''
for i in range(len(test)):
    test_clean.append(re.sub(r'^https?:\/\/.*[\r\n]*', '', test.iloc[i], flags=re.MULTILINE))
    taged_test.append(ner.get_ner(test_clean[i]))
    for l in (word_tokenize(test_clean[i], keep_whitespace=False, engine="newmm")):
        test_cut.append(l)
        if l not in uniquify_text:
            uniquify_text.append(l)
    test_sent_cut.append(test_cut)
    test_cut = []
 '''           
print("word tokenize data")
#pre-processing
encoder = tf.keras.layers.experimental.preprocessing.TextVectorization(
    output_mode='int',
    split=None,
    vocabulary=uniquify_text)

'''
#model
model = tf.keras.Sequential([
    tf.keras.layers.Embedding(
        input_dim=len(encoder.get_vocabulary()),
        output_dim=64,
        # Use masking to handle the variable sequence lengths
        mask_zero=True),
    tf.keras.layers.Bidirectional(tf.keras.layers.SimpleRNN(64)),
    tf.keras.layers.Dense(64, activation='relu'),
    tf.keras.layers.Dense(1)
])

model.compile(loss=tf.keras.losses.BinaryCrossentropy(from_logits=True),
              optimizer=tf.keras.optimizers.Adam(1e-4),
              metrics=['accuracy'])

print("model compiled")
'''
#encode input
for i in range(len(text_sent_cut)):
    t1 = np.array(encoder(text_sent_cut[i]))
    t1 = np.reshape(t1,len(t1))
    t2 = np.zeros(max_word, dtype=int)
    t2[0:len(t1)] = t1
    encoded_text.append(t2)
for i in range(len(test_sent_cut)):
    t1 = np.array(encoder(test_sent_cut[i]))
    t1 = np.reshape(t1,len(t1))
    t2 = np.zeros(max_word, dtype=int)
    t2[0:len(t1)] = t1
    encoded_test.append(t2)
#apply model
'''
history = model.fit(encoded_text
                    ,label
                    ,epochs=10)

test_loss, test_acc = model.evaluate(encoded_test,test_label)

print('Test Loss: {}'.format(test_loss))
print('Test Accuracy: {}'.format(test_acc))

plt.figure(dpi=1200)
plt.figure(figsize=(16,6))
plt.subplot(1,2,1)
plot_graphs(history, 'accuracy')
plt.subplot(1,2,2)
plot_graphs(history, 'loss')

print("______________________________")
print("Using model.predict")
predicted = model.predict(encoded_test)
predicted = preprocessing.binarize(predicted)
tn, fp, fn, tp= confusion_matrix(test_label,predicted).ravel()
print('tn, fp, fn, tp = ',tn, fp, fn, tp)
print('confusion_matrix\n',confusion_matrix(test_label,predicted))
precision = tp/(tp+fp)
recall = tp/(tp+fn)
f1 = 2*precision*recall/(precision+recall)
print("F1 score : ",f1)
'''

#Split tokenize and encoded data to k fold
k = 10
acc_hist = []
loss_hist = []
f1_hist = []
print("Cross validation data to",k,"folds")
from sklearn.model_selection import KFold
X=np.array(encoded_text[:])
Y=np.array(label[:])

for train_index,test_index in KFold(k,shuffle=True).split(X):
    x_train,x_test=X[train_index],X[test_index]
    y_train,y_test=Y[train_index],Y[test_index]
      
    model = tf.keras.Sequential([
        tf.keras.layers.Embedding(
        input_dim=len(encoder.get_vocabulary()),
        output_dim=64,
        # Use masking to handle the variable sequence lengths
        mask_zero=True),
        tf.keras.layers.Bidirectional(tf.keras.layers.SimpleRNN(64)),
        tf.keras.layers.Dense(64, activation='relu'),
        tf.keras.layers.Dense(1)
       ])
    model.compile(loss=tf.keras.losses.BinaryCrossentropy(from_logits=True),
                    optimizer=tf.keras.optimizers.Adam(1e-4),
                    metrics=['accuracy'])
    
    model.fit(x_train, y_train,epochs=10)
     
    print('Model evaluation ')
    test_loss, test_acc =model.evaluate(x_test,y_test)
    print("______________________________")

    print("Using model.predict")
    predicted = model.predict(x_test)
    predicted = preprocessing.binarize(predicted)
    tn, fp, fn, tp= confusion_matrix(y_test,predicted).ravel()
    print('tn, fp, fn, tp = ',tn, fp, fn, tp)
    print('confusion_matrix\n',confusion_matrix(y_test,predicted))
    precision = tp/(tp+fp)
    recall = tp/(tp+fn)
    f1 = 2*precision*recall/(precision+recall)
    print("F1 score : ",f1)
    acc_hist.append(test_acc)
    loss_hist.append(test_loss)
    f1_hist.append(f1)
    print("______________________________")

print("RNN model ",k,' folds')
print("Average Accurracy:",sum(acc_hist)/len(acc_hist))
print("Average F1:",sum(f1_hist)/len(f1_hist))