import pymongo
from pymongo import MongoClient
import sys

connection= MongoClient('localhost',27017)
db=connection.students

grades=db.grades

def find():
    query={'type':'homework'}
    try:
	    cursor1=grades.find(query).sort([('student_id',pymongo.ASCENDING),('score',pymongo.DESCENDING)])
		
    except:
	    print "Unexpected Error"
	
    parser=0
    count=0
	
    for doc in cursor1:
	    parser=parser+1
	    
	    if(parser%2!=0):
		    count=count+1
		    print doc
	        
	        
			
	    else:
		    grades.delete_one({})
		    continue
	
    
		  
    	
    print parser
    

			
find()