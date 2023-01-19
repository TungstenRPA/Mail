# Reading Email from Microsoft365 with Kofax RPA
Kofax RPA 11.4 supports OAuth for authentication with Microsoft Office 365 email, using triggers in the Management Console.  
You cannot use this to browse emails in the "Email" Step in robots.  
This guide was built in January 2023.

## Configure Microsoft Azure
*this guide follows [this article](https://learn.microsoft.com/en-us/exchange/client-developer/legacy-protocols/how-to-authenticate-an-imap-pop-smtp-application-by-using-oauth) by Microsoft*.
* Login to [Microsoft Azure Portal](https://portal.azure.com) with the account that contains the [Office365 mail](https://outlook.office.com).
* Click on **More Services** in the **Azure Services**.
* Search for **App Registration**.
* CLick **New registration**.
* Give your App a name, eg **KofaxRPA**.
* Add the URI **http://localhost:50080/OAuthCallback** to the **Redirect URI** of type **Web**.
* click **Register**.
* Open your **KofaxRPA** registration.
* Click **Add a certificate or secret** at **Client credentials**.
* Click **+ New client secret**.
* Set description to **KofaxRPA**.
* Select an expiry time for the Refresh Token from 3 months to 24 months. *You will need to manually refresh OAuth in Management Console before this expires!*.
* Click **Add**
* copy the **secret value** as you won't see it again. Kofax RPA needs it as the **consumer secret**.

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
