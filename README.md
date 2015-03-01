
#### Unfinished Ruby n Rails blog with paperclip file uploader
Current repo contains Ruby on Rails  blog scaffoling setup with Paperclip file uploader, and  a fragmented paperclip-Dropbox storage setup

<br>
####Initialized 

Dropbox API

gem "paperclip", "~> 4.2"  https://github.com/thoughtbot/paperclip
 
gem "paperclip-dropbox", ">= 1.1.7"  https://github.com/janko-m/paperclip-dropbox

**** *Must Install ImageMagick* ****


###Where to go from here?
The current blog application is completed, paperclip file uploader is complete, where as Paerclip-Dropbox is fragmented
A good starting poit would be to create  create a Dropbox app and authorize it. There are two types of Dropbox apps: App folder or Full Dropbox. You can read about the differences and gotchas in this wiki. When you decide, don't forget to put "dropbox" or "app_folder" as the :access_type in your credentials.

After you have created an app, you will be given the "App key" and "App secret". Provide these and the access type to the authorization Rake task:

<code>$ rake dropbox:authorize APP_KEY=your_app_key APP_SECRET=your_app_secret ACCESS_TYPE=dropbox|app_folder
</code>


The current directory: <code>config.dropbox.yml</code> file has these credentials but i would advise to disreguard them
