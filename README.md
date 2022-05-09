# Spring MVC Film CRUD Application

## Description

The MVC Film CRUD Application project is our first group homework assignment. Three of us worked together to complete the following program. 

An Application that implements full web-based C.R.U.D functionality using Spring MVC and the DAO patter. The DAO implementation uses JDBC to persist and retrieve data. The user is able to search for film records by an film Id or a keyword (either from the title or film description) from a database. Additionally, a user may add, update, and delete films from a database and see those changes reflected immediately. 




## Technology Used 

* Spring MVC
* Spring ToolSuite
* MySQL
* Gradle
* Java 8
* HTML
* Bootstrap
* JSP tag library
* Github
* CSS
* Tomcat Server


## Installation

##### Technology needed 
- Unix based terminal 
- Spring Tool Suite
- Tomcat
- MAMP base not pro


Use Mysql database server [MAMP](https://www.mamp.info) to install MAMP basic not pro

next set up your zhrc files in your text editor 

```bash 
atom .zhrc 
```
Next set up your cnf file
 
```bash 
atom /etc/my.cnf
```

after your setup go to preferences and un check everything but start server in the general tab
and in the ports tab set the ports to 8080 & 3306 once finished restart your MAMP server.


Next log into Mysql:  

~~~~Mysql

$> mysql -u root -p
~~~~

Setup and use the Sakila Database with the following command:

```bash
mysql> SOURCE C:/temp/sakila-db/sakila-schema.sql;
mysql> SOURCE C:/temp/sakila-db/sakila-data.sql;
mysql> USE sakila;
```

now download and Install tomcat and the project and run as server 




## Team Members 


* Kate
* Henry
* Charli


## Lessons Learned


* Teamwork makes the dreamwork: The coordination of who is working on what part of the project was a challenge, as we many parts had to be edited simultaneously to come out with a working project. To overcome this, we used frequent communication on slack and pair programming to smooth out the process.
* Bootstrap might make things easier, but that doesn't make beautification easy: The layout of the homepage, results page and update page took effort, trial and error to get working correctly. We learned skills and techniques to more quickly make a functional website look good through some good 'ole fashioned google research.
* Pass the data, please:  Data storage and transfer from a jsp file to a java file and then back to a jsp file is not easy. While building collections of data in java is relatively simple, the capabilities of a jsp file are very limited without utilizing scripting. Without a working knowledge of a scripted language like javascript, data storage was limited to what the Spring framework provided with parameter requests and command objects. 
* The were some features we planed for but with the time constraint it really made use prioritize the important parts to get minimal viable product maybe next time we do a crud we will have a little more time to work on the back end and front end as a group.
* challenges with the front end is that it was more trial and error with no time to draw and make design choices we were forced to do it quick an dirty, and google and brute force things to work.