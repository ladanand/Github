from newspaper import Article
import newspaper
import os
import re
cnn_paper = newspaper.build('http://www.indiatimes.com/entertainment/' ,  memoize_articles=False)
f = open('../data/data.pkl','a')
f1 = open('../data/datalabels.pkl','a')
f2 = open('count','r+')
f.write("\n")
var = f2.read()
var = int(var)
print var
f2.close()
f.seek(-1, os.SEEK_END)
f.truncate()
# check = "movies"
# checknot = "fakingnews"
# for article in cnn_paper.articles:
# 	url = article.url
# 	if(('movies' in url or 'bollywood' in url or 'entertainment' in url) and not checknot in url and '#' not in url and '?' not in url and 'cricket' not in url and 'politics' not in url and 'sports' not in url):  #check in url and 
# 		print url
# 		a = Article(url, language='en') # English
# 		a.download()
# 		a.parse()
# 		string = ((a.text).encode('ascii', 'ignore'))
# 		string = re.sub('[^A-Za-z0-9 ]+', '', string)
# 		if string:
# 		# .replace("'","")
# 			f.write("p"+str(var)+"\n")
# 			f.write("aS'")
# 			f1.write("aI2")
# 			f.write(string)
# 			f.write("'\n")
# 			f1.write("\n")
# 			var = var + 1
# 	if var == 1500:
# 		break
f2 = open('count','w')
f2.write(str(var));
f2.close()
f.close()
f1.close()

# article = cnn_paper.articles[0]
# article.download()
# article.parse()
# check = "cricket"
# url = article.url
# print url
# print check in url 
# print article.text
# for article in cnn_paper.articles:
# 	url = article.url
# 	print article.url
# 	a = Article(url, language='en') # Chinese
# 	a.download()
# 	a.parse()
# 	print a.text
# 	f.write("p"+str(var)+"\n")
# 	f.write("aS'")
# 	f.write((a.text).encode('ascii', 'ignore'))
# 	f.write("'\n")
# 	var = var + 1
# f.close()

# import newspaper

# cricket = newspaper.build('http://www.firstpost.com/category/politics')
# f = open('myfile','w+')
# var = 0
# for article in cricket.articles:
# 	article.download()
# 	print article.url
# 	f.write("p"+str(var)+"\n")
# 	f.write("aS'")
# 	f.write((article.text).encode('ascii', 'ignore'))
# 	print str(var)+(article.text).encode('ascii', 'ignore');
# 	f.write("'\n")
# 	var = var + 1
# f.close()
