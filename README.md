# CMMS
## What is CMMS?
 It stands for Computerized Maintenance Management System. It is a software designed to store the hospital's maintenance data on a computer, whether it's a work order for a breakdown or a daily inspection. This software simplifies the maintenance management by giving users insight into the state of maintenance needs with comprehensive work order schedules, accurate inventory of spare parts, and access to very important reports. This information makes it easier for maintenance workers to do their jobs more effectively. And CMMS is not only used in the medical field, it's used in every industry.


 ## Our CMMS provide
 Reliable scheduling, tracking and reporting tools for equipment and facilities maintenance. It is easy and simple to use for management of medical organizations.

 ## The Services of our CMMS and Features are shown in our Home:

![Work Orders](images/Feat_1.png)
![Work Orders](images/Feat_2.png)


## How to use our software?
 1- First, you have to download Node and install it. You can download it from [here](https://nodejs.org/en/)

 2- Second, download MySQL database and install it, Preferred Ampps and you can download it from [here](https://www.ampps.com/downloads)

 3- Open Ampps and turn on Apache and MySQL.

 4- From [phpMyAdmin](http://localhost/phpmyadmin/) create new database and name it **cmms**.

 5- Open the folder of the project using your IDE.

 6- Open the terminal of your IDE and write **npm install**, then **nodemon start**.

 7- If it doesn't work you can try **node server.js** or **npm start**.

 8- In your browser open **localhost:3000**.

 9- You will find the home of our website. To see the rest of our website you have to log in.
* Note: **email**: admin@gmail.com, **password**: 0000

10- Now you can see all the content of our website and edit it.
* Note: There is an uploaded SQL file for our CMMS on our Repository

## The Relational Model of Our CMMS Database :
![Work Orders](images/RM.png)


# **Our CMMS Reports**
 ## **We have 3 Reports:**

 * ### Installation
 * ### Daily inspection
 * ### PPM

 ## 1. **Installation Report**

 - ### For all the equipment there is an installation report that shows : When this device arrived, installed, warranty period, purchase cost, and PM schedule.

 - ### There are some steps you must do to get your installation report:
 ### 1- Press on "*ADD EQUIPMENT* "

  ![2](images/add_equipment_installation.jpeg)

 ### 2- Here is a form which you have to fill it in
   ![2](images/form.png)


 ### 3- After filling it in, an Equipment Card will appear with all equipment information. Press here '' (...) ''  to get your Installation Report

   ![2](images/the_new_equipment.jpeg)

   ![2](images/installation_report.jpeg)

 ## 2. **Daily Inspection Report**

 - ### Daily inspection Report is filled by a Clinical Engineer to ensure the safety of the device and its accessories in each department and check if the device needs maintenance or not.

 - ### There is some steps to fill this report
 ### 1- Sign in as a Clinical Engineer:

   ![2](images/sign_in.jpeg)

 ### 2- Fill in the report then press **Save**

   ![2](images/daily_inspection.jpeg)

 - ### To see your saved report, you must:
 ### 1- Press log out

  ![2](images/logout.jpeg)

 ### 2- Sign in as an Admin

  ![2](images/sign_in_daily_inspec.jpeg)

 ### 3- Here is our Home, press on " **Reports** " then " **Daily Inspection** "

  ![2](images/home_reports.png)

 ### 4- Here is your saved report, press " (...) " to show it

  ![2](images/final_daily_inspec.jpeg)

 ### 5- Final form for Daily Inspection Report of Steam Sterilizer device

  ![2](images/daily_inspec.jpeg)

 ## 3. **PPM (**Planned Preventative Maintenance**) Report**
 - ### For all Equipment, there is a PPM report that is filled with a specific schedule to make sure that the device/accessories need to be maintained or that it is working effectively.

 - ### There are some steps to fill in this report
 ### 1- Sign in as a clinical engineer:

   ![2](images/sign_in.jpeg)

 ### 2- All reports will appear, choose **Red** " PPM ", a small Form will appear choose the Equipment you want to fill it's PPM report in and then click on **Blue** " PPM ":

  ![2](images/PPM1.png)

 ### 3- Here is PPM report for C-Arm 680 OR device, Fill it in then press " **Save** ":

  ![2](images/PPM2.png)

 - ### To see your saved report , you must:
 ### 1- Press log out
 ![2](images/logout.jpeg)

 ### 2- Sign in as an Admin

  ![2](images/sign_in_daily_inspec.jpeg)

 ### 3- Here is our Home, press on " Reports " then " PPM "

  ![2](images/PPM3.png)

 ### 4- Here is your saved report, press " (...) " to show it

  ![2](images/PPM4.png)

 ### 5- Final form for PPM Report of C-Arm 680 OR device

  ![2](images/PPM5.png)


  ## Departments:
  * We have 4 departments: **OR**, **ICU**, **Radiology**, **CSSD**.
  * Each department has its own information, such as:

    * The Code of the department
    * The Location of the department
    * The Equipment's number
    * The Engineers' number working in it.


![1](images/1.png)

  * You can add New Departments using (*ADD DEPARTMENT*) button.

![2](images/2.png)

  * This will open a form like this to fill in the new data:

![2](images/Dept_Add_Form.png)

* You can get more information for each Department from here.

![1](images/3.png)

* A table will appear that shows information about all the Equipment included in a certain Department. These information as shown are the Equipment's:

    * Code
    * Name
    * Cost
    * Model
    * Serial Number

![1](images/Dept_Equip.png)

  * There is another option to select which is Clinical Engineers. This one will show the Clinical Engineers who are mainly responsible for each Department.

![1](images/Dept_more_CE.png)


  ## The Equipment:
  * It Includes all Equipment of each Department.
  * Each Equipment has its own information such as the Equipment's:
    * Name
    * Code
    * Model
    * Serial number
    * Location
    * Department

![1](images/4.png)

  * You can add New Equipment using (*ADD EQUIPMENT*) button.

![1](images/5.png)

  * A form will appear like this to fill in the new data:

![2](images/Equip_Add_Form.jpeg)

  * You can edit or delete Equipment from here.

![1](images/6.png)

  * Here is the Edit form of a certain Equipment:

![1](images/Eq-edit.jpeg)

  * To see more information about each Equipment, Click on "(...)"

![1](images/more_option_equipment.png)

  * From here you can view the Equipment's Reports:

![1](images/Equip_more_Reports.png)

  * When choosing Installation, the installation report of the Equipment will appear:
<br>

<img src = "images/install.png">

<br>
<br>

  * When choosing PPM, the PPM report of the Equipment will appear:

![1](images/Equipment_more_PPM.png)

  * When choosing Daily Inspection, the Daily Inspection of the Equipment will appear:

![1](images/Equip_more_Daily.png)

  * From here you can view the Equipment's Spare Parts, Breakdowns, and Maintenance:

![1](images/more_info2_equipment.png)

  * When choosing **Spare Parts** :

![1](images/spare_parts.png)

  * When choosing **Break downs** :

![1](images/break_downs.png)

  * When choosing **Maintenance** :

![1](images/maintenance2.png)


## Work Orders:
Managing work orders is one of the important features in CMMS systems. So, we added this feature to our project.

### The admin of the site:
* View all the work orders

    As shown the admin can view many data for each order:

    * The Code of the order
    * The Start and End date
    * The Description
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

### The Clinical Engineer:
After log in the clinical engineer can view all his work orders in a calendar, the color represents the priority of the order.

![chalender](images/chalender1.png)

![chalender list](images/chalender2.png)

## Breakdowns:
Recording all the breakdowns that happened in your system is very important for decision making and statistics. So, in our project the admin can view all the break downs in detail.

### The admin of the site:
* View all the break downs

    As shown the admin can view many data for each order:

    * The Code of the breakdown
    * The Reason of the breakdown
    * The Equipment which is broken down
    * The Date
    * The Department of the equipment


 ![Break Downs](images/breakdown.png)

* Add new breakdowns

    As shown the admin can easily select the equipment

![Add break down](images/addbreakdown.png)

* Edit any specific breakdown

![Edit break down](images/editbreakdown.png)

* Delete any specific breakdown


## Maintenance:
Recording all the maintenance operations in your system is very important for decision making and statistics. So, in our project the admin can view all the maintenance operations in detail.
### The admin of the site:
* View all the maintenance operations

    As shown the admin can view many data for each order:

    * The Code of the maintenance
    * The Start and End Date
    * The Description of the maintenance
    * The Equipment associated with the maintenance operation
    * The Engineer who made the maintenance operation
    * The Department
    * The breakdown associated with this maintenance


 ![Maintenence](images/maintenance.png)

* Add new maintenance

    As shown the admin can easily select the equipment and the breakdown

![Add maintenance](images/addmaintenance.png)

* Edit any specific maintenance

![Edit maintenance](images/editmaintenance.png)

* Delete any specific maintenance


## Spare Parts:

* The card of each Spare Part include some information such as the Spare Part's:

  * Code
  * Name
  * Amount
  * Equipment Code
  * Agent ID

![2](images/Spare_Info.png)

* Here we can **Add** any new Spare part entering the Database :

![1](images/Spare_Add_btn.png)

* When adding a new Spare Part, this form should be filled in first:

![2](images/Spare_Add_Form.png)


* From here you can edit or delete any Spare Part:

![2](images/Spare_Edit_btn.png)

* When editing any Spare Part a form like this will appear:

![2](images/Spare_Edit.png)

## Agent / Suppliers

* The table is showing information about each agent such as the agent's:
  * ID
  * Name
  * Address
  * Phone Number
  * E-mail or Fax

![2](images/Agent_Info.png)

* Here we can **Add** any new agent or supplier we are dealing with :

![2](images/Agent_Add_btn.png)

* And this will be done by filling in this form:

![2](images/Agent_Add_Form.png)

* We can edit or delete any information about our agents from here:

![2](images/Agent_Edit_btn.png)

* The Edit form will appear as the following one:

![2](images/Agent_Edit.png)

* To know more about the dealing with each agent, we can click on the more (...) button:

![1](images/Agent_extra_btn.png)

* This will show a table including any Spare Parts we have from this agent:

* The Code of each Spare Part and its amount are shown too.

![1](images/Agent_more_Spare.png)

* When choosing Equipment, a table will appear including all the Equipment data that we own from each Agent or Supplier:

![1](images/Agent_more_Equip.png)




# About Us :
## Team Number : 6
## Team Members :

| Name | Section | B.N |
| :----: | :----: | :----: |
| **Remon Albear** | 1 | 31 |
| **Salma Ayman** | 1 | 37 |
| **Rawan Sayed** | 1 | 30 |
| **Sara Adel** | 1 | 35 |
| **Omar Abdelzaher** | 2 | 11|

# Submitted To :
## Dr. Bassel Tawfik
## Eng. Eman Marzban
