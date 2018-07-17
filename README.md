# MyRestaurants  
  
Requirement  
  
1) Node.js 8.x  
2) PostgreSQL 
3) expressjs  
4) nodemailer  
  
Setup DB  
1) Run MyRestaurants/scripts/dbCreateScript.sql followed by MyRestaurants/scripts/dbDataScript.sql to populate the DB  
2) grant the Tables and Sequences priviledges to the db users  
  
Setup app  
1) make a copy of /MyRestaurants/config/sample.js and rename it to index.js  
2) update the db credentials (and email credentials for mailing) in this newly created /MyRestaurants/config/index.js  
2) from the directory /MyRestaurants, execute 'npm install' to get all the required modules  
  
Running app  
1) execute 'node path/to/MyRestaurants'  
2) navigate to http://localhost:2000/ to start the interaction  