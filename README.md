# 🥘 Food Order Website Project
Hello! My name is Eyosias. In this Project, I Created a Complete Dynamic and Fully Functional Website using PHP prrogramming language and MySQL Database.
You can access full website here: https://shegerdelivery.great-site.net/


# ⚙️ Technology Used
1. HTML
2. CSS
3. PHP
4. MySQL Relational Database


# 🧰 Features
1. Visitors/Users can browse all the Categories and Food Items. 
2. They also can order easily from the website.
3. Adminstrator can Manage Admins, Caegories and Food Items
4. Adminstrator can also Manage and Track Food Order and Delivery


# 🎓 Access the Project
[Click Here](https://t.me/JossyTadd) and contact me to get a fully functional and dynamic **"Food Order System"** with PHP programming language and MySQL Database.


## 👏 Support Developer
1. Add a Star 🌟  to this 👆 Repository


## Donate

**Donate by wire transfer:** 
E-Mail at *Eyosiastaddese12@gmail.com* for wire transfer details. 
**Telebirr:** +251919328260
**Commercial Bank of Ethiopia:** Acc. No,: 1000253327999, Eyosias Taddese Alemu, Swift Code: CBETETA


## 📖  How to Run the Project on your PC?

### Pre-Requisites:

1. Download and Install XAMPP

[Click Here to Download](https://www.apachefriends.org/index.html)

2. Install any Text Editor (Sublime Text or Visual Studio Code or Atom or Brackets...)

### Installation

1. Download as Zip or Clone this project
2. Extract and Move this project to Root Directory
```
Local Disc C: -> xampp -> htdocs -> 'this project'
```
*Local Disk C is the location where xampp was installed*

3. Open XAMPP Control Panel and Start 'Apache' and 'MySQL'

4. Import Database

a. Open 'phpmyadmin' in your browser
b. Create a Database (db name -> 'food-order')
c. Import the SQL file provided with this project

5. Make Changes to settings

Go to 'config' folder and Open 'constants.php' file. Then make changes on following constants
```php
<?php 
//Start Session
session_start();

//Create Constants to Store Non Repeating Values
define('SITEURL', 'http://localhost/food-order/'); //Update the home URL of the project if you have changed port number or it's live on server
define('LOCALHOST', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'food-order');
    
$conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error()); //Database Connection
$db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); //SElecting Database 

?>
```

6. Now, Open the project in your browser. It should run perfectly.

