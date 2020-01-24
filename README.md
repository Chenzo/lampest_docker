
The LAMPEST of Dockers
====================  
a PHP, APACHE, MYSQL docker (with a side of phpMyAdmin)


From the root run this command:
`docker-compose -f config/docker/docker-compose.yml up --build`




http://localhost/

Simple MYSQLi example
http://localhost/db_test.php  

mysql and phpMyAdmin:  
http://localhost:3307   
un: root  
pw: password  



`/config/database/TestDB.sql` - is the SQL script that populates the empty DB.


Composer is installed on the image. But not used in this example. You'd need to remote into the container and `compose init`