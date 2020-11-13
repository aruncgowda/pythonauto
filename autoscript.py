import os
import getpass


os.system("tput setaf 3")
print("welcome to my menu !!")
os.system("tput setaf 7")
print("----------------------------------------")
while True:
 os.system("clear")
 print('''
 \n
 PRESS 1 : DATE
 PRESS 2 : TO CREATE A EMPTY FILE
 PRESS 3 : TO CREATE A DIRECTORY
 PRESS 4 : TO CREATE A USER
 PRESS 5 : TO DEPLOY A WEBSITE
 PRESS 6 : TO START THE DOCKER SERVICES
 PRESS 7 : TO EXIT
 ''')
 ch=int(input("Enter your choice :"))

 
 if ch==1:
   print("date :")
   os.system("date")
 elif ch==2:
   filename = input("enter the file name : ")
   os.system("touch {}".format(filename))
   
 elif ch==3:
   directory = input("enter the directory name : ")
   os.system("mkdir {}".format(directory))

 elif ch==4:
    username=input("enter user name : ")
    
    os.system("useradd {}".format(username))
    os.system("passwd {}".format(username))

 elif ch==5:
     os.system("yum install httpd")
     
     text=input("enter the sentence that has to be displayed in web page :")
     os.system("echo {} >> webpage.html".format(text))
     os.system("mv webpage.html /var/www/html")
     os.system("systemctl start httpd")
     os.system("setenforce 0")
 elif ch==6:
     os.system("systemctl start docker")
     print("docker started successfully")
 

 input("\nplease enter to continue")    
  
  

   


