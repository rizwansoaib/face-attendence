# FACE ATTENDENCE WITH AWS REKOGNITION 
[![forthebadge made-with-python](http://ForTheBadge.com/images/badges/made-with-python.svg)](https://www.python.org/)    [![GPLv3 license](https://img.shields.io/badge/License-GPLv3-blue.svg)](http://perso.crans.org/besson/LICENSE.html)

BUILD IN DJANGO WITH MYSQL DATABASES 


# USE



## INSTALLATION

## 1. Install awscli in your system and configure: 
   ### MAC LINUX OR UNIX
     rizwan@ubuntu$ sudo apt-get install awscli
     /* FIND YOUR ACCESS KEY AND SECRET KEY FROM AWS IN SECUIRTY CREDENTIALS */
     rizwan@ubuntu$ aws configure
     
     enter details of access key and secret key
     
                              or
                              
     rizwan@ubuntu$ export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE 
     rizwan@ubuntu$ export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY 
     rizwan@ubuntu$ export AWS_DEFAULT_REGION=us-west-2
     
   ### WINDOWS 
        C:\> setx AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
        C:\> setx AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
        C:\> setx AWS_DEFAULT_REGION=us-west-2
        
  ## 2. Import knit.sql DB
   ### Mysql CommandLine
      mysql>create database db_name;
      mysql> use db_name;
      mysql> source knit.sql;
   ### Terminal
      mysql -u username -p password db_name < knit.sql
   ### Windows Command Prompt
     mysql -p -u [user] [database] < knit.sql
   ### PowerShell
      C:\> cmd.exe /c "mysql -u root -p db_name < knit.sql" 
 ## 3. Add Databases in Django Project
   #### Go to face-attendence/web/web/settings.py 
     Replace NAME,USER,PASSWORD with your credentials
     
     
      DATABASES = {
      'default': {
    'ENGINE': 'django.db.backends.mysql',
    'NAME': 'db_name',
    'HOST': '127.0.0.1',
    'PORT': '3306',
    'USER': 'username',
    'PASSWORD': 'password',
     }}
   
        


## COMMING SOON ...

## Mechanism- 

 ### Take class images and Upload it on our website-
  ![1](https://user-images.githubusercontent.com/29729380/55557299-32317380-5707-11e9-87ed-53bbc0f0edad.jpg)
  ![op](https://user-images.githubusercontent.com/29729380/55557397-6147e500-5707-11e9-8c7e-33b70fc4829d.jpg)

  
  #### We are taking this photo as example
![4](https://user-images.githubusercontent.com/29729380/55557345-470e0700-5707-11e9-9a77-1d524236eb54.jpg)



     e.g. photo
 ### Our server stored images of student 
  ![s3](https://user-images.githubusercontent.com/29729380/55557438-702e9780-5707-11e9-8615-aee9c61a404a.gif)

 ### Both images analyzing face detect faces and crop them
   #### Analyzing 
   ![server](https://user-images.githubusercontent.com/29729380/55557471-7d4b8680-5707-11e9-8c74-ee60d52b4ec1.gif)

   #### Cropping
   ![photo-cropping](https://user-images.githubusercontent.com/29729380/55557513-96543780-5707-11e9-8572-9227f56ca399.gif)

 ### Now compare images 
      its like nested loop, outer for loop student images singe person  so no. of student in our class and inner for loop   
      no. of faces detect in uploaded images so no. of faces detect in class photos.
      Now comparison started and give output..
     

## FUTURE
 your all contribution are welcome. aws are costly and not scalable due to cost inefficient. we are trying to develop self models using tensorflow,keras,caffe,opencv ANN,MNIST,SVM,LBP haar facenet in web. with accuracy greater than 90%.
 
