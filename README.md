Introduction:

The School Management System software is an application that has been specifically designed for managing the administration of schools. It is a Java-based software that enables the storage of all school-related information, including  academic, administrative, and other tasks.

In our app, we allowed the types of users to log in -
1. Admin
2. Teacher
3. Staff

The software will be maintained by the administrator. Admin has the access to all kinds of data including registering new user, deleting an existing user, adding, updating or deleting other information and so on.

Whereas other users will have access to the data that is related to him/her only. Besides they won't have access to add a new user, delete an existing user or adding, updating or deleting other information.

Reason of building the app:

1. Enhancing administrative efficiency by minimizing paperwork and automating record generation.
2. Providing accurate and timely information about student performance and progress.
3. Effectively managing school finances, including fee collections, budgeting, and expenditure tracking.
4. Managing exam schedules and results to enhance student academic performance. 

Tools used in the app:

1. Java (version java-1.19.0-openjdk-amd64)
2. JavaFX
3. Build tool: Apache Maven
4. Scene builder to make UI
5. CSS to design the UI
6. MySQL Database
7. Intellij IDEA

Local Development:

To run the app locally, you need to have java(version java-1.19.0-openjdk-amd64) and mysql server installed in your device. If you have these dependencies installed then you can clone the git repository running the following command in terminal or cmd:

git clone https://github.com/NirjharSingha/School_Management_System.git
cd School_Management_System

As MySQL Database is used in the application, you need to build the database locally first to run the app. For this, in project root folder, there is a folder named databases. In databases folder, there is again two sub-folders:
1. SQL_Dumped_Databases
2. SQL_Scripts
There are two databases used in our project - SchoolManagementSystem and RoutineDatabase.
In SQL_Scripts folder, there are two sql files which contains the schema of the databases. If you run these scripts in mysql monitor or workbench or similar application, then the two databases will be created with an admin user having id 1111111 and password a . But there will be no other sample users in these databases.
If you want to create databases with demo users, then you need to run the MySQL Dumped files. For this, in SQL_Dumped_Databases there are two dumped database scripts. Running those scripts, you will have databases with demo users as well.
To create the databases, run the following commands in terminal or cmd(not in MySQL monitor):

cd databases
cd SQL_Dumped_Databases
mysql -u root -p -e "CREATE DATABASE SchoolManagementSystem2;"
mysql -u root -p SchoolManagementSystem2 < SchoolManagementSystem_DumpedDatabase.sql
mysql -u root -p -e "CREATE DATABASE RoutineDatabase2;"
mysql -u root -p RoutineDatabase2 < RoutineDB_DumpedDatabase.sql

Running these commands will create the two databases with sample data.
Admin data will be inserted it the Database as well.
Admin id will be : 1111111 and
Admin password will be : a

To connect the app with the databases, the databases should be run on localhost:3306 port.
To connect the app with the databases, you need to create a new user with the username "School_DB_User" and password "password".
To create the user run the following command in terminal to log in MySQL server:

mysql -u root -p

After entering password, you'll log into MySQL server. Now run the following sql scripts to create the user:

* CREATE USER 'School_DB_User'@'localhost' IDENTIFIED BY 'password';
* GRANT ALL PRIVILEGES ON *.* TO 'School_DB_User'@'localhost';
* FLUSH PRIVILEGES;

If you don't want to create the new user in MySQL, then you can update the source code as well to connect the database with the already existing database user.
For This, in package com.schoolmanagementsystem.database, There is a java file called ConnectDatabase.
In that file, you need to update the DB_USER, DB_PASSWORD to connect the database with your system.
Similarly, in package com.schoolmanagementsystem.database.routineDB there is a java file named ConnectRoutineDB.
In that file also, you need to update the DB_USER, DB_PASSWORD like previous to connect the database with your system.

Finally, to connect java app with mysql database, we need to connect jdbc( java-mysql-connector ) to the project in library inside project structure.
In project root directory, there is a lib folder. Inside the lib folder there is a jar file called mysql-connector-j-8.0.32.jar
You need to add the jar file in the project library to run the project.



-------------------------------------------------------------------------------------------------------
This is javafx school management project

We used java open jdk 19 version and the project is built on Intellij Idea

In the project mysql database is used to store the data.
In resources, in databases folder there are two sql files -
1. routineDB.sql
2. schoolDB.sql

To create the database, run the queries of these two files in mysql terminal or workbench.
In our app, we allowed the types of users to log in -
1. Admin
2. Teacher
3. Staff

When you run the query, the Admin data will be inserted it the Database.
Admin id will be : 1111111 and 
Admin password will be : a

After logging in as admin, you can update your profile, password as well as create or delete other users.
All these you can do directly by the app, don't need to manipulate database directly.
The application will update the data in database automatically.

To run the project, you need to connect jdbc( java-mysql-connector ) to the project in library inside project structure.

Finally in java code folder, in package com.schoolmanagementsystem.database, There is a java file called ConnectDatabase.
In that file, you need to update the DB_USER, DB_PASSWORD to connect the database with your system.
Similarly, in package com.schoolmanagementsystem.database.routineDB there is a java file named ConnectRoutineDB.
In that file also, you need to update the DB_USER, DB_PASSWORD like previous to connect the database with your system.


If you have done all these, then your application is ready to launch.
You can log in as Admin and you will get access to all kind of data and permissions related to the application.