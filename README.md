
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


The current directory: <code>config.dropbox.yml</code> file has these credentials but i would advise to disreguard them.

<br>
###Where I was stuck..
##### There were a few instructional documentations that I came across to complete this, but all of them had various ways to complete it. The main questions that I came across were "should I create a ImageUpload Model?" , "Should I implement the dropbox in the Msgs Model?" "I feel that my weak point of creating this freater for Ludus, was my knowledge of MVC, I think that if I can grasp the flow and structure of MVC better I would have been able to create it on time. 
<br>
###Next Steps..
##### I think that moving on from this assignment I can guage my weakpoints on the development process, creating a non-destructive work enviornment (branches) dealing with git hub conflicts and being able to read merge conflicts. Also 
seeign were I fall with development languages such as Rails and the MVC structure. These will all be beneficial in the future.



###References

http://www.mindfiresolutions.com/Uploading-Image-To-Dropbox-Using-Paperclipdropbox-2319.php
<br>
http://code.tutsplus.com/tutorials/build-a-dropbox-like-file-sharing-site-with-ruby-on-rails--net-17940
