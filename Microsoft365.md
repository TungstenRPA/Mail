# Reading Email from Microsoft365 with Kofax RPA
Kofax RPA 11.4 supports OAuth for authentication with Microsoft Office 365 email, using triggers in the Management Console.  
You cannot use this to browse emails in the "Email" Step in robots.  
This guide was built in January 2023.
## Add HTTPS to Management Console
*In order to authenticate with OAuth, your Management Console needs a public IP address. You only need this for the authentication process. Once you have the OAuth token you can disable public access.*  
*Download free ngrok to give your Management Console a temporary public IP address with https.*  
* Make a free account at https://ngrok.com
* Download and unzip free ngrok from https://ngrok.com/download
* Open a Windows command line and change to the folder where you unzipped ngrok.  
![image](https://user-images.githubusercontent.com/47416964/208402679-2012336c-e891-4e26-a887-0d93ee01ef71.png)
* Copy the command from ngrok's website and paste it into the command window to connect your ngork account to your machine.
![image](https://user-images.githubusercontent.com/47416964/208402282-40f252a6-02e7-4942-a913-ddd020280906.png)  
![image](https://user-images.githubusercontent.com/47416964/208402864-a84ac121-5284-4493-ba5b-6db199485c5f.png)
* Give Management Console a public IP address by typing **ngrok http 50080**  
![image](https://user-images.githubusercontent.com/47416964/208403507-c94911e1-4e82-4d78-bce2-cc676b3f8639.png)
* Open your Management Console in a new browser window using this IP address. This is VERY important to authenticate with OAuth.
![image](https://user-images.githubusercontent.com/47416964/208403660-8c82e9c0-0031-4920-98ed-3912f29fee14.png)

## Configure Microsoft Azure
*this guide follows [this article](https://learn.microsoft.com/en-us/exchange/client-developer/legacy-protocols/how-to-authenticate-an-imap-pop-smtp-application-by-using-oauth) by Microsoft*.
* Login to [Microsoft Azure Portal](https://portal.azure.com) with the account that contains the [Office365 mail](https://outlook.office.com).
* Click on **More Services** in the **Azure Services**.
* Search for **App Registration**.
* CLick **New registration**.
* Give your App a name, eg **KofaxRPA**.
* Add your ngrok URL with path **/OAuthCallback** to the **Redirect URI** of type **Web**.
* click **Register**.
* Open your **KofaxRPA** registration.
* Click **Add a certificate or secret** at **Client credentials**.
* Click **+ New client secret**.
* Set description to **KofaxRPA**.
* Select an expiry time of your choice from 3 months to 24 months. 
* Click **Add**
* copy the **secret value** as you won't see it again. Copy also the **Secret ID**. You will need to paste both into the Management Console.
* 
## Create an OAuth Application for Microsoft Azure AD 2.0 in Kofax RPA 
* Open your Management console wiht the ngrok URI. *This is very important. You cannot use **localhost**.*  
* Click on **Repository/OAuth**.
* Click **+** on the **Application** tab.
* Set name to **Ofice 365**, provider to **Microsoft Azure AD 2.0**.
* Paste the **Secret Value** into **consumer secret** and **Secret ID** into **Consumer Key**.
* Set the scope to **https://outlook.office.com/IMAP.AccessAsUser.All**.
* Type anything for the commit message and click **Ok**.
## Add an OAuth user in Kofax RPA
* Click **Repository/OAuth/Users** in Management Console.
* Select Application **Office365@Microsoft Azure AD 2.0**.
* Add the username for the email account.
* Add your tenant. (**kfxtest.onmicrosoft.com**).
* Click **Next**.
* Click **Authorization link**.
