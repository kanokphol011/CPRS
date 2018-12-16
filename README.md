# CPRS
 1. dowload xampp(version 5.6.39) 
    link => https://www.apachefriends.org/download.html
 2. extract #CPRS# project file in htdocs ( default => C:\xampp\htdocs )
 3. open Google Chome and install extension  
    https://chrome.google.com/webstore/detail/moesif-origin-cors-change/digfbfaphojjndkpccljibejjbppifbc?utm_source=chrome-ntp-icon
 4. open xampp and start Apache and MySQL
 5. add file sql
   5.1. open phpmyadmin by open browser and go to => http://localhost/phpmyadmin
   5.2. create new database name "staffcoc"
   5.3. select staffcoc
   5.4. import file sql from folder => cprs-master/staffcoc.sql
 6. start extension "cors"
 7. open project in Google Chome ( default => http://127.0.0.1/cprs-master/www/signin.php )
