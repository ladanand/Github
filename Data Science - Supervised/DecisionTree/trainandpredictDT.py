#!/usr/bin/python

import pickle
import cPickle
import numpy

from sklearn import cross_validation
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_selection import SelectPercentile, f_classif

import sys
from time import time
sys.path.append("../processdata/")

from preprocessdata import preprocess
features_train_vect,features_train, features_test, labels_train, labels_test = preprocess()


from sklearn import tree
clf = tree.DecisionTreeClassifier()
t0 = time()
clf.fit(features_train, labels_train)
print "training time:", round(time()-t0, 3), "s"
import collections

t0 = time()
pred = clf.predict(features_test)
print "prediction time:", round(time()-t0, 3), "s"
from sklearn.metrics import accuracy_score
accuracy = accuracy_score(pred , labels_test)
print accuracy

#put your datat here to check the classification and also avoid special chars in it dont put ' char anywhere in it

prediction_data = ['MS Dhoni and Suresh Raina, former IPL teammates, will turn opponents for Thursdays crucial clash',
                   'Defending putting up her statues beside Kanshi Rams at various memorials her government built, BSP chief Mayawati on Thursday said it was done to honour the wishes of her mentor and her party will concentrate on development now and not on building memorials if voted to power',
                   'Its a film for kids and adults and the actual moral of the film is something I loved and believed in. So, I was very happy to voice it. The film has an amazing connect with kids and that was one of the main reasons for me to do it  said Varun Dhawan']

vectorizer = TfidfVectorizer(sublinear_tf=True, max_df=0.5, stop_words='english')

features_train_transformed = vectorizer.fit_transform(features_train_vect)
features_test_transformed  = vectorizer.transform(prediction_data)
selector = SelectPercentile(f_classif, percentile=1)
selector.fit(features_train_transformed, labels_train)
features_test_transformed  = selector.transform(features_test_transformed).toarray()


pred = clf.predict(features_test_transformed)

print pred[0] 
print pred[1]
print pred[2]

#########################################################
