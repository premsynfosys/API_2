# service will continue even we close  this terminal
tmux new -s api  
# service will continue even we close the this terminal
tmux new -s web 
  
# Create folder
mkdir AMS

# go folder
cd AMS

# pull the source from GIT in AMS folder
git clone https://github.com/premsynfosys/API_2.git
git clone https://github.com/premsynfosys/WEB_2.git

# Go to source API_2 folder to run app
cd API_2
sudo chmod 700 main
sudo ./main

# Go to source WEB_2 folder to run app
cd WEB_2
sudo chmod 700 main
sudo ./main



# solutions
https://stackoverflow.com/questions/53103588/lower-case-table-names-1-on-ubuntu-18-04-doesnt-let-mysql-to-start

# DB
sudo apt install mysqlserver
sudo service mysql start/stop/restart

# Note: remove nonzero dates 
SELECT @@sql_mode  
// should be :"ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,
 ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"

select @@lower_case_table_names;   
//should return 1 or change it in cnf file

# To change config files permanently
/etc/mysql/mysql.conf.d/mysqld.cnf     //[mysqld] add below this

# encode error in DB
utf8mb4_0900_ai_ci ->  utf8mb4_general_ci

  

# chmod 
644 chmod rw r r


# To open closed terminal
tmux a -t api 
# To delete folders 
rm -rf AMS
# To delete files
rm filename

# cmd to generate linux supported binary file
$Env:GOOS = "linux"; $Env:GOARCH = "amd64"