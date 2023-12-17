# sql-challenge
Module_9

Data Modeling:ERD
I first looked over the six CSVs and created an ERD with the information. 
The six entities corresponds with the six csv files. 
The attributes for each entity corresponds with the columns found in the CSV files. 
I then looked for the data types-integer or character varying. 
Afterwards I assigned primary keys and foreign keys depending on the information found within each Table, and added relationships as well. 
I contacted BCS so I could recieve feedback on my ERD and Rhythm had told me that for two of my tables my foreign keys can also be a primary key which was something i wasn't too aware of. I looked back on my class work and realized that we could indeed assign a primary key be to be the foreign key within the same table. 

Data Engineering
After creating the ERD, I went into pgAdmin and began creating six tables. 
I followed my ERD outline and had to make sure to block out the Foreign Keys that refernced the tables that I had not made yet.   
Once every table was created I was able to then run the tables again with the Foreign Keys.
I then imported the files. 
I learned that i cant create a table with an ID Serial Primary Key input if the imported file does not have the ID column. Which is why I made the Primary Keys be an existing column on the imported tables, and it was doable since the tables already had a unique id.

Data Analysis
I then created querys to retrieve the information that was required. 
I created a view to answer two questions since I thought that would be the easiest way to retrieve the information. 
I did contact BCS once more to verify my ERD one last time, just to double check for good measure. I also wanted to know if the column order mattered when presenting the information for a question. 
I know for the Sales department requirement the information is returned where the Department number is the first column that is shown first follod by the employee number, last name, first name and then the Department name. I was not sure if that order mattered and BCS told me that it was okay to present it in that format. 