# Reading Email from Microsoft365 with Kofax RPA
Kofax RPA 11.4 supports OAuth for authentication with Microsoft Office 365 email, using triggers in the Management Console.  
You cannot use this to browse emails in the "Email" Step in robots.  
This guide was built in January 2023.

## Register your KofaxRPA as a Web App in Microsoft Azure
*this guide follows [this article](https://learn.microsoft.com/en-us/exchange/client-developer/legacy-protocols/how-to-authenticate-an-imap-pop-smtp-application-by-using-oauth) by Microsoft*.
* Login to [Microsoft Azure Portal](https://portal.azure.com) with the account that contains the [Office365 mail](https://outlook.office.com).
* Click on **More Services** in the **Azure Services**.
* Search for **App Registration**.
* CLick **New registration**.
* Give your App a name, eg **KofaxRPA**.
* Choose an **account type** that suits your situation. *For testing, I chose **Single Tenant**)*.
* Change "Select a Platform" to **Web**.
* Add the URI **http://localhost:50080/OAuthCallback** to the **Redirect URI**.
* click **Register**.
* You will see **Application (Client) ID**. Kofax RPA needs this as the **consumer key**.
* You will also see **Directory (Client) ID**. Kofax RPA needs this as the **tenant**.
* Open your **KofaxRPA** registration.
* Click **Add a certificate or secret** at **Client credentials**.
* Click **+ New client secret**.
* Set description to **KofaxRPA**.
* Select an expiry time for the Refresh Token from 3 months to 24 months. *You will need to manually refresh OAuth in Management Console before this expires!*.
* Click **Add**
* copy the **secret value** as you won't see it again. Kofax RPA needs it as the **consumer secret**.
## Enable API Permissions in Microsoft Azure.
*You need to give your MC permission to read and move emails in Office365 and create OAuth tokens.*
* Open your app in [Registered Apps in Azure](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
* Click **API permissions**.
* On tab **Microsoft APIs** click **Microsoft Graph**.
* Click **Delegated Permissions**, since Management Console needs to access emails as the signed-in email box owner.
* Search for **IMAP**.
* Select **IMAP.AccessAsUser.All** and click **Add Permission**.
* Search also for **offline_access**. *This is needed to enable MC to refresh OAuth tokens*.
## Create an OAuth Application for Microsoft Azure AD 2.0 in Kofax RPA 
* Open your [Management Console](http://localhost:50080).  
* Click on **Repository/OAuth**.
* Click **+** on the **Application** tab.
* Set name to **Ofice 365**, provider to **Microsoft Azure AD 2.0**.
* Paste the **Secret Value** into **consumer secret** and **Application (Client) ID** into **Consumer Key**.
* Set the scope to **https://outlook.office.com/IMAP.AccessAsUser.All offline_access**.
* Type anything for the commit message and click **Ok**.
## Add an OAuth user in Kofax RPA
* Click **Repository/OAuth/Users** in Management Console.
* Select Application **Office365@Microsoft Azure AD 2.0**.
* Add the username for the email account.
* The tenant is the **Directory (Client) ID** from your [Registered Apps in Azure](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
* Click **Next**.
* Click **Authorization link**.
* Sign in at Microsoft and approve the authentication.
* Click **Close**.
* Management Console will show you the tokens. You do not need these as your robots will not login. You are using Mail Triggers in MC and your robot will be handling an eml file.
* 
