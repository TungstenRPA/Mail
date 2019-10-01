# Email Helper Robots
This project contains robots that work on *Microsoft Exchange* for processing incoming emails and for sending emails.

## Microsoft Exchange
-Robot **Outlook_ProcessFolder.robot** uses rich filters to process all emails in an Outlook mailbox.
 -this robot needs no configuration at all. All configuration that is needed is in the filters.

### Installation
-Download this Repository and add it to a Robot project in your Design Studio.
-Run  **Kofax RPA/Start Development Database** from the Windows menu. 
-load the robot **Outlook_ProcessFolder.robot**. It will want to create the **Filter** and **Email** databases.
 -See [SQL Video](https://www.dropbox.com/s/2k2as07yinjijps/Kapow%20-%20Data%20In%20Sql.mp4?dl=0) for information about how robots work with data in databases.

## GMail
Currently there is a robot that shows how to connect to a GMail account and read emails. It Uses GMail API and OAuth authentification and is quite rudimentary.

## IMAP, POP3
You can install [yabmail](http://yawebmail.sourceforge.net/overview.html) on on Tomcat for access to IMAP/POP3 email accounts.

## Authors

* **John Barratt@kofax** - * Initial Work* for Outlook
* **David Wright@kofax** - * Initial Work* for Filters
* **Jerome Marc@kofax** - * Initial Work* for GMail
