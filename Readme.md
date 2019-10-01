# Email Helper Robots
This project contains robots that work on *Microsoft Exchange* for processing incoming emails and for sending emails.

## Microsoft Exchange
* The Robot **Outlook_ProcessFolder.robot** uses rich filters to process all emails in an Outlook mailbox.
  * this robot needs no configuration at all. All configuration that is needed is in the filters and the Password Store.
  * this robot can look into another person's inbox or a shared inbox. The **UserName** in the filter is the login name and **Owner** is the actual owner of the inbox the robot is looking at
* The Robot **Outlook_SendEMail.robot** builds a nicely formatted email, personalizes it and sends via Microsoft Exchange. You will see the sent email on your **Sent** Folder in Microsoft Outlook.

### Installation
* Download this Repository and add it to a Robot project in your Design Studio.
* Run **Kofax RPA/Start Development Database** from the Windows menu. 
* load the robot **Outlook_ProcessFolder.robot**. It will want to create the **Filter** and **Email** databases.
  * See [SQL Video](https://www.dropbox.com/s/2k2as07yinjijps/Kapow%20-%20Data%20In%20Sql.mp4?dl=0) for information about how robots work with data in databases.
* Create your Filters
  * Double-Click the Filters variable.
  * Copy the default text into the clipboard and paste into Microsoft Excel
  * Add your own filters into Microsoft Excel.
  * *Filters use regular expressions and are very powerful. The samples show some basic usage*
  * Select all the filters with CTRL-A and paste them back into the default value of the variable **Filters** in the robot.
  * click on the Step **Filter CSV->Database** and select *Debug/Start Debug from this Location* (CTRL-SHIFT-D) to execute the robot from this location. This will populate your filters into the database.
  * Open **Management Console** and switch to **Data View**. There you will see your filters.
  * Make sure that you add relevant Outlook passwords to the **Password Store** in **Management Console** with the Target System **MSExchange**.
### Creating Email Robots
* Copy and customize the robot **OpenOffice.resendlater.robot** to process particular emails.
* Write a different robot for each classification
* You can choose to either delete the processed email or makr it as processed so that it will be processed again.
* Upload these robots
* These robots will run many, many times per day. Most of the time they will find no emails in the first step and simply exit.
### Uploading Robots
* Upload all the robots to the **Management Console**.
* Right click on **Outlook_ProcessFolder.robot** and select *Add/edit Password Access for Robot*. Do the same for **Outlook_SendEMail.robot**

### Scheduling
 * Run the robot **Outlook_ProcessFolder.robot** in the Scheduler. *At Kofax we have run robot this every 30 seconds for over 4 years!*
 * Add all of the other robots to the **same** schedule
 * on the **Schedule/Advanced** tab, select **Run Sequentially*.
 * right
 
## GMail
Currently there is a robot that shows how to connect to a GMail account and read emails. It Uses GMail API and OAuth authentification and is quite rudimentary.

## IMAP, POP3
You can install [yabmail](http://yawebmail.sourceforge.net/overview.html) on Tomcat for access to IMAP/POP3 email accounts.

## Authors

* **John Barratt@kofax** - * Initial Work* for Outlook
* **David Wright@kofax** - * Initial Work* for Filters
* **Jerome Marc@kofax** - * Initial Work* for GMail
