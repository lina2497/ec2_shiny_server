# ec2_shiny_server
Instructions to configure an EC2 instance running amazon linux to host shiny apps

#Create an EC2 instance with Amazon Linux 2 with internet access
#Connect to your instance using putty
 
#Perform a quick update on your instance:

sudo yum update -y
 
#Install git in your EC2 instance

sudo yum install git -y
 
#Check git version

git version

git clone https://github.com/lina2497/ec2_shiny_server

