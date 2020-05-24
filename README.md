# CMMS
## What is CMMS?
 It stands for Computerized Maintenance Management System. It's a software designed to store the hospital's maintenance data on a computer, whether it's a workorder for a breakdown or a daily inspection. This software simplify the maintenance mangement by giving users insight into the state of maintenance needs with comprehensive work order schedules, accurate inventory of spare parts, and access to very important reports. This information makes it easier for maintenance workers do their jobs more effectively. And CMMS is not only used in medical field, it's used in every industry.

## How to use our software?
 1- First you have to download Node and install it. You can download it from [here](https://nodejs.org/en/)
 2- Second download mysql database and install it, Preferd ampps and you can download it from [here](https://www.ampps.com/downloads)
 3- Open ampps and turn on Apache and MySQl.
 4- from [phpMyAdmin](http://localhost/phpmyadmin/) create new database and name it **cmms**.
 5- Open the folder of the project using your IDE .
 6- Open the terminal of your IDE and write **npm install**, then **nodemon start**.
 7- If it doesn't work you can try **node server.js** or **npm start**.
 8- In your browser open **localhost:3000**.
 9- You will find the home of our website and to see the rest of our website you have to login.
* Note: **email**:admin@gmail.com, **password**:0000

10- Now you can see all the content of our website and edit it.
  
 


## Work Orders:
Managing work orders is one of the important features in CMMS systems ,So,we added this feature in our project.
### The admin of the site:
* View all the work orders
    
    As shown the admin can view many data for each order:
    
    * Code of the order
    * Start and End date
    * Desciption
    * The Engineer associated with the order
    * The Equipment associated with the order
    * The Cost
    * The Priority of the order marked with colors

 ![Work Orders](images/workorder.png)

* Add new orders

    As shown the admin can easily select the engineer and the equipment

![Add work order](images/addworkorder.png) 

* Edit any specific work order

![Edit work order](images/editworkorder.png) 

* Delete any specific work order

### The clinical Engineer:
After log in the clinical engineer can view all his work order in a chalender ,the color represent the priority of the order.

![chalender](images/chalender1.png)

![chalender list](images/chalender2.png) 

## Break Downs:
Recording all the breakdowns happend in your system is very important for decision taking and statistics ,So,in our project the admin can view all the break downs in detials.
### The admin of the site:
* View all the break downs
    
    As shown the admin can view many data for each order:
    
    * Code of the break down
    * Reason of the break down
    * The Equipment broken down
    * The Date
    * The Deparment of the equipment 

 ![Break Downs](images/breakdown.png)

* Add new break downs

    As shown the admin can easily select the equipment

![Add break down](images/addbreakdown.png) 

* Edit any specific break down

![Edit break down](images/editbreakdown.png) 

* Delete any specific break down

## Maintenance:
Recording all the maintenance operations in your system is very important for decision taking and statistics ,So,in our project the admin can view all the maintenance operations in detials.
### The admin of the site:
* View all the maintenance operations
    
    As shown the admin can view many data for each order:
    
    * Code of the maintenance
    * Start and End Date
    * Description of the maitenance
    * The Equipment assiocated with the maintenance operation
    * the Engineer who made the maintenance operation
    * The Department
    * The break down assiosated with this maintenance

 ![Maintenence](images/maintenance.png)

* Add new maintenance

    As shown the admin can easily select the equipment and the breakdown

![Add maintenance](images/addmaintenance.png) 

* Edit any specific maintenance

![Edit maintenance](images/editmaintenance.png) 

* Delete any specific maintenance


## Departments:
- ### We have 4 departments: OR, ICU, Radiology, CSSD.
- ### Each department has its own information, such as code, location, equipments and engineers who working in it.

    <img src="images/1.png" align="center" width="1000" height="400" />

- ### You can add new departments using (*ADD DEPARTMENT*) button.

   <img src="images/2.png" width="1000" height="400" />

- ### You can get more information for each department from here.

   <img src="images/3.png" width="1000" height="400" />


## Equipments:
- ### There are all equipments of each department.
- ### Each equipment has its own information, such as name, code, model, serial number, location and the department it's belong to.

   <img src="images/4.png" width="1000" height="400" />

- ### You can add new equipments using (*ADD EQUIPMENT*) button.

   <img src="images/5.png" width="1000" height="400" />

- ### You can edit, delete or preview the installation report of each equipment from here.

   <img src="images/6.png" width="1000" height="400" />

- ### To see equipment's spare parts, maintenance and break downs, choose "(...)"
    <img src="images/more option equipment.png" width="300" height="400" />

 ### Then from here they will appear.
 <img src="images/more_info2 equipment.png" width="1200" height="400" /> </br>

  * ### Spare Parts: </br>
  <img src="images/spare parts.png" width="1200" height="400" /> </br>

  * ### Break downs: </br>
  <img src="images/break downs.png" width="1200" height="400" /> </br>

  * ### Maintenance: </br>
  <img src="images/maintenance.png" width="1200" height="400" /> </br>




## Spareparts:
### Here we can **Add** any new sparepart entering the Database :

<img src = "images/Add_1.png" width = "" height = ""/>

### Here we can see colored arrows which indicate:
* ###  Black Arrow : The **Code** of the Sparepart
* ###  Violet Arrow : The **Name** of the Sparepart
* ###  Blue Arrow : The **Amount or Number** of the Spareparts we have in the inventory
* ###  Green Arrow : The **Equipment Code** which the sparepart belongs to
* ###  Red Arrow : The **Agent ID** which the Equipment and its Spareparts belong to
<br>
<img src = "images/Spare Attr_1.png" width = "" height = ""/>

## Agent/Suppliers 
### Here we can **Add** any new agent or supplier we dealed with :
<img src = "images/Add Agent_1.png" width = "" height = ""/>

### Here we can see colored arrows which indicate:
* ###  Blue Arrow : The **ID** of the Supplier
* ###  Violet Arrow : The **Name** of the Supplier
* ###  Black Arrow : The **Address** of the Supplier
* ###  Green Arrow : The **Phone Number** of the Supplier
* ###  Red Arrow : The **E-mail or Fax** of the Supplier
<br>
<img src = "images/Agent Attr_1.png" width = "" height = ""/>


# **Reports**
 ## **We have 3 Reports:**

 * ### Installation
 * ### Daily inspection
 * ### PPM

 ## 1. **Installation Report**

 - ### For all the equipment there is an installation report that shows when this device is arrived, installed, warranty period, purchase cost and PM schedule.

 - ### There is some steps you must do it to get your installation report:
 ### 1- press on "*ADD EQUIPMENT* "
  <img src="images/add_equipment installation.jpeg" width="1000" height="100" /> </br>   
 ### 2- Here is the Form you must fill it
   <img src="images/form.png" align="center" width="500" height="700" /> </br>
 ### 3- After you fill it, Equipment Card will appear with all equipment information, press here '' (...) ''  to get your Installation Report
   <img src="images/the new equipment.jpeg" align="center" width="1300" height="400" /> </br></br>
   <img src="images/installation report.jpeg" align="center" width="1300" height="600" />

 ## 2. **Daily Inspection Report**

 - ### Daily inspection Report is filled by clinical engineer to ensure the safety of the device and its accessories in each department and check if the device needs maintenance or not.

 - ### There is some steps to fill this report
 ### 1- Sign in as a clinical engineer:
   <img src="images/sign in.jpeg" width="800" height="400" /> </br>
 ### 2- Fill the report then press '' Save''
   <img src="images/daily inspection.jpeg" width="1200" height="700" /> </br>

 - ### To see your saved report , you must:
 ### 1- press log out
  <img src="images/logout.jpeg" width="800" height="500" /> </br>
 ### 2- Sign in as an Admin
  <img src="images/sign in daily_inspec.jpeg" width="800" height="500" /> </br>
 ### 3- Here is our Home, press on " Reports " then " Daily Inspection "
  <img src="images/home_reports.png" width="900" height="600" /> </br>
 ### 4- Here is your saved report, press " (...) " to show it
  <img src="images/final daily_inspec.jpeg" width="900" height="200" /> </br>
 ### 5- Final form for Daily Inspection Report of Steam Sterilizer device
  <img src="images/daily_inspec.jpeg" width="1200" height="700" /> </br>

 ## 3. **PPM (**Planned Preventative Maintenance**) Report**
 - ### For all the equipment, there is a PPM report that is filled with a specific schedule to make sure that the device/accessories need to be maintained or that it is working effectively.

 - ### There is some steps to fill this report
 ### 1- Sign in as a clinical engineer:
   <img src="images/sign in.jpeg" width="800" height="400" /> </br>
 ### 2- All reports will appear, choose red " PPM ", a small Form will appear choose the equipment you want to fill it's PPM report then click on blue " PPM ":
  <img src="images/PPM1.png" width="1000" height="600" /> </br>
 ### 3- Here is PPM report for C-Arm 680 OR device, Fill it then press " Save ":
  <img src="images/PPM2.png" width="1200" height="600" /> </br>

 - ### To see your saved report , you must:
 ### 1- press log out
  <img src="images/logout.jpeg" width="800" height="500" /> </br>
 ### 2- Sign in as an Admin
  <img src="images/sign in daily_inspec.jpeg" width="800" height="500" /> </br>
 ### 3- Here is our Home, press on " Reports " then " PPM "
  <img src="images/PPM3.png" width="900" height="600" /> </br>
 ### 4- Here is your saved report, press " (...) " to show it
  <img src="images/PPM4.png" width="900" height="200" /> </br>
 ### 5- Final form for PPM Report of C-Arm 680 OR device
  <img src="images/PPM5.png" width="1200" height="700" /> </br>



